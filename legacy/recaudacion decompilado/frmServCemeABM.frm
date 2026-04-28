VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmServCemeABM
  Caption = "Servicios de Cementerio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmServCemeABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12564
  ClientHeight = 9996
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 120
    Top = 840
    Width = 4575
    Height = 420
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 4080
    Width = 12480
    Height = 5880
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CheckBox ParvDifuChk
      Caption = "Parvulo"
      Left = 5040
      Top = 3120
      Width = 1215
      Height = 375
      TabIndex = 24
      DataField = "ParvSece"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox FilaDifuTxt
      ForeColor = &HFF0000&
      Left = 3960
      Top = 3120
      Width = 540
      Height = 360
      TabIndex = 23
      MaxLength = 2
      DataField = "FilaDifu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox SeccDifuTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 3120
      Width = 660
      Height = 360
      TabIndex = 21
      MaxLength = 3
      DataField = "SeccDifu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox PlanDifuCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 7320
      Top = 3120
      Width = 1695
      Height = 420
      TabIndex = 26
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox PeriInfoTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 4080
      Width = 795
      Height = 375
      TabIndex = 30
      MaxLength = 4
      DataField = "PeriInfo"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox CodiConcTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 4560
      Width = 1455
      Height = 375
      TabIndex = 32
      MaxLength = 8
      DataField = "CodiConc"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox EmisionCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1200
      Width = 1575
      Height = 420
      TabIndex = 11
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton FrecSeceAnualOpt
      Caption = "Anual"
      ForeColor = &H0&
      Left = 2520
      Top = 5040
      Width = 1095
      Height = 300
      TabIndex = 35
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton FrecSeceSemestralOpt
      Caption = "Semestral"
      ForeColor = &H0&
      Left = 3720
      Top = 5040
      Width = 1455
      Height = 255
      TabIndex = 36
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton FrecSeceCuatrimestralOpt
      Caption = "Cuatrimestral"
      ForeColor = &H0&
      Left = 5400
      Top = 5040
      Width = 1935
      Height = 255
      TabIndex = 38
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton FrecSeceTrimestralOpt
      Caption = "Trimestral"
      ForeColor = &H0&
      Left = 7320
      Top = 5040
      Width = 1455
      Height = 255
      TabIndex = 37
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton FrecSeceBimestralOpt
      Caption = "Bimestral"
      ForeColor = &H0&
      Left = 8880
      Top = 5040
      Width = 1455
      Height = 255
      TabIndex = 39
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox PeriOrdeTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 240
      Width = 795
      Height = 375
      TabIndex = 7
      MaxLength = 4
      DataField = "PeriOrde"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox ImpoSeceTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 5400
      Width = 1275
      Height = 375
      TabIndex = 41
      MaxLength = 10
      DataField = "ImpoSece"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox DetaSeceTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1680
      Width = 7035
      Height = 375
      TabIndex = 13
      MaxLength = 40
      DataField = "DetaSece"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox CodiSeceTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 720
      Width = 555
      Height = 375
      TabIndex = 9
      MaxLength = 3
      DataField = "CodiSece"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSMask.MaskEdBox CodiTiseMsk
      Left = 2520
      Top = 2640
      Width = 495
      Height = 360
      TabIndex = 18
      OleObjectBlob = "frmServCemeABM.frx":324A
      DataField = "CodiTise"
    End
    Begin MSMask.MaskEdBox CodiCemeMsk
      Left = 2520
      Top = 2160
      Width = 495
      Height = 360
      TabIndex = 15
      OleObjectBlob = "frmServCemeABM.frx":32D6
      DataField = "CodiCeme"
    End
    Begin MSMask.MaskEdBox AnioSeceMsk
      Left = 2520
      Top = 3600
      Width = 495
      Height = 360
      TabIndex = 28
      OleObjectBlob = "frmServCemeABM.frx":3362
      DataField = "AnioSece"
    End
    Begin VB.Label Label13
      Caption = "Años:"
      Left = 1800
      Top = 3600
      Width = 630
      Height = 300
      TabIndex = 27
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label14
      Caption = "Fila:"
      Left = 3360
      Top = 3120
      Width = 450
      Height = 300
      TabIndex = 22
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaCemeLbl
      Left = 3120
      Top = 2160
      Width = 6015
      Height = 360
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      DataField = "DetaCeme"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label12
      Caption = "Cementerio:"
      Left = 1080
      Top = 2160
      Width = 1290
      Height = 300
      TabIndex = 14
      Alignment = 2 'Center
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
    Begin VB.Label Label11
      Caption = "Planta:"
      Left = 6480
      Top = 3120
      Width = 750
      Height = 300
      TabIndex = 25
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label10
      Caption = "Galeria:"
      Left = 1560
      Top = 3120
      Width = 840
      Height = 300
      TabIndex = 20
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label9
      Caption = "Periodo del Concepto:"
      Left = 30
      Top = 4080
      Width = 2340
      Height = 300
      TabIndex = 29
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaConcLbl
      Left = 4080
      Top = 4560
      Width = 6015
      Height = 360
      TabIndex = 33
      BorderStyle = 1 'Fixed Single
      DataField = "DetaConc"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label8
      Caption = "Concepto:"
      Left = 1275
      Top = 4560
      Width = 1095
      Height = 300
      TabIndex = 31
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
    Begin VB.Label DetaTiseLbl
      Left = 3120
      Top = 2640
      Width = 6015
      Height = 360
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
      DataField = "DetaTise"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label7
      Caption = "Tipo de Sepultura:"
      Left = 420
      Top = 2640
      Width = 1950
      Height = 300
      TabIndex = 17
      Alignment = 2 'Center
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
    Begin VB.Label Label6
      Caption = "Emisión:"
      Left = 1470
      Top = 1200
      Width = 900
      Height = 300
      TabIndex = 10
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label5
      Caption = "Frecuencia:"
      Left = 1200
      Top = 5000
      Width = 1245
      Height = 300
      TabIndex = 34
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Periodo:"
      Left = 1500
      Top = 240
      Width = 870
      Height = 300
      TabIndex = 6
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Importe:"
      Left = 1560
      Top = 5400
      Width = 885
      Height = 300
      TabIndex = 40
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 1560
      Top = 1680
      Width = 810
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Código:"
      Left = 1560
      Top = 720
      Width = 810
      Height = 300
      TabIndex = 8
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1380
    Width = 10800
    Height = 2595
    TabIndex = 4
    OleObjectBlob = "frmServCemeABM.frx":33EE
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmServCemeABM.frx":368A
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12564
    Height = 636
    TabIndex = 0
    OleObjectBlob = "frmServCemeABM.frx":B208
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmServCemeABM.frx":B764
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4800
    Top = 840
    Width = 5775
    Height = 375
    TabIndex = 3
    OleObjectBlob = "frmServCemeABM.frx":C02E
  End
End

Attribute VB_Name = "frmServCemeABM"


Private Sub AnioSeceMsk_UnknownEvent_0 '9C2888
  'Data Table: 50A22C
  loc_9C2874: FLdPr Me
  loc_9C2877: VCallAd Control_ID_AnioSeceMsk
  loc_9C287A: CVarAd
  loc_9C287E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2883: FFree1Var var_94 = ""
  loc_9C2886: ExitProcHresult
End Sub

Private Function AnioSeceMsk_UnknownEvent_8(arg_C) 'A98534
  'Data Table: 50A22C
  loc_A98488: FLdRfVar var_8A
  loc_A9848B: FLdPr Me
  loc_A9848E: VCallAd Control_ID_cmdCancelar
  loc_A98491: FStAdFunc var_88
  loc_A98494: FLdPr var_88
  loc_A98497:  = Me.Value
  loc_A9849C: FLdI2 var_8A
  loc_A9849F: NotI4
  loc_A984A0: FLdPr Me
  loc_A984A3: VCallAd Control_ID_AnioSeceMsk
  loc_A984A6: FStAdFunc var_90
  loc_A984A9: FLdPr var_90
  loc_A984AC: LateIdLdVar var_A0 DispID_13 -32767
  loc_A984B3: CBoolVar
  loc_A984B5: AndI4
  loc_A984B6: FFreeAd var_88 = ""
  loc_A984BD: FFree1Var var_A0 = ""
  loc_A984C0: BranchF loc_A98533
  loc_A984C3: FLdPr Me
  loc_A984C6: VCallAd Control_ID_AnioSeceMsk
  loc_A984C9: FStAdFunc var_88
  loc_A984CC: FLdPr var_88
  loc_A984CF: LateIdLdVar var_A0 DispID_22 0
  loc_A984D6: PopAd
  loc_A984D8: LitI2_Byte &HFF
  loc_A984DA: LitI2_Byte 0
  loc_A984DC: FLdRfVar var_A0
  loc_A984DF: CStrVarTmp
  loc_A984E0: FStStrNoPop var_A4
  loc_A984E3: LitStr "Año de Renovación o Concesión"
  loc_A984E6: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A984EB: FStStrNoPop var_A8
  loc_A984EE: FLdPr Me
  loc_A984F1: MemStStrCopy
  loc_A984F5: FFreeStr var_A4 = ""
  loc_A984FC: FFree1Ad var_88
  loc_A984FF: FFree1Var var_A0 = ""
  loc_A98502: FLdPr Me
  loc_A98505: MemLdStr global_60
  loc_A98508: LitStr vbNullString
  loc_A9850B: NeStr
  loc_A9850D: BranchF loc_A98533
  loc_A98510: FLdPr Me
  loc_A98513: MemLdStr global_60
  loc_A98516: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9851B: FLdPr Me
  loc_A9851E: VCallAd Control_ID_AnioSeceMsk
  loc_A98521: CVarAd
  loc_A98525: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9852A: FFree1Var var_A0 = ""
  loc_A9852D: LitI2_Byte &HFF
  loc_A9852F: IStI2 arg_C
  loc_A98532: ExitProcHresult
  loc_A98533: ExitProcHresult
End Function

Private Sub CodiCemeMsk_UnknownEvent_0 '9C2960
  'Data Table: 50A22C
  loc_9C294C: FLdPr Me
  loc_9C294F: VCallAd Control_ID_CodiCemeMsk
  loc_9C2952: CVarAd
  loc_9C2956: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C295B: FFree1Var var_94 = ""
  loc_9C295E: ExitProcHresult
End Sub

Private Function CodiCemeMsk_UnknownEvent_8(arg_C) 'ADA8D8
  'Data Table: 50A22C
  loc_ADA798: FLdRfVar var_8A
  loc_ADA79B: FLdPr Me
  loc_ADA79E: VCallAd Control_ID_cmdCancelar
  loc_ADA7A1: FStAdFunc var_88
  loc_ADA7A4: FLdPr var_88
  loc_ADA7A7:  = Me.Value
  loc_ADA7AC: FLdI2 var_8A
  loc_ADA7AF: NotI4
  loc_ADA7B0: FLdPr Me
  loc_ADA7B3: VCallAd Control_ID_CodiCemeMsk
  loc_ADA7B6: FStAdFunc var_90
  loc_ADA7B9: FLdPr var_90
  loc_ADA7BC: LateIdLdVar var_A0 DispID_13 -32767
  loc_ADA7C3: CBoolVar
  loc_ADA7C5: AndI4
  loc_ADA7C6: FFreeAd var_88 = ""
  loc_ADA7CD: FFree1Var var_A0 = ""
  loc_ADA7D0: BranchF loc_ADA8D7
  loc_ADA7D3: FLdPr Me
  loc_ADA7D6: VCallAd Control_ID_CodiCemeMsk
  loc_ADA7D9: FStAdFunc var_88
  loc_ADA7DC: FLdPr var_88
  loc_ADA7DF: LateIdLdVar var_A0 DispID_22 0
  loc_ADA7E6: CStrVarTmp
  loc_ADA7E7: CVarStr var_B0
  loc_ADA7EA: ImpAdCallI2 IsNumeric()
  loc_ADA7EF: FFree1Ad var_88
  loc_ADA7F2: FFreeVar var_A0 = ""
  loc_ADA7F9: BranchF loc_ADA8C0
  loc_ADA7FC: FLdPr Me
  loc_ADA7FF: VCallAd Control_ID_CodiCemeMsk
  loc_ADA802: FStAdFunc var_88
  loc_ADA805: FLdPr var_88
  loc_ADA808: LateIdLdVar var_A0 DispID_22 0
  loc_ADA80F: CStrVarTmp
  loc_ADA810: FStStrNoPop var_B4
  loc_ADA813: ImpAdCallI2 Proc_18_27_A554C4()
  loc_ADA818: FStStrNoPop var_B8
  loc_ADA81B: FLdPr Me
  loc_ADA81E: MemStStrCopy
  loc_ADA822: FFreeStr var_B4 = ""
  loc_ADA829: FFree1Ad var_88
  loc_ADA82C: FFree1Var var_A0 = ""
  loc_ADA82F: FLdPr Me
  loc_ADA832: MemLdStr global_60
  loc_ADA835: LitStr vbNullString
  loc_ADA838: NeStr
  loc_ADA83A: BranchF loc_ADA87A
  loc_ADA83D: FLdPr Me
  loc_ADA840: MemLdStr global_60
  loc_ADA843: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADA848: LitStr vbNullString
  loc_ADA84B: FLdPr Me
  loc_ADA84E: VCallAd Control_ID_DetaCemeLbl
  loc_ADA851: FStAdFunc var_88
  loc_ADA854: FLdPr var_88
  loc_ADA857: Me.Caption = from_stack_1
  loc_ADA85C: FFree1Ad var_88
  loc_ADA85F: FLdPr Me
  loc_ADA862: VCallAd Control_ID_CodiCemeMsk
  loc_ADA865: CVarAd
  loc_ADA869: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADA86E: FFree1Var var_A0 = ""
  loc_ADA871: LitI2_Byte &HFF
  loc_ADA873: IStI2 arg_C
  loc_ADA876: ExitProcHresult
  loc_ADA877: Branch loc_ADA8BD
  loc_ADA87A: FLdPr Me
  loc_ADA87D: VCallAd Control_ID_CodiCemeMsk
  loc_ADA880: FStAdFunc var_88
  loc_ADA883: FLdPr var_88
  loc_ADA886: LateIdLdVar var_A0 DispID_22 0
  loc_ADA88D: CStrVarTmp
  loc_ADA88E: FStStrNoPop var_B4
  loc_ADA891: CI2Str
  loc_ADA893: ImpAdCallI2 Proc_270_29_A7A498()
  loc_ADA898: FStStrNoPop var_B8
  loc_ADA89B: FLdPr Me
  loc_ADA89E: VCallAd Control_ID_DetaCemeLbl
  loc_ADA8A1: FStAdFunc var_90
  loc_ADA8A4: FLdPr var_90
  loc_ADA8A7: Me.Caption = from_stack_1
  loc_ADA8AC: FFreeStr var_B4 = ""
  loc_ADA8B3: FFreeAd var_88 = ""
  loc_ADA8BA: FFree1Var var_A0 = ""
  loc_ADA8BD: Branch loc_ADA8D7
  loc_ADA8C0: LitStr vbNullString
  loc_ADA8C3: FLdPr Me
  loc_ADA8C6: VCallAd Control_ID_DetaCemeLbl
  loc_ADA8C9: FStAdFunc var_88
  loc_ADA8CC: FLdPr var_88
  loc_ADA8CF: Me.Caption = from_stack_1
  loc_ADA8D4: FFree1Ad var_88
  loc_ADA8D7: ExitProcHresult
End Function

