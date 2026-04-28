VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmConceptoABM
  Caption = "Concepto"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmConceptoABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15372
  ClientHeight = 10296
  Begin VB.ComboBox PeriInfoCbl
    Style = 2
    ForeColor = &HFF0000&
    Left = 1800
    Top = 720
    Width = 1335
    Height = 420
    TabIndex = 3
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
  Begin VB.Frame FiltroFra
    Left = 240
    Top = 1080
    Width = 10695
    Height = 855
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
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
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 375
      TabIndex = 34
      OleObjectBlob = "frmConceptoABM.frx":324A
    End
  End
  Begin VB.Frame Frame1
    Left = 240
    Top = 4920
    Width = 15135
    Height = 5055
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox Text1
      ForeColor = &HFF0000&
      Left = 9120
      Top = 840
      Width = 1095
      Height = 360
      TabIndex = 35
      MaxLength = 55
      DataField = "ConcViej"
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
    Begin VB.TextBox TipaConcTxt
      ForeColor = &HFF0000&
      Left = 4935
      Top = 4440
      Width = 480
      Height = 360
      TabIndex = 32
      MaxLength = 2
      DataField = "TipaConc"
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
    Begin VB.TextBox TiafConcTxt
      ForeColor = &HFF0000&
      Left = 4935
      Top = 3960
      Width = 480
      Height = 360
      TabIndex = 29
      MaxLength = 2
      DataField = "TiafConc"
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
    Begin VB.CheckBox DevcConcChk
      Left = 4920
      Top = 2160
      Width = 255
      Height = 375
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
    End
    Begin VB.CheckBox DevsConcChk
      Left = 4920
      Top = 2520
      Width = 255
      Height = 375
      TabIndex = 19
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
    Begin VB.CommandButton ActiConcCmd
      Left = 6600
      Top = 3000
      Width = 450
      Height = 360
      TabIndex = 22
      Picture = "frmConceptoABM.frx":32D2
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CheckBox AforConcChk
      Left = 4920
      Top = 1800
      Width = 255
      Height = 375
      TabIndex = 15
      DataField = "AforConc"
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
    Begin VB.TextBox ActiConcTxt
      ForeColor = &HFF0000&
      Left = 4920
      Top = 3000
      Width = 1530
      Height = 360
      TabIndex = 21
      MaxLength = 10
      DataField = "ActiConc"
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
    Begin VB.CommandButton IngrConcCmd
      Left = 6600
      Top = 3480
      Width = 450
      Height = 360
      TabIndex = 26
      Picture = "frmConceptoABM.frx":33CC
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox IngrConcTxt
      ForeColor = &HFF0000&
      Left = 4920
      Top = 3480
      Width = 1530
      Height = 360
      TabIndex = 25
      MaxLength = 10
      DataField = "IngrConc"
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
      Left = 4920
      Top = 360
      Width = 855
      Height = 345
      TabIndex = 9
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
    Begin VB.TextBox DetaConcTxt
      ForeColor = &HFF0000&
      Left = 4920
      Top = 1320
      Width = 8055
      Height = 360
      TabIndex = 13
      MaxLength = 55
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
    Begin MSMask.MaskEdBox CodiConcMsk
      Left = 4920
      Top = 840
      Width = 1575
      Height = 360
      TabIndex = 11
      OleObjectBlob = "frmConceptoABM.frx":34C6
      DataField = "CodiConc"
    End
    Begin VB.Label Label11
      Caption = "Concepto Anterior:"
      Left = 7080
      Top = 840
      Width = 1995
      Height = 300
      TabIndex = 36
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
    Begin VB.Label DetaConcTipaLbl
      ForeColor = &HFF0000&
      Left = 5520
      Top = 4440
      Width = 6015
      Height = 360
      TabIndex = 33
      WordWrap = -1  'True
      DataField = "DetaTimoTipa"
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
      Caption = "Tipo de Movimiento de Pago:"
      Left = 1800
      Top = 4440
      Width = 3060
      Height = 300
      TabIndex = 31
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
    Begin VB.Label DetaConcTifaLbl
      ForeColor = &HFF0000&
      Left = 5520
      Top = 3960
      Width = 6015
      Height = 360
      TabIndex = 30
      WordWrap = -1  'True
      DataField = "DetaTimoTiaf"
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
      Caption = "Tipo de Movimiento de Aforo:"
      Left = 1800
      Top = 3960
      Width = 3090
      Height = 300
      TabIndex = 28
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
    Begin VB.Label Label7
      Caption = "¿Aforos o Ingresos?:"
      Left = 2640
      Top = 1800
      Width = 2220
      Height = 300
      TabIndex = 14
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
    Begin VB.Label Label8
      Caption = "Cuenta Contable de Activo:"
      Left = 1920
      Top = 3000
      Width = 2895
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
    Begin VB.Label DetaActiLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 7200
      Top = 3000
      Width = 7935
      Height = 360
      TabIndex = 23
      DataField = "DeacCuco"
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
    Begin VB.Label DetaIngrLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 7200
      Top = 3480
      Width = 7935
      Height = 360
      TabIndex = 27
      DataField = "DeinCuco"
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
    Begin VB.Label Label6
      Caption = "Cuenta Contable de Ingresos:"
      Left = 1680
      Top = 3480
      Width = 3180
      Height = 300
      TabIndex = 24
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
      Caption = "¿Deudores Varios Sin Creacion de Cuenta?:"
      Left = 195
      Top = 2520
      Width = 4695
      Height = 300
      TabIndex = 18
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
    Begin VB.Label Label20
      Caption = "¿Deudores Varios Con Creacion de Cuenta?:"
      Left = 105
      Top = 2160
      Width = 4785
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
    Begin VB.Label Label1
      Caption = "Periodo:"
      Index = 0
      Left = 4020
      Top = 360
      Width = 870
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
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 4080
      Top = 1320
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
      Left = 4080
      Top = 840
      Width = 810
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 240
    Top = 2160
    Width = 12735
    Height = 2655
    TabIndex = 6
    OleObjectBlob = "frmConceptoABM.frx":3566
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmConceptoABM.frx":37D2
    Left = 11520
    Top = 960
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15372
    Height = 528
    TabIndex = 0
    OleObjectBlob = "frmConceptoABM.frx":B350
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmConceptoABM.frx":B8AC
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label Label4
    Caption = "Periodo:"
    Left = 840
    Top = 720
    Width = 870
    Height = 300
    TabIndex = 2
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

Attribute VB_Name = "frmConceptoABM"


Private Sub DevsConcChk_Validate(Cancel As Boolean) 'AE3890
  'Data Table: 501068
  loc_AE3730: FLdRfVar var_8A
  loc_AE3733: FLdPr Me
  loc_AE3736: VCallAd Control_ID_cmdCancelar
  loc_AE3739: FStAdFunc var_88
  loc_AE373C: FLdPr var_88
  loc_AE373F:  = Me.Value
  loc_AE3744: FLdI2 var_8A
  loc_AE3747: NotI4
  loc_AE3748: FLdRfVar var_92
  loc_AE374B: FLdPr Me
  loc_AE374E: VCallAd Control_ID_DevsConcChk
  loc_AE3751: FStAdFunc var_90
  loc_AE3754: FLdPr var_90
  loc_AE3757:  = Me.Enabled
  loc_AE375C: FLdI2 var_92
  loc_AE375F: AndI4
  loc_AE3760: FFreeAd var_88 = ""
  loc_AE3767: BranchF loc_AE388F
  loc_AE376A: FLdRfVar var_8A
  loc_AE376D: FLdPr Me
  loc_AE3770: VCallAd Control_ID_DevsConcChk
  loc_AE3773: FStAdFunc var_88
  loc_AE3776: FLdPr var_88
  loc_AE3779:  = Me.Value
  loc_AE377E: FLdI2 var_8A
  loc_AE3781: LitI2_Byte 1
  loc_AE3783: EqI2
  loc_AE3784: FFree1Ad var_88
  loc_AE3787: BranchF loc_AE388F
  loc_AE378A: FLdRfVar var_98
  loc_AE378D: FLdPr Me
  loc_AE3790: VCallAd Control_ID_ActiConcTxt
  loc_AE3793: FStAdFunc var_88
  loc_AE3796: FLdPr var_88
  loc_AE3799:  = Me.Text
  loc_AE379E: ILdRf var_98
  loc_AE37A1: LitStr vbNullString
  loc_AE37A4: NeStr
  loc_AE37A6: FFree1Str var_98
  loc_AE37A9: FFree1Ad var_88
  loc_AE37AC: BranchF loc_AE37F4
  loc_AE37AF: LitStr "No se puede marcar SIN CREACION DE CUENTA, porque tiene cuenta de Activo"
  loc_AE37B2: FLdPr Me
  loc_AE37B5: MemStStrCopy
  loc_AE37B9: FLdPr Me
  loc_AE37BC: MemLdStr global_64
  loc_AE37BF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE37C4: LitI2_Byte 0
  loc_AE37C6: FLdPr Me
  loc_AE37C9: VCallAd Control_ID_DevsConcChk
  loc_AE37CC: FStAdFunc var_88
  loc_AE37CF: FLdPr var_88
  loc_AE37D2: Me.Value = from_stack_1
  loc_AE37D7: FFree1Ad var_88
  loc_AE37DA: FLdPr Me
  loc_AE37DD: VCallAd Control_ID_DevsConcChk
  loc_AE37E0: FStAdFunc var_88
  loc_AE37E3: FLdPr var_88
  loc_AE37E6: Me.SetFocus
  loc_AE37EB: FFree1Ad var_88
  loc_AE37EE: LitI2_Byte &HFF
  loc_AE37F0: IStI2 Cancel
  loc_AE37F3: ExitProcHresult
  loc_AE37F4: FLdRfVar var_98
  loc_AE37F7: FLdPr Me
  loc_AE37FA: VCallAd Control_ID_PeriInfoTxt
  loc_AE37FD: FStAdFunc var_88
  loc_AE3800: FLdPr var_88
  loc_AE3803:  = Me.Text
  loc_AE3808: FLdPr Me
  loc_AE380B: VCallAd Control_ID_CodiConcMsk
  loc_AE380E: FStAdFunc var_90
  loc_AE3811: FLdPr var_90
  loc_AE3814: LateIdLdVar var_A8 DispID_22 0
  loc_AE381B: CStrVarTmp
  loc_AE381C: FStStrNoPop var_AC
  loc_AE381F: ILdRf var_98
  loc_AE3822: CI2Str
  loc_AE3824: ImpAdCallI2  = Proc_18_75_A7E678()
  loc_AE3829: FStStrNoPop var_B0
  loc_AE382C: FLdPr Me
  loc_AE382F: MemStStrCopy
  loc_AE3833: FFreeStr var_98 = "": var_AC = ""
  loc_AE383C: FFreeAd var_88 = ""
  loc_AE3843: FFree1Var var_A8 = ""
  loc_AE3846: FLdPr Me
  loc_AE3849: MemLdStr global_64
  loc_AE384C: LitStr vbNullString
  loc_AE384F: NeStr
  loc_AE3851: BranchF loc_AE388F
  loc_AE3854: FLdPr Me
  loc_AE3857: MemLdStr global_64
  loc_AE385A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE385F: LitI2_Byte 0
  loc_AE3861: FLdPr Me
  loc_AE3864: VCallAd Control_ID_DevsConcChk
  loc_AE3867: FStAdFunc var_88
  loc_AE386A: FLdPr var_88
  loc_AE386D: Me.Value = from_stack_1
  loc_AE3872: FFree1Ad var_88
  loc_AE3875: FLdPr Me
  loc_AE3878: VCallAd Control_ID_DevsConcChk
  loc_AE387B: FStAdFunc var_88
  loc_AE387E: FLdPr var_88
  loc_AE3881: Me.SetFocus
  loc_AE3886: FFree1Ad var_88
  loc_AE3889: LitI2_Byte &HFF
  loc_AE388B: IStI2 Cancel
  loc_AE388E: ExitProcHresult
  loc_AE388F: ExitProcHresult
End Sub

Private Sub ActiConcTxt_GotFocus() '9C7598
  'Data Table: 501068
  loc_9C7584: FLdPr Me
  loc_9C7587: VCallAd Control_ID_ActiConcTxt
  loc_9C758A: CVarAd
  loc_9C758E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7593: FFree1Var var_94 = ""
  loc_9C7596: ExitProcHresult
End Sub

Private Sub ActiConcTxt_KeyPress(KeyAscii As Integer) '9DAAE8
  'Data Table: 501068
  loc_9DAAD0: LitStr "0123456789"
  loc_9DAAD3: FStStrCopy var_88
  loc_9DAAD6: FLdRfVar var_88
  loc_9DAAD9: ILdRf KeyAscii
  loc_9DAADC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DAAE1: IStI2 KeyAscii
  loc_9DAAE4: FFree1Str var_88
  loc_9DAAE7: ExitProcHresult
End Sub

Private Sub ActiConcTxt_Validate(Cancel As Boolean) 'B5B748
  'Data Table: 501068
  loc_B5B358: LitStr vbNullString
  loc_B5B35B: FLdPr Me
  loc_B5B35E: MemStStrCopy
  loc_B5B362: FLdRfVar var_8A
  loc_B5B365: FLdPr Me
  loc_B5B368: VCallAd Control_ID_DevcConcChk
  loc_B5B36B: FStAdFunc var_88
  loc_B5B36E: FLdPr var_88
  loc_B5B371:  = Me.Value
  loc_B5B376: FLdI2 var_8A
  loc_B5B379: LitI2_Byte 1
  loc_B5B37B: EqI2
  loc_B5B37C: FLdRfVar var_94
  loc_B5B37F: FLdPr Me
  loc_B5B382: VCallAd Control_ID_ActiConcTxt
  loc_B5B385: FStAdFunc var_90
  loc_B5B388: FLdPr var_90
  loc_B5B38B:  = Me.Text
  loc_B5B390: ILdRf var_94
  loc_B5B393: LitStr vbNullString
  loc_B5B396: EqStr
  loc_B5B398: AndI4
  loc_B5B399: FFree1Str var_94
  loc_B5B39C: FFreeAd var_88 = ""
  loc_B5B3A3: BranchF loc_B5B3DD
  loc_B5B3A6: LitStr "Debe ingresar una cuenta de activo."
  loc_B5B3A9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5B3AE: LitStr vbNullString
  loc_B5B3B1: FLdPr Me
  loc_B5B3B4: VCallAd Control_ID_DetaActiLbl
  loc_B5B3B7: FStAdFunc var_88
  loc_B5B3BA: FLdPr var_88
  loc_B5B3BD: Me.Caption = from_stack_1
  loc_B5B3C2: FFree1Ad var_88
  loc_B5B3C5: FLdPr Me
  loc_B5B3C8: VCallAd Control_ID_ActiConcTxt
  loc_B5B3CB: CVarAd
  loc_B5B3CF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5B3D4: FFree1Var var_A4 = ""
  loc_B5B3D7: LitI2_Byte &HFF
  loc_B5B3D9: IStI2 Cancel
  loc_B5B3DC: ExitProcHresult
  loc_B5B3DD: FLdRfVar var_8A
  loc_B5B3E0: FLdPr Me
  loc_B5B3E3: VCallAd Control_ID_DevsConcChk
  loc_B5B3E6: FStAdFunc var_88
  loc_B5B3E9: FLdPr var_88
  loc_B5B3EC:  = Me.Value
  loc_B5B3F1: FLdI2 var_8A
  loc_B5B3F4: LitI2_Byte 1
  loc_B5B3F6: EqI2
  loc_B5B3F7: FLdRfVar var_94
  loc_B5B3FA: FLdPr Me
  loc_B5B3FD: VCallAd Control_ID_ActiConcTxt
  loc_B5B400: FStAdFunc var_90
  loc_B5B403: FLdPr var_90
  loc_B5B406:  = Me.Text
  loc_B5B40B: ILdRf var_94
  loc_B5B40E: LitStr vbNullString
  loc_B5B411: NeStr
  loc_B5B413: AndI4
  loc_B5B414: FFree1Str var_94
  loc_B5B417: FFreeAd var_88 = ""
  loc_B5B41E: BranchF loc_B5B458
  loc_B5B421: LitStr "La cuenta contable de activo tiene que ser vacio."
  loc_B5B424: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5B429: LitStr vbNullString
  loc_B5B42C: FLdPr Me
  loc_B5B42F: VCallAd Control_ID_DetaActiLbl
  loc_B5B432: FStAdFunc var_88
  loc_B5B435: FLdPr var_88
  loc_B5B438: Me.Caption = from_stack_1
  loc_B5B43D: FFree1Ad var_88
  loc_B5B440: FLdPr Me
  loc_B5B443: VCallAd Control_ID_ActiConcTxt
  loc_B5B446: CVarAd
  loc_B5B44A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5B44F: FFree1Var var_A4 = ""
  loc_B5B452: LitI2_Byte &HFF
  loc_B5B454: IStI2 Cancel
  loc_B5B457: ExitProcHresult
  loc_B5B458: FLdRfVar var_8A
  loc_B5B45B: FLdPr Me
  loc_B5B45E: VCallAd Control_ID_cmdCancelar
  loc_B5B461: FStAdFunc var_88
  loc_B5B464: FLdPr var_88
  loc_B5B467:  = Me.Value
  loc_B5B46C: FLdI2 var_8A
  loc_B5B46F: NotI4
  loc_B5B470: FLdRfVar var_A6
  loc_B5B473: FLdPr Me
  loc_B5B476: VCallAd Control_ID_ActiConcTxt
  loc_B5B479: FStAdFunc var_90
  loc_B5B47C: FLdPr var_90
  loc_B5B47F:  = Me.Enabled
  loc_B5B484: FLdI2 var_A6
  loc_B5B487: LitI2_Byte &HFF
  loc_B5B489: EqI2
  loc_B5B48A: AndI4
  loc_B5B48B: FLdRfVar var_94
  loc_B5B48E: FLdPr Me
  loc_B5B491: VCallAd Control_ID_ActiConcTxt
  loc_B5B494: FStAdFunc var_AC
  loc_B5B497: FLdPr var_AC
  loc_B5B49A:  = Me.Text
  loc_B5B49F: ILdRf var_94
  loc_B5B4A2: LitStr vbNullString
  loc_B5B4A5: NeStr
  loc_B5B4A7: AndI4
  loc_B5B4A8: FFree1Str var_94
  loc_B5B4AB: FFreeAd var_88 = "": var_90 = ""
  loc_B5B4B4: BranchF loc_B5B745
  loc_B5B4B7: FLdRfVar var_94
  loc_B5B4BA: FLdPr Me
  loc_B5B4BD: VCallAd Control_ID_PeriInfoTxt
  loc_B5B4C0: FStAdFunc var_88
  loc_B5B4C3: FLdPr var_88
  loc_B5B4C6:  = Me.Text
  loc_B5B4CB: FLdRfVar var_B0
  loc_B5B4CE: FLdPr Me
  loc_B5B4D1: VCallAd Control_ID_ActiConcTxt
  loc_B5B4D4: FStAdFunc var_90
  loc_B5B4D7: FLdPr var_90
  loc_B5B4DA:  = Me.Text
  loc_B5B4DF: LitI4 0
  loc_B5B4E4: LitI4 0
  loc_B5B4E9: FLdRfVar var_B4
  loc_B5B4EC: Redim
  loc_B5B4F6: LitVarStr var_C4, "1"
  loc_B5B4FB: LitI4 0
  loc_B5B500: ILdRf var_B4
  loc_B5B503: Ary1StVarCopy
  loc_B5B505: FLdRfVar var_B4
  loc_B5B508: ILdRf var_B0
  loc_B5B50B: ILdRf var_94
  loc_B5B50E: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_B5B513: FStStr var_C8
  loc_B5B516: FLdRfVar var_B4
  loc_B5B519: Erase
  loc_B5B51A: ILdRf var_C8
  loc_B5B51D: FLdPr Me
  loc_B5B520: MemStStrCopy
  loc_B5B524: FFreeStr var_94 = "": var_B0 = ""
  loc_B5B52D: FFreeAd var_88 = ""
  loc_B5B534: FLdPr Me
  loc_B5B537: MemLdStr global_64
  loc_B5B53A: LitStr vbNullString
  loc_B5B53D: NeStr
  loc_B5B53F: BranchF loc_B5B57C
  loc_B5B542: FLdPr Me
  loc_B5B545: MemLdStr global_64
  loc_B5B548: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5B54D: LitStr vbNullString
  loc_B5B550: FLdPr Me
  loc_B5B553: VCallAd Control_ID_DetaActiLbl
  loc_B5B556: FStAdFunc var_88
  loc_B5B559: FLdPr var_88
  loc_B5B55C: Me.Caption = from_stack_1
  loc_B5B561: FFree1Ad var_88
  loc_B5B564: FLdPr Me
  loc_B5B567: VCallAd Control_ID_ActiConcTxt
  loc_B5B56A: CVarAd
  loc_B5B56E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5B573: FFree1Var var_A4 = ""
  loc_B5B576: LitI2_Byte &HFF
  loc_B5B578: IStI2 Cancel
  loc_B5B57B: ExitProcHresult
  loc_B5B57C: FLdRfVar var_94
  loc_B5B57F: FLdPr Me
  loc_B5B582: VCallAd Control_ID_PeriInfoTxt
  loc_B5B585: FStAdFunc var_88
  loc_B5B588: FLdPr var_88
  loc_B5B58B:  = Me.Text
  loc_B5B590: FLdPr Me
  loc_B5B593: VCallAd Control_ID_CodiConcMsk
  loc_B5B596: FStAdFunc var_90
  loc_B5B599: FLdPr var_90
  loc_B5B59C: LateIdLdVar var_A4 DispID_22 0
  loc_B5B5A3: CStrVarTmp
  loc_B5B5A4: FStStrNoPop var_B0
  loc_B5B5A7: ILdRf var_94
  loc_B5B5AA: CI2Str
  loc_B5B5AC: ImpAdCallI2 Proc_18_76_A7F730(, )
  loc_B5B5B1: FStStrNoPop var_C8
  loc_B5B5B4: FLdPr Me
  loc_B5B5B7: MemStStrCopy
  loc_B5B5BB: FFreeStr var_94 = "": var_B0 = ""
  loc_B5B5C4: FFreeAd var_88 = ""
  loc_B5B5CB: FFree1Var var_A4 = ""
  loc_B5B5CE: FLdPr Me
  loc_B5B5D1: MemLdStr global_64
  loc_B5B5D4: LitStr vbNullString
  loc_B5B5D7: NeStr
  loc_B5B5D9: BranchF loc_B5B5FC
  loc_B5B5DC: LitStr "Ya existen movimientos en los boletos 'SIN CREACION DE CUENTA'. No se puede colocar cuenta de ACTIVO"
  loc_B5B5DF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5B5E4: FLdPr Me
  loc_B5B5E7: VCallAd Control_ID_ActiConcTxt
  loc_B5B5EA: CVarAd
  loc_B5B5EE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5B5F3: FFree1Var var_A4 = ""
  loc_B5B5F6: LitI2_Byte &HFF
  loc_B5B5F8: IStI2 Cancel
  loc_B5B5FB: ExitProcHresult
  loc_B5B5FC: FLdRfVar var_B0
  loc_B5B5FF: FLdPr Me
  loc_B5B602: VCallAd Control_ID_PeriInfoTxt
  loc_B5B605: FStAdFunc var_90
  loc_B5B608: FLdPr var_90
  loc_B5B60B:  = Me.Text
  loc_B5B610: FLdRfVar var_94
  loc_B5B613: FLdPr Me
  loc_B5B616: VCallAd Control_ID_ActiConcTxt
  loc_B5B619: FStAdFunc var_88
  loc_B5B61C: FLdPr var_88
  loc_B5B61F:  = Me.Text
  loc_B5B624: ILdRf var_94
  loc_B5B627: FLdPr Me
  loc_B5B62A: VCallAd Control_ID_CodiConcMsk
  loc_B5B62D: FStAdFunc var_AC
  loc_B5B630: FLdPr var_AC
  loc_B5B633: LateIdLdVar var_A4 DispID_22 0
  loc_B5B63A: CStrVarTmp
  loc_B5B63B: FStStrNoPop var_C8
  loc_B5B63E: ILdRf var_B0
  loc_B5B641: CI2Str
  loc_B5B643: ImpAdCallI2 Proc_270_59_A929B0(, )
  loc_B5B648: FStStrNoPop var_CC
  loc_B5B64B: NeStr
  loc_B5B64D: FFreeStr var_B0 = "": var_C8 = "": var_94 = ""
  loc_B5B658: FFreeAd var_88 = "": var_90 = ""
  loc_B5B661: FFree1Var var_A4 = ""
  loc_B5B664: BranchF loc_B5B6EA
  loc_B5B667: FLdRfVar var_94
  loc_B5B66A: FLdPr Me
  loc_B5B66D: VCallAd Control_ID_PeriInfoTxt
  loc_B5B670: FStAdFunc var_88
  loc_B5B673: FLdPr var_88
  loc_B5B676:  = Me.Text
  loc_B5B67B: FLdPr Me
  loc_B5B67E: VCallAd Control_ID_CodiConcMsk
  loc_B5B681: FStAdFunc var_90
  loc_B5B684: FLdPr var_90
  loc_B5B687: LateIdLdVar var_A4 DispID_22 0
  loc_B5B68E: CStrVarTmp
  loc_B5B68F: FStStrNoPop var_B0
  loc_B5B692: ILdRf var_94
  loc_B5B695: CI2Str
  loc_B5B697: ImpAdCallI2  = Proc_18_74_A7E438()
  loc_B5B69C: FStStrNoPop var_C8
  loc_B5B69F: FLdPr Me
  loc_B5B6A2: MemStStrCopy
  loc_B5B6A6: FFreeStr var_94 = "": var_B0 = ""
  loc_B5B6AF: FFreeAd var_88 = ""
  loc_B5B6B6: FFree1Var var_A4 = ""
  loc_B5B6B9: FLdPr Me
  loc_B5B6BC: MemLdStr global_64
  loc_B5B6BF: LitStr vbNullString
  loc_B5B6C2: NeStr
  loc_B5B6C4: BranchF loc_B5B6EA
  loc_B5B6C7: FLdPr Me
  loc_B5B6CA: MemLdStr global_64
  loc_B5B6CD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5B6D2: FLdPr Me
  loc_B5B6D5: VCallAd Control_ID_ActiConcTxt
  loc_B5B6D8: CVarAd
  loc_B5B6DC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5B6E1: FFree1Var var_A4 = ""
  loc_B5B6E4: LitI2_Byte &HFF
  loc_B5B6E6: IStI2 Cancel
  loc_B5B6E9: ExitProcHresult
  loc_B5B6EA: FLdRfVar var_94
  loc_B5B6ED: FLdPr Me
  loc_B5B6F0: VCallAd Control_ID_PeriInfoTxt
  loc_B5B6F3: FStAdFunc var_88
  loc_B5B6F6: FLdPr var_88
  loc_B5B6F9:  = Me.Text
  loc_B5B6FE: FLdRfVar var_B0
  loc_B5B701: FLdPr Me
  loc_B5B704: VCallAd Control_ID_ActiConcTxt
  loc_B5B707: FStAdFunc var_90
  loc_B5B70A: FLdPr var_90
  loc_B5B70D:  = Me.Text
  loc_B5B712: ILdRf var_B0
  loc_B5B715: ILdRf var_94
  loc_B5B718: CI2Str
  loc_B5B71A: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_B5B71F: FStStrNoPop var_C8
  loc_B5B722: FLdPr Me
  loc_B5B725: VCallAd Control_ID_DetaActiLbl
  loc_B5B728: FStAdFunc var_AC
  loc_B5B72B: FLdPr var_AC
  loc_B5B72E: Me.Caption = from_stack_1
  loc_B5B733: FFreeStr var_94 = "": var_B0 = ""
  loc_B5B73C: FFreeAd var_88 = "": var_90 = ""
  loc_B5B745: ExitProcHresult
  loc_B5B746: LitI2FP -4092
