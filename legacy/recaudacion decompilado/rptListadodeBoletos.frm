VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeBoletos
  Caption = "Listado de Boletos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeBoletos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9792
  ClientHeight = 6564
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
    Top = 6315
    Width = 9795
    Height = 255
    TabIndex = 29
    OleObjectBlob = "rptListadodeBoletos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8520
    Top = 5160
    Width = 855
    Height = 735
    TabIndex = 27
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
    Picture = "rptListadodeBoletos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeBoletos.frx":0B9C
    Left = 7440
    Top = 1080
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 4920
    Width = 3492
    Height = 1215
    TabIndex = 25
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 30
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 26
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4920
    Width = 4095
    Height = 1215
    TabIndex = 22
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 24
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 23
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9375
    Height = 4815
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
    Begin VB.TextBox NumeCtaTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 2160
      Width = 2175
      Height = 345
      TabIndex = 13
      MaxLength = 11
    End
    Begin VB.ComboBox CodiUsuaCbo
      Style = 2
      Left = 2160
      Top = 4200
      Width = 3615
      Height = 420
      TabIndex = 21
    End
    Begin VB.Frame FechaFra
      Caption = "Fecha"
      Left = 120
      Top = 240
      Width = 6135
      Height = 1215
      TabIndex = 1
      Begin VB.CommandButton DesdeCmd
        Left = 2400
        Top = 480
        Width = 375
        Height = 375
        TabIndex = 4
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptListadodeBoletos.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaCmd
        Left = 5520
        Top = 480
        Width = 375
        Height = 375
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
        Picture = "rptListadodeBoletos.frx":1142
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox DesdeMsk
        Left = 960
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptListadodeBoletos.frx":1684
      End
      Begin MSMask.MaskEdBox HastaMsk
        Left = 4080
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 6
        OleObjectBlob = "rptListadodeBoletos.frx":1734
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 2
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 3300
        Top = 480
        Width = 705
        Height = 300
        TabIndex = 5
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6600
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 8
    End
    Begin MSMask.MaskEdBox CodiEnreMsk
      Left = 2160
      Top = 3000
      Width = 495
      Height = 360
      TabIndex = 15
      OleObjectBlob = "rptListadodeBoletos.frx":17E4
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 2160
      Top = 3600
      Width = 1695
      Height = 360
      TabIndex = 18
      OleObjectBlob = "rptListadodeBoletos.frx":1872
    End
    Begin MSMask.MaskEdBox CodiOficMsk
      Left = 2160
      Top = 1560
      Width = 375
      Height = 360
      TabIndex = 10
      OleObjectBlob = "rptListadodeBoletos.frx":1910
      DataField = "CodiTise"
    End
    Begin VB.Label Label7
      Caption = "Cuenta:"
      Left = 1200
      Top = 2160
      Width = 840
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label DetaOficLbl
      ForeColor = &HFF0000&
      Left = 2640
      Top = 1560
      Width = 5295
      Height = 360
      TabIndex = 11
    End
    Begin VB.Label Label3
      Caption = "Oficina:"
      Left = 1320
      Top = 1560
      Width = 795
      Height = 300
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "CUIT/CUIL:"
      Left = 840
      Top = 3600
      Width = 1230
      Height = 300
      TabIndex = 17
      Alignment = 1 'Right Justify
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
    Begin VB.Label DetaPersLbl
      Left = 3960
      Top = 3600
      Width = 5055
      Height = 375
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label1
      Caption = "Usuario:"
      Left = 1200
      Top = 4200
      Width = 885
      Height = 300
      TabIndex = 20
      AutoSize = -1  'True
    End
    Begin VB.Label DetaEnreLbl
      Left = 2760
      Top = 3000
      Width = 6015
      Height = 345
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label4
      Caption = "Ente Recaudador:"
      Left = 120
      Top = 3000
      Width = 1950
      Height = 300
      TabIndex = 14
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
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7200
    Top = 5160
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 28
    OleObjectBlob = "rptListadodeBoletos.frx":199A
  End
End

Attribute VB_Name = "rptListadodeBoletos"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00564850
  bStruc(64) As Byte ' String fields: 16
End Type


Private Sub HastaMsk_UnknownEvent_0 '9C4FA0
  'Data Table: 4EA65C
  loc_9C4F8C: FLdPr Me
  loc_9C4F8F: VCallAd Control_ID_HastaMsk
  loc_9C4F92: CVarAd
  loc_9C4F96: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4F9B: FFree1Var var_94 = ""
  loc_9C4F9E: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_8 'A6F07C
  'Data Table: 4EA65C
  loc_A6F014: FLdPr Me
  loc_A6F017: VCallAd Control_ID_HastaMsk
  loc_A6F01A: FStAdFunc var_88
  loc_A6F01D: FLdPr var_88
  loc_A6F020: LateIdLdVar var_98 DispID_15 0
  loc_A6F027: CStrVarTmp
  loc_A6F028: FStStrNoPop var_9C
  loc_A6F02B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A6F030: FStStrNoPop var_A0
  loc_A6F033: FLdPr Me
  loc_A6F036: MemStStrCopy
  loc_A6F03A: FFreeStr var_9C = ""
  loc_A6F041: FFree1Ad var_88
  loc_A6F044: FFree1Var var_98 = ""
  loc_A6F047: FLdPr Me
  loc_A6F04A: VCallAd Control_ID_HastaMsk
  loc_A6F04D: FStAdFuncNoPop
  loc_A6F050: CastAd
  loc_A6F053: FStAdFunc var_A4
  loc_A6F056: FLdRfVar var_A4
  loc_A6F059: FLdPr Me
  loc_A6F05C: MemLdStr global_96
  loc_A6F05F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6F064: IStI2 KeyAscii
  loc_A6F067: FFreeAd var_88 = ""
  loc_A6F06E: ILdI2 KeyAscii
  loc_A6F071: NotI4
  loc_A6F072: BranchF loc_A6F07A
  loc_A6F075: Call Proc_222_34_AF5834()
  loc_A6F07A: ExitProcHresult
  loc_A6F07B: LitI2_Byte &HE4
End Sub

Private Sub CodiOficMsk_UnknownEvent_0 '9C4D18
  'Data Table: 4EA65C
  loc_9C4D04: FLdPr Me
  loc_9C4D07: VCallAd Control_ID_CodiOficMsk
  loc_9C4D0A: CVarAd
  loc_9C4D0E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4D13: FFree1Var var_94 = ""
  loc_9C4D16: ExitProcHresult
End Sub

Private Sub CodiOficMsk_UnknownEvent_8 'AC72DC
  'Data Table: 4EA65C
  loc_AC71D0: FLdPr Me
  loc_AC71D3: VCallAd Control_ID_CodiOficMsk
  loc_AC71D6: FStAdFunc var_88
  loc_AC71D9: FLdPr var_88
  loc_AC71DC: LateIdLdVar var_98 DispID_13 -32767
  loc_AC71E3: CBoolVar
  loc_AC71E5: FFree1Ad var_88
  loc_AC71E8: FFree1Var var_98 = ""
  loc_AC71EB: BranchF loc_AC72DA
  loc_AC71EE: FLdPr Me
  loc_AC71F1: VCallAd Control_ID_CodiOficMsk
  loc_AC71F4: FStAdFunc var_88
  loc_AC71F7: FLdPr var_88
  loc_AC71FA: LateIdLdVar var_98 DispID_0 0
  loc_AC7201: CStrVarTmp
  loc_AC7202: FStStrNoPop var_9C
  loc_AC7205: CR8Str
  loc_AC7207: LitI2_Byte 0
  loc_AC7209: CR8I2
  loc_AC720A: NeR8
  loc_AC720B: FFree1Str var_9C
  loc_AC720E: FFree1Ad var_88
  loc_AC7211: FFree1Var var_98 = ""
  loc_AC7214: BranchF loc_AC72C3
  loc_AC7217: FLdPr Me
  loc_AC721A: VCallAd Control_ID_CodiOficMsk
  loc_AC721D: FStAdFunc var_88
  loc_AC7220: FLdPr var_88
  loc_AC7223: LateIdLdVar var_98 DispID_22 0
  loc_AC722A: CStrVarTmp
  loc_AC722B: FStStrNoPop var_9C
  loc_AC722E: ImpAdCallI2 Proc_18_24_A57368()
  loc_AC7233: FStStrNoPop var_A0
  loc_AC7236: FLdPr Me
  loc_AC7239: MemStStrCopy
  loc_AC723D: FFreeStr var_9C = ""
  loc_AC7244: FFree1Ad var_88
  loc_AC7247: FFree1Var var_98 = ""
  loc_AC724A: FLdPr Me
  loc_AC724D: MemLdStr global_96
  loc_AC7250: LitStr vbNullString
  loc_AC7253: NeStr
  loc_AC7255: BranchF loc_AC727D
  loc_AC7258: FLdPr Me
  loc_AC725B: MemLdStr global_96
  loc_AC725E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC7263: FLdPr Me
  loc_AC7266: VCallAd Control_ID_CodiOficMsk
  loc_AC7269: CVarAd
  loc_AC726D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC7272: FFree1Var var_98 = ""
  loc_AC7275: LitI2_Byte &HFF
  loc_AC7277: IStI2 KeyAscii
  loc_AC727A: Branch loc_AC72C0
  loc_AC727D: FLdPr Me
  loc_AC7280: VCallAd Control_ID_CodiOficMsk
  loc_AC7283: FStAdFunc var_88
  loc_AC7286: FLdPr var_88
  loc_AC7289: LateIdLdVar var_98 DispID_22 0
  loc_AC7290: CStrVarTmp
  loc_AC7291: FStStrNoPop var_9C
  loc_AC7294: CI2Str
  loc_AC7296: ImpAdCallI2 Proc_270_20_A7A6C0()
  loc_AC729B: FStStrNoPop var_A0
  loc_AC729E: FLdPr Me
  loc_AC72A1: VCallAd Control_ID_DetaOficLbl
  loc_AC72A4: FStAdFunc var_A4
  loc_AC72A7: FLdPr var_A4
  loc_AC72AA: Me.Caption = from_stack_1
  loc_AC72AF: FFreeStr var_9C = ""
  loc_AC72B6: FFreeAd var_88 = ""
  loc_AC72BD: FFree1Var var_98 = ""
  loc_AC72C0: Branch loc_AC72DA
  loc_AC72C3: LitStr "TODAS LAS OFICINAS"
  loc_AC72C6: FLdPr Me
  loc_AC72C9: VCallAd Control_ID_DetaOficLbl
  loc_AC72CC: FStAdFunc var_88
  loc_AC72CF: FLdPr var_88
  loc_AC72D2: Me.Caption = from_stack_1
  loc_AC72D7: FFree1Ad var_88
  loc_AC72DA: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DE84C
  'Data Table: 4EA65C
  loc_9DE830: LitI2_Byte 0
  loc_9DE832: PopTmpLdAd2 var_8A
  loc_9DE835: ILdRf Me
  loc_9DE838: CastAd
  loc_9DE83B: FStAdFunc var_88
  loc_9DE83E: FLdRfVar var_88
  loc_9DE841: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE846: FFree1Ad var_88
  loc_9DE849: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CDB18
  'Data Table: 4EA65C
  loc_9CDB00: LitI2_Byte 0
  loc_9CDB02: ILdRf Me
  loc_9CDB05: CastAd
  loc_9CDB08: FStAdFunc var_88
  loc_9CDB0B: FLdRfVar var_88
  loc_9CDB0E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CDB13: FFree1Ad var_88
  loc_9CDB16: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ACDAE8
  'Data Table: 4EA65C
  loc_ACD9C0: LitI2_Byte 0
  loc_ACD9C2: FLdPr Me
  loc_ACD9C5: MemStI2 bGenerado
  loc_ACD9C8: LitI2_Byte &HFF
  loc_ACD9CA: FLdPr Me
  loc_ACD9CD: MemStI2 bLogos
  loc_ACD9D0: LitI2_Byte 0
  loc_ACD9D2: ILdRf Me
  loc_ACD9D5: CastAd
  loc_ACD9D8: FStAdFunc var_88
  loc_ACD9DB: FLdRfVar var_88
  loc_ACD9DE: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_ACD9E3: FFree1Ad var_88
  loc_ACD9E6: LitI2_Byte 0
  loc_ACD9E8: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ACD9ED: CStrDate
  loc_ACD9EF: CVarStr var_98
  loc_ACD9F2: PopAdLdVar
  loc_ACD9F3: FLdPr Me
  loc_ACD9F6: VCallAd Control_ID_DesdeMsk
  loc_ACD9F9: FStAdFunc var_88
  loc_ACD9FC: FLdPr var_88
  loc_ACD9FF: LateIdSt
  loc_ACDA04: FFree1Ad var_88
  loc_ACDA07: FFree1Var var_98 = ""
  loc_ACDA0A: FLdPr Me
  loc_ACDA0D: VCallAd Control_ID_DesdeMsk
  loc_ACDA10: FStAdFunc var_88
  loc_ACDA13: FLdPr var_88
  loc_ACDA16: LateIdLdVar var_98 DispID_0 0
  loc_ACDA1D: CStrVarTmp
  loc_ACDA1E: CVarStr var_B8
  loc_ACDA21: PopAdLdVar
  loc_ACDA22: FLdPr Me
  loc_ACDA25: VCallAd Control_ID_HastaMsk
  loc_ACDA28: FStAdFunc var_BC
  loc_ACDA2B: FLdPr var_BC
  loc_ACDA2E: LateIdSt
  loc_ACDA33: FFreeAd var_88 = ""
  loc_ACDA3A: FFreeVar var_98 = ""
  loc_ACDA41: LitI2_Byte 0
  loc_ACDA43: CStrUI1
  loc_ACDA45: CVarStr var_98
  loc_ACDA48: PopAdLdVar
  loc_ACDA49: FLdPr Me
  loc_ACDA4C: VCallAd Control_ID_CodiEnreMsk
  loc_ACDA4F: FStAdFunc var_88
  loc_ACDA52: FLdPr var_88
  loc_ACDA55: LateIdSt
  loc_ACDA5A: FFree1Ad var_88
  loc_ACDA5D: FFree1Var var_98 = ""
  loc_ACDA60: LitI2_Byte 0
  loc_ACDA62: CStrUI1
  loc_ACDA64: CVarStr var_98
  loc_ACDA67: PopAdLdVar
  loc_ACDA68: FLdPr Me
  loc_ACDA6B: VCallAd Control_ID_CucuPersMsk
  loc_ACDA6E: FStAdFunc var_88
  loc_ACDA71: FLdPr var_88
  loc_ACDA74: LateIdSt
  loc_ACDA79: FFree1Ad var_88
  loc_ACDA7C: FFree1Var var_98 = ""
  loc_ACDA7F: LitI2_Byte 0
  loc_ACDA81: CStrUI1
  loc_ACDA83: CVarStr var_98
  loc_ACDA86: PopAdLdVar
  loc_ACDA87: FLdPr Me
  loc_ACDA8A: VCallAd Control_ID_CodiOficMsk
  loc_ACDA8D: FStAdFunc var_88
  loc_ACDA90: FLdPr var_88
  loc_ACDA93: LateIdSt
  loc_ACDA98: FFree1Ad var_88
  loc_ACDA9B: FFree1Var var_98 = ""
  loc_ACDA9E: LitStr "TODAS LAS OFICINAS"
  loc_ACDAA1: FLdPr Me
  loc_ACDAA4: VCallAd Control_ID_DetaOficLbl
  loc_ACDAA7: FStAdFunc var_88
  loc_ACDAAA: FLdPr var_88
  loc_ACDAAD: Me.Caption = from_stack_1
  loc_ACDAB2: FFree1Ad var_88
  loc_ACDAB5: LitStr vbNullString
  loc_ACDAB8: FLdPr Me
  loc_ACDABB: VCallAd Control_ID_NumeCtaTxt
  loc_ACDABE: FStAdFunc var_88
  loc_ACDAC1: FLdPr var_88
  loc_ACDAC4: Me.Text = from_stack_1
  loc_ACDAC9: FFree1Ad var_88
  loc_ACDACC: Call HabilitarCriterio()
  loc_ACDAD1: ILdRf Me
  loc_ACDAD4: CastAd
  loc_ACDAD7: FStAdFunc var_88
  loc_ACDADA: FLdRfVar var_88
  loc_ACDADD: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ACDAE2: FFree1Ad var_88
  loc_ACDAE5: ExitProcHresult
  loc_ACDAE6: LitI2_Byte 0
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '9C4D60
  'Data Table: 4EA65C
  loc_9C4D4C: FLdPr Me
  loc_9C4D4F: VCallAd Control_ID_CucuPersMsk
  loc_9C4D52: CVarAd
  loc_9C4D56: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4D5B: FFree1Var var_94 = ""
  loc_9C4D5E: ExitProcHresult
End Sub