Private Sub CodiCemeMsk_KeyPress(KeyAscii As Integer) 'A94E48
  'Data Table: 50A22C
  loc_A94D98: ILdI2 KeyAscii
  loc_A94D9B: LitI2_Byte &H20
  loc_A94D9D: EqI2
  loc_A94D9E: BranchF loc_A94E45
  loc_A94DA1: LitStr vbNullString
  loc_A94DA4: ImpAdLdRf MemVar_D94A74
  loc_A94DA7: NewIfNullPr dlgBuscarCementerio
  loc_A94DAA: Call dlgBuscarCementerio.sPasaSelectPut(from_stack_1v)
  loc_A94DAF: LitVar_Missing var_A4
  loc_A94DB2: PopAdLdVar
  loc_A94DB3: LitVarI4
  loc_A94DBB: PopAdLdVar
  loc_A94DBC: ImpAdLdRf MemVar_D94A74
  loc_A94DBF: NewIfNullPr dlgBuscarCementerio
  loc_A94DC2: dlgBuscarCementerio.Show from_stack_1, from_stack_2
  loc_A94DC7: FLdRfVar var_A8
  loc_A94DCA: ImpAdLdRf MemVar_D94A74
  loc_A94DCD: NewIfNullPr dlgBuscarCementerio
  loc_A94DD0: from_stack_1v = dlgBuscarCementerio.sPasaCodigoGet()
  loc_A94DD5: ILdRf var_A8
  loc_A94DD8: LitStr vbNullString
  loc_A94DDB: NeStr
  loc_A94DDD: FFree1Str var_A8
  loc_A94DE0: BranchF loc_A94E45
  loc_A94DE3: FLdRfVar var_A8
  loc_A94DE6: ImpAdLdRf MemVar_D94A74
  loc_A94DE9: NewIfNullPr dlgBuscarCementerio
  loc_A94DEC: from_stack_1v = dlgBuscarCementerio.sPasaCodigoGet()
  loc_A94DF1: FLdZeroAd var_A8
  loc_A94DF4: CVarStr var_B8
  loc_A94DF7: PopAdLdVar
  loc_A94DF8: FLdPr Me
  loc_A94DFB: VCallAd Control_ID_
  loc_A94DFE: FStAdFunc var_BC
  loc_A94E01: FLdPr var_BC
  loc_A94E04: LateIdSt
  loc_A94E09: FFree1Ad var_BC
  loc_A94E0C: FFree1Var var_B8 = ""
  loc_A94E0F: LitStr vbNullString
  loc_A94E12: ImpAdLdRf MemVar_D94A74
  loc_A94E15: NewIfNullPr dlgBuscarCementerio
  loc_A94E18: Call dlgBuscarCementerio.sPasaCodigoPut(from_stack_1v)
  loc_A94E1D: FLdRfVar var_A8
  loc_A94E20: ImpAdLdRf MemVar_D94A74
  loc_A94E23: NewIfNullPr dlgBuscarCementerio
  loc_A94E26: from_stack_1v = dlgBuscarCementerio.sPasaDetalleGet()
  loc_A94E2B: ILdRf var_A8
  loc_A94E2E: FLdPr Me
  loc_A94E31: VCallAd Control_ID_
  loc_A94E34: FStAdFunc var_BC
  loc_A94E37: FLdPr var_BC
  loc_A94E3A: dlgBuscarCementerio.Label.Caption = from_stack_1
  loc_A94E3F: FFree1Str var_A8
  loc_A94E42: FFree1Ad var_BC
  loc_A94E45: ExitProcHresult
End Sub

Private Sub CodiSeceTxt_GotFocus() '9C2D50
  'Data Table: 50A22C
  loc_9C2D3C: FLdPr Me
  loc_9C2D3F: VCallAd Control_ID_CodiSeceTxt
  loc_9C2D42: CVarAd
  loc_9C2D46: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2D4B: FFree1Var var_94 = ""
  loc_9C2D4E: ExitProcHresult
End Sub

Private Sub CodiSeceTxt_KeyPress(KeyAscii As Integer) '9D4E94
  'Data Table: 50A22C
  loc_9D4E7C: LitStr "0123456789"
  loc_9D4E7F: FStStrCopy var_88
  loc_9D4E82: FLdRfVar var_88
  loc_9D4E85: ILdRf KeyAscii
  loc_9D4E88: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D4E8D: IStI2 KeyAscii
  loc_9D4E90: FFree1Str var_88
  loc_9D4E93: ExitProcHresult
End Sub

Private Sub CodiSeceTxt_Validate(Cancel As Boolean) 'ACE620
  'Data Table: 50A22C
  loc_ACE500: FLdRfVar var_8A
  loc_ACE503: FLdPr Me
  loc_ACE506: VCallAd Control_ID_CodiSeceTxt
  loc_ACE509: FStAdFunc var_88
  loc_ACE50C: FLdPr var_88
  loc_ACE50F:  = Me.Enabled
  loc_ACE514: FLdI2 var_8A
  loc_ACE517: LitI2_Byte &HFF
  loc_ACE519: EqI2
  loc_ACE51A: FFree1Ad var_88
  loc_ACE51D: BranchF loc_ACE61D
  loc_ACE520: FLdRfVar var_90
  loc_ACE523: FLdPr Me
  loc_ACE526: VCallAd Control_ID_CodiSeceTxt
  loc_ACE529: FStAdFunc var_88
  loc_ACE52C: FLdPr var_88
  loc_ACE52F:  = Me.Text
  loc_ACE534: LitI2_Byte 0
  loc_ACE536: LitI2_Byte 0
  loc_ACE538: ILdRf var_90
  loc_ACE53B: LitStr "codigo"
  loc_ACE53E: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_ACE543: FStStrNoPop var_94
  loc_ACE546: FLdPr Me
  loc_ACE549: MemStStrCopy
  loc_ACE54D: FFreeStr var_90 = ""
  loc_ACE554: FFree1Ad var_88
  loc_ACE557: FLdPr Me
  loc_ACE55A: MemLdStr global_60
  loc_ACE55D: LitStr vbNullString
  loc_ACE560: NeStr
  loc_ACE562: BranchF loc_ACE588
  loc_ACE565: FLdPr Me
  loc_ACE568: MemLdStr global_60
  loc_ACE56B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACE570: FLdPr Me
  loc_ACE573: VCallAd Control_ID_CodiSeceTxt
  loc_ACE576: CVarAd
  loc_ACE57A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACE57F: FFree1Var var_A4 = ""
  loc_ACE582: LitI2_Byte &HFF
  loc_ACE584: IStI2 Cancel
  loc_ACE587: ExitProcHresult
  loc_ACE588: FLdRfVar var_90
  loc_ACE58B: FLdPr Me
  loc_ACE58E: VCallAd Control_ID_PeriOrdeTxt
  loc_ACE591: FStAdFunc var_88
  loc_ACE594: FLdPr var_88
  loc_ACE597:  = Me.Text
  loc_ACE59C: FLdRfVar var_94
  loc_ACE59F: FLdPr Me
  loc_ACE5A2: VCallAd Control_ID_CodiSeceTxt
  loc_ACE5A5: FStAdFunc var_A8
  loc_ACE5A8: FLdPr var_A8
  loc_ACE5AB:  = Me.Text
  loc_ACE5B0: FLdRfVar var_A4
  loc_ACE5B3: ILdRf var_94
  loc_ACE5B6: CI2Str
  loc_ACE5B8: ILdRf var_90
  loc_ACE5BB: CI2Str
  loc_ACE5BD: FLdPr Me
  loc_ACE5C0: MemLdRfVar from_stack_1.global_52
  loc_ACE5C3: NewIfNullPr clsservceme
  loc_ACE5C6: from_stack_3v = clsservceme.ValidaClave(from_stack_1v, from_stack_2v)
  loc_ACE5CB: FLdRfVar var_A4
  loc_ACE5CE: CStrVarTmp
  loc_ACE5CF: FStStrNoPop var_AC
  loc_ACE5D2: FLdPr Me
  loc_ACE5D5: MemStStrCopy
  loc_ACE5D9: FFreeStr var_90 = "": var_94 = ""
  loc_ACE5E2: FFreeAd var_88 = ""
  loc_ACE5E9: FFree1Var var_A4 = ""
  loc_ACE5EC: FLdPr Me
  loc_ACE5EF: MemLdStr global_60
  loc_ACE5F2: LitStr vbNullString
  loc_ACE5F5: NeStr
  loc_ACE5F7: BranchF loc_ACE61D
  loc_ACE5FA: FLdPr Me
  loc_ACE5FD: MemLdStr global_60
  loc_ACE600: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACE605: FLdPr Me
  loc_ACE608: VCallAd Control_ID_CodiSeceTxt
  loc_ACE60B: CVarAd
  loc_ACE60F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACE614: FFree1Var var_A4 = ""
  loc_ACE617: LitI2_Byte &HFF
  loc_ACE619: IStI2 Cancel
  loc_ACE61C: ExitProcHresult
  loc_ACE61D: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A67DC0
  'Data Table: 50A22C
  loc_A67D64: FLdRfVar var_B4
  loc_A67D67: FLdRfVar var_B0
  loc_A67D6A: FLdI2 ColIndex
  loc_A67D6D: CVarI2 var_A8
  loc_A67D70: PopAdLdVar
  loc_A67D71: FLdPr Me
  loc_A67D74: VCallAd Control_ID_dgdABMS
  loc_A67D77: FStAdFunc var_88
  loc_A67D7A: FLdPr var_88
  loc_A67D7D: LateIdLdVar var_98 DispID_105 0
  loc_A67D84: CastAdVar Me
  loc_A67D88: FStAdFunc var_AC
  loc_A67D8B: FLdPr var_AC
  loc_A67D8E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A67D93: FLdPr var_B0
  loc_A67D96:  = Me.DataField
  loc_A67D9B: FLdZeroAd var_B4
  loc_A67D9E: PopTmpLdAdStr
  loc_A67DA2: FLdPr Me
  loc_A67DA5: MemLdRfVar from_stack_1.global_52
  loc_A67DA8: NewIfNullPr clsservceme
  loc_A67DAB: Call clsservceme.Sort(from_stack_1v)
  loc_A67DB0: FFree1Str var_B8
  loc_A67DB3: FFreeAd var_88 = "": var_AC = ""
  loc_A67DBC: FFree1Var var_98 = ""
  loc_A67DBF: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'B0F230
  'Data Table: 50A22C
  loc_B0EFF0: FLdPr Me
  loc_B0EFF3: MemLdI2 global_56
  loc_B0EFF6: LitI2_Byte 0
  loc_B0EFF8: EqI2
  loc_B0EFF9: FLdRfVar var_88
  loc_B0EFFC: FLdPr Me
  loc_B0EFFF: MemLdRfVar from_stack_1.global_52
  loc_B0F002: NewIfNullPr clsservceme
  loc_B0F005: from_stack_1 = clsservceme.RecordCount
  loc_B0F00A: ILdRf var_88
  loc_B0F00D: LitI4 0
  loc_B0F012: GtI4
  loc_B0F013: AndI4
  loc_B0F014: BranchF loc_B0F22E
  loc_B0F017: FLdRfVar var_8A
  loc_B0F01A: FLdPr Me
  loc_B0F01D: MemLdRfVar from_stack_1.global_52
  loc_B0F020: NewIfNullPr clsservceme
  loc_B0F023: from_stack_1 = clsservceme.BOF
  loc_B0F028: FLdI2 var_8A
  loc_B0F02B: BranchF loc_B0F03C
  loc_B0F02E: FLdPr Me
  loc_B0F031: MemLdRfVar from_stack_1.global_52
  loc_B0F034: NewIfNullPr clsservceme
  loc_B0F037: Call clsservceme.MoveFirst()
  loc_B0F03C: FLdRfVar var_8A
  loc_B0F03F: FLdPr Me
  loc_B0F042: MemLdRfVar from_stack_1.global_52
  loc_B0F045: NewIfNullPr clsservceme
  loc_B0F048: from_stack_1 = clsservceme.EOF
  loc_B0F04D: FLdI2 var_8A
  loc_B0F050: BranchF loc_B0F061
  loc_B0F053: FLdPr Me
  loc_B0F056: MemLdRfVar from_stack_1.global_52
  loc_B0F059: NewIfNullPr clsservceme
  loc_B0F05C: Call clsservceme.MoveLast()
  loc_B0F061: FLdRfVar var_90
  loc_B0F064: FLdPr Me
  loc_B0F067: MemLdRfVar from_stack_1.global_52
  loc_B0F06A: NewIfNullPr clsservceme
  loc_B0F06D: from_stack_1 = clsservceme.EmisSece
  loc_B0F072: FLdZeroAd var_90
  loc_B0F075: FStStr var_94
  loc_B0F078: ILdRf var_94
  loc_B0F07B: LitStr "Masiva"
  loc_B0F07E: EqStr
  loc_B0F080: BranchF loc_B0F09C
  loc_B0F083: LitI2_Byte 0
  loc_B0F085: FLdPr Me
  loc_B0F088: VCallAd Control_ID_EmisionCbo
  loc_B0F08B: FStAdFunc var_98
  loc_B0F08E: FLdPr var_98
  loc_B0F091: Me.ListIndex = from_stack_1
  loc_B0F096: FFree1Ad var_98
  loc_B0F099: Branch loc_B0F0E1
  loc_B0F09C: ILdRf var_94
  loc_B0F09F: LitStr "Normal"
  loc_B0F0A2: EqStr
  loc_B0F0A4: BranchF loc_B0F0C0
  loc_B0F0A7: LitI2_Byte 1
  loc_B0F0A9: FLdPr Me
  loc_B0F0AC: VCallAd Control_ID_EmisionCbo
  loc_B0F0AF: FStAdFunc var_98
  loc_B0F0B2: FLdPr var_98
  loc_B0F0B5: Me.ListIndex = from_stack_1
  loc_B0F0BA: FFree1Ad var_98
  loc_B0F0BD: Branch loc_B0F0E1
  loc_B0F0C0: ILdRf var_94
  loc_B0F0C3: LitStr "Especial"
  loc_B0F0C6: EqStr
  loc_B0F0C8: BranchF loc_B0F0E1
  loc_B0F0CB: LitI2_Byte 2
  loc_B0F0CD: FLdPr Me
  loc_B0F0D0: VCallAd Control_ID_EmisionCbo
  loc_B0F0D3: FStAdFunc var_98
  loc_B0F0D6: FLdPr var_98
  loc_B0F0D9: Me.ListIndex = from_stack_1
  loc_B0F0DE: FFree1Ad var_98
  loc_B0F0E1: FLdRfVar var_8A
  loc_B0F0E4: FLdPr Me
  loc_B0F0E7: MemLdRfVar from_stack_1.global_52
  loc_B0F0EA: NewIfNullPr clsservceme
  loc_B0F0ED: from_stack_1 = clsservceme.PlanDifu
  loc_B0F0F2: FLdUI1
  loc_B0F0F6: FStUI1 var_9A
  loc_B0F0FA: FLdUI1
  loc_B0F0FE: LitI2_Byte 0
  loc_B0F100: CUI1I2
  loc_B0F102: EqI2
  loc_B0F103: BranchF loc_B0F11F
  loc_B0F106: LitI2_Byte 0
  loc_B0F108: FLdPr Me
  loc_B0F10B: VCallAd Control_ID_PlanDifuCbo
  loc_B0F10E: FStAdFunc var_98
  loc_B0F111: FLdPr var_98
  loc_B0F114: Me.ListIndex = from_stack_1
  loc_B0F119: FFree1Ad var_98
  loc_B0F11C: Branch loc_B0F166
  loc_B0F11F: FLdUI1
  loc_B0F123: LitI2_Byte 1
  loc_B0F125: CUI1I2
  loc_B0F127: EqI2
  loc_B0F128: BranchF loc_B0F144
  loc_B0F12B: LitI2_Byte 1
  loc_B0F12D: FLdPr Me
  loc_B0F130: VCallAd Control_ID_PlanDifuCbo
  loc_B0F133: FStAdFunc var_98
  loc_B0F136: FLdPr var_98
  loc_B0F139: Me.ListIndex = from_stack_1
  loc_B0F13E: FFree1Ad var_98
  loc_B0F141: Branch loc_B0F166
  loc_B0F144: FLdUI1
  loc_B0F148: LitI2_Byte 2
  loc_B0F14A: CUI1I2
  loc_B0F14C: EqI2
  loc_B0F14D: BranchF loc_B0F166
  loc_B0F150: LitI2_Byte 2
  loc_B0F152: FLdPr Me
  loc_B0F155: VCallAd Control_ID_PlanDifuCbo
  loc_B0F158: FStAdFunc var_98
  loc_B0F15B: FLdPr var_98
  loc_B0F15E: Me.ListIndex = from_stack_1
  loc_B0F163: FFree1Ad var_98
  loc_B0F166: FLdRfVar var_90
  loc_B0F169: FLdPr Me
  loc_B0F16C: MemLdRfVar from_stack_1.global_52
  loc_B0F16F: NewIfNullPr clsservceme
  loc_B0F172: from_stack_1 = clsservceme.FrecSece
  loc_B0F177: FLdZeroAd var_90
  loc_B0F17A: FStStr var_A0
  loc_B0F17D: ILdRf var_A0
  loc_B0F180: LitStr "Anual"
  loc_B0F183: EqStr
  loc_B0F185: BranchF loc_B0F1A1
  loc_B0F188: LitI2_Byte &HFF
  loc_B0F18A: FLdPr Me
  loc_B0F18D: VCallAd Control_ID_FrecSeceAnualOpt
  loc_B0F190: FStAdFunc var_98
  loc_B0F193: FLdPr var_98
  loc_B0F196: Me.Value = from_stack_1b
  loc_B0F19B: FFree1Ad var_98
  loc_B0F19E: Branch loc_B0F22E
  loc_B0F1A1: ILdRf var_A0
  loc_B0F1A4: LitStr "Semestral"
  loc_B0F1A7: EqStr
  loc_B0F1A9: BranchF loc_B0F1C5
  loc_B0F1AC: LitI2_Byte &HFF
  loc_B0F1AE: FLdPr Me
  loc_B0F1B1: VCallAd Control_ID_FrecSeceSemestralOpt
  loc_B0F1B4: FStAdFunc var_98
  loc_B0F1B7: FLdPr var_98
  loc_B0F1BA: Me.Value = from_stack_1b
  loc_B0F1BF: FFree1Ad var_98
  loc_B0F1C2: Branch loc_B0F22E
  loc_B0F1C5: ILdRf var_A0
  loc_B0F1C8: LitStr "Cuatrimestral"
  loc_B0F1CB: EqStr
  loc_B0F1CD: BranchF loc_B0F1E9
  loc_B0F1D0: LitI2_Byte &HFF
  loc_B0F1D2: FLdPr Me
  loc_B0F1D5: VCallAd Control_ID_FrecSeceCuatrimestralOpt
  loc_B0F1D8: FStAdFunc var_98
  loc_B0F1DB: FLdPr var_98
  loc_B0F1DE: Me.Value = from_stack_1b
  loc_B0F1E3: FFree1Ad var_98
  loc_B0F1E6: Branch loc_B0F22E
  loc_B0F1E9: ILdRf var_A0
  loc_B0F1EC: LitStr "Trimestral"
  loc_B0F1EF: EqStr
  loc_B0F1F1: BranchF loc_B0F20D
  loc_B0F1F4: LitI2_Byte &HFF
  loc_B0F1F6: FLdPr Me
  loc_B0F1F9: VCallAd Control_ID_FrecSeceTrimestralOpt
  loc_B0F1FC: FStAdFunc var_98
  loc_B0F1FF: FLdPr var_98
  loc_B0F202: Me.Value = from_stack_1b
  loc_B0F207: FFree1Ad var_98
  loc_B0F20A: Branch loc_B0F22E
  loc_B0F20D: ILdRf var_A0
  loc_B0F210: LitStr "Bimestral"
  loc_B0F213: EqStr
  loc_B0F215: BranchF loc_B0F22E
  loc_B0F218: LitI2_Byte &HFF
  loc_B0F21A: FLdPr Me
  loc_B0F21D: VCallAd Control_ID_FrecSeceBimestralOpt
  loc_B0F220: FStAdFunc var_98
  loc_B0F223: FLdPr var_98
  loc_B0F226: Me.Value = from_stack_1b
  loc_B0F22B: FFree1Ad var_98
  loc_B0F22E: ExitProcHresult