End Sub

Private Sub TipaConcTxt_GotFocus() '9C79D0
  'Data Table: 501068
  loc_9C79BC: FLdPr Me
  loc_9C79BF: VCallAd Control_ID_TipaConcTxt
  loc_9C79C2: CVarAd
  loc_9C79C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C79CB: FFree1Var var_94 = ""
  loc_9C79CE: ExitProcHresult
End Sub

Private Sub TipaConcTxt_KeyPress(KeyAscii As Integer) 'AB49BC
  'Data Table: 501068
  loc_AB48D4: LitStr "0123456789 "
  loc_AB48D7: FStStrCopy var_88
  loc_AB48DA: FLdRfVar var_88
  loc_AB48DD: ILdRf KeyAscii
  loc_AB48E0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AB48E5: IStI2 KeyAscii
  loc_AB48E8: FFree1Str var_88
  loc_AB48EB: ILdI2 KeyAscii
  loc_AB48EE: LitI2_Byte &H20
  loc_AB48F0: EqI2
  loc_AB48F1: BranchF loc_AB49BB
  loc_AB48F4: LitI2_Byte 0
  loc_AB48F6: IStI2 KeyAscii
  loc_AB48F9: LitStr "Credito"
  loc_AB48FC: ImpAdLdRf MemVar_D94A9C
  loc_AB48FF: NewIfNullPr dlgBuscarTipodeMovimiento
  loc_AB4902: Call dlgBuscarTipodeMovimiento.sDecrTimoPut(from_stack_1v)
  loc_AB4907: LitVar_Missing var_A8
  loc_AB490A: PopAdLdVar
  loc_AB490B: LitVarI4
  loc_AB4913: PopAdLdVar
  loc_AB4914: ImpAdLdRf MemVar_D94A9C
  loc_AB4917: NewIfNullPr dlgBuscarTipodeMovimiento
  loc_AB491A: dlgBuscarTipodeMovimiento.Show from_stack_1, from_stack_2
  loc_AB491F: FLdRfVar var_B0
  loc_AB4922: FLdRfVar var_AC
  loc_AB4925: ImpAdLdRf MemVar_D94A9C
  loc_AB4928: NewIfNullPr dlgBuscarTipodeMovimiento
  loc_AB492B: from_stack_1v = dlgBuscarTipodeMovimiento.global_4288468Get()
  loc_AB4930: FLdPr var_AC
  loc_AB4933: from_stack_1 = clstipomovi.RecordCount
  loc_AB4938: ILdRf var_B0
  loc_AB493B: LitI4 0
  loc_AB4940: GtI4
  loc_AB4941: FFree1Ad var_AC
  loc_AB4944: BranchF loc_AB49BB
  loc_AB4947: FLdRfVar var_B2
  loc_AB494A: FLdRfVar var_AC
  loc_AB494D: ImpAdLdRf MemVar_D94A9C
  loc_AB4950: NewIfNullPr dlgBuscarTipodeMovimiento
  loc_AB4953: from_stack_1v = dlgBuscarTipodeMovimiento.global_4288468Get()
  loc_AB4958: FLdPr var_AC
  loc_AB495B: from_stack_1 = clstipomovi.CodiTimo
  loc_AB4960: FLdUI1
  loc_AB4964: CStrI2
  loc_AB4966: FStStrNoPop var_88
  loc_AB4969: FLdPr Me
  loc_AB496C: VCallAd Control_ID_TipaConcTxt
  loc_AB496F: FStAdFunc var_B8
  loc_AB4972: FLdPr var_B8
  loc_AB4975: Me.Text = from_stack_1
  loc_AB497A: FFree1Str var_88
  loc_AB497D: FFreeAd var_AC = ""
  loc_AB4984: FLdRfVar var_88
  loc_AB4987: FLdRfVar var_AC
  loc_AB498A: ImpAdLdRf MemVar_D94A9C
  loc_AB498D: NewIfNullPr dlgBuscarTipodeMovimiento
  loc_AB4990: from_stack_1v = dlgBuscarTipodeMovimiento.global_4288468Get()
  loc_AB4995: FLdPr var_AC
  loc_AB4998: from_stack_1 = clstipomovi.DetaTimo
  loc_AB499D: ILdRf var_88
  loc_AB49A0: FLdPr Me
  loc_AB49A3: VCallAd Control_ID_DetaConcTipaLbl
  loc_AB49A6: FStAdFunc var_B8
  loc_AB49A9: FLdPr var_B8
  loc_AB49AC: Me.Caption = from_stack_1
  loc_AB49B1: FFree1Str var_88
  loc_AB49B4: FFreeAd var_AC = ""
  loc_AB49BB: ExitProcHresult
End Sub

Private Sub TipaConcTxt_Validate(Cancel As Boolean) 'AF04A8
  'Data Table: 501068
  loc_AF030C: FLdRfVar var_8C
  loc_AF030F: FLdPr Me
  loc_AF0312: VCallAd Control_ID_TipaConcTxt
  loc_AF0315: FStAdFunc var_88
  loc_AF0318: FLdPr var_88
  loc_AF031B:  = Me.Text
  loc_AF0320: FLdZeroAd var_8C
  loc_AF0323: CVarStr var_9C
  loc_AF0326: ImpAdCallI2 IsNumeric()
  loc_AF032B: NotI4
  loc_AF032C: FFree1Ad var_88
  loc_AF032F: FFree1Var var_9C = ""
  loc_AF0332: BranchF loc_AF034C
  loc_AF0335: LitStr "0"
  loc_AF0338: FLdPr Me
  loc_AF033B: VCallAd Control_ID_TipaConcTxt
  loc_AF033E: FStAdFunc var_88
  loc_AF0341: FLdPr var_88
  loc_AF0344: Me.Text = from_stack_1
  loc_AF0349: FFree1Ad var_88
  loc_AF034C: FLdRfVar var_9E
  loc_AF034F: FLdPr Me
  loc_AF0352: VCallAd Control_ID_cmdCancelar
  loc_AF0355: FStAdFunc var_88
  loc_AF0358: FLdPr var_88
  loc_AF035B:  = Me.Value
  loc_AF0360: FLdI2 var_9E
  loc_AF0363: NotI4
  loc_AF0364: FLdRfVar var_A6
  loc_AF0367: FLdPr Me
  loc_AF036A: VCallAd Control_ID_TipaConcTxt
  loc_AF036D: FStAdFunc var_A4
  loc_AF0370: FLdPr var_A4
  loc_AF0373:  = Me.Enabled
  loc_AF0378: FLdI2 var_A6
  loc_AF037B: AndI4
  loc_AF037C: FFreeAd var_88 = ""
  loc_AF0383: BranchF loc_AF048F
  loc_AF0386: FLdRfVar var_8C
  loc_AF0389: FLdPr Me
  loc_AF038C: VCallAd Control_ID_ActiConcTxt
  loc_AF038F: FStAdFunc var_88
  loc_AF0392: FLdPr var_88
  loc_AF0395:  = Me.Text
  loc_AF039A: ILdRf var_8C
  loc_AF039D: LitStr vbNullString
  loc_AF03A0: NeStr
  loc_AF03A2: FLdRfVar var_AC
  loc_AF03A5: FLdPr Me
  loc_AF03A8: VCallAd Control_ID_TipaConcTxt
  loc_AF03AB: FStAdFunc var_A4
  loc_AF03AE: FLdPr var_A4
  loc_AF03B1:  = Me.Text
  loc_AF03B6: ILdRf var_AC
  loc_AF03B9: LitStr "0"
  loc_AF03BC: NeStr
  loc_AF03BE: OrI4
  loc_AF03BF: FFreeStr var_8C = ""
  loc_AF03C6: FFreeAd var_88 = ""
  loc_AF03CD: BranchF loc_AF048C
  loc_AF03D0: FLdRfVar var_8C
  loc_AF03D3: FLdPr Me
  loc_AF03D6: VCallAd Control_ID_TipaConcTxt
  loc_AF03D9: FStAdFunc var_88
  loc_AF03DC: FLdPr var_88
  loc_AF03DF:  = Me.Text
  loc_AF03E4: LitStr "Credito"
  loc_AF03E7: ILdRf var_8C
  loc_AF03EA: ImpAdCallI2 Proc_18_23_A82980(, )
  loc_AF03EF: FStStrNoPop var_AC
  loc_AF03F2: FLdPr Me
  loc_AF03F5: MemStStrCopy
  loc_AF03F9: FFreeStr var_8C = ""
  loc_AF0400: FFree1Ad var_88
  loc_AF0403: FLdPr Me
  loc_AF0406: MemLdStr global_64
  loc_AF0409: LitStr vbNullString
  loc_AF040C: NeStr
  loc_AF040E: BranchF loc_AF044E
  loc_AF0411: FLdPr Me
  loc_AF0414: MemLdStr global_64
  loc_AF0417: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF041C: LitStr vbNullString
  loc_AF041F: FLdPr Me
  loc_AF0422: VCallAd Control_ID_DetaConcTipaLbl
  loc_AF0425: FStAdFunc var_88
  loc_AF0428: FLdPr var_88
  loc_AF042B: Me.Caption = from_stack_1
  loc_AF0430: FFree1Ad var_88
  loc_AF0433: FLdPr Me
  loc_AF0436: VCallAd Control_ID_TipaConcTxt
  loc_AF0439: CVarAd
  loc_AF043D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF0442: FFree1Var var_9C = ""
  loc_AF0445: LitI2_Byte &HFF
  loc_AF0447: IStI2 Cancel
  loc_AF044A: ExitProcHresult
  loc_AF044B: Branch loc_AF048C
  loc_AF044E: FLdRfVar var_8C
  loc_AF0451: FLdPr Me
  loc_AF0454: VCallAd Control_ID_TipaConcTxt
  loc_AF0457: FStAdFunc var_88
  loc_AF045A: FLdPr var_88
  loc_AF045D:  = Me.Text
  loc_AF0462: ILdRf var_8C
  loc_AF0465: ImpAdCallI2 Proc_270_78_A77C30()
  loc_AF046A: FStStrNoPop var_AC
  loc_AF046D: FLdPr Me
  loc_AF0470: VCallAd Control_ID_DetaConcTipaLbl
  loc_AF0473: FStAdFunc var_A4
  loc_AF0476: FLdPr var_A4
  loc_AF0479: Me.Caption = from_stack_1
  loc_AF047E: FFreeStr var_8C = ""
  loc_AF0485: FFreeAd var_88 = ""
  loc_AF048C: Branch loc_AF04A6
  loc_AF048F: LitStr vbNullString
  loc_AF0492: FLdPr Me
  loc_AF0495: VCallAd Control_ID_DetaConcTipaLbl
  loc_AF0498: FStAdFunc var_88
  loc_AF049B: FLdPr var_88
  loc_AF049E: Me.Caption = from_stack_1
  loc_AF04A3: FFree1Ad var_88
  loc_AF04A6: ExitProcHresult
End Sub