Private Function CucuPersMsk_UnknownEvent_8(arg_C) 'AD6658
  'Data Table: 4EA65C
  loc_AD6524: FLdPr Me
  loc_AD6527: VCallAd Control_ID_CucuPersMsk
  loc_AD652A: FStAdFunc var_88
  loc_AD652D: FLdPr var_88
  loc_AD6530: LateIdLdVar var_98 DispID_13 -32767
  loc_AD6537: CBoolVar
  loc_AD6539: FFree1Ad var_88
  loc_AD653C: FFree1Var var_98 = ""
  loc_AD653F: BranchF loc_AD6657
  loc_AD6542: FLdPr Me
  loc_AD6545: VCallAd Control_ID_CucuPersMsk
  loc_AD6548: FStAdFunc var_88
  loc_AD654B: FLdPr var_88
  loc_AD654E: LateIdLdVar var_98 DispID_22 0
  loc_AD6555: CStrVarTmp
  loc_AD6556: CVarStr var_A8
  loc_AD6559: ImpAdCallI2 IsNumeric()
  loc_AD655E: NotI4
  loc_AD655F: FFree1Ad var_88
  loc_AD6562: FFreeVar var_98 = ""
  loc_AD6569: BranchF loc_AD6586
  loc_AD656C: LitVarStr var_B8, "0"
  loc_AD6571: PopAdLdVar
  loc_AD6572: FLdPr Me
  loc_AD6575: VCallAd Control_ID_CucuPersMsk
  loc_AD6578: FStAdFunc var_88
  loc_AD657B: FLdPr var_88
  loc_AD657E: LateIdSt
  loc_AD6583: FFree1Ad var_88
  loc_AD6586: FLdPr Me
  loc_AD6589: VCallAd Control_ID_CucuPersMsk
  loc_AD658C: FStAdFunc var_88
  loc_AD658F: FLdPr var_88
  loc_AD6592: LateIdLdVar var_98 DispID_22 0
  loc_AD6599: CStrVarTmp
  loc_AD659A: FStStrNoPop var_CC
  loc_AD659D: CR8Str
  loc_AD659F: LitI2_Byte 0
  loc_AD65A1: CR8I2
  loc_AD65A2: NeR8
  loc_AD65A3: FFree1Str var_CC
  loc_AD65A6: FFree1Ad var_88
  loc_AD65A9: FFree1Var var_98 = ""
  loc_AD65AC: BranchF loc_AD6657
  loc_AD65AF: FLdPr Me
  loc_AD65B2: VCallAd Control_ID_CucuPersMsk
  loc_AD65B5: FStAdFunc var_88
  loc_AD65B8: FLdPr var_88
  loc_AD65BB: LateIdLdVar var_98 DispID_22 0
  loc_AD65C2: CStrVarTmp
  loc_AD65C3: FStStrNoPop var_CC
  loc_AD65C6: ImpAdCallI2 Proc_18_66_A532F4()
  loc_AD65CB: FStStrNoPop var_D0
  loc_AD65CE: FLdPr Me
  loc_AD65D1: MemStStrCopy
  loc_AD65D5: FFreeStr var_CC = ""
  loc_AD65DC: FFree1Ad var_88
  loc_AD65DF: FFree1Var var_98 = ""
  loc_AD65E2: FLdPr Me
  loc_AD65E5: MemLdStr global_96
  loc_AD65E8: LitStr vbNullString
  loc_AD65EB: NeStr
  loc_AD65ED: BranchF loc_AD6616
  loc_AD65F0: FLdPr Me
  loc_AD65F3: MemLdStr global_96
  loc_AD65F6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD65FB: FLdPr Me
  loc_AD65FE: VCallAd Control_ID_CucuPersMsk
  loc_AD6601: CVarAd
  loc_AD6605: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD660A: FFree1Var var_98 = ""
  loc_AD660D: LitI2_Byte &HFF
  loc_AD660F: IStI2 arg_C
  loc_AD6612: ExitProcHresult
  loc_AD6613: Branch loc_AD6657
  loc_AD6616: FLdPr Me
  loc_AD6619: VCallAd Control_ID_CucuPersMsk
  loc_AD661C: FStAdFunc var_88
  loc_AD661F: FLdPr var_88
  loc_AD6622: LateIdLdVar var_98 DispID_22 0
  loc_AD6629: CStrVarTmp
  loc_AD662A: FStStrNoPop var_CC
  loc_AD662D: ImpAdCallI2 Proc_270_75_A80810()
  loc_AD6632: FStStrNoPop var_D0
  loc_AD6635: FLdPr Me
  loc_AD6638: VCallAd Control_ID_DetaPersLbl
  loc_AD663B: FStAdFunc var_D4
  loc_AD663E: FLdPr var_D4
  loc_AD6641: Me.Caption = from_stack_1
  loc_AD6646: FFreeStr var_CC = ""
  loc_AD664D: FFreeAd var_88 = ""
  loc_AD6654: FFree1Var var_98 = ""
  loc_AD6657: ExitProcHresult
End Function

Private Sub CucuPersMsk_KeyPress(KeyAscii As Integer) 'A93DB8
  'Data Table: 4EA65C
  loc_A93D10: ILdI2 KeyAscii
  loc_A93D13: CI4UI1
  loc_A93D14: LitI4 &H20
  loc_A93D19: EqI4
  loc_A93D1A: BranchF loc_A93DB4
  loc_A93D1D: ImpAdLdRf MemVar_D940AC
  loc_A93D20: NewIfNullAd
  loc_A93D23: FStAd var_88 
  loc_A93D27: LitVar_Missing var_A8
  loc_A93D2A: PopAdLdVar
  loc_A93D2B: LitVarI4
  loc_A93D33: PopAdLdVar
  loc_A93D34: FLdPr var_88
  loc_A93D37: Me.Show from_stack_1, from_stack_2
  loc_A93D3C: FLdRfVar var_AC
  loc_A93D3F: FLdPr var_88
  loc_A93D42: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A93D47: ILdRf var_AC
  loc_A93D4A: LitStr vbNullString
  loc_A93D4D: NeStr
  loc_A93D4F: FFree1Str var_AC
  loc_A93D52: BranchF loc_A93DAE
  loc_A93D55: FLdRfVar var_AC
  loc_A93D58: FLdPr var_88
  loc_A93D5B: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A93D60: FLdZeroAd var_AC
  loc_A93D63: CVarStr var_BC
  loc_A93D66: PopAdLdVar
  loc_A93D67: FLdPr Me
  loc_A93D6A: VCallAd Control_ID_CucuPersMsk
  loc_A93D6D: FStAdFunc var_C0
  loc_A93D70: FLdPr var_C0
  loc_A93D73: LateIdSt
  loc_A93D78: FFree1Ad var_C0
  loc_A93D7B: FFree1Var var_BC = ""
  loc_A93D7E: LitStr vbNullString
  loc_A93D81: FLdPr var_88
  loc_A93D84: Call dlgBuscarPersonaPorCucuPers.sPasaCodigoPut(from_stack_1v)
  loc_A93D89: FLdRfVar var_AC
  loc_A93D8C: FLdPr var_88
  loc_A93D8F: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaDetalleGet()
  loc_A93D94: ILdRf var_AC
  loc_A93D97: FLdPr Me
  loc_A93D9A: VCallAd Control_ID_DetaPersLbl
  loc_A93D9D: FStAdFunc var_C0
  loc_A93DA0: FLdPr var_C0
  loc_A93DA3: Me.Caption = from_stack_1
  loc_A93DA8: FFree1Str var_AC
  loc_A93DAB: FFree1Ad var_C0
  loc_A93DAE: LitNothing
  loc_A93DB0: FStAd var_88 
  loc_A93DB4: ExitProcHresult
End Sub

Private Sub Form_Load() '9E5000
  'Data Table: 4EA65C
  loc_9E4FE0: ILdRf Me
  loc_9E4FE3: CastAd
  loc_9E4FE6: FStAdFunc var_88
  loc_9E4FE9: FLdRfVar var_88
  loc_9E4FEC: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E4FF1: FFree1Ad var_88
  loc_9E4FF4: Call cmdNueva_Click()
  loc_9E4FF9: Call Proc_222_34_AF5834()
  loc_9E4FFE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CD950
  'Data Table: 4EA65C
  loc_9CD938: FLdPr Me
  loc_9CD93B: VCallAd Control_ID_wbbReporte
  loc_9CD93E: FStAdFunc var_88
  loc_9CD941: FLdRfVar var_88
  loc_9CD944: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CD949: FFree1Ad var_88
  loc_9CD94C: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() '9C4CD0
  'Data Table: 4EA65C
  loc_9C4CBC: FLdPrThis
  loc_9C4CBD: VCallAd Control_ID_NumeCtaTxt
  loc_9C4CC0: CVarAd
  loc_9C4CC4: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4CC9: FFree1Var var_94 = ""
  loc_9C4CCC: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A0211C
  'Data Table: 4EA65C
  loc_A020EC: LitVarStr var_94, "Cerrando..."
  loc_A020F1: PopAdLdVar
  loc_A020F2: FLdPr Me
  loc_A020F5: VCallAd Control_ID_statusBar
  loc_A020F8: FStAdFunc var_A8
  loc_A020FB: FLdPr var_A8
  loc_A020FE: LateIdSt
  loc_A02103: FFree1Ad var_A8
  loc_A02106: ILdRf Me
  loc_A02109: FStAdNoPop
  loc_A0210D: ImpAdLdRf MemVar_D9C5D8
  loc_A02110: NewIfNullPr Global
  loc_A02113: Global.Unload from_stack_1
  loc_A02118: FFree1Ad var_A8
  loc_A0211B: ExitProcHresult
End Sub

Private Sub DesdeCmd_Click() 'A0CFA4
  'Data Table: 4EA65C
  loc_A0CF68: LitVar_Missing var_A4
  loc_A0CF6B: PopAdLdVar
  loc_A0CF6C: LitVarI4
  loc_A0CF74: PopAdLdVar
  loc_A0CF75: ImpAdLdRf MemVar_D930A4
  loc_A0CF78: NewIfNullPr frmCalendario
  loc_A0CF7B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0CF80: ImpAdLdRf MemVar_D93028
  loc_A0CF83: CDargRef
  loc_A0CF87: FLdPr Me
  loc_A0CF8A: VCallAd Control_ID_DesdeMsk
  loc_A0CF8D: FStAdFunc var_A8
  loc_A0CF90: FLdPr var_A8
  loc_A0CF93: LateIdSt
  loc_A0CF98: FFree1Ad var_A8
  loc_A0CF9B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0CFA0: ExitProcHresult
End Sub

Private Sub HastaCmd_Click() 'A0CDE4
  'Data Table: 4EA65C
  loc_A0CDA8: LitVar_Missing var_A4
  loc_A0CDAB: PopAdLdVar
  loc_A0CDAC: LitVarI4
  loc_A0CDB4: PopAdLdVar
  loc_A0CDB5: ImpAdLdRf MemVar_D930A4
  loc_A0CDB8: NewIfNullPr frmCalendario
  loc_A0CDBB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0CDC0: ImpAdLdRf MemVar_D93028
  loc_A0CDC3: CDargRef
  loc_A0CDC7: FLdPr Me
  loc_A0CDCA: VCallAd Control_ID_HastaMsk
  loc_A0CDCD: FStAdFunc var_A8
  loc_A0CDD0: FLdPr var_A8
  loc_A0CDD3: LateIdSt
  loc_A0CDD8: FFree1Ad var_A8
  loc_A0CDDB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0CDE0: ExitProcHresult
  loc_A0CDE1: Ary1LdPr
  loc_A0CDE2: MemLdStr global_-7152
End Sub

Private Sub cmdXLS_Click() '9E1DBC
  'Data Table: 4EA65C
  loc_9E1DA0: LitI2_Byte &HFF
  loc_9E1DA2: LitI2_Byte 0
  loc_9E1DA4: ILdRf Me
  loc_9E1DA7: CastAd
  loc_9E1DAA: FStAdFunc var_88
  loc_9E1DAD: FLdRfVar var_88
  loc_9E1DB0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E1DB5: FFree1Ad var_88
  loc_9E1DB8: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9C4F58
  'Data Table: 4EA65C
  loc_9C4F44: FLdPr Me
  loc_9C4F47: VCallAd Control_ID_DesdeMsk
  loc_9C4F4A: CVarAd
  loc_9C4F4E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4F53: FFree1Var var_94 = ""
  loc_9C4F56: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A6F1D4
  'Data Table: 4EA65C
  loc_A6F16C: FLdPr Me
  loc_A6F16F: VCallAd Control_ID_DesdeMsk
  loc_A6F172: FStAdFunc var_88
  loc_A6F175: FLdPr var_88
  loc_A6F178: LateIdLdVar var_98 DispID_15 0
  loc_A6F17F: CStrVarTmp
  loc_A6F180: FStStrNoPop var_9C
  loc_A6F183: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A6F188: FStStrNoPop var_A0
  loc_A6F18B: FLdPr Me
  loc_A6F18E: MemStStrCopy
  loc_A6F192: FFreeStr var_9C = ""
  loc_A6F199: FFree1Ad var_88
  loc_A6F19C: FFree1Var var_98 = ""
  loc_A6F19F: FLdPr Me
  loc_A6F1A2: VCallAd Control_ID_DesdeMsk
  loc_A6F1A5: FStAdFuncNoPop
  loc_A6F1A8: CastAd
  loc_A6F1AB: FStAdFunc var_A4
  loc_A6F1AE: FLdRfVar var_A4
  loc_A6F1B1: FLdPr Me
  loc_A6F1B4: MemLdStr global_96
  loc_A6F1B7: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6F1BC: IStI2 arg_C
  loc_A6F1BF: FFreeAd var_88 = ""
  loc_A6F1C6: ILdI2 arg_C
  loc_A6F1C9: NotI4
  loc_A6F1CA: BranchF loc_A6F1D2
  loc_A6F1CD: Call Proc_222_34_AF5834()
  loc_A6F1D2: ExitProcHresult
End Function

Private Sub cmdPrevia_Click() '9CDB64
  'Data Table: 4EA65C
  loc_9CDB4C: ILdRf Me
  loc_9CDB4F: CastAd
  loc_9CDB52: FStAdFunc var_88
  loc_9CDB55: FLdRfVar var_88
  loc_9CDB58: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CDB5D: FFree1Ad var_88
  loc_9CDB60: ExitProcHresult
End Sub

Private Sub CodiEnreMsk_UnknownEvent_0 '9C4DA8
  'Data Table: 4EA65C
  loc_9C4D94: FLdPr Me
  loc_9C4D97: VCallAd Control_ID_CodiEnreMsk
  loc_9C4D9A: CVarAd
  loc_9C4D9E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4DA3: FFree1Var var_94 = ""
  loc_9C4DA6: ExitProcHresult
End Sub

Private Function CodiEnreMsk_UnknownEvent_8(arg_C) 'AE4E64
  'Data Table: 4EA65C
  loc_AE4CFC: FLdPr Me
  loc_AE4CFF: VCallAd Control_ID_CodiEnreMsk
  loc_AE4D02: FStAdFunc var_88
  loc_AE4D05: FLdPr var_88
  loc_AE4D08: LateIdLdVar var_98 DispID_13 -32767
  loc_AE4D0F: CBoolVar
  loc_AE4D11: FFree1Ad var_88
  loc_AE4D14: FFree1Var var_98 = ""
  loc_AE4D17: BranchF loc_AE4E62
  loc_AE4D1A: FLdPr Me
  loc_AE4D1D: VCallAd Control_ID_CodiEnreMsk
  loc_AE4D20: FStAdFunc var_88
  loc_AE4D23: FLdPr var_88
  loc_AE4D26: LateIdLdVar var_98 DispID_22 0
  loc_AE4D2D: CStrVarTmp
  loc_AE4D2E: CVarStr var_A8
  loc_AE4D31: ImpAdCallI2 IsNumeric()
  loc_AE4D36: NotI4
  loc_AE4D37: FFree1Ad var_88
  loc_AE4D3A: FFreeVar var_98 = ""
  loc_AE4D41: BranchF loc_AE4D5E
  loc_AE4D44: LitVarStr var_B8, "0"
  loc_AE4D49: PopAdLdVar
  loc_AE4D4A: FLdPr Me
  loc_AE4D4D: VCallAd Control_ID_CodiEnreMsk
  loc_AE4D50: FStAdFunc var_88
  loc_AE4D53: FLdPr var_88
  loc_AE4D56: LateIdSt
  loc_AE4D5B: FFree1Ad var_88
  loc_AE4D5E: FLdPr Me
  loc_AE4D61: VCallAd Control_ID_CodiEnreMsk
  loc_AE4D64: FStAdFunc var_88
  loc_AE4D67: FLdPr var_88
  loc_AE4D6A: LateIdLdVar var_98 DispID_22 0
  loc_AE4D71: CStrVarTmp
  loc_AE4D72: FStStrNoPop var_CC
  loc_AE4D75: CR8Str
  loc_AE4D77: LitI2_Byte 0
  loc_AE4D79: CR8I2
  loc_AE4D7A: GtR4
  loc_AE4D7B: FFree1Str var_CC
  loc_AE4D7E: FFree1Ad var_88
  loc_AE4D81: FFree1Var var_98 = ""
  loc_AE4D84: BranchF loc_AE4E4B
  loc_AE4D87: FLdPr Me
  loc_AE4D8A: VCallAd Control_ID_CodiEnreMsk
  loc_AE4D8D: FStAdFunc var_88
  loc_AE4D90: FLdPr var_88
  loc_AE4D93: LateIdLdVar var_98 DispID_22 0
  loc_AE4D9A: CStrVarTmp
  loc_AE4D9B: FStStrNoPop var_CC
  loc_AE4D9E: ImpAdCallI2 Proc_18_39_A5661C()
  loc_AE4DA3: FStStrNoPop var_D0
  loc_AE4DA6: FLdPr Me
  loc_AE4DA9: MemStStrCopy
  loc_AE4DAD: FFreeStr var_CC = ""
  loc_AE4DB4: FFree1Ad var_88
  loc_AE4DB7: FFree1Var var_98 = ""
  loc_AE4DBA: FLdPr Me
  loc_AE4DBD: MemLdStr global_96
  loc_AE4DC0: LitStr vbNullString
  loc_AE4DC3: NeStr
  loc_AE4DC5: BranchF loc_AE4E05
  loc_AE4DC8: FLdPr Me
  loc_AE4DCB: MemLdStr global_96
  loc_AE4DCE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE4DD3: LitStr vbNullString
  loc_AE4DD6: FLdPr Me
  loc_AE4DD9: VCallAd Control_ID_DetaEnreLbl
  loc_AE4DDC: FStAdFunc var_88
  loc_AE4DDF: FLdPr var_88
  loc_AE4DE2: Me.Caption = from_stack_1
  loc_AE4DE7: FFree1Ad var_88
  loc_AE4DEA: FLdPr Me
  loc_AE4DED: VCallAd Control_ID_CodiEnreMsk
  loc_AE4DF0: CVarAd
  loc_AE4DF4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE4DF9: FFree1Var var_98 = ""
  loc_AE4DFC: LitI2_Byte &HFF
  loc_AE4DFE: IStI2 arg_C
  loc_AE4E01: ExitProcHresult
  loc_AE4E02: Branch loc_AE4E48
  loc_AE4E05: FLdPr Me
  loc_AE4E08: VCallAd Control_ID_CodiEnreMsk
  loc_AE4E0B: FStAdFunc var_88
  loc_AE4E0E: FLdPr var_88
  loc_AE4E11: LateIdLdVar var_98 DispID_22 0
  loc_AE4E18: CStrVarTmp
  loc_AE4E19: FStStrNoPop var_CC
  loc_AE4E1C: CI2Str
  loc_AE4E1E: ImpAdCallI2 Proc_270_42_A7BB98()
  loc_AE4E23: FStStrNoPop var_D0
  loc_AE4E26: FLdPr Me
  loc_AE4E29: VCallAd Control_ID_DetaEnreLbl
  loc_AE4E2C: FStAdFunc var_D4
  loc_AE4E2F: FLdPr var_D4
  loc_AE4E32: Me.Caption = from_stack_1
  loc_AE4E37: FFreeStr var_CC = ""
  loc_AE4E3E: FFreeAd var_88 = ""
  loc_AE4E45: FFree1Var var_98 = ""
  loc_AE4E48: Branch loc_AE4E62
  loc_AE4E4B: LitStr "TODOS LOS ENTES RECAUDADORES"
  loc_AE4E4E: FLdPr Me
  loc_AE4E51: VCallAd Control_ID_DetaEnreLbl
  loc_AE4E54: FStAdFunc var_88
  loc_AE4E57: FLdPr var_88
  loc_AE4E5A: Me.Caption = from_stack_1
  loc_AE4E5F: FFree1Ad var_88
  loc_AE4E62: ExitProcHresult
