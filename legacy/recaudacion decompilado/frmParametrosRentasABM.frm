VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmParametrosRentasABM
  Caption = "Parametros de Rentas"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmParametrosRentasABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15372
  ClientHeight = 10980
  Begin VB.Frame FiltroFra
    Left = 240
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 17
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox FiltroTxt
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 19
      MaxLength = 40
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
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 18
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
  Begin VB.Frame DeadConc
    Left = 240
    Top = 5760
    Width = 15255
    Height = 2895
    TabIndex = 14
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton CoapPareCmd
      Left = 6000
      Top = 2280
      Width = 450
      Height = 360
      TabIndex = 12
      Picture = "frmParametrosRentasABM.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CoadPareCmd
      Left = 6000
      Top = 1800
      Width = 450
      Height = 360
      TabIndex = 9
      Picture = "frmParametrosRentasABM.frx":3344
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CoinPareCmd
      Left = 6000
      Top = 1320
      Width = 450
      Height = 360
      TabIndex = 6
      Picture = "frmParametrosRentasABM.frx":343E
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CorePareCmd
      Left = 6000
      Top = 840
      Width = 450
      Height = 360
      TabIndex = 3
      Picture = "frmParametrosRentasABM.frx":3538
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox PeriInfoTxt
      ForeColor = &HFF0000&
      Left = 4320
      Top = 360
      Width = 855
      Height = 345
      TabIndex = 1
      MaxLength = 8
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
    Begin MSMask.MaskEdBox CorePareMsk
      Left = 4320
      Top = 840
      Width = 1575
      Height = 360
      TabIndex = 2
      OleObjectBlob = "frmParametrosRentasABM.frx":3632
      DataField = "CorePare"
    End
    Begin MSMask.MaskEdBox CoinPareMsk
      Left = 4320
      Top = 1320
      Width = 1575
      Height = 360
      TabIndex = 5
      OleObjectBlob = "frmParametrosRentasABM.frx":36D2
      DataField = "CoinPare"
    End
    Begin MSMask.MaskEdBox CoadPareMsk
      Left = 4320
      Top = 1800
      Width = 1575
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmParametrosRentasABM.frx":3772
      DataField = "CoadPare"
    End
    Begin MSMask.MaskEdBox CoapPareMsk
      Left = 4320
      Top = 2280
      Width = 1575
      Height = 360
      TabIndex = 11
      OleObjectBlob = "frmParametrosRentasABM.frx":3812
      DataField = "CoapPare"
    End
    Begin VB.Label DeapConcLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 6600
      Top = 2280
      Width = 7935
      Height = 360
      TabIndex = 13
      DataField = "DeapConc"
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
    Begin VB.Label DeadConcLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 6600
      Top = 1800
      Width = 7935
      Height = 360
      TabIndex = 10
      DataField = "DeadConc"
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
    Begin VB.Label DeinConcLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 6600
      Top = 1320
      Width = 7935
      Height = 360
      TabIndex = 7
      DataField = "DeinConc"
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
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 6600
      Top = 840
      Width = 7935
      Height = 360
      TabIndex = 4
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
    Begin VB.Label Label5
      Caption = "Concepto de Gastos de Apremio:"
      Left = 720
      Top = 2280
      Width = 3540
      Height = 300
      TabIndex = 22
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
      Caption = "Concepto de Comisión Administrativos:"
      Left = 120
      Top = 1800
      Width = 4125
      Height = 300
      TabIndex = 21
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
      Caption = "Concepto de Interes:"
      Left = 2025
      Top = 1320
      Width = 2235
      Height = 300
      TabIndex = 20
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
      Caption = "Periodo:"
      Left = 3390
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 16
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
      Caption = "Concepto de Recargo:"
      Left = 1860
      Top = 840
      Width = 2400
      Height = 300
      TabIndex = 15
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
    Left = 240
    Top = 1680
    Width = 14775
    Height = 3975
    TabIndex = 0
    OleObjectBlob = "frmParametrosRentasABM.frx":38B2
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmParametrosRentasABM.frx":3EF2
    Left = 11040
    Top = 960
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15372
    Height = 528
    TabIndex = 23
    OleObjectBlob = "frmParametrosRentasABM.frx":BA70
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 24
      TabStop = 0   'False
      Picture = "frmParametrosRentasABM.frx":BFCC
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmParametrosRentasABM"