Private Sub IngrConcCmd_Click() 'A84290
  'Data Table: 501068
  loc_A84204: LitVar_Missing var_A4
  loc_A84207: PopAdLdVar
  loc_A84208: LitVarI4
  loc_A84210: PopAdLdVar
  loc_A84211: ImpAdLdRf MemVar_D9468C
  loc_A84214: NewIfNullPr dlgBuscarCuentaContable
  loc_A84217: dlgBuscarCuentaContable.Show from_stack_1, from_stack_2
  loc_A8421C: FLdRfVar var_A8
  loc_A8421F: ImpAdLdRf MemVar_D9468C
  loc_A84222: NewIfNullPr dlgBuscarCuentaContable
  loc_A84225: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_A8422A: ILdRf var_A8
  loc_A8422D: FLdPr Me
  loc_A84230: VCallAd Control_ID_
  loc_A84233: FStAdFunc var_AC
  loc_A84236: FLdPr var_AC
  loc_A84239: dlgBuscarCuentaContable.TextBox.Text = from_stack_1
  loc_A8423E: FFree1Str var_A8
  loc_A84241: FFree1Ad var_AC
  loc_A84244: LitStr vbNullString
  loc_A84247: ImpAdLdRf MemVar_D9468C
  loc_A8424A: NewIfNullPr dlgBuscarCuentaContable
  loc_A8424D: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_A84252: FLdRfVar var_A8
  loc_A84255: ImpAdLdRf MemVar_D9468C
  loc_A84258: NewIfNullPr dlgBuscarCuentaContable
  loc_A8425B: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_A84260: ILdRf var_A8
  loc_A84263: FLdPr Me
  loc_A84266: VCallAd Control_ID_
  loc_A84269: FStAdFunc var_AC
  loc_A8426C: FLdPr var_AC
  loc_A8426F: dlgBuscarCuentaContable.Label.Caption = from_stack_1
  loc_A84274: FFree1Str var_A8
  loc_A84277: FFree1Ad var_AC
  loc_A8427A: FLdPr Me
  loc_A8427D: VCallAd Control_ID_IngrConcTxt
  loc_A84280: CVarAd
  loc_A84284: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A84289: FFree1Var var_BC = ""
  loc_A8428C: ExitProcHresult
  loc_A8428D: ImpAdLdFPR4 MemVar_30008
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BFC954
  'Data Table: 501068
  loc_BFC0CC: ILdRf Button
  loc_BFC0CF: FStAd var_88 
  loc_BFC0D3: FLdRfVar var_90
  loc_BFC0D6: FLdPr var_88
  loc_BFC0D9:  = Me.Key
  loc_BFC0DE: FLdZeroAd var_90
  loc_BFC0E1: FStStr var_94
  loc_BFC0E4: ILdRf var_94
  loc_BFC0E7: LitStr "btnCrear"
  loc_BFC0EA: EqStr
  loc_BFC0EC: BranchF loc_BFC260
  loc_BFC0EF: LitI2_Byte 1
  loc_BFC0F1: FLdPr Me
  loc_BFC0F4: MemStI2 global_60
  loc_BFC0F7: ILdRf Me
  loc_BFC0FA: CastAd
  loc_BFC0FD: FStAdFunc var_98
  loc_BFC100: FLdRfVar var_98
  loc_BFC103: ImpAdCallFPR4  = Proc_272_4_B2D678()
  loc_BFC108: FFree1Ad var_98
  loc_BFC10B: LitI4 0
  loc_BFC110: LitI4 0
  loc_BFC115: FLdRfVar var_9C
  loc_BFC118: Redim
  loc_BFC122: FLdPr Me
  loc_BFC125: VCallAd Control_ID_dgdABMS
  loc_BFC128: CVarAd
  loc_BFC12C: ParmAry1St
  loc_BFC132: FLdRfVar var_9C
  loc_BFC135: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BFC13A: FLdRfVar var_9C
  loc_BFC13D: Erase
  loc_BFC13E: ILdRf Me
  loc_BFC141: CastAd
  loc_BFC144: FStAdFunc var_98
  loc_BFC147: FLdRfVar var_98
  loc_BFC14A: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_BFC14F: FFree1Ad var_98
  loc_BFC152: ILdRf Me
  loc_BFC155: CastAd
  loc_BFC158: FStAdFunc var_98
  loc_BFC15B: FLdRfVar var_98
  loc_BFC15E: ImpAdCallFPR4  = Proc_272_18_AE5BF0()
  loc_BFC163: FFree1Ad var_98
  loc_BFC166: LitI2_Byte 0
  loc_BFC168: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BFC16D: CVarDate var_AC
  loc_BFC171: FLdRfVar var_CC
  loc_BFC174: ImpAdCallFPR4  = Year()
  loc_BFC179: FLdRfVar var_CC
  loc_BFC17C: CStrVarVal var_90
  loc_BFC180: FLdPr Me
  loc_BFC183: VCallAd Control_ID_PeriInfoTxt
  loc_BFC186: FStAdFunc var_98
  loc_BFC189: FLdPr var_98
  loc_BFC18C: Me.Text = from_stack_1
  loc_BFC191: FFree1Str var_90
  loc_BFC194: FFree1Ad var_98
  loc_BFC197: FFreeVar var_AC = ""
  loc_BFC19E: LitVarStr var_BC, vbNullString
  loc_BFC1A3: PopAdLdVar
  loc_BFC1A4: FLdPr Me
  loc_BFC1A7: VCallAd Control_ID_CodiConcMsk
  loc_BFC1AA: FStAdFunc var_98
  loc_BFC1AD: FLdPr var_98
  loc_BFC1B0: LateIdSt
  loc_BFC1B5: FFree1Ad var_98
  loc_BFC1B8: LitI2_Byte 0
  loc_BFC1BA: FLdPr Me
  loc_BFC1BD: VCallAd Control_ID_DevcConcChk
  loc_BFC1C0: FStAdFunc var_98
  loc_BFC1C3: FLdPr var_98
  loc_BFC1C6: Me.Value = from_stack_1
  loc_BFC1CB: FFree1Ad var_98
  loc_BFC1CE: LitI2_Byte 0
  loc_BFC1D0: FLdPr Me
  loc_BFC1D3: VCallAd Control_ID_DevsConcChk
  loc_BFC1D6: FStAdFunc var_98
  loc_BFC1D9: FLdPr var_98
  loc_BFC1DC: Me.Value = from_stack_1
  loc_BFC1E1: FFree1Ad var_98
  loc_BFC1E4: ILdRf Me
  loc_BFC1E7: CastAd
  loc_BFC1EA: FStAdFunc var_98
  loc_BFC1ED: FLdRfVar var_98
  loc_BFC1F0: ImpAdCallFPR4  = Proc_272_17_A8BE98()
  loc_BFC1F5: FFree1Ad var_98
  loc_BFC1F8: LitI4 0
  loc_BFC1FD: LitI4 2
  loc_BFC202: FLdRfVar var_9C
  loc_BFC205: Redim
  loc_BFC20F: FLdPr Me
  loc_BFC212: VCallAd Control_ID_PeriInfoTxt
  loc_BFC215: CVarAd
  loc_BFC219: ParmAry1St
  loc_BFC21F: FLdPr Me
  loc_BFC222: VCallAd Control_ID_AforConcChk
  loc_BFC225: CVarAd
  loc_BFC229: ParmAry1St
  loc_BFC22F: FLdPr Me
  loc_BFC232: VCallAd Control_ID_PeriInfoCbl
  loc_BFC235: CVarAd
  loc_BFC239: ParmAry1St
  loc_BFC23F: FLdRfVar var_9C
  loc_BFC242: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BFC247: FLdRfVar var_9C
  loc_BFC24A: Erase
  loc_BFC24B: FLdPr Me
  loc_BFC24E: VCallAd Control_ID_CodiConcMsk
  loc_BFC251: CVarAd
  loc_BFC255: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BFC25A: FFree1Var var_AC = ""
  loc_BFC25D: Branch loc_BFC952
  loc_BFC260: ILdRf var_94
  loc_BFC263: LitStr "btnModificar"
  loc_BFC266: EqStr
  loc_BFC268: BranchF loc_BFC417
  loc_BFC26B: FLdRfVar var_F0
  loc_BFC26E: FLdPr Me
  loc_BFC271: MemLdRfVar from_stack_1.global_52
  loc_BFC274: NewIfNullPr clsconcepto
  loc_BFC277: from_stack_1 = clsconcepto.RecordCount
  loc_BFC27C: ILdRf var_F0
  loc_BFC27F: LitI4 0
  loc_BFC284: GtI4
  loc_BFC285: BranchF loc_BFC414
  loc_BFC288: LitI2_Byte 2
  loc_BFC28A: FLdPr Me
  loc_BFC28D: MemStI2 global_60
  loc_BFC290: ILdRf Me
  loc_BFC293: CastAd
  loc_BFC296: FStAdFunc var_98
  loc_BFC299: FLdRfVar var_98
  loc_BFC29C: ImpAdCallFPR4  = Proc_272_4_B2D678()
  loc_BFC2A1: FFree1Ad var_98
  loc_BFC2A4: LitI4 0
  loc_BFC2A9: LitI4 0
  loc_BFC2AE: FLdRfVar var_9C
  loc_BFC2B1: Redim
  loc_BFC2BB: FLdPr Me
  loc_BFC2BE: VCallAd Control_ID_dgdABMS
  loc_BFC2C1: CVarAd
  loc_BFC2C5: ParmAry1St
  loc_BFC2CB: FLdRfVar var_9C
  loc_BFC2CE: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BFC2D3: FLdRfVar var_9C
  loc_BFC2D6: Erase
  loc_BFC2D7: ILdRf Me
  loc_BFC2DA: CastAd
  loc_BFC2DD: FStAdFunc var_98
  loc_BFC2E0: FLdRfVar var_98
  loc_BFC2E3: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_BFC2E8: FFree1Ad var_98
  loc_BFC2EB: LitI4 0
  loc_BFC2F0: LitI4 3
  loc_BFC2F5: FLdRfVar var_9C
  loc_BFC2F8: Redim
  loc_BFC302: FLdPr Me
  loc_BFC305: VCallAd Control_ID_IngrConcTxt
  loc_BFC308: CVarAd
  loc_BFC30C: ParmAry1St
  loc_BFC312: FLdPr Me
  loc_BFC315: VCallAd Control_ID_IngrConcCmd
  loc_BFC318: CVarAd
  loc_BFC31C: ParmAry1St
  loc_BFC322: FLdPr Me
  loc_BFC325: VCallAd Control_ID_ActiConcTxt
  loc_BFC328: CVarAd
  loc_BFC32C: ParmAry1St
  loc_BFC332: FLdPr Me
  loc_BFC335: VCallAd Control_ID_ActiConcCmd
  loc_BFC338: CVarAd
  loc_BFC33C: ParmAry1St
  loc_BFC342: FLdRfVar var_9C
  loc_BFC345: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BFC34A: FLdRfVar var_9C
  loc_BFC34D: Erase
  loc_BFC34E: LitI4 0
  loc_BFC353: LitI4 4
  loc_BFC358: FLdRfVar var_9C
  loc_BFC35B: Redim
  loc_BFC365: FLdPr Me
  loc_BFC368: VCallAd Control_ID_DetaConcTxt
  loc_BFC36B: CVarAd
  loc_BFC36F: ParmAry1St
  loc_BFC375: FLdPr Me
  loc_BFC378: VCallAd Control_ID_DevcConcChk
  loc_BFC37B: CVarAd
  loc_BFC37F: ParmAry1St
  loc_BFC385: FLdPr Me
  loc_BFC388: VCallAd Control_ID_DevsConcChk
  loc_BFC38B: CVarAd
  loc_BFC38F: ParmAry1St
  loc_BFC395: FLdPr Me
  loc_BFC398: VCallAd Control_ID_TiafConcTxt
  loc_BFC39B: CVarAd
  loc_BFC39F: ParmAry1St
  loc_BFC3A5: FLdPr Me
  loc_BFC3A8: VCallAd Control_ID_TipaConcTxt
  loc_BFC3AB: CVarAd
  loc_BFC3AF: ParmAry1St
  loc_BFC3B5: FLdRfVar var_9C
  loc_BFC3B8: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BFC3BD: FLdRfVar var_9C
  loc_BFC3C0: Erase
  loc_BFC3C1: LitI4 0
  loc_BFC3C6: LitI4 2
  loc_BFC3CB: FLdRfVar var_9C
  loc_BFC3CE: Redim
  loc_BFC3D8: FLdPr Me
  loc_BFC3DB: VCallAd Control_ID_FiltroCbo
  loc_BFC3DE: CVarAd
  loc_BFC3E2: ParmAry1St
  loc_BFC3E8: FLdPr Me
  loc_BFC3EB: VCallAd Control_ID_FiltroMsk
  loc_BFC3EE: CVarAd
  loc_BFC3F2: ParmAry1St
  loc_BFC3F8: FLdPr Me
  loc_BFC3FB: VCallAd Control_ID_PeriInfoCbl
  loc_BFC3FE: CVarAd
  loc_BFC402: ParmAry1St
  loc_BFC408: FLdRfVar var_9C
  loc_BFC40B: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BFC410: FLdRfVar var_9C
  loc_BFC413: Erase
  loc_BFC414: Branch loc_BFC952
  loc_BFC417: ILdRf var_94
  loc_BFC41A: LitStr "btnEliminar"
  loc_BFC41D: EqStr
  loc_BFC41F: BranchF loc_BFC425
  loc_BFC422: Branch loc_BFC952
  loc_BFC425: ILdRf var_94
  loc_BFC428: LitStr "btnGuardar"
  loc_BFC42B: EqStr
  loc_BFC42D: BranchF loc_BFC836
  loc_BFC430: LitStr vbNullString
  loc_BFC433: FLdPr Me
  loc_BFC436: MemStStrCopy
  loc_BFC43A: LitI2_Byte 0
  loc_BFC43C: PopTmpLdAd2 var_112
  loc_BFC43F: Call CodiConcMsk_UnknownEvent_8()
  loc_BFC444: FLdPr Me
  loc_BFC447: MemLdStr global_64
  loc_BFC44A: LitStr vbNullString
  loc_BFC44D: NeStr
  loc_BFC44F: BranchF loc_BFC453
  loc_BFC452: ExitProcHresult
  loc_BFC453: LitI2_Byte 0
  loc_BFC455: PopTmpLdAd2 var_112
  loc_BFC458: Call DetaConcTxt_Validate(from_stack_1v)
  loc_BFC45D: FLdPr Me
  loc_BFC460: MemLdStr global_64
  loc_BFC463: LitStr vbNullString
  loc_BFC466: NeStr
  loc_BFC468: BranchF loc_BFC46C
  loc_BFC46B: ExitProcHresult
  loc_BFC46C: LitI2_Byte 0
  loc_BFC46E: PopTmpLdAd2 var_112
  loc_BFC471: Call DevcConcChk_Validate(from_stack_1v)
  loc_BFC476: FLdPr Me
  loc_BFC479: MemLdStr global_64
  loc_BFC47C: LitStr vbNullString
  loc_BFC47F: NeStr
  loc_BFC481: BranchF loc_BFC485
  loc_BFC484: ExitProcHresult
  loc_BFC485: LitI2_Byte 0
  loc_BFC487: PopTmpLdAd2 var_112
  loc_BFC48A: Call DevsConcChk_Validate(from_stack_1v)
  loc_BFC48F: FLdPr Me
  loc_BFC492: MemLdStr global_64
  loc_BFC495: LitStr vbNullString
  loc_BFC498: NeStr
  loc_BFC49A: BranchF loc_BFC49E
  loc_BFC49D: ExitProcHresult
  loc_BFC49E: LitI2_Byte 0
  loc_BFC4A0: PopTmpLdAd2 var_112
  loc_BFC4A3: Call IngrConcTxt_Validate(from_stack_1v)
  loc_BFC4A8: FLdPr Me
  loc_BFC4AB: MemLdStr global_64
  loc_BFC4AE: LitStr vbNullString
  loc_BFC4B1: NeStr
  loc_BFC4B3: BranchF loc_BFC4B7
  loc_BFC4B6: ExitProcHresult
  loc_BFC4B7: LitI2_Byte 0
  loc_BFC4B9: PopTmpLdAd2 var_112
  loc_BFC4BC: Call ActiConcTxt_Validate(from_stack_1v)
  loc_BFC4C1: FLdPr Me
  loc_BFC4C4: MemLdStr global_64
  loc_BFC4C7: LitStr vbNullString
  loc_BFC4CA: NeStr
  loc_BFC4CC: BranchF loc_BFC4D0
  loc_BFC4CF: ExitProcHresult
  loc_BFC4D0: LitI2_Byte 0
  loc_BFC4D2: PopTmpLdAd2 var_112
  loc_BFC4D5: Call TiafConcTxt_Validate(from_stack_1v)
  loc_BFC4DA: FLdPr Me
  loc_BFC4DD: MemLdStr global_64
  loc_BFC4E0: LitStr vbNullString
  loc_BFC4E3: NeStr
  loc_BFC4E5: BranchF loc_BFC4E9
  loc_BFC4E8: ExitProcHresult
  loc_BFC4E9: LitI2_Byte 0
  loc_BFC4EB: PopTmpLdAd2 var_112
  loc_BFC4EE: Call TipaConcTxt_Validate(from_stack_1v)
  loc_BFC4F3: FLdPr Me
  loc_BFC4F6: MemLdStr global_64
  loc_BFC4F9: LitStr vbNullString
  loc_BFC4FC: NeStr
  loc_BFC4FE: BranchF loc_BFC502
  loc_BFC501: ExitProcHresult
  loc_BFC502: FLdPr Me
  loc_BFC505: MemLdI2 global_60
  loc_BFC508: FStI2 var_114
  loc_BFC50B: FLdI2 var_114
  loc_BFC50E: LitI2_Byte 1
  loc_BFC510: EqI2
  loc_BFC511: BranchF loc_BFC69E
  loc_BFC514: FLdRfVar var_90
  loc_BFC517: FLdPr Me
  loc_BFC51A: VCallAd Control_ID_PeriInfoTxt
  loc_BFC51D: FStAdFunc var_98
  loc_BFC520: FLdPr var_98
  loc_BFC523:  = Me.Text
  loc_BFC528: FLdPr Me
  loc_BFC52B: VCallAd Control_ID_CodiConcMsk
  loc_BFC52E: FStAdFunc var_118
  loc_BFC531: FLdPr var_118
  loc_BFC534: LateIdLdVar var_AC DispID_22 0
  loc_BFC53B: PopAd
  loc_BFC53D: FLdRfVar var_1B0
  loc_BFC540: FLdPr Me
  loc_BFC543: VCallAd Control_ID_DetaConcTxt
  loc_BFC546: FStAdFunc var_1AC
  loc_BFC549: FLdPr var_1AC
  loc_BFC54C:  = Me.Text
  loc_BFC551: FLdRfVar var_112
  loc_BFC554: FLdPr Me
  loc_BFC557: VCallAd Control_ID_DevcConcChk
  loc_BFC55A: FStAdFunc var_11C
  loc_BFC55D: FLdPr var_11C
  loc_BFC560:  = Me.Value
  loc_BFC565: LitVarStr var_12C, "Si"
  loc_BFC56A: FStVarCopyObj var_EC
  loc_BFC56D: FLdRfVar var_EC
  loc_BFC570: LitVarStr var_DC, "No"
  loc_BFC575: FStVarCopyObj var_CC
  loc_BFC578: FLdRfVar var_CC
  loc_BFC57B: FLdI2 var_112
  loc_BFC57E: CR8I2
  loc_BFC57F: LitStr "0"
  loc_BFC582: CR8Str
  loc_BFC584: EqR4
  loc_BFC585: CVarBoolI2 var_BC
  loc_BFC589: FLdRfVar var_100
  loc_BFC58C: ImpAdCallFPR4  = IIf(, , )
  loc_BFC591: FLdRfVar var_132
  loc_BFC594: FLdPr Me
  loc_BFC597: VCallAd Control_ID_DevsConcChk
  loc_BFC59A: FStAdFunc var_130
  loc_BFC59D: FLdPr var_130
  loc_BFC5A0:  = Me.Value
  loc_BFC5A5: LitVarStr var_164, "Si"
  loc_BFC5AA: FStVarCopyObj var_174
  loc_BFC5AD: FLdRfVar var_174
  loc_BFC5B0: LitVarStr var_154, "No"
  loc_BFC5B5: FStVarCopyObj var_110
  loc_BFC5B8: FLdRfVar var_110
  loc_BFC5BB: FLdI2 var_132
  loc_BFC5BE: CR8I2
  loc_BFC5BF: LitStr "0"
  loc_BFC5C2: CR8Str
  loc_BFC5C4: EqR4
  loc_BFC5C5: CVarBoolI2 var_144
  loc_BFC5C9: FLdRfVar var_184
  loc_BFC5CC: ImpAdCallFPR4  = IIf(, , )
  loc_BFC5D1: FLdRfVar var_18C
  loc_BFC5D4: FLdPr Me
  loc_BFC5D7: VCallAd Control_ID_IngrConcTxt
  loc_BFC5DA: FStAdFunc var_188
  loc_BFC5DD: FLdPr var_188
  loc_BFC5E0:  = Me.Text
  loc_BFC5E5: FLdRfVar var_194
  loc_BFC5E8: FLdPr Me
  loc_BFC5EB: VCallAd Control_ID_ActiConcTxt
  loc_BFC5EE: FStAdFunc var_190
  loc_BFC5F1: FLdPr var_190
  loc_BFC5F4:  = Me.Text
  loc_BFC5F9: FLdRfVar var_19C
  loc_BFC5FC: FLdPr Me
  loc_BFC5FF: VCallAd Control_ID_TiafConcTxt
  loc_BFC602: FStAdFunc var_198
  loc_BFC605: FLdPr var_198
  loc_BFC608:  = Me.Text
  loc_BFC60D: FLdRfVar var_1A4
  loc_BFC610: FLdPr Me
  loc_BFC613: VCallAd Control_ID_TipaConcTxt
  loc_BFC616: FStAdFunc var_1A0
  loc_BFC619: FLdPr var_1A0
  loc_BFC61C:  = Me.Text
  loc_BFC621: ILdRf var_1A4
  loc_BFC624: CUI1Str
  loc_BFC626: ILdRf var_19C
  loc_BFC629: CUI1Str
  loc_BFC62B: ILdRf var_194
  loc_BFC62E: ILdRf var_18C
  loc_BFC631: FLdRfVar var_184
  loc_BFC634: CStrVarVal var_1B8
  loc_BFC638: FLdRfVar var_100
  loc_BFC63B: CStrVarVal var_1B4
  loc_BFC63F: ILdRf var_1B0
  loc_BFC642: FLdRfVar var_AC
  loc_BFC645: CStrVarTmp
  loc_BFC646: FStStrNoPop var_1A8
  loc_BFC649: ILdRf var_90
  loc_BFC64C: CI2Str
  loc_BFC64E: FLdPr Me
  loc_BFC651: MemLdRfVar from_stack_1.global_52
  loc_BFC654: NewIfNullPr clsconcepto
  loc_BFC657: Call clsconcepto.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_BFC65C: FFreeStr var_90 = "": var_1A8 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_18C = "": var_194 = "": var_19C = ""
  loc_BFC671: FFreeAd var_98 = "": var_118 = "": var_11C = "": var_130 = "": var_188 = "": var_190 = "": var_198 = "": var_1A0 = ""
  loc_BFC686: FFreeVar var_AC = "": var_BC = "": var_CC = "": var_EC = "": var_144 = "": var_110 = "": var_174 = "": var_100 = ""
  loc_BFC69B: Branch loc_BFC82E
  loc_BFC69E: FLdI2 var_114
  loc_BFC6A1: LitI2_Byte 2
  loc_BFC6A3: EqI2
  loc_BFC6A4: BranchF loc_BFC82E
  loc_BFC6A7: FLdRfVar var_90
  loc_BFC6AA: FLdPr Me
  loc_BFC6AD: VCallAd Control_ID_PeriInfoTxt
  loc_BFC6B0: FStAdFunc var_98
  loc_BFC6B3: FLdPr var_98
  loc_BFC6B6:  = Me.Text
  loc_BFC6BB: FLdPr Me
  loc_BFC6BE: VCallAd Control_ID_CodiConcMsk
  loc_BFC6C1: FStAdFunc var_118
  loc_BFC6C4: FLdPr var_118
  loc_BFC6C7: LateIdLdVar var_AC DispID_22 0
  loc_BFC6CE: PopAd
  loc_BFC6D0: FLdRfVar var_1B0
  loc_BFC6D3: FLdPr Me
  loc_BFC6D6: VCallAd Control_ID_DetaConcTxt
  loc_BFC6D9: FStAdFunc var_1AC
  loc_BFC6DC: FLdPr var_1AC
  loc_BFC6DF:  = Me.Text
  loc_BFC6E4: FLdRfVar var_112
  loc_BFC6E7: FLdPr Me
  loc_BFC6EA: VCallAd Control_ID_DevcConcChk
  loc_BFC6ED: FStAdFunc var_11C
  loc_BFC6F0: FLdPr var_11C
  loc_BFC6F3:  = Me.Value
  loc_BFC6F8: LitVarStr var_12C, "Si"
  loc_BFC6FD: FStVarCopyObj var_EC
  loc_BFC700: FLdRfVar var_EC
  loc_BFC703: LitVarStr var_DC, "No"
  loc_BFC708: FStVarCopyObj var_CC
  loc_BFC70B: FLdRfVar var_CC
  loc_BFC70E: FLdI2 var_112
  loc_BFC711: CR8I2
  loc_BFC712: LitStr "0"
  loc_BFC715: CR8Str
  loc_BFC717: EqR4
  loc_BFC718: CVarBoolI2 var_BC
  loc_BFC71C: FLdRfVar var_100
  loc_BFC71F: ImpAdCallFPR4  = IIf(, , )
  loc_BFC724: FLdRfVar var_132
  loc_BFC727: FLdPr Me
  loc_BFC72A: VCallAd Control_ID_DevsConcChk
  loc_BFC72D: FStAdFunc var_130
  loc_BFC730: FLdPr var_130
  loc_BFC733:  = Me.Value
  loc_BFC738: LitVarStr var_164, "Si"
  loc_BFC73D: FStVarCopyObj var_174
  loc_BFC740: FLdRfVar var_174
  loc_BFC743: LitVarStr var_154, "No"
  loc_BFC748: FStVarCopyObj var_110
  loc_BFC74B: FLdRfVar var_110
  loc_BFC74E: FLdI2 var_132
  loc_BFC751: CR8I2
  loc_BFC752: LitStr "0"
  loc_BFC755: CR8Str
  loc_BFC757: EqR4
  loc_BFC758: CVarBoolI2 var_144
  loc_BFC75C: FLdRfVar var_184
  loc_BFC75F: ImpAdCallFPR4  = IIf(, , )
  loc_BFC764: FLdRfVar var_18C
  loc_BFC767: FLdPr Me
  loc_BFC76A: VCallAd Control_ID_IngrConcTxt
  loc_BFC76D: FStAdFunc var_188
  loc_BFC770: FLdPr var_188
  loc_BFC773:  = Me.Text
  loc_BFC778: FLdRfVar var_194
  loc_BFC77B: FLdPr Me
  loc_BFC77E: VCallAd Control_ID_ActiConcTxt
  loc_BFC781: FStAdFunc var_190
  loc_BFC784: FLdPr var_190
  loc_BFC787:  = Me.Text
  loc_BFC78C: FLdRfVar var_19C
  loc_BFC78F: FLdPr Me
  loc_BFC792: VCallAd Control_ID_TiafConcTxt
  loc_BFC795: FStAdFunc var_198
  loc_BFC798: FLdPr var_198
  loc_BFC79B:  = Me.Text
  loc_BFC7A0: FLdRfVar var_1A4
  loc_BFC7A3: FLdPr Me
  loc_BFC7A6: VCallAd Control_ID_TipaConcTxt
  loc_BFC7A9: FStAdFunc var_1A0
  loc_BFC7AC: FLdPr var_1A0
  loc_BFC7AF:  = Me.Text
  loc_BFC7B4: ILdRf var_1A4
  loc_BFC7B7: CUI1Str
  loc_BFC7B9: ILdRf var_19C
  loc_BFC7BC: CUI1Str
  loc_BFC7BE: ILdRf var_194
  loc_BFC7C1: ILdRf var_18C
  loc_BFC7C4: FLdRfVar var_184
  loc_BFC7C7: CStrVarVal var_1B8
  loc_BFC7CB: FLdRfVar var_100
  loc_BFC7CE: CStrVarVal var_1B4
  loc_BFC7D2: ILdRf var_1B0
  loc_BFC7D5: FLdRfVar var_AC
  loc_BFC7D8: CStrVarTmp
  loc_BFC7D9: FStStrNoPop var_1A8
  loc_BFC7DC: ILdRf var_90
  loc_BFC7DF: CI2Str
  loc_BFC7E1: FLdPr Me
  loc_BFC7E4: MemLdRfVar from_stack_1.global_52
  loc_BFC7E7: NewIfNullPr clsconcepto
  loc_BFC7EA: Call clsconcepto.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_BFC7EF: FFreeStr var_90 = "": var_1A8 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_18C = "": var_194 = "": var_19C = ""
  loc_BFC804: FFreeAd var_98 = "": var_118 = "": var_11C = "": var_130 = "": var_188 = "": var_190 = "": var_198 = "": var_1A0 = ""
  loc_BFC819: FFreeVar var_AC = "": var_BC = "": var_CC = "": var_EC = "": var_144 = "": var_110 = "": var_174 = "": var_100 = ""
  loc_BFC82E: Call cmdCancelar_Click()
  loc_BFC833: Branch loc_BFC952
  loc_BFC836: ILdRf var_94
  loc_BFC839: LitStr "btnCancelar"
  loc_BFC83C: EqStr
  loc_BFC83E: BranchF loc_BFC849
  loc_BFC841: Call cmdCancelar_Click()
  loc_BFC846: Branch loc_BFC952
  loc_BFC849: ILdRf var_94
  loc_BFC84C: LitStr "btnPrimero"
  loc_BFC84F: EqStr
  loc_BFC851: BranchF loc_BFC865
  loc_BFC854: FLdPr Me
  loc_BFC857: MemLdRfVar from_stack_1.global_52
  loc_BFC85A: NewIfNullPr clsconcepto
  loc_BFC85D: Call clsconcepto.MoveFirst()
  loc_BFC862: Branch loc_BFC952
  loc_BFC865: ILdRf var_94
  loc_BFC868: LitStr "btnAnterior"
  loc_BFC86B: EqStr
  loc_BFC86D: BranchF loc_BFC881
  loc_BFC870: FLdPr Me
  loc_BFC873: MemLdRfVar from_stack_1.global_52
  loc_BFC876: NewIfNullPr clsconcepto
  loc_BFC879: Call clsconcepto.MovePrevious()
  loc_BFC87E: Branch loc_BFC952
  loc_BFC881: ILdRf var_94
  loc_BFC884: LitStr "btnSiguiente"
  loc_BFC887: EqStr
  loc_BFC889: BranchF loc_BFC89D
  loc_BFC88C: FLdPr Me
  loc_BFC88F: MemLdRfVar from_stack_1.global_52
  loc_BFC892: NewIfNullPr clsconcepto
  loc_BFC895: Call clsconcepto.MoveNext()
  loc_BFC89A: Branch loc_BFC952
  loc_BFC89D: ILdRf var_94
  loc_BFC8A0: LitStr "btnUltimo"
  loc_BFC8A3: EqStr
  loc_BFC8A5: BranchF loc_BFC8B9
  loc_BFC8A8: FLdPr Me
  loc_BFC8AB: MemLdRfVar from_stack_1.global_52
  loc_BFC8AE: NewIfNullPr clsconcepto
  loc_BFC8B1: Call clsconcepto.MoveLast()
  loc_BFC8B6: Branch loc_BFC952
  loc_BFC8B9: ILdRf var_94
  loc_BFC8BC: LitStr "btnFiltrar"
  loc_BFC8BF: EqStr
  loc_BFC8C1: BranchF loc_BFC8C7
  loc_BFC8C4: Branch loc_BFC952
  loc_BFC8C7: ILdRf var_94
  loc_BFC8CA: LitStr "btnBuscar"
  loc_BFC8CD: EqStr
  loc_BFC8CF: BranchF loc_BFC8D5
  loc_BFC8D2: Branch loc_BFC952
  loc_BFC8D5: ILdRf var_94
  loc_BFC8D8: LitStr "btnImprimir"
  loc_BFC8DB: EqStr
  loc_BFC8DD: BranchF loc_BFC8FB
  loc_BFC8E0: LitVar_Missing var_DC
  loc_BFC8E3: PopAdLdVar
  loc_BFC8E4: LitVarI4
  loc_BFC8EC: PopAdLdVar
  loc_BFC8ED: ImpAdLdRf MemVar_D93914
  loc_BFC8F0: NewIfNullPr rptListadodeRecursos
  loc_BFC8F3: rptListadodeRecursos.Show from_stack_1, from_stack_2
  loc_BFC8F8: Branch loc_BFC952
  loc_BFC8FB: ILdRf var_94
  loc_BFC8FE: LitStr "btnAyuda"
  loc_BFC901: EqStr
  loc_BFC903: BranchF loc_BFC932
  loc_BFC906: LitVar_Missing var_100
  loc_BFC909: LitVar_Missing var_EC
  loc_BFC90C: LitVar_Missing var_CC
  loc_BFC90F: LitI4 0
  loc_BFC914: LitVarStr var_BC, "Opcion no disponible en esta version."
  loc_BFC919: FStVarCopyObj var_AC
  loc_BFC91C: FLdRfVar var_AC
  loc_BFC91F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BFC924: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_BFC92F: Branch loc_BFC952
  loc_BFC932: ILdRf var_94
  loc_BFC935: LitStr "btnSalir"
  loc_BFC938: EqStr
  loc_BFC93A: BranchF loc_BFC952
  loc_BFC93D: ILdRf Me
  loc_BFC940: FStAdNoPop
  loc_BFC944: ImpAdLdRf MemVar_D9C5D8
  loc_BFC947: NewIfNullPr Global
  loc_BFC94A: Global.Unload from_stack_1
  loc_BFC94F: FFree1Ad var_98
  loc_BFC952: ExitProcHresult