End Function

Private Sub CodiEnreMsk_KeyPress(KeyAscii As Integer) 'A8C740
  'Data Table: 4EA65C
  loc_A8C6A4: ILdI2 KeyAscii
  loc_A8C6A7: CI4UI1
  loc_A8C6A8: LitI4 &H20
  loc_A8C6AD: EqI4
  loc_A8C6AE: BranchF loc_A8C73D
  loc_A8C6B1: LitVar_Missing var_A4
  loc_A8C6B4: PopAdLdVar
  loc_A8C6B5: LitVarI4
  loc_A8C6BD: PopAdLdVar
  loc_A8C6BE: ImpAdLdRf MemVar_D941EC
  loc_A8C6C1: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A8C6C4: dlgBuscarEnteRecaudador.Show from_stack_1, from_stack_2
  loc_A8C6C9: FLdRfVar var_AA
  loc_A8C6CC: FLdRfVar var_A8
  loc_A8C6CF: ImpAdLdRf MemVar_D941EC
  loc_A8C6D2: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A8C6D5: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_A8C6DA: FLdPr var_A8
  loc_A8C6DD: from_stack_1 = clsentereca.CodiEnre
  loc_A8C6E2: FLdI2 var_AA
  loc_A8C6E5: CStrUI1
  loc_A8C6E7: CVarStr var_BC
  loc_A8C6EA: PopAdLdVar
  loc_A8C6EB: FLdPr Me
  loc_A8C6EE: VCallAd Control_ID_CodiEnreMsk
  loc_A8C6F1: FStAdFunc var_C0
  loc_A8C6F4: FLdPr var_C0
  loc_A8C6F7: LateIdSt
  loc_A8C6FC: FFreeAd var_A8 = ""
  loc_A8C703: FFree1Var var_BC = ""
  loc_A8C706: FLdRfVar var_C4
  loc_A8C709: FLdRfVar var_A8
  loc_A8C70C: ImpAdLdRf MemVar_D941EC
  loc_A8C70F: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A8C712: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_A8C717: FLdPr var_A8
  loc_A8C71A: from_stack_1 = clsentereca.DetaEnre
  loc_A8C71F: ILdRf var_C4
  loc_A8C722: FLdPr Me
  loc_A8C725: VCallAd Control_ID_DetaEnreLbl
  loc_A8C728: FStAdFunc var_C0
  loc_A8C72B: FLdPr var_C0
  loc_A8C72E: Me.Caption = from_stack_1
  loc_A8C733: FFree1Str var_C4
  loc_A8C736: FFreeAd var_A8 = ""
  loc_A8C73D: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1CBA0
  'Data Table: 4EA65C
  loc_A1CB68: FLdPr Me
  loc_A1CB6B: VCallAd Control_ID_statusBar
  loc_A1CB6E: FStAdFunc var_88
  loc_A1CB71: FLdPr var_88
  loc_A1CB74: LateIdLdVar var_98 DispID_1 0
  loc_A1CB7B: CStrVarTmp
  loc_A1CB7C: CVarStr var_A8
  loc_A1CB7F: PopAdLdVar
  loc_A1CB80: FLdPr Me
  loc_A1CB83: VCallAd Control_ID_statusBar
  loc_A1CB86: FStAdFunc var_BC
  loc_A1CB89: FLdPr var_BC
  loc_A1CB8C: LateIdSt
  loc_A1CB91: FFreeAd var_88 = ""
  loc_A1CB98: FFreeVar var_98 = ""
  loc_A1CB9F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4EBB88
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4EBB97
  bGenerado = Value
End Sub

Public Function bLogosGet() '4EBBA6
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4EBBB5
  bLogos = Value
End Sub