Private Sub tlbABMS_ButtonClick(Button As Button) 'B8C794
  'Data Table: 4B00A8
  loc_B8C264: ILdRf Button
  loc_B8C267: FStAd var_88 
  loc_B8C26B: FLdRfVar var_90
  loc_B8C26E: FLdPr var_88
  loc_B8C271:  = Me.Key
  loc_B8C276: FLdZeroAd var_90
  loc_B8C279: FStStr var_94
  loc_B8C27C: ILdRf var_94
  loc_B8C27F: LitStr "btnCrear"
  loc_B8C282: EqStr
  loc_B8C284: BranchF loc_B8C35F
  loc_B8C287: LitI2_Byte 1
  loc_B8C289: FLdPr Me
  loc_B8C28C: MemStI2 global_56
  loc_B8C28F: ILdRf Me
  loc_B8C292: CastAd
  loc_B8C295: FStAdFunc var_98
  loc_B8C298: FLdRfVar var_98
  loc_B8C29B: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B8C2A0: FFree1Ad var_98
  loc_B8C2A3: LitI4 0
  loc_B8C2A8: LitI4 0
  loc_B8C2AD: FLdRfVar var_9C
  loc_B8C2B0: Redim
  loc_B8C2BA: FLdPr Me
  loc_B8C2BD: VCallAd Control_ID_dgdABMS
  loc_B8C2C0: CVarAd
  loc_B8C2C4: ParmAry1St
  loc_B8C2CA: FLdRfVar var_9C
  loc_B8C2CD: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8C2D2: FLdRfVar var_9C
  loc_B8C2D5: Erase
  loc_B8C2D6: ILdRf Me
  loc_B8C2D9: CastAd
  loc_B8C2DC: FStAdFunc var_98
  loc_B8C2DF: FLdRfVar var_98
  loc_B8C2E2: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B8C2E7: FFree1Ad var_98
  loc_B8C2EA: ILdRf Me
  loc_B8C2ED: CastAd
  loc_B8C2F0: FStAdFunc var_98
  loc_B8C2F3: FLdRfVar var_98
  loc_B8C2F6: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B8C2FB: FFree1Ad var_98
  loc_B8C2FE: LitI2_Byte 0
  loc_B8C300: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B8C305: CVarDate var_AC
  loc_B8C309: FLdRfVar var_CC
  loc_B8C30C: ImpAdCallFPR4  = Year()
  loc_B8C311: FLdRfVar var_CC
  loc_B8C314: CStrVarVal var_90
  loc_B8C318: FLdPr Me
  loc_B8C31B: VCallAd Control_ID_PeriInfoTxt
  loc_B8C31E: FStAdFunc var_98
  loc_B8C321: FLdPr var_98
  loc_B8C324: Me.Text = from_stack_1
  loc_B8C329: FFree1Str var_90
  loc_B8C32C: FFree1Ad var_98
  loc_B8C32F: FFreeVar var_AC = ""
  loc_B8C336: ILdRf Me
  loc_B8C339: CastAd
  loc_B8C33C: FStAdFunc var_98
  loc_B8C33F: FLdRfVar var_98
  loc_B8C342: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_B8C347: FFree1Ad var_98
  loc_B8C34A: FLdPr Me
  loc_B8C34D: VCallAd Control_ID_PeriInfoTxt
  loc_B8C350: CVarAd
  loc_B8C354: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B8C359: FFree1Var var_AC = ""
  loc_B8C35C: Branch loc_B8C790
  loc_B8C35F: ILdRf var_94
  loc_B8C362: LitStr "btnModificar"
  loc_B8C365: EqStr
  loc_B8C367: BranchF loc_B8C454
  loc_B8C36A: FLdRfVar var_D0
  loc_B8C36D: FLdPr Me
  loc_B8C370: MemLdRfVar from_stack_1.global_52
  loc_B8C373: NewIfNullPr clspararenta
  loc_B8C376: from_stack_1 = clspararenta.RecordCount
  loc_B8C37B: ILdRf var_D0
  loc_B8C37E: LitI4 0
  loc_B8C383: GtI4
  loc_B8C384: BranchF loc_B8C451
  loc_B8C387: LitI2_Byte 2
  loc_B8C389: FLdPr Me
  loc_B8C38C: MemStI2 global_56
  loc_B8C38F: ILdRf Me
  loc_B8C392: CastAd
  loc_B8C395: FStAdFunc var_98
  loc_B8C398: FLdRfVar var_98
  loc_B8C39B: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B8C3A0: FFree1Ad var_98
  loc_B8C3A3: LitI4 0
  loc_B8C3A8: LitI4 0
  loc_B8C3AD: FLdRfVar var_9C
  loc_B8C3B0: Redim
  loc_B8C3BA: FLdPr Me
  loc_B8C3BD: VCallAd Control_ID_dgdABMS
  loc_B8C3C0: CVarAd
  loc_B8C3C4: ParmAry1St
  loc_B8C3CA: FLdRfVar var_9C
  loc_B8C3CD: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8C3D2: FLdRfVar var_9C
  loc_B8C3D5: Erase
  loc_B8C3D6: ILdRf Me
  loc_B8C3D9: CastAd
  loc_B8C3DC: FStAdFunc var_98
  loc_B8C3DF: FLdRfVar var_98
  loc_B8C3E2: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B8C3E7: FFree1Ad var_98
  loc_B8C3EA: ILdRf Me
  loc_B8C3ED: CastAd
  loc_B8C3F0: FStAdFunc var_98
  loc_B8C3F3: FLdRfVar var_98
  loc_B8C3F6: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_B8C3FB: FFree1Ad var_98
  loc_B8C3FE: LitI4 0
  loc_B8C403: LitI4 2
  loc_B8C408: FLdRfVar var_9C
  loc_B8C40B: Redim
  loc_B8C415: FLdPr Me
  loc_B8C418: VCallAd Control_ID_FiltroCbo
  loc_B8C41B: CVarAd
  loc_B8C41F: ParmAry1St
  loc_B8C425: FLdPr Me
  loc_B8C428: VCallAd Control_ID_FiltroTxt
  loc_B8C42B: CVarAd
  loc_B8C42F: ParmAry1St
  loc_B8C435: FLdPr Me
  loc_B8C438: VCallAd Control_ID_PeriInfoTxt
  loc_B8C43B: CVarAd
  loc_B8C43F: ParmAry1St
  loc_B8C445: FLdRfVar var_9C
  loc_B8C448: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8C44D: FLdRfVar var_9C
  loc_B8C450: Erase
  loc_B8C451: Branch loc_B8C790
  loc_B8C454: ILdRf var_94
  loc_B8C457: LitStr "btnEliminar"
  loc_B8C45A: EqStr
  loc_B8C45C: BranchF loc_B8C462
  loc_B8C45F: Branch loc_B8C790
  loc_B8C462: ILdRf var_94
  loc_B8C465: LitStr "btnGuardar"
  loc_B8C468: EqStr
  loc_B8C46A: BranchF loc_B8C68C
  loc_B8C46D: LitI2_Byte 0
  loc_B8C46F: PopTmpLdAd2 var_E2
  loc_B8C472: Call PeriInfoTxt_Validate(from_stack_1v)
  loc_B8C477: FLdPr Me
  loc_B8C47A: MemLdStr global_60
  loc_B8C47D: LitStr vbNullString
  loc_B8C480: NeStr
  loc_B8C482: BranchF loc_B8C486
  loc_B8C485: ExitProcHresult
  loc_B8C486: LitI2_Byte 0
  loc_B8C488: PopTmpLdAd2 var_E2
  loc_B8C48B: Call CorePareMsk_UnknownEvent_8()
  loc_B8C490: FLdPr Me
  loc_B8C493: MemLdStr global_60
  loc_B8C496: LitStr vbNullString
  loc_B8C499: NeStr
  loc_B8C49B: BranchF loc_B8C49F
  loc_B8C49E: ExitProcHresult
  loc_B8C49F: LitI2_Byte 0
  loc_B8C4A1: PopTmpLdAd2 var_E2
  loc_B8C4A4: Call CoinPareMsk_UnknownEvent_8()
  loc_B8C4A9: FLdPr Me
  loc_B8C4AC: MemLdStr global_60
  loc_B8C4AF: LitStr vbNullString
  loc_B8C4B2: NeStr
  loc_B8C4B4: BranchF loc_B8C4B8
  loc_B8C4B7: ExitProcHresult
  loc_B8C4B8: LitI2_Byte 0
  loc_B8C4BA: PopTmpLdAd2 var_E2
  loc_B8C4BD: Call CoadPareMsk_UnknownEvent_8()
  loc_B8C4C2: FLdPr Me
  loc_B8C4C5: MemLdStr global_60
  loc_B8C4C8: LitStr vbNullString
  loc_B8C4CB: NeStr
  loc_B8C4CD: BranchF loc_B8C4D1
  loc_B8C4D0: ExitProcHresult
  loc_B8C4D1: LitI2_Byte 0
  loc_B8C4D3: PopTmpLdAd2 var_E2
  loc_B8C4D6: Call CoapPareMsk_UnknownEvent_8()
  loc_B8C4DB: FLdPr Me
  loc_B8C4DE: MemLdStr global_60
  loc_B8C4E1: LitStr vbNullString
  loc_B8C4E4: NeStr
  loc_B8C4E6: BranchF loc_B8C4EA
  loc_B8C4E9: ExitProcHresult
  loc_B8C4EA: FLdPr Me
  loc_B8C4ED: MemLdI2 global_56
  loc_B8C4F0: FStI2 var_E4
  loc_B8C4F3: FLdI2 var_E4
  loc_B8C4F6: LitI2_Byte 1
  loc_B8C4F8: EqI2
  loc_B8C4F9: BranchF loc_B8C5BD
  loc_B8C4FC: FLdRfVar var_90
  loc_B8C4FF: FLdPr Me
  loc_B8C502: VCallAd Control_ID_PeriInfoTxt
  loc_B8C505: FStAdFunc var_98
  loc_B8C508: FLdPr var_98
  loc_B8C50B:  = Me.Text
  loc_B8C510: FLdPr Me
  loc_B8C513: VCallAd Control_ID_CorePareMsk
  loc_B8C516: FStAdFunc var_E8
  loc_B8C519: FLdPr var_E8
  loc_B8C51C: LateIdLdVar var_AC DispID_22 0
  loc_B8C523: PopAd
  loc_B8C525: FLdPr Me
  loc_B8C528: VCallAd Control_ID_CoinPareMsk
  loc_B8C52B: FStAdFunc var_EC
  loc_B8C52E: FLdPr var_EC
  loc_B8C531: LateIdLdVar var_CC DispID_22 0
  loc_B8C538: PopAd
  loc_B8C53A: FLdPr Me
  loc_B8C53D: VCallAd Control_ID_CoadPareMsk
  loc_B8C540: FStAdFunc var_F0
  loc_B8C543: FLdPr var_F0
  loc_B8C546: LateIdLdVar var_E0 DispID_22 0
  loc_B8C54D: PopAd
  loc_B8C54F: FLdPr Me
  loc_B8C552: VCallAd Control_ID_CoapPareMsk
  loc_B8C555: FStAdFunc var_F4
  loc_B8C558: FLdPr var_F4
  loc_B8C55B: LateIdLdVar var_104 DispID_22 0
  loc_B8C562: PopAd
  loc_B8C564: LitI2_Byte &HFF
  loc_B8C566: FLdRfVar var_104
  loc_B8C569: CStrVarTmp
  loc_B8C56A: FStStrNoPop var_114
  loc_B8C56D: FLdRfVar var_E0
  loc_B8C570: CStrVarTmp
  loc_B8C571: FStStrNoPop var_110
  loc_B8C574: FLdRfVar var_CC
  loc_B8C577: CStrVarTmp
  loc_B8C578: FStStrNoPop var_10C
  loc_B8C57B: FLdRfVar var_AC
  loc_B8C57E: CStrVarTmp
  loc_B8C57F: FStStrNoPop var_108
  loc_B8C582: ILdRf var_90
  loc_B8C585: CI2Str
  loc_B8C587: FLdPr Me
  loc_B8C58A: MemLdRfVar from_stack_1.global_52
  loc_B8C58D: NewIfNullPr clspararenta
  loc_B8C590: Call clspararenta.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_B8C595: FFreeStr var_90 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_B8C5A2: FFreeAd var_98 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B8C5AF: FFreeVar var_AC = "": var_CC = "": var_E0 = ""
  loc_B8C5BA: Branch loc_B8C684
  loc_B8C5BD: FLdI2 var_E4
  loc_B8C5C0: LitI2_Byte 2
  loc_B8C5C2: EqI2
  loc_B8C5C3: BranchF loc_B8C684
  loc_B8C5C6: FLdRfVar var_90
  loc_B8C5C9: FLdPr Me
  loc_B8C5CC: VCallAd Control_ID_PeriInfoTxt
  loc_B8C5CF: FStAdFunc var_98
  loc_B8C5D2: FLdPr var_98
  loc_B8C5D5:  = Me.Text
  loc_B8C5DA: FLdPr Me
  loc_B8C5DD: VCallAd Control_ID_CorePareMsk
  loc_B8C5E0: FStAdFunc var_E8
  loc_B8C5E3: FLdPr var_E8
  loc_B8C5E6: LateIdLdVar var_AC DispID_22 0
  loc_B8C5ED: PopAd
  loc_B8C5EF: FLdPr Me
  loc_B8C5F2: VCallAd Control_ID_CoinPareMsk
  loc_B8C5F5: FStAdFunc var_EC
  loc_B8C5F8: FLdPr var_EC
  loc_B8C5FB: LateIdLdVar var_CC DispID_22 0
  loc_B8C602: PopAd
  loc_B8C604: FLdPr Me
  loc_B8C607: VCallAd Control_ID_CoadPareMsk
  loc_B8C60A: FStAdFunc var_F0
  loc_B8C60D: FLdPr var_F0
  loc_B8C610: LateIdLdVar var_E0 DispID_22 0
  loc_B8C617: PopAd
  loc_B8C619: FLdPr Me
  loc_B8C61C: VCallAd Control_ID_CoapPareMsk
  loc_B8C61F: FStAdFunc var_F4
  loc_B8C622: FLdPr var_F4
  loc_B8C625: LateIdLdVar var_104 DispID_22 0
  loc_B8C62C: PopAd
  loc_B8C62E: LitI2_Byte &HFF
  loc_B8C630: FLdRfVar var_104
  loc_B8C633: CStrVarTmp
  loc_B8C634: FStStrNoPop var_114
  loc_B8C637: FLdRfVar var_E0
  loc_B8C63A: CStrVarTmp
  loc_B8C63B: FStStrNoPop var_110
  loc_B8C63E: FLdRfVar var_CC
  loc_B8C641: CStrVarTmp
  loc_B8C642: FStStrNoPop var_10C
  loc_B8C645: FLdRfVar var_AC
  loc_B8C648: CStrVarTmp
  loc_B8C649: FStStrNoPop var_108
  loc_B8C64C: ILdRf var_90
  loc_B8C64F: CI2Str
  loc_B8C651: FLdPr Me
  loc_B8C654: MemLdRfVar from_stack_1.global_52
  loc_B8C657: NewIfNullPr clspararenta
  loc_B8C65A: Call clspararenta.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_B8C65F: FFreeStr var_90 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_B8C66C: FFreeAd var_98 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B8C679: FFreeVar var_AC = "": var_CC = "": var_E0 = ""
  loc_B8C684: Call cmdCancelar_Click()
  loc_B8C689: Branch loc_B8C790
  loc_B8C68C: ILdRf var_94
  loc_B8C68F: LitStr "btnCancelar"
  loc_B8C692: EqStr
  loc_B8C694: BranchF loc_B8C69F
  loc_B8C697: Call cmdCancelar_Click()
  loc_B8C69C: Branch loc_B8C790
  loc_B8C69F: ILdRf var_94
  loc_B8C6A2: LitStr "btnPrimero"
  loc_B8C6A5: EqStr
  loc_B8C6A7: BranchF loc_B8C6BB
  loc_B8C6AA: FLdPr Me
  loc_B8C6AD: MemLdRfVar from_stack_1.global_52
  loc_B8C6B0: NewIfNullPr clspararenta
  loc_B8C6B3: Call clspararenta.MoveFirst()
  loc_B8C6B8: Branch loc_B8C790
  loc_B8C6BB: ILdRf var_94
  loc_B8C6BE: LitStr "btnAnterior"
  loc_B8C6C1: EqStr
  loc_B8C6C3: BranchF loc_B8C6D7
  loc_B8C6C6: FLdPr Me
  loc_B8C6C9: MemLdRfVar from_stack_1.global_52
  loc_B8C6CC: NewIfNullPr clspararenta
  loc_B8C6CF: Call clspararenta.MovePrevious()
  loc_B8C6D4: Branch loc_B8C790
  loc_B8C6D7: ILdRf var_94
  loc_B8C6DA: LitStr "btnSiguiente"
  loc_B8C6DD: EqStr
  loc_B8C6DF: BranchF loc_B8C6F3
  loc_B8C6E2: FLdPr Me
  loc_B8C6E5: MemLdRfVar from_stack_1.global_52
  loc_B8C6E8: NewIfNullPr clspararenta
  loc_B8C6EB: Call clspararenta.MoveNext()
  loc_B8C6F0: Branch loc_B8C790
  loc_B8C6F3: ILdRf var_94
  loc_B8C6F6: LitStr "btnUltimo"
  loc_B8C6F9: EqStr
  loc_B8C6FB: BranchF loc_B8C70F
  loc_B8C6FE: FLdPr Me
  loc_B8C701: MemLdRfVar from_stack_1.global_52
  loc_B8C704: NewIfNullPr clspararenta
  loc_B8C707: Call clspararenta.MoveLast()
  loc_B8C70C: Branch loc_B8C790
  loc_B8C70F: ILdRf var_94
  loc_B8C712: LitStr "btnFiltrar"
  loc_B8C715: EqStr
  loc_B8C717: BranchF loc_B8C71D
  loc_B8C71A: Branch loc_B8C790
  loc_B8C71D: ILdRf var_94
  loc_B8C720: LitStr "btnBuscar"
  loc_B8C723: EqStr
  loc_B8C725: BranchF loc_B8C72B
  loc_B8C728: Branch loc_B8C790
  loc_B8C72B: ILdRf var_94
  loc_B8C72E: LitStr "btnImprimir"
  loc_B8C731: EqStr
  loc_B8C733: BranchF loc_B8C739
  loc_B8C736: Branch loc_B8C790
  loc_B8C739: ILdRf var_94
  loc_B8C73C: LitStr "btnAyuda"
  loc_B8C73F: EqStr
  loc_B8C741: BranchF loc_B8C770
  loc_B8C744: LitVar_Missing var_104
  loc_B8C747: LitVar_Missing var_E0
  loc_B8C74A: LitVar_Missing var_CC
  loc_B8C74D: LitI4 0
  loc_B8C752: LitVarStr var_BC, "Opcion no disponible en esta version."
  loc_B8C757: FStVarCopyObj var_AC
  loc_B8C75A: FLdRfVar var_AC
  loc_B8C75D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B8C762: FFreeVar var_AC = "": var_CC = "": var_E0 = ""
  loc_B8C76D: Branch loc_B8C790
  loc_B8C770: ILdRf var_94
  loc_B8C773: LitStr "btnSalir"
  loc_B8C776: EqStr
  loc_B8C778: BranchF loc_B8C790
  loc_B8C77B: ILdRf Me
  loc_B8C77E: FStAdNoPop
  loc_B8C782: ImpAdLdRf MemVar_D9C5D8
  loc_B8C785: NewIfNullPr Global
  loc_B8C788: Global.Unload from_stack_1
  loc_B8C78D: FFree1Ad var_98
  loc_B8C790: ExitProcHresult