End Sub

Private Sub DetaConcTxt_GotFocus() '9C7478
  'Data Table: 501068
  loc_9C7464: FLdPr Me
  loc_9C7467: VCallAd Control_ID_DetaConcTxt
  loc_9C746A: CVarAd
  loc_9C746E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7473: FFree1Var var_94 = ""
  loc_9C7476: ExitProcHresult
End Sub

Private Sub DetaConcTxt_Validate(Cancel As Boolean) 'A917E8
  'Data Table: 501068
  loc_A91748: FLdRfVar var_8A
  loc_A9174B: FLdPr Me
  loc_A9174E: VCallAd Control_ID_cmdCancelar
  loc_A91751: FStAdFunc var_88
  loc_A91754: FLdPr var_88
  loc_A91757:  = Me.Value
  loc_A9175C: FLdI2 var_8A
  loc_A9175F: NotI4
  loc_A91760: FLdRfVar var_92
  loc_A91763: FLdPr Me
  loc_A91766: VCallAd Control_ID_DetaConcTxt
  loc_A91769: FStAdFunc var_90
  loc_A9176C: FLdPr var_90
  loc_A9176F:  = Me.Enabled
  loc_A91774: FLdI2 var_92
  loc_A91777: AndI4
  loc_A91778: FFreeAd var_88 = ""
  loc_A9177F: BranchF loc_A917E5
  loc_A91782: FLdRfVar var_98
  loc_A91785: FLdPr Me
  loc_A91788: VCallAd Control_ID_DetaConcTxt
  loc_A9178B: FStAdFunc var_88
  loc_A9178E: FLdPr var_88
  loc_A91791:  = Me.Text
  loc_A91796: ILdRf var_98
  loc_A91799: LitStr "concepto"
  loc_A9179C: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A917A1: FStStrNoPop var_9C
  loc_A917A4: FLdPr Me
  loc_A917A7: MemStStrCopy
  loc_A917AB: FFreeStr var_98 = ""
  loc_A917B2: FFree1Ad var_88
  loc_A917B5: FLdPr Me
  loc_A917B8: MemLdStr global_64
  loc_A917BB: LitStr vbNullString
  loc_A917BE: NeStr
  loc_A917C0: BranchF loc_A917E5
  loc_A917C3: FLdPr Me
  loc_A917C6: MemLdStr global_64
  loc_A917C9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A917CE: FLdPr Me
  loc_A917D1: VCallAd Control_ID_DetaConcTxt
  loc_A917D4: CVarAd
  loc_A917D8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A917DD: FFree1Var var_AC = ""
  loc_A917E0: LitI2_Byte &HFF
  loc_A917E2: IStI2 Cancel
  loc_A917E5: ExitProcHresult
End Sub

Private Sub TiafConcTxt_GotFocus() '9C76B8
  'Data Table: 501068
  loc_9C76A4: FLdPr Me
  loc_9C76A7: VCallAd Control_ID_TiafConcTxt
  loc_9C76AA: CVarAd
  loc_9C76AE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C76B3: FFree1Var var_94 = ""
  loc_9C76B6: ExitProcHresult
End Sub

Private Sub TiafConcTxt_KeyPress(KeyAscii As Integer) 'AB4C04
  'Data Table: 501068
  loc_AB4B1C: LitStr "0123456789 "
  loc_AB4B1F: FStStrCopy var_88
  loc_AB4B22: FLdRfVar var_88
  loc_AB4B25: ILdRf KeyAscii
  loc_AB4B28: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AB4B2D: IStI2 KeyAscii
  loc_AB4B30: FFree1Str var_88
  loc_AB4B33: ILdI2 KeyAscii
  loc_AB4B36: LitI2_Byte &H20
  loc_AB4B38: EqI2
  loc_AB4B39: BranchF loc_AB4C03
  loc_AB4B3C: LitI2_Byte 0
  loc_AB4B3E: IStI2 KeyAscii
  loc_AB4B41: LitStr "Debito"
  loc_AB4B44: ImpAdLdRf MemVar_D94A9C
  loc_AB4B47: NewIfNullPr dlgBuscarTipodeMovimiento
  loc_AB4B4A: Call dlgBuscarTipodeMovimiento.sDecrTimoPut(from_stack_1v)
  loc_AB4B4F: LitVar_Missing var_A8
  loc_AB4B52: PopAdLdVar
  loc_AB4B53: LitVarI4
  loc_AB4B5B: PopAdLdVar
  loc_AB4B5C: ImpAdLdRf MemVar_D94A9C
  loc_AB4B5F: NewIfNullPr dlgBuscarTipodeMovimiento
  loc_AB4B62: dlgBuscarTipodeMovimiento.Show from_stack_1, from_stack_2
  loc_AB4B67: FLdRfVar var_B0
  loc_AB4B6A: FLdRfVar var_AC
  loc_AB4B6D: ImpAdLdRf MemVar_D94A9C
  loc_AB4B70: NewIfNullPr dlgBuscarTipodeMovimiento
  loc_AB4B73: from_stack_1v = dlgBuscarTipodeMovimiento.global_4288468Get()
  loc_AB4B78: FLdPr var_AC
  loc_AB4B7B: from_stack_1 = clstipomovi.RecordCount
  loc_AB4B80: ILdRf var_B0
  loc_AB4B83: LitI4 0
  loc_AB4B88: GtI4
  loc_AB4B89: FFree1Ad var_AC
  loc_AB4B8C: BranchF loc_AB4C03
  loc_AB4B8F: FLdRfVar var_B2
  loc_AB4B92: FLdRfVar var_AC
  loc_AB4B95: ImpAdLdRf MemVar_D94A9C
  loc_AB4B98: NewIfNullPr dlgBuscarTipodeMovimiento
  loc_AB4B9B: from_stack_1v = dlgBuscarTipodeMovimiento.global_4288468Get()
  loc_AB4BA0: FLdPr var_AC
  loc_AB4BA3: from_stack_1 = clstipomovi.CodiTimo
  loc_AB4BA8: FLdUI1
  loc_AB4BAC: CStrI2
  loc_AB4BAE: FStStrNoPop var_88
  loc_AB4BB1: FLdPr Me
  loc_AB4BB4: VCallAd Control_ID_TiafConcTxt
  loc_AB4BB7: FStAdFunc var_B8
  loc_AB4BBA: FLdPr var_B8
  loc_AB4BBD: Me.Text = from_stack_1
  loc_AB4BC2: FFree1Str var_88
  loc_AB4BC5: FFreeAd var_AC = ""
  loc_AB4BCC: FLdRfVar var_88
  loc_AB4BCF: FLdRfVar var_AC
  loc_AB4BD2: ImpAdLdRf MemVar_D94A9C
  loc_AB4BD5: NewIfNullPr dlgBuscarTipodeMovimiento
  loc_AB4BD8: from_stack_1v = dlgBuscarTipodeMovimiento.global_4288468Get()
  loc_AB4BDD: FLdPr var_AC
  loc_AB4BE0: from_stack_1 = clstipomovi.DetaTimo
  loc_AB4BE5: ILdRf var_88
  loc_AB4BE8: FLdPr Me
  loc_AB4BEB: VCallAd Control_ID_DetaConcTifaLbl
  loc_AB4BEE: FStAdFunc var_B8
  loc_AB4BF1: FLdPr var_B8
  loc_AB4BF4: Me.Caption = from_stack_1
  loc_AB4BF9: FFree1Str var_88
  loc_AB4BFC: FFreeAd var_AC = ""
  loc_AB4C03: ExitProcHresult
End Sub

Private Sub TiafConcTxt_Validate(Cancel As Boolean) 'AEF968
  'Data Table: 501068
  loc_AEF7CC: FLdRfVar var_8C
  loc_AEF7CF: FLdPr Me
  loc_AEF7D2: VCallAd Control_ID_TiafConcTxt
  loc_AEF7D5: FStAdFunc var_88
  loc_AEF7D8: FLdPr var_88
  loc_AEF7DB:  = Me.Text
  loc_AEF7E0: FLdZeroAd var_8C
  loc_AEF7E3: CVarStr var_9C
  loc_AEF7E6: ImpAdCallI2 IsNumeric()
  loc_AEF7EB: NotI4
  loc_AEF7EC: FFree1Ad var_88
  loc_AEF7EF: FFree1Var var_9C = ""
  loc_AEF7F2: BranchF loc_AEF80C
  loc_AEF7F5: LitStr "0"
  loc_AEF7F8: FLdPr Me
  loc_AEF7FB: VCallAd Control_ID_TiafConcTxt
  loc_AEF7FE: FStAdFunc var_88
  loc_AEF801: FLdPr var_88
  loc_AEF804: Me.Text = from_stack_1
  loc_AEF809: FFree1Ad var_88
  loc_AEF80C: FLdRfVar var_9E
  loc_AEF80F: FLdPr Me
  loc_AEF812: VCallAd Control_ID_cmdCancelar
  loc_AEF815: FStAdFunc var_88
  loc_AEF818: FLdPr var_88
  loc_AEF81B:  = Me.Value
  loc_AEF820: FLdI2 var_9E
  loc_AEF823: NotI4
  loc_AEF824: FLdRfVar var_A6
  loc_AEF827: FLdPr Me
  loc_AEF82A: VCallAd Control_ID_TiafConcTxt
  loc_AEF82D: FStAdFunc var_A4
  loc_AEF830: FLdPr var_A4
  loc_AEF833:  = Me.Enabled
  loc_AEF838: FLdI2 var_A6
  loc_AEF83B: AndI4
  loc_AEF83C: FFreeAd var_88 = ""
  loc_AEF843: BranchF loc_AEF94F
  loc_AEF846: FLdRfVar var_8C
  loc_AEF849: FLdPr Me
  loc_AEF84C: VCallAd Control_ID_ActiConcTxt
  loc_AEF84F: FStAdFunc var_88
  loc_AEF852: FLdPr var_88
  loc_AEF855:  = Me.Text
  loc_AEF85A: ILdRf var_8C
  loc_AEF85D: LitStr vbNullString
  loc_AEF860: NeStr
  loc_AEF862: FLdRfVar var_AC
  loc_AEF865: FLdPr Me
  loc_AEF868: VCallAd Control_ID_TiafConcTxt
  loc_AEF86B: FStAdFunc var_A4
  loc_AEF86E: FLdPr var_A4
  loc_AEF871:  = Me.Text
  loc_AEF876: ILdRf var_AC
  loc_AEF879: LitStr "0"
  loc_AEF87C: NeStr
  loc_AEF87E: OrI4
  loc_AEF87F: FFreeStr var_8C = ""
  loc_AEF886: FFreeAd var_88 = ""
  loc_AEF88D: BranchF loc_AEF94C
  loc_AEF890: FLdRfVar var_8C
  loc_AEF893: FLdPr Me
  loc_AEF896: VCallAd Control_ID_TiafConcTxt
  loc_AEF899: FStAdFunc var_88
  loc_AEF89C: FLdPr var_88
  loc_AEF89F:  = Me.Text
  loc_AEF8A4: LitStr "Debito"
  loc_AEF8A7: ILdRf var_8C
  loc_AEF8AA: ImpAdCallI2 Proc_18_23_A82980(, )
  loc_AEF8AF: FStStrNoPop var_AC
  loc_AEF8B2: FLdPr Me
  loc_AEF8B5: MemStStrCopy
  loc_AEF8B9: FFreeStr var_8C = ""
  loc_AEF8C0: FFree1Ad var_88
  loc_AEF8C3: FLdPr Me
  loc_AEF8C6: MemLdStr global_64
  loc_AEF8C9: LitStr vbNullString
  loc_AEF8CC: NeStr
  loc_AEF8CE: BranchF loc_AEF90E
  loc_AEF8D1: FLdPr Me
  loc_AEF8D4: MemLdStr global_64
  loc_AEF8D7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEF8DC: LitStr vbNullString
  loc_AEF8DF: FLdPr Me
  loc_AEF8E2: VCallAd Control_ID_DetaConcTifaLbl
  loc_AEF8E5: FStAdFunc var_88
  loc_AEF8E8: FLdPr var_88
  loc_AEF8EB: Me.Caption = from_stack_1
  loc_AEF8F0: FFree1Ad var_88
  loc_AEF8F3: FLdPr Me
  loc_AEF8F6: VCallAd Control_ID_TiafConcTxt
  loc_AEF8F9: CVarAd
  loc_AEF8FD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEF902: FFree1Var var_9C = ""
  loc_AEF905: LitI2_Byte &HFF
  loc_AEF907: IStI2 Cancel
  loc_AEF90A: ExitProcHresult
  loc_AEF90B: Branch loc_AEF94C
  loc_AEF90E: FLdRfVar var_8C
  loc_AEF911: FLdPr Me
  loc_AEF914: VCallAd Control_ID_TiafConcTxt
  loc_AEF917: FStAdFunc var_88
  loc_AEF91A: FLdPr var_88
  loc_AEF91D:  = Me.Text
  loc_AEF922: ILdRf var_8C
  loc_AEF925: ImpAdCallI2 Proc_270_78_A77C30()
  loc_AEF92A: FStStrNoPop var_AC
  loc_AEF92D: FLdPr Me
  loc_AEF930: VCallAd Control_ID_DetaConcTifaLbl
  loc_AEF933: FStAdFunc var_A4
  loc_AEF936: FLdPr var_A4
  loc_AEF939: Me.Caption = from_stack_1
  loc_AEF93E: FFreeStr var_8C = ""
  loc_AEF945: FFreeAd var_88 = ""
  loc_AEF94C: Branch loc_AEF966
  loc_AEF94F: LitStr vbNullString
  loc_AEF952: FLdPr Me
  loc_AEF955: VCallAd Control_ID_DetaConcTifaLbl
  loc_AEF958: FStAdFunc var_88
  loc_AEF95B: FLdPr var_88
  loc_AEF95E: Me.Caption = from_stack_1
  loc_AEF963: FFree1Ad var_88
  loc_AEF966: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 '9C74C0
  'Data Table: 501068
  loc_9C74AC: FLdPr Me
  loc_9C74AF: VCallAd Control_ID_CodiConcMsk
  loc_9C74B2: CVarAd
  loc_9C74B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C74BB: FFree1Var var_94 = ""
  loc_9C74BE: ExitProcHresult
  loc_9C74BF: ExitProcCy
End Sub

Private Sub CodiConcMsk_UnknownEvent_8 'AA30E8
  'Data Table: 501068
  loc_AA3034: FLdRfVar var_8A
  loc_AA3037: FLdPr Me
  loc_AA303A: VCallAd Control_ID_cmdCancelar
  loc_AA303D: FStAdFunc var_88
  loc_AA3040: FLdPr var_88
  loc_AA3043:  = Me.Value
  loc_AA3048: FLdI2 var_8A
  loc_AA304B: NotI4
  loc_AA304C: FLdPr Me
  loc_AA304F: VCallAd Control_ID_CodiConcMsk
  loc_AA3052: FStAdFunc var_90
  loc_AA3055: FLdPr var_90
  loc_AA3058: LateIdLdVar var_A0 DispID_13 -32767
  loc_AA305F: CBoolVar
  loc_AA3061: AndI4
  loc_AA3062: FFreeAd var_88 = ""
  loc_AA3069: FFree1Var var_A0 = ""
  loc_AA306C: BranchF loc_AA30E6
  loc_AA306F: FLdPr Me
  loc_AA3072: VCallAd Control_ID_CodiConcMsk
  loc_AA3075: FStAdFunc var_88
  loc_AA3078: FLdPr var_88
  loc_AA307B: LateIdLdVar var_A0 DispID_22 0
  loc_AA3082: PopAd
  loc_AA3084: FLdRfVar var_A8
  loc_AA3087: FLdRfVar var_A0
  loc_AA308A: CStrVarTmp
  loc_AA308B: FStStrNoPop var_A4
  loc_AA308E: ImpAdLdI2 MemVar_D93034
  loc_AA3091: FLdPr Me
  loc_AA3094: MemLdRfVar from_stack_1.global_52
  loc_AA3097: NewIfNullPr clsconcepto
  loc_AA309A: from_stack_3v = clsconcepto.ValidaCodiConc(from_stack_1v, from_stack_2v)
  loc_AA309F: ILdRf var_A8
  loc_AA30A2: FLdPr Me
  loc_AA30A5: MemStStrCopy
  loc_AA30A9: FFreeStr var_A4 = ""
  loc_AA30B0: FFree1Ad var_88
  loc_AA30B3: FFree1Var var_A0 = ""
  loc_AA30B6: FLdPr Me
  loc_AA30B9: MemLdStr global_64
  loc_AA30BC: LitStr vbNullString
  loc_AA30BF: NeStr
  loc_AA30C1: BranchF loc_AA30E6
  loc_AA30C4: FLdPr Me
  loc_AA30C7: MemLdStr global_64
  loc_AA30CA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA30CF: FLdPr Me
  loc_AA30D2: VCallAd Control_ID_CodiConcMsk
  loc_AA30D5: CVarAd
  loc_AA30D9: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA30DE: FFree1Var var_A0 = ""
  loc_AA30E1: LitI2_Byte &HFF
  loc_AA30E3: IStI2 Cancel
  loc_AA30E6: ExitProcHresult
End Sub