End Sub

Private Sub CodiTiseMsk_UnknownEvent_0 '9C2DE0
  'Data Table: 50A22C
  loc_9C2DCC: FLdPr Me
  loc_9C2DCF: VCallAd Control_ID_CodiTiseMsk
  loc_9C2DD2: CVarAd
  loc_9C2DD6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2DDB: FFree1Var var_94 = ""
  loc_9C2DDE: ExitProcHresult
End Sub

Private Sub CodiTiseMsk_UnknownEvent_8 'AC37C4
  'Data Table: 50A22C
  loc_AC36C4: FLdRfVar var_8A
  loc_AC36C7: FLdPr Me
  loc_AC36CA: VCallAd Control_ID_cmdCancelar
  loc_AC36CD: FStAdFunc var_88
  loc_AC36D0: FLdPr var_88
  loc_AC36D3:  = Me.Value
  loc_AC36D8: FLdI2 var_8A
  loc_AC36DB: NotI4
  loc_AC36DC: FLdPr Me
  loc_AC36DF: VCallAd Control_ID_CodiTiseMsk
  loc_AC36E2: FStAdFunc var_90
  loc_AC36E5: FLdPr var_90
  loc_AC36E8: LateIdLdVar var_A0 DispID_13 -32767
  loc_AC36EF: CBoolVar
  loc_AC36F1: AndI4
  loc_AC36F2: FFreeAd var_88 = ""
  loc_AC36F9: FFree1Var var_A0 = ""
  loc_AC36FC: BranchF loc_AC37C0
  loc_AC36FF: FLdPr Me
  loc_AC3702: VCallAd Control_ID_CodiTiseMsk
  loc_AC3705: FStAdFunc var_88
  loc_AC3708: FLdPr var_88
  loc_AC370B: LateIdLdVar var_A0 DispID_22 0
  loc_AC3712: CStrVarTmp
  loc_AC3713: FStStrNoPop var_A4
  loc_AC3716: ImpAdCallI2 Proc_18_28_A555EC()
  loc_AC371B: FStStrNoPop var_A8
  loc_AC371E: FLdPr Me
  loc_AC3721: MemStStrCopy
  loc_AC3725: FFreeStr var_A4 = ""
  loc_AC372C: FFree1Ad var_88
  loc_AC372F: FFree1Var var_A0 = ""
  loc_AC3732: FLdPr Me
  loc_AC3735: MemLdStr global_60
  loc_AC3738: LitStr vbNullString
  loc_AC373B: NeStr
  loc_AC373D: BranchF loc_AC377D
  loc_AC3740: FLdPr Me
  loc_AC3743: MemLdStr global_60
  loc_AC3746: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC374B: LitStr vbNullString
  loc_AC374E: FLdPr Me
  loc_AC3751: VCallAd Control_ID_DetaTiseLbl
  loc_AC3754: FStAdFunc var_88
  loc_AC3757: FLdPr var_88
  loc_AC375A: Me.Caption = from_stack_1
  loc_AC375F: FFree1Ad var_88
  loc_AC3762: FLdPr Me
  loc_AC3765: VCallAd Control_ID_CodiTiseMsk
  loc_AC3768: CVarAd
  loc_AC376C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC3771: FFree1Var var_A0 = ""
  loc_AC3774: LitI2_Byte &HFF
  loc_AC3776: IStI2 LastRow
  loc_AC3779: ExitProcHresult
  loc_AC377A: Branch loc_AC37C0
  loc_AC377D: FLdPr Me
  loc_AC3780: VCallAd Control_ID_CodiTiseMsk
  loc_AC3783: FStAdFunc var_88
  loc_AC3786: FLdPr var_88
  loc_AC3789: LateIdLdVar var_A0 DispID_22 0
  loc_AC3790: CStrVarTmp
  loc_AC3791: FStStrNoPop var_A4
  loc_AC3794: CI2Str
  loc_AC3796: ImpAdCallI2 Proc_270_28_A79F90()
  loc_AC379B: FStStrNoPop var_A8
  loc_AC379E: FLdPr Me
  loc_AC37A1: VCallAd Control_ID_DetaTiseLbl
  loc_AC37A4: FStAdFunc var_90
  loc_AC37A7: FLdPr var_90
  loc_AC37AA: Me.Caption = from_stack_1
  loc_AC37AF: FFreeStr var_A4 = ""
  loc_AC37B6: FFreeAd var_88 = ""
  loc_AC37BD: FFree1Var var_A0 = ""
  loc_AC37C0: ExitProcHresult
End Sub