End Sub

Private Sub FiltroTxt_Change() 'B577A0
  'Data Table: 4B00A8
  loc_B573B8: FLdRfVar var_8C
  loc_B573BB: FLdPr Me
  loc_B573BE: VCallAd Control_ID_FiltroTxt
  loc_B573C1: FStAdFunc var_88
  loc_B573C4: FLdPr var_88
  loc_B573C7:  = Me.Text
  loc_B573CC: ILdRf var_8C
  loc_B573CF: LitStr vbNullString
  loc_B573D2: NeStr
  loc_B573D4: FFree1Str var_8C
  loc_B573D7: FFree1Ad var_88
  loc_B573DA: BranchF loc_B57754
  loc_B573DD: FLdRfVar var_8E
  loc_B573E0: FLdPr Me
  loc_B573E3: VCallAd Control_ID_FiltroCbo
  loc_B573E6: FStAdFunc var_88
  loc_B573E9: FLdPr var_88
  loc_B573EC:  = Me.ListIndex
  loc_B573F1: FLdI2 var_8E
  loc_B573F4: LitI2_Byte 0
  loc_B573F6: EqI2
  loc_B573F7: FFree1Ad var_88
  loc_B573FA: BranchF loc_B57480
  loc_B573FD: LitStr "PeriInfo = "
  loc_B57400: FLdRfVar var_8C
  loc_B57403: FLdPr Me
  loc_B57406: VCallAd Control_ID_FiltroTxt
  loc_B57409: FStAdFunc var_88
  loc_B5740C: FLdPr var_88
  loc_B5740F:  = Me.Text
  loc_B57414: ILdRf var_8C
  loc_B57417: ConcatStr
  loc_B57418: PopTmpLdAdStr
  loc_B5741C: FLdPr Me
  loc_B5741F: MemLdRfVar from_stack_1.global_52
  loc_B57422: NewIfNullPr clspararenta
  loc_B57425: Call clspararenta.Filter(from_stack_1v)
  loc_B5742A: FFreeStr var_8C = ""
  loc_B57431: FFree1Ad var_88
  loc_B57434: LitStr "PeriInfo"
  loc_B57437: FStStrCopy var_8C
  loc_B5743A: FLdRfVar var_8C
  loc_B5743D: FLdPr Me
  loc_B57440: MemLdRfVar from_stack_1.global_52
  loc_B57443: NewIfNullPr clspararenta
  loc_B57446: Call clspararenta.Sort(from_stack_1v)
  loc_B5744B: FFree1Str var_8C
  loc_B5744E: LitStr "Periodo que es igual a "
  loc_B57451: FLdRfVar var_8C
  loc_B57454: FLdPr Me
  loc_B57457: VCallAd Control_ID_FiltroTxt
  loc_B5745A: FStAdFunc var_88
  loc_B5745D: FLdPr var_88
  loc_B57460:  = Me.Text
  loc_B57465: ILdRf var_8C
  loc_B57468: ConcatStr
  loc_B57469: FStStrNoPop var_94
  loc_B5746C: FLdPr Me
  loc_B5746F: MemStStrCopy
  loc_B57473: FFreeStr var_8C = ""
  loc_B5747A: FFree1Ad var_88
  loc_B5747D: Branch loc_B57751
  loc_B57480: FLdRfVar var_8E
  loc_B57483: FLdPr Me
  loc_B57486: VCallAd Control_ID_FiltroCbo
  loc_B57489: FStAdFunc var_88
  loc_B5748C: FLdPr var_88
  loc_B5748F:  = Me.ListIndex
  loc_B57494: FLdI2 var_8E
  loc_B57497: LitI2_Byte 1
  loc_B57499: EqI2
  loc_B5749A: FFree1Ad var_88
  loc_B5749D: BranchF loc_B57535
  loc_B574A0: LitStr "CorePare LIKE '"
  loc_B574A3: FLdRfVar var_8C
  loc_B574A6: FLdPr Me
  loc_B574A9: VCallAd Control_ID_FiltroTxt
  loc_B574AC: FStAdFunc var_88
  loc_B574AF: FLdPr var_88
  loc_B574B2:  = Me.Text
  loc_B574B7: ILdRf var_8C
  loc_B574BA: ConcatStr
  loc_B574BB: FStStrNoPop var_94
  loc_B574BE: LitStr Chr(37) & "'"
  loc_B574C1: ConcatStr
  loc_B574C2: PopTmpLdAdStr
  loc_B574C6: FLdPr Me
  loc_B574C9: MemLdRfVar from_stack_1.global_52
  loc_B574CC: NewIfNullPr clspararenta
  loc_B574CF: Call clspararenta.Filter(from_stack_1v)
  loc_B574D4: FFreeStr var_8C = "": var_94 = ""
  loc_B574DD: FFree1Ad var_88
  loc_B574E0: LitStr "CorePare"
  loc_B574E3: FStStrCopy var_8C
  loc_B574E6: FLdRfVar var_8C
  loc_B574E9: FLdPr Me
  loc_B574EC: MemLdRfVar from_stack_1.global_52
  loc_B574EF: NewIfNullPr clspararenta
  loc_B574F2: Call clspararenta.Sort(from_stack_1v)
  loc_B574F7: FFree1Str var_8C
  loc_B574FA: LitStr "concepto de recargo que comience con """
  loc_B574FD: FLdRfVar var_8C
  loc_B57500: FLdPr Me
  loc_B57503: VCallAd Control_ID_FiltroTxt
  loc_B57506: FStAdFunc var_88
  loc_B57509: FLdPr var_88
  loc_B5750C:  = Me.Text
  loc_B57511: ILdRf var_8C
  loc_B57514: ConcatStr
  loc_B57515: FStStrNoPop var_94
  loc_B57518: LitStr """"
  loc_B5751B: ConcatStr
  loc_B5751C: FStStrNoPop var_98
  loc_B5751F: FLdPr Me
  loc_B57522: MemStStrCopy
  loc_B57526: FFreeStr var_8C = "": var_94 = ""
  loc_B5752F: FFree1Ad var_88
  loc_B57532: Branch loc_B57751
  loc_B57535: FLdRfVar var_8E
  loc_B57538: FLdPr Me
  loc_B5753B: VCallAd Control_ID_FiltroCbo
  loc_B5753E: FStAdFunc var_88
  loc_B57541: FLdPr var_88
  loc_B57544:  = Me.ListIndex
  loc_B57549: FLdI2 var_8E
  loc_B5754C: LitI2_Byte 2
  loc_B5754E: EqI2
  loc_B5754F: FFree1Ad var_88
  loc_B57552: BranchF loc_B575EA
  loc_B57555: LitStr "CoinPare LIKE '" & Chr(37)
  loc_B57558: FLdRfVar var_8C
  loc_B5755B: FLdPr Me
  loc_B5755E: VCallAd Control_ID_FiltroTxt
  loc_B57561: FStAdFunc var_88
  loc_B57564: FLdPr var_88
  loc_B57567:  = Me.Text
  loc_B5756C: ILdRf var_8C
  loc_B5756F: ConcatStr
  loc_B57570: FStStrNoPop var_94
  loc_B57573: LitStr Chr(37) & "'"
  loc_B57576: ConcatStr
  loc_B57577: PopTmpLdAdStr
  loc_B5757B: FLdPr Me
  loc_B5757E: MemLdRfVar from_stack_1.global_52
  loc_B57581: NewIfNullPr clspararenta
  loc_B57584: Call clspararenta.Filter(from_stack_1v)
  loc_B57589: FFreeStr var_8C = "": var_94 = ""
  loc_B57592: FFree1Ad var_88
  loc_B57595: LitStr "CoinPare"
  loc_B57598: FStStrCopy var_8C
  loc_B5759B: FLdRfVar var_8C
  loc_B5759E: FLdPr Me
  loc_B575A1: MemLdRfVar from_stack_1.global_52
  loc_B575A4: NewIfNullPr clspararenta
  loc_B575A7: Call clspararenta.Sort(from_stack_1v)
  loc_B575AC: FFree1Str var_8C
  loc_B575AF: LitStr "concepto de interes que contiene """
  loc_B575B2: FLdRfVar var_8C
  loc_B575B5: FLdPr Me
  loc_B575B8: VCallAd Control_ID_FiltroTxt
  loc_B575BB: FStAdFunc var_88
  loc_B575BE: FLdPr var_88
  loc_B575C1:  = Me.Text
  loc_B575C6: ILdRf var_8C
  loc_B575C9: ConcatStr
  loc_B575CA: FStStrNoPop var_94
  loc_B575CD: LitStr """"
  loc_B575D0: ConcatStr
  loc_B575D1: FStStrNoPop var_98
  loc_B575D4: FLdPr Me
  loc_B575D7: MemStStrCopy
  loc_B575DB: FFreeStr var_8C = "": var_94 = ""
  loc_B575E4: FFree1Ad var_88
  loc_B575E7: Branch loc_B57751
  loc_B575EA: FLdRfVar var_8E
  loc_B575ED: FLdPr Me
  loc_B575F0: VCallAd Control_ID_FiltroCbo
  loc_B575F3: FStAdFunc var_88
  loc_B575F6: FLdPr var_88
  loc_B575F9:  = Me.ListIndex
  loc_B575FE: FLdI2 var_8E
  loc_B57601: LitI2_Byte 3
  loc_B57603: EqI2
  loc_B57604: FFree1Ad var_88
  loc_B57607: BranchF loc_B5769F
  loc_B5760A: LitStr "CoadPare LIKE '" & Chr(37)
  loc_B5760D: FLdRfVar var_8C
  loc_B57610: FLdPr Me
  loc_B57613: VCallAd Control_ID_FiltroTxt
  loc_B57616: FStAdFunc var_88
  loc_B57619: FLdPr var_88
  loc_B5761C:  = Me.Text
  loc_B57621: ILdRf var_8C
  loc_B57624: ConcatStr
  loc_B57625: FStStrNoPop var_94
  loc_B57628: LitStr Chr(37) & "'"
  loc_B5762B: ConcatStr
  loc_B5762C: PopTmpLdAdStr
  loc_B57630: FLdPr Me
  loc_B57633: MemLdRfVar from_stack_1.global_52
  loc_B57636: NewIfNullPr clspararenta
  loc_B57639: Call clspararenta.Filter(from_stack_1v)
  loc_B5763E: FFreeStr var_8C = "": var_94 = ""
  loc_B57647: FFree1Ad var_88
  loc_B5764A: LitStr "CoadPare"
  loc_B5764D: FStStrCopy var_8C
  loc_B57650: FLdRfVar var_8C
  loc_B57653: FLdPr Me
  loc_B57656: MemLdRfVar from_stack_1.global_52
  loc_B57659: NewIfNullPr clspararenta
  loc_B5765C: Call clspararenta.Sort(from_stack_1v)
  loc_B57661: FFree1Str var_8C
  loc_B57664: LitStr "concepto de gastos administrativos de apremio que contiene """
  loc_B57667: FLdRfVar var_8C
  loc_B5766A: FLdPr Me
  loc_B5766D: VCallAd Control_ID_FiltroTxt
  loc_B57670: FStAdFunc var_88
  loc_B57673: FLdPr var_88
  loc_B57676:  = Me.Text
  loc_B5767B: ILdRf var_8C
  loc_B5767E: ConcatStr
  loc_B5767F: FStStrNoPop var_94
  loc_B57682: LitStr """"
  loc_B57685: ConcatStr
  loc_B57686: FStStrNoPop var_98
  loc_B57689: FLdPr Me
  loc_B5768C: MemStStrCopy
  loc_B57690: FFreeStr var_8C = "": var_94 = ""
  loc_B57699: FFree1Ad var_88
  loc_B5769C: Branch loc_B57751
  loc_B5769F: FLdRfVar var_8E
  loc_B576A2: FLdPr Me
  loc_B576A5: VCallAd Control_ID_FiltroCbo
  loc_B576A8: FStAdFunc var_88
  loc_B576AB: FLdPr var_88
  loc_B576AE:  = Me.ListIndex
  loc_B576B3: FLdI2 var_8E
  loc_B576B6: LitI2_Byte 4
  loc_B576B8: EqI2
  loc_B576B9: FFree1Ad var_88
  loc_B576BC: BranchF loc_B57751
  loc_B576BF: LitStr "CoapPare LIKE '" & Chr(37)
  loc_B576C2: FLdRfVar var_8C
  loc_B576C5: FLdPr Me
  loc_B576C8: VCallAd Control_ID_FiltroTxt
  loc_B576CB: FStAdFunc var_88
  loc_B576CE: FLdPr var_88
  loc_B576D1:  = Me.Text
  loc_B576D6: ILdRf var_8C
  loc_B576D9: ConcatStr
  loc_B576DA: FStStrNoPop var_94
  loc_B576DD: LitStr Chr(37) & "'"
  loc_B576E0: ConcatStr
  loc_B576E1: PopTmpLdAdStr
  loc_B576E5: FLdPr Me
  loc_B576E8: MemLdRfVar from_stack_1.global_52
  loc_B576EB: NewIfNullPr clspararenta
  loc_B576EE: Call clspararenta.Filter(from_stack_1v)
  loc_B576F3: FFreeStr var_8C = "": var_94 = ""
  loc_B576FC: FFree1Ad var_88
  loc_B576FF: LitStr "CoapPare"
  loc_B57702: FStStrCopy var_8C
  loc_B57705: FLdRfVar var_8C
  loc_B57708: FLdPr Me
  loc_B5770B: MemLdRfVar from_stack_1.global_52
  loc_B5770E: NewIfNullPr clspararenta
  loc_B57711: Call clspararenta.Sort(from_stack_1v)
  loc_B57716: FFree1Str var_8C
  loc_B57719: LitStr "concepto de gastos de apremio que contiene """
  loc_B5771C: FLdRfVar var_8C
  loc_B5771F: FLdPr Me
  loc_B57722: VCallAd Control_ID_FiltroTxt
  loc_B57725: FStAdFunc var_88
  loc_B57728: FLdPr var_88
  loc_B5772B:  = Me.Text
  loc_B57730: ILdRf var_8C
  loc_B57733: ConcatStr
  loc_B57734: FStStrNoPop var_94
  loc_B57737: LitStr """"
  loc_B5773A: ConcatStr
  loc_B5773B: FStStrNoPop var_98
  loc_B5773E: FLdPr Me
  loc_B57741: MemStStrCopy
  loc_B57745: FFreeStr var_8C = "": var_94 = ""
  loc_B5774E: FFree1Ad var_88
  loc_B57751: Branch loc_B57778
  loc_B57754: LitStr vbNullString
  loc_B57757: FStStrCopy var_8C
  loc_B5775A: FLdRfVar var_8C
  loc_B5775D: FLdPr Me
  loc_B57760: MemLdRfVar from_stack_1.global_52
  loc_B57763: NewIfNullPr clspararenta
  loc_B57766: Call clspararenta.Filter(from_stack_1v)
  loc_B5776B: FFree1Str var_8C
  loc_B5776E: LitStr vbNullString
  loc_B57771: FLdPr Me
  loc_B57774: MemStStrCopy
  loc_B57778: FLdPr Me
  loc_B5777B: VCallAd Control_ID_dgdABMS
  loc_B5777E: FStAdFunc var_9C
  loc_B57781: FLdPr Me
  loc_B57784: MemLdStr global_64
  loc_B57787: FLdZeroAd var_9C
  loc_B5778A: FStAdFunc var_88
  loc_B5778D: FLdRfVar var_88
  loc_B57790: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_B57795: FFreeAd var_88 = ""
  loc_B5779C: ExitProcHresult
End Sub

Private Sub CoadPareMsk_UnknownEvent_0 '9C2BA0
  'Data Table: 4B00A8
  loc_9C2B8C: FLdPr Me
  loc_9C2B8F: VCallAd Control_ID_CoadPareMsk
  loc_9C2B92: CVarAd
  loc_9C2B96: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2B9B: FFree1Var var_94 = ""
  loc_9C2B9E: ExitProcHresult
End Sub

Private Function CoadPareMsk_UnknownEvent_8(arg_C) 'ADF778
  'Data Table: 4B00A8
  loc_ADF628: FLdRfVar var_8A
  loc_ADF62B: FLdPr Me
  loc_ADF62E: VCallAd Control_ID_cmdCancelar
  loc_ADF631: FStAdFunc var_88
  loc_ADF634: FLdPr var_88
  loc_ADF637:  = Me.Value
  loc_ADF63C: FLdI2 var_8A
  loc_ADF63F: NotI4
  loc_ADF640: FLdPr Me
  loc_ADF643: VCallAd Control_ID_CoadPareMsk
  loc_ADF646: FStAdFunc var_90
  loc_ADF649: FLdPr var_90
  loc_ADF64C: LateIdLdVar var_A0 DispID_13 -32767
  loc_ADF653: CBoolVar
  loc_ADF655: AndI4
  loc_ADF656: FFreeAd var_88 = ""
  loc_ADF65D: FFree1Var var_A0 = ""
  loc_ADF660: BranchF loc_ADF775
  loc_ADF663: FLdRfVar var_A4
  loc_ADF666: FLdPr Me
  loc_ADF669: VCallAd Control_ID_PeriInfoTxt
  loc_ADF66C: FStAdFunc var_88
  loc_ADF66F: FLdPr var_88
  loc_ADF672:  = Me.Text
  loc_ADF677: FLdPr Me
  loc_ADF67A: VCallAd Control_ID_CoadPareMsk
  loc_ADF67D: FStAdFunc var_90
  loc_ADF680: FLdPr var_90
  loc_ADF683: LateIdLdVar var_A0 DispID_22 0
  loc_ADF68A: PopAd
  loc_ADF68C: LitI2_Byte 0
  loc_ADF68E: LitI2_Byte 0
  loc_ADF690: LitI2_Byte 0
  loc_ADF692: LitI2_Byte 0
  loc_ADF694: LitI2_Byte 0
  loc_ADF696: LitI2_Byte 0
  loc_ADF698: LitI2_Byte 0
  loc_ADF69A: LitI2_Byte 0
  loc_ADF69C: LitI2_Byte 0
  loc_ADF69E: FLdRfVar var_A0
  loc_ADF6A1: CStrVarTmp
  loc_ADF6A2: FStStrNoPop var_A8
  loc_ADF6A5: ILdRf var_A4
  loc_ADF6A8: CI2Str
  loc_ADF6AA: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_ADF6AF: FStStrNoPop var_AC
  loc_ADF6B2: FLdPr Me
  loc_ADF6B5: MemStStrCopy
  loc_ADF6B9: FFreeStr var_A4 = "": var_A8 = ""
  loc_ADF6C2: FFreeAd var_88 = ""
  loc_ADF6C9: FFree1Var var_A0 = ""
  loc_ADF6CC: FLdPr Me
  loc_ADF6CF: MemLdStr global_60
  loc_ADF6D2: LitStr vbNullString
  loc_ADF6D5: NeStr
  loc_ADF6D7: BranchF loc_ADF717
  loc_ADF6DA: FLdPr Me
  loc_ADF6DD: MemLdStr global_60
  loc_ADF6E0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADF6E5: LitStr vbNullString
  loc_ADF6E8: FLdPr Me
  loc_ADF6EB: VCallAd Control_ID_DeinConcLbl
  loc_ADF6EE: FStAdFunc var_88
  loc_ADF6F1: FLdPr var_88
  loc_ADF6F4: Me.Caption = from_stack_1
  loc_ADF6F9: FFree1Ad var_88
  loc_ADF6FC: FLdPr Me
  loc_ADF6FF: VCallAd Control_ID_CoadPareMsk
  loc_ADF702: CVarAd
  loc_ADF706: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADF70B: FFree1Var var_A0 = ""
  loc_ADF70E: LitI2_Byte &HFF
  loc_ADF710: IStI2 arg_C
  loc_ADF713: ExitProcHresult
  loc_ADF714: Branch loc_ADF775
  loc_ADF717: FLdRfVar var_A4
  loc_ADF71A: FLdPr Me
  loc_ADF71D: VCallAd Control_ID_PeriInfoTxt
  loc_ADF720: FStAdFunc var_88
  loc_ADF723: FLdPr var_88
  loc_ADF726:  = Me.Text
  loc_ADF72B: FLdPr Me
  loc_ADF72E: VCallAd Control_ID_CoadPareMsk
  loc_ADF731: FStAdFunc var_90
  loc_ADF734: FLdPr var_90
  loc_ADF737: LateIdLdVar var_A0 DispID_22 0
  loc_ADF73E: CStrVarTmp
  loc_ADF73F: FStStrNoPop var_A8
  loc_ADF742: ILdRf var_A4
  loc_ADF745: CI2Str
  loc_ADF747: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_ADF74C: FStStrNoPop var_AC
  loc_ADF74F: FLdPr Me
  loc_ADF752: VCallAd Control_ID_DeadConcLbl
  loc_ADF755: FStAdFunc var_B0
  loc_ADF758: FLdPr var_B0
  loc_ADF75B: Me.Caption = from_stack_1
  loc_ADF760: FFreeStr var_A4 = "": var_A8 = ""
  loc_ADF769: FFreeAd var_88 = "": var_90 = ""
  loc_ADF772: FFree1Var var_A0 = ""
  loc_ADF775: ExitProcHresult
End Function

Private Sub CoapPareMsk_UnknownEvent_0 '9C2B58
  'Data Table: 4B00A8
  loc_9C2B44: FLdPr Me
  loc_9C2B47: VCallAd Control_ID_CoapPareMsk
  loc_9C2B4A: CVarAd
  loc_9C2B4E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2B53: FFree1Var var_94 = ""
  loc_9C2B56: ExitProcHresult
End Sub

Private Function CoapPareMsk_UnknownEvent_8(arg_C) 'ADF108
  'Data Table: 4B00A8
  loc_ADEFB8: FLdRfVar var_8A
  loc_ADEFBB: FLdPr Me
  loc_ADEFBE: VCallAd Control_ID_cmdCancelar
  loc_ADEFC1: FStAdFunc var_88
  loc_ADEFC4: FLdPr var_88
  loc_ADEFC7:  = Me.Value
  loc_ADEFCC: FLdI2 var_8A
  loc_ADEFCF: NotI4
  loc_ADEFD0: FLdPr Me
  loc_ADEFD3: VCallAd Control_ID_CoapPareMsk
  loc_ADEFD6: FStAdFunc var_90
  loc_ADEFD9: FLdPr var_90
  loc_ADEFDC: LateIdLdVar var_A0 DispID_13 -32767
  loc_ADEFE3: CBoolVar
  loc_ADEFE5: AndI4
  loc_ADEFE6: FFreeAd var_88 = ""
  loc_ADEFED: FFree1Var var_A0 = ""
  loc_ADEFF0: BranchF loc_ADF105
  loc_ADEFF3: FLdRfVar var_A4
  loc_ADEFF6: FLdPr Me
  loc_ADEFF9: VCallAd Control_ID_PeriInfoTxt
  loc_ADEFFC: FStAdFunc var_88
  loc_ADEFFF: FLdPr var_88
  loc_ADF002:  = Me.Text
  loc_ADF007: FLdPr Me
  loc_ADF00A: VCallAd Control_ID_CoapPareMsk
  loc_ADF00D: FStAdFunc var_90
  loc_ADF010: FLdPr var_90
  loc_ADF013: LateIdLdVar var_A0 DispID_22 0
  loc_ADF01A: PopAd
  loc_ADF01C: LitI2_Byte 0
  loc_ADF01E: LitI2_Byte 0
  loc_ADF020: LitI2_Byte 0
  loc_ADF022: LitI2_Byte 0
  loc_ADF024: LitI2_Byte 0
  loc_ADF026: LitI2_Byte 0
  loc_ADF028: LitI2_Byte 0
  loc_ADF02A: LitI2_Byte 0
  loc_ADF02C: LitI2_Byte 0
  loc_ADF02E: FLdRfVar var_A0
  loc_ADF031: CStrVarTmp
  loc_ADF032: FStStrNoPop var_A8
  loc_ADF035: ILdRf var_A4
  loc_ADF038: CI2Str
  loc_ADF03A: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_ADF03F: FStStrNoPop var_AC
  loc_ADF042: FLdPr Me
  loc_ADF045: MemStStrCopy
  loc_ADF049: FFreeStr var_A4 = "": var_A8 = ""
  loc_ADF052: FFreeAd var_88 = ""
  loc_ADF059: FFree1Var var_A0 = ""
  loc_ADF05C: FLdPr Me
  loc_ADF05F: MemLdStr global_60
  loc_ADF062: LitStr vbNullString
  loc_ADF065: NeStr
  loc_ADF067: BranchF loc_ADF0A7
  loc_ADF06A: FLdPr Me
  loc_ADF06D: MemLdStr global_60
  loc_ADF070: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADF075: LitStr vbNullString
  loc_ADF078: FLdPr Me
  loc_ADF07B: VCallAd Control_ID_DeapConcLbl
  loc_ADF07E: FStAdFunc var_88
  loc_ADF081: FLdPr var_88
  loc_ADF084: Me.Caption = from_stack_1
  loc_ADF089: FFree1Ad var_88
  loc_ADF08C: FLdPr Me
  loc_ADF08F: VCallAd Control_ID_CoapPareMsk
  loc_ADF092: CVarAd
  loc_ADF096: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADF09B: FFree1Var var_A0 = ""
  loc_ADF09E: LitI2_Byte &HFF
  loc_ADF0A0: IStI2 arg_C
  loc_ADF0A3: ExitProcHresult
  loc_ADF0A4: Branch loc_ADF105
  loc_ADF0A7: FLdRfVar var_A4
  loc_ADF0AA: FLdPr Me
  loc_ADF0AD: VCallAd Control_ID_PeriInfoTxt
  loc_ADF0B0: FStAdFunc var_88
  loc_ADF0B3: FLdPr var_88
  loc_ADF0B6:  = Me.Text
  loc_ADF0BB: FLdPr Me
  loc_ADF0BE: VCallAd Control_ID_CoapPareMsk
  loc_ADF0C1: FStAdFunc var_90
  loc_ADF0C4: FLdPr var_90
  loc_ADF0C7: LateIdLdVar var_A0 DispID_22 0
  loc_ADF0CE: CStrVarTmp
  loc_ADF0CF: FStStrNoPop var_A8
  loc_ADF0D2: ILdRf var_A4
  loc_ADF0D5: CI2Str
  loc_ADF0D7: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_ADF0DC: FStStrNoPop var_AC
  loc_ADF0DF: FLdPr Me
  loc_ADF0E2: VCallAd Control_ID_DeapConcLbl
  loc_ADF0E5: FStAdFunc var_B0
  loc_ADF0E8: FLdPr var_B0
  loc_ADF0EB: Me.Caption = from_stack_1
  loc_ADF0F0: FFreeStr var_A4 = "": var_A8 = ""
  loc_ADF0F9: FFreeAd var_88 = "": var_90 = ""
  loc_ADF102: FFree1Var var_A0 = ""
  loc_ADF105: ExitProcHresult
End Function

Private Sub CorePareCmd_Click() 'AB3D2C
  'Data Table: 4B00A8
  loc_AB3C48: FLdRfVar var_8C
  loc_AB3C4B: FLdPr Me
  loc_AB3C4E: VCallAd Control_ID_PeriInfoTxt
  loc_AB3C51: FStAdFunc var_88
  loc_AB3C54: FLdPr var_88
  loc_AB3C57:  = Me.Text
  loc_AB3C5C: ILdRf var_8C
  loc_AB3C5F: CI2Str
  loc_AB3C61: ImpAdLdRf MemVar_D947E0
  loc_AB3C64: NewIfNullPr dlgBuscarConcepto
  loc_AB3C67: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AB3C6C: FFree1Str var_8C
  loc_AB3C6F: FFree1Ad var_88
  loc_AB3C72: LitVar_Missing var_AC
  loc_AB3C75: PopAdLdVar
  loc_AB3C76: LitVarI4
  loc_AB3C7E: PopAdLdVar
  loc_AB3C7F: ImpAdLdRf MemVar_D947E0
  loc_AB3C82: NewIfNullPr dlgBuscarConcepto
  loc_AB3C85: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AB3C8A: FLdRfVar var_B0
  loc_AB3C8D: FLdRfVar var_88
  loc_AB3C90: ImpAdLdRf MemVar_D947E0
  loc_AB3C93: NewIfNullPr dlgBuscarConcepto
  loc_AB3C96: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB3C9B: FLdPr var_88
  loc_AB3C9E: from_stack_1 = clsconcepto.RecordCount
  loc_AB3CA3: ILdRf var_B0
  loc_AB3CA6: LitI4 0
  loc_AB3CAB: GtI4
  loc_AB3CAC: FFree1Ad var_88
  loc_AB3CAF: BranchF loc_AB3D24
  loc_AB3CB2: FLdRfVar var_8C
  loc_AB3CB5: FLdRfVar var_88
  loc_AB3CB8: ImpAdLdRf MemVar_D947E0
  loc_AB3CBB: NewIfNullPr dlgBuscarConcepto
  loc_AB3CBE: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB3CC3: FLdPr var_88
  loc_AB3CC6: from_stack_1 = clsconcepto.CodiConc
  loc_AB3CCB: FLdZeroAd var_8C
  loc_AB3CCE: CVarStr var_C0
  loc_AB3CD1: PopAdLdVar
  loc_AB3CD2: FLdPr Me
  loc_AB3CD5: VCallAd Control_ID_CorePareMsk
  loc_AB3CD8: FStAdFunc var_C4
  loc_AB3CDB: FLdPr var_C4
  loc_AB3CDE: LateIdSt
  loc_AB3CE3: FFreeAd var_88 = ""
  loc_AB3CEA: FFree1Var var_C0 = ""
  loc_AB3CED: FLdRfVar var_8C
  loc_AB3CF0: FLdRfVar var_88
  loc_AB3CF3: ImpAdLdRf MemVar_D947E0
  loc_AB3CF6: NewIfNullPr dlgBuscarConcepto
  loc_AB3CF9: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB3CFE: FLdPr var_88
  loc_AB3D01: from_stack_1 = clsconcepto.DetaConc
  loc_AB3D06: ILdRf var_8C
  loc_AB3D09: FLdPr Me
  loc_AB3D0C: VCallAd Control_ID_DetaConcLbl
  loc_AB3D0F: FStAdFunc var_C4
  loc_AB3D12: FLdPr var_C4
  loc_AB3D15: Me.Caption = from_stack_1
  loc_AB3D1A: FFree1Str var_8C
  loc_AB3D1D: FFreeAd var_88 = ""
  loc_AB3D24: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AB3D29: ExitProcHresult
End Sub

Private Sub CoinPareMsk_UnknownEvent_0 '9C2AC8
  'Data Table: 4B00A8
  loc_9C2AB4: FLdPr Me
  loc_9C2AB7: VCallAd Control_ID_CoinPareMsk
  loc_9C2ABA: CVarAd
  loc_9C2ABE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2AC3: FFree1Var var_94 = ""
  loc_9C2AC6: ExitProcHresult
  loc_9C2AC7: LitI2_Byte &H30
End Sub

Private Function CoinPareMsk_UnknownEvent_8(arg_C) 'AE0120
  'Data Table: 4B00A8
  loc_ADFFD0: FLdRfVar var_8A
  loc_ADFFD3: FLdPr Me
  loc_ADFFD6: VCallAd Control_ID_cmdCancelar
  loc_ADFFD9: FStAdFunc var_88
  loc_ADFFDC: FLdPr var_88
  loc_ADFFDF:  = Me.Value
  loc_ADFFE4: FLdI2 var_8A
  loc_ADFFE7: NotI4
  loc_ADFFE8: FLdPr Me
  loc_ADFFEB: VCallAd Control_ID_CoinPareMsk
  loc_ADFFEE: FStAdFunc var_90
  loc_ADFFF1: FLdPr var_90
  loc_ADFFF4: LateIdLdVar var_A0 DispID_13 -32767
  loc_ADFFFB: CBoolVar
  loc_ADFFFD: AndI4
  loc_ADFFFE: FFreeAd var_88 = ""
  loc_AE0005: FFree1Var var_A0 = ""
  loc_AE0008: BranchF loc_AE011D
  loc_AE000B: FLdRfVar var_A4
  loc_AE000E: FLdPr Me
  loc_AE0011: VCallAd Control_ID_PeriInfoTxt
  loc_AE0014: FStAdFunc var_88
  loc_AE0017: FLdPr var_88
  loc_AE001A:  = Me.Text
  loc_AE001F: FLdPr Me
  loc_AE0022: VCallAd Control_ID_CoinPareMsk
  loc_AE0025: FStAdFunc var_90
  loc_AE0028: FLdPr var_90
  loc_AE002B: LateIdLdVar var_A0 DispID_22 0
  loc_AE0032: PopAd
  loc_AE0034: LitI2_Byte 0
  loc_AE0036: LitI2_Byte 0
  loc_AE0038: LitI2_Byte 0
  loc_AE003A: LitI2_Byte 0
  loc_AE003C: LitI2_Byte 0
  loc_AE003E: LitI2_Byte 0
  loc_AE0040: LitI2_Byte 0
  loc_AE0042: LitI2_Byte 0
  loc_AE0044: LitI2_Byte 0
  loc_AE0046: FLdRfVar var_A0
  loc_AE0049: CStrVarTmp
  loc_AE004A: FStStrNoPop var_A8
  loc_AE004D: ILdRf var_A4
  loc_AE0050: CI2Str
  loc_AE0052: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AE0057: FStStrNoPop var_AC
  loc_AE005A: FLdPr Me
  loc_AE005D: MemStStrCopy
  loc_AE0061: FFreeStr var_A4 = "": var_A8 = ""
  loc_AE006A: FFreeAd var_88 = ""
  loc_AE0071: FFree1Var var_A0 = ""
  loc_AE0074: FLdPr Me
  loc_AE0077: MemLdStr global_60
  loc_AE007A: LitStr vbNullString
  loc_AE007D: NeStr
  loc_AE007F: BranchF loc_AE00BF
  loc_AE0082: FLdPr Me
  loc_AE0085: MemLdStr global_60
  loc_AE0088: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE008D: LitStr vbNullString
  loc_AE0090: FLdPr Me
  loc_AE0093: VCallAd Control_ID_DeinConcLbl
  loc_AE0096: FStAdFunc var_88
  loc_AE0099: FLdPr var_88
  loc_AE009C: Me.Caption = from_stack_1
  loc_AE00A1: FFree1Ad var_88
  loc_AE00A4: FLdPr Me
  loc_AE00A7: VCallAd Control_ID_CoinPareMsk
  loc_AE00AA: CVarAd
  loc_AE00AE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE00B3: FFree1Var var_A0 = ""
  loc_AE00B6: LitI2_Byte &HFF
  loc_AE00B8: IStI2 arg_C
  loc_AE00BB: ExitProcHresult
  loc_AE00BC: Branch loc_AE011D
  loc_AE00BF: FLdRfVar var_A4
  loc_AE00C2: FLdPr Me
  loc_AE00C5: VCallAd Control_ID_PeriInfoTxt
  loc_AE00C8: FStAdFunc var_88
  loc_AE00CB: FLdPr var_88
  loc_AE00CE:  = Me.Text
  loc_AE00D3: FLdPr Me
  loc_AE00D6: VCallAd Control_ID_CoinPareMsk
  loc_AE00D9: FStAdFunc var_90
  loc_AE00DC: FLdPr var_90
  loc_AE00DF: LateIdLdVar var_A0 DispID_22 0
  loc_AE00E6: CStrVarTmp
  loc_AE00E7: FStStrNoPop var_A8
  loc_AE00EA: ILdRf var_A4
  loc_AE00ED: CI2Str
  loc_AE00EF: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AE00F4: FStStrNoPop var_AC
  loc_AE00F7: FLdPr Me
  loc_AE00FA: VCallAd Control_ID_DeinConcLbl
  loc_AE00FD: FStAdFunc var_B0
  loc_AE0100: FLdPr var_B0
  loc_AE0103: Me.Caption = from_stack_1
  loc_AE0108: FFreeStr var_A4 = "": var_A8 = ""
  loc_AE0111: FFreeAd var_88 = "": var_90 = ""
  loc_AE011A: FFree1Var var_A0 = ""
  loc_AE011D: ExitProcHresult
  loc_AE011E: ConcatStr
End Function

Private Sub CoadPareCmd_Click() 'AB4ADC
  'Data Table: 4B00A8
  loc_AB49F8: FLdRfVar var_8C
  loc_AB49FB: FLdPr Me
  loc_AB49FE: VCallAd Control_ID_PeriInfoTxt
  loc_AB4A01: FStAdFunc var_88
  loc_AB4A04: FLdPr var_88
  loc_AB4A07:  = Me.Text
  loc_AB4A0C: ILdRf var_8C
  loc_AB4A0F: CI2Str
  loc_AB4A11: ImpAdLdRf MemVar_D947E0
  loc_AB4A14: NewIfNullPr dlgBuscarConcepto
  loc_AB4A17: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AB4A1C: FFree1Str var_8C
  loc_AB4A1F: FFree1Ad var_88
  loc_AB4A22: LitVar_Missing var_AC
  loc_AB4A25: PopAdLdVar
  loc_AB4A26: LitVarI4
  loc_AB4A2E: PopAdLdVar
  loc_AB4A2F: ImpAdLdRf MemVar_D947E0
  loc_AB4A32: NewIfNullPr dlgBuscarConcepto
  loc_AB4A35: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AB4A3A: FLdRfVar var_B0
  loc_AB4A3D: FLdRfVar var_88
  loc_AB4A40: ImpAdLdRf MemVar_D947E0
  loc_AB4A43: NewIfNullPr dlgBuscarConcepto
  loc_AB4A46: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB4A4B: FLdPr var_88
  loc_AB4A4E: from_stack_1 = clsconcepto.RecordCount
  loc_AB4A53: ILdRf var_B0
  loc_AB4A56: LitI4 0
  loc_AB4A5B: GtI4
  loc_AB4A5C: FFree1Ad var_88
  loc_AB4A5F: BranchF loc_AB4AD4
  loc_AB4A62: FLdRfVar var_8C
  loc_AB4A65: FLdRfVar var_88
  loc_AB4A68: ImpAdLdRf MemVar_D947E0
  loc_AB4A6B: NewIfNullPr dlgBuscarConcepto
  loc_AB4A6E: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB4A73: FLdPr var_88
  loc_AB4A76: from_stack_1 = clsconcepto.CodiConc
  loc_AB4A7B: FLdZeroAd var_8C
  loc_AB4A7E: CVarStr var_C0
  loc_AB4A81: PopAdLdVar
  loc_AB4A82: FLdPr Me
  loc_AB4A85: VCallAd Control_ID_CoadPareMsk
  loc_AB4A88: FStAdFunc var_C4
  loc_AB4A8B: FLdPr var_C4
  loc_AB4A8E: LateIdSt
  loc_AB4A93: FFreeAd var_88 = ""
  loc_AB4A9A: FFree1Var var_C0 = ""
  loc_AB4A9D: FLdRfVar var_8C
  loc_AB4AA0: FLdRfVar var_88
  loc_AB4AA3: ImpAdLdRf MemVar_D947E0
  loc_AB4AA6: NewIfNullPr dlgBuscarConcepto
  loc_AB4AA9: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB4AAE: FLdPr var_88
  loc_AB4AB1: from_stack_1 = clsconcepto.DetaConc
  loc_AB4AB6: ILdRf var_8C
  loc_AB4AB9: FLdPr Me
  loc_AB4ABC: VCallAd Control_ID_DeadConcLbl
  loc_AB4ABF: FStAdFunc var_C4
  loc_AB4AC2: FLdPr var_C4
  loc_AB4AC5: Me.Caption = from_stack_1
  loc_AB4ACA: FFree1Str var_8C
  loc_AB4ACD: FFreeAd var_88 = ""
  loc_AB4AD4: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AB4AD9: ExitProcHresult
  loc_AB4ADA: CExtInstUnk
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9D08D0
  'Data Table: 4B00A8
  loc_9D08B8: FLdPr Me
  loc_9D08BB: VCallAd Control_ID_dgdABMS
  loc_9D08BE: FStAdFunc var_88
  loc_9D08C1: FLdRfVar var_88
  loc_9D08C4: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D08C9: FFree1Ad var_88
  loc_9D08CC: ExitProcHresult
  loc_9D08CD: StAryRecMove
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D091C
  'Data Table: 4B00A8
  loc_9D0904: FLdPr Me
  loc_9D0907: VCallAd Control_ID_dgdABMS
  loc_9D090A: FStAdFunc var_88
  loc_9D090D: FLdRfVar var_88
  loc_9D0910: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D0915: FFree1Ad var_88
  loc_9D0918: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A6660C
  'Data Table: 4B00A8
  loc_A665B0: FLdRfVar var_B4
  loc_A665B3: FLdRfVar var_B0
  loc_A665B6: FLdI2 ColIndex
  loc_A665B9: CVarI2 var_A8
  loc_A665BC: PopAdLdVar
  loc_A665BD: FLdPr Me
  loc_A665C0: VCallAd Control_ID_dgdABMS
  loc_A665C3: FStAdFunc var_88
  loc_A665C6: FLdPr var_88
  loc_A665C9: LateIdLdVar var_98 DispID_105 0
  loc_A665D0: CastAdVar Me
  loc_A665D4: FStAdFunc var_AC
  loc_A665D7: FLdPr var_AC
  loc_A665DA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A665DF: FLdPr var_B0
  loc_A665E2:  = Me.DataField
  loc_A665E7: FLdZeroAd var_B4
  loc_A665EA: PopTmpLdAdStr
  loc_A665EE: FLdPr Me
  loc_A665F1: MemLdRfVar from_stack_1.global_52
  loc_A665F4: NewIfNullPr clspararenta
  loc_A665F7: Call clspararenta.Sort(from_stack_1v)
  loc_A665FC: FFree1Str var_B8
  loc_A665FF: FFreeAd var_88 = "": var_AC = ""
  loc_A66608: FFree1Var var_98 = ""
  loc_A6660B: ExitProcHresult
End Sub

Private Sub CoinPareCmd_Click() 'AB4E48
  'Data Table: 4B00A8
  loc_AB4D64: FLdRfVar var_8C
  loc_AB4D67: FLdPr Me
  loc_AB4D6A: VCallAd Control_ID_PeriInfoTxt
  loc_AB4D6D: FStAdFunc var_88
  loc_AB4D70: FLdPr var_88
  loc_AB4D73:  = Me.Text
  loc_AB4D78: ILdRf var_8C
  loc_AB4D7B: CI2Str
  loc_AB4D7D: ImpAdLdRf MemVar_D947E0
  loc_AB4D80: NewIfNullPr dlgBuscarConcepto
  loc_AB4D83: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AB4D88: FFree1Str var_8C
  loc_AB4D8B: FFree1Ad var_88
  loc_AB4D8E: LitVar_Missing var_AC
  loc_AB4D91: PopAdLdVar
  loc_AB4D92: LitVarI4
  loc_AB4D9A: PopAdLdVar
  loc_AB4D9B: ImpAdLdRf MemVar_D947E0
  loc_AB4D9E: NewIfNullPr dlgBuscarConcepto
  loc_AB4DA1: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AB4DA6: FLdRfVar var_B0
  loc_AB4DA9: FLdRfVar var_88
  loc_AB4DAC: ImpAdLdRf MemVar_D947E0
  loc_AB4DAF: NewIfNullPr dlgBuscarConcepto
  loc_AB4DB2: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB4DB7: FLdPr var_88
  loc_AB4DBA: from_stack_1 = clsconcepto.RecordCount
  loc_AB4DBF: ILdRf var_B0
  loc_AB4DC2: LitI4 0
  loc_AB4DC7: GtI4
  loc_AB4DC8: FFree1Ad var_88
  loc_AB4DCB: BranchF loc_AB4E40
  loc_AB4DCE: FLdRfVar var_8C
  loc_AB4DD1: FLdRfVar var_88
  loc_AB4DD4: ImpAdLdRf MemVar_D947E0
  loc_AB4DD7: NewIfNullPr dlgBuscarConcepto
  loc_AB4DDA: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB4DDF: FLdPr var_88
  loc_AB4DE2: from_stack_1 = clsconcepto.CodiConc
  loc_AB4DE7: FLdZeroAd var_8C
  loc_AB4DEA: CVarStr var_C0
  loc_AB4DED: PopAdLdVar
  loc_AB4DEE: FLdPr Me
  loc_AB4DF1: VCallAd Control_ID_CoinPareMsk
  loc_AB4DF4: FStAdFunc var_C4
  loc_AB4DF7: FLdPr var_C4
  loc_AB4DFA: LateIdSt
  loc_AB4DFF: FFreeAd var_88 = ""
  loc_AB4E06: FFree1Var var_C0 = ""
  loc_AB4E09: FLdRfVar var_8C
  loc_AB4E0C: FLdRfVar var_88
  loc_AB4E0F: ImpAdLdRf MemVar_D947E0
  loc_AB4E12: NewIfNullPr dlgBuscarConcepto
  loc_AB4E15: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB4E1A: FLdPr var_88
  loc_AB4E1D: from_stack_1 = clsconcepto.DetaConc
  loc_AB4E22: ILdRf var_8C
  loc_AB4E25: FLdPr Me
  loc_AB4E28: VCallAd Control_ID_DeinConcLbl
  loc_AB4E2B: FStAdFunc var_C4
  loc_AB4E2E: FLdPr var_C4
  loc_AB4E31: Me.Caption = from_stack_1
  loc_AB4E36: FFree1Str var_8C
  loc_AB4E39: FFreeAd var_88 = ""
  loc_AB4E40: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AB4E45: ExitProcHresult
End Sub

Private Sub CoapPareCmd_Click() 'AB4D24
  'Data Table: 4B00A8
  loc_AB4C40: FLdRfVar var_8C
  loc_AB4C43: FLdPr Me
  loc_AB4C46: VCallAd Control_ID_PeriInfoTxt
  loc_AB4C49: FStAdFunc var_88
  loc_AB4C4C: FLdPr var_88
  loc_AB4C4F:  = Me.Text
  loc_AB4C54: ILdRf var_8C
  loc_AB4C57: CI2Str
  loc_AB4C59: ImpAdLdRf MemVar_D947E0
  loc_AB4C5C: NewIfNullPr dlgBuscarConcepto
  loc_AB4C5F: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AB4C64: FFree1Str var_8C
  loc_AB4C67: FFree1Ad var_88
  loc_AB4C6A: LitVar_Missing var_AC
  loc_AB4C6D: PopAdLdVar
  loc_AB4C6E: LitVarI4
  loc_AB4C76: PopAdLdVar
  loc_AB4C77: ImpAdLdRf MemVar_D947E0
  loc_AB4C7A: NewIfNullPr dlgBuscarConcepto
  loc_AB4C7D: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AB4C82: FLdRfVar var_B0
  loc_AB4C85: FLdRfVar var_88
  loc_AB4C88: ImpAdLdRf MemVar_D947E0
  loc_AB4C8B: NewIfNullPr dlgBuscarConcepto
  loc_AB4C8E: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB4C93: FLdPr var_88
  loc_AB4C96: from_stack_1 = clsconcepto.RecordCount
  loc_AB4C9B: ILdRf var_B0
  loc_AB4C9E: LitI4 0
  loc_AB4CA3: GtI4
  loc_AB4CA4: FFree1Ad var_88
  loc_AB4CA7: BranchF loc_AB4D1C
  loc_AB4CAA: FLdRfVar var_8C
  loc_AB4CAD: FLdRfVar var_88
  loc_AB4CB0: ImpAdLdRf MemVar_D947E0
  loc_AB4CB3: NewIfNullPr dlgBuscarConcepto
  loc_AB4CB6: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB4CBB: FLdPr var_88
  loc_AB4CBE: from_stack_1 = clsconcepto.CodiConc
  loc_AB4CC3: FLdZeroAd var_8C
  loc_AB4CC6: CVarStr var_C0
  loc_AB4CC9: PopAdLdVar
  loc_AB4CCA: FLdPr Me
  loc_AB4CCD: VCallAd Control_ID_CoapPareMsk
  loc_AB4CD0: FStAdFunc var_C4
  loc_AB4CD3: FLdPr var_C4
  loc_AB4CD6: LateIdSt
  loc_AB4CDB: FFreeAd var_88 = ""
  loc_AB4CE2: FFree1Var var_C0 = ""
  loc_AB4CE5: FLdRfVar var_8C
  loc_AB4CE8: FLdRfVar var_88
  loc_AB4CEB: ImpAdLdRf MemVar_D947E0
  loc_AB4CEE: NewIfNullPr dlgBuscarConcepto
  loc_AB4CF1: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB4CF6: FLdPr var_88
  loc_AB4CF9: from_stack_1 = clsconcepto.DetaConc
  loc_AB4CFE: ILdRf var_8C
  loc_AB4D01: FLdPr Me
  loc_AB4D04: VCallAd Control_ID_DeapConcLbl
  loc_AB4D07: FStAdFunc var_C4
  loc_AB4D0A: FLdPr var_C4
  loc_AB4D0D: Me.Caption = from_stack_1
  loc_AB4D12: FFree1Str var_8C
  loc_AB4D15: FFreeAd var_88 = ""
  loc_AB4D1C: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AB4D21: ExitProcHresult
End Sub

Private Sub Form_Load() 'AEB3C8
  'Data Table: 4B00A8
  loc_AEB258: LitI2_Byte 0
  loc_AEB25A: CR8I2
  loc_AEB25B: PopFPR4
  loc_AEB25C: FLdPr Me
  loc_AEB25F: Me.Left = from_stack_1s
  loc_AEB264: LitI2_Byte 0
  loc_AEB266: CR8I2
  loc_AEB267: PopFPR4
  loc_AEB268: FLdPr Me
  loc_AEB26B: Me.Top = from_stack_1s
  loc_AEB270: LitStr "SELECT pararenta.PeriInfo, pararenta.CorePare, concepto.DetaConc, pararenta.CoinPare, conceptointeres.DetaConc as DeinConc,"
  loc_AEB273: LitStr " pararenta.CoadPare, conceptocomiadmi.DetaConc as DeadConc, pararenta.CoapPare, conceptoapremio.DetaConc as DeapConc FROM pararenta"
  loc_AEB276: ConcatStr
  loc_AEB277: FStStrNoPop var_88
  loc_AEB27A: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = pararenta.PeriInfo AND concepto.CodiConc = pararenta.CorePare"
  loc_AEB27D: ConcatStr
  loc_AEB27E: FStStrNoPop var_8C
  loc_AEB281: LitStr " LEFT JOIN concepto as conceptointeres ON conceptointeres.PeriInfo = pararenta.PeriInfo AND conceptointeres.CodiConc = pararenta.CoinPare"
  loc_AEB284: ConcatStr
  loc_AEB285: FStStrNoPop var_90
  loc_AEB288: LitStr " LEFT JOIN concepto as conceptocomiadmi ON conceptocomiadmi.PeriInfo = pararenta.PeriInfo AND conceptocomiadmi.CodiConc = pararenta.CoadPare"
  loc_AEB28B: ConcatStr
  loc_AEB28C: FStStrNoPop var_94
  loc_AEB28F: LitStr " LEFT JOIN concepto as conceptoapremio ON conceptoapremio.PeriInfo = pararenta.PeriInfo AND conceptoapremio.CodiConc = pararenta.CoapPare"
  loc_AEB292: ConcatStr
  loc_AEB293: FStStrNoPop var_98
  loc_AEB296: LitStr " ORDER BY pararenta.PeriInfo"
  loc_AEB299: ConcatStr
  loc_AEB29A: FStStrNoPop var_9C
  loc_AEB29D: FLdPr Me
  loc_AEB2A0: MemLdRfVar from_stack_1.global_52
  loc_AEB2A3: NewIfNullPr clspararenta
  loc_AEB2A6: Call clspararenta.RedefineRS(from_stack_1v)
  loc_AEB2AB: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_AEB2BA: LitI4 0
  loc_AEB2BF: LitI4 1
  loc_AEB2C4: FLdRfVar var_A0
  loc_AEB2C7: Redim
  loc_AEB2D1: FLdPr Me
  loc_AEB2D4: MemLdRfVar from_stack_1.global_52
  loc_AEB2D7: NewIfNullAd
  loc_AEB2DA: FStAd var_A4 
  loc_AEB2DE: FLdRfVar var_A4
  loc_AEB2E1: CVarRef
  loc_AEB2E6: ParmAry1St
  loc_AEB2EC: FLdPr Me
  loc_AEB2EF: VCallAd Control_ID_dgdABMS
  loc_AEB2F2: CVarAd
  loc_AEB2F6: ParmAry1St
  loc_AEB2FC: FLdRfVar var_A0
  loc_AEB2FF: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AEB304: ILdRf var_A4
  loc_AEB307: CastAd
  loc_AEB30A: FLdPr Me
  loc_AEB30D: MemStAdFunc
  loc_AEB311: FLdRfVar var_A0
  loc_AEB314: Erase
  loc_AEB315: FFree1Ad var_A4
  loc_AEB318: Call cmdCancelar_Click()
  loc_AEB31D: LitVarI2 var_B4, 0
  loc_AEB322: PopAdLdVar
  loc_AEB323: LitStr "Periodo"
  loc_AEB326: FLdPr Me
  loc_AEB329: VCallAd Control_ID_FiltroCbo
  loc_AEB32C: FStAdFunc var_A4
  loc_AEB32F: FLdPr var_A4
  loc_AEB332: Me.AddItem from_stack_1, from_stack_2
  loc_AEB337: FFree1Ad var_A4
  loc_AEB33A: LitVarI2 var_B4, 1
  loc_AEB33F: PopAdLdVar
  loc_AEB340: LitStr "Concepto de Recargo"
  loc_AEB343: FLdPr Me
  loc_AEB346: VCallAd Control_ID_FiltroCbo
  loc_AEB349: FStAdFunc var_A4
  loc_AEB34C: FLdPr var_A4
  loc_AEB34F: Me.AddItem from_stack_1, from_stack_2
  loc_AEB354: FFree1Ad var_A4
  loc_AEB357: LitVarI2 var_B4, 2
  loc_AEB35C: PopAdLdVar
  loc_AEB35D: LitStr "Concepto de Interes"
  loc_AEB360: FLdPr Me
  loc_AEB363: VCallAd Control_ID_FiltroCbo
  loc_AEB366: FStAdFunc var_A4
  loc_AEB369: FLdPr var_A4
  loc_AEB36C: Me.AddItem from_stack_1, from_stack_2
  loc_AEB371: FFree1Ad var_A4
  loc_AEB374: LitVarI2 var_B4, 3
  loc_AEB379: PopAdLdVar
  loc_AEB37A: LitStr "Concepto de Com. Administrativa"
  loc_AEB37D: FLdPr Me
  loc_AEB380: VCallAd Control_ID_FiltroCbo
  loc_AEB383: FStAdFunc var_A4
  loc_AEB386: FLdPr var_A4
  loc_AEB389: Me.AddItem from_stack_1, from_stack_2
  loc_AEB38E: FFree1Ad var_A4
  loc_AEB391: LitVarI2 var_B4, 4
  loc_AEB396: PopAdLdVar
  loc_AEB397: LitStr "Concepto de Apremio"
  loc_AEB39A: FLdPr Me
  loc_AEB39D: VCallAd Control_ID_FiltroCbo
  loc_AEB3A0: FStAdFunc var_A4
  loc_AEB3A3: FLdPr var_A4
  loc_AEB3A6: Me.AddItem from_stack_1, from_stack_2
  loc_AEB3AB: FFree1Ad var_A4
  loc_AEB3AE: LitI2_Byte 0
  loc_AEB3B0: FLdPr Me
  loc_AEB3B3: VCallAd Control_ID_FiltroCbo
  loc_AEB3B6: FStAdFunc var_A4
  loc_AEB3B9: FLdPr var_A4
  loc_AEB3BC: Me.ListIndex = from_stack_1
  loc_AEB3C1: FFree1Ad var_A4
  loc_AEB3C4: ExitProcHresult
  loc_AEB3C5: FLdR8 arg_2500
End Sub

Private Sub Form_Activate() 'A650A0
  'Data Table: 4B00A8
  loc_A65044: FLdRfVar var_C2
  loc_A65047: FLdRfVar var_C0
  loc_A6504A: LitVarI2 var_B8, 1
  loc_A6504F: FLdPr Me
  loc_A65052: VCallAd Control_ID_tlbABMS
  loc_A65055: FStAdFunc var_88
  loc_A65058: FLdPr var_88
  loc_A6505B: LateIdLdVar var_98 DispID_3 0
  loc_A65062: CastAdVar Me
  loc_A65066: FStAdFunc var_BC
  loc_A65069: FLdPr var_BC
  loc_A6506C:  = Me.Buttons.ControlDefault
  loc_A65071: FLdPr var_C0
  loc_A65074:  = Me.Enabled
  loc_A65079: FLdI2 var_C2
  loc_A6507C: FFreeAd var_88 = "": var_BC = ""
  loc_A65085: FFreeVar var_98 = ""
  loc_A6508C: BranchF loc_A6509D
  loc_A6508F: FLdPr Me
  loc_A65092: MemLdRfVar from_stack_1.global_52
  loc_A65095: NewIfNullPr clspararenta
  loc_A65098: Call clspararenta.Requery()
  loc_A6509D: ExitProcHresult
  loc_A6509E: Error
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D0B7C
  'Data Table: 4B00A8
  loc_9D0B64: ILdI2 KeyCode
  loc_9D0B67: ILdRf Me
  loc_9D0B6A: CastAd
  loc_9D0B6D: FStAdFunc var_88
  loc_9D0B70: FLdRfVar var_88
  loc_9D0B73: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D0B78: FFree1Ad var_88
  loc_9D0B7B: ExitProcHresult
End Sub

Private Sub CorePareMsk_UnknownEvent_0 '9C2A80
  'Data Table: 4B00A8
  loc_9C2A6C: FLdPr Me
  loc_9C2A6F: VCallAd Control_ID_CorePareMsk
  loc_9C2A72: CVarAd
  loc_9C2A76: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2A7B: FFree1Var var_94 = ""
  loc_9C2A7E: ExitProcHresult
End Sub

Private Sub CorePareMsk_UnknownEvent_8 'AE02BC
  'Data Table: 4B00A8
  loc_AE016C: FLdRfVar var_8A
  loc_AE016F: FLdPr Me
  loc_AE0172: VCallAd Control_ID_cmdCancelar
  loc_AE0175: FStAdFunc var_88
  loc_AE0178: FLdPr var_88
  loc_AE017B:  = Me.Value
  loc_AE0180: FLdI2 var_8A
  loc_AE0183: NotI4
  loc_AE0184: FLdPr Me
  loc_AE0187: VCallAd Control_ID_CorePareMsk
  loc_AE018A: FStAdFunc var_90
  loc_AE018D: FLdPr var_90
  loc_AE0190: LateIdLdVar var_A0 DispID_13 -32767
  loc_AE0197: CBoolVar
  loc_AE0199: AndI4
  loc_AE019A: FFreeAd var_88 = ""
  loc_AE01A1: FFree1Var var_A0 = ""
  loc_AE01A4: BranchF loc_AE02B9
  loc_AE01A7: FLdRfVar var_A4
  loc_AE01AA: FLdPr Me
  loc_AE01AD: VCallAd Control_ID_PeriInfoTxt
  loc_AE01B0: FStAdFunc var_88
  loc_AE01B3: FLdPr var_88
  loc_AE01B6:  = Me.Text
  loc_AE01BB: FLdPr Me
  loc_AE01BE: VCallAd Control_ID_CorePareMsk
  loc_AE01C1: FStAdFunc var_90
  loc_AE01C4: FLdPr var_90
  loc_AE01C7: LateIdLdVar var_A0 DispID_22 0
  loc_AE01CE: PopAd
  loc_AE01D0: LitI2_Byte 0
  loc_AE01D2: LitI2_Byte 0
  loc_AE01D4: LitI2_Byte 0
  loc_AE01D6: LitI2_Byte 0
  loc_AE01D8: LitI2_Byte 0
  loc_AE01DA: LitI2_Byte 0
  loc_AE01DC: LitI2_Byte 0
  loc_AE01DE: LitI2_Byte 0
  loc_AE01E0: LitI2_Byte 0
  loc_AE01E2: FLdRfVar var_A0
  loc_AE01E5: CStrVarTmp
  loc_AE01E6: FStStrNoPop var_A8
  loc_AE01E9: ILdRf var_A4
  loc_AE01EC: CI2Str
  loc_AE01EE: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AE01F3: FStStrNoPop var_AC
  loc_AE01F6: FLdPr Me
  loc_AE01F9: MemStStrCopy
  loc_AE01FD: FFreeStr var_A4 = "": var_A8 = ""
  loc_AE0206: FFreeAd var_88 = ""
  loc_AE020D: FFree1Var var_A0 = ""
  loc_AE0210: FLdPr Me
  loc_AE0213: MemLdStr global_60
  loc_AE0216: LitStr vbNullString
  loc_AE0219: NeStr
  loc_AE021B: BranchF loc_AE025B
  loc_AE021E: FLdPr Me
  loc_AE0221: MemLdStr global_60
  loc_AE0224: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE0229: LitStr vbNullString
  loc_AE022C: FLdPr Me
  loc_AE022F: VCallAd Control_ID_DetaConcLbl
  loc_AE0232: FStAdFunc var_88
  loc_AE0235: FLdPr var_88
  loc_AE0238: Me.Caption = from_stack_1
  loc_AE023D: FFree1Ad var_88
  loc_AE0240: FLdPr Me
  loc_AE0243: VCallAd Control_ID_CorePareMsk
  loc_AE0246: CVarAd
  loc_AE024A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE024F: FFree1Var var_A0 = ""
  loc_AE0252: LitI2_Byte &HFF
  loc_AE0254: IStI2 KeyCode
  loc_AE0257: ExitProcHresult
  loc_AE0258: Branch loc_AE02B9
  loc_AE025B: FLdRfVar var_A4
  loc_AE025E: FLdPr Me
  loc_AE0261: VCallAd Control_ID_PeriInfoTxt
  loc_AE0264: FStAdFunc var_88
  loc_AE0267: FLdPr var_88
  loc_AE026A:  = Me.Text
  loc_AE026F: FLdPr Me
  loc_AE0272: VCallAd Control_ID_CorePareMsk
  loc_AE0275: FStAdFunc var_90
  loc_AE0278: FLdPr var_90
  loc_AE027B: LateIdLdVar var_A0 DispID_22 0
  loc_AE0282: CStrVarTmp
  loc_AE0283: FStStrNoPop var_A8
  loc_AE0286: ILdRf var_A4
  loc_AE0289: CI2Str
  loc_AE028B: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AE0290: FStStrNoPop var_AC
  loc_AE0293: FLdPr Me
  loc_AE0296: VCallAd Control_ID_DetaConcLbl
  loc_AE0299: FStAdFunc var_B0
  loc_AE029C: FLdPr var_B0
  loc_AE029F: Me.Caption = from_stack_1
  loc_AE02A4: FFreeStr var_A4 = "": var_A8 = ""
  loc_AE02AD: FFreeAd var_88 = "": var_90 = ""
  loc_AE02B6: FFree1Var var_A0 = ""
  loc_AE02B9: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'ABAD14
  'Data Table: 4B00A8
  loc_ABAC30: LitI2_Byte 0
  loc_ABAC32: FLdPr Me
  loc_ABAC35: MemStI2 global_56
  loc_ABAC38: LitI2_Byte 0
  loc_ABAC3A: ILdRf Me
  loc_ABAC3D: CastAd
  loc_ABAC40: FStAdFunc var_88
  loc_ABAC43: FLdRfVar var_88
  loc_ABAC46: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_ABAC4B: FFree1Ad var_88
  loc_ABAC4E: LitI4 0
  loc_ABAC53: LitI4 0
  loc_ABAC58: FLdRfVar var_8C
  loc_ABAC5B: Redim
  loc_ABAC65: FLdPr Me
  loc_ABAC68: VCallAd Control_ID_dgdABMS
  loc_ABAC6B: CVarAd
  loc_ABAC6F: ParmAry1St
  loc_ABAC75: FLdRfVar var_8C
  loc_ABAC78: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ABAC7D: FLdRfVar var_8C
  loc_ABAC80: Erase
  loc_ABAC81: FLdPr Me
  loc_ABAC84: MemLdRfVar from_stack_1.global_52
  loc_ABAC87: NewIfNullAd
  loc_ABAC8A: FStAd var_A0 
  loc_ABAC8E: FLdRfVar var_A0
  loc_ABAC91: CVarRef
  loc_ABAC96: ILdRf Me
  loc_ABAC99: CastAd
  loc_ABAC9C: FStAdFunc var_88
  loc_ABAC9F: FLdRfVar var_88
  loc_ABACA2: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_ABACA7: ILdRf var_A0
  loc_ABACAA: CastAd
  loc_ABACAD: FLdPr Me
  loc_ABACB0: MemStAdFunc
  loc_ABACB4: FFreeAd var_88 = ""
  loc_ABACBB: ILdRf Me
  loc_ABACBE: CastAd
  loc_ABACC1: FStAdFunc var_88
  loc_ABACC4: FLdRfVar var_88
  loc_ABACC7: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_ABACCC: FFree1Ad var_88
  loc_ABACCF: LitI4 0
  loc_ABACD4: LitI4 1
  loc_ABACD9: FLdRfVar var_8C
  loc_ABACDC: Redim
  loc_ABACE6: FLdPr Me
  loc_ABACE9: VCallAd Control_ID_FiltroCbo
  loc_ABACEC: CVarAd
  loc_ABACF0: ParmAry1St
  loc_ABACF6: FLdPr Me
  loc_ABACF9: VCallAd Control_ID_FiltroTxt
  loc_ABACFC: CVarAd
  loc_ABAD00: ParmAry1St
  loc_ABAD06: FLdRfVar var_8C
  loc_ABAD09: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ABAD0E: FLdRfVar var_8C
  loc_ABAD11: Erase
  loc_ABAD12: ExitProcHresult
  loc_ABAD13: LitI2_Byte &H30
End Sub

Private Sub PeriInfoTxt_Validate(Cancel As Boolean) 'ACA400
  'Data Table: 4B00A8
  loc_ACA2EC: FLdRfVar var_8A
  loc_ACA2EF: FLdPr Me
  loc_ACA2F2: VCallAd Control_ID_cmdCancelar
  loc_ACA2F5: FStAdFunc var_88
  loc_ACA2F8: FLdPr var_88
  loc_ACA2FB:  = Me.Value
  loc_ACA300: FLdI2 var_8A
  loc_ACA303: NotI4
  loc_ACA304: FLdRfVar var_92
  loc_ACA307: FLdPr Me
  loc_ACA30A: VCallAd Control_ID_PeriInfoTxt
  loc_ACA30D: FStAdFunc var_90
  loc_ACA310: FLdPr var_90
  loc_ACA313:  = Me.Enabled
  loc_ACA318: FLdI2 var_92
  loc_ACA31B: AndI4
  loc_ACA31C: FFreeAd var_88 = ""
  loc_ACA323: BranchF loc_ACA3FD
  loc_ACA326: FLdRfVar var_98
  loc_ACA329: FLdPr Me
  loc_ACA32C: VCallAd Control_ID_PeriInfoTxt
  loc_ACA32F: FStAdFunc var_88
  loc_ACA332: FLdPr var_88
  loc_ACA335:  = Me.Text
  loc_ACA33A: LitI2_Byte 0
  loc_ACA33C: LitI2_Byte 0
  loc_ACA33E: ILdRf var_98
  loc_ACA341: LitStr "Periodo"
  loc_ACA344: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_ACA349: FStStrNoPop var_9C
  loc_ACA34C: FLdPr Me
  loc_ACA34F: MemStStrCopy
  loc_ACA353: FFreeStr var_98 = ""
  loc_ACA35A: FFree1Ad var_88
  loc_ACA35D: FLdPr Me
  loc_ACA360: MemLdStr global_60
  loc_ACA363: LitStr vbNullString
  loc_ACA366: NeStr
  loc_ACA368: BranchF loc_ACA38E
  loc_ACA36B: FLdPr Me
  loc_ACA36E: MemLdStr global_60
  loc_ACA371: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACA376: FLdPr Me
  loc_ACA379: VCallAd Control_ID_PeriInfoTxt
  loc_ACA37C: CVarAd
  loc_ACA380: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACA385: FFree1Var var_AC = ""
  loc_ACA388: LitI2_Byte &HFF
  loc_ACA38A: IStI2 Cancel
  loc_ACA38D: ExitProcHresult
  loc_ACA38E: FLdRfVar var_9C
  loc_ACA391: FLdRfVar var_98
  loc_ACA394: FLdPr Me
  loc_ACA397: VCallAd Control_ID_PeriInfoTxt
  loc_ACA39A: FStAdFunc var_88
  loc_ACA39D: FLdPr var_88
  loc_ACA3A0:  = Me.Text
  loc_ACA3A5: ILdRf var_98
  loc_ACA3A8: CI2Str
  loc_ACA3AA: FLdPr Me
  loc_ACA3AD: MemLdRfVar from_stack_1.global_52
  loc_ACA3B0: NewIfNullPr clspararenta
  loc_ACA3B3: from_stack_2v = clspararenta.ValidaClave(from_stack_1v)
  loc_ACA3B8: ILdRf var_9C
  loc_ACA3BB: FLdPr Me
  loc_ACA3BE: MemStStrCopy
  loc_ACA3C2: FFreeStr var_98 = ""
  loc_ACA3C9: FFree1Ad var_88
  loc_ACA3CC: FLdPr Me
  loc_ACA3CF: MemLdStr global_60
  loc_ACA3D2: LitStr vbNullString
  loc_ACA3D5: NeStr
  loc_ACA3D7: BranchF loc_ACA3FD
  loc_ACA3DA: FLdPr Me
  loc_ACA3DD: MemLdStr global_60
  loc_ACA3E0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACA3E5: FLdPr Me
  loc_ACA3E8: VCallAd Control_ID_PeriInfoTxt
  loc_ACA3EB: CVarAd
  loc_ACA3EF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACA3F4: FFree1Var var_AC = ""
  loc_ACA3F7: LitI2_Byte &HFF
  loc_ACA3F9: IStI2 Cancel
  loc_ACA3FC: ExitProcHresult
  loc_ACA3FD: ExitProcHresult
End Sub