Private Sub CodiConcMsk_KeyPress(KeyAscii As Integer) '9DAB80
  'Data Table: 501068
  loc_9DAB68: LitStr "0123456789"
  loc_9DAB6B: FStStrCopy var_88
  loc_9DAB6E: FLdRfVar var_88
  loc_9DAB71: ILdRf KeyAscii
  loc_9DAB74: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DAB79: IStI2 KeyAscii
  loc_9DAB7C: FFree1Str var_88
  loc_9DAB7F: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C7A18
  'Data Table: 501068
  loc_9C7A04: FLdPr Me
  loc_9C7A07: VCallAd Control_ID_FiltroMsk
  loc_9C7A0A: CVarAd
  loc_9C7A0E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7A13: FFree1Var var_94 = ""
  loc_9C7A16: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B88494
  'Data Table: 501068
  loc_B87F60: ILdRf Me
  loc_B87F63: CastAd
  loc_B87F66: FStAdFunc var_88
  loc_B87F69: FLdRfVar var_88
  loc_B87F6C: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_B87F71: FFree1Ad var_88
  loc_B87F74: FLdPr Me
  loc_B87F77: VCallAd Control_ID_FiltroMsk
  loc_B87F7A: FStAdFunc var_88
  loc_B87F7D: FLdPr var_88
  loc_B87F80: LateIdLdVar var_98 DispID_22 0
  loc_B87F87: CStrVarTmp
  loc_B87F88: FStStrNoPop var_9C
  loc_B87F8B: ImpAdCallI2 Trim$()
  loc_B87F90: FStStrNoPop var_A0
  loc_B87F93: LitStr vbNullString
  loc_B87F96: NeStr
  loc_B87F98: FFreeStr var_9C = ""
  loc_B87F9F: FFree1Ad var_88
  loc_B87FA2: FFree1Var var_98 = ""
  loc_B87FA5: BranchF loc_B8836E
  loc_B87FA8: FLdRfVar var_A2
  loc_B87FAB: FLdPr Me
  loc_B87FAE: VCallAd Control_ID_FiltroCbo
  loc_B87FB1: FStAdFunc var_88
  loc_B87FB4: FLdPr var_88
  loc_B87FB7:  = Me.ListIndex
  loc_B87FBC: FLdI2 var_A2
  loc_B87FBF: LitI2_Byte 0
  loc_B87FC1: EqI2
  loc_B87FC2: FFree1Ad var_88
  loc_B87FC5: BranchF loc_B88049
  loc_B87FC8: LitStr "CodiConc LIKE '"
  loc_B87FCB: FLdPr Me
  loc_B87FCE: VCallAd Control_ID_FiltroMsk
  loc_B87FD1: FStAdFunc var_88
  loc_B87FD4: FLdPr var_88
  loc_B87FD7: LateIdLdVar var_98 DispID_22 0
  loc_B87FDE: CStrVarTmp
  loc_B87FDF: FStStrNoPop var_9C
  loc_B87FE2: ConcatStr
  loc_B87FE3: FStStrNoPop var_A0
  loc_B87FE6: LitStr Chr(37) & "'"
  loc_B87FE9: ConcatStr
  loc_B87FEA: PopTmpLdAdStr
  loc_B87FEE: FLdPr Me
  loc_B87FF1: MemLdRfVar from_stack_1.global_52
  loc_B87FF4: NewIfNullPr clsconcepto
  loc_B87FF7: Call clsconcepto.Filter(from_stack_1v)
  loc_B87FFC: FFreeStr var_9C = "": var_A0 = ""
  loc_B88005: FFree1Ad var_88
  loc_B88008: FFree1Var var_98 = ""
  loc_B8800B: LitStr "concepto que contiene """
  loc_B8800E: FLdPr Me
  loc_B88011: VCallAd Control_ID_FiltroMsk
  loc_B88014: FStAdFunc var_88
  loc_B88017: FLdPr var_88
  loc_B8801A: LateIdLdVar var_98 DispID_22 0
  loc_B88021: CStrVarTmp
  loc_B88022: FStStrNoPop var_9C
  loc_B88025: ConcatStr
  loc_B88026: FStStrNoPop var_A0
  loc_B88029: LitStr """"
  loc_B8802C: ConcatStr
  loc_B8802D: FStStrNoPop var_A8
  loc_B88030: FLdPr Me
  loc_B88033: MemStStrCopy
  loc_B88037: FFreeStr var_9C = "": var_A0 = ""
  loc_B88040: FFree1Ad var_88
  loc_B88043: FFree1Var var_98 = ""
  loc_B88046: Branch loc_B8836B
  loc_B88049: FLdRfVar var_A2
  loc_B8804C: FLdPr Me
  loc_B8804F: VCallAd Control_ID_FiltroCbo
  loc_B88052: FStAdFunc var_88
  loc_B88055: FLdPr var_88
  loc_B88058:  = Me.ListIndex
  loc_B8805D: FLdI2 var_A2
  loc_B88060: LitI2_Byte 1
  loc_B88062: EqI2
  loc_B88063: FFree1Ad var_88
  loc_B88066: BranchF loc_B880EA
  loc_B88069: LitStr "DetaConc LIKE '" & Chr(37)
  loc_B8806C: FLdPr Me
  loc_B8806F: VCallAd Control_ID_FiltroMsk
  loc_B88072: FStAdFunc var_88
  loc_B88075: FLdPr var_88
  loc_B88078: LateIdLdVar var_98 DispID_22 0
  loc_B8807F: CStrVarTmp
  loc_B88080: FStStrNoPop var_9C
  loc_B88083: ConcatStr
  loc_B88084: FStStrNoPop var_A0
  loc_B88087: LitStr Chr(37) & "'"
  loc_B8808A: ConcatStr
  loc_B8808B: PopTmpLdAdStr
  loc_B8808F: FLdPr Me
  loc_B88092: MemLdRfVar from_stack_1.global_52
  loc_B88095: NewIfNullPr clsconcepto
  loc_B88098: Call clsconcepto.Filter(from_stack_1v)
  loc_B8809D: FFreeStr var_9C = "": var_A0 = ""
  loc_B880A6: FFree1Ad var_88
  loc_B880A9: FFree1Var var_98 = ""
  loc_B880AC: LitStr "detalle del concepto """
  loc_B880AF: FLdPr Me
  loc_B880B2: VCallAd Control_ID_FiltroMsk
  loc_B880B5: FStAdFunc var_88
  loc_B880B8: FLdPr var_88
  loc_B880BB: LateIdLdVar var_98 DispID_22 0
  loc_B880C2: CStrVarTmp
  loc_B880C3: FStStrNoPop var_9C
  loc_B880C6: ConcatStr
  loc_B880C7: FStStrNoPop var_A0
  loc_B880CA: LitStr """"
  loc_B880CD: ConcatStr
  loc_B880CE: FStStrNoPop var_A8
  loc_B880D1: FLdPr Me
  loc_B880D4: MemStStrCopy
  loc_B880D8: FFreeStr var_9C = "": var_A0 = ""
  loc_B880E1: FFree1Ad var_88
  loc_B880E4: FFree1Var var_98 = ""
  loc_B880E7: Branch loc_B8836B
  loc_B880EA: FLdRfVar var_A2
  loc_B880ED: FLdPr Me
  loc_B880F0: VCallAd Control_ID_FiltroCbo
  loc_B880F3: FStAdFunc var_88
  loc_B880F6: FLdPr var_88
  loc_B880F9:  = Me.ListIndex
  loc_B880FE: FLdI2 var_A2
  loc_B88101: LitI2_Byte 2
  loc_B88103: EqI2
  loc_B88104: FFree1Ad var_88
  loc_B88107: BranchF loc_B8818B
  loc_B8810A: LitStr "IngrConc LIKE '" & Chr(37)
  loc_B8810D: FLdPr Me
  loc_B88110: VCallAd Control_ID_FiltroMsk
  loc_B88113: FStAdFunc var_88
  loc_B88116: FLdPr var_88
  loc_B88119: LateIdLdVar var_98 DispID_22 0
  loc_B88120: CStrVarTmp
  loc_B88121: FStStrNoPop var_9C
  loc_B88124: ConcatStr
  loc_B88125: FStStrNoPop var_A0
  loc_B88128: LitStr Chr(37) & "'"
  loc_B8812B: ConcatStr
  loc_B8812C: PopTmpLdAdStr
  loc_B88130: FLdPr Me
  loc_B88133: MemLdRfVar from_stack_1.global_52
  loc_B88136: NewIfNullPr clsconcepto
  loc_B88139: Call clsconcepto.Filter(from_stack_1v)
  loc_B8813E: FFreeStr var_9C = "": var_A0 = ""
  loc_B88147: FFree1Ad var_88
  loc_B8814A: FFree1Var var_98 = ""
  loc_B8814D: LitStr "Código de la cuenta de ingreso """
  loc_B88150: FLdPr Me
  loc_B88153: VCallAd Control_ID_FiltroMsk
  loc_B88156: FStAdFunc var_88
  loc_B88159: FLdPr var_88
  loc_B8815C: LateIdLdVar var_98 DispID_22 0
  loc_B88163: CStrVarTmp
  loc_B88164: FStStrNoPop var_9C
  loc_B88167: ConcatStr
  loc_B88168: FStStrNoPop var_A0
  loc_B8816B: LitStr """"
  loc_B8816E: ConcatStr
  loc_B8816F: FStStrNoPop var_A8
  loc_B88172: FLdPr Me
  loc_B88175: MemStStrCopy
  loc_B88179: FFreeStr var_9C = "": var_A0 = ""
  loc_B88182: FFree1Ad var_88
  loc_B88185: FFree1Var var_98 = ""
  loc_B88188: Branch loc_B8836B
  loc_B8818B: FLdRfVar var_A2
  loc_B8818E: FLdPr Me
  loc_B88191: VCallAd Control_ID_FiltroCbo
  loc_B88194: FStAdFunc var_88
  loc_B88197: FLdPr var_88
  loc_B8819A:  = Me.ListIndex
  loc_B8819F: FLdI2 var_A2
  loc_B881A2: LitI2_Byte 3
  loc_B881A4: EqI2
  loc_B881A5: FFree1Ad var_88
  loc_B881A8: BranchF loc_B8822C
  loc_B881AB: LitStr "DeinCuco LIKE '" & Chr(37)
  loc_B881AE: FLdPr Me
  loc_B881B1: VCallAd Control_ID_FiltroMsk
  loc_B881B4: FStAdFunc var_88
  loc_B881B7: FLdPr var_88
  loc_B881BA: LateIdLdVar var_98 DispID_22 0
  loc_B881C1: CStrVarTmp
  loc_B881C2: FStStrNoPop var_9C
  loc_B881C5: ConcatStr
  loc_B881C6: FStStrNoPop var_A0
  loc_B881C9: LitStr Chr(37) & "'"
  loc_B881CC: ConcatStr
  loc_B881CD: PopTmpLdAdStr
  loc_B881D1: FLdPr Me
  loc_B881D4: MemLdRfVar from_stack_1.global_52
  loc_B881D7: NewIfNullPr clsconcepto
  loc_B881DA: Call clsconcepto.Filter(from_stack_1v)
  loc_B881DF: FFreeStr var_9C = "": var_A0 = ""
  loc_B881E8: FFree1Ad var_88
  loc_B881EB: FFree1Var var_98 = ""
  loc_B881EE: LitStr "detalle de la cuenta de ingreso """
  loc_B881F1: FLdPr Me
  loc_B881F4: VCallAd Control_ID_FiltroMsk
  loc_B881F7: FStAdFunc var_88
  loc_B881FA: FLdPr var_88
  loc_B881FD: LateIdLdVar var_98 DispID_22 0
  loc_B88204: CStrVarTmp
  loc_B88205: FStStrNoPop var_9C
  loc_B88208: ConcatStr
  loc_B88209: FStStrNoPop var_A0
  loc_B8820C: LitStr """"
  loc_B8820F: ConcatStr
  loc_B88210: FStStrNoPop var_A8
  loc_B88213: FLdPr Me
  loc_B88216: MemStStrCopy
  loc_B8821A: FFreeStr var_9C = "": var_A0 = ""
  loc_B88223: FFree1Ad var_88
  loc_B88226: FFree1Var var_98 = ""
  loc_B88229: Branch loc_B8836B
  loc_B8822C: FLdRfVar var_A2
  loc_B8822F: FLdPr Me
  loc_B88232: VCallAd Control_ID_FiltroCbo
  loc_B88235: FStAdFunc var_88
  loc_B88238: FLdPr var_88
  loc_B8823B:  = Me.ListIndex
  loc_B88240: FLdI2 var_A2
  loc_B88243: LitI2_Byte 4
  loc_B88245: EqI2
  loc_B88246: FFree1Ad var_88
  loc_B88249: BranchF loc_B882CD
  loc_B8824C: LitStr "ActiConc LIKE '" & Chr(37)
  loc_B8824F: FLdPr Me
  loc_B88252: VCallAd Control_ID_FiltroMsk
  loc_B88255: FStAdFunc var_88
  loc_B88258: FLdPr var_88
  loc_B8825B: LateIdLdVar var_98 DispID_22 0
  loc_B88262: CStrVarTmp
  loc_B88263: FStStrNoPop var_9C
  loc_B88266: ConcatStr
  loc_B88267: FStStrNoPop var_A0
  loc_B8826A: LitStr Chr(37) & "'"
  loc_B8826D: ConcatStr
  loc_B8826E: PopTmpLdAdStr
  loc_B88272: FLdPr Me
  loc_B88275: MemLdRfVar from_stack_1.global_52
  loc_B88278: NewIfNullPr clsconcepto
  loc_B8827B: Call clsconcepto.Filter(from_stack_1v)
  loc_B88280: FFreeStr var_9C = "": var_A0 = ""
  loc_B88289: FFree1Ad var_88
  loc_B8828C: FFree1Var var_98 = ""
  loc_B8828F: LitStr "Còdigo de la cuenta contable de Activo """
  loc_B88292: FLdPr Me
  loc_B88295: VCallAd Control_ID_FiltroMsk
  loc_B88298: FStAdFunc var_88
  loc_B8829B: FLdPr var_88
  loc_B8829E: LateIdLdVar var_98 DispID_22 0
  loc_B882A5: CStrVarTmp
  loc_B882A6: FStStrNoPop var_9C
  loc_B882A9: ConcatStr
  loc_B882AA: FStStrNoPop var_A0
  loc_B882AD: LitStr """"
  loc_B882B0: ConcatStr
  loc_B882B1: FStStrNoPop var_A8
  loc_B882B4: FLdPr Me
  loc_B882B7: MemStStrCopy
  loc_B882BB: FFreeStr var_9C = "": var_A0 = ""
  loc_B882C4: FFree1Ad var_88
  loc_B882C7: FFree1Var var_98 = ""
  loc_B882CA: Branch loc_B8836B
  loc_B882CD: FLdRfVar var_A2
  loc_B882D0: FLdPr Me
  loc_B882D3: VCallAd Control_ID_FiltroCbo
  loc_B882D6: FStAdFunc var_88
  loc_B882D9: FLdPr var_88
  loc_B882DC:  = Me.ListIndex
  loc_B882E1: FLdI2 var_A2
  loc_B882E4: LitI2_Byte 5
  loc_B882E6: EqI2
  loc_B882E7: FFree1Ad var_88
  loc_B882EA: BranchF loc_B8836B
  loc_B882ED: LitStr "DeacCuco LIKE '" & Chr(37)
  loc_B882F0: FLdPr Me
  loc_B882F3: VCallAd Control_ID_FiltroMsk
  loc_B882F6: FStAdFunc var_88
  loc_B882F9: FLdPr var_88
  loc_B882FC: LateIdLdVar var_98 DispID_22 0
  loc_B88303: CStrVarTmp
  loc_B88304: FStStrNoPop var_9C
  loc_B88307: ConcatStr
  loc_B88308: FStStrNoPop var_A0
  loc_B8830B: LitStr Chr(37) & "'"
  loc_B8830E: ConcatStr
  loc_B8830F: PopTmpLdAdStr
  loc_B88313: FLdPr Me
  loc_B88316: MemLdRfVar from_stack_1.global_52
  loc_B88319: NewIfNullPr clsconcepto
  loc_B8831C: Call clsconcepto.Filter(from_stack_1v)
  loc_B88321: FFreeStr var_9C = "": var_A0 = ""
  loc_B8832A: FFree1Ad var_88
  loc_B8832D: FFree1Var var_98 = ""
  loc_B88330: LitStr "detalle de la cuenta contable de Activo """
  loc_B88333: FLdPr Me
  loc_B88336: VCallAd Control_ID_FiltroMsk
  loc_B88339: FStAdFunc var_88
  loc_B8833C: FLdPr var_88
  loc_B8833F: LateIdLdVar var_98 DispID_22 0
  loc_B88346: CStrVarTmp
  loc_B88347: FStStrNoPop var_9C
  loc_B8834A: ConcatStr
  loc_B8834B: FStStrNoPop var_A0
  loc_B8834E: LitStr """"
  loc_B88351: ConcatStr
  loc_B88352: FStStrNoPop var_A8
  loc_B88355: FLdPr Me
  loc_B88358: MemStStrCopy
  loc_B8835C: FFreeStr var_9C = "": var_A0 = ""
  loc_B88365: FFree1Ad var_88
  loc_B88368: FFree1Var var_98 = ""
  loc_B8836B: Branch loc_B883A0
  loc_B8836E: LitStr vbNullString
  loc_B88371: FStStrCopy var_9C
  loc_B88374: FLdRfVar var_9C
  loc_B88377: FLdPr Me
  loc_B8837A: MemLdRfVar from_stack_1.global_52
  loc_B8837D: NewIfNullPr clsconcepto
  loc_B88380: Call clsconcepto.Filter(from_stack_1v)
  loc_B88385: FFree1Str var_9C
  loc_B88388: FLdPr Me
  loc_B8838B: MemLdRfVar from_stack_1.global_52
  loc_B8838E: NewIfNullPr clsconcepto
  loc_B88391: Call clsconcepto.Requery()
  loc_B88396: LitStr vbNullString
  loc_B88399: FLdPr Me
  loc_B8839C: MemStStrCopy
  loc_B883A0: FLdRfVar var_AC
  loc_B883A3: FLdPr Me
  loc_B883A6: MemLdRfVar from_stack_1.global_52
  loc_B883A9: NewIfNullPr clsconcepto
  loc_B883AC: from_stack_1 = clsconcepto.RecordCount
  loc_B883B1: ILdRf var_AC
  loc_B883B4: LitI4 0
  loc_B883B9: GtI4
  loc_B883BA: BranchF loc_B88458
  loc_B883BD: FLdPr Me
  loc_B883C0: MemLdRfVar from_stack_1.global_52
  loc_B883C3: NewIfNullAd
  loc_B883C6: FStAd var_B0 
  loc_B883CA: FLdRfVar var_B0
  loc_B883CD: CVarRef
  loc_B883D2: ILdRf Me
  loc_B883D5: CastAd
  loc_B883D8: FStAdFunc var_88
  loc_B883DB: FLdRfVar var_88
  loc_B883DE: ImpAdCallFPR4  = Proc_272_14_A8F45C()
  loc_B883E3: ILdRf var_B0
  loc_B883E6: CastAd
  loc_B883E9: FLdPr Me
  loc_B883EC: MemStAdFunc
  loc_B883F0: FFreeAd var_88 = ""
  loc_B883F7: LitI4 0
  loc_B883FC: LitI4 1
  loc_B88401: FLdRfVar var_C4
  loc_B88404: Redim
  loc_B8840E: FLdPr Me
  loc_B88411: MemLdRfVar from_stack_1.global_52
  loc_B88414: NewIfNullAd
  loc_B88417: FStAd var_88 
  loc_B8841B: FLdRfVar var_88
  loc_B8841E: CVarRef
  loc_B88423: ParmAry1St
  loc_B88429: FLdPr Me
  loc_B8842C: VCallAd Control_ID_dgdABMS
  loc_B8842F: CVarAd
  loc_B88433: ParmAry1St
  loc_B88439: FLdRfVar var_C4
  loc_B8843C: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B88441: ILdRf var_88
  loc_B88444: CastAd
  loc_B88447: FLdPr Me
  loc_B8844A: MemStAdFunc
  loc_B8844E: FLdRfVar var_C4
  loc_B88451: Erase
  loc_B88452: FFree1Ad var_88
  loc_B88455: Branch loc_B8846C
  loc_B88458: ILdRf Me
  loc_B8845B: CastAd
  loc_B8845E: FStAdFunc var_88
  loc_B88461: FLdRfVar var_88
  loc_B88464: ImpAdCallFPR4  = Proc_272_18_AE5BF0()
  loc_B88469: FFree1Ad var_88
  loc_B8846C: FLdPr Me
  loc_B8846F: VCallAd Control_ID_dgdABMS
  loc_B88472: FStAdFunc var_B0
  loc_B88475: FLdPr Me
  loc_B88478: MemLdStr global_68
  loc_B8847B: FLdZeroAd var_B0
  loc_B8847E: FStAdFunc var_88
  loc_B88481: FLdRfVar var_88
  loc_B88484: ImpAdCallFPR4  = Proc_272_56_ACCA08()
  loc_B88489: FFreeAd var_88 = ""
  loc_B88490: ExitProcHresult
  loc_B88491: FLdPr MeFE
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) 'A63028
  'Data Table: 501068
  loc_A62FC4: ILdI2 KeyAscii
  loc_A62FC7: LitI2_Byte &H27
  loc_A62FC9: EqI2
  loc_A62FCA: BranchF loc_A62FD2
  loc_A62FCD: LitI2_Byte 0
  loc_A62FCF: IStI2 KeyAscii
  loc_A62FD2: FLdRfVar var_88
  loc_A62FD5: FLdPr Me
  loc_A62FD8: MemLdRfVar from_stack_1.global_52
  loc_A62FDB: NewIfNullPr clsconcepto
  loc_A62FDE: from_stack_1 = clsconcepto.RecordCount
  loc_A62FE3: ILdRf var_88
  loc_A62FE6: LitI4 0
  loc_A62FEB: EqI4
  loc_A62FEC: ILdI2 KeyAscii
  loc_A62FEF: CI4UI1
  loc_A62FF0: LitI4 8
  loc_A62FF5: NeI4
  loc_A62FF6: AndI4
  loc_A62FF7: FLdPr Me
  loc_A62FFA: VCallAd Control_ID_FiltroMsk
  loc_A62FFD: FStAdFunc var_8C
  loc_A63000: FLdPr var_8C
  loc_A63003: LateIdLdVar var_9C DispID_16 0
  loc_A6300A: CStrVarTmp
  loc_A6300B: FStStrNoPop var_A0
  loc_A6300E: LitStr vbNullString
  loc_A63011: EqStr
  loc_A63013: AndI4
  loc_A63014: FFree1Str var_A0
  loc_A63017: FFree1Ad var_8C
  loc_A6301A: FFree1Var var_9C = ""
  loc_A6301D: BranchF loc_A63025
  loc_A63020: LitI2_Byte 0
  loc_A63022: IStI2 KeyAscii
  loc_A63025: ExitProcHresult
End Sub

Private Sub IngrConcTxt_GotFocus() '9C7430
  'Data Table: 501068
  loc_9C741C: FLdPr Me
  loc_9C741F: VCallAd Control_ID_IngrConcTxt
  loc_9C7422: CVarAd
  loc_9C7426: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C742B: FFree1Var var_94 = ""
  loc_9C742E: ExitProcHresult
End Sub

Private Sub IngrConcTxt_KeyPress(KeyAscii As Integer) '9DAEC4
  'Data Table: 501068
  loc_9DAEAC: LitStr "0123456789"
  loc_9DAEAF: FStStrCopy var_88
  loc_9DAEB2: FLdRfVar var_88
  loc_9DAEB5: ILdRf KeyAscii
  loc_9DAEB8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DAEBD: IStI2 KeyAscii
  loc_9DAEC0: FFree1Str var_88
  loc_9DAEC3: ExitProcHresult
End Sub

Private Sub IngrConcTxt_Validate(Cancel As Boolean) 'B957F0
  'Data Table: 501068
  loc_B95274: FLdRfVar var_8A
  loc_B95277: FLdPr Me
  loc_B9527A: VCallAd Control_ID_cmdCancelar
  loc_B9527D: FStAdFunc var_88
  loc_B95280: FLdPr var_88
  loc_B95283:  = Me.Value
  loc_B95288: FLdI2 var_8A
  loc_B9528B: NotI4
  loc_B9528C: FLdRfVar var_92
  loc_B9528F: FLdPr Me
  loc_B95292: VCallAd Control_ID_IngrConcTxt
  loc_B95295: FStAdFunc var_90
  loc_B95298: FLdPr var_90
  loc_B9529B:  = Me.Enabled
  loc_B952A0: FLdI2 var_92
  loc_B952A3: LitI2_Byte &HFF
  loc_B952A5: EqI2
  loc_B952A6: AndI4
  loc_B952A7: FLdRfVar var_9C
  loc_B952AA: FLdPr Me
  loc_B952AD: VCallAd Control_ID_IngrConcTxt
  loc_B952B0: FStAdFunc var_98
  loc_B952B3: FLdPr var_98
  loc_B952B6:  = Me.Text
  loc_B952BB: ILdRf var_9C
  loc_B952BE: LitStr vbNullString
  loc_B952C1: NeStr
  loc_B952C3: AndI4
  loc_B952C4: FFree1Str var_9C
  loc_B952C7: FFreeAd var_88 = "": var_90 = ""
  loc_B952D0: BranchF loc_B957EF
  loc_B952D3: FLdRfVar var_9C
  loc_B952D6: FLdPr Me
  loc_B952D9: VCallAd Control_ID_PeriInfoTxt
  loc_B952DC: FStAdFunc var_88
  loc_B952DF: FLdPr var_88
  loc_B952E2:  = Me.Text
  loc_B952E7: FLdRfVar var_A0
  loc_B952EA: FLdPr Me
  loc_B952ED: VCallAd Control_ID_IngrConcTxt
  loc_B952F0: FStAdFunc var_90
  loc_B952F3: FLdPr var_90
  loc_B952F6:  = Me.Text
  loc_B952FB: LitI4 0
  loc_B95300: LitI4 3
  loc_B95305: FLdRfVar var_A4
  loc_B95308: Redim
  loc_B95312: LitVarStr var_B4, "1"
  loc_B95317: LitI4 0
  loc_B9531C: ILdRf var_A4
  loc_B9531F: Ary1StVarCopy
  loc_B95321: LitVarStr var_C4, "5"
  loc_B95326: LitI4 1
  loc_B9532B: ILdRf var_A4
  loc_B9532E: Ary1StVarCopy
  loc_B95330: LitVarStr var_D4, "7"
  loc_B95335: LitI4 2
  loc_B9533A: ILdRf var_A4
  loc_B9533D: Ary1StVarCopy
  loc_B9533F: LitVarStr var_E4, "21"
  loc_B95344: LitI4 3
  loc_B95349: ILdRf var_A4
  loc_B9534C: Ary1StVarCopy
  loc_B9534E: FLdRfVar var_A4
  loc_B95351: ILdRf var_A0
  loc_B95354: ILdRf var_9C
  loc_B95357: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_B9535C: FStStr var_E8
  loc_B9535F: FLdRfVar var_A4
  loc_B95362: Erase
  loc_B95363: ILdRf var_E8
  loc_B95366: FLdPr Me
  loc_B95369: MemStStrCopy
  loc_B9536D: FFreeStr var_9C = "": var_A0 = ""
  loc_B95376: FFreeAd var_88 = ""
  loc_B9537D: FLdPr Me
  loc_B95380: MemLdStr global_64
  loc_B95383: LitStr vbNullString
  loc_B95386: NeStr
  loc_B95388: BranchF loc_B953C5
  loc_B9538B: FLdPr Me
  loc_B9538E: MemLdStr global_64
  loc_B95391: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B95396: LitStr vbNullString
  loc_B95399: FLdPr Me
  loc_B9539C: VCallAd Control_ID_DetaIngrLbl
  loc_B9539F: FStAdFunc var_88
  loc_B953A2: FLdPr var_88
  loc_B953A5: Me.Caption = from_stack_1
  loc_B953AA: FFree1Ad var_88
  loc_B953AD: FLdPr Me
  loc_B953B0: VCallAd Control_ID_IngrConcTxt
  loc_B953B3: CVarAd
  loc_B953B7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B953BC: FFree1Var var_F8 = ""
  loc_B953BF: LitI2_Byte &HFF
  loc_B953C1: IStI2 Cancel
  loc_B953C4: ExitProcHresult
  loc_B953C5: FLdRfVar var_A0
  loc_B953C8: FLdPr Me
  loc_B953CB: VCallAd Control_ID_PeriInfoTxt
  loc_B953CE: FStAdFunc var_90
  loc_B953D1: FLdPr var_90
  loc_B953D4:  = Me.Text
  loc_B953D9: FLdRfVar var_9C
  loc_B953DC: FLdPr Me
  loc_B953DF: VCallAd Control_ID_IngrConcTxt
  loc_B953E2: FStAdFunc var_88
  loc_B953E5: FLdPr var_88
  loc_B953E8:  = Me.Text
  loc_B953ED: ILdRf var_9C
  loc_B953F0: FLdPr Me
  loc_B953F3: VCallAd Control_ID_CodiConcMsk
  loc_B953F6: FStAdFunc var_98
  loc_B953F9: FLdPr var_98
  loc_B953FC: LateIdLdVar var_F8 DispID_22 0
  loc_B95403: CStrVarTmp
  loc_B95404: FStStrNoPop var_E8
  loc_B95407: ILdRf var_A0
  loc_B9540A: CI2Str
  loc_B9540C: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_B95411: FStStrNoPop var_FC
  loc_B95414: NeStr
  loc_B95416: FFreeStr var_A0 = "": var_E8 = "": var_9C = ""
  loc_B95421: FFreeAd var_88 = "": var_90 = ""
  loc_B9542A: FFree1Var var_F8 = ""
  loc_B9542D: BranchF loc_B954B3
  loc_B95430: FLdRfVar var_9C
  loc_B95433: FLdPr Me
  loc_B95436: VCallAd Control_ID_PeriInfoTxt
  loc_B95439: FStAdFunc var_88
  loc_B9543C: FLdPr var_88
  loc_B9543F:  = Me.Text
  loc_B95444: FLdPr Me
  loc_B95447: VCallAd Control_ID_CodiConcMsk
  loc_B9544A: FStAdFunc var_90
  loc_B9544D: FLdPr var_90
  loc_B95450: LateIdLdVar var_F8 DispID_22 0
  loc_B95457: CStrVarTmp
  loc_B95458: FStStrNoPop var_A0
  loc_B9545B: ILdRf var_9C
  loc_B9545E: CI2Str
  loc_B95460: ImpAdCallI2 Proc_18_73_A8C648(, )
  loc_B95465: FStStrNoPop var_E8
  loc_B95468: FLdPr Me
  loc_B9546B: MemStStrCopy
  loc_B9546F: FFreeStr var_9C = "": var_A0 = ""
  loc_B95478: FFreeAd var_88 = ""
  loc_B9547F: FFree1Var var_F8 = ""
  loc_B95482: FLdPr Me
  loc_B95485: MemLdStr global_64
  loc_B95488: LitStr vbNullString
  loc_B9548B: NeStr
  loc_B9548D: BranchF loc_B954B3
  loc_B95490: FLdPr Me
  loc_B95493: MemLdStr global_64
  loc_B95496: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B9549B: FLdPr Me
  loc_B9549E: VCallAd Control_ID_IngrConcTxt
  loc_B954A1: CVarAd
  loc_B954A5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B954AA: FFree1Var var_F8 = ""
  loc_B954AD: LitI2_Byte &HFF
  loc_B954AF: IStI2 Cancel
  loc_B954B2: ExitProcHresult
  loc_B954B3: FLdRfVar var_9C
  loc_B954B6: FLdPr Me
  loc_B954B9: VCallAd Control_ID_ActiConcTxt
  loc_B954BC: FStAdFunc var_88
  loc_B954BF: FLdPr var_88
  loc_B954C2:  = Me.Text
  loc_B954C7: ILdRf var_9C
  loc_B954CA: LitStr vbNullString
  loc_B954CD: NeStr
  loc_B954CF: FFree1Str var_9C
  loc_B954D2: FFree1Ad var_88
  loc_B954D5: BranchF loc_B95669
  loc_B954D8: LitStr "Municipalidad de Guaymallén"
  loc_B954DB: LitStr "Municipalidad de Guaymallén"
  loc_B954DE: NeStr
  loc_B954E0: BranchF loc_B955E9
  loc_B954E3: FLdRfVar var_A0
  loc_B954E6: FLdPr Me
  loc_B954E9: VCallAd Control_ID_PeriInfoTxt
  loc_B954EC: FStAdFunc var_90
  loc_B954EF: FLdPr var_90
  loc_B954F2:  = Me.Text
  loc_B954F7: FLdRfVar var_9C
  loc_B954FA: FLdPr Me
  loc_B954FD: VCallAd Control_ID_IngrConcTxt
  loc_B95500: FStAdFunc var_88
  loc_B95503: FLdPr var_88
  loc_B95506:  = Me.Text
  loc_B9550B: ILdRf var_9C
  loc_B9550E: FLdPr Me
  loc_B95511: VCallAd Control_ID_CodiConcMsk
  loc_B95514: FStAdFunc var_98
  loc_B95517: FLdPr var_98
  loc_B9551A: LateIdLdVar var_F8 DispID_22 0
  loc_B95521: CStrVarTmp
  loc_B95522: FStStrNoPop var_E8
  loc_B95525: ILdRf var_A0
  loc_B95528: CI2Str
  loc_B9552A: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_B9552F: FStStrNoPop var_FC
  loc_B95532: NeStr
  loc_B95534: FFreeStr var_A0 = "": var_E8 = "": var_9C = ""
  loc_B9553F: FFreeAd var_88 = "": var_90 = ""
  loc_B95548: FFree1Var var_F8 = ""
  loc_B9554B: BranchF loc_B955E9
  loc_B9554E: FLdRfVar var_9C
  loc_B95551: FLdPr Me
  loc_B95554: VCallAd Control_ID_PeriInfoTxt
  loc_B95557: FStAdFunc var_88
  loc_B9555A: FLdPr var_88
  loc_B9555D:  = Me.Text
  loc_B95562: FLdRfVar var_A0
  loc_B95565: FLdPr Me
  loc_B95568: VCallAd Control_ID_ActiConcTxt
  loc_B9556B: FStAdFunc var_90
  loc_B9556E: FLdPr var_90
  loc_B95571:  = Me.Text
  loc_B95576: FLdRfVar var_E8
  loc_B95579: FLdPr Me
  loc_B9557C: VCallAd Control_ID_IngrConcTxt
  loc_B9557F: FStAdFunc var_98
  loc_B95582: FLdPr var_98
  loc_B95585:  = Me.Text
  loc_B9558A: ILdRf var_E8
  loc_B9558D: ILdRf var_A0
  loc_B95590: ILdRf var_9C
  loc_B95593: CI2Str
  loc_B95595: ImpAdCallI2 Proc_18_78_AA57A0(, , )
  loc_B9559A: FStStrNoPop var_FC
  loc_B9559D: FLdPr Me
  loc_B955A0: MemStStrCopy
  loc_B955A4: FFreeStr var_9C = "": var_A0 = "": var_E8 = ""
  loc_B955AF: FFreeAd var_88 = "": var_90 = ""
  loc_B955B8: FLdPr Me
  loc_B955BB: MemLdStr global_64
  loc_B955BE: LitStr vbNullString
  loc_B955C1: NeStr
  loc_B955C3: BranchF loc_B955E9
  loc_B955C6: FLdPr Me
  loc_B955C9: MemLdStr global_64
  loc_B955CC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B955D1: FLdPr Me
  loc_B955D4: VCallAd Control_ID_IngrConcTxt
  loc_B955D7: CVarAd
  loc_B955DB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B955E0: FFree1Var var_F8 = ""
  loc_B955E3: LitI2_Byte &HFF
  loc_B955E5: IStI2 Cancel
  loc_B955E8: ExitProcHresult
  loc_B955E9: FLdRfVar var_9C
  loc_B955EC: FLdPr Me
  loc_B955EF: VCallAd Control_ID_PeriInfoTxt
  loc_B955F2: FStAdFunc var_88
  loc_B955F5: FLdPr var_88
  loc_B955F8:  = Me.Text
  loc_B955FD: FLdRfVar var_A0
  loc_B95600: FLdPr Me
  loc_B95603: VCallAd Control_ID_IngrConcTxt
  loc_B95606: FStAdFunc var_90
  loc_B95609: FLdPr var_90
  loc_B9560C:  = Me.Text
  loc_B95611: ILdRf var_A0
  loc_B95614: ILdRf var_9C
  loc_B95617: CI2Str
  loc_B95619: ImpAdCallI2 Proc_18_80_A6BBA4(, )
  loc_B9561E: FStStrNoPop var_E8
  loc_B95621: FLdPr Me
  loc_B95624: MemStStrCopy
  loc_B95628: FFreeStr var_9C = "": var_A0 = ""
  loc_B95631: FFreeAd var_88 = ""
  loc_B95638: FLdPr Me
  loc_B9563B: MemLdStr global_64
  loc_B9563E: LitStr vbNullString
  loc_B95641: NeStr
  loc_B95643: BranchF loc_B95669
  loc_B95646: FLdPr Me
  loc_B95649: MemLdStr global_64
  loc_B9564C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B95651: FLdPr Me
  loc_B95654: VCallAd Control_ID_IngrConcTxt
  loc_B95657: CVarAd
  loc_B9565B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B95660: FFree1Var var_F8 = ""
  loc_B95663: LitI2_Byte &HFF
  loc_B95665: IStI2 Cancel
  loc_B95668: ExitProcHresult
  loc_B95669: FLdRfVar var_9C
  loc_B9566C: FLdPr Me
  loc_B9566F: VCallAd Control_ID_ActiConcTxt
  loc_B95672: FStAdFunc var_88
  loc_B95675: FLdPr var_88
  loc_B95678:  = Me.Text
  loc_B9567D: ILdRf var_9C
  loc_B95680: LitStr vbNullString
  loc_B95683: EqStr
  loc_B95685: FFree1Str var_9C
  loc_B95688: FFree1Ad var_88
  loc_B9568B: BranchF loc_B95794
  loc_B9568E: FLdRfVar var_A0
  loc_B95691: FLdPr Me
  loc_B95694: VCallAd Control_ID_PeriInfoTxt
  loc_B95697: FStAdFunc var_90
  loc_B9569A: FLdPr var_90
  loc_B9569D:  = Me.Text
  loc_B956A2: FLdRfVar var_9C
  loc_B956A5: FLdPr Me
  loc_B956A8: VCallAd Control_ID_IngrConcTxt
  loc_B956AB: FStAdFunc var_88
  loc_B956AE: FLdPr var_88
  loc_B956B1:  = Me.Text
  loc_B956B6: ILdRf var_9C
  loc_B956B9: FLdPr Me
  loc_B956BC: VCallAd Control_ID_CodiConcMsk
  loc_B956BF: FStAdFunc var_98
  loc_B956C2: FLdPr var_98
  loc_B956C5: LateIdLdVar var_F8 DispID_22 0
  loc_B956CC: CStrVarTmp
  loc_B956CD: FStStrNoPop var_E8
  loc_B956D0: ILdRf var_A0
  loc_B956D3: CI2Str
  loc_B956D5: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_B956DA: FStStrNoPop var_FC
  loc_B956DD: NeStr
  loc_B956DF: FFreeStr var_A0 = "": var_E8 = "": var_9C = ""
  loc_B956EA: FFreeAd var_88 = "": var_90 = ""
  loc_B956F3: FFree1Var var_F8 = ""
  loc_B956F6: BranchF loc_B95794
  loc_B956F9: FLdRfVar var_9C
  loc_B956FC: FLdPr Me
  loc_B956FF: VCallAd Control_ID_PeriInfoTxt
  loc_B95702: FStAdFunc var_88
  loc_B95705: FLdPr var_88
  loc_B95708:  = Me.Text
  loc_B9570D: FLdRfVar var_A0
  loc_B95710: FLdPr Me
  loc_B95713: VCallAd Control_ID_ActiConcTxt
  loc_B95716: FStAdFunc var_90
  loc_B95719: FLdPr var_90
  loc_B9571C:  = Me.Text
  loc_B95721: FLdRfVar var_E8
  loc_B95724: FLdPr Me
  loc_B95727: VCallAd Control_ID_IngrConcTxt
  loc_B9572A: FStAdFunc var_98
  loc_B9572D: FLdPr var_98
  loc_B95730:  = Me.Text
  loc_B95735: ILdRf var_E8
  loc_B95738: ILdRf var_A0
  loc_B9573B: ILdRf var_9C
  loc_B9573E: CI2Str
  loc_B95740: ImpAdCallI2 Proc_18_79_A786B4(, , )
  loc_B95745: FStStrNoPop var_FC
  loc_B95748: FLdPr Me
  loc_B9574B: MemStStrCopy
  loc_B9574F: FFreeStr var_9C = "": var_A0 = "": var_E8 = ""
  loc_B9575A: FFreeAd var_88 = "": var_90 = ""
  loc_B95763: FLdPr Me
  loc_B95766: MemLdStr global_64
  loc_B95769: LitStr vbNullString
  loc_B9576C: NeStr
  loc_B9576E: BranchF loc_B95794
  loc_B95771: FLdPr Me
  loc_B95774: MemLdStr global_64
  loc_B95777: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B9577C: FLdPr Me
  loc_B9577F: VCallAd Control_ID_IngrConcTxt
  loc_B95782: CVarAd
  loc_B95786: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B9578B: FFree1Var var_F8 = ""
  loc_B9578E: LitI2_Byte &HFF
  loc_B95790: IStI2 Cancel
  loc_B95793: ExitProcHresult
  loc_B95794: FLdRfVar var_9C
  loc_B95797: FLdPr Me
  loc_B9579A: VCallAd Control_ID_PeriInfoTxt
  loc_B9579D: FStAdFunc var_88
  loc_B957A0: FLdPr var_88
  loc_B957A3:  = Me.Text
  loc_B957A8: FLdRfVar var_A0
  loc_B957AB: FLdPr Me
  loc_B957AE: VCallAd Control_ID_IngrConcTxt
  loc_B957B1: FStAdFunc var_90
  loc_B957B4: FLdPr var_90
  loc_B957B7:  = Me.Text
  loc_B957BC: ILdRf var_A0
  loc_B957BF: ILdRf var_9C
  loc_B957C2: CI2Str
  loc_B957C4: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_B957C9: FStStrNoPop var_E8
  loc_B957CC: FLdPr Me
  loc_B957CF: VCallAd Control_ID_DetaIngrLbl
  loc_B957D2: FStAdFunc var_98
  loc_B957D5: FLdPr var_98
  loc_B957D8: Me.Caption = from_stack_1
  loc_B957DD: FFreeStr var_9C = "": var_A0 = ""
  loc_B957E6: FFreeAd var_88 = "": var_90 = ""
  loc_B957EF: ExitProcHresult
End Sub

Private Sub ActiConcCmd_Click() 'A74BBC
  'Data Table: 501068
  loc_A74B44: LitVar_Missing var_A4
  loc_A74B47: PopAdLdVar
  loc_A74B48: LitVarI4
  loc_A74B50: PopAdLdVar
  loc_A74B51: ImpAdLdRf MemVar_D9468C
  loc_A74B54: NewIfNullPr dlgBuscarCuentaContable
  loc_A74B57: dlgBuscarCuentaContable.Show from_stack_1, from_stack_2
  loc_A74B5C: FLdRfVar var_A8
  loc_A74B5F: ImpAdLdRf MemVar_D9468C
  loc_A74B62: NewIfNullPr dlgBuscarCuentaContable
  loc_A74B65: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_A74B6A: ILdRf var_A8
  loc_A74B6D: FLdPr Me
  loc_A74B70: VCallAd Control_ID_
  loc_A74B73: FStAdFunc var_AC
  loc_A74B76: FLdPr var_AC
  loc_A74B79: dlgBuscarCuentaContable.TextBox.Text = from_stack_1
  loc_A74B7E: FFree1Str var_A8
  loc_A74B81: FFree1Ad var_AC
  loc_A74B84: LitStr vbNullString
  loc_A74B87: ImpAdLdRf MemVar_D9468C
  loc_A74B8A: NewIfNullPr dlgBuscarCuentaContable
  loc_A74B8D: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_A74B92: FLdRfVar var_A8
  loc_A74B95: ImpAdLdRf MemVar_D9468C
  loc_A74B98: NewIfNullPr dlgBuscarCuentaContable
  loc_A74B9B: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_A74BA0: ILdRf var_A8
  loc_A74BA3: FLdPr Me
  loc_A74BA6: VCallAd Control_ID_
  loc_A74BA9: FStAdFunc var_AC
  loc_A74BAC: FLdPr var_AC
  loc_A74BAF: dlgBuscarCuentaContable.Label.Caption = from_stack_1
  loc_A74BB4: FFree1Str var_A8
  loc_A74BB7: FFree1Ad var_AC
  loc_A74BBA: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AC5108
  'Data Table: 501068
  loc_AC5014: LitI2_Byte 0
  loc_AC5016: FLdPr Me
  loc_AC5019: MemStI2 global_60
  loc_AC501C: LitI2_Byte 0
  loc_AC501E: ILdRf Me
  loc_AC5021: CastAd
  loc_AC5024: FStAdFunc var_88
  loc_AC5027: FLdRfVar var_88
  loc_AC502A: ImpAdCallFPR4  = Proc_272_3_B44A88()
  loc_AC502F: FFree1Ad var_88
  loc_AC5032: LitI4 0
  loc_AC5037: LitI4 0
  loc_AC503C: FLdRfVar var_8C
  loc_AC503F: Redim
  loc_AC5049: FLdPr Me
  loc_AC504C: VCallAd Control_ID_dgdABMS
  loc_AC504F: CVarAd
  loc_AC5053: ParmAry1St
  loc_AC5059: FLdRfVar var_8C
  loc_AC505C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AC5061: FLdRfVar var_8C
  loc_AC5064: Erase
  loc_AC5065: FLdPr Me
  loc_AC5068: MemLdRfVar from_stack_1.global_52
  loc_AC506B: NewIfNullAd
  loc_AC506E: FStAd var_A0 
  loc_AC5072: FLdRfVar var_A0
  loc_AC5075: CVarRef
  loc_AC507A: ILdRf Me
  loc_AC507D: CastAd
  loc_AC5080: FStAdFunc var_88
  loc_AC5083: FLdRfVar var_88
  loc_AC5086: ImpAdCallFPR4  = Proc_272_14_A8F45C()
  loc_AC508B: ILdRf var_A0
  loc_AC508E: CastAd
  loc_AC5091: FLdPr Me
  loc_AC5094: MemStAdFunc
  loc_AC5098: FFreeAd var_88 = ""
  loc_AC509F: ILdRf Me
  loc_AC50A2: CastAd
  loc_AC50A5: FStAdFunc var_88
  loc_AC50A8: FLdRfVar var_88
  loc_AC50AB: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_AC50B0: FFree1Ad var_88
  loc_AC50B3: LitI4 0
  loc_AC50B8: LitI4 2
  loc_AC50BD: FLdRfVar var_8C
  loc_AC50C0: Redim
  loc_AC50CA: FLdPr Me
  loc_AC50CD: VCallAd Control_ID_FiltroCbo
  loc_AC50D0: CVarAd
  loc_AC50D4: ParmAry1St
  loc_AC50DA: FLdPr Me
  loc_AC50DD: VCallAd Control_ID_FiltroMsk
  loc_AC50E0: CVarAd
  loc_AC50E4: ParmAry1St
  loc_AC50EA: FLdPr Me
  loc_AC50ED: VCallAd Control_ID_PeriInfoCbl
  loc_AC50F0: CVarAd
  loc_AC50F4: ParmAry1St
  loc_AC50FA: FLdRfVar var_8C
  loc_AC50FD: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AC5102: FLdRfVar var_8C
  loc_AC5105: Erase
  loc_AC5106: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'B02F84
  'Data Table: 501068
  loc_B02D80: LitVarStr var_94, vbNullString
  loc_B02D85: PopAdLdVar
  loc_B02D86: FLdPr Me
  loc_B02D89: VCallAd Control_ID_FiltroMsk
  loc_B02D8C: FStAdFunc var_A8
  loc_B02D8F: FLdPr var_A8
  loc_B02D92: LateIdSt
  loc_B02D97: FFree1Ad var_A8
  loc_B02D9A: FLdRfVar var_AA
  loc_B02D9D: FLdPr Me
  loc_B02DA0: VCallAd Control_ID_FiltroCbo
  loc_B02DA3: FStAdFunc var_A8
  loc_B02DA6: FLdPr var_A8
  loc_B02DA9:  = Me.ListIndex
  loc_B02DAE: FLdI2 var_AA
  loc_B02DB1: FStI2 var_AC
  loc_B02DB4: FFree1Ad var_A8
  loc_B02DB7: FLdI2 var_AC
  loc_B02DBA: LitI2_Byte 0
  loc_B02DBC: EqI2
  loc_B02DBD: BranchF loc_B02DF7
  loc_B02DC0: LitVarStr var_94, "#.#.##.##.##"
  loc_B02DC5: PopAdLdVar
  loc_B02DC6: FLdPr Me
  loc_B02DC9: VCallAd Control_ID_FiltroMsk
  loc_B02DCC: FStAdFunc var_A8
  loc_B02DCF: FLdPr var_A8
  loc_B02DD2: LateIdSt
  loc_B02DD7: FFree1Ad var_A8
  loc_B02DDA: LitStr "CodiConc"
  loc_B02DDD: FStStrCopy var_B0
  loc_B02DE0: FLdRfVar var_B0
  loc_B02DE3: FLdPr Me
  loc_B02DE6: MemLdRfVar from_stack_1.global_52
  loc_B02DE9: NewIfNullPr clsconcepto
  loc_B02DEC: Call clsconcepto.Sort(from_stack_1v)
  loc_B02DF1: FFree1Str var_B0
  loc_B02DF4: Branch loc_B02F82
  loc_B02DF7: FLdI2 var_AC
  loc_B02DFA: LitI2_Byte 1
  loc_B02DFC: EqI2
  loc_B02DFD: BranchF loc_B02E51
  loc_B02E00: LitVarStr var_94, "&"
  loc_B02E05: PopAdLdVar
  loc_B02E06: FLdPr Me
  loc_B02E09: VCallAd Control_ID_FiltroMsk
  loc_B02E0C: FStAdFunc var_A8
  loc_B02E0F: FLdPr var_A8
  loc_B02E12: LateIdSt
  loc_B02E17: FFree1Ad var_A8
  loc_B02E1A: LitVarStr var_94, vbNullString
  loc_B02E1F: PopAdLdVar
  loc_B02E20: FLdPr Me
  loc_B02E23: VCallAd Control_ID_FiltroMsk
  loc_B02E26: FStAdFunc var_A8
  loc_B02E29: FLdPr var_A8
  loc_B02E2C: LateIdSt
  loc_B02E31: FFree1Ad var_A8
  loc_B02E34: LitStr "DetaConc"
  loc_B02E37: FStStrCopy var_B0
  loc_B02E3A: FLdRfVar var_B0
  loc_B02E3D: FLdPr Me
  loc_B02E40: MemLdRfVar from_stack_1.global_52
  loc_B02E43: NewIfNullPr clsconcepto
  loc_B02E46: Call clsconcepto.Sort(from_stack_1v)
  loc_B02E4B: FFree1Str var_B0
  loc_B02E4E: Branch loc_B02F82
  loc_B02E51: FLdI2 var_AC
  loc_B02E54: LitI2_Byte 2
  loc_B02E56: EqI2
  loc_B02E57: BranchF loc_B02E91
  loc_B02E5A: LitVarStr var_94, "#.#.#.#.##.##.##"
  loc_B02E5F: PopAdLdVar
  loc_B02E60: FLdPr Me
  loc_B02E63: VCallAd Control_ID_FiltroMsk
  loc_B02E66: FStAdFunc var_A8
  loc_B02E69: FLdPr var_A8
  loc_B02E6C: LateIdSt
  loc_B02E71: FFree1Ad var_A8
  loc_B02E74: LitStr "IngrConc"
  loc_B02E77: FStStrCopy var_B0
  loc_B02E7A: FLdRfVar var_B0
  loc_B02E7D: FLdPr Me
  loc_B02E80: MemLdRfVar from_stack_1.global_52
  loc_B02E83: NewIfNullPr clsconcepto
  loc_B02E86: Call clsconcepto.Sort(from_stack_1v)
  loc_B02E8B: FFree1Str var_B0
  loc_B02E8E: Branch loc_B02F82
  loc_B02E91: FLdI2 var_AC
  loc_B02E94: LitI2_Byte 3
  loc_B02E96: EqI2
  loc_B02E97: BranchF loc_B02EEB
  loc_B02E9A: LitVarStr var_94, "&"
  loc_B02E9F: PopAdLdVar
  loc_B02EA0: FLdPr Me
  loc_B02EA3: VCallAd Control_ID_FiltroMsk
  loc_B02EA6: FStAdFunc var_A8
  loc_B02EA9: FLdPr var_A8
  loc_B02EAC: LateIdSt
  loc_B02EB1: FFree1Ad var_A8
  loc_B02EB4: LitVarStr var_94, vbNullString
  loc_B02EB9: PopAdLdVar
  loc_B02EBA: FLdPr Me
  loc_B02EBD: VCallAd Control_ID_FiltroMsk
  loc_B02EC0: FStAdFunc var_A8
  loc_B02EC3: FLdPr var_A8
  loc_B02EC6: LateIdSt
  loc_B02ECB: FFree1Ad var_A8
  loc_B02ECE: LitStr "DeinCuco"
  loc_B02ED1: FStStrCopy var_B0
  loc_B02ED4: FLdRfVar var_B0
  loc_B02ED7: FLdPr Me
  loc_B02EDA: MemLdRfVar from_stack_1.global_52
  loc_B02EDD: NewIfNullPr clsconcepto
  loc_B02EE0: Call clsconcepto.Sort(from_stack_1v)
  loc_B02EE5: FFree1Str var_B0
  loc_B02EE8: Branch loc_B02F82
  loc_B02EEB: FLdI2 var_AC
  loc_B02EEE: LitI2_Byte 4
  loc_B02EF0: EqI2
  loc_B02EF1: BranchF loc_B02F2B
  loc_B02EF4: LitVarStr var_94, "#.#.#.#.##.##.##"
  loc_B02EF9: PopAdLdVar
  loc_B02EFA: FLdPr Me
  loc_B02EFD: VCallAd Control_ID_FiltroMsk
  loc_B02F00: FStAdFunc var_A8
  loc_B02F03: FLdPr var_A8
  loc_B02F06: LateIdSt
  loc_B02F0B: FFree1Ad var_A8
  loc_B02F0E: LitStr "ActiConc"
  loc_B02F11: FStStrCopy var_B0
  loc_B02F14: FLdRfVar var_B0
  loc_B02F17: FLdPr Me
  loc_B02F1A: MemLdRfVar from_stack_1.global_52
  loc_B02F1D: NewIfNullPr clsconcepto
  loc_B02F20: Call clsconcepto.Sort(from_stack_1v)
  loc_B02F25: FFree1Str var_B0
  loc_B02F28: Branch loc_B02F82
  loc_B02F2B: FLdI2 var_AC
  loc_B02F2E: LitI2_Byte 5
  loc_B02F30: EqI2
  loc_B02F31: BranchF loc_B02F82
  loc_B02F34: LitVarStr var_94, "&"
  loc_B02F39: PopAdLdVar
  loc_B02F3A: FLdPr Me
  loc_B02F3D: VCallAd Control_ID_FiltroMsk
  loc_B02F40: FStAdFunc var_A8
  loc_B02F43: FLdPr var_A8
  loc_B02F46: LateIdSt
  loc_B02F4B: FFree1Ad var_A8
  loc_B02F4E: LitVarStr var_94, vbNullString
  loc_B02F53: PopAdLdVar
  loc_B02F54: FLdPr Me
  loc_B02F57: VCallAd Control_ID_FiltroMsk
  loc_B02F5A: FStAdFunc var_A8
  loc_B02F5D: FLdPr var_A8
  loc_B02F60: LateIdSt
  loc_B02F65: FFree1Ad var_A8
  loc_B02F68: LitStr "DeacCuco"
  loc_B02F6B: FStStrCopy var_B0
  loc_B02F6E: FLdRfVar var_B0
  loc_B02F71: FLdPr Me
  loc_B02F74: MemLdRfVar from_stack_1.global_52
  loc_B02F77: NewIfNullPr clsconcepto
  loc_B02F7A: Call clsconcepto.Sort(from_stack_1v)
  loc_B02F7F: FFree1Str var_B0
  loc_B02F82: ExitProcHresult
  loc_B02F83: CI4R8
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9DAC64
  'Data Table: 501068
  loc_9DAC4C: FLdPr Me
  loc_9DAC4F: VCallAd Control_ID_dgdABMS
  loc_9DAC52: FStAdFunc var_88
  loc_9DAC55: FLdRfVar var_88
  loc_9DAC58: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9DAC5D: FFree1Ad var_88
  loc_9DAC60: ExitProcHresult
  loc_9DAC61: AddI2
  loc_9DAC62: FStI2 var_FA0
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9DACFC
  'Data Table: 501068
  loc_9DACE4: FLdPr Me
  loc_9DACE7: VCallAd Control_ID_dgdABMS
  loc_9DACEA: FStAdFunc var_88
  loc_9DACED: FLdRfVar var_88
  loc_9DACF0: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9DACF5: FFree1Ad var_88
  loc_9DACF8: ExitProcHresult
  loc_9DACF9: Branch loc_9DD1E4
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A67D1C
  'Data Table: 501068
  loc_A67CC0: FLdRfVar var_B4
  loc_A67CC3: FLdRfVar var_B0
  loc_A67CC6: FLdI2 ColIndex
  loc_A67CC9: CVarI2 var_A8
  loc_A67CCC: PopAdLdVar
  loc_A67CCD: FLdPr Me
  loc_A67CD0: VCallAd Control_ID_dgdABMS
  loc_A67CD3: FStAdFunc var_88
  loc_A67CD6: FLdPr var_88
  loc_A67CD9: LateIdLdVar var_98 DispID_105 0
  loc_A67CE0: CastAdVar Me
  loc_A67CE4: FStAdFunc var_AC
  loc_A67CE7: FLdPr var_AC
  loc_A67CEA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A67CEF: FLdPr var_B0
  loc_A67CF2:  = Me.DataField
  loc_A67CF7: FLdZeroAd var_B4
  loc_A67CFA: PopTmpLdAdStr
  loc_A67CFE: FLdPr Me
  loc_A67D01: MemLdRfVar from_stack_1.global_52
  loc_A67D04: NewIfNullPr clsconcepto
  loc_A67D07: Call clsconcepto.Sort(from_stack_1v)
  loc_A67D0C: FFree1Str var_B8
  loc_A67D0F: FFreeAd var_88 = "": var_AC = ""
  loc_A67D18: FFree1Var var_98 = ""
  loc_A67D1B: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'ACCB90
  'Data Table: 501068
  loc_ACCA74: FLdPr Me
  loc_ACCA77: MemLdI2 global_60
  loc_ACCA7A: LitI2_Byte 0
  loc_ACCA7C: EqI2
  loc_ACCA7D: FLdRfVar var_88
  loc_ACCA80: FLdPr Me
  loc_ACCA83: MemLdRfVar from_stack_1.global_52
  loc_ACCA86: NewIfNullPr clsconcepto
  loc_ACCA89: from_stack_1 = clsconcepto.RecordCount
  loc_ACCA8E: ILdRf var_88
  loc_ACCA91: LitI4 0
  loc_ACCA96: GtI4
  loc_ACCA97: AndI4
  loc_ACCA98: BranchF loc_ACCB8F
  loc_ACCA9B: FLdRfVar var_8A
  loc_ACCA9E: FLdPr Me
  loc_ACCAA1: MemLdRfVar from_stack_1.global_52
  loc_ACCAA4: NewIfNullPr clsconcepto
  loc_ACCAA7: from_stack_1 = clsconcepto.BOF
  loc_ACCAAC: FLdI2 var_8A
  loc_ACCAAF: BranchF loc_ACCAC0
  loc_ACCAB2: FLdPr Me
  loc_ACCAB5: MemLdRfVar from_stack_1.global_52
  loc_ACCAB8: NewIfNullPr clsconcepto
  loc_ACCABB: Call clsconcepto.MoveFirst()
  loc_ACCAC0: FLdRfVar var_8A
  loc_ACCAC3: FLdPr Me
  loc_ACCAC6: MemLdRfVar from_stack_1.global_52
  loc_ACCAC9: NewIfNullPr clsconcepto
  loc_ACCACC: from_stack_1 = clsconcepto.EOF
  loc_ACCAD1: FLdI2 var_8A
  loc_ACCAD4: BranchF loc_ACCAE5
  loc_ACCAD7: FLdPr Me
  loc_ACCADA: MemLdRfVar from_stack_1.global_52
  loc_ACCADD: NewIfNullPr clsconcepto
  loc_ACCAE0: Call clsconcepto.MoveLast()
  loc_ACCAE5: FLdRfVar var_90
  loc_ACCAE8: FLdPr Me
  loc_ACCAEB: MemLdRfVar from_stack_1.global_52
  loc_ACCAEE: NewIfNullPr clsconcepto
  loc_ACCAF1: from_stack_1 = clsconcepto.DevcConc
  loc_ACCAF6: LitVarI2 var_E0, 0
  loc_ACCAFB: LitVarI2 var_C0, 1
  loc_ACCB00: ILdRf var_90
  loc_ACCB03: LitStr "Si"
  loc_ACCB06: EqStr
  loc_ACCB08: CVarBoolI2 var_A0
  loc_ACCB0C: FLdRfVar var_F0
  loc_ACCB0F: ImpAdCallFPR4  = IIf(, , )
  loc_ACCB14: FLdRfVar var_F0
  loc_ACCB17: CI2Var
  loc_ACCB18: FLdPr Me
  loc_ACCB1B: VCallAd Control_ID_DevcConcChk
  loc_ACCB1E: FStAdFunc var_F4
  loc_ACCB21: FLdPr var_F4
  loc_ACCB24: Me.Value = from_stack_1
  loc_ACCB29: FFree1Str var_90
  loc_ACCB2C: FFree1Ad var_F4
  loc_ACCB2F: FFreeVar var_A0 = "": var_C0 = "": var_E0 = ""
  loc_ACCB3A: FLdRfVar var_90
  loc_ACCB3D: FLdPr Me
  loc_ACCB40: MemLdRfVar from_stack_1.global_52
  loc_ACCB43: NewIfNullPr clsconcepto
  loc_ACCB46: from_stack_1 = clsconcepto.DevsConc
  loc_ACCB4B: LitVarI2 var_E0, 0
  loc_ACCB50: LitVarI2 var_C0, 1
  loc_ACCB55: ILdRf var_90
  loc_ACCB58: LitStr "Si"
  loc_ACCB5B: EqStr
  loc_ACCB5D: CVarBoolI2 var_A0
  loc_ACCB61: FLdRfVar var_F0
  loc_ACCB64: ImpAdCallFPR4  = IIf(, , )
  loc_ACCB69: FLdRfVar var_F0
  loc_ACCB6C: CI2Var
  loc_ACCB6D: FLdPr Me
  loc_ACCB70: VCallAd Control_ID_DevsConcChk
  loc_ACCB73: FStAdFunc var_F4
  loc_ACCB76: FLdPr var_F4
  loc_ACCB79: Me.Value = from_stack_1
  loc_ACCB7E: FFree1Str var_90
  loc_ACCB81: FFree1Ad var_F4
  loc_ACCB84: FFreeVar var_A0 = "": var_C0 = "": var_E0 = ""
  loc_ACCB8F: ExitProcHresult
End Sub

Private Sub Form_Load() 'B66F78
  'Data Table: 501068
  loc_B66B3C: LitI2_Byte 0
  loc_B66B3E: CR8I2
  loc_B66B3F: PopFPR4
  loc_B66B40: FLdPr Me
  loc_B66B43: Me.Left = from_stack_1s
  loc_B66B48: LitI2_Byte 0
  loc_B66B4A: CR8I2
  loc_B66B4B: PopFPR4
  loc_B66B4C: FLdPr Me
  loc_B66B4F: Me.Top = from_stack_1s
  loc_B66B54: LitStr "SELECT concepto.PeriInfo, concepto.CodiConc, concepto.ConcViej, concepto.VigeConc, concepto.DetaConc, concepto.AforConc, concepto.DevcConc, concepto.DevsConc, concepto.IngrConc, concepto.ActiConc, infogov.cuentacontable.DetaCuco as DeinCuco, cuentacontableactivo.DetaCuco as DeacCuco, TiafConc, tipomoviaforo.DetaTimo as DetaTimoTiaf, "
  loc_B66B57: LitStr " TipaConc, tipomovipago.DetaTimo as DetaTimoTipa FROM concepto "
  loc_B66B5A: ConcatStr
  loc_B66B5B: FStStrNoPop var_88
  loc_B66B5E: LitStr "LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = concepto.PeriInfo AND infogov.cuentacontable.CodiCuco = concepto.IngrConc "
  loc_B66B61: ConcatStr
  loc_B66B62: FStStrNoPop var_8C
  loc_B66B65: LitStr "LEFT JOIN infogov.cuentacontable as cuentacontableactivo ON cuentacontableactivo.PeriInfo = concepto.PeriInfo AND cuentacontableactivo.CodiCuco = concepto.ActiConc "
  loc_B66B68: ConcatStr
  loc_B66B69: FStStrNoPop var_90
  loc_B66B6C: LitStr "LEFT JOIN tipomovi as tipomoviaforo ON tipomoviaforo.CodiTimo = concepto.TiafConc "
  loc_B66B6F: ConcatStr
  loc_B66B70: FStStrNoPop var_94
  loc_B66B73: LitStr "LEFT JOIN tipomovi as tipomovipago ON tipomovipago.CodiTimo = concepto.TipaConc "
  loc_B66B76: ConcatStr
  loc_B66B77: FStStrNoPop var_98
  loc_B66B7A: LitStr " WHERE concepto.PeriInfo = "
  loc_B66B7D: ConcatStr
  loc_B66B7E: FStStrNoPop var_9C
  loc_B66B81: ImpAdLdI2 MemVar_D93034
  loc_B66B84: CStrUI1
  loc_B66B86: FStStrNoPop var_A0
  loc_B66B89: ConcatStr
  loc_B66B8A: FStStrNoPop var_A4
  loc_B66B8D: LitStr " ORDER BY concepto.PeriInfo, CodiConc"
  loc_B66B90: ConcatStr
  loc_B66B91: FStStrNoPop var_A8
  loc_B66B94: FLdPr Me
  loc_B66B97: MemLdRfVar from_stack_1.global_52
  loc_B66B9A: NewIfNullPr clsconcepto
  loc_B66B9D: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_B66BA2: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B66BB7: LitI4 0
  loc_B66BBC: LitI4 1
  loc_B66BC1: FLdRfVar var_AC
  loc_B66BC4: Redim
  loc_B66BCE: FLdPr Me
  loc_B66BD1: MemLdRfVar from_stack_1.global_52
  loc_B66BD4: NewIfNullAd
  loc_B66BD7: FStAd var_B0 
  loc_B66BDB: FLdRfVar var_B0
  loc_B66BDE: CVarRef
  loc_B66BE3: ParmAry1St
  loc_B66BE9: FLdPr Me
  loc_B66BEC: VCallAd Control_ID_dgdABMS
  loc_B66BEF: CVarAd
  loc_B66BF3: ParmAry1St
  loc_B66BF9: FLdRfVar var_AC
  loc_B66BFC: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B66C01: ILdRf var_B0
  loc_B66C04: CastAd
  loc_B66C07: FLdPr Me
  loc_B66C0A: MemStAdFunc
  loc_B66C0E: FLdRfVar var_AC
  loc_B66C11: Erase
  loc_B66C12: FFree1Ad var_B0
  loc_B66C15: Call cmdCancelar_Click()
  loc_B66C1A: LitVarI2 var_C0, 0
  loc_B66C1F: PopAdLdVar
  loc_B66C20: LitStr "Codigo"
  loc_B66C23: FLdPr Me
  loc_B66C26: VCallAd Control_ID_FiltroCbo
  loc_B66C29: FStAdFunc var_B0
  loc_B66C2C: FLdPr var_B0
  loc_B66C2F: Me.AddItem from_stack_1, from_stack_2
  loc_B66C34: FFree1Ad var_B0
  loc_B66C37: LitVarI2 var_C0, 1
  loc_B66C3C: PopAdLdVar
  loc_B66C3D: LitStr "Detalle"
  loc_B66C40: FLdPr Me
  loc_B66C43: VCallAd Control_ID_FiltroCbo
  loc_B66C46: FStAdFunc var_B0
  loc_B66C49: FLdPr var_B0
  loc_B66C4C: Me.AddItem from_stack_1, from_stack_2
  loc_B66C51: FFree1Ad var_B0
  loc_B66C54: LitVarI2 var_C0, 2
  loc_B66C59: PopAdLdVar
  loc_B66C5A: LitStr "Cuenta Contable de Ingreso (Código)"
  loc_B66C5D: FLdPr Me
  loc_B66C60: VCallAd Control_ID_FiltroCbo
  loc_B66C63: FStAdFunc var_B0
  loc_B66C66: FLdPr var_B0
  loc_B66C69: Me.AddItem from_stack_1, from_stack_2
  loc_B66C6E: FFree1Ad var_B0
  loc_B66C71: LitVarI2 var_C0, 3
  loc_B66C76: PopAdLdVar
  loc_B66C77: LitStr "Cuenta Contable de Ingreso (Detalle)"
  loc_B66C7A: FLdPr Me
  loc_B66C7D: VCallAd Control_ID_FiltroCbo
  loc_B66C80: FStAdFunc var_B0
  loc_B66C83: FLdPr var_B0
  loc_B66C86: Me.AddItem from_stack_1, from_stack_2
  loc_B66C8B: FFree1Ad var_B0
  loc_B66C8E: LitVarI2 var_C0, 4
  loc_B66C93: PopAdLdVar
  loc_B66C94: LitStr "Cuenta Contable de Activo (Código)"
  loc_B66C97: FLdPr Me
  loc_B66C9A: VCallAd Control_ID_FiltroCbo
  loc_B66C9D: FStAdFunc var_B0
  loc_B66CA0: FLdPr var_B0
  loc_B66CA3: Me.AddItem from_stack_1, from_stack_2
  loc_B66CA8: FFree1Ad var_B0
  loc_B66CAB: LitVarI2 var_C0, 5
  loc_B66CB0: PopAdLdVar
  loc_B66CB1: LitStr "Cuenta Contable de Activo (Detalle)"
  loc_B66CB4: FLdPr Me
  loc_B66CB7: VCallAd Control_ID_FiltroCbo
  loc_B66CBA: FStAdFunc var_B0
  loc_B66CBD: FLdPr var_B0
  loc_B66CC0: Me.AddItem from_stack_1, from_stack_2
  loc_B66CC5: FFree1Ad var_B0
  loc_B66CC8: LitI2_Byte 0
  loc_B66CCA: FLdPr Me
  loc_B66CCD: VCallAd Control_ID_FiltroCbo
  loc_B66CD0: FStAdFunc var_B0
  loc_B66CD3: FLdPr var_B0
  loc_B66CD6: Me.ListIndex = from_stack_1
  loc_B66CDB: FFree1Ad var_B0
  loc_B66CDE: LitI4 0
  loc_B66CE3: LitI4 0
  loc_B66CE8: FLdRfVar var_AC
  loc_B66CEB: Redim
  loc_B66CF5: FLdPr Me
  loc_B66CF8: VCallAd Control_ID_PeriInfoCbl
  loc_B66CFB: CVarAd
  loc_B66CFF: ParmAry1St
  loc_B66D05: FLdRfVar var_AC
  loc_B66D08: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B66D0D: FLdRfVar var_AC
  loc_B66D10: Erase
  loc_B66D11: LitStr "SELECT PeriInfo FROM concepto GROUP BY PeriInfo"
  loc_B66D14: FLdPr Me
  loc_B66D17: MemLdRfVar from_stack_1.global_56
  loc_B66D1A: NewIfNullPr clsconcepto
  loc_B66D1D: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_B66D22: FLdRfVar var_D4
  loc_B66D25: FLdPr Me
  loc_B66D28: MemLdRfVar from_stack_1.global_56
  loc_B66D2B: NewIfNullPr clsconcepto
  loc_B66D2E: from_stack_1 = clsconcepto.RecordCount
  loc_B66D33: ILdRf var_D4
  loc_B66D36: LitI4 0
  loc_B66D3B: GtI4
  loc_B66D3C: BranchF loc_B66DC9
  loc_B66D3F: FLdPr Me
  loc_B66D42: MemLdRfVar from_stack_1.global_56
  loc_B66D45: NewIfNullPr clsconcepto
  loc_B66D48: Call clsconcepto.MoveFirst()
  loc_B66D4D: FLdRfVar var_D6
  loc_B66D50: FLdPr Me
  loc_B66D53: MemLdRfVar from_stack_1.global_56
  loc_B66D56: NewIfNullPr clsconcepto
  loc_B66D59: from_stack_1 = clsconcepto.EOF
  loc_B66D5E: FLdI2 var_D6
  loc_B66D61: NotI4
  loc_B66D62: BranchF loc_B66DAA
  loc_B66D65: LitVar_Missing var_C0
  loc_B66D68: PopAdLdVar
  loc_B66D69: FLdRfVar var_D6
  loc_B66D6C: FLdPr Me
  loc_B66D6F: MemLdRfVar from_stack_1.global_56
  loc_B66D72: NewIfNullPr clsconcepto
  loc_B66D75: from_stack_1 = clsconcepto.PeriInfo
  loc_B66D7A: FLdI2 var_D6
  loc_B66D7D: CStrUI1
  loc_B66D7F: FStStrNoPop var_88
  loc_B66D82: FLdPr Me
  loc_B66D85: VCallAd Control_ID_PeriInfoCbl
  loc_B66D88: FStAdFunc var_B0
  loc_B66D8B: FLdPr var_B0
  loc_B66D8E: Me.AddItem from_stack_1, from_stack_2
  loc_B66D93: FFree1Str var_88
  loc_B66D96: FFree1Ad var_B0
  loc_B66D99: FLdPr Me
  loc_B66D9C: MemLdRfVar from_stack_1.global_56
  loc_B66D9F: NewIfNullPr clsconcepto
  loc_B66DA2: Call clsconcepto.MoveSiguiente()
  loc_B66DA7: Branch loc_B66D4D
  loc_B66DAA: ImpAdLdI2 MemVar_D93034
  loc_B66DAD: CStrUI1
  loc_B66DAF: FStStrNoPop var_88
  loc_B66DB2: FLdPr Me
  loc_B66DB5: VCallAd Control_ID_PeriInfoCbl
  loc_B66DB8: FStAdFunc var_B0
  loc_B66DBB: FLdPr var_B0
  loc_B66DBE: Me.Text = from_stack_1
  loc_B66DC3: FFree1Str var_88
  loc_B66DC6: FFree1Ad var_B0
  loc_B66DC9: LitStr "Municipalidad de Guaymallén"
  loc_B66DCC: LitStr "Municipalidad de Tunuyán"
  loc_B66DCF: EqStr
  loc_B66DD1: BranchF loc_B66F11
  loc_B66DD4: LitVarI2 var_C0, 10
  loc_B66DD9: PopAdLdVar
  loc_B66DDA: FLdRfVar var_DC
  loc_B66DDD: FLdPr Me
  loc_B66DE0: VCallAd Control_ID_ActiConcTxt
  loc_B66DE3: FStAdFunc var_B0
  loc_B66DE6: FLdPr var_B0
  loc_B66DE9:  = Me.Font
  loc_B66DEE: FLdPr var_DC
  loc_B66DF1: LateIdSt
  loc_B66DF6: FFreeAd var_B0 = ""
  loc_B66DFD: LitVarI2 var_C0, 10
  loc_B66E02: PopAdLdVar
  loc_B66E03: FLdRfVar var_DC
  loc_B66E06: FLdPr Me
  loc_B66E09: VCallAd Control_ID_IngrConcTxt
  loc_B66E0C: FStAdFunc var_B0
  loc_B66E0F: FLdPr var_B0
  loc_B66E12:  = Me.Font
  loc_B66E17: FLdPr var_DC
  loc_B66E1A: LateIdSt
  loc_B66E1F: FFreeAd var_B0 = ""
  loc_B66E26: LitI4 &HB
  loc_B66E2B: FLdPr Me
  loc_B66E2E: VCallAd Control_ID_ActiConcTxt
  loc_B66E31: FStAdFunc var_B0
  loc_B66E34: FLdPr var_B0
  loc_B66E37: Me.MaxLength = from_stack_1
  loc_B66E3C: FFree1Ad var_B0
  loc_B66E3F: LitI4 &HB
  loc_B66E44: FLdPr Me
  loc_B66E47: VCallAd Control_ID_IngrConcTxt
  loc_B66E4A: FStAdFunc var_B0
  loc_B66E4D: FLdPr var_B0
  loc_B66E50: Me.MaxLength = from_stack_1
  loc_B66E55: FFree1Ad var_B0
  loc_B66E58: LitI2 1650
  loc_B66E5B: CR8I2
  loc_B66E5C: PopFPR4
  loc_B66E5D: FLdPr Me
  loc_B66E60: VCallAd Control_ID_ActiConcTxt
  loc_B66E63: FStAdFunc var_B0
  loc_B66E66: FLdPr var_B0
  loc_B66E69: Me.Width = from_stack_1s
  loc_B66E6E: FFree1Ad var_B0
  loc_B66E71: LitI2 1650
  loc_B66E74: CR8I2
  loc_B66E75: PopFPR4
  loc_B66E76: FLdPr Me
  loc_B66E79: VCallAd Control_ID_IngrConcTxt
  loc_B66E7C: FStAdFunc var_B0
  loc_B66E7F: FLdPr var_B0
  loc_B66E82: Me.Width = from_stack_1s
  loc_B66E87: FFree1Ad var_B0
  loc_B66E8A: LitI2 360
  loc_B66E8D: CR8I2
  loc_B66E8E: PopFPR4
  loc_B66E8F: FLdPr Me
  loc_B66E92: VCallAd Control_ID_ActiConcTxt
  loc_B66E95: FStAdFunc var_B0
  loc_B66E98: FLdPr var_B0
  loc_B66E9B: Me.Height = from_stack_1s
  loc_B66EA0: FFree1Ad var_B0
  loc_B66EA3: LitI2 360
  loc_B66EA6: CR8I2
  loc_B66EA7: PopFPR4
  loc_B66EA8: FLdPr Me
  loc_B66EAB: VCallAd Control_ID_IngrConcTxt
  loc_B66EAE: FStAdFunc var_B0
  loc_B66EB1: FLdPr var_B0
  loc_B66EB4: Me.Height = from_stack_1s
  loc_B66EB9: FFree1Ad var_B0
  loc_B66EBC: LitVarI2 var_C0, 12
  loc_B66EC1: PopAdLdVar
  loc_B66EC2: FLdRfVar var_DC
  loc_B66EC5: FLdPr Me
  loc_B66EC8: VCallAd Control_ID_ActiConcTxt
  loc_B66ECB: FStAdFunc var_B0
  loc_B66ECE: FLdPr var_B0
  loc_B66ED1:  = Me.Font
  loc_B66ED6: FLdPr var_DC
  loc_B66ED9: LateIdSt
  loc_B66EDE: FFreeAd var_B0 = ""
  loc_B66EE5: LitVarI2 var_C0, 12
  loc_B66EEA: PopAdLdVar
  loc_B66EEB: FLdRfVar var_DC
  loc_B66EEE: FLdPr Me
  loc_B66EF1: VCallAd Control_ID_IngrConcTxt
  loc_B66EF4: FStAdFunc var_B0
  loc_B66EF7: FLdPr var_B0
  loc_B66EFA:  = Me.Font
  loc_B66EFF: FLdPr var_DC
  loc_B66F02: LateIdSt
  loc_B66F07: FFreeAd var_B0 = ""
  loc_B66F0E: Branch loc_B66F75
  loc_B66F11: LitI4 &HB
  loc_B66F16: FLdPr Me
  loc_B66F19: VCallAd Control_ID_ActiConcTxt
  loc_B66F1C: FStAdFunc var_B0
  loc_B66F1F: FLdPr var_B0
  loc_B66F22: Me.MaxLength = from_stack_1
  loc_B66F27: FFree1Ad var_B0
  loc_B66F2A: LitI4 &HB
  loc_B66F2F: FLdPr Me
  loc_B66F32: VCallAd Control_ID_IngrConcTxt
  loc_B66F35: FStAdFunc var_B0
  loc_B66F38: FLdPr var_B0
  loc_B66F3B: Me.MaxLength = from_stack_1
  loc_B66F40: FFree1Ad var_B0
  loc_B66F43: LitI2 1530
  loc_B66F46: CR8I2
  loc_B66F47: PopFPR4
  loc_B66F48: FLdPr Me
  loc_B66F4B: VCallAd Control_ID_ActiConcTxt
  loc_B66F4E: FStAdFunc var_B0
  loc_B66F51: FLdPr var_B0
  loc_B66F54: Me.Width = from_stack_1s
  loc_B66F59: FFree1Ad var_B0
  loc_B66F5C: LitI2 1530
  loc_B66F5F: CR8I2
  loc_B66F60: PopFPR4
  loc_B66F61: FLdPr Me
  loc_B66F64: VCallAd Control_ID_IngrConcTxt
  loc_B66F67: FStAdFunc var_B0
  loc_B66F6A: FLdPr var_B0
  loc_B66F6D: Me.Width = from_stack_1s
  loc_B66F72: FFree1Ad var_B0
  loc_B66F75: ExitProcHresult
  loc_B66F76: CCyI2
  loc_B66F77: AndI4
End Sub

Private Sub Form_Activate() 'A617C0
  'Data Table: 501068
  loc_A61764: FLdRfVar var_C2
  loc_A61767: FLdRfVar var_C0
  loc_A6176A: LitVarI2 var_B8, 1
  loc_A6176F: FLdPr Me
  loc_A61772: VCallAd Control_ID_tlbABMS
  loc_A61775: FStAdFunc var_88
  loc_A61778: FLdPr var_88
  loc_A6177B: LateIdLdVar var_98 DispID_3 0
  loc_A61782: CastAdVar Me
  loc_A61786: FStAdFunc var_BC
  loc_A61789: FLdPr var_BC
  loc_A6178C:  = Me.Buttons.ControlDefault
  loc_A61791: FLdPr var_C0
  loc_A61794:  = Me.Enabled
  loc_A61799: FLdI2 var_C2
  loc_A6179C: FFreeAd var_88 = "": var_BC = ""
  loc_A617A5: FFreeVar var_98 = ""
  loc_A617AC: BranchF loc_A617BD
  loc_A617AF: FLdPr Me
  loc_A617B2: MemLdRfVar from_stack_1.global_52
  loc_A617B5: NewIfNullPr clsconcepto
  loc_A617B8: Call clsconcepto.Requery()
  loc_A617BD: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9DADE0
  'Data Table: 501068
  loc_9DADC8: ILdI2 KeyCode
  loc_9DADCB: ILdRf Me
  loc_9DADCE: CastAd
  loc_9DADD1: FStAdFunc var_88
  loc_9DADD4: FLdRfVar var_88
  loc_9DADD7: ImpAdCallFPR4  = Proc_272_5_B525D4()
  loc_9DADDC: FFree1Ad var_88
  loc_9DADDF: ExitProcHresult
End Sub

Private Sub PeriInfoCbl_Click() 'AC3DF8
  'Data Table: 501068
  loc_AC3D18: FLdRfVar var_8C
  loc_AC3D1B: FLdPr Me
  loc_AC3D1E: VCallAd Control_ID_PeriInfoCbl
  loc_AC3D21: FStAdFunc var_88
  loc_AC3D24: FLdPr var_88
  loc_AC3D27:  = Me.Text
  loc_AC3D2C: ILdRf var_8C
  loc_AC3D2F: CI2Str
  loc_AC3D31: ImpAdStI2 MemVar_D93034
  loc_AC3D34: FFree1Str var_8C
  loc_AC3D37: FFree1Ad var_88
  loc_AC3D3A: LitStr "SELECT concepto.PeriInfo, concepto.CodiConc, concepto.ConcViej, concepto.VigeConc, concepto.DetaConc, concepto.AforConc, concepto.DevcConc, concepto.DevsConc, concepto.IngrConc, concepto.ActiConc, infogov.cuentacontable.DetaCuco as DeinCuco, cuentacontableactivo.DetaCuco as DeacCuco, TiafConc, tipomoviaforo.DetaTimo as DetaTimoTiaf, TipaConc, tipomovipago.DetaTimo as DetaTimoTipa FROM concepto "
  loc_AC3D3D: LitStr "LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = concepto.PeriInfo AND infogov.cuentacontable.CodiCuco = concepto.IngrConc "
  loc_AC3D40: ConcatStr
  loc_AC3D41: FStStrNoPop var_8C
  loc_AC3D44: LitStr "LEFT JOIN infogov.cuentacontable as cuentacontableactivo ON cuentacontableactivo.PeriInfo = concepto.PeriInfo AND cuentacontableactivo.CodiCuco = concepto.ActiConc "
  loc_AC3D47: ConcatStr
  loc_AC3D48: FStStrNoPop var_90
  loc_AC3D4B: LitStr "LEFT JOIN tipomovi as tipomoviaforo ON tipomoviaforo.CodiTimo = concepto.TiafConc "
  loc_AC3D4E: ConcatStr
  loc_AC3D4F: FStStrNoPop var_94
  loc_AC3D52: LitStr "LEFT JOIN tipomovi as tipomovipago ON tipomovipago.CodiTimo = concepto.TipaConc "
  loc_AC3D55: ConcatStr
  loc_AC3D56: FStStrNoPop var_98
  loc_AC3D59: LitStr " WHERE concepto.PeriInfo = "
  loc_AC3D5C: ConcatStr
  loc_AC3D5D: FStStrNoPop var_9C
  loc_AC3D60: ImpAdLdI2 MemVar_D93034
  loc_AC3D63: CStrUI1
  loc_AC3D65: FStStrNoPop var_A0
  loc_AC3D68: ConcatStr
  loc_AC3D69: FStStrNoPop var_A4
  loc_AC3D6C: LitStr " ORDER BY concepto.PeriInfo, CodiConc"
  loc_AC3D6F: ConcatStr
  loc_AC3D70: FStStrNoPop var_A8
  loc_AC3D73: FLdPr Me
  loc_AC3D76: MemLdRfVar from_stack_1.global_52
  loc_AC3D79: NewIfNullPr clsconcepto
  loc_AC3D7C: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_AC3D81: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AC3D94: LitI4 0
  loc_AC3D99: LitI4 1
  loc_AC3D9E: FLdRfVar var_AC
  loc_AC3DA1: Redim
  loc_AC3DAB: FLdPr Me
  loc_AC3DAE: MemLdRfVar from_stack_1.global_52
  loc_AC3DB1: NewIfNullAd
  loc_AC3DB4: FStAd var_88 
  loc_AC3DB8: FLdRfVar var_88
  loc_AC3DBB: CVarRef
  loc_AC3DC0: ParmAry1St
  loc_AC3DC6: FLdPr Me
  loc_AC3DC9: VCallAd Control_ID_dgdABMS
  loc_AC3DCC: CVarAd
  loc_AC3DD0: ParmAry1St
  loc_AC3DD6: FLdRfVar var_AC
  loc_AC3DD9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AC3DDE: ILdRf var_88
  loc_AC3DE1: CastAd
  loc_AC3DE4: FLdPr Me
  loc_AC3DE7: MemStAdFunc
  loc_AC3DEB: FLdRfVar var_AC
  loc_AC3DEE: Erase
  loc_AC3DEF: FFree1Ad var_88
  loc_AC3DF2: ImpAdCallFPR4 Proc_272_40_B5CC94()
  loc_AC3DF7: ExitProcHresult
End Sub

Private Sub DevcConcChk_Validate(Cancel As Boolean) 'AC1FE4
  'Data Table: 501068
  loc_AC1EEC: FLdRfVar var_8A
  loc_AC1EEF: FLdPr Me
  loc_AC1EF2: VCallAd Control_ID_cmdCancelar
  loc_AC1EF5: FStAdFunc var_88
  loc_AC1EF8: FLdPr var_88
  loc_AC1EFB:  = Me.Value
  loc_AC1F00: FLdI2 var_8A
  loc_AC1F03: NotI4
  loc_AC1F04: FLdRfVar var_92
  loc_AC1F07: FLdPr Me
  loc_AC1F0A: VCallAd Control_ID_DevcConcChk
  loc_AC1F0D: FStAdFunc var_90
  loc_AC1F10: FLdPr var_90
  loc_AC1F13:  = Me.Enabled
  loc_AC1F18: FLdI2 var_92
  loc_AC1F1B: AndI4
  loc_AC1F1C: FFreeAd var_88 = ""
  loc_AC1F23: BranchF loc_AC1FE1
  loc_AC1F26: FLdRfVar var_8A
  loc_AC1F29: FLdPr Me
  loc_AC1F2C: VCallAd Control_ID_DevcConcChk
  loc_AC1F2F: FStAdFunc var_88
  loc_AC1F32: FLdPr var_88
  loc_AC1F35:  = Me.Value
  loc_AC1F3A: FLdI2 var_8A
  loc_AC1F3D: LitI2_Byte 1
  loc_AC1F3F: EqI2
  loc_AC1F40: FFree1Ad var_88
  loc_AC1F43: BranchF loc_AC1FE1
  loc_AC1F46: FLdRfVar var_98
  loc_AC1F49: FLdPr Me
  loc_AC1F4C: VCallAd Control_ID_PeriInfoTxt
  loc_AC1F4F: FStAdFunc var_88
  loc_AC1F52: FLdPr var_88
  loc_AC1F55:  = Me.Text
  loc_AC1F5A: FLdPr Me
  loc_AC1F5D: VCallAd Control_ID_CodiConcMsk
  loc_AC1F60: FStAdFunc var_90
  loc_AC1F63: FLdPr var_90
  loc_AC1F66: LateIdLdVar var_A8 DispID_22 0
  loc_AC1F6D: CStrVarTmp
  loc_AC1F6E: FStStrNoPop var_AC
  loc_AC1F71: ILdRf var_98
  loc_AC1F74: CI2Str
  loc_AC1F76: ImpAdCallI2 Proc_18_76_A7F730(, )
  loc_AC1F7B: FStStrNoPop var_B0
  loc_AC1F7E: FLdPr Me
  loc_AC1F81: MemStStrCopy
  loc_AC1F85: FFreeStr var_98 = "": var_AC = ""
  loc_AC1F8E: FFreeAd var_88 = ""
  loc_AC1F95: FFree1Var var_A8 = ""
  loc_AC1F98: FLdPr Me
  loc_AC1F9B: MemLdStr global_64
  loc_AC1F9E: LitStr vbNullString
  loc_AC1FA1: NeStr
  loc_AC1FA3: BranchF loc_AC1FE1
  loc_AC1FA6: FLdPr Me
  loc_AC1FA9: MemLdStr global_64
  loc_AC1FAC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC1FB1: LitI2_Byte 0
  loc_AC1FB3: FLdPr Me
  loc_AC1FB6: VCallAd Control_ID_DevcConcChk
  loc_AC1FB9: FStAdFunc var_88
  loc_AC1FBC: FLdPr var_88
  loc_AC1FBF: Me.Value = from_stack_1
  loc_AC1FC4: FFree1Ad var_88
  loc_AC1FC7: FLdPr Me
  loc_AC1FCA: VCallAd Control_ID_DevcConcChk
  loc_AC1FCD: FStAdFunc var_88
  loc_AC1FD0: FLdPr var_88
  loc_AC1FD3: Me.SetFocus
  loc_AC1FD8: FFree1Ad var_88
  loc_AC1FDB: LitI2_Byte &HFF
  loc_AC1FDD: IStI2 Cancel
  loc_AC1FE0: ExitProcHresult
  loc_AC1FE1: ExitProcHresult
  loc_AC1FE2: LitI2FP -3843
End Sub