Private Sub CodiTiseMsk_KeyPress(KeyAscii As Integer) 'A89E5C
  'Data Table: 50A22C
  loc_A89DC4: ILdI2 KeyAscii
  loc_A89DC7: LitI2_Byte &H20
  loc_A89DC9: EqI2
  loc_A89DCA: BranchF loc_A89E5A
  loc_A89DCD: LitVar_Missing var_A4
  loc_A89DD0: PopAdLdVar
  loc_A89DD1: LitVarI4
  loc_A89DD9: PopAdLdVar
  loc_A89DDA: ImpAdLdRf MemVar_D94A88
  loc_A89DDD: NewIfNullPr dlgBuscarTipoSepu
  loc_A89DE0: dlgBuscarTipoSepu.Show from_stack_1, from_stack_2
  loc_A89DE5: FLdRfVar var_AA
  loc_A89DE8: FLdRfVar var_A8
  loc_A89DEB: ImpAdLdRf MemVar_D94A88
  loc_A89DEE: NewIfNullPr dlgBuscarTipoSepu
  loc_A89DF1: from_stack_1v = dlgBuscarTipoSepu.global_4278044Get()
  loc_A89DF6: FLdPr var_A8
  loc_A89DF9: from_stack_1 = clstiposepu.CodiTise
  loc_A89DFE: FLdUI1
  loc_A89E02: CStrI2
  loc_A89E04: CVarStr var_BC
  loc_A89E07: PopAdLdVar
  loc_A89E08: FLdPr Me
  loc_A89E0B: VCallAd Control_ID_CodiTiseMsk
  loc_A89E0E: FStAdFunc var_C0
  loc_A89E11: FLdPr var_C0
  loc_A89E14: LateIdSt
  loc_A89E19: FFreeAd var_A8 = ""
  loc_A89E20: FFree1Var var_BC = ""
  loc_A89E23: FLdRfVar var_C4
  loc_A89E26: FLdRfVar var_A8
  loc_A89E29: ImpAdLdRf MemVar_D94A88
  loc_A89E2C: NewIfNullPr dlgBuscarTipoSepu
  loc_A89E2F: from_stack_1v = dlgBuscarTipoSepu.global_4278044Get()
  loc_A89E34: FLdPr var_A8
  loc_A89E37: from_stack_1 = clstiposepu.DetaTise
  loc_A89E3C: ILdRf var_C4
  loc_A89E3F: FLdPr Me
  loc_A89E42: VCallAd Control_ID_DetaTiseLbl
  loc_A89E45: FStAdFunc var_C0
  loc_A89E48: FLdPr var_C0
  loc_A89E4B: Me.Caption = from_stack_1
  loc_A89E50: FFree1Str var_C4
  loc_A89E53: FFreeAd var_A8 = ""
  loc_A89E5A: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'C27184
  'Data Table: 50A22C
  loc_C266FC: ILdRf Button
  loc_C266FF: FStAd var_88 
  loc_C26703: FLdRfVar var_90
  loc_C26706: FLdPr var_88
  loc_C26709:  = Me.Key
  loc_C2670E: FLdZeroAd var_90
  loc_C26711: FStStr var_94
  loc_C26714: ILdRf var_94
  loc_C26717: LitStr "btnCrear"
  loc_C2671A: EqStr
  loc_C2671C: BranchF loc_C2694E
  loc_C2671F: LitI2_Byte 1
  loc_C26721: FLdPr Me
  loc_C26724: MemStI2 global_56
  loc_C26727: ILdRf Me
  loc_C2672A: CastAd
  loc_C2672D: FStAdFunc var_98
  loc_C26730: FLdRfVar var_98
  loc_C26733: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_C26738: FFree1Ad var_98
  loc_C2673B: LitI4 0
  loc_C26740: LitI4 0
  loc_C26745: FLdRfVar var_9C
  loc_C26748: Redim
  loc_C26752: FLdPr Me
  loc_C26755: VCallAd Control_ID_dgdABMS
  loc_C26758: CVarAd
  loc_C2675C: ParmAry1St
  loc_C26762: FLdRfVar var_9C
  loc_C26765: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C2676A: FLdRfVar var_9C
  loc_C2676D: Erase
  loc_C2676E: ILdRf Me
  loc_C26771: CastAd
  loc_C26774: FStAdFunc var_98
  loc_C26777: FLdRfVar var_98
  loc_C2677A: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_C2677F: FFree1Ad var_98
  loc_C26782: ILdRf Me
  loc_C26785: CastAd
  loc_C26788: FStAdFunc var_98
  loc_C2678B: FLdRfVar var_98
  loc_C2678E: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_C26793: FFree1Ad var_98
  loc_C26796: ILdRf Me
  loc_C26799: CastAd
  loc_C2679C: FStAdFunc var_98
  loc_C2679F: FLdRfVar var_98
  loc_C267A2: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_C267A7: FFree1Ad var_98
  loc_C267AA: LitI4 0
  loc_C267AF: LitI4 4
  loc_C267B4: FLdRfVar var_9C
  loc_C267B7: Redim
  loc_C267C1: FLdPr Me
  loc_C267C4: VCallAd Control_ID_FrecSeceAnualOpt
  loc_C267C7: CVarAd
  loc_C267CB: ParmAry1St
  loc_C267D1: FLdPr Me
  loc_C267D4: VCallAd Control_ID_FrecSeceSemestralOpt
  loc_C267D7: CVarAd
  loc_C267DB: ParmAry1St
  loc_C267E1: FLdPr Me
  loc_C267E4: VCallAd Control_ID_FrecSeceCuatrimestralOpt
  loc_C267E7: CVarAd
  loc_C267EB: ParmAry1St
  loc_C267F1: FLdPr Me
  loc_C267F4: VCallAd Control_ID_FrecSeceTrimestralOpt
  loc_C267F7: CVarAd
  loc_C267FB: ParmAry1St
  loc_C26801: FLdPr Me
  loc_C26804: VCallAd Control_ID_FrecSeceBimestralOpt
  loc_C26807: CVarAd
  loc_C2680B: ParmAry1St
  loc_C26811: FLdRfVar var_9C
  loc_C26814: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C26819: FLdRfVar var_9C
  loc_C2681C: Erase
  loc_C2681D: LitI4 0
  loc_C26822: LitI4 2
  loc_C26827: FLdRfVar var_9C
  loc_C2682A: Redim
  loc_C26834: FLdPr Me
  loc_C26837: VCallAd Control_ID_FiltroCbo
  loc_C2683A: CVarAd
  loc_C2683E: ParmAry1St
  loc_C26844: FLdPr Me
  loc_C26847: VCallAd Control_ID_FiltroMsk
  loc_C2684A: CVarAd
  loc_C2684E: ParmAry1St
  loc_C26854: FLdPr Me
  loc_C26857: VCallAd Control_ID_PeriInfoTxt
  loc_C2685A: CVarAd
  loc_C2685E: ParmAry1St
  loc_C26864: FLdRfVar var_9C
  loc_C26867: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C2686C: FLdRfVar var_9C
  loc_C2686F: Erase
  loc_C26870: ImpAdLdI2 MemVar_D93036
  loc_C26873: CStrUI1
  loc_C26875: FStStrNoPop var_90
  loc_C26878: FLdPr Me
  loc_C2687B: VCallAd Control_ID_PeriOrdeTxt
  loc_C2687E: FStAdFunc var_98
  loc_C26881: FLdPr var_98
  loc_C26884: Me.Text = from_stack_1
  loc_C26889: FFree1Str var_90
  loc_C2688C: FFree1Ad var_98
  loc_C2688F: ImpAdLdI2 MemVar_D93034
  loc_C26892: CStrUI1
  loc_C26894: FStStrNoPop var_90
  loc_C26897: FLdPr Me
  loc_C2689A: VCallAd Control_ID_PeriInfoTxt
  loc_C2689D: FStAdFunc var_98
  loc_C268A0: FLdPr var_98
  loc_C268A3: Me.Text = from_stack_1
  loc_C268A8: FFree1Str var_90
  loc_C268AB: FFree1Ad var_98
  loc_C268AE: LitI2_Byte 0
  loc_C268B0: CStrUI1
  loc_C268B2: FStStrNoPop var_90
  loc_C268B5: FLdPr Me
  loc_C268B8: VCallAd Control_ID_CodiSeceTxt
  loc_C268BB: FStAdFunc var_98
  loc_C268BE: FLdPr var_98
  loc_C268C1: Me.Text = from_stack_1
  loc_C268C6: FFree1Str var_90
  loc_C268C9: FFree1Ad var_98
  loc_C268CC: LitStr "0"
  loc_C268CF: FLdPr Me
  loc_C268D2: VCallAd Control_ID_FilaDifuTxt
  loc_C268D5: FStAdFunc var_98
  loc_C268D8: FLdPr var_98
  loc_C268DB: Me.Text = from_stack_1
  loc_C268E0: FFree1Ad var_98
  loc_C268E3: LitI2_Byte 0
  loc_C268E5: CStrUI1
  loc_C268E7: CVarStr var_AC
  loc_C268EA: PopAdLdVar
  loc_C268EB: FLdPr Me
  loc_C268EE: VCallAd Control_ID_AnioSeceMsk
  loc_C268F1: FStAdFunc var_98
  loc_C268F4: FLdPr var_98
  loc_C268F7: LateIdSt
  loc_C268FC: FFree1Ad var_98
  loc_C268FF: FFree1Var var_AC = ""
  loc_C26902: LitI2_Byte 0
  loc_C26904: CStrUI1
  loc_C26906: FStStrNoPop var_90
  loc_C26909: FLdPr Me
  loc_C2690C: VCallAd Control_ID_PeriInfoTxt
  loc_C2690F: FStAdFunc var_98
  loc_C26912: FLdPr var_98
  loc_C26915: Me.Text = from_stack_1
  loc_C2691A: FFree1Str var_90
  loc_C2691D: FFree1Ad var_98
  loc_C26920: LitStr "0"
  loc_C26923: FLdPr Me
  loc_C26926: VCallAd Control_ID_ImpoSeceTxt
  loc_C26929: FStAdFunc var_98
  loc_C2692C: FLdPr var_98
  loc_C2692F: Me.Text = from_stack_1
  loc_C26934: FFree1Ad var_98
  loc_C26937: FLdPr Me
  loc_C2693A: VCallAd Control_ID_PeriOrdeTxt
  loc_C2693D: FStAdFunc var_98
  loc_C26940: FLdPr var_98
  loc_C26943: Me.SetFocus
  loc_C26948: FFree1Ad var_98
  loc_C2694B: Branch loc_C27183
  loc_C2694E: ILdRf var_94
  loc_C26951: LitStr "btnModificar"
  loc_C26954: EqStr
  loc_C26956: BranchF loc_C26AEA
  loc_C26959: FLdRfVar var_100
  loc_C2695C: FLdPr Me
  loc_C2695F: MemLdRfVar from_stack_1.global_52
  loc_C26962: NewIfNullPr clsservceme
  loc_C26965: from_stack_1 = clsservceme.RecordCount
  loc_C2696A: ILdRf var_100
  loc_C2696D: LitI4 0
  loc_C26972: GtI4
  loc_C26973: BranchF loc_C26AE7
  loc_C26976: LitI2_Byte 2
  loc_C26978: FLdPr Me
  loc_C2697B: MemStI2 global_56
  loc_C2697E: ILdRf Me
  loc_C26981: CastAd
  loc_C26984: FStAdFunc var_98
  loc_C26987: FLdRfVar var_98
  loc_C2698A: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_C2698F: FFree1Ad var_98
  loc_C26992: LitI4 0
  loc_C26997: LitI4 0
  loc_C2699C: FLdRfVar var_9C
  loc_C2699F: Redim
  loc_C269A9: FLdPr Me
  loc_C269AC: VCallAd Control_ID_dgdABMS
  loc_C269AF: CVarAd
  loc_C269B3: ParmAry1St
  loc_C269B9: FLdRfVar var_9C
  loc_C269BC: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C269C1: FLdRfVar var_9C
  loc_C269C4: Erase
  loc_C269C5: ILdRf Me
  loc_C269C8: CastAd
  loc_C269CB: FStAdFunc var_98
  loc_C269CE: FLdRfVar var_98
  loc_C269D1: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_C269D6: FFree1Ad var_98
  loc_C269D9: ILdRf Me
  loc_C269DC: CastAd
  loc_C269DF: FStAdFunc var_98
  loc_C269E2: FLdRfVar var_98
  loc_C269E5: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_C269EA: FFree1Ad var_98
  loc_C269ED: LitI4 0
  loc_C269F2: LitI4 4
  loc_C269F7: FLdRfVar var_9C
  loc_C269FA: Redim
  loc_C26A04: FLdPr Me
  loc_C26A07: VCallAd Control_ID_PeriOrdeTxt
  loc_C26A0A: CVarAd
  loc_C26A0E: ParmAry1St
  loc_C26A14: FLdPr Me
  loc_C26A17: VCallAd Control_ID_CodiSeceTxt
  loc_C26A1A: CVarAd
  loc_C26A1E: ParmAry1St
  loc_C26A24: FLdPr Me
  loc_C26A27: VCallAd Control_ID_PeriInfoTxt
  loc_C26A2A: CVarAd
  loc_C26A2E: ParmAry1St
  loc_C26A34: FLdPr Me
  loc_C26A37: VCallAd Control_ID_FiltroCbo
  loc_C26A3A: CVarAd
  loc_C26A3E: ParmAry1St
  loc_C26A44: FLdPr Me
  loc_C26A47: VCallAd Control_ID_FiltroMsk
  loc_C26A4A: CVarAd
  loc_C26A4E: ParmAry1St
  loc_C26A54: FLdRfVar var_9C
  loc_C26A57: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C26A5C: FLdRfVar var_9C
  loc_C26A5F: Erase
  loc_C26A60: LitI4 0
  loc_C26A65: LitI4 4
  loc_C26A6A: FLdRfVar var_9C
  loc_C26A6D: Redim
  loc_C26A77: FLdPr Me
  loc_C26A7A: VCallAd Control_ID_FrecSeceAnualOpt
  loc_C26A7D: CVarAd
  loc_C26A81: ParmAry1St
  loc_C26A87: FLdPr Me
  loc_C26A8A: VCallAd Control_ID_FrecSeceSemestralOpt
  loc_C26A8D: CVarAd
  loc_C26A91: ParmAry1St
  loc_C26A97: FLdPr Me
  loc_C26A9A: VCallAd Control_ID_FrecSeceCuatrimestralOpt
  loc_C26A9D: CVarAd
  loc_C26AA1: ParmAry1St
  loc_C26AA7: FLdPr Me
  loc_C26AAA: VCallAd Control_ID_FrecSeceTrimestralOpt
  loc_C26AAD: CVarAd
  loc_C26AB1: ParmAry1St
  loc_C26AB7: FLdPr Me
  loc_C26ABA: VCallAd Control_ID_FrecSeceBimestralOpt
  loc_C26ABD: CVarAd
  loc_C26AC1: ParmAry1St
  loc_C26AC7: FLdRfVar var_9C
  loc_C26ACA: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C26ACF: FLdRfVar var_9C
  loc_C26AD2: Erase
  loc_C26AD3: FLdPr Me
  loc_C26AD6: VCallAd Control_ID_DetaSeceTxt
  loc_C26AD9: FStAdFunc var_98
  loc_C26ADC: FLdPr var_98
  loc_C26ADF: Me.SetFocus
  loc_C26AE4: FFree1Ad var_98
  loc_C26AE7: Branch loc_C27183
  loc_C26AEA: ILdRf var_94
  loc_C26AED: LitStr "btnEliminar"
  loc_C26AF0: EqStr
  loc_C26AF2: BranchF loc_C26B15
  loc_C26AF5: FLdRfVar var_100
  loc_C26AF8: FLdPr Me
  loc_C26AFB: MemLdRfVar from_stack_1.global_52
  loc_C26AFE: NewIfNullPr clsservceme
  loc_C26B01: from_stack_1 = clsservceme.RecordCount
  loc_C26B06: ILdRf var_100
  loc_C26B09: LitI4 0
  loc_C26B0E: GtI4
  loc_C26B0F: BranchF loc_C26B12
  loc_C26B12: Branch loc_C27183
  loc_C26B15: ILdRf var_94
  loc_C26B18: LitStr "btnGuardar"
  loc_C26B1B: EqStr
  loc_C26B1D: BranchF loc_C27067
  loc_C26B20: LitStr vbNullString
  loc_C26B23: FLdPr Me
  loc_C26B26: MemStStrCopy
  loc_C26B2A: LitI2_Byte 0
  loc_C26B2C: PopTmpLdAd2 var_102
  loc_C26B2F: Call CodiSeceTxt_Validate(from_stack_1v)
  loc_C26B34: FLdPr Me
  loc_C26B37: MemLdStr global_60
  loc_C26B3A: LitStr vbNullString
  loc_C26B3D: NeStr
  loc_C26B3F: BranchF loc_C26B43
  loc_C26B42: ExitProcHresult
  loc_C26B43: LitI2_Byte 0
  loc_C26B45: PopTmpLdAd2 var_102
  loc_C26B48: Call DetaSeceTxt_Validate(from_stack_1v)
  loc_C26B4D: FLdPr Me
  loc_C26B50: MemLdStr global_60
  loc_C26B53: LitStr vbNullString
  loc_C26B56: NeStr
  loc_C26B58: BranchF loc_C26B5C
  loc_C26B5B: ExitProcHresult
  loc_C26B5C: LitI2_Byte 0
  loc_C26B5E: PopTmpLdAd2 var_102
  loc_C26B61: Call CodiTiseMsk_UnknownEvent_8()
  loc_C26B66: FLdPr Me
  loc_C26B69: MemLdStr global_60
  loc_C26B6C: LitStr vbNullString
  loc_C26B6F: NeStr
  loc_C26B71: BranchF loc_C26B75
  loc_C26B74: ExitProcHresult
  loc_C26B75: LitI2_Byte 0
  loc_C26B77: PopTmpLdAd2 var_102
  loc_C26B7A: Call CodiConcTxt_Validate(from_stack_1v)
  loc_C26B7F: FLdPr Me
  loc_C26B82: MemLdStr global_60
  loc_C26B85: LitStr vbNullString
  loc_C26B88: NeStr
  loc_C26B8A: BranchF loc_C26B8E
  loc_C26B8D: ExitProcHresult
  loc_C26B8E: LitI2_Byte 0
  loc_C26B90: PopTmpLdAd2 var_102
  loc_C26B93: Call FilaDifuTxt_Validate(from_stack_1v)
  loc_C26B98: FLdPr Me
  loc_C26B9B: MemLdStr global_60
  loc_C26B9E: LitStr vbNullString
  loc_C26BA1: NeStr
  loc_C26BA3: BranchF loc_C26BA7
  loc_C26BA6: ExitProcHresult
  loc_C26BA7: LitI2_Byte 0
  loc_C26BA9: PopTmpLdAd2 var_102
  loc_C26BAC: Call ImpoSeceTxt_Validate(from_stack_1v)
  loc_C26BB1: FLdPr Me
  loc_C26BB4: MemLdStr global_60
  loc_C26BB7: LitStr vbNullString
  loc_C26BBA: NeStr
  loc_C26BBC: BranchF loc_C26BC0
  loc_C26BBF: ExitProcHresult
  loc_C26BC0: FLdRfVar var_102
  loc_C26BC3: FLdPr Me
  loc_C26BC6: VCallAd Control_ID_FrecSeceAnualOpt
  loc_C26BC9: FStAdFunc var_98
  loc_C26BCC: FLdPr var_98
  loc_C26BCF:  = Me.Value
  loc_C26BD4: FLdI2 var_102
  loc_C26BD7: LitI2_Byte &HFF
  loc_C26BD9: EqI2
  loc_C26BDA: FFree1Ad var_98
  loc_C26BDD: BranchF loc_C26BEA
  loc_C26BE0: LitStr "Anual"
  loc_C26BE3: FLdPr Me
  loc_C26BE6: MemStStrCopy
  loc_C26BEA: FLdRfVar var_102
  loc_C26BED: FLdPr Me
  loc_C26BF0: VCallAd Control_ID_FrecSeceSemestralOpt
  loc_C26BF3: FStAdFunc var_98
  loc_C26BF6: FLdPr var_98
  loc_C26BF9:  = Me.Value
  loc_C26BFE: FLdI2 var_102
  loc_C26C01: LitI2_Byte &HFF
  loc_C26C03: EqI2
  loc_C26C04: FFree1Ad var_98
  loc_C26C07: BranchF loc_C26C14
  loc_C26C0A: LitStr "Semestral"
  loc_C26C0D: FLdPr Me
  loc_C26C10: MemStStrCopy
  loc_C26C14: FLdRfVar var_102
  loc_C26C17: FLdPr Me
  loc_C26C1A: VCallAd Control_ID_FrecSeceCuatrimestralOpt
  loc_C26C1D: FStAdFunc var_98
  loc_C26C20: FLdPr var_98
  loc_C26C23:  = Me.Value
  loc_C26C28: FLdI2 var_102
  loc_C26C2B: LitI2_Byte &HFF
  loc_C26C2D: EqI2
  loc_C26C2E: FFree1Ad var_98
  loc_C26C31: BranchF loc_C26C3E
  loc_C26C34: LitStr "Cuatrimestral"
  loc_C26C37: FLdPr Me
  loc_C26C3A: MemStStrCopy
  loc_C26C3E: FLdRfVar var_102
  loc_C26C41: FLdPr Me
  loc_C26C44: VCallAd Control_ID_FrecSeceTrimestralOpt
  loc_C26C47: FStAdFunc var_98
  loc_C26C4A: FLdPr var_98
  loc_C26C4D:  = Me.Value
  loc_C26C52: FLdI2 var_102
  loc_C26C55: LitI2_Byte &HFF
  loc_C26C57: EqI2
  loc_C26C58: FFree1Ad var_98
  loc_C26C5B: BranchF loc_C26C68
  loc_C26C5E: LitStr "Trimestral"
  loc_C26C61: FLdPr Me
  loc_C26C64: MemStStrCopy
  loc_C26C68: FLdRfVar var_102
  loc_C26C6B: FLdPr Me
  loc_C26C6E: VCallAd Control_ID_FrecSeceBimestralOpt
  loc_C26C71: FStAdFunc var_98
  loc_C26C74: FLdPr var_98
  loc_C26C77:  = Me.Value
  loc_C26C7C: FLdI2 var_102
  loc_C26C7F: LitI2_Byte &HFF
  loc_C26C81: EqI2
  loc_C26C82: FFree1Ad var_98
  loc_C26C85: BranchF loc_C26C92
  loc_C26C88: LitStr "Bimestral"
  loc_C26C8B: FLdPr Me
  loc_C26C8E: MemStStrCopy
  loc_C26C92: FLdPr Me
  loc_C26C95: MemLdI2 global_56
  loc_C26C98: FStI2 var_104
  loc_C26C9B: FLdI2 var_104
  loc_C26C9E: LitI2_Byte 1
  loc_C26CA0: EqI2
  loc_C26CA1: BranchF loc_C26E83
  loc_C26CA4: FLdRfVar var_90
  loc_C26CA7: FLdPr Me
  loc_C26CAA: VCallAd Control_ID_PeriOrdeTxt
  loc_C26CAD: FStAdFunc var_98
  loc_C26CB0: FLdPr var_98
  loc_C26CB3:  = Me.Text
  loc_C26CB8: FLdRfVar var_10C
  loc_C26CBB: FLdPr Me
  loc_C26CBE: VCallAd Control_ID_CodiSeceTxt
  loc_C26CC1: FStAdFunc var_108
  loc_C26CC4: FLdPr var_108
  loc_C26CC7:  = Me.Text
  loc_C26CCC: FLdRfVar var_114
  loc_C26CCF: FLdPr Me
  loc_C26CD2: VCallAd Control_ID_DetaSeceTxt
  loc_C26CD5: FStAdFunc var_110
  loc_C26CD8: FLdPr var_110
  loc_C26CDB:  = Me.Text
  loc_C26CE0: FLdPr Me
  loc_C26CE3: VCallAd Control_ID_CodiCemeMsk
  loc_C26CE6: FStAdFunc var_118
  loc_C26CE9: FLdPr var_118
  loc_C26CEC: LateIdLdVar var_AC DispID_22 0
  loc_C26CF3: PopAd
  loc_C26CF5: FLdPr Me
  loc_C26CF8: VCallAd Control_ID_CodiCemeMsk
  loc_C26CFB: FStAdFunc var_120
  loc_C26CFE: FLdPr var_120
  loc_C26D01: LateIdLdVar var_BC DispID_22 0
  loc_C26D08: CStrVarTmp
  loc_C26D09: CVarStr var_DC
  loc_C26D0C: LitVarI2 var_CC, 0
  loc_C26D11: FLdRfVar var_AC
  loc_C26D14: CStrVarTmp
  loc_C26D15: FStStrNoPop var_11C
  loc_C26D18: LitStr vbNullString
  loc_C26D1B: EqStr
  loc_C26D1D: CVarBoolI2 var_FC
  loc_C26D21: FLdRfVar var_EC
  loc_C26D24: ImpAdCallFPR4  = IIf(, , )
  loc_C26D29: FLdPr Me
  loc_C26D2C: VCallAd Control_ID_CodiTiseMsk
  loc_C26D2F: FStAdFunc var_134
  loc_C26D32: FLdPr var_134
  loc_C26D35: LateIdLdVar var_144 DispID_22 0
  loc_C26D3C: PopAd
  loc_C26D3E: FLdRfVar var_14C
  loc_C26D41: FLdPr Me
  loc_C26D44: VCallAd Control_ID_SeccDifuTxt
  loc_C26D47: FStAdFunc var_148
  loc_C26D4A: FLdPr var_148
  loc_C26D4D:  = Me.Text
  loc_C26D52: FLdRfVar var_102
  loc_C26D55: FLdPr Me
  loc_C26D58: VCallAd Control_ID_PlanDifuCbo
  loc_C26D5B: FStAdFunc var_150
  loc_C26D5E: FLdPr var_150
  loc_C26D61:  = Me.ListIndex
  loc_C26D66: FLdRfVar var_158
  loc_C26D69: FLdPr Me
  loc_C26D6C: VCallAd Control_ID_FilaDifuTxt
  loc_C26D6F: FStAdFunc var_154
  loc_C26D72: FLdPr var_154
  loc_C26D75:  = Me.Text
  loc_C26D7A: FLdRfVar var_15E
  loc_C26D7D: FLdPr Me
  loc_C26D80: VCallAd Control_ID_ParvDifuChk
  loc_C26D83: FStAdFunc var_15C
  loc_C26D86: FLdPr var_15C
  loc_C26D89:  = Me.Value
  loc_C26D8E: FLdPr Me
  loc_C26D91: VCallAd Control_ID_AnioSeceMsk
  loc_C26D94: FStAdFunc var_164
  loc_C26D97: FLdPr var_164
  loc_C26D9A: LateIdLdVar var_174 DispID_22 0
  loc_C26DA1: PopAd
  loc_C26DA3: FLdRfVar var_17C
  loc_C26DA6: FLdPr Me
  loc_C26DA9: VCallAd Control_ID_CodiConcTxt
  loc_C26DAC: FStAdFunc var_178
  loc_C26DAF: FLdPr var_178
  loc_C26DB2:  = Me.Text
  loc_C26DB7: FLdRfVar var_184
  loc_C26DBA: FLdPr Me
  loc_C26DBD: VCallAd Control_ID_EmisionCbo
  loc_C26DC0: FStAdFunc var_180
  loc_C26DC3: FLdPr var_180
  loc_C26DC6:  = Me.Text
  loc_C26DCB: FLdRfVar var_18C
  loc_C26DCE: FLdPr Me
  loc_C26DD1: VCallAd Control_ID_ImpoSeceTxt
  loc_C26DD4: FStAdFunc var_188
  loc_C26DD7: FLdPr var_188
  loc_C26DDA:  = Me.Text
  loc_C26DDF: ILdRf var_18C
  loc_C26DE2: CR8Str
  loc_C26DE4: PopFPR8
  loc_C26DE5: FLdPr Me
  loc_C26DE8: MemLdStr global_64
  loc_C26DEB: ILdRf var_184
  loc_C26DEE: ILdRf var_17C
  loc_C26DF1: FLdRfVar var_174
  loc_C26DF4: CStrVarTmp
  loc_C26DF5: FStStrNoPop var_194
  loc_C26DF8: CI2Str
  loc_C26DFA: FLdI2 var_15E
  loc_C26DFD: CUI1I2
  loc_C26DFF: ILdRf var_158
  loc_C26E02: CI2Str
  loc_C26E04: FLdI2 var_102
  loc_C26E07: CUI1I2
  loc_C26E09: ILdRf var_14C
  loc_C26E0C: FLdRfVar var_144
  loc_C26E0F: CStrVarTmp
  loc_C26E10: FStStrNoPop var_190
  loc_C26E13: CI2Str
  loc_C26E15: FLdRfVar var_EC
  loc_C26E18: CUI1Var
  loc_C26E1A: ILdRf var_114
  loc_C26E1D: ILdRf var_10C
  loc_C26E20: CI2Str
  loc_C26E22: ILdRf var_90
  loc_C26E25: CI2Str
  loc_C26E27: FLdPr Me
  loc_C26E2A: MemLdRfVar from_stack_1.global_52
  loc_C26E2D: NewIfNullPr clsservceme
  loc_C26E30: Call clsservceme.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v)
  loc_C26E35: FFreeStr var_11C = "": var_90 = "": var_10C = "": var_114 = "": var_190 = "": var_14C = "": var_158 = "": var_194 = "": var_17C = "": var_184 = ""
  loc_C26E4E: FFreeAd var_98 = "": var_108 = "": var_110 = "": var_118 = "": var_120 = "": var_134 = "": var_148 = "": var_150 = "": var_154 = "": var_15C = "": var_164 = "": var_178 = "": var_180 = ""
  loc_C26E6D: FFreeVar var_AC = "": var_BC = "": var_FC = "": var_CC = "": var_DC = "": var_144 = "": var_174 = ""
  loc_C26E80: Branch loc_C2705F
  loc_C26E83: FLdI2 var_104
  loc_C26E86: LitI2_Byte 2
  loc_C26E88: EqI2
  loc_C26E89: BranchF loc_C2705F
  loc_C26E8C: FLdRfVar var_90
  loc_C26E8F: FLdPr Me
  loc_C26E92: VCallAd Control_ID_PeriOrdeTxt
  loc_C26E95: FStAdFunc var_98
  loc_C26E98: FLdPr var_98
  loc_C26E9B:  = Me.Text
  loc_C26EA0: FLdRfVar var_102
  loc_C26EA3: FLdPr Me
  loc_C26EA6: MemLdRfVar from_stack_1.global_52
  loc_C26EA9: NewIfNullPr clsservceme
  loc_C26EAC: from_stack_1 = clsservceme.CodiSece
  loc_C26EB1: FLdRfVar var_10C
  loc_C26EB4: FLdPr Me
  loc_C26EB7: VCallAd Control_ID_DetaSeceTxt
  loc_C26EBA: FStAdFunc var_108
  loc_C26EBD: FLdPr var_108
  loc_C26EC0:  = Me.Text
  loc_C26EC5: FLdPr Me
  loc_C26EC8: VCallAd Control_ID_CodiCemeMsk
  loc_C26ECB: FStAdFunc var_110
  loc_C26ECE: FLdPr var_110
  loc_C26ED1: LateIdLdVar var_AC DispID_22 0
  loc_C26ED8: PopAd
  loc_C26EDA: FLdPr Me
  loc_C26EDD: VCallAd Control_ID_CodiCemeMsk
  loc_C26EE0: FStAdFunc var_118
  loc_C26EE3: FLdPr var_118
  loc_C26EE6: LateIdLdVar var_BC DispID_22 0
  loc_C26EED: CStrVarTmp
  loc_C26EEE: CVarStr var_DC
  loc_C26EF1: LitVarI2 var_CC, 0
  loc_C26EF6: FLdRfVar var_AC
  loc_C26EF9: CStrVarTmp
  loc_C26EFA: FStStrNoPop var_114
  loc_C26EFD: LitStr vbNullString
  loc_C26F00: EqStr
  loc_C26F02: CVarBoolI2 var_FC
  loc_C26F06: FLdRfVar var_EC
  loc_C26F09: ImpAdCallFPR4  = IIf(, , )
  loc_C26F0E: FLdPr Me
  loc_C26F11: VCallAd Control_ID_CodiTiseMsk
  loc_C26F14: FStAdFunc var_120
  loc_C26F17: FLdPr var_120
  loc_C26F1A: LateIdLdVar var_144 DispID_22 0
  loc_C26F21: PopAd
  loc_C26F23: FLdRfVar var_11C
  loc_C26F26: FLdPr Me
  loc_C26F29: VCallAd Control_ID_SeccDifuTxt
  loc_C26F2C: FStAdFunc var_134
  loc_C26F2F: FLdPr var_134
  loc_C26F32:  = Me.Text
  loc_C26F37: FLdRfVar var_15E
  loc_C26F3A: FLdPr Me
  loc_C26F3D: VCallAd Control_ID_PlanDifuCbo
  loc_C26F40: FStAdFunc var_148
  loc_C26F43: FLdPr var_148
  loc_C26F46:  = Me.ListIndex
  loc_C26F4B: FLdRfVar var_14C
  loc_C26F4E: FLdPr Me
  loc_C26F51: VCallAd Control_ID_FilaDifuTxt
  loc_C26F54: FStAdFunc var_150
  loc_C26F57: FLdPr var_150
  loc_C26F5A:  = Me.Text
  loc_C26F5F: FLdRfVar var_196
  loc_C26F62: FLdPr Me
  loc_C26F65: VCallAd Control_ID_ParvDifuChk
  loc_C26F68: FStAdFunc var_154
  loc_C26F6B: FLdPr var_154
  loc_C26F6E:  = Me.Value
  loc_C26F73: FLdPr Me
  loc_C26F76: VCallAd Control_ID_AnioSeceMsk
  loc_C26F79: FStAdFunc var_15C
  loc_C26F7C: FLdPr var_15C
  loc_C26F7F: LateIdLdVar var_174 DispID_22 0
  loc_C26F86: PopAd
  loc_C26F88: FLdRfVar var_158
  loc_C26F8B: FLdPr Me
  loc_C26F8E: VCallAd Control_ID_CodiConcTxt
  loc_C26F91: FStAdFunc var_164
  loc_C26F94: FLdPr var_164
  loc_C26F97:  = Me.Text
  loc_C26F9C: FLdRfVar var_17C
  loc_C26F9F: FLdPr Me
  loc_C26FA2: VCallAd Control_ID_EmisionCbo
  loc_C26FA5: FStAdFunc var_178
  loc_C26FA8: FLdPr var_178
  loc_C26FAB:  = Me.Text
  loc_C26FB0: FLdRfVar var_184
  loc_C26FB3: FLdPr Me
  loc_C26FB6: VCallAd Control_ID_ImpoSeceTxt
  loc_C26FB9: FStAdFunc var_180
  loc_C26FBC: FLdPr var_180
  loc_C26FBF:  = Me.Text
  loc_C26FC4: ILdRf var_184
  loc_C26FC7: CR8Str
  loc_C26FC9: PopFPR8
  loc_C26FCA: FLdPr Me
  loc_C26FCD: MemLdStr global_64
  loc_C26FD0: ILdRf var_17C
  loc_C26FD3: ILdRf var_158
  loc_C26FD6: FLdRfVar var_174
  loc_C26FD9: CStrVarTmp
  loc_C26FDA: FStStrNoPop var_190
  loc_C26FDD: CI2Str
  loc_C26FDF: FLdI2 var_196
  loc_C26FE2: CUI1I2
  loc_C26FE4: ILdRf var_14C
  loc_C26FE7: CI2Str
  loc_C26FE9: FLdI2 var_15E
  loc_C26FEC: CUI1I2
  loc_C26FEE: ILdRf var_11C
  loc_C26FF1: FLdRfVar var_144
  loc_C26FF4: CStrVarTmp
  loc_C26FF5: FStStrNoPop var_18C
  loc_C26FF8: CI2Str
  loc_C26FFA: FLdRfVar var_EC
  loc_C26FFD: CUI1Var
  loc_C26FFF: ILdRf var_10C
  loc_C27002: FLdI2 var_102
  loc_C27005: ILdRf var_90
  loc_C27008: CI2Str
  loc_C2700A: FLdPr Me
  loc_C2700D: MemLdRfVar from_stack_1.global_52
  loc_C27010: NewIfNullPr clsservceme
  loc_C27013: Call clsservceme.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v)
  loc_C27018: FFreeStr var_114 = "": var_90 = "": var_10C = "": var_18C = "": var_11C = "": var_14C = "": var_190 = "": var_158 = "": var_17C = ""
  loc_C2702F: FFreeAd var_98 = "": var_108 = "": var_110 = "": var_118 = "": var_120 = "": var_134 = "": var_148 = "": var_150 = "": var_154 = "": var_15C = "": var_164 = "": var_178 = ""
  loc_C2704C: FFreeVar var_AC = "": var_BC = "": var_FC = "": var_CC = "": var_DC = "": var_144 = "": var_174 = ""
  loc_C2705F: Call cmdCancelar_Click()
  loc_C27064: Branch loc_C27183
  loc_C27067: ILdRf var_94
  loc_C2706A: LitStr "btnCancelar"
  loc_C2706D: EqStr
  loc_C2706F: BranchF loc_C2707A
  loc_C27072: Call cmdCancelar_Click()
  loc_C27077: Branch loc_C27183
  loc_C2707A: ILdRf var_94
  loc_C2707D: LitStr "btnPrimero"
  loc_C27080: EqStr
  loc_C27082: BranchF loc_C27096
  loc_C27085: FLdPr Me
  loc_C27088: MemLdRfVar from_stack_1.global_52
  loc_C2708B: NewIfNullPr clsservceme
  loc_C2708E: Call clsservceme.MoveFirst()
  loc_C27093: Branch loc_C27183
  loc_C27096: ILdRf var_94
  loc_C27099: LitStr "btnAnterior"
  loc_C2709C: EqStr
  loc_C2709E: BranchF loc_C270B2
  loc_C270A1: FLdPr Me
  loc_C270A4: MemLdRfVar from_stack_1.global_52
  loc_C270A7: NewIfNullPr clsservceme
  loc_C270AA: Call clsservceme.MovePrevious()
  loc_C270AF: Branch loc_C27183
  loc_C270B2: ILdRf var_94
  loc_C270B5: LitStr "btnSiguiente"
  loc_C270B8: EqStr
  loc_C270BA: BranchF loc_C270CE
  loc_C270BD: FLdPr Me
  loc_C270C0: MemLdRfVar from_stack_1.global_52
  loc_C270C3: NewIfNullPr clsservceme
  loc_C270C6: Call clsservceme.MoveNext()
  loc_C270CB: Branch loc_C27183
  loc_C270CE: ILdRf var_94
  loc_C270D1: LitStr "btnUltimo"
  loc_C270D4: EqStr
  loc_C270D6: BranchF loc_C270EA
  loc_C270D9: FLdPr Me
  loc_C270DC: MemLdRfVar from_stack_1.global_52
  loc_C270DF: NewIfNullPr clsservceme
  loc_C270E2: Call clsservceme.MoveLast()
  loc_C270E7: Branch loc_C27183
  loc_C270EA: ILdRf var_94
  loc_C270ED: LitStr "btnFiltrar"
  loc_C270F0: EqStr
  loc_C270F2: BranchF loc_C270F8
  loc_C270F5: Branch loc_C27183
  loc_C270F8: ILdRf var_94
  loc_C270FB: LitStr "btnBuscar"
  loc_C270FE: EqStr
  loc_C27100: BranchF loc_C27106
  loc_C27103: Branch loc_C27183
  loc_C27106: ILdRf var_94
  loc_C27109: LitStr "btnImprimir"
  loc_C2710C: EqStr
  loc_C2710E: BranchF loc_C2712C
  loc_C27111: LitVar_Missing var_130
  loc_C27114: PopAdLdVar
  loc_C27115: LitVarI4
  loc_C2711D: PopAdLdVar
  loc_C2711E: ImpAdLdRf MemVar_D94AE8
  loc_C27121: NewIfNullPr rptListadodeServiciosdeCementerio
  loc_C27124: rptListadodeServiciosdeCementerio.Show from_stack_1, from_stack_2
  loc_C27129: Branch loc_C27183
  loc_C2712C: ILdRf var_94
  loc_C2712F: LitStr "btnAyuda"
  loc_C27132: EqStr
  loc_C27134: BranchF loc_C27163
  loc_C27137: LitVar_Missing var_DC
  loc_C2713A: LitVar_Missing var_CC
  loc_C2713D: LitVar_Missing var_BC
  loc_C27140: LitI4 0
  loc_C27145: LitVarStr var_FC, "Opcion no disponible en esta version."
  loc_C2714A: FStVarCopyObj var_AC
  loc_C2714D: FLdRfVar var_AC
  loc_C27150: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C27155: FFreeVar var_AC = "": var_BC = "": var_CC = ""
  loc_C27160: Branch loc_C27183
  loc_C27163: ILdRf var_94
  loc_C27166: LitStr "btnSalir"
  loc_C27169: EqStr
  loc_C2716B: BranchF loc_C27183
  loc_C2716E: ILdRf Me
  loc_C27171: FStAdNoPop
  loc_C27175: ImpAdLdRf MemVar_D9C5D8
  loc_C27178: NewIfNullPr Global
  loc_C2717B: Global.Unload from_stack_1
  loc_C27180: FFree1Ad var_98
  loc_C27183: ExitProcHresult