Public Sub GeneraXLS() '9C4C8C
  'Data Table: 4EA65C
  loc_9C4C74: LitI2_Byte 0
  loc_9C4C76: FLdPr Me
  loc_9C4C79: MemStI2 bLogos
  loc_9C4C7C: Call GeneraHTML()
  loc_9C4C81: LitI2_Byte &HFF
  loc_9C4C83: FLdPr Me
  loc_9C4C86: MemStI2 bLogos
  loc_9C4C89: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() 'AAE730
  'Data Table: 4EA65C
  loc_AAE67C: LitI4 0
  loc_AAE681: LitI4 8
  loc_AAE686: FLdRfVar var_88
  loc_AAE689: Redim
  loc_AAE693: FLdPr Me
  loc_AAE696: VCallAd Control_ID_DesdeMsk
  loc_AAE699: CVarAd
  loc_AAE69D: ParmAry1St
  loc_AAE6A3: FLdPr Me
  loc_AAE6A6: VCallAd Control_ID_DesdeCmd
  loc_AAE6A9: CVarAd
  loc_AAE6AD: ParmAry1St
  loc_AAE6B3: FLdPr Me
  loc_AAE6B6: VCallAd Control_ID_HastaMsk
  loc_AAE6B9: CVarAd
  loc_AAE6BD: ParmAry1St
  loc_AAE6C3: FLdPr Me
  loc_AAE6C6: VCallAd Control_ID_HastaCmd
  loc_AAE6C9: CVarAd
  loc_AAE6CD: ParmAry1St
  loc_AAE6D3: FLdPr Me
  loc_AAE6D6: VCallAd Control_ID_CodiEnreMsk
  loc_AAE6D9: CVarAd
  loc_AAE6DD: ParmAry1St
  loc_AAE6E3: FLdPr Me
  loc_AAE6E6: VCallAd Control_ID_CucuPersMsk
  loc_AAE6E9: CVarAd
  loc_AAE6ED: ParmAry1St
  loc_AAE6F3: FLdPr Me
  loc_AAE6F6: VCallAd Control_ID_CodiUsuaCbo
  loc_AAE6F9: CVarAd
  loc_AAE6FD: ParmAry1St
  loc_AAE703: FLdPr Me
  loc_AAE706: VCallAd Control_ID_CodiOficMsk
  loc_AAE709: CVarAd
  loc_AAE70D: ParmAry1St
  loc_AAE713: FLdPr Me
  loc_AAE716: VCallAd Control_ID_NumeCtaTxt
  loc_AAE719: CVarAd
  loc_AAE71D: ParmAry1St
  loc_AAE723: FLdRfVar var_88
  loc_AAE726: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AAE72B: FLdRfVar var_88
  loc_AAE72E: Erase
  loc_AAE72F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C11110
  'Data Table: 4EA65C
  loc_C107D0: FLdPr Me
  loc_C107D3: MemLdI2 bGenerado
  loc_C107D6: BranchF loc_C107DA
  loc_C107D9: ExitProcHresult
  loc_C107DA: LitVarStr var_A8, "Generando reporte..."
  loc_C107DF: PopAdLdVar
  loc_C107E0: FLdPr Me
  loc_C107E3: VCallAd Control_ID_statusBar
  loc_C107E6: FStAdFunc var_BC
  loc_C107E9: FLdPr var_BC
  loc_C107EC: LateIdSt
  loc_C107F1: FFree1Ad var_BC
  loc_C107F4: LitI4 &HB
  loc_C107F9: CI2I4
  loc_C107FA: FLdPr Me
  loc_C107FD: Me.MousePointer = from_stack_1
  loc_C10802: FLdRfVar var_BE
  loc_C10805: FLdPr Me
  loc_C10808: VCallAd Control_ID_CodiUsuaCbo
  loc_C1080B: FStAdFunc var_BC
  loc_C1080E: FLdPr var_BC
  loc_C10811:  = Me.ListIndex
  loc_C10816: FLdRfVar var_C8
  loc_C10819: FLdPr Me
  loc_C1081C: VCallAd Control_ID_CodiUsuaCbo
  loc_C1081F: FStAdFunc var_C4
  loc_C10822: FLdPr var_C4
  loc_C10825:  = Me.Text
  loc_C1082A: LitVarStr var_B8, vbNullString
  loc_C1082F: FStVarCopyObj var_EC
  loc_C10832: FLdRfVar var_EC
  loc_C10835: LitStr " AND boleto.CodiUsua = '"
  loc_C10838: ILdRf var_C8
  loc_C1083B: ConcatStr
  loc_C1083C: FStStrNoPop var_CC
  loc_C1083F: LitStr "'"
  loc_C10842: ConcatStr
  loc_C10843: CVarStr var_DC
  loc_C10846: FLdI2 var_BE
  loc_C10849: LitI2_Byte 0
  loc_C1084B: GtI2
  loc_C1084C: CVarBoolI2 var_A8
  loc_C10850: FLdRfVar var_FC
  loc_C10853: ImpAdCallFPR4  = IIf(, , )
  loc_C10858: FLdRfVar var_FC
  loc_C1085B: CStrVarTmp
  loc_C1085C: FStStr var_8C
  loc_C1085F: FFreeStr var_C8 = ""
  loc_C10866: FFreeAd var_BC = ""
  loc_C1086D: FFreeVar var_A8 = "": var_DC = "": var_EC = ""
  loc_C10878: FLdPr Me
  loc_C1087B: VCallAd Control_ID_CodiEnreMsk
  loc_C1087E: FStAdFunc var_BC
  loc_C10881: FLdPr var_BC
  loc_C10884: LateIdLdVar var_DC DispID_22 0
  loc_C1088B: PopAd
  loc_C1088D: FLdPr Me
  loc_C10890: VCallAd Control_ID_CodiEnreMsk
  loc_C10893: FStAdFunc var_C4
  loc_C10896: FLdPr var_C4
  loc_C10899: LateIdLdVar var_EC DispID_22 0
  loc_C108A0: CStrVarTmp
  loc_C108A1: CVarStr var_10C
  loc_C108A4: LitVarI2 var_FC, 0
  loc_C108A9: FLdRfVar var_DC
  loc_C108AC: CStrVarTmp
  loc_C108AD: FStStrNoPop var_C8
  loc_C108B0: CR8Str
  loc_C108B2: LitI2_Byte 0
  loc_C108B4: CR8I2
  loc_C108B5: EqR4
  loc_C108B6: CVarBoolI2 var_A8
  loc_C108BA: FLdRfVar var_11C
  loc_C108BD: ImpAdCallFPR4  = IIf(, , )
  loc_C108C2: FLdRfVar var_11C
  loc_C108C5: CI2Var
  loc_C108C6: FStI2 var_86
  loc_C108C9: FFree1Str var_C8
  loc_C108CC: FFreeAd var_BC = ""
  loc_C108D3: FFreeVar var_DC = "": var_EC = "": var_A8 = "": var_FC = "": var_10C = ""
  loc_C108E2: FLdPr Me
  loc_C108E5: VCallAd Control_ID_CodiEnreMsk
  loc_C108E8: FStAdFunc var_BC
  loc_C108EB: FLdPr var_BC
  loc_C108EE: LateIdLdVar var_DC DispID_22 0
  loc_C108F5: PopAd
  loc_C108F7: FLdPr Me
  loc_C108FA: VCallAd Control_ID_CodiEnreMsk
  loc_C108FD: FStAdFunc var_C4
  loc_C10900: FLdPr var_C4
  loc_C10903: LateIdLdVar var_EC DispID_22 0
  loc_C1090A: CStrVarTmp
  loc_C1090B: CVarStr var_10C
  loc_C1090E: LitVarI2 var_FC, 999
  loc_C10913: FLdRfVar var_DC
  loc_C10916: CStrVarTmp
  loc_C10917: FStStrNoPop var_C8
  loc_C1091A: CR8Str
  loc_C1091C: LitI2_Byte 0
  loc_C1091E: CR8I2
  loc_C1091F: EqR4
  loc_C10920: CVarBoolI2 var_A8
  loc_C10924: FLdRfVar var_11C
  loc_C10927: ImpAdCallFPR4  = IIf(, , )
  loc_C1092C: FLdRfVar var_11C
  loc_C1092F: CI2Var
  loc_C10930: FStI2 var_88
  loc_C10933: FFree1Str var_C8
  loc_C10936: FFreeAd var_BC = ""
  loc_C1093D: FFreeVar var_DC = "": var_EC = "": var_A8 = "": var_FC = "": var_10C = ""
  loc_C1094C: FLdPr Me
  loc_C1094F: VCallAd Control_ID_CucuPersMsk
  loc_C10952: FStAdFunc var_BC
  loc_C10955: FLdPr var_BC
  loc_C10958: LateIdLdVar var_DC DispID_22 0
  loc_C1095F: PopAd
  loc_C10961: FLdPr Me
  loc_C10964: VCallAd Control_ID_CucuPersMsk
  loc_C10967: FStAdFunc var_C4
  loc_C1096A: FLdPr var_C4
  loc_C1096D: LateIdLdVar var_EC DispID_22 0
  loc_C10974: PopAd
  loc_C10976: LitVarStr var_B8, vbNullString
  loc_C1097B: FStVarCopyObj var_10C
  loc_C1097E: FLdRfVar var_10C
  loc_C10981: LitStr " AND boleto.CucuPers = '"
  loc_C10984: FLdRfVar var_EC
  loc_C10987: CStrVarTmp
  loc_C10988: FStStrNoPop var_CC
  loc_C1098B: ConcatStr
  loc_C1098C: FStStrNoPop var_120
  loc_C1098F: LitStr "'"
  loc_C10992: ConcatStr
  loc_C10993: CVarStr var_FC
  loc_C10996: FLdRfVar var_DC
  loc_C10999: CStrVarTmp
  loc_C1099A: FStStrNoPop var_C8
  loc_C1099D: CR8Str
  loc_C1099F: LitI2_Byte 0
  loc_C109A1: CR8I2
  loc_C109A2: NeR8
  loc_C109A3: CVarBoolI2 var_A8
  loc_C109A7: FLdRfVar var_11C
  loc_C109AA: ImpAdCallFPR4  = IIf(, , )
  loc_C109AF: FLdRfVar var_11C
  loc_C109B2: CStrVarTmp
  loc_C109B3: FStStr var_90
  loc_C109B6: FFreeStr var_C8 = "": var_CC = ""
  loc_C109BF: FFreeAd var_BC = ""
  loc_C109C6: FFreeVar var_DC = "": var_EC = "": var_A8 = "": var_FC = "": var_10C = ""
  loc_C109D5: FLdPr Me
  loc_C109D8: VCallAd Control_ID_CodiOficMsk
  loc_C109DB: FStAdFunc var_BC
  loc_C109DE: FLdPr var_BC
  loc_C109E1: LateIdLdVar var_DC DispID_22 0
  loc_C109E8: PopAd
  loc_C109EA: FLdPr Me
  loc_C109ED: VCallAd Control_ID_CodiOficMsk
  loc_C109F0: FStAdFunc var_C4
  loc_C109F3: FLdPr var_C4
  loc_C109F6: LateIdLdVar var_EC DispID_22 0
  loc_C109FD: PopAd
  loc_C109FF: LitVarStr var_B8, vbNullString
  loc_C10A04: FStVarCopyObj var_10C
  loc_C10A07: FLdRfVar var_10C
  loc_C10A0A: LitStr " AND boleto.CodiOfic = "
  loc_C10A0D: FLdRfVar var_EC
  loc_C10A10: CStrVarTmp
  loc_C10A11: FStStrNoPop var_CC
  loc_C10A14: ConcatStr
  loc_C10A15: CVarStr var_FC
  loc_C10A18: FLdRfVar var_DC
  loc_C10A1B: CStrVarTmp
  loc_C10A1C: FStStrNoPop var_C8
  loc_C10A1F: CR8Str
  loc_C10A21: LitI2_Byte 0
  loc_C10A23: CR8I2
  loc_C10A24: NeR8
  loc_C10A25: CVarBoolI2 var_A8
  loc_C10A29: FLdRfVar var_11C
  loc_C10A2C: ImpAdCallFPR4  = IIf(, , )
  loc_C10A31: FLdRfVar var_11C
  loc_C10A34: CStrVarTmp
  loc_C10A35: FStStr var_94
  loc_C10A38: FFreeStr var_C8 = ""
  loc_C10A3F: FFreeAd var_BC = ""
  loc_C10A46: FFreeVar var_DC = "": var_EC = "": var_A8 = "": var_FC = "": var_10C = ""
  loc_C10A55: FLdRfVar var_C8
  loc_C10A58: FLdPr Me
  loc_C10A5B: VCallAd Control_ID_NumeCtaTxt
  loc_C10A5E: FStAdFunc var_BC
  loc_C10A61: FLdPr var_BC
  loc_C10A64:  = Me.Text
  loc_C10A69: FLdRfVar var_CC
  loc_C10A6C: FLdPr Me
  loc_C10A6F: VCallAd Control_ID_NumeCtaTxt
  loc_C10A72: FStAdFunc var_C4
  loc_C10A75: FLdPr var_C4
  loc_C10A78:  = Me.Text
  loc_C10A7D: LitVarStr var_B8, vbNullString
  loc_C10A82: FStVarCopyObj var_EC
  loc_C10A85: FLdRfVar var_EC
  loc_C10A88: LitStr " AND boleto.CuenCtct = '"
  loc_C10A8B: ILdRf var_CC
  loc_C10A8E: ConcatStr
  loc_C10A8F: FStStrNoPop var_120
  loc_C10A92: LitStr "'"
  loc_C10A95: ConcatStr
  loc_C10A96: CVarStr var_DC
  loc_C10A99: ILdRf var_C8
  loc_C10A9C: LitStr vbNullString
  loc_C10A9F: NeStr
  loc_C10AA1: CVarBoolI2 var_A8
  loc_C10AA5: FLdRfVar var_FC
  loc_C10AA8: ImpAdCallFPR4  = IIf(, , )
  loc_C10AAD: FLdRfVar var_FC
  loc_C10AB0: CStrVarTmp
  loc_C10AB1: FStStr var_98
  loc_C10AB4: FFreeStr var_C8 = "": var_CC = ""
  loc_C10ABD: FFreeAd var_BC = ""
  loc_C10AC4: FFreeVar var_A8 = "": var_DC = "": var_EC = ""
  loc_C10ACF: FLdPr Me
  loc_C10AD2: MemLdRfVar from_stack_1.global_80
  loc_C10AD5: NewIfNullAd
  loc_C10AD8: FStAd var_124 
  loc_C10ADC: FLdPr Me
  loc_C10ADF: VCallAd Control_ID_DesdeMsk
  loc_C10AE2: FStAdFunc var_BC
  loc_C10AE5: FLdPr var_BC
  loc_C10AE8: LateIdLdVar var_DC DispID_15 0
  loc_C10AEF: PopAd
  loc_C10AF1: FLdPr Me
  loc_C10AF4: VCallAd Control_ID_HastaMsk
  loc_C10AF7: FStAdFunc var_C4
  loc_C10AFA: FLdPr var_C4
  loc_C10AFD: LateIdLdVar var_154 DispID_15 0
  loc_C10B04: PopAd
  loc_C10B06: LitStr "SELECT PeriBole, NumeBole, boleto.CodiOfic, boleto.CuenCtct, FealBole, boleto.CucuPers, IFNULL(DetaPers,'') as DetaPers, CapiBole, DecaBole+ExenBole as DecaBole,"
  loc_C10B09: LitStr " RecaBole, DereBole, CrafBole, InteBole, ApreBole, TotaBole, EstaBole FROM boleto"
  loc_C10B0C: ConcatStr
  loc_C10B0D: FStStrNoPop var_C8
  loc_C10B10: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = boleto.CucuPers"
  loc_C10B13: ConcatStr
  loc_C10B14: FStStrNoPop var_CC
  loc_C10B17: LitStr " WHERE FealBole BETWEEN "
  loc_C10B1A: ConcatStr
  loc_C10B1B: CVarStr var_11C
  loc_C10B1E: LitI4 1
  loc_C10B23: LitI4 1
  loc_C10B28: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_C10B2D: FStVarCopyObj var_FC
  loc_C10B30: FLdRfVar var_FC
  loc_C10B33: FLdRfVar var_DC
  loc_C10B36: CStrVarTmp
  loc_C10B37: CVarStr var_EC
  loc_C10B3A: FLdRfVar var_10C
  loc_C10B3D: ImpAdCallFPR4  = Format(, )
  loc_C10B42: FLdRfVar var_10C
  loc_C10B45: ConcatVar var_134
  loc_C10B49: LitVarStr var_B8, " AND "
  loc_C10B4E: ConcatVar var_144
  loc_C10B52: LitI4 1
  loc_C10B57: LitI4 1
  loc_C10B5C: LitVarStr var_174, "'yyyy-mm-dd'"
  loc_C10B61: FStVarCopyObj var_184
  loc_C10B64: FLdRfVar var_184
  loc_C10B67: FLdRfVar var_154
  loc_C10B6A: CStrVarTmp
  loc_C10B6B: CVarStr var_164
  loc_C10B6E: FLdRfVar var_194
  loc_C10B71: ImpAdCallFPR4  = Format(, )
  loc_C10B76: FLdRfVar var_194
  loc_C10B79: ConcatVar var_1A4
  loc_C10B7D: ILdRf var_8C
  loc_C10B80: CVarStr var_1B4
  loc_C10B83: ConcatVar var_1C4
  loc_C10B87: LitVarStr var_1D4, " AND boleto.CodiEnre >= "
  loc_C10B8C: ConcatVar var_1E4
  loc_C10B90: FLdI2 var_86
  loc_C10B93: CVarI2 var_1F4
  loc_C10B96: ConcatVar var_204
  loc_C10B9A: LitVarStr var_214, " AND boleto.CodiEnre <= "
  loc_C10B9F: ConcatVar var_224
  loc_C10BA3: FLdI2 var_88
  loc_C10BA6: CVarI2 var_234
  loc_C10BA9: ConcatVar var_244
  loc_C10BAD: ILdRf var_90
  loc_C10BB0: CVarStr var_254
  loc_C10BB3: ConcatVar var_264
  loc_C10BB7: ILdRf var_94
  loc_C10BBA: CVarStr var_274
  loc_C10BBD: ConcatVar var_284
  loc_C10BC1: ILdRf var_98
  loc_C10BC4: CVarStr var_294
  loc_C10BC7: ConcatVar var_2A4
  loc_C10BCB: LitVarStr var_2B4, " ORDER BY PeriBole, NumeBole"
  loc_C10BD0: ConcatVar var_2C4
  loc_C10BD4: CStrVarVal var_120
  loc_C10BD8: FLdPr var_124
  loc_C10BDB: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C10BE0: FFreeStr var_C8 = "": var_CC = ""
  loc_C10BE9: FFreeAd var_BC = ""
  loc_C10BF0: FFreeVar var_DC = "": var_EC = "": var_FC = "": var_11C = "": var_10C = "": var_134 = "": var_154 = "": var_164 = "": var_184 = "": var_144 = "": var_194 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = ""
  loc_C10C1D: FLdRfVar var_2C8
  loc_C10C20: FLdPr var_124
  loc_C10C23: from_stack_1 = clsboleto.RecordCount
  loc_C10C28: ILdRf var_2C8
  loc_C10C2B: LitI4 0
  loc_C10C30: EqI4
  loc_C10C31: BranchF loc_C10C3F
  loc_C10C34: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C10C37: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C10C3C: Branch loc_C110E7
  loc_C10C3F: LitI4 0
  loc_C10C44: FLdRfVar var_2C8
  loc_C10C47: FLdPr var_124
  loc_C10C4A: from_stack_1 = clsboleto.RecordCount
  loc_C10C4F: ILdRf var_2C8
  loc_C10C52: FLdPr Me
  loc_C10C55: MemLdRfVar from_stack_1.global_84
  loc_C10C58: Redim
  loc_C10C62: LitI4 0
  loc_C10C67: LitI4 1
  loc_C10C6C: FLdPr Me
  loc_C10C6F: MemLdRfVar from_stack_1.global_88
  loc_C10C72: Redim
  loc_C10C7C: LitI4 1
  loc_C10C81: FLdPr Me
  loc_C10C84: MemLdRfVar from_stack_1.global_92
  loc_C10C87: FLdPr Me
  loc_C10C8A: MemLdStr global_84
  loc_C10C8D: LitI2_Byte 1
  loc_C10C8F: FnUBound
  loc_C10C91: ForI4 var_2D0
  loc_C10C97: FLdRfVar var_BE
  loc_C10C9A: FLdPr var_124
  loc_C10C9D: from_stack_1 = clsboleto.PeriBole
  loc_C10CA2: LitI2_Byte 0
  loc_C10CA4: LitVar_Missing var_DC
  loc_C10CA7: LitI2_Byte 0
  loc_C10CA9: FLdI2 var_BE
  loc_C10CAC: CVarI2 var_A8
  loc_C10CAF: PopAdLdVar
  loc_C10CB0: FLdPr Me
  loc_C10CB3: MemLdStr global_92
  loc_C10CB6: FLdPr Me
  loc_C10CB9: MemLdStr global_84
  loc_C10CBC: AryLock
  loc_C10CBF: Ary1LdPr
  loc_C10CC0: MemLdRfVar from_stack_1.global_0
  loc_C10CC3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10CC8: AryUnlock
  loc_C10CCB: FFree1Var var_DC = ""
  loc_C10CCE: FLdRfVar var_2C8
  loc_C10CD1: FLdPr var_124
  loc_C10CD4: from_stack_1 = clsboleto.NumeBole
  loc_C10CD9: LitI2_Byte 0
  loc_C10CDB: LitVar_Missing var_DC
  loc_C10CDE: LitI2_Byte 0
  loc_C10CE0: ILdRf var_2C8
  loc_C10CE3: CVarI4
  loc_C10CE7: PopAdLdVar
  loc_C10CE8: FLdPr Me
  loc_C10CEB: MemLdStr global_92
  loc_C10CEE: FLdPr Me
  loc_C10CF1: MemLdStr global_84
  loc_C10CF4: AryLock
  loc_C10CF7: Ary1LdPr
  loc_C10CF8: MemLdRfVar from_stack_1.global_4
  loc_C10CFB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10D00: AryUnlock
  loc_C10D03: FFree1Var var_DC = ""
  loc_C10D06: FLdRfVar var_BE
  loc_C10D09: FLdPr var_124
  loc_C10D0C: from_stack_1 = clsboleto.CodiOfic
  loc_C10D11: LitI2_Byte 0
  loc_C10D13: LitVar_Missing var_DC
  loc_C10D16: LitI2_Byte 0
  loc_C10D18: FLdI2 var_BE
  loc_C10D1B: CVarI2 var_A8
  loc_C10D1E: PopAdLdVar
  loc_C10D1F: FLdPr Me
  loc_C10D22: MemLdStr global_92
  loc_C10D25: FLdPr Me
  loc_C10D28: MemLdStr global_84
  loc_C10D2B: AryLock
  loc_C10D2E: Ary1LdPr
  loc_C10D2F: MemLdRfVar from_stack_1.global_8
  loc_C10D32: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10D37: AryUnlock
  loc_C10D3A: FFree1Var var_DC = ""
  loc_C10D3D: FLdRfVar var_C8
  loc_C10D40: FLdPr var_124
  loc_C10D43: from_stack_1 = clsboleto.CuenCtct
  loc_C10D48: LitI2_Byte 0
  loc_C10D4A: LitVar_Missing var_EC
  loc_C10D4D: LitI2_Byte 0
  loc_C10D4F: FLdZeroAd var_C8
  loc_C10D52: CVarStr var_DC
  loc_C10D55: PopAdLdVar
  loc_C10D56: FLdPr Me
  loc_C10D59: MemLdStr global_92
  loc_C10D5C: FLdPr Me
  loc_C10D5F: MemLdStr global_84
  loc_C10D62: AryLock
  loc_C10D65: Ary1LdPr
  loc_C10D66: MemLdRfVar from_stack_1.global_12
  loc_C10D69: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10D6E: AryUnlock
  loc_C10D71: FFreeVar var_DC = ""
  loc_C10D78: FLdRfVar var_DC
  loc_C10D7B: FLdPr var_124
  loc_C10D7E: from_stack_1 = clsboleto.FealBole
  loc_C10D83: LitI2_Byte 0
  loc_C10D85: LitVar_Missing var_EC
  loc_C10D88: LitI2_Byte 0
  loc_C10D8A: FLdVar var_DC
  loc_C10D8E: FLdPr Me
  loc_C10D91: MemLdStr global_92
  loc_C10D94: FLdPr Me
  loc_C10D97: MemLdStr global_84
  loc_C10D9A: AryLock
  loc_C10D9D: Ary1LdPr
  loc_C10D9E: MemLdRfVar from_stack_1.global_16
  loc_C10DA1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10DA6: AryUnlock
  loc_C10DA9: FFreeVar var_DC = ""
  loc_C10DB0: FLdRfVar var_C8
  loc_C10DB3: FLdPr var_124
  loc_C10DB6: from_stack_1 = clsboleto.CucuPers
  loc_C10DBB: LitI2_Byte 0
  loc_C10DBD: LitVar_Missing var_EC
  loc_C10DC0: LitI2_Byte 0
  loc_C10DC2: FLdZeroAd var_C8
  loc_C10DC5: CVarStr var_DC
  loc_C10DC8: PopAdLdVar
  loc_C10DC9: FLdPr Me
  loc_C10DCC: MemLdStr global_92
  loc_C10DCF: FLdPr Me
  loc_C10DD2: MemLdStr global_84
  loc_C10DD5: AryLock
  loc_C10DD8: Ary1LdPr
  loc_C10DD9: MemLdRfVar from_stack_1.global_20
  loc_C10DDC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10DE1: AryUnlock
  loc_C10DE4: FFreeVar var_DC = ""
  loc_C10DEB: FLdRfVar var_C8
  loc_C10DEE: FLdPr var_124
  loc_C10DF1: from_stack_1 = clsboleto.DetaPers
  loc_C10DF6: LitI2_Byte 0
  loc_C10DF8: LitVar_Missing var_EC
  loc_C10DFB: LitI2_Byte 0
  loc_C10DFD: FLdZeroAd var_C8
  loc_C10E00: CVarStr var_DC
  loc_C10E03: PopAdLdVar
  loc_C10E04: FLdPr Me
  loc_C10E07: MemLdStr global_92
  loc_C10E0A: FLdPr Me
  loc_C10E0D: MemLdStr global_84
  loc_C10E10: AryLock
  loc_C10E13: Ary1LdPr
  loc_C10E14: MemLdRfVar from_stack_1.global_24
  loc_C10E17: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10E1C: AryUnlock
  loc_C10E1F: FFreeVar var_DC = ""
  loc_C10E26: FLdRfVar var_2DC
  loc_C10E29: FLdPr var_124
  loc_C10E2C: from_stack_1 = clsboleto.CapiBole
  loc_C10E31: LitI2_Byte 0
  loc_C10E33: LitI4 1
  loc_C10E38: FLdPr Me
  loc_C10E3B: MemLdStr global_88
  loc_C10E3E: AryLock
  loc_C10E41: Ary1LdPr
  loc_C10E42: MemLdRfVar from_stack_1.global_28
  loc_C10E45: CVarRef
  loc_C10E4A: LitI2_Byte &HFF
  loc_C10E4C: FLdFPR8 var_2DC
  loc_C10E4F: CVarR8
  loc_C10E53: PopAdLdVar
  loc_C10E54: FLdPr Me
  loc_C10E57: MemLdStr global_92
  loc_C10E5A: FLdPr Me
  loc_C10E5D: MemLdStr global_84
  loc_C10E60: AryLock
  loc_C10E63: Ary1LdPr
  loc_C10E64: MemLdRfVar from_stack_1.global_28
  loc_C10E67: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10E6C: AryUnlock
  loc_C10E6F: AryUnlock
  loc_C10E72: FLdRfVar var_2DC
  loc_C10E75: FLdPr var_124
  loc_C10E78: from_stack_1 = clsboleto.DecaBole
  loc_C10E7D: LitI2_Byte 0
  loc_C10E7F: LitI4 1
  loc_C10E84: FLdPr Me
  loc_C10E87: MemLdStr global_88
  loc_C10E8A: AryLock
  loc_C10E8D: Ary1LdPr
  loc_C10E8E: MemLdRfVar from_stack_1.global_32
  loc_C10E91: CVarRef
  loc_C10E96: LitI2_Byte &HFF
  loc_C10E98: FLdFPR8 var_2DC
  loc_C10E9B: CVarR8
  loc_C10E9F: PopAdLdVar
  loc_C10EA0: FLdPr Me
  loc_C10EA3: MemLdStr global_92
  loc_C10EA6: FLdPr Me
  loc_C10EA9: MemLdStr global_84
  loc_C10EAC: AryLock
  loc_C10EAF: Ary1LdPr
  loc_C10EB0: MemLdRfVar from_stack_1.global_32
  loc_C10EB3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10EB8: AryUnlock
  loc_C10EBB: AryUnlock
  loc_C10EBE: FLdRfVar var_2DC
  loc_C10EC1: FLdPr var_124
  loc_C10EC4: from_stack_1 = clsboleto.RecaBole
  loc_C10EC9: LitI2_Byte 0
  loc_C10ECB: LitI4 1
  loc_C10ED0: FLdPr Me
  loc_C10ED3: MemLdStr global_88
  loc_C10ED6: AryLock
  loc_C10ED9: Ary1LdPr
  loc_C10EDA: MemLdRfVar from_stack_1.global_36
  loc_C10EDD: CVarRef
  loc_C10EE2: LitI2_Byte &HFF
  loc_C10EE4: FLdFPR8 var_2DC
  loc_C10EE7: CVarR8
  loc_C10EEB: PopAdLdVar
  loc_C10EEC: FLdPr Me
  loc_C10EEF: MemLdStr global_92
  loc_C10EF2: FLdPr Me
  loc_C10EF5: MemLdStr global_84
  loc_C10EF8: AryLock
  loc_C10EFB: Ary1LdPr
  loc_C10EFC: MemLdRfVar from_stack_1.global_36
  loc_C10EFF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10F04: AryUnlock
  loc_C10F07: AryUnlock
  loc_C10F0A: FLdRfVar var_2DC
  loc_C10F0D: FLdPr var_124
  loc_C10F10: from_stack_1 = clsboleto.DereBole
  loc_C10F15: LitI2_Byte 0
  loc_C10F17: LitI4 1
  loc_C10F1C: FLdPr Me
  loc_C10F1F: MemLdStr global_88
  loc_C10F22: AryLock
  loc_C10F25: Ary1LdPr
  loc_C10F26: MemLdRfVar from_stack_1.global_40
  loc_C10F29: CVarRef
  loc_C10F2E: LitI2_Byte &HFF
  loc_C10F30: FLdFPR8 var_2DC
  loc_C10F33: CVarR8
  loc_C10F37: PopAdLdVar
  loc_C10F38: FLdPr Me
  loc_C10F3B: MemLdStr global_92
  loc_C10F3E: FLdPr Me
  loc_C10F41: MemLdStr global_84
  loc_C10F44: AryLock
  loc_C10F47: Ary1LdPr
  loc_C10F48: MemLdRfVar from_stack_1.global_40
  loc_C10F4B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10F50: AryUnlock
  loc_C10F53: AryUnlock
  loc_C10F56: FLdRfVar var_2DC
  loc_C10F59: FLdPr var_124
  loc_C10F5C: from_stack_1 = clsboleto.CrafBole
  loc_C10F61: LitI2_Byte 0
  loc_C10F63: LitI4 1
  loc_C10F68: FLdPr Me
  loc_C10F6B: MemLdStr global_88
  loc_C10F6E: AryLock
  loc_C10F71: Ary1LdPr
  loc_C10F72: MemLdRfVar from_stack_1.global_44
  loc_C10F75: CVarRef
  loc_C10F7A: LitI2_Byte &HFF
  loc_C10F7C: FLdFPR8 var_2DC
  loc_C10F7F: CVarR8
  loc_C10F83: PopAdLdVar
  loc_C10F84: FLdPr Me
  loc_C10F87: MemLdStr global_92
  loc_C10F8A: FLdPr Me
  loc_C10F8D: MemLdStr global_84
  loc_C10F90: AryLock
  loc_C10F93: Ary1LdPr
  loc_C10F94: MemLdRfVar from_stack_1.global_44
  loc_C10F97: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10F9C: AryUnlock
  loc_C10F9F: AryUnlock
  loc_C10FA2: FLdRfVar var_2DC
  loc_C10FA5: FLdPr var_124
  loc_C10FA8: from_stack_1 = clsboleto.InteBole
  loc_C10FAD: LitI2_Byte 0
  loc_C10FAF: LitI4 1
  loc_C10FB4: FLdPr Me
  loc_C10FB7: MemLdStr global_88
  loc_C10FBA: AryLock
  loc_C10FBD: Ary1LdPr
  loc_C10FBE: MemLdRfVar from_stack_1.global_48
  loc_C10FC1: CVarRef
  loc_C10FC6: LitI2_Byte &HFF
  loc_C10FC8: FLdFPR8 var_2DC
  loc_C10FCB: CVarR8
  loc_C10FCF: PopAdLdVar
  loc_C10FD0: FLdPr Me
  loc_C10FD3: MemLdStr global_92
  loc_C10FD6: FLdPr Me
  loc_C10FD9: MemLdStr global_84
  loc_C10FDC: AryLock
  loc_C10FDF: Ary1LdPr
  loc_C10FE0: MemLdRfVar from_stack_1.global_48
  loc_C10FE3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10FE8: AryUnlock
  loc_C10FEB: AryUnlock
  loc_C10FEE: FLdRfVar var_2DC
  loc_C10FF1: FLdPr var_124
  loc_C10FF4: from_stack_1 = clsboleto.ApreBole
  loc_C10FF9: LitI2_Byte 0
  loc_C10FFB: LitI4 1
  loc_C11000: FLdPr Me
  loc_C11003: MemLdStr global_88
  loc_C11006: AryLock
  loc_C11009: Ary1LdPr
  loc_C1100A: MemLdRfVar from_stack_1.bGenerado
  loc_C1100D: CVarRef
  loc_C11012: LitI2_Byte &HFF
  loc_C11014: FLdFPR8 var_2DC
  loc_C11017: CVarR8
  loc_C1101B: PopAdLdVar
  loc_C1101C: FLdPr Me
  loc_C1101F: MemLdStr global_92
  loc_C11022: FLdPr Me
  loc_C11025: MemLdStr global_84
  loc_C11028: AryLock
  loc_C1102B: Ary1LdPr
  loc_C1102C: MemLdRfVar from_stack_1.bGenerado
  loc_C1102F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C11034: AryUnlock
  loc_C11037: AryUnlock
  loc_C1103A: FLdRfVar var_2DC
  loc_C1103D: FLdPr var_124
  loc_C11040: from_stack_1 = clsboleto.TotaBole
  loc_C11045: LitI2_Byte 0
  loc_C11047: LitI4 1
  loc_C1104C: FLdPr Me
  loc_C1104F: MemLdStr global_88
  loc_C11052: AryLock
  loc_C11055: Ary1LdPr
  loc_C11056: MemLdRfVar from_stack_1.global_56
  loc_C11059: CVarRef
  loc_C1105E: LitI2_Byte &HFF
  loc_C11060: FLdFPR8 var_2DC
  loc_C11063: CVarR8
  loc_C11067: PopAdLdVar
  loc_C11068: FLdPr Me
  loc_C1106B: MemLdStr global_92
  loc_C1106E: FLdPr Me
  loc_C11071: MemLdStr global_84
  loc_C11074: AryLock
  loc_C11077: Ary1LdPr
  loc_C11078: MemLdRfVar from_stack_1.global_56
  loc_C1107B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C11080: AryUnlock
  loc_C11083: AryUnlock
  loc_C11086: FLdRfVar var_C8
  loc_C11089: FLdPr var_124
  loc_C1108C: from_stack_1 = clsboleto.EstaBole
  loc_C11091: LitI2_Byte 0
  loc_C11093: LitVar_Missing var_EC
  loc_C11096: LitI2_Byte 0
  loc_C11098: FLdZeroAd var_C8
  loc_C1109B: CVarStr var_DC
  loc_C1109E: PopAdLdVar
  loc_C1109F: FLdPr Me
  loc_C110A2: MemLdStr global_92
  loc_C110A5: FLdPr Me
  loc_C110A8: MemLdStr global_84
  loc_C110AB: AryLock
  loc_C110AE: Ary1LdPr
  loc_C110AF: MemLdRfVar from_stack_1.global_60
  loc_C110B2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C110B7: AryUnlock
  loc_C110BA: FFreeVar var_DC = ""
  loc_C110C1: LitI2_Byte 1
  loc_C110C3: PopTmpLdAd2 var_BE
  loc_C110C6: FLdPr var_124
  loc_C110C9: Call clsboleto.Move(from_stack_1v)
  loc_C110CE: FLdPr Me
  loc_C110D1: MemLdRfVar from_stack_1.global_92
  loc_C110D4: NextI4 var_2D0, loc_C10C97
  loc_C110D9: LitNothing
  loc_C110DB: FStAd var_124 
  loc_C110DF: LitI2_Byte &HFF
  loc_C110E1: FLdPr Me
  loc_C110E4: MemStI2 bGenerado
  loc_C110E7: LitI4 0
  loc_C110EC: CI2I4
  loc_C110ED: FLdPr Me
  loc_C110F0: Me.MousePointer = from_stack_1
  loc_C110F5: LitVarStr var_A8, vbNullString
  loc_C110FA: PopAdLdVar
  loc_C110FB: FLdPr Me
  loc_C110FE: VCallAd Control_ID_statusBar
  loc_C11101: FStAdFunc var_BC
  loc_C11104: FLdPr var_BC
  loc_C11107: LateIdSt
  loc_C1110C: FFree1Ad var_BC
  loc_C1110F: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B8C218
  'Data Table: 4EA65C
  loc_B8BCBC: FLdRfVar var_88
  loc_B8BCBF: LitI2_Byte 0
  loc_B8BCC1: LitI2_Byte &HFF
  loc_B8BCC3: ImpAdLdI4 MemVar_D93C84
  loc_B8BCC6: FLdPr Me
  loc_B8BCC9: MemLdRfVar from_stack_1.global_60
  loc_B8BCCC: NewIfNullPr IFileSystem3
  loc_B8BCCF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B8BCD4: ILdRf var_88
  loc_B8BCD7: FLdPr Me
  loc_B8BCDA: MemStVarAd
  loc_B8BCDE: FFree1Ad var_88
  loc_B8BCE1: LitI2_Byte &HFF
  loc_B8BCE3: ImpAdStI2 MemVar_D93C8A
  loc_B8BCE6: Call Proc_222_32_C08714()
  loc_B8BCEB: LitI4 1
  loc_B8BCF0: FLdPr Me
  loc_B8BCF3: MemLdRfVar from_stack_1.global_92
  loc_B8BCF6: FLdPr Me
  loc_B8BCF9: MemLdStr global_84
  loc_B8BCFC: LitI2_Byte 1
  loc_B8BCFE: FnUBound
  loc_B8BD00: ForI4 var_90
  loc_B8BD06: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B8BD0B: PopAdLdVar
  loc_B8BD0C: FLdPr Me
  loc_B8BD0F: MemLdRfVar from_stack_1.global_64
  loc_B8BD12: LdPrVar
  loc_B8BD14: LateMemCall
  loc_B8BD1A: FLdPr Me
  loc_B8BD1D: MemLdStr global_92
  loc_B8BD20: FLdPr Me
  loc_B8BD23: MemLdStr global_84
  loc_B8BD26: AryLock
  loc_B8BD29: Ary1LdRf
  loc_B8BD2A: FStR4 var_B8
  loc_B8BD2D: LitStr vbNullString
  loc_B8BD30: LitI2_Byte 0
  loc_B8BD32: LitI2_Byte 0
  loc_B8BD34: LitI2_Byte 0
  loc_B8BD36: LitStr "left"
  loc_B8BD39: FMemLdR4 var_B8(0)
  loc_B8BD3E: LitStr "-"
  loc_B8BD41: ConcatStr
  loc_B8BD42: FStStrNoPop var_BC
  loc_B8BD45: FMemLdR4 var_B8(4)
  loc_B8BD4A: ConcatStr
  loc_B8BD4B: FStStrNoPop var_C0
  loc_B8BD4E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BD53: CVarStr var_D0
  loc_B8BD56: PopAdLdVar
  loc_B8BD57: FLdPr Me
  loc_B8BD5A: MemLdRfVar from_stack_1.global_64
  loc_B8BD5D: LdPrVar
  loc_B8BD5F: LateMemCall
  loc_B8BD65: FFreeStr var_BC = ""
  loc_B8BD6C: FFree1Var var_D0 = ""
  loc_B8BD6F: LitStr vbNullString
  loc_B8BD72: LitI2_Byte 0
  loc_B8BD74: LitI2_Byte 0
  loc_B8BD76: LitI2_Byte 0
  loc_B8BD78: LitStr "right"
  loc_B8BD7B: FMemLdR4 var_B8(8)
  loc_B8BD80: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BD85: CVarStr var_D0
  loc_B8BD88: PopAdLdVar
  loc_B8BD89: FLdPr Me
  loc_B8BD8C: MemLdRfVar from_stack_1.global_64
  loc_B8BD8F: LdPrVar
  loc_B8BD91: LateMemCall
  loc_B8BD97: FFree1Var var_D0 = ""
  loc_B8BD9A: LitStr vbNullString
  loc_B8BD9D: LitI2_Byte 0
  loc_B8BD9F: LitI2_Byte 0
  loc_B8BDA1: LitI2_Byte 0
  loc_B8BDA3: LitStr "left"
  loc_B8BDA6: FMemLdR4 var_B8(12)
  loc_B8BDAB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BDB0: CVarStr var_D0
  loc_B8BDB3: PopAdLdVar
  loc_B8BDB4: FLdPr Me
  loc_B8BDB7: MemLdRfVar from_stack_1.global_64
  loc_B8BDBA: LdPrVar
  loc_B8BDBC: LateMemCall
  loc_B8BDC2: FFree1Var var_D0 = ""
  loc_B8BDC5: LitStr vbNullString
  loc_B8BDC8: LitI2_Byte 0
  loc_B8BDCA: LitI2_Byte 0
  loc_B8BDCC: LitI2_Byte 0
  loc_B8BDCE: LitStr "center"
  loc_B8BDD1: FMemLdR4 var_B8(16)
  loc_B8BDD6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BDDB: CVarStr var_D0
  loc_B8BDDE: PopAdLdVar
  loc_B8BDDF: FLdPr Me
  loc_B8BDE2: MemLdRfVar from_stack_1.global_64
  loc_B8BDE5: LdPrVar
  loc_B8BDE7: LateMemCall
  loc_B8BDED: FFree1Var var_D0 = ""
  loc_B8BDF0: LitStr vbNullString
  loc_B8BDF3: LitI2_Byte 0
  loc_B8BDF5: LitI2_Byte 0
  loc_B8BDF7: LitI2_Byte 0
  loc_B8BDF9: LitStr "left"
  loc_B8BDFC: FMemLdR4 var_B8(20)
  loc_B8BE01: LitStr " - "
  loc_B8BE04: ConcatStr
  loc_B8BE05: FStStrNoPop var_BC
  loc_B8BE08: FMemLdR4 var_B8(24)
  loc_B8BE0D: ConcatStr
  loc_B8BE0E: FStStrNoPop var_C0
  loc_B8BE11: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BE16: CVarStr var_D0
  loc_B8BE19: PopAdLdVar
  loc_B8BE1A: FLdPr Me
  loc_B8BE1D: MemLdRfVar from_stack_1.global_64
  loc_B8BE20: LdPrVar
  loc_B8BE22: LateMemCall
  loc_B8BE28: FFreeStr var_BC = ""
  loc_B8BE2F: FFree1Var var_D0 = ""
  loc_B8BE32: LitStr vbNullString
  loc_B8BE35: LitI2_Byte 0
  loc_B8BE37: LitI2_Byte 0
  loc_B8BE39: LitI2_Byte 0
  loc_B8BE3B: LitStr "right"
  loc_B8BE3E: FMemLdR4 var_B8(28)
  loc_B8BE43: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BE48: CVarStr var_D0
  loc_B8BE4B: PopAdLdVar
  loc_B8BE4C: FLdPr Me
  loc_B8BE4F: MemLdRfVar from_stack_1.global_64
  loc_B8BE52: LdPrVar
  loc_B8BE54: LateMemCall
  loc_B8BE5A: FFree1Var var_D0 = ""
  loc_B8BE5D: LitStr vbNullString
  loc_B8BE60: LitI2_Byte 0
  loc_B8BE62: LitI2_Byte 0
  loc_B8BE64: LitI2_Byte 0
  loc_B8BE66: LitStr "right"
  loc_B8BE69: FMemLdR4 var_B8(32)
  loc_B8BE6E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BE73: CVarStr var_D0
  loc_B8BE76: PopAdLdVar
  loc_B8BE77: FLdPr Me
  loc_B8BE7A: MemLdRfVar from_stack_1.global_64
  loc_B8BE7D: LdPrVar
  loc_B8BE7F: LateMemCall
  loc_B8BE85: FFree1Var var_D0 = ""
  loc_B8BE88: LitStr vbNullString
  loc_B8BE8B: LitI2_Byte 0
  loc_B8BE8D: LitI2_Byte 0
  loc_B8BE8F: LitI2_Byte 0
  loc_B8BE91: LitStr "right"
  loc_B8BE94: FMemLdR4 var_B8(36)
  loc_B8BE99: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BE9E: CVarStr var_D0
  loc_B8BEA1: PopAdLdVar
  loc_B8BEA2: FLdPr Me
  loc_B8BEA5: MemLdRfVar from_stack_1.global_64
  loc_B8BEA8: LdPrVar
  loc_B8BEAA: LateMemCall
  loc_B8BEB0: FFree1Var var_D0 = ""
  loc_B8BEB3: LitStr vbNullString
  loc_B8BEB6: LitI2_Byte 0
  loc_B8BEB8: LitI2_Byte 0
  loc_B8BEBA: LitI2_Byte 0
  loc_B8BEBC: LitStr "right"
  loc_B8BEBF: FMemLdR4 var_B8(40)
  loc_B8BEC4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BEC9: CVarStr var_D0
  loc_B8BECC: PopAdLdVar
  loc_B8BECD: FLdPr Me
  loc_B8BED0: MemLdRfVar from_stack_1.global_64
  loc_B8BED3: LdPrVar
  loc_B8BED5: LateMemCall
  loc_B8BEDB: FFree1Var var_D0 = ""
  loc_B8BEDE: LitStr vbNullString
  loc_B8BEE1: LitI2_Byte 0
  loc_B8BEE3: LitI2_Byte 0
  loc_B8BEE5: LitI2_Byte 0
  loc_B8BEE7: LitStr "right"
  loc_B8BEEA: FMemLdR4 var_B8(44)
  loc_B8BEEF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BEF4: CVarStr var_D0
  loc_B8BEF7: PopAdLdVar
  loc_B8BEF8: FLdPr Me
  loc_B8BEFB: MemLdRfVar from_stack_1.global_64
  loc_B8BEFE: LdPrVar
  loc_B8BF00: LateMemCall
  loc_B8BF06: FFree1Var var_D0 = ""
  loc_B8BF09: LitStr vbNullString
  loc_B8BF0C: LitI2_Byte 0
  loc_B8BF0E: LitI2_Byte 0
  loc_B8BF10: LitI2_Byte 0
  loc_B8BF12: LitStr "right"
  loc_B8BF15: FMemLdR4 var_B8(48)
  loc_B8BF1A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BF1F: CVarStr var_D0
  loc_B8BF22: PopAdLdVar
  loc_B8BF23: FLdPr Me
  loc_B8BF26: MemLdRfVar from_stack_1.global_64
  loc_B8BF29: LdPrVar
  loc_B8BF2B: LateMemCall
  loc_B8BF31: FFree1Var var_D0 = ""
  loc_B8BF34: LitStr vbNullString
  loc_B8BF37: LitI2_Byte 0
  loc_B8BF39: LitI2_Byte 0
  loc_B8BF3B: LitI2_Byte 0
  loc_B8BF3D: LitStr "right"
  loc_B8BF40: FMemLdR4 var_B8(52)
  loc_B8BF45: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BF4A: CVarStr var_D0
  loc_B8BF4D: PopAdLdVar
  loc_B8BF4E: FLdPr Me
  loc_B8BF51: MemLdRfVar from_stack_1.global_64
  loc_B8BF54: LdPrVar
  loc_B8BF56: LateMemCall
  loc_B8BF5C: FFree1Var var_D0 = ""
  loc_B8BF5F: LitStr vbNullString
  loc_B8BF62: LitI2_Byte 0
  loc_B8BF64: LitI2_Byte 0
  loc_B8BF66: LitI2_Byte 0
  loc_B8BF68: LitStr "right"
  loc_B8BF6B: FMemLdR4 var_B8(56)
  loc_B8BF70: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BF75: CVarStr var_D0
  loc_B8BF78: PopAdLdVar
  loc_B8BF79: FLdPr Me
  loc_B8BF7C: MemLdRfVar from_stack_1.global_64
  loc_B8BF7F: LdPrVar
  loc_B8BF81: LateMemCall
  loc_B8BF87: FFree1Var var_D0 = ""
  loc_B8BF8A: LitStr vbNullString
  loc_B8BF8D: LitI2_Byte 0
  loc_B8BF8F: LitI2_Byte 0
  loc_B8BF91: LitI2_Byte 0
  loc_B8BF93: LitStr "left"
  loc_B8BF96: FMemLdR4 var_B8(60)
  loc_B8BF9B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8BFA0: CVarStr var_D0
  loc_B8BFA3: PopAdLdVar
  loc_B8BFA4: FLdPr Me
  loc_B8BFA7: MemLdRfVar from_stack_1.global_64
  loc_B8BFAA: LdPrVar
  loc_B8BFAC: LateMemCall
  loc_B8BFB2: FFree1Var var_D0 = ""
  loc_B8BFB5: LitI4 0
  loc_B8BFBA: FStR4 var_B8
  loc_B8BFBD: AryUnlock
  loc_B8BFC0: LitVarStr var_A0, "     </tr>"
  loc_B8BFC5: PopAdLdVar
  loc_B8BFC6: FLdPr Me
  loc_B8BFC9: MemLdRfVar from_stack_1.global_64
  loc_B8BFCC: LdPrVar
  loc_B8BFCE: LateMemCall
  loc_B8BFD4: FLdPr Me
  loc_B8BFD7: MemLdRfVar from_stack_1.global_92
  loc_B8BFDA: NextI4 var_90, loc_B8BD06
  loc_B8BFDF: LitVarStr var_A0, "  <tr class=""Totales"" align=""right"">"
  loc_B8BFE4: PopAdLdVar
  loc_B8BFE5: FLdPr Me
  loc_B8BFE8: MemLdRfVar from_stack_1.global_64
  loc_B8BFEB: LdPrVar
  loc_B8BFED: LateMemCall
  loc_B8BFF3: LitStr "   <td colspan=""5"" align=""center"">Boletos: "
  loc_B8BFF6: LitI4 -1
  loc_B8BFFB: LitI4 0
  loc_B8C000: LitI4 -1
  loc_B8C005: LitI4 0
  loc_B8C00A: FLdPr Me
  loc_B8C00D: MemLdStr global_84
  loc_B8C010: LitI2_Byte 1
  loc_B8C012: FnUBound
  loc_B8C014: CVarI4
  loc_B8C018: ImpAdCallI2 FormatNumber(, , , , )
  loc_B8C01D: FStStrNoPop var_BC
  loc_B8C020: ConcatStr
  loc_B8C021: FStStrNoPop var_C0
  loc_B8C024: LitStr "</td>"
  loc_B8C027: ConcatStr
  loc_B8C028: CVarStr var_E0
  loc_B8C02B: PopAdLdVar
  loc_B8C02C: FLdPr Me
  loc_B8C02F: MemLdRfVar from_stack_1.global_64
  loc_B8C032: LdPrVar
  loc_B8C034: LateMemCall
  loc_B8C03A: FFreeStr var_BC = ""
  loc_B8C041: FFreeVar var_D0 = ""
  loc_B8C048: LitI4 1
  loc_B8C04D: FLdPr Me
  loc_B8C050: MemLdStr global_88
  loc_B8C053: AryLock
  loc_B8C056: Ary1LdRf
  loc_B8C057: FStR4 var_E8
  loc_B8C05A: LitStr vbNullString
  loc_B8C05D: LitI2_Byte 0
  loc_B8C05F: LitI2_Byte 0
  loc_B8C061: LitI2_Byte 0
  loc_B8C063: LitStr "right"
  loc_B8C066: FMemLdR4 var_E8(28)
  loc_B8C06B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8C070: CVarStr var_D0
  loc_B8C073: PopAdLdVar
  loc_B8C074: FLdPr Me
  loc_B8C077: MemLdRfVar from_stack_1.global_64
  loc_B8C07A: LdPrVar
  loc_B8C07C: LateMemCall
  loc_B8C082: FFree1Var var_D0 = ""
  loc_B8C085: LitStr vbNullString
  loc_B8C088: LitI2_Byte 0
  loc_B8C08A: LitI2_Byte 0
  loc_B8C08C: LitI2_Byte 0
  loc_B8C08E: LitStr "right"
  loc_B8C091: FMemLdR4 var_E8(32)
  loc_B8C096: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8C09B: CVarStr var_D0
  loc_B8C09E: PopAdLdVar
  loc_B8C09F: FLdPr Me
  loc_B8C0A2: MemLdRfVar from_stack_1.global_64
  loc_B8C0A5: LdPrVar
  loc_B8C0A7: LateMemCall
  loc_B8C0AD: FFree1Var var_D0 = ""
  loc_B8C0B0: LitStr vbNullString
  loc_B8C0B3: LitI2_Byte 0
  loc_B8C0B5: LitI2_Byte 0
  loc_B8C0B7: LitI2_Byte 0
  loc_B8C0B9: LitStr "right"
  loc_B8C0BC: FMemLdR4 var_E8(36)
  loc_B8C0C1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8C0C6: CVarStr var_D0
  loc_B8C0C9: PopAdLdVar
  loc_B8C0CA: FLdPr Me
  loc_B8C0CD: MemLdRfVar from_stack_1.global_64
  loc_B8C0D0: LdPrVar
  loc_B8C0D2: LateMemCall
  loc_B8C0D8: FFree1Var var_D0 = ""
  loc_B8C0DB: LitStr vbNullString
  loc_B8C0DE: LitI2_Byte 0
  loc_B8C0E0: LitI2_Byte 0
  loc_B8C0E2: LitI2_Byte 0
  loc_B8C0E4: LitStr "right"
  loc_B8C0E7: FMemLdR4 var_E8(40)
  loc_B8C0EC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8C0F1: CVarStr var_D0
  loc_B8C0F4: PopAdLdVar
  loc_B8C0F5: FLdPr Me
  loc_B8C0F8: MemLdRfVar from_stack_1.global_64
  loc_B8C0FB: LdPrVar
  loc_B8C0FD: LateMemCall
  loc_B8C103: FFree1Var var_D0 = ""
  loc_B8C106: LitStr vbNullString
  loc_B8C109: LitI2_Byte 0
  loc_B8C10B: LitI2_Byte 0
  loc_B8C10D: LitI2_Byte 0
  loc_B8C10F: LitStr "right"
  loc_B8C112: FMemLdR4 var_E8(44)
  loc_B8C117: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8C11C: CVarStr var_D0
  loc_B8C11F: PopAdLdVar
  loc_B8C120: FLdPr Me
  loc_B8C123: MemLdRfVar from_stack_1.global_64
  loc_B8C126: LdPrVar
  loc_B8C128: LateMemCall
  loc_B8C12E: FFree1Var var_D0 = ""
  loc_B8C131: LitStr vbNullString
  loc_B8C134: LitI2_Byte 0
  loc_B8C136: LitI2_Byte 0
  loc_B8C138: LitI2_Byte 0
  loc_B8C13A: LitStr "right"
  loc_B8C13D: FMemLdR4 var_E8(48)
  loc_B8C142: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8C147: CVarStr var_D0
  loc_B8C14A: PopAdLdVar
  loc_B8C14B: FLdPr Me
  loc_B8C14E: MemLdRfVar from_stack_1.global_64
  loc_B8C151: LdPrVar
  loc_B8C153: LateMemCall
  loc_B8C159: FFree1Var var_D0 = ""
  loc_B8C15C: LitStr vbNullString
  loc_B8C15F: LitI2_Byte 0
  loc_B8C161: LitI2_Byte 0
  loc_B8C163: LitI2_Byte 0
  loc_B8C165: LitStr "right"
  loc_B8C168: FMemLdR4 var_E8(52)
  loc_B8C16D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8C172: CVarStr var_D0
  loc_B8C175: PopAdLdVar
  loc_B8C176: FLdPr Me
  loc_B8C179: MemLdRfVar from_stack_1.global_64
  loc_B8C17C: LdPrVar
  loc_B8C17E: LateMemCall
  loc_B8C184: FFree1Var var_D0 = ""
  loc_B8C187: LitStr vbNullString
  loc_B8C18A: LitI2_Byte 0
  loc_B8C18C: LitI2_Byte 0
  loc_B8C18E: LitI2_Byte 0
  loc_B8C190: LitStr "right"
  loc_B8C193: FMemLdR4 var_E8(56)
  loc_B8C198: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8C19D: CVarStr var_D0
  loc_B8C1A0: PopAdLdVar
  loc_B8C1A1: FLdPr Me
  loc_B8C1A4: MemLdRfVar from_stack_1.global_64
  loc_B8C1A7: LdPrVar
  loc_B8C1A9: LateMemCall
  loc_B8C1AF: FFree1Var var_D0 = ""
  loc_B8C1B2: LitStr vbNullString
  loc_B8C1B5: LitI2_Byte 0
  loc_B8C1B7: LitI2_Byte 0
  loc_B8C1B9: LitI2_Byte 0
  loc_B8C1BB: LitStr "left"
  loc_B8C1BE: LitStr vbNullString
  loc_B8C1C1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8C1C6: CVarStr var_D0
  loc_B8C1C9: PopAdLdVar
  loc_B8C1CA: FLdPr Me
  loc_B8C1CD: MemLdRfVar from_stack_1.global_64
  loc_B8C1D0: LdPrVar
  loc_B8C1D2: LateMemCall
  loc_B8C1D8: FFree1Var var_D0 = ""
  loc_B8C1DB: LitI4 0
  loc_B8C1E0: FStR4 var_E8
  loc_B8C1E3: AryUnlock
  loc_B8C1E6: LitVarStr var_A0, "     </tr>"
  loc_B8C1EB: PopAdLdVar
  loc_B8C1EC: FLdPr Me
  loc_B8C1EF: MemLdRfVar from_stack_1.global_64
  loc_B8C1F2: LdPrVar
  loc_B8C1F4: LateMemCall
  loc_B8C1FA: Call Proc_222_33_9F659C()
  loc_B8C1FF: FLdPr Me
  loc_B8C202: MemLdRfVar from_stack_1.global_64
  loc_B8C205: LdPrVar
  loc_B8C207: LateMemCall
  loc_B8C20D: LitStr vbNullString
  loc_B8C210: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B8C215: ExitProcHresult