End Sub

Private Sub DetaSeceTxt_GotFocus() '9C2E28
  'Data Table: 50A22C
  loc_9C2E14: FLdPr Me
  loc_9C2E17: VCallAd Control_ID_DetaSeceTxt
  loc_9C2E1A: CVarAd
  loc_9C2E1E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2E23: FFree1Var var_94 = ""
  loc_9C2E26: ExitProcHresult
End Sub

Private Sub DetaSeceTxt_Validate(Cancel As Boolean) 'A9153C
  'Data Table: 50A22C
  loc_A9149C: FLdRfVar var_8A
  loc_A9149F: FLdPr Me
  loc_A914A2: VCallAd Control_ID_cmdCancelar
  loc_A914A5: FStAdFunc var_88
  loc_A914A8: FLdPr var_88
  loc_A914AB:  = Me.Value
  loc_A914B0: FLdI2 var_8A
  loc_A914B3: NotI4
  loc_A914B4: FLdRfVar var_92
  loc_A914B7: FLdPr Me
  loc_A914BA: VCallAd Control_ID_DetaSeceTxt
  loc_A914BD: FStAdFunc var_90
  loc_A914C0: FLdPr var_90
  loc_A914C3:  = Me.Enabled
  loc_A914C8: FLdI2 var_92
  loc_A914CB: AndI4
  loc_A914CC: FFreeAd var_88 = ""
  loc_A914D3: BranchF loc_A91539
  loc_A914D6: FLdRfVar var_98
  loc_A914D9: FLdPr Me
  loc_A914DC: VCallAd Control_ID_DetaSeceTxt
  loc_A914DF: FStAdFunc var_88
  loc_A914E2: FLdPr var_88
  loc_A914E5:  = Me.Text
  loc_A914EA: ILdRf var_98
  loc_A914ED: LitStr "Servicio de Cementerio"
  loc_A914F0: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A914F5: FStStrNoPop var_9C
  loc_A914F8: FLdPr Me
  loc_A914FB: MemStStrCopy
  loc_A914FF: FFreeStr var_98 = ""
  loc_A91506: FFree1Ad var_88
  loc_A91509: FLdPr Me
  loc_A9150C: MemLdStr global_60
  loc_A9150F: LitStr vbNullString
  loc_A91512: NeStr
  loc_A91514: BranchF loc_A91539
  loc_A91517: FLdPr Me
  loc_A9151A: MemLdStr global_60
  loc_A9151D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A91522: FLdPr Me
  loc_A91525: VCallAd Control_ID_DetaSeceTxt
  loc_A91528: CVarAd
  loc_A9152C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A91531: FFree1Var var_AC = ""
  loc_A91534: LitI2_Byte &HFF
  loc_A91536: IStI2 Cancel
  loc_A91539: ExitProcHresult
End Sub

Private Sub CodiConcTxt_GotFocus() '9C2C30
  'Data Table: 50A22C
  loc_9C2C1C: FLdPr Me
  loc_9C2C1F: VCallAd Control_ID_CodiConcTxt
  loc_9C2C22: CVarAd
  loc_9C2C26: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2C2B: FFree1Var var_94 = ""
  loc_9C2C2E: ExitProcHresult
End Sub

Private Sub CodiConcTxt_KeyPress(KeyAscii As Integer) 'AA8F10
  'Data Table: 50A22C
  loc_AA8E44: ILdI2 KeyAscii
  loc_AA8E47: CI4UI1
  loc_AA8E48: LitI4 &H20
  loc_AA8E4D: EqI4
  loc_AA8E4E: BranchF loc_AA8F0D
  loc_AA8E51: ImpAdLdI2 MemVar_D93034
  loc_AA8E54: ImpAdLdRf MemVar_D947E0
  loc_AA8E57: NewIfNullPr dlgBuscarConcepto
  loc_AA8E5A: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AA8E5F: LitVar_Missing var_A4
  loc_AA8E62: PopAdLdVar
  loc_AA8E63: LitVarI4
  loc_AA8E6B: PopAdLdVar
  loc_AA8E6C: ImpAdLdRf MemVar_D947E0
  loc_AA8E6F: NewIfNullPr dlgBuscarConcepto
  loc_AA8E72: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AA8E77: FLdRfVar var_AC
  loc_AA8E7A: FLdRfVar var_A8
  loc_AA8E7D: ImpAdLdRf MemVar_D947E0
  loc_AA8E80: NewIfNullPr dlgBuscarConcepto
  loc_AA8E83: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AA8E88: FLdPr var_A8
  loc_AA8E8B: from_stack_1 = clsconcepto.RecordCount
  loc_AA8E90: ILdRf var_AC
  loc_AA8E93: LitI4 0
  loc_AA8E98: GtI4
  loc_AA8E99: FFree1Ad var_A8
  loc_AA8E9C: BranchF loc_AA8F0D
  loc_AA8E9F: FLdRfVar var_B0
  loc_AA8EA2: FLdRfVar var_A8
  loc_AA8EA5: ImpAdLdRf MemVar_D947E0
  loc_AA8EA8: NewIfNullPr dlgBuscarConcepto
  loc_AA8EAB: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AA8EB0: FLdPr var_A8
  loc_AA8EB3: from_stack_1 = clsconcepto.CodiConc
  loc_AA8EB8: ILdRf var_B0
  loc_AA8EBB: FLdPr Me
  loc_AA8EBE: VCallAd Control_ID_CodiConcTxt
  loc_AA8EC1: FStAdFunc var_B4
  loc_AA8EC4: FLdPr var_B4
  loc_AA8EC7: Me.Text = from_stack_1
  loc_AA8ECC: FFree1Str var_B0
  loc_AA8ECF: FFreeAd var_A8 = ""
  loc_AA8ED6: FLdRfVar var_B0
  loc_AA8ED9: FLdRfVar var_A8
  loc_AA8EDC: ImpAdLdRf MemVar_D947E0
  loc_AA8EDF: NewIfNullPr dlgBuscarConcepto
  loc_AA8EE2: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AA8EE7: FLdPr var_A8
  loc_AA8EEA: from_stack_1 = clsconcepto.DetaConc
  loc_AA8EEF: ILdRf var_B0
  loc_AA8EF2: FLdPr Me
  loc_AA8EF5: VCallAd Control_ID_DetaConcLbl
  loc_AA8EF8: FStAdFunc var_B4
  loc_AA8EFB: FLdPr var_B4
  loc_AA8EFE: Me.Caption = from_stack_1
  loc_AA8F03: FFree1Str var_B0
  loc_AA8F06: FFreeAd var_A8 = ""
  loc_AA8F0D: ExitProcHresult
End Sub

Private Sub CodiConcTxt_Validate(Cancel As Boolean) 'ABB570
  'Data Table: 50A22C
  loc_ABB480: FLdRfVar var_8A
  loc_ABB483: FLdPr Me
  loc_ABB486: VCallAd Control_ID_cmdCancelar
  loc_ABB489: FStAdFunc var_88
  loc_ABB48C: FLdPr var_88
  loc_ABB48F:  = Me.Value
  loc_ABB494: FLdI2 var_8A
  loc_ABB497: NotI4
  loc_ABB498: FLdRfVar var_92
  loc_ABB49B: FLdPr Me
  loc_ABB49E: VCallAd Control_ID_CodiConcTxt
  loc_ABB4A1: FStAdFunc var_90
  loc_ABB4A4: FLdPr var_90
  loc_ABB4A7:  = Me.Enabled
  loc_ABB4AC: FLdI2 var_92
  loc_ABB4AF: AndI4
  loc_ABB4B0: FFreeAd var_88 = ""
  loc_ABB4B7: BranchF loc_ABB56E
  loc_ABB4BA: FLdRfVar var_98
  loc_ABB4BD: FLdPr Me
  loc_ABB4C0: VCallAd Control_ID_CodiConcTxt
  loc_ABB4C3: FStAdFunc var_88
  loc_ABB4C6: FLdPr var_88
  loc_ABB4C9:  = Me.Text
  loc_ABB4CE: LitI2_Byte 0
  loc_ABB4D0: LitI2_Byte 0
  loc_ABB4D2: LitI2_Byte 0
  loc_ABB4D4: LitI2_Byte &HFF
  loc_ABB4D6: LitI2_Byte &HFF
  loc_ABB4D8: LitI2_Byte 0
  loc_ABB4DA: LitI2_Byte 0
  loc_ABB4DC: LitI2_Byte 0
  loc_ABB4DE: LitI2_Byte &HFF
  loc_ABB4E0: ILdRf var_98
  loc_ABB4E3: ImpAdLdI2 MemVar_D93034
  loc_ABB4E6: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_ABB4EB: FStStrNoPop var_9C
  loc_ABB4EE: FLdPr Me
  loc_ABB4F1: MemStStrCopy
  loc_ABB4F5: FFreeStr var_98 = ""
  loc_ABB4FC: FFree1Ad var_88
  loc_ABB4FF: FLdPr Me
  loc_ABB502: VCallAd Control_ID_CodiConcTxt
  loc_ABB505: FStAdFuncNoPop
  loc_ABB508: CastAd
  loc_ABB50B: FStAdFunc var_90
  loc_ABB50E: FLdRfVar var_90
  loc_ABB511: FLdPr Me
  loc_ABB514: MemLdStr global_60
  loc_ABB517: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ABB51C: IStI2 Cancel
  loc_ABB51F: FFreeAd var_88 = ""
  loc_ABB526: ILdI2 Cancel
  loc_ABB529: NotI4
  loc_ABB52A: BranchF loc_ABB56E
  loc_ABB52D: FLdRfVar var_98
  loc_ABB530: FLdPr Me
  loc_ABB533: VCallAd Control_ID_CodiConcTxt
  loc_ABB536: FStAdFunc var_88
  loc_ABB539: FLdPr var_88
  loc_ABB53C:  = Me.Text
  loc_ABB541: ILdRf var_98
  loc_ABB544: ImpAdLdI2 MemVar_D93034
  loc_ABB547: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_ABB54C: FStStrNoPop var_9C
  loc_ABB54F: FLdPr Me
  loc_ABB552: VCallAd Control_ID_DetaConcLbl
  loc_ABB555: FStAdFunc var_90
  loc_ABB558: FLdPr var_90
  loc_ABB55B: Me.Caption = from_stack_1
  loc_ABB560: FFreeStr var_98 = ""
  loc_ABB567: FFreeAd var_88 = ""
  loc_ABB56E: ExitProcHresult
End Sub

Private Sub Form_Load() 'B0F4A8
  'Data Table: 50A22C
  loc_B0F270: LitI2_Byte 0
  loc_B0F272: CR8I2
  loc_B0F273: PopFPR4
  loc_B0F274: FLdPr Me
  loc_B0F277: Me.Left = from_stack_1s
  loc_B0F27C: LitI2_Byte 0
  loc_B0F27E: CR8I2
  loc_B0F27F: PopFPR4
  loc_B0F280: FLdPr Me
  loc_B0F283: Me.Top = from_stack_1s
  loc_B0F288: Call Proc_208_39_AA731C()
  loc_B0F28D: LitI4 0
  loc_B0F292: LitI4 1
  loc_B0F297: FLdRfVar var_88
  loc_B0F29A: Redim
  loc_B0F2A4: FLdPr Me
  loc_B0F2A7: MemLdRfVar from_stack_1.global_52
  loc_B0F2AA: NewIfNullAd
  loc_B0F2AD: FStAd var_8C 
  loc_B0F2B1: FLdRfVar var_8C
  loc_B0F2B4: CVarRef
  loc_B0F2B9: ParmAry1St
  loc_B0F2BF: FLdPr Me
  loc_B0F2C2: VCallAd Control_ID_dgdABMS
  loc_B0F2C5: CVarAd
  loc_B0F2C9: ParmAry1St
  loc_B0F2CF: FLdRfVar var_88
  loc_B0F2D2: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B0F2D7: ILdRf var_8C
  loc_B0F2DA: CastAd
  loc_B0F2DD: FLdPr Me
  loc_B0F2E0: MemStAdFunc
  loc_B0F2E4: FLdRfVar var_88
  loc_B0F2E7: Erase
  loc_B0F2E8: FFree1Ad var_8C
  loc_B0F2EB: Call cmdCancelar_Click()
  loc_B0F2F0: LitVar_Missing var_9C
  loc_B0F2F3: PopAdLdVar
  loc_B0F2F4: LitStr "Planta Baja"
  loc_B0F2F7: FLdPr Me
  loc_B0F2FA: VCallAd Control_ID_PlanDifuCbo
  loc_B0F2FD: FStAdFunc var_8C
  loc_B0F300: FLdPr var_8C
  loc_B0F303: Me.AddItem from_stack_1, from_stack_2
  loc_B0F308: FFree1Ad var_8C
  loc_B0F30B: LitVar_Missing var_9C
  loc_B0F30E: PopAdLdVar
  loc_B0F30F: LitStr "Planta Alta"
  loc_B0F312: FLdPr Me
  loc_B0F315: VCallAd Control_ID_PlanDifuCbo
  loc_B0F318: FStAdFunc var_8C
  loc_B0F31B: FLdPr var_8C
  loc_B0F31E: Me.AddItem from_stack_1, from_stack_2
  loc_B0F323: FFree1Ad var_8C
  loc_B0F326: LitVar_Missing var_9C
  loc_B0F329: PopAdLdVar
  loc_B0F32A: LitStr vbNullString
  loc_B0F32D: FLdPr Me
  loc_B0F330: VCallAd Control_ID_PlanDifuCbo
  loc_B0F333: FStAdFunc var_8C
  loc_B0F336: FLdPr var_8C
  loc_B0F339: Me.AddItem from_stack_1, from_stack_2
  loc_B0F33E: FFree1Ad var_8C
  loc_B0F341: LitVar_Missing var_9C
  loc_B0F344: PopAdLdVar
  loc_B0F345: LitStr "Masiva"
  loc_B0F348: FLdPr Me
  loc_B0F34B: VCallAd Control_ID_EmisionCbo
  loc_B0F34E: FStAdFunc var_8C
  loc_B0F351: FLdPr var_8C
  loc_B0F354: Me.AddItem from_stack_1, from_stack_2
  loc_B0F359: FFree1Ad var_8C
  loc_B0F35C: LitVar_Missing var_9C
  loc_B0F35F: PopAdLdVar
  loc_B0F360: LitStr "Normal"
  loc_B0F363: FLdPr Me
  loc_B0F366: VCallAd Control_ID_EmisionCbo
  loc_B0F369: FStAdFunc var_8C
  loc_B0F36C: FLdPr var_8C
  loc_B0F36F: Me.AddItem from_stack_1, from_stack_2
  loc_B0F374: FFree1Ad var_8C
  loc_B0F377: LitVar_Missing var_9C
  loc_B0F37A: PopAdLdVar
  loc_B0F37B: LitStr "Especial"
  loc_B0F37E: FLdPr Me
  loc_B0F381: VCallAd Control_ID_EmisionCbo
  loc_B0F384: FStAdFunc var_8C
  loc_B0F387: FLdPr var_8C
  loc_B0F38A: Me.AddItem from_stack_1, from_stack_2
  loc_B0F38F: FFree1Ad var_8C
  loc_B0F392: LitI4 0
  loc_B0F397: LitI2_Byte 0
  loc_B0F399: FLdPr Me
  loc_B0F39C: VCallAd Control_ID_EmisionCbo
  loc_B0F39F: FStAdFunc var_8C
  loc_B0F3A2: FLdPr var_8C
  loc_B0F3A5: Me.ItemData = from_stack_1
  loc_B0F3AA: FFree1Ad var_8C
  loc_B0F3AD: LitI4 1
  loc_B0F3B2: LitI2_Byte 1
  loc_B0F3B4: FLdPr Me
  loc_B0F3B7: VCallAd Control_ID_EmisionCbo
  loc_B0F3BA: FStAdFunc var_8C
  loc_B0F3BD: FLdPr var_8C
  loc_B0F3C0: Me.ItemData = from_stack_1
  loc_B0F3C5: FFree1Ad var_8C
  loc_B0F3C8: LitI2_Byte 0
  loc_B0F3CA: FLdPr Me
  loc_B0F3CD: VCallAd Control_ID_EmisionCbo
  loc_B0F3D0: FStAdFunc var_8C
  loc_B0F3D3: FLdPr var_8C
  loc_B0F3D6: Me.ListIndex = from_stack_1
  loc_B0F3DB: FFree1Ad var_8C
  loc_B0F3DE: LitI2_Byte &HFF
  loc_B0F3E0: FLdPr Me
  loc_B0F3E3: VCallAd Control_ID_FrecSeceAnualOpt
  loc_B0F3E6: FStAdFunc var_8C
  loc_B0F3E9: FLdPr var_8C
  loc_B0F3EC: Me.Value = from_stack_1b
  loc_B0F3F1: FFree1Ad var_8C
  loc_B0F3F4: LitVarI2 var_9C, 0
  loc_B0F3F9: PopAdLdVar
  loc_B0F3FA: LitStr "Periodo"
  loc_B0F3FD: FLdPr Me
  loc_B0F400: VCallAd Control_ID_FiltroCbo
  loc_B0F403: FStAdFunc var_8C
  loc_B0F406: FLdPr var_8C
  loc_B0F409: Me.AddItem from_stack_1, from_stack_2
  loc_B0F40E: FFree1Ad var_8C
  loc_B0F411: LitVarI2 var_9C, 1
  loc_B0F416: PopAdLdVar
  loc_B0F417: LitStr "Código"
  loc_B0F41A: FLdPr Me
  loc_B0F41D: VCallAd Control_ID_FiltroCbo
  loc_B0F420: FStAdFunc var_8C
  loc_B0F423: FLdPr var_8C
  loc_B0F426: Me.AddItem from_stack_1, from_stack_2
  loc_B0F42B: FFree1Ad var_8C
  loc_B0F42E: LitVarI2 var_9C, 2
  loc_B0F433: PopAdLdVar
  loc_B0F434: LitStr "Detalle"
  loc_B0F437: FLdPr Me
  loc_B0F43A: VCallAd Control_ID_FiltroCbo
  loc_B0F43D: FStAdFunc var_8C
  loc_B0F440: FLdPr var_8C
  loc_B0F443: Me.AddItem from_stack_1, from_stack_2
  loc_B0F448: FFree1Ad var_8C
  loc_B0F44B: LitI2_Byte 0
  loc_B0F44D: FLdPr Me
  loc_B0F450: VCallAd Control_ID_FiltroCbo
  loc_B0F453: FStAdFunc var_8C
  loc_B0F456: FLdPr var_8C
  loc_B0F459: Me.ListIndex = from_stack_1
  loc_B0F45E: FFree1Ad var_8C
  loc_B0F461: LitI4 0
  loc_B0F466: LitI4 1
  loc_B0F46B: FLdRfVar var_88
  loc_B0F46E: Redim
  loc_B0F478: FLdPr Me
  loc_B0F47B: VCallAd Control_ID_FiltroCbo
  loc_B0F47E: CVarAd
  loc_B0F482: ParmAry1St
  loc_B0F488: FLdPr Me
  loc_B0F48B: VCallAd Control_ID_FiltroMsk
  loc_B0F48E: CVarAd
  loc_B0F492: ParmAry1St
  loc_B0F498: FLdRfVar var_88
  loc_B0F49B: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B0F4A0: FLdRfVar var_88
  loc_B0F4A3: Erase
  loc_B0F4A4: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A62B20
  'Data Table: 50A22C
  loc_A62AC4: FLdRfVar var_C2
  loc_A62AC7: FLdRfVar var_C0
  loc_A62ACA: LitVarI2 var_B8, 1
  loc_A62ACF: FLdPr Me
  loc_A62AD2: VCallAd Control_ID_tlbABMS
  loc_A62AD5: FStAdFunc var_88
  loc_A62AD8: FLdPr var_88
  loc_A62ADB: LateIdLdVar var_98 DispID_3 0
  loc_A62AE2: CastAdVar Me
  loc_A62AE6: FStAdFunc var_BC
  loc_A62AE9: FLdPr var_BC
  loc_A62AEC:  = Me.Buttons.ControlDefault
  loc_A62AF1: FLdPr var_C0
  loc_A62AF4:  = Me.Enabled
  loc_A62AF9: FLdI2 var_C2
  loc_A62AFC: FFreeAd var_88 = "": var_BC = ""
  loc_A62B05: FFreeVar var_98 = ""
  loc_A62B0C: BranchF loc_A62B1D
  loc_A62B0F: FLdPr Me
  loc_A62B12: MemLdRfVar from_stack_1.global_52
  loc_A62B15: NewIfNullPr clsservceme
  loc_A62B18: Call clsservceme.Requery()
  loc_A62B1D: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9D4F78
  'Data Table: 50A22C
  loc_9D4F60: ILdI2 KeyAscii
  loc_9D4F63: LitI2_Byte &HD
  loc_9D4F65: EqI2
  loc_9D4F66: BranchF loc_9D4F77
  loc_9D4F69: LitVar_TRUE var_A4
  loc_9D4F6C: LitStr "{Tab}"
  loc_9D4F6F: ImpAdCallFPR4 SendKeys , 
  loc_9D4F74: FFree1Var var_A4 = ""
  loc_9D4F77: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D51D8
  'Data Table: 50A22C
  loc_9D51C0: ILdI2 KeyCode
  loc_9D51C3: ILdRf Me
  loc_9D51C6: CastAd
  loc_9D51C9: FStAdFunc var_88
  loc_9D51CC: FLdRfVar var_88
  loc_9D51CF: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D51D4: FFree1Ad var_88
  loc_9D51D7: ExitProcHresult