End Sub

Private Function Proc_222_32_C08714() 'C08714
  'Data Table: 4EA65C
  loc_C07E24: LitVarStr var_94, "<html>"
  loc_C07E29: PopAdLdVar
  loc_C07E2A: FLdPr Me
  loc_C07E2D: MemLdRfVar from_stack_1.global_64
  loc_C07E30: LdPrVar
  loc_C07E32: LateMemCall
  loc_C07E38: LitVarStr var_94, "<head>"
  loc_C07E3D: PopAdLdVar
  loc_C07E3E: FLdPr Me
  loc_C07E41: MemLdRfVar from_stack_1.global_64
  loc_C07E44: LdPrVar
  loc_C07E46: LateMemCall
  loc_C07E4C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C07E51: PopAdLdVar
  loc_C07E52: FLdPr Me
  loc_C07E55: MemLdRfVar from_stack_1.global_64
  loc_C07E58: LdPrVar
  loc_C07E5A: LateMemCall
  loc_C07E60: LitStr "<title>"
  loc_C07E63: FLdRfVar var_A8
  loc_C07E66: FLdPr Me
  loc_C07E69:  = Me.Caption
  loc_C07E6E: ILdRf var_A8
  loc_C07E71: ConcatStr
  loc_C07E72: FStStrNoPop var_AC
  loc_C07E75: LitStr "</title>"
  loc_C07E78: ConcatStr
  loc_C07E79: CVarStr var_BC
  loc_C07E7C: PopAdLdVar
  loc_C07E7D: FLdPr Me
  loc_C07E80: MemLdRfVar from_stack_1.global_64
  loc_C07E83: LdPrVar
  loc_C07E85: LateMemCall
  loc_C07E8B: FFreeStr var_A8 = ""
  loc_C07E92: FFree1Var var_BC = ""
  loc_C07E95: LitVarStr var_94, "<style type=""text/css"">"
  loc_C07E9A: PopAdLdVar
  loc_C07E9B: FLdPr Me
  loc_C07E9E: MemLdRfVar from_stack_1.global_64
  loc_C07EA1: LdPrVar
  loc_C07EA3: LateMemCall
  loc_C07EA9: LitVarStr var_94, ".Titulo1 {"
  loc_C07EAE: PopAdLdVar
  loc_C07EAF: FLdPr Me
  loc_C07EB2: MemLdRfVar from_stack_1.global_64
  loc_C07EB5: LdPrVar
  loc_C07EB7: LateMemCall
  loc_C07EBD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C07EC2: PopAdLdVar
  loc_C07EC3: FLdPr Me
  loc_C07EC6: MemLdRfVar from_stack_1.global_64
  loc_C07EC9: LdPrVar
  loc_C07ECB: LateMemCall
  loc_C07ED1: LitVarStr var_94, " font-size: 18px;"
  loc_C07ED6: PopAdLdVar
  loc_C07ED7: FLdPr Me
  loc_C07EDA: MemLdRfVar from_stack_1.global_64
  loc_C07EDD: LdPrVar
  loc_C07EDF: LateMemCall
  loc_C07EE5: LitVarStr var_94, " font-weight: bold;"
  loc_C07EEA: PopAdLdVar
  loc_C07EEB: FLdPr Me
  loc_C07EEE: MemLdRfVar from_stack_1.global_64
  loc_C07EF1: LdPrVar
  loc_C07EF3: LateMemCall
  loc_C07EF9: LitVarStr var_94, "}"
  loc_C07EFE: PopAdLdVar
  loc_C07EFF: FLdPr Me
  loc_C07F02: MemLdRfVar from_stack_1.global_64
  loc_C07F05: LdPrVar
  loc_C07F07: LateMemCall
  loc_C07F0D: LitVarStr var_94, ".Titulo2 {"
  loc_C07F12: PopAdLdVar
  loc_C07F13: FLdPr Me
  loc_C07F16: MemLdRfVar from_stack_1.global_64
  loc_C07F19: LdPrVar
  loc_C07F1B: LateMemCall
  loc_C07F21: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C07F26: PopAdLdVar
  loc_C07F27: FLdPr Me
  loc_C07F2A: MemLdRfVar from_stack_1.global_64
  loc_C07F2D: LdPrVar
  loc_C07F2F: LateMemCall
  loc_C07F35: LitVarStr var_94, " font-size: 14px;"
  loc_C07F3A: PopAdLdVar
  loc_C07F3B: FLdPr Me
  loc_C07F3E: MemLdRfVar from_stack_1.global_64
  loc_C07F41: LdPrVar
  loc_C07F43: LateMemCall
  loc_C07F49: LitVarStr var_94, " font-weight: bold;"
  loc_C07F4E: PopAdLdVar
  loc_C07F4F: FLdPr Me
  loc_C07F52: MemLdRfVar from_stack_1.global_64
  loc_C07F55: LdPrVar
  loc_C07F57: LateMemCall
  loc_C07F5D: LitVarStr var_94, "}"
  loc_C07F62: PopAdLdVar
  loc_C07F63: FLdPr Me
  loc_C07F66: MemLdRfVar from_stack_1.global_64
  loc_C07F69: LdPrVar
  loc_C07F6B: LateMemCall
  loc_C07F71: LitVarStr var_94, ".Normal {"
  loc_C07F76: PopAdLdVar
  loc_C07F77: FLdPr Me
  loc_C07F7A: MemLdRfVar from_stack_1.global_64
  loc_C07F7D: LdPrVar
  loc_C07F7F: LateMemCall
  loc_C07F85: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C07F8A: PopAdLdVar
  loc_C07F8B: FLdPr Me
  loc_C07F8E: MemLdRfVar from_stack_1.global_64
  loc_C07F91: LdPrVar
  loc_C07F93: LateMemCall
  loc_C07F99: LitVarStr var_94, " font-size: 12px;"
  loc_C07F9E: PopAdLdVar
  loc_C07F9F: FLdPr Me
  loc_C07FA2: MemLdRfVar from_stack_1.global_64
  loc_C07FA5: LdPrVar
  loc_C07FA7: LateMemCall
  loc_C07FAD: LitVarStr var_94, " font-style: normal;"
  loc_C07FB2: PopAdLdVar
  loc_C07FB3: FLdPr Me
  loc_C07FB6: MemLdRfVar from_stack_1.global_64
  loc_C07FB9: LdPrVar
  loc_C07FBB: LateMemCall
  loc_C07FC1: LitVarStr var_94, " font-weight: normal;"
  loc_C07FC6: PopAdLdVar
  loc_C07FC7: FLdPr Me
  loc_C07FCA: MemLdRfVar from_stack_1.global_64
  loc_C07FCD: LdPrVar
  loc_C07FCF: LateMemCall
  loc_C07FD5: LitVarStr var_94, " font-variant: normal;"
  loc_C07FDA: PopAdLdVar
  loc_C07FDB: FLdPr Me
  loc_C07FDE: MemLdRfVar from_stack_1.global_64
  loc_C07FE1: LdPrVar
  loc_C07FE3: LateMemCall
  loc_C07FE9: LitVarStr var_94, "}"
  loc_C07FEE: PopAdLdVar
  loc_C07FEF: FLdPr Me
  loc_C07FF2: MemLdRfVar from_stack_1.global_64
  loc_C07FF5: LdPrVar
  loc_C07FF7: LateMemCall
  loc_C07FFD: LitVarStr var_94, ".Encabezado {"
  loc_C08002: PopAdLdVar
  loc_C08003: FLdPr Me
  loc_C08006: MemLdRfVar from_stack_1.global_64
  loc_C08009: LdPrVar
  loc_C0800B: LateMemCall
  loc_C08011: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C08016: PopAdLdVar
  loc_C08017: FLdPr Me
  loc_C0801A: MemLdRfVar from_stack_1.global_64
  loc_C0801D: LdPrVar
  loc_C0801F: LateMemCall
  loc_C08025: LitVarStr var_94, " font-size: 11px;"
  loc_C0802A: PopAdLdVar
  loc_C0802B: FLdPr Me
  loc_C0802E: MemLdRfVar from_stack_1.global_64
  loc_C08031: LdPrVar
  loc_C08033: LateMemCall
  loc_C08039: LitVarStr var_94, " font-weight: bold;"
  loc_C0803E: PopAdLdVar
  loc_C0803F: FLdPr Me
  loc_C08042: MemLdRfVar from_stack_1.global_64
  loc_C08045: LdPrVar
  loc_C08047: LateMemCall
  loc_C0804D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C08052: PopAdLdVar
  loc_C08053: FLdPr Me
  loc_C08056: MemLdRfVar from_stack_1.global_64
  loc_C08059: LdPrVar
  loc_C0805B: LateMemCall
  loc_C08061: LitVarStr var_94, "}"
  loc_C08066: PopAdLdVar
  loc_C08067: FLdPr Me
  loc_C0806A: MemLdRfVar from_stack_1.global_64
  loc_C0806D: LdPrVar
  loc_C0806F: LateMemCall
  loc_C08075: LitVarStr var_94, ".LineaDato {"
  loc_C0807A: PopAdLdVar
  loc_C0807B: FLdPr Me
  loc_C0807E: MemLdRfVar from_stack_1.global_64
  loc_C08081: LdPrVar
  loc_C08083: LateMemCall
  loc_C08089: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C0808E: PopAdLdVar
  loc_C0808F: FLdPr Me
  loc_C08092: MemLdRfVar from_stack_1.global_64
  loc_C08095: LdPrVar
  loc_C08097: LateMemCall
  loc_C0809D: LitVarStr var_94, " font-size: 10px;"
  loc_C080A2: PopAdLdVar
  loc_C080A3: FLdPr Me
  loc_C080A6: MemLdRfVar from_stack_1.global_64
  loc_C080A9: LdPrVar
  loc_C080AB: LateMemCall
  loc_C080B1: LitVarStr var_94, "}"
  loc_C080B6: PopAdLdVar
  loc_C080B7: FLdPr Me
  loc_C080BA: MemLdRfVar from_stack_1.global_64
  loc_C080BD: LdPrVar
  loc_C080BF: LateMemCall
  loc_C080C5: LitVarStr var_94, ".Totales {"
  loc_C080CA: PopAdLdVar
  loc_C080CB: FLdPr Me
  loc_C080CE: MemLdRfVar from_stack_1.global_64
  loc_C080D1: LdPrVar
  loc_C080D3: LateMemCall
  loc_C080D9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C080DE: PopAdLdVar
  loc_C080DF: FLdPr Me
  loc_C080E2: MemLdRfVar from_stack_1.global_64
  loc_C080E5: LdPrVar
  loc_C080E7: LateMemCall
  loc_C080ED: LitVarStr var_94, " font-size: 12px;"
  loc_C080F2: PopAdLdVar
  loc_C080F3: FLdPr Me
  loc_C080F6: MemLdRfVar from_stack_1.global_64
  loc_C080F9: LdPrVar
  loc_C080FB: LateMemCall
  loc_C08101: LitVarStr var_94, " font-weight: bold;"
  loc_C08106: PopAdLdVar
  loc_C08107: FLdPr Me
  loc_C0810A: MemLdRfVar from_stack_1.global_64
  loc_C0810D: LdPrVar
  loc_C0810F: LateMemCall
  loc_C08115: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C0811A: PopAdLdVar
  loc_C0811B: FLdPr Me
  loc_C0811E: MemLdRfVar from_stack_1.global_64
  loc_C08121: LdPrVar
  loc_C08123: LateMemCall
  loc_C08129: LitVarStr var_94, "}"
  loc_C0812E: PopAdLdVar
  loc_C0812F: FLdPr Me
  loc_C08132: MemLdRfVar from_stack_1.global_64
  loc_C08135: LdPrVar
  loc_C08137: LateMemCall
  loc_C0813D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C08142: PopAdLdVar
  loc_C08143: FLdPr Me
  loc_C08146: MemLdRfVar from_stack_1.global_64
  loc_C08149: LdPrVar
  loc_C0814B: LateMemCall
  loc_C08151: LitVarStr var_94, "</style>"
  loc_C08156: PopAdLdVar
  loc_C08157: FLdPr Me
  loc_C0815A: MemLdRfVar from_stack_1.global_64
  loc_C0815D: LdPrVar
  loc_C0815F: LateMemCall
  loc_C08165: LitI4 0
  loc_C0816A: FStStrCopy var_AC
  loc_C0816D: FLdRfVar var_AC
  loc_C08170: LitI4 0
  loc_C08175: FStStrCopy var_A8
  loc_C08178: FLdRfVar var_A8
  loc_C0817B: LitI2_Byte &HFF
  loc_C0817D: PopTmpLdAd2 var_BE
  loc_C08180: FLdPr Me
  loc_C08183: MemLdRfVar from_stack_1.global_64
  loc_C08186: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C0818B: FFreeStr var_A8 = ""
  loc_C08192: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C08197: PopAdLdVar
  loc_C08198: FLdPr Me
  loc_C0819B: MemLdRfVar from_stack_1.global_64
  loc_C0819E: LdPrVar
  loc_C081A0: LateMemCall
  loc_C081A6: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C081AB: PopAdLdVar
  loc_C081AC: FLdPr Me
  loc_C081AF: MemLdRfVar from_stack_1.global_64
  loc_C081B2: LdPrVar
  loc_C081B4: LateMemCall
  loc_C081BA: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_C081BF: PopAdLdVar
  loc_C081C0: FLdPr Me
  loc_C081C3: MemLdRfVar from_stack_1.global_64
  loc_C081C6: LdPrVar
  loc_C081C8: LateMemCall
  loc_C081CE: FLdPr Me
  loc_C081D1: MemLdI2 bLogos
  loc_C081D4: BranchF loc_C0821D
  loc_C081D7: LitStr "      <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C081DA: LitI2_Byte &H5F
  loc_C081DC: CStrUI1
  loc_C081DE: FStStrNoPop var_A8
  loc_C081E1: ConcatStr
  loc_C081E2: FStStrNoPop var_AC
  loc_C081E5: LitStr """ height="""
  loc_C081E8: ConcatStr
  loc_C081E9: FStStrNoPop var_C4
  loc_C081EC: LitI2_Byte &H3C
  loc_C081EE: CStrUI1
  loc_C081F0: FStStrNoPop var_C8
  loc_C081F3: ConcatStr
  loc_C081F4: FStStrNoPop var_CC
  loc_C081F7: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_C081FA: ConcatStr
  loc_C081FB: CVarStr var_BC
  loc_C081FE: PopAdLdVar
  loc_C081FF: FLdPr Me
  loc_C08202: MemLdRfVar from_stack_1.global_64
  loc_C08205: LdPrVar
  loc_C08207: LateMemCall
  loc_C0820D: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_C0821A: FFree1Var var_BC = ""
  loc_C0821D: LitStr "    <br>"
  loc_C08220: LitStr "Municipalidad de Guaymallén"
  loc_C08223: ConcatStr
  loc_C08224: FStStrNoPop var_A8
  loc_C08227: LitStr "</p>"
  loc_C0822A: ConcatStr
  loc_C0822B: CVarStr var_BC
  loc_C0822E: PopAdLdVar
  loc_C0822F: FLdPr Me
  loc_C08232: MemLdRfVar from_stack_1.global_64
  loc_C08235: LdPrVar
  loc_C08237: LateMemCall
  loc_C0823D: FFree1Str var_A8
  loc_C08240: FFree1Var var_BC = ""
  loc_C08243: LitStr "    <p>"
  loc_C08246: FLdRfVar var_A8
  loc_C08249: FLdPr Me
  loc_C0824C:  = Me.Caption
  loc_C08251: ILdRf var_A8
  loc_C08254: ConcatStr
  loc_C08255: FStStrNoPop var_AC
  loc_C08258: LitStr "</p></th>"
  loc_C0825B: ConcatStr
  loc_C0825C: CVarStr var_BC
  loc_C0825F: PopAdLdVar
  loc_C08260: FLdPr Me
  loc_C08263: MemLdRfVar from_stack_1.global_64
  loc_C08266: LdPrVar
  loc_C08268: LateMemCall
  loc_C0826E: FFreeStr var_A8 = ""
  loc_C08275: FFree1Var var_BC = ""
  loc_C08278: LitVarStr var_94, "  </tr>"
  loc_C0827D: PopAdLdVar
  loc_C0827E: FLdPr Me
  loc_C08281: MemLdRfVar from_stack_1.global_64
  loc_C08284: LdPrVar
  loc_C08286: LateMemCall
  loc_C0828C: LitVarStr var_94, "  <tr>"
  loc_C08291: PopAdLdVar
  loc_C08292: FLdPr Me
  loc_C08295: MemLdRfVar from_stack_1.global_64
  loc_C08298: LdPrVar
  loc_C0829A: LateMemCall
  loc_C082A0: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""middle""><hr></th>"
  loc_C082A5: PopAdLdVar
  loc_C082A6: FLdPr Me
  loc_C082A9: MemLdRfVar from_stack_1.global_64
  loc_C082AC: LdPrVar
  loc_C082AE: LateMemCall
  loc_C082B4: LitVarStr var_94, "  </tr>"
  loc_C082B9: PopAdLdVar
  loc_C082BA: FLdPr Me
  loc_C082BD: MemLdRfVar from_stack_1.global_64
  loc_C082C0: LdPrVar
  loc_C082C2: LateMemCall
  loc_C082C8: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C082CD: PopAdLdVar
  loc_C082CE: FLdPr Me
  loc_C082D1: MemLdRfVar from_stack_1.global_64
  loc_C082D4: LdPrVar
  loc_C082D6: LateMemCall
  loc_C082DC: FLdPr Me
  loc_C082DF: VCallAd Control_ID_CodiOficMsk
  loc_C082E2: FStAdFunc var_124
  loc_C082E5: FLdPr var_124
  loc_C082E8: LateIdLdVar var_134 DispID_22 0
  loc_C082EF: PopAd
  loc_C082F1: FLdRfVar var_140
  loc_C082F4: FLdPr Me
  loc_C082F7: VCallAd Control_ID_DetaOficLbl
  loc_C082FA: FStAdFunc var_13C
  loc_C082FD: FLdPr var_13C
  loc_C08300:  = Me.Caption
  loc_C08305: FLdRfVar var_198
  loc_C08308: FLdPr Me
  loc_C0830B: VCallAd Control_ID_NumeCtaTxt
  loc_C0830E: FStAdFunc var_194
  loc_C08311: FLdPr var_194
  loc_C08314:  = Me.Text
  loc_C08319: FLdRfVar var_1A0
  loc_C0831C: FLdPr Me
  loc_C0831F: VCallAd Control_ID_NumeCtaTxt
  loc_C08322: FStAdFunc var_19C
  loc_C08325: FLdPr var_19C
  loc_C08328:  = Me.Text
  loc_C0832D: LitStr "    <td align=""left""><strong>Desde: </strong>"
  loc_C08330: FLdPr Me
  loc_C08333: VCallAd Control_ID_DesdeMsk
  loc_C08336: FStAdFunc var_D0
  loc_C08339: FLdPr var_D0
  loc_C0833C: LateIdLdVar var_BC DispID_15 0
  loc_C08343: CStrVarTmp
  loc_C08344: FStStrNoPop var_A8
  loc_C08347: ConcatStr
  loc_C08348: FStStrNoPop var_AC
  loc_C0834B: LitStr " <strong> Hasta: </strong> "
  loc_C0834E: ConcatStr
  loc_C0834F: FStStrNoPop var_C4
  loc_C08352: FLdPr Me
  loc_C08355: VCallAd Control_ID_HastaMsk
  loc_C08358: FStAdFunc var_D4
  loc_C0835B: FLdPr var_D4
  loc_C0835E: LateIdLdVar var_E4 DispID_15 0
  loc_C08365: CStrVarTmp
  loc_C08366: FStStrNoPop var_C8
  loc_C08369: ConcatStr
  loc_C0836A: FStStrNoPop var_CC
  loc_C0836D: LitStr " <strong> Usuario: </strong> "
  loc_C08370: ConcatStr
  loc_C08371: FStStrNoPop var_F0
  loc_C08374: FLdRfVar var_EC
  loc_C08377: FLdPr Me
  loc_C0837A: VCallAd Control_ID_CodiUsuaCbo
  loc_C0837D: FStAdFunc var_E8
  loc_C08380: FLdPr var_E8
  loc_C08383:  = Me.Text
  loc_C08388: ILdRf var_EC
  loc_C0838B: ConcatStr
  loc_C0838C: FStStrNoPop var_F4
  loc_C0838F: LitStr " <strong> Ente Recaudador: </strong> "
  loc_C08392: ConcatStr
  loc_C08393: FStStrNoPop var_10C
  loc_C08396: FLdPr Me
  loc_C08399: VCallAd Control_ID_CodiEnreMsk
  loc_C0839C: FStAdFunc var_F8
  loc_C0839F: FLdPr var_F8
  loc_C083A2: LateIdLdVar var_108 DispID_22 0
  loc_C083A9: CStrVarTmp
  loc_C083AA: FStStrNoPop var_110
  loc_C083AD: ConcatStr
  loc_C083AE: FStStrNoPop var_114
  loc_C083B1: LitStr " "
  loc_C083B4: ConcatStr
  loc_C083B5: FStStrNoPop var_120
  loc_C083B8: FLdRfVar var_11C
  loc_C083BB: FLdPr Me
  loc_C083BE: VCallAd Control_ID_DetaEnreLbl
  loc_C083C1: FStAdFunc var_118
  loc_C083C4: FLdPr var_118
  loc_C083C7:  = Me.Caption
  loc_C083CC: ILdRf var_11C
  loc_C083CF: ConcatStr
  loc_C083D0: CVarStr var_180
  loc_C083D3: LitVarStr var_A4, vbNullString
  loc_C083D8: FStVarCopyObj var_160
  loc_C083DB: FLdRfVar var_160
  loc_C083DE: LitStr "<strong> Oficina: </strong>"
  loc_C083E1: ILdRf var_140
  loc_C083E4: ConcatStr
  loc_C083E5: CVarStr var_150
  loc_C083E8: FLdRfVar var_134
  loc_C083EB: CStrVarTmp
  loc_C083EC: FStStrNoPop var_138
  loc_C083EF: CR8Str
  loc_C083F1: LitI2_Byte 0
  loc_C083F3: CR8I2
  loc_C083F4: NeR8
  loc_C083F5: CVarBoolI2 var_94
  loc_C083F9: FLdRfVar var_170
  loc_C083FC: ImpAdCallFPR4  = IIf(, , )
  loc_C08401: FLdRfVar var_170
  loc_C08404: ConcatVar var_190
  loc_C08408: LitVarStr var_1D0, vbNullString
  loc_C0840D: FStVarCopyObj var_1E0
  loc_C08410: FLdRfVar var_1E0
  loc_C08413: LitStr " <strong> Cuenta: </strong> "
  loc_C08416: ILdRf var_1A0
  loc_C08419: ConcatStr
  loc_C0841A: CVarStr var_1C0
  loc_C0841D: ILdRf var_198
  loc_C08420: LitStr vbNullString
  loc_C08423: NeStr
  loc_C08425: CVarBoolI2 var_1B0
  loc_C08429: FLdRfVar var_1F0
  loc_C0842C: ImpAdCallFPR4  = IIf(, , )
  loc_C08431: FLdRfVar var_1F0
  loc_C08434: ConcatVar var_200
  loc_C08438: LitVarStr var_210, "</td>"
  loc_C0843D: ConcatVar var_220
  loc_C08441: PopAdLdVar
  loc_C08442: FLdPr Me
  loc_C08445: MemLdRfVar from_stack_1.global_64
  loc_C08448: LdPrVar
  loc_C0844A: LateMemCall
  loc_C08450: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_F0 = "": var_EC = "": var_F4 = "": var_10C = "": var_110 = "": var_114 = "": var_120 = "": var_11C = "": var_138 = "": var_140 = "": var_198 = ""
  loc_C08475: FFreeAd var_D0 = "": var_D4 = "": var_E8 = "": var_F8 = "": var_118 = "": var_124 = "": var_13C = "": var_194 = ""
  loc_C0848A: FFreeVar var_BC = "": var_E4 = "": var_108 = "": var_134 = "": var_94 = "": var_150 = "": var_160 = "": var_180 = "": var_170 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_190 = "": var_1F0 = "": var_200 = ""
  loc_C084AD: LitVarStr var_94, "  </tr>"
  loc_C084B2: PopAdLdVar
  loc_C084B3: FLdPr Me
  loc_C084B6: MemLdRfVar from_stack_1.global_64
  loc_C084B9: LdPrVar
  loc_C084BB: LateMemCall
  loc_C084C1: FLdPr Me
  loc_C084C4: VCallAd Control_ID_CucuPersMsk
  loc_C084C7: FStAdFunc var_D0
  loc_C084CA: FLdPr var_D0
  loc_C084CD: LateIdLdVar var_BC DispID_22 0
  loc_C084D4: CStrVarTmp
  loc_C084D5: FStStrNoPop var_A8
  loc_C084D8: CR8Str
  loc_C084DA: LitI2_Byte 0
  loc_C084DC: CR8I2
  loc_C084DD: NeR8
  loc_C084DE: FFree1Str var_A8
  loc_C084E1: FFree1Ad var_D0
  loc_C084E4: FFree1Var var_BC = ""
  loc_C084E7: BranchF loc_C08583
  loc_C084EA: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C084EF: PopAdLdVar
  loc_C084F0: FLdPr Me
  loc_C084F3: MemLdRfVar from_stack_1.global_64
  loc_C084F6: LdPrVar
  loc_C084F8: LateMemCall
  loc_C084FE: LitStr "    <td align=""left""><strong>C.U.I.L: </strong>"
  loc_C08501: FLdPr Me
  loc_C08504: VCallAd Control_ID_CucuPersMsk
  loc_C08507: FStAdFunc var_D0
  loc_C0850A: FLdPr var_D0
  loc_C0850D: LateIdLdVar var_BC DispID_22 0
  loc_C08514: CStrVarTmp
  loc_C08515: FStStrNoPop var_A8
  loc_C08518: ConcatStr
  loc_C08519: FStStrNoPop var_AC
  loc_C0851C: LitStr " - "
  loc_C0851F: ConcatStr
  loc_C08520: FStStrNoPop var_C8
  loc_C08523: FLdRfVar var_C4
  loc_C08526: FLdPr Me
  loc_C08529: VCallAd Control_ID_DetaPersLbl
  loc_C0852C: FStAdFunc var_D4
  loc_C0852F: FLdPr var_D4
  loc_C08532:  = Me.Caption
  loc_C08537: ILdRf var_C4
  loc_C0853A: ConcatStr
  loc_C0853B: FStStrNoPop var_CC
  loc_C0853E: LitStr "</td>"
  loc_C08541: ConcatStr
  loc_C08542: CVarStr var_E4
  loc_C08545: PopAdLdVar
  loc_C08546: FLdPr Me
  loc_C08549: MemLdRfVar from_stack_1.global_64
  loc_C0854C: LdPrVar
  loc_C0854E: LateMemCall
  loc_C08554: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_C08561: FFreeAd var_D0 = ""
  loc_C08568: FFreeVar var_BC = ""
  loc_C0856F: LitVarStr var_94, "  </tr>"
  loc_C08574: PopAdLdVar
  loc_C08575: FLdPr Me
  loc_C08578: MemLdRfVar from_stack_1.global_64
  loc_C0857B: LdPrVar
  loc_C0857D: LateMemCall
  loc_C08583: LitVarStr var_94, "</table>"
  loc_C08588: PopAdLdVar
  loc_C08589: FLdPr Me
  loc_C0858C: MemLdRfVar from_stack_1.global_64
  loc_C0858F: LdPrVar
  loc_C08591: LateMemCall
  loc_C08597: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C0859C: PopAdLdVar
  loc_C0859D: FLdPr Me
  loc_C085A0: MemLdRfVar from_stack_1.global_64
  loc_C085A3: LdPrVar
  loc_C085A5: LateMemCall
  loc_C085AB: LitVarStr var_94, "  <thead>"
  loc_C085B0: PopAdLdVar
  loc_C085B1: FLdPr Me
  loc_C085B4: MemLdRfVar from_stack_1.global_64
  loc_C085B7: LdPrVar
  loc_C085B9: LateMemCall
  loc_C085BF: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C085C4: PopAdLdVar
  loc_C085C5: FLdPr Me
  loc_C085C8: MemLdRfVar from_stack_1.global_64
  loc_C085CB: LdPrVar
  loc_C085CD: LateMemCall
  loc_C085D3: LitVarStr var_94, "    <th>Comprobante</th>"
  loc_C085D8: PopAdLdVar
  loc_C085D9: FLdPr Me
  loc_C085DC: MemLdRfVar from_stack_1.global_64
  loc_C085DF: LdPrVar
  loc_C085E1: LateMemCall
  loc_C085E7: LitVarStr var_94, "    <th>Ofic.</th>"
  loc_C085EC: PopAdLdVar
  loc_C085ED: FLdPr Me
  loc_C085F0: MemLdRfVar from_stack_1.global_64
  loc_C085F3: LdPrVar
  loc_C085F5: LateMemCall
  loc_C085FB: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_C08600: PopAdLdVar
  loc_C08601: FLdPr Me
  loc_C08604: MemLdRfVar from_stack_1.global_64
  loc_C08607: LdPrVar
  loc_C08609: LateMemCall
  loc_C0860F: LitVarStr var_94, "    <th>Fecha</th>"
  loc_C08614: PopAdLdVar
  loc_C08615: FLdPr Me
  loc_C08618: MemLdRfVar from_stack_1.global_64
  loc_C0861B: LdPrVar
  loc_C0861D: LateMemCall
  loc_C08623: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_C08628: PopAdLdVar
  loc_C08629: FLdPr Me
  loc_C0862C: MemLdRfVar from_stack_1.global_64
  loc_C0862F: LdPrVar
  loc_C08631: LateMemCall
  loc_C08637: LitVarStr var_94, "    <th>Capital</th>"
  loc_C0863C: PopAdLdVar
  loc_C0863D: FLdPr Me
  loc_C08640: MemLdRfVar from_stack_1.global_64
  loc_C08643: LdPrVar
  loc_C08645: LateMemCall
  loc_C0864B: LitVarStr var_94, "    <th>Desc. Cap.</th>"
  loc_C08650: PopAdLdVar
  loc_C08651: FLdPr Me
  loc_C08654: MemLdRfVar from_stack_1.global_64
  loc_C08657: LdPrVar
  loc_C08659: LateMemCall
  loc_C0865F: LitVarStr var_94, "    <th>Recargo</th>"
  loc_C08664: PopAdLdVar
  loc_C08665: FLdPr Me
  loc_C08668: MemLdRfVar from_stack_1.global_64
  loc_C0866B: LdPrVar
  loc_C0866D: LateMemCall
  loc_C08673: LitVarStr var_94, "    <th>Desc. Rec.</th>"
  loc_C08678: PopAdLdVar
  loc_C08679: FLdPr Me
  loc_C0867C: MemLdRfVar from_stack_1.global_64
  loc_C0867F: LdPrVar
  loc_C08681: LateMemCall
  loc_C08687: LitVarStr var_94, "    <th>Cred. a<br>Favor</th>"
  loc_C0868C: PopAdLdVar
  loc_C0868D: FLdPr Me
  loc_C08690: MemLdRfVar from_stack_1.global_64
  loc_C08693: LdPrVar
  loc_C08695: LateMemCall
  loc_C0869B: LitVarStr var_94, "    <th>Inter&eacute;s</th>"
  loc_C086A0: PopAdLdVar
  loc_C086A1: FLdPr Me
  loc_C086A4: MemLdRfVar from_stack_1.global_64
  loc_C086A7: LdPrVar
  loc_C086A9: LateMemCall
  loc_C086AF: LitVarStr var_94, "    <th>Apremio</th>"
  loc_C086B4: PopAdLdVar
  loc_C086B5: FLdPr Me
  loc_C086B8: MemLdRfVar from_stack_1.global_64
  loc_C086BB: LdPrVar
  loc_C086BD: LateMemCall
  loc_C086C3: LitVarStr var_94, "    <th>Total</th>"
  loc_C086C8: PopAdLdVar
  loc_C086C9: FLdPr Me
  loc_C086CC: MemLdRfVar from_stack_1.global_64
  loc_C086CF: LdPrVar
  loc_C086D1: LateMemCall
  loc_C086D7: LitVarStr var_94, "    <th>Estado</th>"
  loc_C086DC: PopAdLdVar
  loc_C086DD: FLdPr Me
  loc_C086E0: MemLdRfVar from_stack_1.global_64
  loc_C086E3: LdPrVar
  loc_C086E5: LateMemCall
  loc_C086EB: LitVarStr var_94, "  </tr>"
  loc_C086F0: PopAdLdVar
  loc_C086F1: FLdPr Me
  loc_C086F4: MemLdRfVar from_stack_1.global_64
  loc_C086F7: LdPrVar
  loc_C086F9: LateMemCall
  loc_C086FF: LitVarStr var_94, "  </thead>"
  loc_C08704: PopAdLdVar
  loc_C08705: FLdPr Me
  loc_C08708: MemLdRfVar from_stack_1.global_64
  loc_C0870B: LdPrVar
  loc_C0870D: LateMemCall
  loc_C08713: ExitProcHresult