End Sub

Private Sub ImpoSeceTxt_GotFocus() '9C6F68
  'Data Table: 50A22C
  loc_9C6F54: FLdPr Me
  loc_9C6F57: VCallAd Control_ID_ImpoSeceTxt
  loc_9C6F5A: CVarAd
  loc_9C6F5E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6F63: FFree1Var var_94 = ""
  loc_9C6F66: ExitProcHresult
End Sub

Private Sub ImpoSeceTxt_KeyPress(KeyAscii As Integer) 'A08688
  'Data Table: 50A22C
  loc_A08654: LitStr "1234567890,."
  loc_A08657: FStStrCopy var_88
  loc_A0865A: FLdRfVar var_88
  loc_A0865D: ILdRf KeyAscii
  loc_A08660: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A08665: IStI2 KeyAscii
  loc_A08668: FFree1Str var_88
  loc_A0866B: ILdI2 KeyAscii
  loc_A0866E: LitStr "."
  loc_A08671: ImpAdCallI2 Asc()
  loc_A08676: EqI2
  loc_A08677: BranchF loc_A08685
  loc_A0867A: LitStr ","
  loc_A0867D: ImpAdCallI2 Asc()
  loc_A08682: IStI2 KeyAscii
  loc_A08685: ExitProcHresult
End Sub

Private Sub ImpoSeceTxt_LostFocus() 'A74838
  'Data Table: 50A22C
  loc_A747D4: FLdRfVar var_8C
  loc_A747D7: FLdPr Me
  loc_A747DA: VCallAd Control_ID_ImpoSeceTxt
  loc_A747DD: FStAdFunc var_88
  loc_A747E0: FLdPr var_88
  loc_A747E3:  = Me.Text
  loc_A747E8: LitI4 1
  loc_A747ED: LitI4 1
  loc_A747F2: LitVarStr var_AC, "0.000"
  loc_A747F7: FStVarCopyObj var_BC
  loc_A747FA: FLdRfVar var_BC
  loc_A747FD: FLdZeroAd var_8C
  loc_A74800: CVarStr var_9C
  loc_A74803: FLdRfVar var_CC
  loc_A74806: ImpAdCallFPR4  = Format(, )
  loc_A7480B: FLdRfVar var_CC
  loc_A7480E: CStrVarVal var_D0
  loc_A74812: FLdPr Me
  loc_A74815: VCallAd Control_ID_ImpoSeceTxt
  loc_A74818: FStAdFunc var_D4
  loc_A7481B: FLdPr var_D4
  loc_A7481E: Me.Text = from_stack_1
  loc_A74823: FFree1Str var_D0
  loc_A74826: FFreeAd var_88 = ""
  loc_A7482D: FFreeVar var_9C = "": var_BC = ""
  loc_A74836: ExitProcHresult
End Sub

Private Sub ImpoSeceTxt_Validate(Cancel As Boolean) 'A948B8
  'Data Table: 50A22C
  loc_A94810: FLdRfVar var_8A
  loc_A94813: FLdPr Me
  loc_A94816: VCallAd Control_ID_cmdCancelar
  loc_A94819: FStAdFunc var_88
  loc_A9481C: FLdPr var_88
  loc_A9481F:  = Me.Value
  loc_A94824: FLdI2 var_8A
  loc_A94827: NotI4
  loc_A94828: FLdRfVar var_92
  loc_A9482B: FLdPr Me
  loc_A9482E: VCallAd Control_ID_ImpoSeceTxt
  loc_A94831: FStAdFunc var_90
  loc_A94834: FLdPr var_90
  loc_A94837:  = Me.Enabled
  loc_A9483C: FLdI2 var_92
  loc_A9483F: LitI2_Byte &HFF
  loc_A94841: EqI2
  loc_A94842: AndI4
  loc_A94843: FFreeAd var_88 = ""
  loc_A9484A: BranchF loc_A948B4
  loc_A9484D: FLdRfVar var_98
  loc_A94850: FLdPr Me
  loc_A94853: VCallAd Control_ID_ImpoSeceTxt
  loc_A94856: FStAdFunc var_88
  loc_A94859: FLdPr var_88
  loc_A9485C:  = Me.Text
  loc_A94861: LitI2_Byte &HFF
  loc_A94863: LitI2_Byte 0
  loc_A94865: ILdRf var_98
  loc_A94868: LitStr "Importe"
  loc_A9486B: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A94870: FStStrNoPop var_9C
  loc_A94873: FLdPr Me
  loc_A94876: MemStStrCopy
  loc_A9487A: FFreeStr var_98 = ""
  loc_A94881: FFree1Ad var_88
  loc_A94884: FLdPr Me
  loc_A94887: MemLdStr global_60
  loc_A9488A: LitStr vbNullString
  loc_A9488D: NeStr
  loc_A9488F: BranchF loc_A948B4
  loc_A94892: FLdPr Me
  loc_A94895: MemLdStr global_60
  loc_A94898: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9489D: FLdPr Me
  loc_A948A0: VCallAd Control_ID_ImpoSeceTxt
  loc_A948A3: CVarAd
  loc_A948A7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A948AC: FFree1Var var_AC = ""
  loc_A948AF: LitI2_Byte &HFF
  loc_A948B1: IStI2 Cancel
  loc_A948B4: ExitProcHresult
End Sub

Private Sub PeriOrdeTxt_GotFocus() '9C2A38
  'Data Table: 50A22C
  loc_9C2A24: FLdPr Me
  loc_9C2A27: VCallAd Control_ID_PeriOrdeTxt
  loc_9C2A2A: CVarAd
  loc_9C2A2E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2A33: FFree1Var var_94 = ""
  loc_9C2A36: ExitProcHresult
End Sub

Private Sub PeriOrdeTxt_Validate(Cancel As Boolean) 'AD3A50
  'Data Table: 50A22C
  loc_AD3924: FLdRfVar var_8A
  loc_AD3927: FLdPr Me
  loc_AD392A: VCallAd Control_ID_cmdCancelar
  loc_AD392D: FStAdFunc var_88
  loc_AD3930: FLdPr var_88
  loc_AD3933:  = Me.Value
  loc_AD3938: FLdI2 var_8A
  loc_AD393B: NotI4
  loc_AD393C: FLdRfVar var_92
  loc_AD393F: FLdPr Me
  loc_AD3942: VCallAd Control_ID_PeriOrdeTxt
  loc_AD3945: FStAdFunc var_90
  loc_AD3948: FLdPr var_90
  loc_AD394B:  = Me.Enabled
  loc_AD3950: FLdI2 var_92
  loc_AD3953: AndI4
  loc_AD3954: FFreeAd var_88 = ""
  loc_AD395B: BranchF loc_AD3A4F
  loc_AD395E: FLdRfVar var_98
  loc_AD3961: FLdPr Me
  loc_AD3964: VCallAd Control_ID_PeriOrdeTxt
  loc_AD3967: FStAdFunc var_88
  loc_AD396A: FLdPr var_88
  loc_AD396D:  = Me.Text
  loc_AD3972: LitI2_Byte 0
  loc_AD3974: ILdRf var_98
  loc_AD3977: LitStr "el Año"
  loc_AD397A: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_AD397F: FStStrNoPop var_9C
  loc_AD3982: FLdPr Me
  loc_AD3985: MemStStrCopy
  loc_AD3989: FFreeStr var_98 = ""
  loc_AD3990: FFree1Ad var_88
  loc_AD3993: FLdPr Me
  loc_AD3996: MemLdStr global_60
  loc_AD3999: LitStr vbNullString
  loc_AD399C: NeStr
  loc_AD399E: BranchF loc_AD39C3
  loc_AD39A1: FLdPr Me
  loc_AD39A4: MemLdStr global_60
  loc_AD39A7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD39AC: FLdPr Me
  loc_AD39AF: VCallAd Control_ID_PeriOrdeTxt
  loc_AD39B2: CVarAd
  loc_AD39B6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD39BB: FFree1Var var_AC = ""
  loc_AD39BE: LitI2_Byte &HFF
  loc_AD39C0: IStI2 Cancel
  loc_AD39C3: FLdRfVar var_8A
  loc_AD39C6: FLdRfVar var_98
  loc_AD39C9: FLdPr Me
  loc_AD39CC: VCallAd Control_ID_PeriOrdeTxt
  loc_AD39CF: FStAdFunc var_88
  loc_AD39D2: FLdPr var_88
  loc_AD39D5:  = Me.Text
  loc_AD39DA: ILdRf var_98
  loc_AD39DD: CI2Str
  loc_AD39DF: FLdPr Me
  loc_AD39E2: MemLdRfVar from_stack_1.global_52
  loc_AD39E5: NewIfNullPr clsservceme
  loc_AD39E8: from_stack_2v = clsservceme.NuevoRegistro(from_stack_1v)
  loc_AD39ED: FLdI2 var_8A
  loc_AD39F0: CStrUI1
  loc_AD39F2: FStStrNoPop var_9C
  loc_AD39F5: FLdPr Me
  loc_AD39F8: VCallAd Control_ID_CodiSeceTxt
  loc_AD39FB: FStAdFunc var_90
  loc_AD39FE: FLdPr var_90
  loc_AD3A01: Me.Text = from_stack_1
  loc_AD3A06: FFreeStr var_98 = ""
  loc_AD3A0D: FFreeAd var_88 = ""
  loc_AD3A14: FLdRfVar var_98
  loc_AD3A17: FLdPr Me
  loc_AD3A1A: VCallAd Control_ID_PeriOrdeTxt
  loc_AD3A1D: FStAdFunc var_88
  loc_AD3A20: FLdPr var_88
  loc_AD3A23:  = Me.Text
  loc_AD3A28: FLdZeroAd var_98
  loc_AD3A2B: CVarStr var_AC
  loc_AD3A2E: PopAdLdVar
  loc_AD3A2F: FLdPr Me
  loc_AD3A32: VCallAd Control_ID_FiltroMsk
  loc_AD3A35: FStAdFunc var_90
  loc_AD3A38: FLdPr var_90
  loc_AD3A3B: LateIdSt
  loc_AD3A40: FFreeAd var_88 = ""
  loc_AD3A47: FFree1Var var_AC = ""
  loc_AD3A4A: Call Proc_208_39_AA731C()
  loc_AD3A4F: ExitProcHresult
End Sub

Private Sub SeccDifuTxt_GotFocus() '9C2B10
  'Data Table: 50A22C
  loc_9C2AFC: FLdPr Me
  loc_9C2AFF: VCallAd Control_ID_SeccDifuTxt
  loc_9C2B02: CVarAd
  loc_9C2B06: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2B0B: FFree1Var var_94 = ""
  loc_9C2B0E: ExitProcHresult
End Sub

Private Sub SeccDifuTxt_Validate(Cancel As Boolean) 'AA7E88
  'Data Table: 50A22C
  loc_AA7DC4: FLdRfVar var_8A
  loc_AA7DC7: FLdPr Me
  loc_AA7DCA: VCallAd Control_ID_cmdCancelar
  loc_AA7DCD: FStAdFunc var_88
  loc_AA7DD0: FLdPr var_88
  loc_AA7DD3:  = Me.Value
  loc_AA7DD8: FLdI2 var_8A
  loc_AA7DDB: NotI4
  loc_AA7DDC: FLdRfVar var_92
  loc_AA7DDF: FLdPr Me
  loc_AA7DE2: VCallAd Control_ID_SeccDifuTxt
  loc_AA7DE5: FStAdFunc var_90
  loc_AA7DE8: FLdPr var_90
  loc_AA7DEB:  = Me.Enabled
  loc_AA7DF0: FLdI2 var_92
  loc_AA7DF3: AndI4
  loc_AA7DF4: FFreeAd var_88 = ""
  loc_AA7DFB: BranchF loc_AA7E87
  loc_AA7DFE: FLdRfVar var_98
  loc_AA7E01: FLdPr Me
  loc_AA7E04: VCallAd Control_ID_SeccDifuTxt
  loc_AA7E07: FStAdFunc var_88
  loc_AA7E0A: FLdPr var_88
  loc_AA7E0D:  = Me.Text
  loc_AA7E12: ILdRf var_98
  loc_AA7E15: LitStr vbNullString
  loc_AA7E18: NeStr
  loc_AA7E1A: FFree1Str var_98
  loc_AA7E1D: FFree1Ad var_88
  loc_AA7E20: BranchF loc_AA7E87
  loc_AA7E23: FLdRfVar var_98
  loc_AA7E26: FLdPr Me
  loc_AA7E29: VCallAd Control_ID_SeccDifuTxt
  loc_AA7E2C: FStAdFunc var_88
  loc_AA7E2F: FLdPr var_88
  loc_AA7E32:  = Me.Text
  loc_AA7E37: ILdRf var_98
  loc_AA7E3A: LitStr "ingrese el sector"
  loc_AA7E3D: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AA7E42: FStStrNoPop var_9C
  loc_AA7E45: FLdPr Me
  loc_AA7E48: MemStStrCopy
  loc_AA7E4C: FFreeStr var_98 = ""
  loc_AA7E53: FFree1Ad var_88
  loc_AA7E56: FLdPr Me
  loc_AA7E59: MemLdStr global_60
  loc_AA7E5C: LitStr vbNullString
  loc_AA7E5F: NeStr
  loc_AA7E61: BranchF loc_AA7E87
  loc_AA7E64: FLdPr Me
  loc_AA7E67: MemLdStr global_60
  loc_AA7E6A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA7E6F: FLdPr Me
  loc_AA7E72: VCallAd Control_ID_SeccDifuTxt
  loc_AA7E75: CVarAd
  loc_AA7E79: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA7E7E: FFree1Var var_AC = ""
  loc_AA7E81: LitI2_Byte &HFF
  loc_AA7E83: IStI2 Cancel
  loc_AA7E86: ExitProcHresult
  loc_AA7E87: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_GotFocus() '9C6DB8
  'Data Table: 50A22C
  loc_9C6DA4: FLdPr Me
  loc_9C6DA7: VCallAd Control_ID_FilaDifuTxt
  loc_9C6DAA: CVarAd
  loc_9C6DAE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6DB3: FFree1Var var_94 = ""
  loc_9C6DB6: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_KeyPress(KeyAscii As Integer) '9D4CCC
  'Data Table: 50A22C
  loc_9D4CB4: LitStr "0123456789"
  loc_9D4CB7: FStStrCopy var_88
  loc_9D4CBA: FLdRfVar var_88
  loc_9D4CBD: ILdRf KeyAscii
  loc_9D4CC0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D4CC5: IStI2 KeyAscii
  loc_9D4CC8: FFree1Str var_88
  loc_9D4CCB: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_Validate(Cancel As Boolean) 'AB7598
  'Data Table: 50A22C
  loc_AB74B0: FLdRfVar var_8A
  loc_AB74B3: FLdPr Me
  loc_AB74B6: VCallAd Control_ID_cmdCancelar
  loc_AB74B9: FStAdFunc var_88
  loc_AB74BC: FLdPr var_88
  loc_AB74BF:  = Me.Value
  loc_AB74C4: FLdI2 var_8A
  loc_AB74C7: NotI4
  loc_AB74C8: FLdRfVar var_92
  loc_AB74CB: FLdPr Me
  loc_AB74CE: VCallAd Control_ID_FilaDifuTxt
  loc_AB74D1: FStAdFunc var_90
  loc_AB74D4: FLdPr var_90
  loc_AB74D7:  = Me.Enabled
  loc_AB74DC: FLdI2 var_92
  loc_AB74DF: LitI2_Byte &HFF
  loc_AB74E1: EqI2
  loc_AB74E2: AndI4
  loc_AB74E3: FFreeAd var_88 = ""
  loc_AB74EA: BranchF loc_AB7595
  loc_AB74ED: FLdRfVar var_98
  loc_AB74F0: FLdPr Me
  loc_AB74F3: VCallAd Control_ID_FilaDifuTxt
  loc_AB74F6: FStAdFunc var_88
  loc_AB74F9: FLdPr var_88
  loc_AB74FC:  = Me.Text
  loc_AB7501: FLdZeroAd var_98
  loc_AB7504: CVarStr var_A8
  loc_AB7507: ImpAdCallI2 IsNumeric()
  loc_AB750C: NotI4
  loc_AB750D: FFree1Ad var_88
  loc_AB7510: FFree1Var var_A8 = ""
  loc_AB7513: BranchF loc_AB752D
  loc_AB7516: LitStr "0"
  loc_AB7519: FLdPr Me
  loc_AB751C: VCallAd Control_ID_FilaDifuTxt
  loc_AB751F: FStAdFunc var_88
  loc_AB7522: FLdPr var_88
  loc_AB7525: Me.Text = from_stack_1
  loc_AB752A: FFree1Ad var_88
  loc_AB752D: FLdRfVar var_98
  loc_AB7530: FLdPr Me
  loc_AB7533: VCallAd Control_ID_FilaDifuTxt
  loc_AB7536: FStAdFunc var_88
  loc_AB7539: FLdPr var_88
  loc_AB753C:  = Me.Text
  loc_AB7541: LitI2_Byte &HFF
  loc_AB7543: LitI2_Byte 0
  loc_AB7545: ILdRf var_98
  loc_AB7548: LitStr "ingrese la FILA"
  loc_AB754B: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AB7550: FStStrNoPop var_AC
  loc_AB7553: FLdPr Me
  loc_AB7556: MemStStrCopy
  loc_AB755A: FFreeStr var_98 = ""
  loc_AB7561: FFree1Ad var_88
  loc_AB7564: FLdPr Me
  loc_AB7567: MemLdStr global_60
  loc_AB756A: LitStr vbNullString
  loc_AB756D: NeStr
  loc_AB756F: BranchF loc_AB7595
  loc_AB7572: FLdPr Me
  loc_AB7575: MemLdStr global_60
  loc_AB7578: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB757D: FLdPr Me
  loc_AB7580: VCallAd Control_ID_FilaDifuTxt
  loc_AB7583: CVarAd
  loc_AB7587: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB758C: FFree1Var var_A8 = ""
  loc_AB758F: LitI2_Byte &HFF
  loc_AB7591: IStI2 Cancel
  loc_AB7594: ExitProcHresult
  loc_AB7595: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C28D0
  'Data Table: 50A22C
  loc_9C28BC: FLdPr Me
  loc_9C28BF: VCallAd Control_ID_FiltroMsk
  loc_9C28C2: CVarAd
  loc_9C28C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C28CB: FFree1Var var_94 = ""
  loc_9C28CE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'AB0E44
  'Data Table: 50A22C
  loc_AB0D6C: FLdRfVar var_8A
  loc_AB0D6F: FLdPr Me
  loc_AB0D72: VCallAd Control_ID_FiltroCbo
  loc_AB0D75: FStAdFunc var_88
  loc_AB0D78: FLdPr var_88
  loc_AB0D7B:  = Me.ListIndex
  loc_AB0D80: FLdI2 var_8A
  loc_AB0D83: FStI2 var_8C
  loc_AB0D86: FFree1Ad var_88
  loc_AB0D89: FLdI2 var_8C
  loc_AB0D8C: LitI2_Byte 0
  loc_AB0D8E: EqI2
  loc_AB0D8F: BranchF loc_AB0DC7
  loc_AB0D92: LitStr "Periodo que es igual a: "
  loc_AB0D95: FLdPr Me
  loc_AB0D98: VCallAd Control_ID_FiltroMsk
  loc_AB0D9B: FStAdFunc var_88
  loc_AB0D9E: FLdPr var_88
  loc_AB0DA1: LateIdLdVar var_9C DispID_22 0
  loc_AB0DA8: CStrVarTmp
  loc_AB0DA9: FStStrNoPop var_A0
  loc_AB0DAC: ConcatStr
  loc_AB0DAD: FStStrNoPop var_A4
  loc_AB0DB0: FLdPr Me
  loc_AB0DB3: MemStStrCopy
  loc_AB0DB7: FFreeStr var_A0 = ""
  loc_AB0DBE: FFree1Ad var_88
  loc_AB0DC1: FFree1Var var_9C = ""
  loc_AB0DC4: Branch loc_AB0E40
  loc_AB0DC7: FLdI2 var_8C
  loc_AB0DCA: LitI2_Byte 1
  loc_AB0DCC: EqI2
  loc_AB0DCD: BranchF loc_AB0E05
  loc_AB0DD0: LitStr "Código de Servicio que es mayor o igual a: "
  loc_AB0DD3: FLdPr Me
  loc_AB0DD6: VCallAd Control_ID_FiltroMsk
  loc_AB0DD9: FStAdFunc var_88
  loc_AB0DDC: FLdPr var_88
  loc_AB0DDF: LateIdLdVar var_9C DispID_22 0
  loc_AB0DE6: CStrVarTmp
  loc_AB0DE7: FStStrNoPop var_A0
  loc_AB0DEA: ConcatStr
  loc_AB0DEB: FStStrNoPop var_A4
  loc_AB0DEE: FLdPr Me
  loc_AB0DF1: MemStStrCopy
  loc_AB0DF5: FFreeStr var_A0 = ""
  loc_AB0DFC: FFree1Ad var_88
  loc_AB0DFF: FFree1Var var_9C = ""
  loc_AB0E02: Branch loc_AB0E40
  loc_AB0E05: FLdI2 var_8C
  loc_AB0E08: LitI2_Byte 2
  loc_AB0E0A: EqI2
  loc_AB0E0B: BranchF loc_AB0E40
  loc_AB0E0E: LitStr "Detalle que contiene: "
  loc_AB0E11: FLdPr Me
  loc_AB0E14: VCallAd Control_ID_FiltroMsk
  loc_AB0E17: FStAdFunc var_88
  loc_AB0E1A: FLdPr var_88
  loc_AB0E1D: LateIdLdVar var_9C DispID_22 0
  loc_AB0E24: CStrVarTmp
  loc_AB0E25: FStStrNoPop var_A0
  loc_AB0E28: ConcatStr
  loc_AB0E29: FStStrNoPop var_A4
  loc_AB0E2C: FLdPr Me
  loc_AB0E2F: MemStStrCopy
  loc_AB0E33: FFreeStr var_A0 = ""
  loc_AB0E3A: FFree1Ad var_88
  loc_AB0E3D: FFree1Var var_9C = ""
  loc_AB0E40: ExitProcHresult
  loc_AB0E41: CopyBytesZero
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9C291C
  'Data Table: 50A22C
  loc_9C2904: ILdI2 KeyAscii
  loc_9C2907: CI4UI1
  loc_9C2908: LitI4 &HD
  loc_9C290D: EqI4
  loc_9C290E: BranchF loc_9C291B
  loc_9C2911: Call Proc_208_39_AA731C()
  loc_9C2916: Call cmdCancelar_Click()
  loc_9C291B: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A8D5E8
  'Data Table: 50A22C
  loc_A8D540: LitVarStr var_94, vbNullString
  loc_A8D545: PopAdLdVar
  loc_A8D546: FLdPr Me
  loc_A8D549: VCallAd Control_ID_FiltroMsk
  loc_A8D54C: FStAdFunc var_A8
  loc_A8D54F: FLdPr var_A8
  loc_A8D552: LateIdSt
  loc_A8D557: FFree1Ad var_A8
  loc_A8D55A: FLdRfVar var_AA
  loc_A8D55D: FLdPr Me
  loc_A8D560: VCallAd Control_ID_FiltroCbo
  loc_A8D563: FStAdFunc var_A8
  loc_A8D566: FLdPr var_A8
  loc_A8D569:  = Me.ListIndex
  loc_A8D56E: FLdI2 var_AA
  loc_A8D571: FStI2 var_AC
  loc_A8D574: FFree1Ad var_A8
  loc_A8D577: FLdI2 var_AC
  loc_A8D57A: LitI2_Byte 0
  loc_A8D57C: EqI2
  loc_A8D57D: BranchF loc_A8D59D
  loc_A8D580: LitVarStr var_94, "####"
  loc_A8D585: PopAdLdVar
  loc_A8D586: FLdPr Me
  loc_A8D589: VCallAd Control_ID_FiltroMsk
  loc_A8D58C: FStAdFunc var_A8
  loc_A8D58F: FLdPr var_A8
  loc_A8D592: LateIdSt
  loc_A8D597: FFree1Ad var_A8
  loc_A8D59A: Branch loc_A8D5E6
  loc_A8D59D: FLdI2 var_AC
  loc_A8D5A0: LitI2_Byte 1
  loc_A8D5A2: EqI2
  loc_A8D5A3: BranchF loc_A8D5C3
  loc_A8D5A6: LitVarStr var_94, "#"
  loc_A8D5AB: PopAdLdVar
  loc_A8D5AC: FLdPr Me
  loc_A8D5AF: VCallAd Control_ID_FiltroMsk
  loc_A8D5B2: FStAdFunc var_A8
  loc_A8D5B5: FLdPr var_A8
  loc_A8D5B8: LateIdSt
  loc_A8D5BD: FFree1Ad var_A8
  loc_A8D5C0: Branch loc_A8D5E6
  loc_A8D5C3: FLdI2 var_AC
  loc_A8D5C6: LitI2_Byte 2
  loc_A8D5C8: EqI2
  loc_A8D5C9: BranchF loc_A8D5E6
  loc_A8D5CC: LitVarStr var_94, vbNullString
  loc_A8D5D1: PopAdLdVar
  loc_A8D5D2: FLdPr Me
  loc_A8D5D5: VCallAd Control_ID_FiltroMsk
  loc_A8D5D8: FStAdFunc var_A8
  loc_A8D5DB: FLdPr var_A8
  loc_A8D5DE: LateIdSt
  loc_A8D5E3: FFree1Ad var_A8
  loc_A8D5E6: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AB9684
  'Data Table: 50A22C
  loc_AB95A0: LitI2_Byte 0
  loc_AB95A2: FLdPr Me
  loc_AB95A5: MemStI2 global_56
  loc_AB95A8: LitI2_Byte 0
  loc_AB95AA: ILdRf Me
  loc_AB95AD: CastAd
  loc_AB95B0: FStAdFunc var_88
  loc_AB95B3: FLdRfVar var_88
  loc_AB95B6: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AB95BB: FFree1Ad var_88
  loc_AB95BE: LitI4 0
  loc_AB95C3: LitI4 0
  loc_AB95C8: FLdRfVar var_8C
  loc_AB95CB: Redim
  loc_AB95D5: FLdPr Me
  loc_AB95D8: VCallAd Control_ID_dgdABMS
  loc_AB95DB: CVarAd
  loc_AB95DF: ParmAry1St
  loc_AB95E5: FLdRfVar var_8C
  loc_AB95E8: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AB95ED: FLdRfVar var_8C
  loc_AB95F0: Erase
  loc_AB95F1: FLdPr Me
  loc_AB95F4: MemLdRfVar from_stack_1.global_52
  loc_AB95F7: NewIfNullAd
  loc_AB95FA: FStAd var_A0 
  loc_AB95FE: FLdRfVar var_A0
  loc_AB9601: CVarRef
  loc_AB9606: ILdRf Me
  loc_AB9609: CastAd
  loc_AB960C: FStAdFunc var_88
  loc_AB960F: FLdRfVar var_88
  loc_AB9612: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_AB9617: ILdRf var_A0
  loc_AB961A: CastAd
  loc_AB961D: FLdPr Me
  loc_AB9620: MemStAdFunc
  loc_AB9624: FFreeAd var_88 = ""
  loc_AB962B: ILdRf Me
  loc_AB962E: CastAd
  loc_AB9631: FStAdFunc var_88
  loc_AB9634: FLdRfVar var_88
  loc_AB9637: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AB963C: FFree1Ad var_88
  loc_AB963F: LitI4 0
  loc_AB9644: LitI4 1
  loc_AB9649: FLdRfVar var_8C
  loc_AB964C: Redim
  loc_AB9656: FLdPr Me
  loc_AB9659: VCallAd Control_ID_FiltroCbo
  loc_AB965C: CVarAd
  loc_AB9660: ParmAry1St
  loc_AB9666: FLdPr Me
  loc_AB9669: VCallAd Control_ID_FiltroMsk
  loc_AB966C: CVarAd
  loc_AB9670: ParmAry1St
  loc_AB9676: FLdRfVar var_8C
  loc_AB9679: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AB967E: FLdRfVar var_8C
  loc_AB9681: Erase
  loc_AB9682: ExitProcHresult
End Sub

Private Function Proc_208_39_AA731C() 'AA731C
  'Data Table: 50A22C
  loc_AA726C: LitI4 &HB
  loc_AA7271: CI2I4
  loc_AA7272: FLdPr Me
  loc_AA7275: Me.MousePointer = from_stack_1
  loc_AA727A: FLdPr Me
  loc_AA727D: VCallAd Control_ID_FiltroMsk
  loc_AA7280: FStAdFunc var_88
  loc_AA7283: FLdPr var_88
  loc_AA7286: LateIdLdVar var_98 DispID_22 0
  loc_AA728D: PopAd
  loc_AA728F: FLdPr Me
  loc_AA7292: VCallAd Control_ID_FiltroMsk
  loc_AA7295: FStAdFunc var_A0
  loc_AA7298: FLdPr var_A0
  loc_AA729B: LateIdLdVar var_B0 DispID_22 0
  loc_AA72A2: PopAd
  loc_AA72A4: LitVarStr var_E0, vbNullString
  loc_AA72A9: FStVarCopyObj var_F0
  loc_AA72AC: FLdRfVar var_F0
  loc_AA72AF: FLdRfVar var_B0
  loc_AA72B2: CStrVarTmp
  loc_AA72B3: CVarStr var_D0
  loc_AA72B6: FLdRfVar var_98
  loc_AA72B9: CStrVarTmp
  loc_AA72BA: FStStrNoPop var_9C
  loc_AA72BD: LitStr vbNullString
  loc_AA72C0: NeStr
  loc_AA72C2: CVarBoolI2 var_C0
  loc_AA72C6: FLdRfVar var_100
  loc_AA72C9: ImpAdCallFPR4  = IIf(, , )
  loc_AA72CE: FLdPr Me
  loc_AA72D1: VCallAd Control_ID_FiltroCbo
  loc_AA72D4: FStAdFuncNoPop
  loc_AA72D7: FLdRfVar var_100
  loc_AA72DA: CStrVarVal var_104
  loc_AA72DE: FLdPr Me
  loc_AA72E1: MemLdRfVar from_stack_1.global_52
  loc_AA72E4: NewIfNullPr clsservceme
  loc_AA72E7: Call clsservceme.sSelect(from_stack_1v, from_stack_2v)
  loc_AA72EC: FFreeStr var_9C = ""
  loc_AA72F3: FFreeAd var_88 = "": var_A0 = ""
  loc_AA72FC: FFreeVar var_98 = "": var_B0 = "": var_C0 = "": var_D0 = "": var_F0 = ""
  loc_AA730B: LitI4 0
  loc_AA7310: CI2I4
  loc_AA7311: FLdPr Me
  loc_AA7314: Me.MousePointer = from_stack_1
  loc_AA7319: ExitProcHresult
End Function