End Function

Private Function Proc_222_33_9F659C() '9F659C
  'Data Table: 4EA65C
  loc_9F6570: LitVarStr var_94, "</body>"
  loc_9F6575: PopAdLdVar
  loc_9F6576: FLdPr Me
  loc_9F6579: MemLdRfVar from_stack_1.global_64
  loc_9F657C: LdPrVar
  loc_9F657E: LateMemCall
  loc_9F6584: LitVarStr var_94, "</html>"
  loc_9F6589: PopAdLdVar
  loc_9F658A: FLdPr Me
  loc_9F658D: MemLdRfVar from_stack_1.global_64
  loc_9F6590: LdPrVar
  loc_9F6592: LateMemCall
  loc_9F6598: ExitProcHresult
End Function

Private Function Proc_222_34_AF5834() 'AF5834
  'Data Table: 4EA65C
  loc_AF56A4: FLdPr Me
  loc_AF56A7: VCallAd Control_ID_CodiUsuaCbo
  loc_AF56AA: FStAdFunc var_90
  loc_AF56AD: FLdPr var_90
  loc_AF56B0: Me.Clear
  loc_AF56B5: FFree1Ad var_90
  loc_AF56B8: LitVar_Missing var_A0
  loc_AF56BB: PopAdLdVar
  loc_AF56BC: LitStr "TODOS"
  loc_AF56BF: FLdPr Me
  loc_AF56C2: VCallAd Control_ID_CodiUsuaCbo
  loc_AF56C5: FStAdFunc var_90
  loc_AF56C8: FLdPr var_90
  loc_AF56CB: Me.AddItem from_stack_1, from_stack_2
  loc_AF56D0: FFree1Ad var_90
  loc_AF56D3: FLdPr Me
  loc_AF56D6: VCallAd Control_ID_DesdeMsk
  loc_AF56D9: FStAdFunc var_90
  loc_AF56DC: FLdPr var_90
  loc_AF56DF: LateIdLdVar var_B0 DispID_15 0
  loc_AF56E6: PopAd
  loc_AF56E8: FLdPr Me
  loc_AF56EB: VCallAd Control_ID_HastaMsk
  loc_AF56EE: FStAdFunc var_124
  loc_AF56F1: FLdPr var_124
  loc_AF56F4: LateIdLdVar var_134 DispID_15 0
  loc_AF56FB: PopAd
  loc_AF56FD: LitVarStr var_F0, " AND FealBole BETWEEN "
  loc_AF5702: LitI4 1
  loc_AF5707: LitI4 1
  loc_AF570C: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_AF5711: FStVarCopyObj var_D0
  loc_AF5714: FLdRfVar var_D0
  loc_AF5717: FLdRfVar var_B0
  loc_AF571A: CStrVarTmp
  loc_AF571B: CVarStr var_C0
  loc_AF571E: FLdRfVar var_E0
  loc_AF5721: ImpAdCallFPR4  = Format(, )
  loc_AF5726: FLdRfVar var_E0
  loc_AF5729: ConcatVar var_100
  loc_AF572D: LitVarStr var_110, " AND "
  loc_AF5732: ConcatVar var_120
  loc_AF5736: LitI4 1
  loc_AF573B: LitI4 1
  loc_AF5740: LitVarStr var_154, "'yyyy-mm-dd'"
  loc_AF5745: FStVarCopyObj var_164
  loc_AF5748: FLdRfVar var_164
  loc_AF574B: FLdRfVar var_134
  loc_AF574E: CStrVarTmp
  loc_AF574F: CVarStr var_144
  loc_AF5752: FLdRfVar var_174
  loc_AF5755: ImpAdCallFPR4  = Format(, )
  loc_AF575A: FLdRfVar var_174
  loc_AF575D: ConcatVar var_184
  loc_AF5761: CStrVarTmp
  loc_AF5762: FStStr var_8C
  loc_AF5765: FFreeAd var_90 = ""
  loc_AF576C: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_E0 = "": var_100 = "": var_134 = "": var_144 = "": var_164 = "": var_120 = "": var_174 = ""
  loc_AF5785: LitStr "SELECT DISTINCT CodiUsua FROM boleto WHERE CodiUsua <> 'root'"
  loc_AF5788: ILdRf var_8C
  loc_AF578B: ConcatStr
  loc_AF578C: FStStrNoPop var_188
  loc_AF578F: FLdPr Me
  loc_AF5792: MemLdRfVar from_stack_1.global_80
  loc_AF5795: NewIfNullPr clsboleto
  loc_AF5798: Call clsboleto.RedefineRS(from_stack_1v)
  loc_AF579D: FFree1Str var_188
  loc_AF57A0: FLdRfVar var_18C
  loc_AF57A3: FLdPr Me
  loc_AF57A6: MemLdRfVar from_stack_1.global_80
  loc_AF57A9: NewIfNullPr clsboleto
  loc_AF57AC: from_stack_1 = clsboleto.RecordCount
  loc_AF57B1: ILdRf var_18C
  loc_AF57B4: LitI4 0
  loc_AF57B9: GtI4
  loc_AF57BA: BranchF loc_AF581A
  loc_AF57BD: FLdRfVar var_18E
  loc_AF57C0: FLdPr Me
  loc_AF57C3: MemLdRfVar from_stack_1.global_80
  loc_AF57C6: NewIfNullPr clsboleto
  loc_AF57C9: from_stack_1 = clsboleto.EOF
  loc_AF57CE: FLdI2 var_18E
  loc_AF57D1: NotI4
  loc_AF57D2: BranchF loc_AF581A
  loc_AF57D5: LitVar_Missing var_A0
  loc_AF57D8: PopAdLdVar
  loc_AF57D9: FLdRfVar var_188
  loc_AF57DC: FLdPr Me
  loc_AF57DF: MemLdRfVar from_stack_1.global_80
  loc_AF57E2: NewIfNullPr clsboleto
  loc_AF57E5: from_stack_1 = clsboleto.CodiUsua
  loc_AF57EA: ILdRf var_188
  loc_AF57ED: FLdPr Me
  loc_AF57F0: VCallAd Control_ID_CodiUsuaCbo
  loc_AF57F3: FStAdFunc var_90
  loc_AF57F6: FLdPr var_90
  loc_AF57F9: Me.AddItem from_stack_1, from_stack_2
  loc_AF57FE: FFree1Str var_188
  loc_AF5801: FFree1Ad var_90
  loc_AF5804: LitI2_Byte 1
  loc_AF5806: PopTmpLdAd2 var_18E
  loc_AF5809: FLdPr Me
  loc_AF580C: MemLdRfVar from_stack_1.global_80
  loc_AF580F: NewIfNullPr clsboleto
  loc_AF5812: Call clsboleto.Move(from_stack_1v)
  loc_AF5817: Branch loc_AF57BD
  loc_AF581A: LitI2_Byte 0
  loc_AF581C: FLdPr Me
  loc_AF581F: VCallAd Control_ID_CodiUsuaCbo
  loc_AF5822: FStAdFunc var_90
  loc_AF5825: FLdPr var_90
  loc_AF5828: Me.ListIndex = from_stack_1
  loc_AF582D: FFree1Ad var_90
  loc_AF5830: ExitProcHresult
End Function
