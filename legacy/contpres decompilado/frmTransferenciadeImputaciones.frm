VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmTransferenciadeImputaciones
  Caption = "Transferencia de Imputaciones"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 16110
  ClientHeight = 9405
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 2
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmTransferenciadeImputaciones.frx":0000
    End
  End
  Begin VB.Frame Frame1
    Caption = " Transferencia de Imputaciones "
    Left = 120
    Top = 3240
    Width = 15255
    Height = 5895
    TabIndex = 6
    Begin VB.TextBox CodiUngaTxt
      Left = 2400
      Top = 2400
      Width = 1335
      Height = 360
      TabIndex = 21
      MaxLength = 70
      DataField = "CodiUnga"
    End
    Begin VB.TextBox ImunImpuTxt
      Left = 6360
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 39
      MaxLength = 14
      DataField = "SaldImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox CantImpuTxt
      Left = 2400
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 37
      MaxLength = 14
      DataField = "Cantidad"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox ExpeImpuTxt
      Left = 8160
      Top = 457
      Width = 2175
      Height = 360
      TabIndex = 10
      MaxLength = 15
      DataField = "ExpeImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox NufaDeveTxt
      Left = 4440
      Top = 4920
      Width = 1575
      Height = 360
      TabIndex = 52
      MaxLength = 8
      DataField = "NufaDeve"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox SufaDeveTxt
      Left = 3480
      Top = 4920
      Width = 855
      Height = 360
      TabIndex = 51
      MaxLength = 4
      DataField = "SufaDeve"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox TifaDeveCbo
      Left = 2400
      Top = 4920
      Width = 975
      Height = 360
      TabIndex = 50
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataField = "TifaDeve"
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 2400
      Top = 2880
      Width = 1575
      Height = 360
      TabIndex = 28
      OleObjectBlob = "frmTransferenciadeImputaciones.frx":0088
      DataField = "CodiFifu"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2400
      Top = 1920
      Width = 1335
      Height = 360
      TabIndex = 18
      OleObjectBlob = "frmTransferenciadeImputaciones.frx":0110
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox ExorImpuMsk
      Left = 2400
      Top = 457
      Width = 2175
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmTransferenciadeImputaciones.frx":0198
      DataField = "ExorImpu"
    End
    Begin VB.TextBox DetaImpuTxt
      Left = 2400
      Top = 5400
      Width = 10935
      Height = 360
      TabIndex = 58
      MaxLength = 100
      DataField = "DetaImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox ImpoImpuTxt
      Left = 9960
      Top = 3960
      Width = 1815
      Height = 360
      TabIndex = 41
      MaxLength = 14
      DataField = "ImpoImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 2400
      Top = 1440
      Width = 1575
      Height = 360
      TabIndex = 15
      OleObjectBlob = "frmTransferenciadeImputaciones.frx":01F8
      DataField = "CodiPart"
    End
    Begin MSMask.MaskEdBox FechImpuMsk
      Left = 2400
      Top = 3480
      Width = 1335
      Height = 360
      TabIndex = 31
      OleObjectBlob = "frmTransferenciadeImputaciones.frx":0280
      DataField = "FechImpu"
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 2400
      Top = 4440
      Width = 1815
      Height = 360
      TabIndex = 45
      OleObjectBlob = "frmTransferenciadeImputaciones.frx":0330
      DataField = "CucuPers"
    End
    Begin MSMask.MaskEdBox FefaDeveMsk
      Left = 6345
      Top = 3480
      Width = 1335
      Height = 360
      TabIndex = 33
      OleObjectBlob = "frmTransferenciadeImputaciones.frx":03A6
      DataField = "FechImpu"
    End
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 2400
      Top = 960
      Width = 1935
      Height = 360
      TabIndex = 12
      OleObjectBlob = "frmTransferenciadeImputaciones.frx":0456
    End
    Begin VB.Label SaldAutoLbl
      Left = 12840
      Top = 3360
      Width = 1935
      Height = 360
      TabIndex = 35
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
    End
    Begin VB.Label LabelSaldAuto
      Caption = "Saldo Autorizado:"
      Left = 10800
      Top = 3390
      Width = 1890
      Height = 300
      TabIndex = 34
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Cuenta Contable:"
      Left = 450
      Top = 960
      Width = 1860
      Height = 300
      TabIndex = 11
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
    Begin VB.Label DetaCucoLbl
      Left = 4380
      Top = 960
      Width = 7935
      Height = 360
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label22
      Caption = "Fecha Factura:"
      Left = 4680
      Top = 3510
      Width = 1620
      Height = 300
      TabIndex = 32
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
    Begin VB.Label DetaUngaLbl
      Left = 3855
      Top = 2400
      Width = 6495
      Height = 360
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
      DataField = "DetaUnga"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label20
      Caption = "Unidad de Gasto:"
      Left = 480
      Top = 2400
      Width = 1875
      Height = 300
      TabIndex = 20
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
    Begin VB.Label Label25
      Caption = "Altern:"
      Left = 12420
      Top = 2040
      Width = 690
      Height = 300
      TabIndex = 53
      AutoSize = -1  'True
    End
    Begin VB.Label AlteItcoLbl
      Left = 13200
      Top = 2040
      Width = 975
      Height = 360
      TabIndex = 54
      BorderStyle = 1 'Fixed Single
      DataField = "Altern"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label23
      Caption = "Rec.:"
      Left = 10560
      Top = 2520
      Width = 555
      Height = 300
      TabIndex = 55
      AutoSize = -1  'True
    End
    Begin VB.Label CodiReceLbl
      Left = 11160
      Top = 2520
      Width = 975
      Height = 360
      TabIndex = 56
      BorderStyle = 1 'Fixed Single
      DataField = "CodiRece"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label19
      Caption = "N.P.:"
      Left = 10560
      Top = 1440
      Width = 495
      Height = 420
      TabIndex = 23
      AutoSize = -1  'True
    End
    Begin VB.Label CodiNopeLbl
      Left = 11145
      Top = 1440
      Width = 975
      Height = 360
      TabIndex = 24
      BorderStyle = 1 'Fixed Single
      DataField = "CodiNope"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label CodiItnoLbl
      Left = 12945
      Top = 1440
      Width = 975
      Height = 360
      TabIndex = 26
      BorderStyle = 1 'Fixed Single
      DataField = "Item"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label9
      Caption = "Item:"
      Left = 12345
      Top = 1440
      Width = 540
      Height = 420
      TabIndex = 25
      AutoSize = -1  'True
    End
    Begin VB.Label Label12
      Caption = "Importe Unitario:"
      Left = 4500
      Top = 3960
      Width = 1770
      Height = 300
      TabIndex = 38
      AutoSize = -1  'True
    End
    Begin VB.Label Label11
      Caption = "Cantidad:"
      Left = 1320
      Top = 3960
      Width = 1020
      Height = 300
      TabIndex = 36
      AutoSize = -1  'True
    End
    Begin VB.Label CodiOrcoLbl
      Left = 11160
      Top = 2040
      Width = 975
      Height = 360
      TabIndex = 48
      BorderStyle = 1 'Fixed Single
      DataField = "CodiOrco"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label SaldImpuLbl
      Left = 12840
      Top = 3960
      Width = 1815
      Height = 360
      TabIndex = 43
      BorderStyle = 1 'Fixed Single
      DataField = "SaldImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
    End
    Begin VB.Label DetaProvLbl
      Left = 4320
      Top = 4440
      Width = 5655
      Height = 360
      TabIndex = 46
      BorderStyle = 1 'Fixed Single
      DataField = "DetaProv"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaFifuLbl
      Left = 4080
      Top = 2880
      Width = 6255
      Height = 360
      TabIndex = 29
      BorderStyle = 1 'Fixed Single
      DataField = "DetaFifu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaOrgaLbl
      Left = 3840
      Top = 1920
      Width = 6495
      Height = 360
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
      DataField = "DetaOrga"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaPartLbl
      Left = 4080
      Top = 1440
      Width = 6255
      Height = 360
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      DataField = "DetaPart"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Expediente de Pago:"
      Left = 5880
      Top = 480
      Width = 2205
      Height = 300
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label Label17
      Caption = "Factura:"
      Left = 1440
      Top = 4920
      Width = 885
      Height = 300
      TabIndex = 49
      AutoSize = -1  'True
    End
    Begin VB.Label Label15
      Caption = "Proveedor:"
      Left = 1200
      Top = 4440
      Width = 1140
      Height = 300
      TabIndex = 44
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
    Begin VB.Label Label14
      Caption = "Saldo:"
      Left = 12120
      Top = 3960
      Width = 675
      Height = 300
      TabIndex = 42
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Finalidad-Función:"
      Left = 360
      Top = 2880
      Width = 1950
      Height = 300
      TabIndex = 27
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
      Caption = "Organigrama:"
      Left = 870
      Top = 1920
      Width = 1440
      Height = 300
      TabIndex = 17
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
    Begin VB.Label Label4
      Caption = "Partida:"
      Left = 1500
      Top = 1440
      Width = 810
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
    Begin VB.Label Label10
      Caption = "Fecha Imputación:"
      Left = 330
      Top = 3480
      Width = 1980
      Height = 300
      TabIndex = 30
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
    Begin VB.Label Label1
      Caption = "Expediente Original:"
      Left = 240
      Top = 480
      Width = 2115
      Height = 300
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Importe Total:"
      Left = 8400
      Top = 3960
      Width = 1470
      Height = 300
      TabIndex = 40
      AutoSize = -1  'True
    End
    Begin VB.Label Label18
      Caption = "Detalle:"
      Left = 1500
      Top = 5400
      Width = 810
      Height = 300
      TabIndex = 57
      AutoSize = -1  'True
    End
    Begin VB.Label Label16
      Caption = "O.C.:"
      Left = 10560
      Top = 2040
      Width = 525
      Height = 300
      TabIndex = 47
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 15255
    Height = 1455
    TabIndex = 5
    OleObjectBlob = "frmTransferenciadeImputaciones.frx":04DE
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmTransferenciadeImputaciones.frx":0BAE
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 16110
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmTransferenciadeImputaciones.frx":872C
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmTransferenciadeImputaciones.frx":8C88
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmTransferenciadeImputaciones"


Private Sub CodiCucoMsk_UnknownEvent_0 '97FF0C
  'Data Table: 4FA290
  loc_97FEDC: LitVarStr var_94, vbNullString
  loc_97FEE1: PopAdLdVar
  loc_97FEE2: FLdPr Me
  loc_97FEE5: VCallAd Control_ID_CodiCucoMsk
  loc_97FEE8: FStAdFunc var_A8
  loc_97FEEB: FLdPr var_A8
  loc_97FEEE: LateIdSt
  loc_97FEF3: FFree1Ad var_A8
  loc_97FEF6: FLdPr Me
  loc_97FEF9: VCallAd Control_ID_CodiCucoMsk
  loc_97FEFC: CVarAd
  loc_97FF00: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_97FF05: FFree1Var var_B8 = ""
  loc_97FF08: ExitProcHresult
  loc_97FF09: FLdZeroAd arg_1E
End Sub

Private Sub CodiCucoMsk_UnknownEvent_1 '96A68C
  'Data Table: 4FA290
  loc_96A670: LitVarStr var_94, "#.#.##.##.##.##"
  loc_96A675: PopAdLdVar
  loc_96A676: FLdPr Me
  loc_96A679: VCallAd Control_ID_CodiCucoMsk
  loc_96A67C: FStAdFunc var_A8
  loc_96A67F: FLdPr var_A8
  loc_96A682: LateIdSt
  loc_96A687: FFree1Ad var_A8
  loc_96A68A: ExitProcHresult
End Sub

Private Function CodiCucoMsk_UnknownEvent_8(arg_C) 'BC43DC
  'Data Table: 4FA290
  loc_BC3164: FLdRfVar var_8A
  loc_BC3167: FLdPr Me
  loc_BC316A: VCallAd Control_ID_cmdCancelar
  loc_BC316D: FStAdFunc var_88
  loc_BC3170: FLdPr var_88
  loc_BC3173:  = Me.Value
  loc_BC3178: FLdI2 var_8A
  loc_BC317B: NotI4
  loc_BC317C: FLdPr Me
  loc_BC317F: VCallAd Control_ID_CodiCucoMsk
  loc_BC3182: FStAdFunc var_90
  loc_BC3185: FLdPr var_90
  loc_BC3188: LateIdLdVar var_A0 DispID_13 -32767
  loc_BC318F: CBoolVar
  loc_BC3191: AndI4
  loc_BC3192: FFreeAd var_88 = ""
  loc_BC3199: FFree1Var var_A0 = ""
  loc_BC319C: BranchF loc_BC43D9
  loc_BC319F: FLdPr Me
  loc_BC31A2: VCallAd Control_ID_CodiCucoMsk
  loc_BC31A5: FStAdFunc var_88
  loc_BC31A8: FLdPr var_88
  loc_BC31AB: LateIdLdVar var_A0 DispID_22 0
  loc_BC31B2: CStrVarTmp
  loc_BC31B3: FStStrNoPop var_A4
  loc_BC31B6: ImpAdCallI2 Trim$()
  loc_BC31BB: FStStrNoPop var_A8
  loc_BC31BE: LitStr vbNullString
  loc_BC31C1: NeStr
  loc_BC31C3: FFreeStr var_A4 = ""
  loc_BC31CA: FFree1Ad var_88
  loc_BC31CD: FFree1Var var_A0 = ""
  loc_BC31D0: BranchF loc_BC4034
  loc_BC31D3: FLdPr Me
  loc_BC31D6: VCallAd Control_ID_CodiCucoMsk
  loc_BC31D9: FStAdFunc var_88
  loc_BC31DC: FLdRfVar var_88
  loc_BC31DF: ImpAdCallI2 Proc_266_40_A1E128()
  loc_BC31E4: FFree1Ad var_88
  loc_BC31E7: BranchF loc_BC390F
  loc_BC31EA: FLdPr Me
  loc_BC31ED: VCallAd Control_ID_CodiCucoMsk
  loc_BC31F0: FStAdFunc var_88
  loc_BC31F3: FLdPr var_88
  loc_BC31F6: LateIdLdVar var_A0 DispID_22 0
  loc_BC31FD: PopAd
  loc_BC31FF: LitStr "SELECT * FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_BC3202: ImpAdLdI2 MemVar_C3D064
  loc_BC3205: CStrUI1
  loc_BC3207: FStStrNoPop var_A4
  loc_BC320A: ConcatStr
  loc_BC320B: FStStrNoPop var_A8
  loc_BC320E: LitStr " AND CodiCuco LIKE '"
  loc_BC3211: ConcatStr
  loc_BC3212: FStStrNoPop var_B0
  loc_BC3215: LitI4 0
  loc_BC321A: LitI4 -1
  loc_BC321F: LitI4 1
  loc_BC3224: LitStr vbNullString
  loc_BC3227: LitStr "."
  loc_BC322A: FLdRfVar var_A0
  loc_BC322D: CStrVarTmp
  loc_BC322E: FStStrNoPop var_AC
  loc_BC3231: ImpAdCallI2 Replace(, , , , , )
  loc_BC3236: FStStrNoPop var_B4
  loc_BC3239: ConcatStr
  loc_BC323A: FStStrNoPop var_B8
  loc_BC323D: LitStr Chr(37) & "'"
  loc_BC3240: ConcatStr
  loc_BC3241: FStStrNoPop var_BC
  loc_BC3244: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BC3249: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_BC325A: FFree1Ad var_88
  loc_BC325D: FFree1Var var_A0 = ""
  loc_BC3260: FLdRfVar var_C0
  loc_BC3263: ImpAdLdPr unk_4FA2B9
  loc_BC3266: MemLdPr global_0
  loc_BC3269:  = Me.RecordCount
  loc_BC326E: ILdRf var_C0
  loc_BC3271: LitI4 1
  loc_BC3276: EqI4
  loc_BC3277: BranchF loc_BC34F3
  loc_BC327A: FLdRfVar var_A0
  loc_BC327D: FLdRfVar var_90
  loc_BC3280: LitVarStr var_D0, "CodiCuco"
  loc_BC3285: PopAdLdVar
  loc_BC3286: FLdRfVar var_88
  loc_BC3289: ImpAdLdPr unk_4FA2B9
  loc_BC328C: MemLdPr global_0
  loc_BC328F:  = Me.Fields
  loc_BC3294: FLdPr var_88
  loc_BC3297: from_stack_2 = Me.Item(from_stack_1)
  loc_BC329C: FLdPr var_90
  loc_BC329F:  = Me.Value
  loc_BC32A4: LitI4 0
  loc_BC32A9: LitI4 &H16
  loc_BC32AE: FLdRfVar var_D4
  loc_BC32B1: Redim
  loc_BC32BB: LitVarStr var_E4, "1120"
  loc_BC32C0: LitI4 0
  loc_BC32C5: ILdRf var_D4
  loc_BC32C8: Ary1StVarCopy
  loc_BC32CA: LitVarStr var_F4, "1140"
  loc_BC32CF: LitI4 1
  loc_BC32D4: ILdRf var_D4
  loc_BC32D7: Ary1StVarCopy
  loc_BC32D9: LitVarStr var_104, "1150"
  loc_BC32DE: LitI4 2
  loc_BC32E3: ILdRf var_D4
  loc_BC32E6: Ary1StVarCopy
  loc_BC32E8: LitVarStr var_114, "1151"
  loc_BC32ED: LitI4 3
  loc_BC32F2: ILdRf var_D4
  loc_BC32F5: Ary1StVarCopy
  loc_BC32F7: LitVarStr var_124, "1154"
  loc_BC32FC: LitI4 4
  loc_BC3301: ILdRf var_D4
  loc_BC3304: Ary1StVarCopy
  loc_BC3306: LitVarStr var_134, "1155"
  loc_BC330B: LitI4 5
  loc_BC3310: ILdRf var_D4
  loc_BC3313: Ary1StVarCopy
  loc_BC3315: LitVarStr var_144, "1160"
  loc_BC331A: LitI4 6
  loc_BC331F: ILdRf var_D4
  loc_BC3322: Ary1StVarCopy
  loc_BC3324: LitVarStr var_154, "1170"
  loc_BC3329: LitI4 7
  loc_BC332E: ILdRf var_D4
  loc_BC3331: Ary1StVarCopy
  loc_BC3333: LitVarStr var_164, "1210"
  loc_BC3338: LitI4 8
  loc_BC333D: ILdRf var_D4
  loc_BC3340: Ary1StVarCopy
  loc_BC3342: LitVarStr var_174, "1230"
  loc_BC3347: LitI4 9
  loc_BC334C: ILdRf var_D4
  loc_BC334F: Ary1StVarCopy
  loc_BC3351: LitVarStr var_184, "2111"
  loc_BC3356: LitI4 &HA
  loc_BC335B: ILdRf var_D4
  loc_BC335E: Ary1StVarCopy
  loc_BC3360: LitVarStr var_194, "2112"
  loc_BC3365: LitI4 &HB
  loc_BC336A: ILdRf var_D4
  loc_BC336D: Ary1StVarCopy
  loc_BC336F: LitVarStr var_1A4, "2113"
  loc_BC3374: LitI4 &HC
  loc_BC3379: ILdRf var_D4
  loc_BC337C: Ary1StVarCopy
  loc_BC337E: LitVarStr var_1B4, "2114"
  loc_BC3383: LitI4 &HD
  loc_BC3388: ILdRf var_D4
  loc_BC338B: Ary1StVarCopy
  loc_BC338D: LitVarStr var_1C4, "2115"
  loc_BC3392: LitI4 &HE
  loc_BC3397: ILdRf var_D4
  loc_BC339A: Ary1StVarCopy
  loc_BC339C: LitVarStr var_1D4, "2116"
  loc_BC33A1: LitI4 &HF
  loc_BC33A6: ILdRf var_D4
  loc_BC33A9: Ary1StVarCopy
  loc_BC33AB: LitVarStr var_1E4, "2117"
  loc_BC33B0: LitI4 &H10
  loc_BC33B5: ILdRf var_D4
  loc_BC33B8: Ary1StVarCopy
  loc_BC33BA: LitVarStr var_1F4, "2121"
  loc_BC33BF: LitI4 &H11
  loc_BC33C4: ILdRf var_D4
  loc_BC33C7: Ary1StVarCopy
  loc_BC33C9: LitVarStr var_204, "2122"
  loc_BC33CE: LitI4 &H12
  loc_BC33D3: ILdRf var_D4
  loc_BC33D6: Ary1StVarCopy
  loc_BC33D8: LitVarStr var_214, "2123"
  loc_BC33DD: LitI4 &H13
  loc_BC33E2: ILdRf var_D4
  loc_BC33E5: Ary1StVarCopy
  loc_BC33E7: LitVarStr var_224, "2124"
  loc_BC33EC: LitI4 &H14
  loc_BC33F1: ILdRf var_D4
  loc_BC33F4: Ary1StVarCopy
  loc_BC33F6: LitVarStr var_234, "2210"
  loc_BC33FB: LitI4 &H15
  loc_BC3400: ILdRf var_D4
  loc_BC3403: Ary1StVarCopy
  loc_BC3405: LitVarStr var_244, "2220"
  loc_BC340A: LitI4 &H16
  loc_BC340F: ILdRf var_D4
  loc_BC3412: Ary1StVarCopy
  loc_BC3414: FLdRfVar var_D4
  loc_BC3417: FLdPr Me
  loc_BC341A: MemLdRfVar from_stack_1.global_120
  loc_BC341D: NewIfNullRf
  loc_BC3421: ImpAdLdI2 MemVar_C3D064
  loc_BC3424: LitI2_Byte 0
  loc_BC3426: FLdRfVar var_A0
  loc_BC3429: CStrVarTmp
  loc_BC342A: FStStrNoPop var_A4
  loc_BC342D: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_BC3432: FStStr var_A8
  loc_BC3435: FLdRfVar var_D4
  loc_BC3438: Erase
  loc_BC3439: ILdRf var_A8
  loc_BC343C: FLdPr Me
  loc_BC343F: MemStStrCopy
  loc_BC3443: FFreeStr var_A4 = ""
  loc_BC344A: FFreeAd var_88 = ""
  loc_BC3451: FFree1Var var_A0 = ""
  loc_BC3454: FLdRfVar var_A4
  loc_BC3457: FLdPr Me
  loc_BC345A: MemLdRfVar from_stack_1.global_120
  loc_BC345D: NewIfNullPr tblcuentacontable
  loc_BC3460: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_BC3465: FLdZeroAd var_A4
  loc_BC3468: CVarStr var_A0
  loc_BC346B: PopAdLdVar
  loc_BC346C: FLdPr Me
  loc_BC346F: VCallAd Control_ID_CodiCucoMsk
  loc_BC3472: FStAdFunc var_88
  loc_BC3475: FLdPr var_88
  loc_BC3478: LateIdSt
  loc_BC347D: FFree1Ad var_88
  loc_BC3480: FFree1Var var_A0 = ""
  loc_BC3483: FLdRfVar var_A4
  loc_BC3486: FLdPr Me
  loc_BC3489: MemLdRfVar from_stack_1.global_120
  loc_BC348C: NewIfNullPr tblcuentacontable
  loc_BC348F: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_BC3494: ILdRf var_A4
  loc_BC3497: FLdPr Me
  loc_BC349A: VCallAd Control_ID_DetaCucoLbl
  loc_BC349D: FStAdFunc var_88
  loc_BC34A0: FLdPr var_88
  loc_BC34A3: Me.Caption = from_stack_1
  loc_BC34A8: FFree1Str var_A4
  loc_BC34AB: FFree1Ad var_88
  loc_BC34AE: Call Proc_144_70_9E2298()
  loc_BC34B3: FLdPr Me
  loc_BC34B6: VCallAd Control_ID_CodiCucoMsk
  loc_BC34B9: FStAdFunc var_24C
  loc_BC34BC: FLdPr Me
  loc_BC34BF: VCallAd Control_ID_DetaCucoLbl
  loc_BC34C2: FStAdFunc var_248
  loc_BC34C5: FLdRfVar var_248
  loc_BC34C8: FLdZeroAd var_24C
  loc_BC34CB: FStAdFuncNoPop
  loc_BC34CE: CastAd
  loc_BC34D1: FStAdFunc var_90
  loc_BC34D4: FLdRfVar var_90
  loc_BC34D7: FLdPr Me
  loc_BC34DA: MemLdRfVar from_stack_1.global_64
  loc_BC34DD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BC34E2: IStI2 arg_C
  loc_BC34E5: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC34F0: Branch loc_BC390C
  loc_BC34F3: FLdRfVar var_C0
  loc_BC34F6: ImpAdLdPr unk_4FA2B9
  loc_BC34F9: MemLdPr global_0
  loc_BC34FC:  = Me.RecordCount
  loc_BC3501: ILdRf var_C0
  loc_BC3504: LitI4 1
  loc_BC3509: GtI4
  loc_BC350A: BranchF loc_BC3894
  loc_BC350D: FLdPr Me
  loc_BC3510: VCallAd Control_ID_CodiCucoMsk
  loc_BC3513: FStAdFunc var_88
  loc_BC3516: FLdPr var_88
  loc_BC3519: LateIdLdVar var_A0 DispID_22 0
  loc_BC3520: CStrVarTmp
  loc_BC3521: FStStrNoPop var_A4
  loc_BC3524: ImpAdLdRf MemVar_C3D6C0
  loc_BC3527: NewIfNullPr bscCuentaContable
  loc_BC352A: Call bscCuentaContable.BuscoxCodiCucoPut(from_stack_1v)
  loc_BC352F: FFree1Str var_A4
  loc_BC3532: FFree1Ad var_88
  loc_BC3535: FFree1Var var_A0 = ""
  loc_BC3538: LitStr vbNullString
  loc_BC353B: ImpAdLdRf MemVar_C3D6C0
  loc_BC353E: NewIfNullPr bscCuentaContable
  loc_BC3541: Call bscCuentaContable.BuscoxDetaCucoPut(from_stack_1v)
  loc_BC3546: LitVar_Missing var_E4
  loc_BC3549: PopAdLdVar
  loc_BC354A: LitVarI4
  loc_BC3552: PopAdLdVar
  loc_BC3553: ImpAdLdRf MemVar_C3D6C0
  loc_BC3556: NewIfNullPr bscCuentaContable
  loc_BC3559: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_BC355E: FLdRfVar var_C0
  loc_BC3561: FLdRfVar var_88
  loc_BC3564: ImpAdLdRf MemVar_C3D6C0
  loc_BC3567: NewIfNullPr bscCuentaContable
  loc_BC356A: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BC356F: FLdPr var_88
  loc_BC3572: from_stack_1 = clsbase.RecordCount
  loc_BC3577: ILdRf var_C0
  loc_BC357A: LitI4 0
  loc_BC357F: GtI4
  loc_BC3580: FFree1Ad var_88
  loc_BC3583: BranchF loc_BC3819
  loc_BC3586: FLdRfVar var_A0
  loc_BC3589: FLdRfVar var_24C
  loc_BC358C: LitVarStr var_D0, "CodiCuco"
  loc_BC3591: PopAdLdVar
  loc_BC3592: FLdRfVar var_248
  loc_BC3595: FLdRfVar var_90
  loc_BC3598: FLdRfVar var_88
  loc_BC359B: ImpAdLdRf MemVar_C3D6C0
  loc_BC359E: NewIfNullPr bscCuentaContable
  loc_BC35A1: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BC35A6: FLdPr var_88
  loc_BC35A9: from_stack_1v = clsbase.RsFrmGet()
  loc_BC35AE: FLdPr var_90
  loc_BC35B1:  = Me.Fields
  loc_BC35B6: FLdPr var_248
  loc_BC35B9: from_stack_2 = Me.Item(from_stack_1)
  loc_BC35BE: FLdPr var_24C
  loc_BC35C1:  = Me.Value
  loc_BC35C6: LitI4 0
  loc_BC35CB: LitI4 &H16
  loc_BC35D0: FLdRfVar var_D4
  loc_BC35D3: Redim
  loc_BC35DD: LitVarStr var_E4, "1120"
  loc_BC35E2: LitI4 0
  loc_BC35E7: ILdRf var_D4
  loc_BC35EA: Ary1StVarCopy
  loc_BC35EC: LitVarStr var_F4, "1140"
  loc_BC35F1: LitI4 1
  loc_BC35F6: ILdRf var_D4
  loc_BC35F9: Ary1StVarCopy
  loc_BC35FB: LitVarStr var_104, "1150"
  loc_BC3600: LitI4 2
  loc_BC3605: ILdRf var_D4
  loc_BC3608: Ary1StVarCopy
  loc_BC360A: LitVarStr var_114, "1151"
  loc_BC360F: LitI4 3
  loc_BC3614: ILdRf var_D4
  loc_BC3617: Ary1StVarCopy
  loc_BC3619: LitVarStr var_124, "1154"
  loc_BC361E: LitI4 4
  loc_BC3623: ILdRf var_D4
  loc_BC3626: Ary1StVarCopy
  loc_BC3628: LitVarStr var_134, "1155"
  loc_BC362D: LitI4 5
  loc_BC3632: ILdRf var_D4
  loc_BC3635: Ary1StVarCopy
  loc_BC3637: LitVarStr var_144, "1160"
  loc_BC363C: LitI4 6
  loc_BC3641: ILdRf var_D4
  loc_BC3644: Ary1StVarCopy
  loc_BC3646: LitVarStr var_154, "1170"
  loc_BC364B: LitI4 7
  loc_BC3650: ILdRf var_D4
  loc_BC3653: Ary1StVarCopy
  loc_BC3655: LitVarStr var_164, "1210"
  loc_BC365A: LitI4 8
  loc_BC365F: ILdRf var_D4
  loc_BC3662: Ary1StVarCopy
  loc_BC3664: LitVarStr var_174, "1230"
  loc_BC3669: LitI4 9
  loc_BC366E: ILdRf var_D4
  loc_BC3671: Ary1StVarCopy
  loc_BC3673: LitVarStr var_184, "2111"
  loc_BC3678: LitI4 &HA
  loc_BC367D: ILdRf var_D4
  loc_BC3680: Ary1StVarCopy
  loc_BC3682: LitVarStr var_194, "2112"
  loc_BC3687: LitI4 &HB
  loc_BC368C: ILdRf var_D4
  loc_BC368F: Ary1StVarCopy
  loc_BC3691: LitVarStr var_1A4, "2113"
  loc_BC3696: LitI4 &HC
  loc_BC369B: ILdRf var_D4
  loc_BC369E: Ary1StVarCopy
  loc_BC36A0: LitVarStr var_1B4, "2114"
  loc_BC36A5: LitI4 &HD
  loc_BC36AA: ILdRf var_D4
  loc_BC36AD: Ary1StVarCopy
  loc_BC36AF: LitVarStr var_1C4, "2115"
  loc_BC36B4: LitI4 &HE
  loc_BC36B9: ILdRf var_D4
  loc_BC36BC: Ary1StVarCopy
  loc_BC36BE: LitVarStr var_1D4, "2116"
  loc_BC36C3: LitI4 &HF
  loc_BC36C8: ILdRf var_D4
  loc_BC36CB: Ary1StVarCopy
  loc_BC36CD: LitVarStr var_1E4, "2117"
  loc_BC36D2: LitI4 &H10
  loc_BC36D7: ILdRf var_D4
  loc_BC36DA: Ary1StVarCopy
  loc_BC36DC: LitVarStr var_1F4, "2121"
  loc_BC36E1: LitI4 &H11
  loc_BC36E6: ILdRf var_D4
  loc_BC36E9: Ary1StVarCopy
  loc_BC36EB: LitVarStr var_204, "2122"
  loc_BC36F0: LitI4 &H12
  loc_BC36F5: ILdRf var_D4
  loc_BC36F8: Ary1StVarCopy
  loc_BC36FA: LitVarStr var_214, "2123"
  loc_BC36FF: LitI4 &H13
  loc_BC3704: ILdRf var_D4
  loc_BC3707: Ary1StVarCopy
  loc_BC3709: LitVarStr var_224, "2124"
  loc_BC370E: LitI4 &H14
  loc_BC3713: ILdRf var_D4
  loc_BC3716: Ary1StVarCopy
  loc_BC3718: LitVarStr var_234, "2210"
  loc_BC371D: LitI4 &H15
  loc_BC3722: ILdRf var_D4
  loc_BC3725: Ary1StVarCopy
  loc_BC3727: LitVarStr var_244, "2220"
  loc_BC372C: LitI4 &H16
  loc_BC3731: ILdRf var_D4
  loc_BC3734: Ary1StVarCopy
  loc_BC3736: FLdRfVar var_D4
  loc_BC3739: FLdPr Me
  loc_BC373C: MemLdRfVar from_stack_1.global_120
  loc_BC373F: NewIfNullRf
  loc_BC3743: ImpAdLdI2 MemVar_C3D064
  loc_BC3746: LitI2_Byte 0
  loc_BC3748: FLdRfVar var_A0
  loc_BC374B: CStrVarTmp
  loc_BC374C: FStStrNoPop var_A4
  loc_BC374F: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_BC3754: FStStr var_A8
  loc_BC3757: FLdRfVar var_D4
  loc_BC375A: Erase
  loc_BC375B: ILdRf var_A8
  loc_BC375E: FLdPr Me
  loc_BC3761: MemStStrCopy
  loc_BC3765: FFreeStr var_A4 = ""
  loc_BC376C: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC3777: FFree1Var var_A0 = ""
  loc_BC377A: FLdRfVar var_A4
  loc_BC377D: FLdPr Me
  loc_BC3780: MemLdRfVar from_stack_1.global_120
  loc_BC3783: NewIfNullPr tblcuentacontable
  loc_BC3786: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_BC378B: FLdZeroAd var_A4
  loc_BC378E: CVarStr var_A0
  loc_BC3791: PopAdLdVar
  loc_BC3792: FLdPr Me
  loc_BC3795: VCallAd Control_ID_CodiCucoMsk
  loc_BC3798: FStAdFunc var_88
  loc_BC379B: FLdPr var_88
  loc_BC379E: LateIdSt
  loc_BC37A3: FFree1Ad var_88
  loc_BC37A6: FFree1Var var_A0 = ""
  loc_BC37A9: FLdRfVar var_A4
  loc_BC37AC: FLdPr Me
  loc_BC37AF: MemLdRfVar from_stack_1.global_120
  loc_BC37B2: NewIfNullPr tblcuentacontable
  loc_BC37B5: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_BC37BA: ILdRf var_A4
  loc_BC37BD: FLdPr Me
  loc_BC37C0: VCallAd Control_ID_DetaCucoLbl
  loc_BC37C3: FStAdFunc var_88
  loc_BC37C6: FLdPr var_88
  loc_BC37C9: Me.Caption = from_stack_1
  loc_BC37CE: FFree1Str var_A4
  loc_BC37D1: FFree1Ad var_88
  loc_BC37D4: Call Proc_144_70_9E2298()
  loc_BC37D9: FLdPr Me
  loc_BC37DC: VCallAd Control_ID_CodiCucoMsk
  loc_BC37DF: FStAdFunc var_24C
  loc_BC37E2: FLdPr Me
  loc_BC37E5: VCallAd Control_ID_DetaCucoLbl
  loc_BC37E8: FStAdFunc var_248
  loc_BC37EB: FLdRfVar var_248
  loc_BC37EE: FLdZeroAd var_24C
  loc_BC37F1: FStAdFuncNoPop
  loc_BC37F4: CastAd
  loc_BC37F7: FStAdFunc var_90
  loc_BC37FA: FLdRfVar var_90
  loc_BC37FD: FLdPr Me
  loc_BC3800: MemLdRfVar from_stack_1.global_64
  loc_BC3803: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BC3808: IStI2 arg_C
  loc_BC380B: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC3816: Branch loc_BC3891
  loc_BC3819: LitVarStr var_D0, vbNullString
  loc_BC381E: PopAdLdVar
  loc_BC381F: FLdPr Me
  loc_BC3822: VCallAd Control_ID_CodiCucoMsk
  loc_BC3825: FStAdFunc var_88
  loc_BC3828: FLdPr var_88
  loc_BC382B: LateIdSt
  loc_BC3830: FFree1Ad var_88
  loc_BC3833: LitStr vbNullString
  loc_BC3836: FLdPr Me
  loc_BC3839: VCallAd Control_ID_DetaCucoLbl
  loc_BC383C: FStAdFunc var_88
  loc_BC383F: FLdPr var_88
  loc_BC3842: Me.Caption = from_stack_1
  loc_BC3847: FFree1Ad var_88
  loc_BC384A: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_BC384D: FLdPr Me
  loc_BC3850: MemStStrCopy
  loc_BC3854: FLdPr Me
  loc_BC3857: VCallAd Control_ID_CodiCucoMsk
  loc_BC385A: FStAdFunc var_24C
  loc_BC385D: FLdPr Me
  loc_BC3860: VCallAd Control_ID_DetaCucoLbl
  loc_BC3863: FStAdFunc var_248
  loc_BC3866: FLdRfVar var_248
  loc_BC3869: FLdZeroAd var_24C
  loc_BC386C: FStAdFuncNoPop
  loc_BC386F: CastAd
  loc_BC3872: FStAdFunc var_90
  loc_BC3875: FLdRfVar var_90
  loc_BC3878: FLdPr Me
  loc_BC387B: MemLdRfVar from_stack_1.global_64
  loc_BC387E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BC3883: IStI2 arg_C
  loc_BC3886: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC3891: Branch loc_BC390C
  loc_BC3894: FLdRfVar var_C0
  loc_BC3897: ImpAdLdPr unk_4FA2B9
  loc_BC389A: MemLdPr global_0
  loc_BC389D:  = Me.RecordCount
  loc_BC38A2: ILdRf var_C0
  loc_BC38A5: LitI4 1
  loc_BC38AA: LtI4
  loc_BC38AB: BranchF loc_BC390C
  loc_BC38AE: LitStr vbNullString
  loc_BC38B1: FLdPr Me
  loc_BC38B4: VCallAd Control_ID_DetaCucoLbl
  loc_BC38B7: FStAdFunc var_88
  loc_BC38BA: FLdPr var_88
  loc_BC38BD: Me.Caption = from_stack_1
  loc_BC38C2: FFree1Ad var_88
  loc_BC38C5: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_BC38C8: FLdPr Me
  loc_BC38CB: MemStStrCopy
  loc_BC38CF: FLdPr Me
  loc_BC38D2: VCallAd Control_ID_CodiCucoMsk
  loc_BC38D5: FStAdFunc var_24C
  loc_BC38D8: FLdPr Me
  loc_BC38DB: VCallAd Control_ID_DetaCucoLbl
  loc_BC38DE: FStAdFunc var_248
  loc_BC38E1: FLdRfVar var_248
  loc_BC38E4: FLdZeroAd var_24C
  loc_BC38E7: FStAdFuncNoPop
  loc_BC38EA: CastAd
  loc_BC38ED: FStAdFunc var_90
  loc_BC38F0: FLdRfVar var_90
  loc_BC38F3: FLdPr Me
  loc_BC38F6: MemLdRfVar from_stack_1.global_64
  loc_BC38F9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BC38FE: IStI2 arg_C
  loc_BC3901: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC390C: Branch loc_BC4031
  loc_BC390F: FLdPr Me
  loc_BC3912: VCallAd Control_ID_CodiCucoMsk
  loc_BC3915: FStAdFunc var_88
  loc_BC3918: FLdPr var_88
  loc_BC391B: LateIdLdVar var_A0 DispID_22 0
  loc_BC3922: PopAd
  loc_BC3924: LitStr "SELECT * FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_BC3927: ImpAdLdI2 MemVar_C3D064
  loc_BC392A: CStrUI1
  loc_BC392C: FStStrNoPop var_A4
  loc_BC392F: ConcatStr
  loc_BC3930: FStStrNoPop var_A8
  loc_BC3933: LitStr " AND DetaCuco LIKE '" & Chr(37)
  loc_BC3936: ConcatStr
  loc_BC3937: FStStrNoPop var_B0
  loc_BC393A: LitI4 0
  loc_BC393F: LitI4 -1
  loc_BC3944: LitI4 1
  loc_BC3949: LitStr Chr(37)
  loc_BC394C: LitStr " "
  loc_BC394F: FLdRfVar var_A0
  loc_BC3952: CStrVarTmp
  loc_BC3953: FStStrNoPop var_AC
  loc_BC3956: ImpAdCallI2 Replace(, , , , , )
  loc_BC395B: FStStrNoPop var_B4
  loc_BC395E: ConcatStr
  loc_BC395F: FStStrNoPop var_B8
  loc_BC3962: LitStr Chr(37) & "'"
  loc_BC3965: ConcatStr
  loc_BC3966: FStStrNoPop var_BC
  loc_BC3969: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BC396E: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_BC397F: FFree1Ad var_88
  loc_BC3982: FFree1Var var_A0 = ""
  loc_BC3985: FLdRfVar var_C0
  loc_BC3988: ImpAdLdPr unk_4FA2B9
  loc_BC398B: MemLdPr global_0
  loc_BC398E:  = Me.RecordCount
  loc_BC3993: ILdRf var_C0
  loc_BC3996: LitI4 1
  loc_BC399B: EqI4
  loc_BC399C: BranchF loc_BC3C18
  loc_BC399F: FLdRfVar var_A0
  loc_BC39A2: FLdRfVar var_90
  loc_BC39A5: LitVarStr var_D0, "CodiCuco"
  loc_BC39AA: PopAdLdVar
  loc_BC39AB: FLdRfVar var_88
  loc_BC39AE: ImpAdLdPr unk_4FA2B9
  loc_BC39B1: MemLdPr global_0
  loc_BC39B4:  = Me.Fields
  loc_BC39B9: FLdPr var_88
  loc_BC39BC: from_stack_2 = Me.Item(from_stack_1)
  loc_BC39C1: FLdPr var_90
  loc_BC39C4:  = Me.Value
  loc_BC39C9: LitI4 0
  loc_BC39CE: LitI4 &H16
  loc_BC39D3: FLdRfVar var_D4
  loc_BC39D6: Redim
  loc_BC39E0: LitVarStr var_E4, "1120"
  loc_BC39E5: LitI4 0
  loc_BC39EA: ILdRf var_D4
  loc_BC39ED: Ary1StVarCopy
  loc_BC39EF: LitVarStr var_F4, "1140"
  loc_BC39F4: LitI4 1
  loc_BC39F9: ILdRf var_D4
  loc_BC39FC: Ary1StVarCopy
  loc_BC39FE: LitVarStr var_104, "1150"
  loc_BC3A03: LitI4 2
  loc_BC3A08: ILdRf var_D4
  loc_BC3A0B: Ary1StVarCopy
  loc_BC3A0D: LitVarStr var_114, "1151"
  loc_BC3A12: LitI4 3
  loc_BC3A17: ILdRf var_D4
  loc_BC3A1A: Ary1StVarCopy
  loc_BC3A1C: LitVarStr var_124, "1154"
  loc_BC3A21: LitI4 4
  loc_BC3A26: ILdRf var_D4
  loc_BC3A29: Ary1StVarCopy
  loc_BC3A2B: LitVarStr var_134, "1155"
  loc_BC3A30: LitI4 5
  loc_BC3A35: ILdRf var_D4
  loc_BC3A38: Ary1StVarCopy
  loc_BC3A3A: LitVarStr var_144, "1160"
  loc_BC3A3F: LitI4 6
  loc_BC3A44: ILdRf var_D4
  loc_BC3A47: Ary1StVarCopy
  loc_BC3A49: LitVarStr var_154, "1170"
  loc_BC3A4E: LitI4 7
  loc_BC3A53: ILdRf var_D4
  loc_BC3A56: Ary1StVarCopy
  loc_BC3A58: LitVarStr var_164, "1210"
  loc_BC3A5D: LitI4 8
  loc_BC3A62: ILdRf var_D4
  loc_BC3A65: Ary1StVarCopy
  loc_BC3A67: LitVarStr var_174, "1230"
  loc_BC3A6C: LitI4 9
  loc_BC3A71: ILdRf var_D4
  loc_BC3A74: Ary1StVarCopy
  loc_BC3A76: LitVarStr var_184, "2111"
  loc_BC3A7B: LitI4 &HA
  loc_BC3A80: ILdRf var_D4
  loc_BC3A83: Ary1StVarCopy
  loc_BC3A85: LitVarStr var_194, "2112"
  loc_BC3A8A: LitI4 &HB
  loc_BC3A8F: ILdRf var_D4
  loc_BC3A92: Ary1StVarCopy
  loc_BC3A94: LitVarStr var_1A4, "2113"
  loc_BC3A99: LitI4 &HC
  loc_BC3A9E: ILdRf var_D4
  loc_BC3AA1: Ary1StVarCopy
  loc_BC3AA3: LitVarStr var_1B4, "2114"
  loc_BC3AA8: LitI4 &HD
  loc_BC3AAD: ILdRf var_D4
  loc_BC3AB0: Ary1StVarCopy
  loc_BC3AB2: LitVarStr var_1C4, "2115"
  loc_BC3AB7: LitI4 &HE
  loc_BC3ABC: ILdRf var_D4
  loc_BC3ABF: Ary1StVarCopy
  loc_BC3AC1: LitVarStr var_1D4, "2116"
  loc_BC3AC6: LitI4 &HF
  loc_BC3ACB: ILdRf var_D4
  loc_BC3ACE: Ary1StVarCopy
  loc_BC3AD0: LitVarStr var_1E4, "2117"
  loc_BC3AD5: LitI4 &H10
  loc_BC3ADA: ILdRf var_D4
  loc_BC3ADD: Ary1StVarCopy
  loc_BC3ADF: LitVarStr var_1F4, "2121"
  loc_BC3AE4: LitI4 &H11
  loc_BC3AE9: ILdRf var_D4
  loc_BC3AEC: Ary1StVarCopy
  loc_BC3AEE: LitVarStr var_204, "2122"
  loc_BC3AF3: LitI4 &H12
  loc_BC3AF8: ILdRf var_D4
  loc_BC3AFB: Ary1StVarCopy
  loc_BC3AFD: LitVarStr var_214, "2123"
  loc_BC3B02: LitI4 &H13
  loc_BC3B07: ILdRf var_D4
  loc_BC3B0A: Ary1StVarCopy
  loc_BC3B0C: LitVarStr var_224, "2124"
  loc_BC3B11: LitI4 &H14
  loc_BC3B16: ILdRf var_D4
  loc_BC3B19: Ary1StVarCopy
  loc_BC3B1B: LitVarStr var_234, "2210"
  loc_BC3B20: LitI4 &H15
  loc_BC3B25: ILdRf var_D4
  loc_BC3B28: Ary1StVarCopy
  loc_BC3B2A: LitVarStr var_244, "2220"
  loc_BC3B2F: LitI4 &H16
  loc_BC3B34: ILdRf var_D4
  loc_BC3B37: Ary1StVarCopy
  loc_BC3B39: FLdRfVar var_D4
  loc_BC3B3C: FLdPr Me
  loc_BC3B3F: MemLdRfVar from_stack_1.global_120
  loc_BC3B42: NewIfNullRf
  loc_BC3B46: ImpAdLdI2 MemVar_C3D064
  loc_BC3B49: LitI2_Byte 0
  loc_BC3B4B: FLdRfVar var_A0
  loc_BC3B4E: CStrVarTmp
  loc_BC3B4F: FStStrNoPop var_A4
  loc_BC3B52: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_BC3B57: FStStr var_A8
  loc_BC3B5A: FLdRfVar var_D4
  loc_BC3B5D: Erase
  loc_BC3B5E: ILdRf var_A8
  loc_BC3B61: FLdPr Me
  loc_BC3B64: MemStStrCopy
  loc_BC3B68: FFreeStr var_A4 = ""
  loc_BC3B6F: FFreeAd var_88 = ""
  loc_BC3B76: FFree1Var var_A0 = ""
  loc_BC3B79: FLdRfVar var_A4
  loc_BC3B7C: FLdPr Me
  loc_BC3B7F: MemLdRfVar from_stack_1.global_120
  loc_BC3B82: NewIfNullPr tblcuentacontable
  loc_BC3B85: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_BC3B8A: FLdZeroAd var_A4
  loc_BC3B8D: CVarStr var_A0
  loc_BC3B90: PopAdLdVar
  loc_BC3B91: FLdPr Me
  loc_BC3B94: VCallAd Control_ID_CodiCucoMsk
  loc_BC3B97: FStAdFunc var_88
  loc_BC3B9A: FLdPr var_88
  loc_BC3B9D: LateIdSt
  loc_BC3BA2: FFree1Ad var_88
  loc_BC3BA5: FFree1Var var_A0 = ""
  loc_BC3BA8: FLdRfVar var_A4
  loc_BC3BAB: FLdPr Me
  loc_BC3BAE: MemLdRfVar from_stack_1.global_120
  loc_BC3BB1: NewIfNullPr tblcuentacontable
  loc_BC3BB4: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_BC3BB9: ILdRf var_A4
  loc_BC3BBC: FLdPr Me
  loc_BC3BBF: VCallAd Control_ID_DetaCucoLbl
  loc_BC3BC2: FStAdFunc var_88
  loc_BC3BC5: FLdPr var_88
  loc_BC3BC8: Me.Caption = from_stack_1
  loc_BC3BCD: FFree1Str var_A4
  loc_BC3BD0: FFree1Ad var_88
  loc_BC3BD3: Call Proc_144_70_9E2298()
  loc_BC3BD8: FLdPr Me
  loc_BC3BDB: VCallAd Control_ID_CodiCucoMsk
  loc_BC3BDE: FStAdFunc var_24C
  loc_BC3BE1: FLdPr Me
  loc_BC3BE4: VCallAd Control_ID_DetaCucoLbl
  loc_BC3BE7: FStAdFunc var_248
  loc_BC3BEA: FLdRfVar var_248
  loc_BC3BED: FLdZeroAd var_24C
  loc_BC3BF0: FStAdFuncNoPop
  loc_BC3BF3: CastAd
  loc_BC3BF6: FStAdFunc var_90
  loc_BC3BF9: FLdRfVar var_90
  loc_BC3BFC: FLdPr Me
  loc_BC3BFF: MemLdRfVar from_stack_1.global_64
  loc_BC3C02: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BC3C07: IStI2 arg_C
  loc_BC3C0A: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC3C15: Branch loc_BC4031
  loc_BC3C18: FLdRfVar var_C0
  loc_BC3C1B: ImpAdLdPr unk_4FA2B9
  loc_BC3C1E: MemLdPr global_0
  loc_BC3C21:  = Me.RecordCount
  loc_BC3C26: ILdRf var_C0
  loc_BC3C29: LitI4 1
  loc_BC3C2E: GtI4
  loc_BC3C2F: BranchF loc_BC3FB9
  loc_BC3C32: FLdPr Me
  loc_BC3C35: VCallAd Control_ID_CodiCucoMsk
  loc_BC3C38: FStAdFunc var_88
  loc_BC3C3B: FLdPr var_88
  loc_BC3C3E: LateIdLdVar var_A0 DispID_22 0
  loc_BC3C45: CStrVarTmp
  loc_BC3C46: FStStrNoPop var_A4
  loc_BC3C49: ImpAdLdRf MemVar_C3D6C0
  loc_BC3C4C: NewIfNullPr bscCuentaContable
  loc_BC3C4F: Call bscCuentaContable.BuscoxDetaCucoPut(from_stack_1v)
  loc_BC3C54: FFree1Str var_A4
  loc_BC3C57: FFree1Ad var_88
  loc_BC3C5A: FFree1Var var_A0 = ""
  loc_BC3C5D: LitStr vbNullString
  loc_BC3C60: ImpAdLdRf MemVar_C3D6C0
  loc_BC3C63: NewIfNullPr bscCuentaContable
  loc_BC3C66: Call bscCuentaContable.BuscoxCodiCucoPut(from_stack_1v)
  loc_BC3C6B: LitVar_Missing var_E4
  loc_BC3C6E: PopAdLdVar
  loc_BC3C6F: LitVarI4
  loc_BC3C77: PopAdLdVar
  loc_BC3C78: ImpAdLdRf MemVar_C3D6C0
  loc_BC3C7B: NewIfNullPr bscCuentaContable
  loc_BC3C7E: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_BC3C83: FLdRfVar var_C0
  loc_BC3C86: FLdRfVar var_88
  loc_BC3C89: ImpAdLdRf MemVar_C3D6C0
  loc_BC3C8C: NewIfNullPr bscCuentaContable
  loc_BC3C8F: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BC3C94: FLdPr var_88
  loc_BC3C97: from_stack_1 = clsbase.RecordCount
  loc_BC3C9C: ILdRf var_C0
  loc_BC3C9F: LitI4 0
  loc_BC3CA4: GtI4
  loc_BC3CA5: FFree1Ad var_88
  loc_BC3CA8: BranchF loc_BC3F3E
  loc_BC3CAB: FLdRfVar var_A0
  loc_BC3CAE: FLdRfVar var_24C
  loc_BC3CB1: LitVarStr var_D0, "CodiCuco"
  loc_BC3CB6: PopAdLdVar
  loc_BC3CB7: FLdRfVar var_248
  loc_BC3CBA: FLdRfVar var_90
  loc_BC3CBD: FLdRfVar var_88
  loc_BC3CC0: ImpAdLdRf MemVar_C3D6C0
  loc_BC3CC3: NewIfNullPr bscCuentaContable
  loc_BC3CC6: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BC3CCB: FLdPr var_88
  loc_BC3CCE: from_stack_1v = clsbase.RsFrmGet()
  loc_BC3CD3: FLdPr var_90
  loc_BC3CD6:  = Me.Fields
  loc_BC3CDB: FLdPr var_248
  loc_BC3CDE: from_stack_2 = Me.Item(from_stack_1)
  loc_BC3CE3: FLdPr var_24C
  loc_BC3CE6:  = Me.Value
  loc_BC3CEB: LitI4 0
  loc_BC3CF0: LitI4 &H16
  loc_BC3CF5: FLdRfVar var_D4
  loc_BC3CF8: Redim
  loc_BC3D02: LitVarStr var_E4, "1120"
  loc_BC3D07: LitI4 0
  loc_BC3D0C: ILdRf var_D4
  loc_BC3D0F: Ary1StVarCopy
  loc_BC3D11: LitVarStr var_F4, "1140"
  loc_BC3D16: LitI4 1
  loc_BC3D1B: ILdRf var_D4
  loc_BC3D1E: Ary1StVarCopy
  loc_BC3D20: LitVarStr var_104, "1150"
  loc_BC3D25: LitI4 2
  loc_BC3D2A: ILdRf var_D4
  loc_BC3D2D: Ary1StVarCopy
  loc_BC3D2F: LitVarStr var_114, "1151"
  loc_BC3D34: LitI4 3
  loc_BC3D39: ILdRf var_D4
  loc_BC3D3C: Ary1StVarCopy
  loc_BC3D3E: LitVarStr var_124, "1154"
  loc_BC3D43: LitI4 4
  loc_BC3D48: ILdRf var_D4
  loc_BC3D4B: Ary1StVarCopy
  loc_BC3D4D: LitVarStr var_134, "1155"
  loc_BC3D52: LitI4 5
  loc_BC3D57: ILdRf var_D4
  loc_BC3D5A: Ary1StVarCopy
  loc_BC3D5C: LitVarStr var_144, "1160"
  loc_BC3D61: LitI4 6
  loc_BC3D66: ILdRf var_D4
  loc_BC3D69: Ary1StVarCopy
  loc_BC3D6B: LitVarStr var_154, "1170"
  loc_BC3D70: LitI4 7
  loc_BC3D75: ILdRf var_D4
  loc_BC3D78: Ary1StVarCopy
  loc_BC3D7A: LitVarStr var_164, "1210"
  loc_BC3D7F: LitI4 8
  loc_BC3D84: ILdRf var_D4
  loc_BC3D87: Ary1StVarCopy
  loc_BC3D89: LitVarStr var_174, "1230"
  loc_BC3D8E: LitI4 9
  loc_BC3D93: ILdRf var_D4
  loc_BC3D96: Ary1StVarCopy
  loc_BC3D98: LitVarStr var_184, "2111"
  loc_BC3D9D: LitI4 &HA
  loc_BC3DA2: ILdRf var_D4
  loc_BC3DA5: Ary1StVarCopy
  loc_BC3DA7: LitVarStr var_194, "2112"
  loc_BC3DAC: LitI4 &HB
  loc_BC3DB1: ILdRf var_D4
  loc_BC3DB4: Ary1StVarCopy
  loc_BC3DB6: LitVarStr var_1A4, "2113"
  loc_BC3DBB: LitI4 &HC
  loc_BC3DC0: ILdRf var_D4
  loc_BC3DC3: Ary1StVarCopy
  loc_BC3DC5: LitVarStr var_1B4, "2114"
  loc_BC3DCA: LitI4 &HD
  loc_BC3DCF: ILdRf var_D4
  loc_BC3DD2: Ary1StVarCopy
  loc_BC3DD4: LitVarStr var_1C4, "2115"
  loc_BC3DD9: LitI4 &HE
  loc_BC3DDE: ILdRf var_D4
  loc_BC3DE1: Ary1StVarCopy
  loc_BC3DE3: LitVarStr var_1D4, "2116"
  loc_BC3DE8: LitI4 &HF
  loc_BC3DED: ILdRf var_D4
  loc_BC3DF0: Ary1StVarCopy
  loc_BC3DF2: LitVarStr var_1E4, "2117"
  loc_BC3DF7: LitI4 &H10
  loc_BC3DFC: ILdRf var_D4
  loc_BC3DFF: Ary1StVarCopy
  loc_BC3E01: LitVarStr var_1F4, "2121"
  loc_BC3E06: LitI4 &H11
  loc_BC3E0B: ILdRf var_D4
  loc_BC3E0E: Ary1StVarCopy
  loc_BC3E10: LitVarStr var_204, "2122"
  loc_BC3E15: LitI4 &H12
  loc_BC3E1A: ILdRf var_D4
  loc_BC3E1D: Ary1StVarCopy
  loc_BC3E1F: LitVarStr var_214, "2123"
  loc_BC3E24: LitI4 &H13
  loc_BC3E29: ILdRf var_D4
  loc_BC3E2C: Ary1StVarCopy
  loc_BC3E2E: LitVarStr var_224, "2124"
  loc_BC3E33: LitI4 &H14
  loc_BC3E38: ILdRf var_D4
  loc_BC3E3B: Ary1StVarCopy
  loc_BC3E3D: LitVarStr var_234, "2210"
  loc_BC3E42: LitI4 &H15
  loc_BC3E47: ILdRf var_D4
  loc_BC3E4A: Ary1StVarCopy
  loc_BC3E4C: LitVarStr var_244, "2220"
  loc_BC3E51: LitI4 &H16
  loc_BC3E56: ILdRf var_D4
  loc_BC3E59: Ary1StVarCopy
  loc_BC3E5B: FLdRfVar var_D4
  loc_BC3E5E: FLdPr Me
  loc_BC3E61: MemLdRfVar from_stack_1.global_120
  loc_BC3E64: NewIfNullRf
  loc_BC3E68: ImpAdLdI2 MemVar_C3D064
  loc_BC3E6B: LitI2_Byte 0
  loc_BC3E6D: FLdRfVar var_A0
  loc_BC3E70: CStrVarTmp
  loc_BC3E71: FStStrNoPop var_A4
  loc_BC3E74: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_BC3E79: FStStr var_A8
  loc_BC3E7C: FLdRfVar var_D4
  loc_BC3E7F: Erase
  loc_BC3E80: ILdRf var_A8
  loc_BC3E83: FLdPr Me
  loc_BC3E86: MemStStrCopy
  loc_BC3E8A: FFreeStr var_A4 = ""
  loc_BC3E91: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC3E9C: FFree1Var var_A0 = ""
  loc_BC3E9F: FLdRfVar var_A4
  loc_BC3EA2: FLdPr Me
  loc_BC3EA5: MemLdRfVar from_stack_1.global_120
  loc_BC3EA8: NewIfNullPr tblcuentacontable
  loc_BC3EAB: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_BC3EB0: FLdZeroAd var_A4
  loc_BC3EB3: CVarStr var_A0
  loc_BC3EB6: PopAdLdVar
  loc_BC3EB7: FLdPr Me
  loc_BC3EBA: VCallAd Control_ID_CodiCucoMsk
  loc_BC3EBD: FStAdFunc var_88
  loc_BC3EC0: FLdPr var_88
  loc_BC3EC3: LateIdSt
  loc_BC3EC8: FFree1Ad var_88
  loc_BC3ECB: FFree1Var var_A0 = ""
  loc_BC3ECE: FLdRfVar var_A4
  loc_BC3ED1: FLdPr Me
  loc_BC3ED4: MemLdRfVar from_stack_1.global_120
  loc_BC3ED7: NewIfNullPr tblcuentacontable
  loc_BC3EDA: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_BC3EDF: ILdRf var_A4
  loc_BC3EE2: FLdPr Me
  loc_BC3EE5: VCallAd Control_ID_DetaCucoLbl
  loc_BC3EE8: FStAdFunc var_88
  loc_BC3EEB: FLdPr var_88
  loc_BC3EEE: Me.Caption = from_stack_1
  loc_BC3EF3: FFree1Str var_A4
  loc_BC3EF6: FFree1Ad var_88
  loc_BC3EF9: Call Proc_144_70_9E2298()
  loc_BC3EFE: FLdPr Me
  loc_BC3F01: VCallAd Control_ID_CodiCucoMsk
  loc_BC3F04: FStAdFunc var_24C
  loc_BC3F07: FLdPr Me
  loc_BC3F0A: VCallAd Control_ID_DetaCucoLbl
  loc_BC3F0D: FStAdFunc var_248
  loc_BC3F10: FLdRfVar var_248
  loc_BC3F13: FLdZeroAd var_24C
  loc_BC3F16: FStAdFuncNoPop
  loc_BC3F19: CastAd
  loc_BC3F1C: FStAdFunc var_90
  loc_BC3F1F: FLdRfVar var_90
  loc_BC3F22: FLdPr Me
  loc_BC3F25: MemLdRfVar from_stack_1.global_64
  loc_BC3F28: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BC3F2D: IStI2 arg_C
  loc_BC3F30: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC3F3B: Branch loc_BC3FB6
  loc_BC3F3E: LitVarStr var_D0, vbNullString
  loc_BC3F43: PopAdLdVar
  loc_BC3F44: FLdPr Me
  loc_BC3F47: VCallAd Control_ID_CodiCucoMsk
  loc_BC3F4A: FStAdFunc var_88
  loc_BC3F4D: FLdPr var_88
  loc_BC3F50: LateIdSt
  loc_BC3F55: FFree1Ad var_88
  loc_BC3F58: LitStr vbNullString
  loc_BC3F5B: FLdPr Me
  loc_BC3F5E: VCallAd Control_ID_DetaCucoLbl
  loc_BC3F61: FStAdFunc var_88
  loc_BC3F64: FLdPr var_88
  loc_BC3F67: Me.Caption = from_stack_1
  loc_BC3F6C: FFree1Ad var_88
  loc_BC3F6F: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_BC3F72: FLdPr Me
  loc_BC3F75: MemStStrCopy
  loc_BC3F79: FLdPr Me
  loc_BC3F7C: VCallAd Control_ID_CodiCucoMsk
  loc_BC3F7F: FStAdFunc var_24C
  loc_BC3F82: FLdPr Me
  loc_BC3F85: VCallAd Control_ID_DetaCucoLbl
  loc_BC3F88: FStAdFunc var_248
  loc_BC3F8B: FLdRfVar var_248
  loc_BC3F8E: FLdZeroAd var_24C
  loc_BC3F91: FStAdFuncNoPop
  loc_BC3F94: CastAd
  loc_BC3F97: FStAdFunc var_90
  loc_BC3F9A: FLdRfVar var_90
  loc_BC3F9D: FLdPr Me
  loc_BC3FA0: MemLdRfVar from_stack_1.global_64
  loc_BC3FA3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BC3FA8: IStI2 arg_C
  loc_BC3FAB: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC3FB6: Branch loc_BC4031
  loc_BC3FB9: FLdRfVar var_C0
  loc_BC3FBC: ImpAdLdPr unk_4FA2B9
  loc_BC3FBF: MemLdPr global_0
  loc_BC3FC2:  = Me.RecordCount
  loc_BC3FC7: ILdRf var_C0
  loc_BC3FCA: LitI4 1
  loc_BC3FCF: LtI4
  loc_BC3FD0: BranchF loc_BC4031
  loc_BC3FD3: LitStr vbNullString
  loc_BC3FD6: FLdPr Me
  loc_BC3FD9: VCallAd Control_ID_DetaCucoLbl
  loc_BC3FDC: FStAdFunc var_88
  loc_BC3FDF: FLdPr var_88
  loc_BC3FE2: Me.Caption = from_stack_1
  loc_BC3FE7: FFree1Ad var_88
  loc_BC3FEA: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_BC3FED: FLdPr Me
  loc_BC3FF0: MemStStrCopy
  loc_BC3FF4: FLdPr Me
  loc_BC3FF7: VCallAd Control_ID_CodiCucoMsk
  loc_BC3FFA: FStAdFunc var_24C
  loc_BC3FFD: FLdPr Me
  loc_BC4000: VCallAd Control_ID_DetaCucoLbl
  loc_BC4003: FStAdFunc var_248
  loc_BC4006: FLdRfVar var_248
  loc_BC4009: FLdZeroAd var_24C
  loc_BC400C: FStAdFuncNoPop
  loc_BC400F: CastAd
  loc_BC4012: FStAdFunc var_90
  loc_BC4015: FLdRfVar var_90
  loc_BC4018: FLdPr Me
  loc_BC401B: MemLdRfVar from_stack_1.global_64
  loc_BC401E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BC4023: IStI2 arg_C
  loc_BC4026: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC4031: Branch loc_BC439B
  loc_BC4034: LitStr vbNullString
  loc_BC4037: ImpAdLdRf MemVar_C3D6C0
  loc_BC403A: NewIfNullPr bscCuentaContable
  loc_BC403D: Call bscCuentaContable.BuscoxCodiCucoPut(from_stack_1v)
  loc_BC4042: LitStr vbNullString
  loc_BC4045: ImpAdLdRf MemVar_C3D6C0
  loc_BC4048: NewIfNullPr bscCuentaContable
  loc_BC404B: Call bscCuentaContable.BuscoxDetaCucoPut(from_stack_1v)
  loc_BC4050: LitVar_Missing var_E4
  loc_BC4053: PopAdLdVar
  loc_BC4054: LitVarI4
  loc_BC405C: PopAdLdVar
  loc_BC405D: ImpAdLdRf MemVar_C3D6C0
  loc_BC4060: NewIfNullPr bscCuentaContable
  loc_BC4063: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_BC4068: FLdRfVar var_C0
  loc_BC406B: FLdRfVar var_88
  loc_BC406E: ImpAdLdRf MemVar_C3D6C0
  loc_BC4071: NewIfNullPr bscCuentaContable
  loc_BC4074: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BC4079: FLdPr var_88
  loc_BC407C: from_stack_1 = clsbase.RecordCount
  loc_BC4081: ILdRf var_C0
  loc_BC4084: LitI4 0
  loc_BC4089: GtI4
  loc_BC408A: FFree1Ad var_88
  loc_BC408D: BranchF loc_BC4323
  loc_BC4090: FLdRfVar var_A0
  loc_BC4093: FLdRfVar var_24C
  loc_BC4096: LitVarStr var_D0, "CodiCuco"
  loc_BC409B: PopAdLdVar
  loc_BC409C: FLdRfVar var_248
  loc_BC409F: FLdRfVar var_90
  loc_BC40A2: FLdRfVar var_88
  loc_BC40A5: ImpAdLdRf MemVar_C3D6C0
  loc_BC40A8: NewIfNullPr bscCuentaContable
  loc_BC40AB: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BC40B0: FLdPr var_88
  loc_BC40B3: from_stack_1v = clsbase.RsFrmGet()
  loc_BC40B8: FLdPr var_90
  loc_BC40BB:  = Me.Fields
  loc_BC40C0: FLdPr var_248
  loc_BC40C3: from_stack_2 = Me.Item(from_stack_1)
  loc_BC40C8: FLdPr var_24C
  loc_BC40CB:  = Me.Value
  loc_BC40D0: LitI4 0
  loc_BC40D5: LitI4 &H16
  loc_BC40DA: FLdRfVar var_D4
  loc_BC40DD: Redim
  loc_BC40E7: LitVarStr var_E4, "1120"
  loc_BC40EC: LitI4 0
  loc_BC40F1: ILdRf var_D4
  loc_BC40F4: Ary1StVarCopy
  loc_BC40F6: LitVarStr var_F4, "1140"
  loc_BC40FB: LitI4 1
  loc_BC4100: ILdRf var_D4
  loc_BC4103: Ary1StVarCopy
  loc_BC4105: LitVarStr var_104, "1150"
  loc_BC410A: LitI4 2
  loc_BC410F: ILdRf var_D4
  loc_BC4112: Ary1StVarCopy
  loc_BC4114: LitVarStr var_114, "1151"
  loc_BC4119: LitI4 3
  loc_BC411E: ILdRf var_D4
  loc_BC4121: Ary1StVarCopy
  loc_BC4123: LitVarStr var_124, "1154"
  loc_BC4128: LitI4 4
  loc_BC412D: ILdRf var_D4
  loc_BC4130: Ary1StVarCopy
  loc_BC4132: LitVarStr var_134, "1155"
  loc_BC4137: LitI4 5
  loc_BC413C: ILdRf var_D4
  loc_BC413F: Ary1StVarCopy
  loc_BC4141: LitVarStr var_144, "1160"
  loc_BC4146: LitI4 6
  loc_BC414B: ILdRf var_D4
  loc_BC414E: Ary1StVarCopy
  loc_BC4150: LitVarStr var_154, "1170"
  loc_BC4155: LitI4 7
  loc_BC415A: ILdRf var_D4
  loc_BC415D: Ary1StVarCopy
  loc_BC415F: LitVarStr var_164, "1210"
  loc_BC4164: LitI4 8
  loc_BC4169: ILdRf var_D4
  loc_BC416C: Ary1StVarCopy
  loc_BC416E: LitVarStr var_174, "1230"
  loc_BC4173: LitI4 9
  loc_BC4178: ILdRf var_D4
  loc_BC417B: Ary1StVarCopy
  loc_BC417D: LitVarStr var_184, "2111"
  loc_BC4182: LitI4 &HA
  loc_BC4187: ILdRf var_D4
  loc_BC418A: Ary1StVarCopy
  loc_BC418C: LitVarStr var_194, "2112"
  loc_BC4191: LitI4 &HB
  loc_BC4196: ILdRf var_D4
  loc_BC4199: Ary1StVarCopy
  loc_BC419B: LitVarStr var_1A4, "2113"
  loc_BC41A0: LitI4 &HC
  loc_BC41A5: ILdRf var_D4
  loc_BC41A8: Ary1StVarCopy
  loc_BC41AA: LitVarStr var_1B4, "2114"
  loc_BC41AF: LitI4 &HD
  loc_BC41B4: ILdRf var_D4
  loc_BC41B7: Ary1StVarCopy
  loc_BC41B9: LitVarStr var_1C4, "2115"
  loc_BC41BE: LitI4 &HE
  loc_BC41C3: ILdRf var_D4
  loc_BC41C6: Ary1StVarCopy
  loc_BC41C8: LitVarStr var_1D4, "2116"
  loc_BC41CD: LitI4 &HF
  loc_BC41D2: ILdRf var_D4
  loc_BC41D5: Ary1StVarCopy
  loc_BC41D7: LitVarStr var_1E4, "2117"
  loc_BC41DC: LitI4 &H10
  loc_BC41E1: ILdRf var_D4
  loc_BC41E4: Ary1StVarCopy
  loc_BC41E6: LitVarStr var_1F4, "2121"
  loc_BC41EB: LitI4 &H11
  loc_BC41F0: ILdRf var_D4
  loc_BC41F3: Ary1StVarCopy
  loc_BC41F5: LitVarStr var_204, "2122"
  loc_BC41FA: LitI4 &H12
  loc_BC41FF: ILdRf var_D4
  loc_BC4202: Ary1StVarCopy
  loc_BC4204: LitVarStr var_214, "2123"
  loc_BC4209: LitI4 &H13
  loc_BC420E: ILdRf var_D4
  loc_BC4211: Ary1StVarCopy
  loc_BC4213: LitVarStr var_224, "2124"
  loc_BC4218: LitI4 &H14
  loc_BC421D: ILdRf var_D4
  loc_BC4220: Ary1StVarCopy
  loc_BC4222: LitVarStr var_234, "2210"
  loc_BC4227: LitI4 &H15
  loc_BC422C: ILdRf var_D4
  loc_BC422F: Ary1StVarCopy
  loc_BC4231: LitVarStr var_244, "2220"
  loc_BC4236: LitI4 &H16
  loc_BC423B: ILdRf var_D4
  loc_BC423E: Ary1StVarCopy
  loc_BC4240: FLdRfVar var_D4
  loc_BC4243: FLdPr Me
  loc_BC4246: MemLdRfVar from_stack_1.global_120
  loc_BC4249: NewIfNullRf
  loc_BC424D: ImpAdLdI2 MemVar_C3D064
  loc_BC4250: LitI2_Byte 0
  loc_BC4252: FLdRfVar var_A0
  loc_BC4255: CStrVarTmp
  loc_BC4256: FStStrNoPop var_A4
  loc_BC4259: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_BC425E: FStStr var_A8
  loc_BC4261: FLdRfVar var_D4
  loc_BC4264: Erase
  loc_BC4265: ILdRf var_A8
  loc_BC4268: FLdPr Me
  loc_BC426B: MemStStrCopy
  loc_BC426F: FFreeStr var_A4 = ""
  loc_BC4276: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC4281: FFree1Var var_A0 = ""
  loc_BC4284: FLdRfVar var_A4
  loc_BC4287: FLdPr Me
  loc_BC428A: MemLdRfVar from_stack_1.global_120
  loc_BC428D: NewIfNullPr tblcuentacontable
  loc_BC4290: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_BC4295: FLdZeroAd var_A4
  loc_BC4298: CVarStr var_A0
  loc_BC429B: PopAdLdVar
  loc_BC429C: FLdPr Me
  loc_BC429F: VCallAd Control_ID_CodiCucoMsk
  loc_BC42A2: FStAdFunc var_88
  loc_BC42A5: FLdPr var_88
  loc_BC42A8: LateIdSt
  loc_BC42AD: FFree1Ad var_88
  loc_BC42B0: FFree1Var var_A0 = ""
  loc_BC42B3: FLdRfVar var_A4
  loc_BC42B6: FLdPr Me
  loc_BC42B9: MemLdRfVar from_stack_1.global_120
  loc_BC42BC: NewIfNullPr tblcuentacontable
  loc_BC42BF: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_BC42C4: ILdRf var_A4
  loc_BC42C7: FLdPr Me
  loc_BC42CA: VCallAd Control_ID_DetaCucoLbl
  loc_BC42CD: FStAdFunc var_88
  loc_BC42D0: FLdPr var_88
  loc_BC42D3: Me.Caption = from_stack_1
  loc_BC42D8: FFree1Str var_A4
  loc_BC42DB: FFree1Ad var_88
  loc_BC42DE: Call Proc_144_70_9E2298()
  loc_BC42E3: FLdPr Me
  loc_BC42E6: VCallAd Control_ID_CodiCucoMsk
  loc_BC42E9: FStAdFunc var_24C
  loc_BC42EC: FLdPr Me
  loc_BC42EF: VCallAd Control_ID_DetaCucoLbl
  loc_BC42F2: FStAdFunc var_248
  loc_BC42F5: FLdRfVar var_248
  loc_BC42F8: FLdZeroAd var_24C
  loc_BC42FB: FStAdFuncNoPop
  loc_BC42FE: CastAd
  loc_BC4301: FStAdFunc var_90
  loc_BC4304: FLdRfVar var_90
  loc_BC4307: FLdPr Me
  loc_BC430A: MemLdRfVar from_stack_1.global_64
  loc_BC430D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BC4312: IStI2 arg_C
  loc_BC4315: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC4320: Branch loc_BC439B
  loc_BC4323: LitVarStr var_D0, vbNullString
  loc_BC4328: PopAdLdVar
  loc_BC4329: FLdPr Me
  loc_BC432C: VCallAd Control_ID_CodiCucoMsk
  loc_BC432F: FStAdFunc var_88
  loc_BC4332: FLdPr var_88
  loc_BC4335: LateIdSt
  loc_BC433A: FFree1Ad var_88
  loc_BC433D: LitStr vbNullString
  loc_BC4340: FLdPr Me
  loc_BC4343: VCallAd Control_ID_DetaCucoLbl
  loc_BC4346: FStAdFunc var_88
  loc_BC4349: FLdPr var_88
  loc_BC434C: Me.Caption = from_stack_1
  loc_BC4351: FFree1Ad var_88
  loc_BC4354: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_BC4357: FLdPr Me
  loc_BC435A: MemStStrCopy
  loc_BC435E: FLdPr Me
  loc_BC4361: VCallAd Control_ID_CodiCucoMsk
  loc_BC4364: FStAdFunc var_24C
  loc_BC4367: FLdPr Me
  loc_BC436A: VCallAd Control_ID_DetaCucoLbl
  loc_BC436D: FStAdFunc var_248
  loc_BC4370: FLdRfVar var_248
  loc_BC4373: FLdZeroAd var_24C
  loc_BC4376: FStAdFuncNoPop
  loc_BC4379: CastAd
  loc_BC437C: FStAdFunc var_90
  loc_BC437F: FLdRfVar var_90
  loc_BC4382: FLdPr Me
  loc_BC4385: MemLdRfVar from_stack_1.global_64
  loc_BC4388: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BC438D: IStI2 arg_C
  loc_BC4390: FFreeAd var_88 = "": var_90 = "": var_248 = ""
  loc_BC439B: ILdI2 arg_C
  loc_BC439E: NotI4
  loc_BC439F: BranchF loc_BC43A5
  loc_BC43A2: Branch loc_BC43D9
  loc_BC43A5: LitVarStr var_D0, vbNullString
  loc_BC43AA: PopAdLdVar
  loc_BC43AB: FLdPr Me
  loc_BC43AE: VCallAd Control_ID_CodiCucoMsk
  loc_BC43B1: FStAdFunc var_88
  loc_BC43B4: FLdPr var_88
  loc_BC43B7: LateIdSt
  loc_BC43BC: FFree1Ad var_88
  loc_BC43BF: LitVarStr var_D0, vbNullString
  loc_BC43C4: PopAdLdVar
  loc_BC43C5: FLdPr Me
  loc_BC43C8: VCallAd Control_ID_CodiCucoMsk
  loc_BC43CB: FStAdFunc var_88
  loc_BC43CE: FLdPr var_88
  loc_BC43D1: LateIdSt
  loc_BC43D6: FFree1Ad var_88
  loc_BC43D9: ExitProcHresult
  loc_BC43DA: SetLastSystemError
End Function

Private Sub CodiCucoMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A02274
  'Data Table: 4FA290
  loc_A02124: ILdI2 Shift
  loc_A02127: CI4UI1
  loc_A02128: LitI4 2
  loc_A0212D: EqI4
  loc_A0212E: ILdI2 KeyCode
  loc_A02131: CI4UI1
  loc_A02132: LitI4 &H42
  loc_A02137: EqI4
  loc_A02138: AndI4
  loc_A02139: BranchF loc_A02270
  loc_A0213C: LitStr vbNullString
  loc_A0213F: ImpAdLdRf MemVar_C3D6C0
  loc_A02142: NewIfNullPr bscCuentaContable
  loc_A02145: Call bscCuentaContable.BuscoxCodiCucoPut(from_stack_1v)
  loc_A0214A: LitStr vbNullString
  loc_A0214D: ImpAdLdRf MemVar_C3D6C0
  loc_A02150: NewIfNullPr bscCuentaContable
  loc_A02153: Call bscCuentaContable.BuscoxDetaCucoPut(from_stack_1v)
  loc_A02158: LitVar_Missing var_A4
  loc_A0215B: PopAdLdVar
  loc_A0215C: LitVarI4
  loc_A02164: PopAdLdVar
  loc_A02165: ImpAdLdRf MemVar_C3D6C0
  loc_A02168: NewIfNullPr bscCuentaContable
  loc_A0216B: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_A02170: FLdRfVar var_AC
  loc_A02173: FLdRfVar var_A8
  loc_A02176: ImpAdLdRf MemVar_C3D6C0
  loc_A02179: NewIfNullPr bscCuentaContable
  loc_A0217C: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A02181: FLdPr var_A8
  loc_A02184: from_stack_1 = clsbase.RecordCount
  loc_A02189: ILdRf var_AC
  loc_A0218C: LitI4 0
  loc_A02191: GtI4
  loc_A02192: FFree1Ad var_A8
  loc_A02195: BranchF loc_A02270
  loc_A02198: FLdRfVar var_C8
  loc_A0219B: FLdRfVar var_B8
  loc_A0219E: LitVarStr var_94, "CodiCuco"
  loc_A021A3: PopAdLdVar
  loc_A021A4: FLdRfVar var_B4
  loc_A021A7: FLdRfVar var_B0
  loc_A021AA: FLdRfVar var_A8
  loc_A021AD: ImpAdLdRf MemVar_C3D6C0
  loc_A021B0: NewIfNullPr bscCuentaContable
  loc_A021B3: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A021B8: FLdPr var_A8
  loc_A021BB: from_stack_1v = clsbase.RsFrmGet()
  loc_A021C0: FLdPr var_B0
  loc_A021C3:  = Me.Fields
  loc_A021C8: FLdPr var_B4
  loc_A021CB: from_stack_2 = Me.Item(from_stack_1)
  loc_A021D0: FLdPr var_B8
  loc_A021D3:  = Me.Value
  loc_A021D8: FLdRfVar var_C8
  loc_A021DB: CStrVarTmp
  loc_A021DC: CVarStr var_D8
  loc_A021DF: PopAdLdVar
  loc_A021E0: FLdPr Me
  loc_A021E3: VCallAd Control_ID_CodiCucoMsk
  loc_A021E6: FStAdFunc var_DC
  loc_A021E9: FLdPr var_DC
  loc_A021EC: LateIdSt
  loc_A021F1: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A021FE: FFreeVar var_C8 = ""
  loc_A02205: FLdRfVar var_C8
  loc_A02208: FLdRfVar var_B8
  loc_A0220B: LitVarStr var_94, "DetaCuco"
  loc_A02210: PopAdLdVar
  loc_A02211: FLdRfVar var_B4
  loc_A02214: FLdRfVar var_B0
  loc_A02217: FLdRfVar var_A8
  loc_A0221A: ImpAdLdRf MemVar_C3D6C0
  loc_A0221D: NewIfNullPr bscCuentaContable
  loc_A02220: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A02225: FLdPr var_A8
  loc_A02228: from_stack_1v = clsbase.RsFrmGet()
  loc_A0222D: FLdPr var_B0
  loc_A02230:  = Me.Fields
  loc_A02235: FLdPr var_B4
  loc_A02238: from_stack_2 = Me.Item(from_stack_1)
  loc_A0223D: FLdPr var_B8
  loc_A02240:  = Me.Value
  loc_A02245: FLdRfVar var_C8
  loc_A02248: CStrVarTmp
  loc_A02249: FStStrNoPop var_E0
  loc_A0224C: FLdPr Me
  loc_A0224F: VCallAd Control_ID_DetaCucoLbl
  loc_A02252: FStAdFunc var_DC
  loc_A02255: FLdPr var_DC
  loc_A02258: Me.Caption = from_stack_1
  loc_A0225D: FFree1Str var_E0
  loc_A02260: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A0226D: FFree1Var var_C8 = ""
  loc_A02270: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9A850C
  'Data Table: 4FA290
  loc_9A847C: LitVarStr var_94, vbNullString
  loc_9A8481: PopAdLdVar
  loc_9A8482: FLdPr Me
  loc_9A8485: VCallAd Control_ID_FiltroMsk
  loc_9A8488: FStAdFunc var_A8
  loc_9A848B: FLdPr var_A8
  loc_9A848E: LateIdSt
  loc_9A8493: FFree1Ad var_A8
  loc_9A8496: FLdRfVar var_AA
  loc_9A8499: FLdPr Me
  loc_9A849C: VCallAd Control_ID_FiltroCbo
  loc_9A849F: FStAdFunc var_A8
  loc_9A84A2: FLdPr var_A8
  loc_9A84A5:  = Me.ListIndex
  loc_9A84AA: FLdI2 var_AA
  loc_9A84AD: FStI2 var_AC
  loc_9A84B0: FFree1Ad var_A8
  loc_9A84B3: FLdI2 var_AC
  loc_9A84B6: LitI2_Byte 1
  loc_9A84B8: EqI2
  loc_9A84B9: BranchF loc_9A850A
  loc_9A84BC: LitVarStr var_94, "&"
  loc_9A84C1: PopAdLdVar
  loc_9A84C2: FLdPr Me
  loc_9A84C5: VCallAd Control_ID_FiltroMsk
  loc_9A84C8: FStAdFunc var_A8
  loc_9A84CB: FLdPr var_A8
  loc_9A84CE: LateIdSt
  loc_9A84D3: FFree1Ad var_A8
  loc_9A84D6: LitVarStr var_94, vbNullString
  loc_9A84DB: PopAdLdVar
  loc_9A84DC: FLdPr Me
  loc_9A84DF: VCallAd Control_ID_FiltroMsk
  loc_9A84E2: FStAdFunc var_A8
  loc_9A84E5: FLdPr var_A8
  loc_9A84E8: LateIdSt
  loc_9A84ED: FFree1Ad var_A8
  loc_9A84F0: LitStr "ExorImpu"
  loc_9A84F3: FStStrCopy var_B0
  loc_9A84F6: FLdRfVar var_B0
  loc_9A84F9: FLdPr Me
  loc_9A84FC: MemLdRfVar from_stack_1.global_52
  loc_9A84FF: NewIfNullPr clsimputacion
  loc_9A8502: Call clsimputacion.Sort(from_stack_1v)
  loc_9A8507: FFree1Str var_B0
  loc_9A850A: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_0 '94B870
  'Data Table: 4FA290
  loc_94B85C: FLdPr Me
  loc_94B85F: VCallAd Control_ID_FechImpuMsk
  loc_94B862: CVarAd
  loc_94B866: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B86B: FFree1Var var_94 = ""
  loc_94B86E: ExitProcHresult
End Sub

Private Function FechImpuMsk_UnknownEvent_8(arg_C) 'A81784
  'Data Table: 4FA290
  loc_A813E8: FLdRfVar var_92
  loc_A813EB: FLdPr Me
  loc_A813EE: VCallAd Control_ID_cmdCancelar
  loc_A813F1: FStAdFunc var_90
  loc_A813F4: FLdPr var_90
  loc_A813F7:  = Me.Value
  loc_A813FC: FLdI2 var_92
  loc_A813FF: NotI4
  loc_A81400: FLdPr Me
  loc_A81403: VCallAd Control_ID_FechImpuMsk
  loc_A81406: FStAdFunc var_98
  loc_A81409: FLdPr var_98
  loc_A8140C: LateIdLdVar var_A8 DispID_13 -32767
  loc_A81413: CBoolVar
  loc_A81415: AndI4
  loc_A81416: FFreeAd var_90 = ""
  loc_A8141D: FFree1Var var_A8 = ""
  loc_A81420: BranchF loc_A81782
  loc_A81423: FLdPr Me
  loc_A81426: MemLdUI1 global_60
  loc_A8142A: LitI2_Byte 1
  loc_A8142C: EqI2
  loc_A8142D: CVarBoolI2 var_100
  loc_A81431: FLdRfVar var_D0
  loc_A81434: FLdRfVar var_BC
  loc_A81437: LitVarStr var_B8, "CodiPart"
  loc_A8143C: PopAdLdVar
  loc_A8143D: FLdRfVar var_98
  loc_A81440: FLdRfVar var_90
  loc_A81443: FLdPr Me
  loc_A81446: MemLdRfVar from_stack_1.global_52
  loc_A81449: NewIfNullPr clsimputacion
  loc_A8144C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A81451: FLdPr var_90
  loc_A81454:  = Me.Fields
  loc_A81459: FLdPr var_98
  loc_A8145C: from_stack_2 = Me.Item(from_stack_1)
  loc_A81461: FLdPr var_BC
  loc_A81464:  = Me.Value
  loc_A81469: FLdRfVar var_D0
  loc_A8146C: FLdPr Me
  loc_A8146F: VCallAd Control_ID_CodiPartMsk
  loc_A81472: FStAdFunc var_C0
  loc_A81475: FLdPr var_C0
  loc_A81478: LateIdLdVar var_A8 DispID_22 0
  loc_A8147F: CStrVarTmp
  loc_A81480: CVarStr var_E0
  loc_A81483: HardType
  loc_A81484: NeVar var_F0
  loc_A81488: AndVar var_110
  loc_A8148C: CBoolVarNull
  loc_A8148E: FFreeAd var_90 = "": var_98 = "": var_C0 = ""
  loc_A81499: FFreeVar var_A8 = "": var_D0 = "": var_E0 = ""
  loc_A814A4: BranchF loc_A816C4
  loc_A814A7: FLdRfVar var_E0
  loc_A814AA: FLdRfVar var_BC
  loc_A814AD: LitVarStr var_B8, "ExorImpu"
  loc_A814B2: PopAdLdVar
  loc_A814B3: FLdRfVar var_98
  loc_A814B6: FLdRfVar var_90
  loc_A814B9: FLdPr Me
  loc_A814BC: MemLdRfVar from_stack_1.global_52
  loc_A814BF: NewIfNullPr clsimputacion
  loc_A814C2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A814C7: FLdPr var_90
  loc_A814CA:  = Me.Fields
  loc_A814CF: FLdPr var_98
  loc_A814D2: from_stack_2 = Me.Item(from_stack_1)
  loc_A814D7: FLdPr var_BC
  loc_A814DA:  = Me.Value
  loc_A814DF: FLdRfVar var_F0
  loc_A814E2: FLdRfVar var_118
  loc_A814E5: LitVarStr var_100, "CodiNope"
  loc_A814EA: PopAdLdVar
  loc_A814EB: FLdRfVar var_114
  loc_A814EE: FLdRfVar var_C0
  loc_A814F1: FLdPr Me
  loc_A814F4: MemLdRfVar from_stack_1.global_52
  loc_A814F7: NewIfNullPr clsimputacion
  loc_A814FA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A814FF: FLdPr var_C0
  loc_A81502:  = Me.Fields
  loc_A81507: FLdPr var_114
  loc_A8150A: from_stack_2 = Me.Item(from_stack_1)
  loc_A8150F: FLdPr var_118
  loc_A81512:  = Me.Value
  loc_A81517: FLdRfVar var_110
  loc_A8151A: FLdRfVar var_134
  loc_A8151D: LitVarStr var_130, "Item"
  loc_A81522: PopAdLdVar
  loc_A81523: FLdRfVar var_120
  loc_A81526: FLdRfVar var_11C
  loc_A81529: FLdPr Me
  loc_A8152C: MemLdRfVar from_stack_1.global_52
  loc_A8152F: NewIfNullPr clsimputacion
  loc_A81532: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A81537: FLdPr var_11C
  loc_A8153A:  = Me.Fields
  loc_A8153F: FLdPr var_120
  loc_A81542: from_stack_2 = Me.Item(from_stack_1)
  loc_A81547: FLdPr var_134
  loc_A8154A:  = Me.Value
  loc_A8154F: FLdRfVar var_1A4
  loc_A81552: FLdRfVar var_150
  loc_A81555: LitVarStr var_14C, "Altern"
  loc_A8155A: PopAdLdVar
  loc_A8155B: FLdRfVar var_13C
  loc_A8155E: FLdRfVar var_138
  loc_A81561: FLdPr Me
  loc_A81564: MemLdRfVar from_stack_1.global_52
  loc_A81567: NewIfNullPr clsimputacion
  loc_A8156A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8156F: FLdPr var_138
  loc_A81572:  = Me.Fields
  loc_A81577: FLdPr var_13C
  loc_A8157A: from_stack_2 = Me.Item(from_stack_1)
  loc_A8157F: FLdPr var_150
  loc_A81582:  = Me.Value
  loc_A81587: FLdRfVar var_1B4
  loc_A8158A: FLdRfVar var_16C
  loc_A8158D: LitVarStr var_168, "CodiOrco"
  loc_A81592: PopAdLdVar
  loc_A81593: FLdRfVar var_158
  loc_A81596: FLdRfVar var_154
  loc_A81599: FLdPr Me
  loc_A8159C: MemLdRfVar from_stack_1.global_52
  loc_A8159F: NewIfNullPr clsimputacion
  loc_A815A2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A815A7: FLdPr var_154
  loc_A815AA:  = Me.Fields
  loc_A815AF: FLdPr var_158
  loc_A815B2: from_stack_2 = Me.Item(from_stack_1)
  loc_A815B7: FLdPr var_16C
  loc_A815BA:  = Me.Value
  loc_A815BF: FLdRfVar var_1C4
  loc_A815C2: FLdRfVar var_188
  loc_A815C5: LitVarStr var_184, "CodiRece"
  loc_A815CA: PopAdLdVar
  loc_A815CB: FLdRfVar var_174
  loc_A815CE: FLdRfVar var_170
  loc_A815D1: FLdPr Me
  loc_A815D4: MemLdRfVar from_stack_1.global_52
  loc_A815D7: NewIfNullPr clsimputacion
  loc_A815DA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A815DF: FLdPr var_170
  loc_A815E2:  = Me.Fields
  loc_A815E7: FLdPr var_174
  loc_A815EA: from_stack_2 = Me.Item(from_stack_1)
  loc_A815EF: FLdPr var_188
  loc_A815F2:  = Me.Value
  loc_A815F7: FLdPr Me
  loc_A815FA: VCallAd Control_ID_CodiPartMsk
  loc_A815FD: FStAdFunc var_18C
  loc_A81600: FLdPr var_18C
  loc_A81603: LateIdLdVar var_A8 DispID_22 0
  loc_A8160A: PopAd
  loc_A8160C: FLdPr Me
  loc_A8160F: VCallAd Control_ID_CodiOrgaMsk
  loc_A81612: FStAdFunc var_190
  loc_A81615: FLdPr var_190
  loc_A81618: LateIdLdVar var_D0 DispID_22 0
  loc_A8161F: PopAd
  loc_A81621: FLdRfVar var_1D0
  loc_A81624: FLdRfVar var_D0
  loc_A81627: CStrVarTmp
  loc_A81628: FStStrNoPop var_1CC
  loc_A8162B: FLdRfVar var_A8
  loc_A8162E: CStrVarTmp
  loc_A8162F: FStStrNoPop var_1C8
  loc_A81632: FLdRfVar var_1C4
  loc_A81635: CI2Var
  loc_A81636: FLdRfVar var_1B4
  loc_A81639: CI2Var
  loc_A8163A: FLdRfVar var_1A4
  loc_A8163D: CI2Var
  loc_A8163E: FLdRfVar var_110
  loc_A81641: CI2Var
  loc_A81642: FLdRfVar var_F0
  loc_A81645: CI4Var
  loc_A81647: FLdRfVar var_E0
  loc_A8164A: CStrVarTmp
  loc_A8164B: FStStrNoPop var_194
  loc_A8164E: LitI2_Byte &H32
  loc_A81650: ImpAdLdI2 MemVar_C3D064
  loc_A81653: FLdPr Me
  loc_A81656: MemLdRfVar from_stack_1.global_52
  loc_A81659: NewIfNullPr clsimputacion
  loc_A8165C: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_A81661: FLdZeroAd var_1D0
  loc_A81664: CVarStr var_1E0
  loc_A81667: PopAdLdVar
  loc_A81668: FLdPr Me
  loc_A8166B: VCallAd Control_ID_FechImpuMsk
  loc_A8166E: FStAdFunc var_1F4
  loc_A81671: FLdPr var_1F4
  loc_A81674: LateIdSt
  loc_A81679: FFreeStr var_194 = "": var_1C8 = ""
  loc_A81682: FFreeAd var_90 = "": var_98 = "": var_C0 = "": var_114 = "": var_11C = "": var_120 = "": var_138 = "": var_13C = "": var_154 = "": var_158 = "": var_170 = "": var_174 = "": var_18C = "": var_190 = "": var_BC = "": var_118 = "": var_134 = "": var_150 = "": var_16C = "": var_188 = ""
  loc_A816AF: FFreeVar var_A8 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_1A4 = "": var_1B4 = "": var_1C4 = ""
  loc_A816C4: FLdPr Me
  loc_A816C7: VCallAd Control_ID_FechImpuMsk
  loc_A816CA: FStAdFunc var_90
  loc_A816CD: FLdPr var_90
  loc_A816D0: LateIdLdVar var_A8 DispID_15 0
  loc_A816D7: PopAd
  loc_A816D9: FLdPr Me
  loc_A816DC: VCallAd Control_ID_FechImpuMsk
  loc_A816DF: FStAdFunc var_98
  loc_A816E2: FLdPr var_98
  loc_A816E5: LateIdLdVar var_D0 DispID_11 -32767
  loc_A816EC: PopAd
  loc_A816EE: FLdPr Me
  loc_A816F1: VCallAd Control_ID_FechImpuMsk
  loc_A816F4: FStAdFunc var_C0
  loc_A816F7: LitI2_Byte &HFF
  loc_A816F9: PopTmpLdAd2 var_92
  loc_A816FC: FLdZeroAd var_C0
  loc_A816FF: FStAdFunc var_BC
  loc_A81702: FLdRfVar var_BC
  loc_A81705: FLdRfVar var_D0
  loc_A81708: CStrVarTmp
  loc_A81709: FStStrNoPop var_1C8
  loc_A8170C: LitI2_Byte &HFF
  loc_A8170E: LitI2_Byte &HFF
  loc_A81710: FLdRfVar var_A8
  loc_A81713: CStrVarTmp
  loc_A81714: FStStrNoPop var_194
  loc_A81717: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A8171C: FStStrNoPop var_1CC
  loc_A8171F: FLdPr Me
  loc_A81722: MemStStrCopy
  loc_A81726: FFreeStr var_194 = "": var_1C8 = ""
  loc_A8172F: FFreeAd var_90 = "": var_98 = "": var_BC = ""
  loc_A8173A: FFreeVar var_A8 = ""
  loc_A81741: FLdPr Me
  loc_A81744: VCallAd Control_ID_FechImpuMsk
  loc_A81747: FStAdFunc var_C0
  loc_A8174A: LitNothing
  loc_A8174C: CastAd
  loc_A8174F: FStAdFunc var_BC
  loc_A81752: FLdRfVar var_BC
  loc_A81755: FLdZeroAd var_C0
  loc_A81758: FStAdFuncNoPop
  loc_A8175B: CastAd
  loc_A8175E: FStAdFunc var_98
  loc_A81761: FLdRfVar var_98
  loc_A81764: FLdPr Me
  loc_A81767: MemLdRfVar from_stack_1.global_64
  loc_A8176A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A8176F: IStI2 arg_C
  loc_A81772: FFreeAd var_90 = "": var_98 = "": var_BC = ""
  loc_A8177D: Call Proc_144_68_A7F56C()
  loc_A81782: ExitProcHresult
End Function

Private Sub FechImpuMsk_KeyPress(KeyAscii As Integer) '98C518
  'Data Table: 4FA290
  loc_98C4D4: ILdI2 KeyAscii
  loc_98C4D7: CI4UI1
  loc_98C4D8: LitI4 &H20
  loc_98C4DD: EqI4
  loc_98C4DE: BranchF loc_98C514
  loc_98C4E1: LitVar_Missing var_A4
  loc_98C4E4: PopAdLdVar
  loc_98C4E5: LitVarI4
  loc_98C4ED: PopAdLdVar
  loc_98C4EE: ImpAdLdRf MemVar_C3D9A8
  loc_98C4F1: NewIfNullPr frmCalendario
  loc_98C4F4: frmCalendario.Show from_stack_1, from_stack_2
  loc_98C4F9: ImpAdLdRf MemVar_C3D038
  loc_98C4FC: CDargRef
  loc_98C500: FLdPr Me
  loc_98C503: VCallAd Control_ID_FechImpuMsk
  loc_98C506: FStAdFunc var_A8
  loc_98C509: FLdPr var_A8
  loc_98C50C: LateIdSt
  loc_98C511: FFree1Ad var_A8
  loc_98C514: ExitProcHresult
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '94C368
  'Data Table: 4FA290
  loc_94C354: FLdPr Me
  loc_94C357: VCallAd Control_ID_CucuPersMsk
  loc_94C35A: CVarAd
  loc_94C35E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C363: FFree1Var var_94 = ""
  loc_94C366: ExitProcHresult
End Sub

Private Sub CucuPersMsk_UnknownEvent_8 '9D8DB4
  'Data Table: 4FA290
  loc_9D8CC4: FLdRfVar var_8A
  loc_9D8CC7: FLdPr Me
  loc_9D8CCA: VCallAd Control_ID_cmdCancelar
  loc_9D8CCD: FStAdFunc var_88
  loc_9D8CD0: FLdPr var_88
  loc_9D8CD3:  = Me.Value
  loc_9D8CD8: FLdI2 var_8A
  loc_9D8CDB: NotI4
  loc_9D8CDC: FLdPr Me
  loc_9D8CDF: VCallAd Control_ID_CucuPersMsk
  loc_9D8CE2: FStAdFunc var_90
  loc_9D8CE5: FLdPr var_90
  loc_9D8CE8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9D8CEF: CBoolVar
  loc_9D8CF1: AndI4
  loc_9D8CF2: FFreeAd var_88 = ""
  loc_9D8CF9: FFree1Var var_A0 = ""
  loc_9D8CFC: BranchF loc_9D8DB0
  loc_9D8CFF: FLdPr Me
  loc_9D8D02: VCallAd Control_ID_CucuPersMsk
  loc_9D8D05: FStAdFunc var_88
  loc_9D8D08: FLdPr var_88
  loc_9D8D0B: LateIdLdVar var_A0 DispID_0 0
  loc_9D8D12: PopAd
  loc_9D8D14: FLdPr Me
  loc_9D8D17: MemLdRfVar from_stack_1.global_112
  loc_9D8D1A: NewIfNullRf
  loc_9D8D1E: FLdRfVar var_A0
  loc_9D8D21: CStrVarTmp
  loc_9D8D22: FStStrNoPop var_A4
  loc_9D8D25: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_9D8D2A: FStStrNoPop var_A8
  loc_9D8D2D: FLdPr Me
  loc_9D8D30: MemStStrCopy
  loc_9D8D34: FFreeStr var_A4 = ""
  loc_9D8D3B: FFree1Ad var_88
  loc_9D8D3E: FFree1Var var_A0 = ""
  loc_9D8D41: FLdPr Me
  loc_9D8D44: VCallAd Control_ID_CucuPersMsk
  loc_9D8D47: FStAdFunc var_B0
  loc_9D8D4A: FLdPr Me
  loc_9D8D4D: VCallAd Control_ID_DetaProvLbl
  loc_9D8D50: FStAdFunc var_AC
  loc_9D8D53: FLdRfVar var_AC
  loc_9D8D56: FLdZeroAd var_B0
  loc_9D8D59: FStAdFuncNoPop
  loc_9D8D5C: CastAd
  loc_9D8D5F: FStAdFunc var_90
  loc_9D8D62: FLdRfVar var_90
  loc_9D8D65: FLdPr Me
  loc_9D8D68: MemLdRfVar from_stack_1.global_64
  loc_9D8D6B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D8D70: IStI2 KeyAscii
  loc_9D8D73: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9D8D7E: ILdI2 KeyAscii
  loc_9D8D81: NotI4
  loc_9D8D82: BranchF loc_9D8DB0
  loc_9D8D85: FLdRfVar var_A4
  loc_9D8D88: FLdPr Me
  loc_9D8D8B: MemLdRfVar from_stack_1.global_112
  loc_9D8D8E: NewIfNullPr tblproveedor
  loc_9D8D91: from_stack_1v = tblproveedor.DetaProvGet()
  loc_9D8D96: ILdRf var_A4
  loc_9D8D99: FLdPr Me
  loc_9D8D9C: VCallAd Control_ID_DetaProvLbl
  loc_9D8D9F: FStAdFunc var_88
  loc_9D8DA2: FLdPr var_88
  loc_9D8DA5: Me.Caption = from_stack_1
  loc_9D8DAA: FFree1Str var_A4
  loc_9D8DAD: FFree1Ad var_88
  loc_9D8DB0: ExitProcHresult
End Sub

Private Sub CucuPersMsk_KeyPress(KeyAscii As Integer) 'A01584
  'Data Table: 4FA290
  loc_A01438: ILdI2 KeyAscii
  loc_A0143B: CI4UI1
  loc_A0143C: LitI4 &H20
  loc_A01441: EqI4
  loc_A01442: BranchF loc_A01580
  loc_A01445: LitI2_Byte 0
  loc_A01447: ImpAdLdRf MemVar_C3D74C
  loc_A0144A: NewIfNullPr bscProveedor
  loc_A0144D: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A01452: LitNothing
  loc_A01454: CastAd
  loc_A01457: FStAdFuncNoPop
  loc_A0145A: ImpAdLdRf MemVar_C3D74C
  loc_A0145D: NewIfNullPr bscProveedor
  loc_A01460: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_A01465: FFree1Ad var_88
  loc_A01468: LitVar_Missing var_A8
  loc_A0146B: PopAdLdVar
  loc_A0146C: LitVarI4
  loc_A01474: PopAdLdVar
  loc_A01475: ImpAdLdRf MemVar_C3D74C
  loc_A01478: NewIfNullPr bscProveedor
  loc_A0147B: bscProveedor.Show from_stack_1, from_stack_2
  loc_A01480: FLdRfVar var_AC
  loc_A01483: FLdRfVar var_88
  loc_A01486: ImpAdLdRf MemVar_C3D74C
  loc_A01489: NewIfNullPr bscProveedor
  loc_A0148C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A01491: FLdPr var_88
  loc_A01494: from_stack_1 = clsbase.RecordCount
  loc_A01499: ILdRf var_AC
  loc_A0149C: LitI4 0
  loc_A014A1: GtI4
  loc_A014A2: FFree1Ad var_88
  loc_A014A5: BranchF loc_A01580
  loc_A014A8: FLdRfVar var_C8
  loc_A014AB: FLdRfVar var_B8
  loc_A014AE: LitVarStr var_98, "CucuPers"
  loc_A014B3: PopAdLdVar
  loc_A014B4: FLdRfVar var_B4
  loc_A014B7: FLdRfVar var_B0
  loc_A014BA: FLdRfVar var_88
  loc_A014BD: ImpAdLdRf MemVar_C3D74C
  loc_A014C0: NewIfNullPr bscProveedor
  loc_A014C3: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A014C8: FLdPr var_88
  loc_A014CB: from_stack_1v = clsbase.RsFrmGet()
  loc_A014D0: FLdPr var_B0
  loc_A014D3:  = Me.Fields
  loc_A014D8: FLdPr var_B4
  loc_A014DB: from_stack_2 = Me.Item(from_stack_1)
  loc_A014E0: FLdPr var_B8
  loc_A014E3:  = Me.Value
  loc_A014E8: FLdRfVar var_C8
  loc_A014EB: CStrVarTmp
  loc_A014EC: CVarStr var_D8
  loc_A014EF: PopAdLdVar
  loc_A014F0: FLdPr Me
  loc_A014F3: VCallAd Control_ID_CucuPersMsk
  loc_A014F6: FStAdFunc var_DC
  loc_A014F9: FLdPr var_DC
  loc_A014FC: LateIdSt
  loc_A01501: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A0150E: FFreeVar var_C8 = ""
  loc_A01515: FLdRfVar var_C8
  loc_A01518: FLdRfVar var_B8
  loc_A0151B: LitVarStr var_98, "DetaProv"
  loc_A01520: PopAdLdVar
  loc_A01521: FLdRfVar var_B4
  loc_A01524: FLdRfVar var_B0
  loc_A01527: FLdRfVar var_88
  loc_A0152A: ImpAdLdRf MemVar_C3D74C
  loc_A0152D: NewIfNullPr bscProveedor
  loc_A01530: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A01535: FLdPr var_88
  loc_A01538: from_stack_1v = clsbase.RsFrmGet()
  loc_A0153D: FLdPr var_B0
  loc_A01540:  = Me.Fields
  loc_A01545: FLdPr var_B4
  loc_A01548: from_stack_2 = Me.Item(from_stack_1)
  loc_A0154D: FLdPr var_B8
  loc_A01550:  = Me.Value
  loc_A01555: FLdRfVar var_C8
  loc_A01558: CStrVarTmp
  loc_A01559: FStStrNoPop var_E0
  loc_A0155C: FLdPr Me
  loc_A0155F: VCallAd Control_ID_DetaProvLbl
  loc_A01562: FStAdFunc var_DC
  loc_A01565: FLdPr var_DC
  loc_A01568: Me.Caption = from_stack_1
  loc_A0156D: FFree1Str var_E0
  loc_A01570: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A0157D: FFree1Var var_C8 = ""
  loc_A01580: ExitProcHresult
  loc_A01581: CExtInstUnk
End Sub

Private Sub CodiFifuMsk_UnknownEvent_0 '9CAE58
  'Data Table: 4FA290
  loc_9CAD74: LitVarStr var_94, vbNullString
  loc_9CAD79: PopAdLdVar
  loc_9CAD7A: FLdPr Me
  loc_9CAD7D: VCallAd Control_ID_CodiFifuMsk
  loc_9CAD80: FStAdFunc var_A8
  loc_9CAD83: FLdPr var_A8
  loc_9CAD86: LateIdSt
  loc_9CAD8B: FFree1Ad var_A8
  loc_9CAD8E: FLdPr Me
  loc_9CAD91: VCallAd Control_ID_CodiFifuMsk
  loc_9CAD94: FStAdFunc var_A8
  loc_9CAD97: FLdPr var_A8
  loc_9CAD9A: LateIdLdVar var_B8 DispID_22 0
  loc_9CADA1: CStrVarTmp
  loc_9CADA2: FStStrNoPop var_BC
  loc_9CADA5: LitStr "__.__.__"
  loc_9CADA8: EqStr
  loc_9CADAA: FFree1Str var_BC
  loc_9CADAD: FFree1Ad var_A8
  loc_9CADB0: FFree1Var var_B8 = ""
  loc_9CADB3: BranchF loc_9CADD0
  loc_9CADB6: LitVarStr var_94, vbNullString
  loc_9CADBB: PopAdLdVar
  loc_9CADBC: FLdPr Me
  loc_9CADBF: VCallAd Control_ID_CodiFifuMsk
  loc_9CADC2: FStAdFunc var_A8
  loc_9CADC5: FLdPr var_A8
  loc_9CADC8: LateIdSt
  loc_9CADCD: FFree1Ad var_A8
  loc_9CADD0: FLdPr Me
  loc_9CADD3: VCallAd Control_ID_CodiFifuMsk
  loc_9CADD6: FStAdFunc var_A8
  loc_9CADD9: FLdPr var_A8
  loc_9CADDC: LateIdLdVar var_B8 DispID_22 0
  loc_9CADE3: CStrVarTmp
  loc_9CADE4: FStStrNoPop var_BC
  loc_9CADE7: LitStr vbNullString
  loc_9CADEA: EqStr
  loc_9CADEC: FFree1Str var_BC
  loc_9CADEF: FFree1Ad var_A8
  loc_9CADF2: FFree1Var var_B8 = ""
  loc_9CADF5: BranchF loc_9CAE42
  loc_9CADF8: LitStr "Municipalidad de Guaymallén"
  loc_9CADFB: LitStr "Municipalidad de Lavalle"
  loc_9CADFE: EqStr
  loc_9CAE00: BranchF loc_9CAE1D
  loc_9CAE03: LitVarStr var_94, "010900"
  loc_9CAE08: PopAdLdVar
  loc_9CAE09: FLdPr Me
  loc_9CAE0C: VCallAd Control_ID_CodiFifuMsk
  loc_9CAE0F: FStAdFunc var_A8
  loc_9CAE12: FLdPr var_A8
  loc_9CAE15: LateIdSt
  loc_9CAE1A: FFree1Ad var_A8
  loc_9CAE1D: LitStr "Municipalidad de Guaymallén"
  loc_9CAE20: LitStr "Municipalidad de Rivadavia"
  loc_9CAE23: EqStr
  loc_9CAE25: BranchF loc_9CAE42
  loc_9CAE28: LitVarStr var_94, "010900"
  loc_9CAE2D: PopAdLdVar
  loc_9CAE2E: FLdPr Me
  loc_9CAE31: VCallAd Control_ID_CodiFifuMsk
  loc_9CAE34: FStAdFunc var_A8
  loc_9CAE37: FLdPr var_A8
  loc_9CAE3A: LateIdSt
  loc_9CAE3F: FFree1Ad var_A8
  loc_9CAE42: FLdPr Me
  loc_9CAE45: VCallAd Control_ID_CodiFifuMsk
  loc_9CAE48: CVarAd
  loc_9CAE4C: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9CAE51: FFree1Var var_B8 = ""
  loc_9CAE54: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_1 '96A63C
  'Data Table: 4FA290
  loc_96A620: LitVarStr var_94, "##.##.##"
  loc_96A625: PopAdLdVar
  loc_96A626: FLdPr Me
  loc_96A629: VCallAd Control_ID_CodiFifuMsk
  loc_96A62C: FStAdFunc var_A8
  loc_96A62F: FLdPr var_A8
  loc_96A632: LateIdSt
  loc_96A637: FFree1Ad var_A8
  loc_96A63A: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_8 'B5E1A4
  'Data Table: 4FA290
  loc_B5D688: FLdRfVar var_8A
  loc_B5D68B: FLdPr Me
  loc_B5D68E: VCallAd Control_ID_cmdCancelar
  loc_B5D691: FStAdFunc var_88
  loc_B5D694: FLdPr var_88
  loc_B5D697:  = Me.Value
  loc_B5D69C: FLdI2 var_8A
  loc_B5D69F: NotI4
  loc_B5D6A0: FLdPr Me
  loc_B5D6A3: VCallAd Control_ID_CodiFifuMsk
  loc_B5D6A6: FStAdFunc var_90
  loc_B5D6A9: FLdPr var_90
  loc_B5D6AC: LateIdLdVar var_A0 DispID_13 -32767
  loc_B5D6B3: CBoolVar
  loc_B5D6B5: AndI4
  loc_B5D6B6: FFreeAd var_88 = ""
  loc_B5D6BD: FFree1Var var_A0 = ""
  loc_B5D6C0: BranchF loc_B5E1A2
  loc_B5D6C3: FLdPr Me
  loc_B5D6C6: VCallAd Control_ID_CodiFifuMsk
  loc_B5D6C9: FStAdFunc var_88
  loc_B5D6CC: FLdPr var_88
  loc_B5D6CF: LateIdLdVar var_A0 DispID_22 0
  loc_B5D6D6: CStrVarTmp
  loc_B5D6D7: FStStrNoPop var_A4
  loc_B5D6DA: ImpAdCallI2 Trim$()
  loc_B5D6DF: FStStrNoPop var_A8
  loc_B5D6E2: LitStr vbNullString
  loc_B5D6E5: NeStr
  loc_B5D6E7: FFreeStr var_A4 = ""
  loc_B5D6EE: FFree1Ad var_88
  loc_B5D6F1: FFree1Var var_A0 = ""
  loc_B5D6F4: BranchF loc_B5DFA4
  loc_B5D6F7: FLdPr Me
  loc_B5D6FA: VCallAd Control_ID_CodiFifuMsk
  loc_B5D6FD: FStAdFunc var_88
  loc_B5D700: FLdRfVar var_88
  loc_B5D703: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B5D708: FFree1Ad var_88
  loc_B5D70B: BranchF loc_B5DB59
  loc_B5D70E: FLdPr Me
  loc_B5D711: VCallAd Control_ID_CodiPartMsk
  loc_B5D714: FStAdFunc var_88
  loc_B5D717: FLdPr var_88
  loc_B5D71A: LateIdLdVar var_A0 DispID_22 0
  loc_B5D721: PopAd
  loc_B5D723: FLdPr Me
  loc_B5D726: VCallAd Control_ID_CodiOrgaMsk
  loc_B5D729: FStAdFunc var_90
  loc_B5D72C: FLdPr var_90
  loc_B5D72F: LateIdLdVar var_B8 DispID_22 0
  loc_B5D736: PopAd
  loc_B5D738: FLdPr Me
  loc_B5D73B: VCallAd Control_ID_CodiFifuMsk
  loc_B5D73E: FStAdFunc var_BC
  loc_B5D741: FLdPr var_BC
  loc_B5D744: LateIdLdVar var_CC DispID_22 0
  loc_B5D74B: PopAd
  loc_B5D74D: LitStr " AND finalidad.CodiFifu LIKE '"
  loc_B5D750: LitI4 0
  loc_B5D755: LitI4 -1
  loc_B5D75A: LitI4 1
  loc_B5D75F: LitStr vbNullString
  loc_B5D762: LitStr "."
  loc_B5D765: FLdRfVar var_CC
  loc_B5D768: CStrVarTmp
  loc_B5D769: FStStrNoPop var_A4
  loc_B5D76C: ImpAdCallI2 Replace(, , , , , )
  loc_B5D771: FStStrNoPop var_A8
  loc_B5D774: ConcatStr
  loc_B5D775: FStStrNoPop var_D0
  loc_B5D778: LitStr Chr(37) & "' ORDER BY finalidad.CodiFifu"
  loc_B5D77B: ConcatStr
  loc_B5D77C: FStStrNoPop var_DC
  loc_B5D77F: FLdRfVar var_B8
  loc_B5D782: CStrVarTmp
  loc_B5D783: FStStrNoPop var_D8
  loc_B5D786: FLdRfVar var_A0
  loc_B5D789: CStrVarTmp
  loc_B5D78A: FStStrNoPop var_D4
  loc_B5D78D: ImpAdLdI2 MemVar_C3D064
  loc_B5D790: ImpAdLdRf MemVar_C3D6E8
  loc_B5D793: NewIfNullPr bscFinalidad
  loc_B5D796: Call bscFinalidad.Constructor(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B5D79B: FFreeStr var_A4 = "": var_A8 = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B5D7AA: FFreeAd var_88 = "": var_90 = ""
  loc_B5D7B3: FFreeVar var_A0 = "": var_B8 = ""
  loc_B5D7BC: FLdRfVar var_E0
  loc_B5D7BF: FLdRfVar var_90
  loc_B5D7C2: FLdRfVar var_88
  loc_B5D7C5: ImpAdLdRf MemVar_C3D6E8
  loc_B5D7C8: NewIfNullPr bscFinalidad
  loc_B5D7CB: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D7D0: FLdPr var_88
  loc_B5D7D3: from_stack_1v = clsbase.RsFrmGet()
  loc_B5D7D8: FLdPr var_90
  loc_B5D7DB:  = Me.RecordCount
  loc_B5D7E0: ILdRf var_E0
  loc_B5D7E3: LitI4 1
  loc_B5D7E8: EqI4
  loc_B5D7E9: FFreeAd var_88 = ""
  loc_B5D7F0: BranchF loc_B5D905
  loc_B5D7F3: FLdRfVar var_A0
  loc_B5D7F6: FLdRfVar var_F4
  loc_B5D7F9: LitVarStr var_F0, "CodiFifu"
  loc_B5D7FE: PopAdLdVar
  loc_B5D7FF: FLdRfVar var_BC
  loc_B5D802: FLdRfVar var_90
  loc_B5D805: FLdRfVar var_88
  loc_B5D808: ImpAdLdRf MemVar_C3D6E8
  loc_B5D80B: NewIfNullPr bscFinalidad
  loc_B5D80E: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D813: FLdPr var_88
  loc_B5D816: from_stack_1v = clsbase.RsFrmGet()
  loc_B5D81B: FLdPr var_90
  loc_B5D81E:  = Me.Fields
  loc_B5D823: FLdPr var_BC
  loc_B5D826: from_stack_2 = Me.Item(from_stack_1)
  loc_B5D82B: FLdPr var_F4
  loc_B5D82E:  = Me.Value
  loc_B5D833: FLdPr Me
  loc_B5D836: MemLdRfVar from_stack_1.global_100
  loc_B5D839: NewIfNullRf
  loc_B5D83D: FLdRfVar var_A0
  loc_B5D840: CStrVarTmp
  loc_B5D841: FStStrNoPop var_A4
  loc_B5D844: ImpAdLdI2 MemVar_C3D064
  loc_B5D847: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5D84C: FStStrNoPop var_A8
  loc_B5D84F: FLdPr Me
  loc_B5D852: MemStStrCopy
  loc_B5D856: FFreeStr var_A4 = ""
  loc_B5D85D: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D868: FFree1Var var_A0 = ""
  loc_B5D86B: FLdRfVar var_A4
  loc_B5D86E: FLdPr Me
  loc_B5D871: MemLdRfVar from_stack_1.global_100
  loc_B5D874: NewIfNullPr tblfinalidad
  loc_B5D877: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5D87C: FLdZeroAd var_A4
  loc_B5D87F: CVarStr var_A0
  loc_B5D882: PopAdLdVar
  loc_B5D883: FLdPr Me
  loc_B5D886: VCallAd Control_ID_CodiFifuMsk
  loc_B5D889: FStAdFunc var_88
  loc_B5D88C: FLdPr var_88
  loc_B5D88F: LateIdSt
  loc_B5D894: FFree1Ad var_88
  loc_B5D897: FFree1Var var_A0 = ""
  loc_B5D89A: FLdRfVar var_A4
  loc_B5D89D: FLdPr Me
  loc_B5D8A0: MemLdRfVar from_stack_1.global_100
  loc_B5D8A3: NewIfNullPr tblfinalidad
  loc_B5D8A6: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5D8AB: ILdRf var_A4
  loc_B5D8AE: FLdPr Me
  loc_B5D8B1: VCallAd Control_ID_DetaFifuLbl
  loc_B5D8B4: FStAdFunc var_88
  loc_B5D8B7: FLdPr var_88
  loc_B5D8BA: Me.Caption = from_stack_1
  loc_B5D8BF: FFree1Str var_A4
  loc_B5D8C2: FFree1Ad var_88
  loc_B5D8C5: FLdPr Me
  loc_B5D8C8: VCallAd Control_ID_CodiFifuMsk
  loc_B5D8CB: FStAdFunc var_F4
  loc_B5D8CE: FLdPr Me
  loc_B5D8D1: VCallAd Control_ID_DetaFifuLbl
  loc_B5D8D4: FStAdFunc var_BC
  loc_B5D8D7: FLdRfVar var_BC
  loc_B5D8DA: FLdZeroAd var_F4
  loc_B5D8DD: FStAdFuncNoPop
  loc_B5D8E0: CastAd
  loc_B5D8E3: FStAdFunc var_90
  loc_B5D8E6: FLdRfVar var_90
  loc_B5D8E9: FLdPr Me
  loc_B5D8EC: MemLdRfVar from_stack_1.global_64
  loc_B5D8EF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5D8F4: IStI2 KeyAscii
  loc_B5D8F7: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D902: Branch loc_B5DB56
  loc_B5D905: FLdRfVar var_E0
  loc_B5D908: FLdRfVar var_90
  loc_B5D90B: FLdRfVar var_88
  loc_B5D90E: ImpAdLdRf MemVar_C3D6E8
  loc_B5D911: NewIfNullPr bscFinalidad
  loc_B5D914: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D919: FLdPr var_88
  loc_B5D91C: from_stack_1v = clsbase.RsFrmGet()
  loc_B5D921: FLdPr var_90
  loc_B5D924:  = Me.RecordCount
  loc_B5D929: ILdRf var_E0
  loc_B5D92C: LitI4 1
  loc_B5D931: GtI4
  loc_B5D932: FFreeAd var_88 = ""
  loc_B5D939: BranchF loc_B5DAD8
  loc_B5D93C: LitVar_Missing var_104
  loc_B5D93F: PopAdLdVar
  loc_B5D940: LitVarI4
  loc_B5D948: PopAdLdVar
  loc_B5D949: ImpAdLdRf MemVar_C3D6E8
  loc_B5D94C: NewIfNullPr bscFinalidad
  loc_B5D94F: bscFinalidad.Show from_stack_1, from_stack_2
  loc_B5D954: FLdRfVar var_E0
  loc_B5D957: FLdRfVar var_88
  loc_B5D95A: ImpAdLdRf MemVar_C3D6E8
  loc_B5D95D: NewIfNullPr bscFinalidad
  loc_B5D960: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D965: FLdPr var_88
  loc_B5D968: from_stack_1 = clsbase.RecordCount
  loc_B5D96D: ILdRf var_E0
  loc_B5D970: LitI4 0
  loc_B5D975: GtI4
  loc_B5D976: FFree1Ad var_88
  loc_B5D979: BranchF loc_B5DA8E
  loc_B5D97C: FLdRfVar var_A0
  loc_B5D97F: FLdRfVar var_F4
  loc_B5D982: LitVarStr var_F0, "CodiFifu"
  loc_B5D987: PopAdLdVar
  loc_B5D988: FLdRfVar var_BC
  loc_B5D98B: FLdRfVar var_90
  loc_B5D98E: FLdRfVar var_88
  loc_B5D991: ImpAdLdRf MemVar_C3D6E8
  loc_B5D994: NewIfNullPr bscFinalidad
  loc_B5D997: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D99C: FLdPr var_88
  loc_B5D99F: from_stack_1v = clsbase.RsFrmGet()
  loc_B5D9A4: FLdPr var_90
  loc_B5D9A7:  = Me.Fields
  loc_B5D9AC: FLdPr var_BC
  loc_B5D9AF: from_stack_2 = Me.Item(from_stack_1)
  loc_B5D9B4: FLdPr var_F4
  loc_B5D9B7:  = Me.Value
  loc_B5D9BC: FLdPr Me
  loc_B5D9BF: MemLdRfVar from_stack_1.global_100
  loc_B5D9C2: NewIfNullRf
  loc_B5D9C6: FLdRfVar var_A0
  loc_B5D9C9: CStrVarTmp
  loc_B5D9CA: FStStrNoPop var_A4
  loc_B5D9CD: ImpAdLdI2 MemVar_C3D064
  loc_B5D9D0: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5D9D5: FStStrNoPop var_A8
  loc_B5D9D8: FLdPr Me
  loc_B5D9DB: MemStStrCopy
  loc_B5D9DF: FFreeStr var_A4 = ""
  loc_B5D9E6: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D9F1: FFree1Var var_A0 = ""
  loc_B5D9F4: FLdRfVar var_A4
  loc_B5D9F7: FLdPr Me
  loc_B5D9FA: MemLdRfVar from_stack_1.global_100
  loc_B5D9FD: NewIfNullPr tblfinalidad
  loc_B5DA00: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5DA05: FLdZeroAd var_A4
  loc_B5DA08: CVarStr var_A0
  loc_B5DA0B: PopAdLdVar
  loc_B5DA0C: FLdPr Me
  loc_B5DA0F: VCallAd Control_ID_CodiFifuMsk
  loc_B5DA12: FStAdFunc var_88
  loc_B5DA15: FLdPr var_88
  loc_B5DA18: LateIdSt
  loc_B5DA1D: FFree1Ad var_88
  loc_B5DA20: FFree1Var var_A0 = ""
  loc_B5DA23: FLdRfVar var_A4
  loc_B5DA26: FLdPr Me
  loc_B5DA29: MemLdRfVar from_stack_1.global_100
  loc_B5DA2C: NewIfNullPr tblfinalidad
  loc_B5DA2F: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5DA34: ILdRf var_A4
  loc_B5DA37: FLdPr Me
  loc_B5DA3A: VCallAd Control_ID_DetaFifuLbl
  loc_B5DA3D: FStAdFunc var_88
  loc_B5DA40: FLdPr var_88
  loc_B5DA43: Me.Caption = from_stack_1
  loc_B5DA48: FFree1Str var_A4
  loc_B5DA4B: FFree1Ad var_88
  loc_B5DA4E: FLdPr Me
  loc_B5DA51: VCallAd Control_ID_CodiFifuMsk
  loc_B5DA54: FStAdFunc var_F4
  loc_B5DA57: FLdPr Me
  loc_B5DA5A: VCallAd Control_ID_DetaFifuLbl
  loc_B5DA5D: FStAdFunc var_BC
  loc_B5DA60: FLdRfVar var_BC
  loc_B5DA63: FLdZeroAd var_F4
  loc_B5DA66: FStAdFuncNoPop
  loc_B5DA69: CastAd
  loc_B5DA6C: FStAdFunc var_90
  loc_B5DA6F: FLdRfVar var_90
  loc_B5DA72: FLdPr Me
  loc_B5DA75: MemLdRfVar from_stack_1.global_64
  loc_B5DA78: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5DA7D: IStI2 KeyAscii
  loc_B5DA80: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5DA8B: Branch loc_B5DAD5
  loc_B5DA8E: LitStr "La Finalidad NO EXISTE. Verifique..."
  loc_B5DA91: FLdPr Me
  loc_B5DA94: MemStStrCopy
  loc_B5DA98: FLdPr Me
  loc_B5DA9B: VCallAd Control_ID_CodiFifuMsk
  loc_B5DA9E: FStAdFunc var_F4
  loc_B5DAA1: FLdPr Me
  loc_B5DAA4: VCallAd Control_ID_DetaFifuLbl
  loc_B5DAA7: FStAdFunc var_BC
  loc_B5DAAA: FLdRfVar var_BC
  loc_B5DAAD: FLdZeroAd var_F4
  loc_B5DAB0: FStAdFuncNoPop
  loc_B5DAB3: CastAd
  loc_B5DAB6: FStAdFunc var_90
  loc_B5DAB9: FLdRfVar var_90
  loc_B5DABC: FLdPr Me
  loc_B5DABF: MemLdRfVar from_stack_1.global_64
  loc_B5DAC2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5DAC7: IStI2 KeyAscii
  loc_B5DACA: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5DAD5: Branch loc_B5DB56
  loc_B5DAD8: FLdRfVar var_E0
  loc_B5DADB: FLdRfVar var_90
  loc_B5DADE: FLdRfVar var_88
  loc_B5DAE1: ImpAdLdRf MemVar_C3D6E8
  loc_B5DAE4: NewIfNullPr bscFinalidad
  loc_B5DAE7: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5DAEC: FLdPr var_88
  loc_B5DAEF: from_stack_1v = clsbase.RsFrmGet()
  loc_B5DAF4: FLdPr var_90
  loc_B5DAF7:  = Me.RecordCount
  loc_B5DAFC: ILdRf var_E0
  loc_B5DAFF: LitI4 1
  loc_B5DB04: LtI4
  loc_B5DB05: FFreeAd var_88 = ""
  loc_B5DB0C: BranchF loc_B5DB56
  loc_B5DB0F: LitStr "La Finalidad NO EXISTE. Verifique..."
  loc_B5DB12: FLdPr Me
  loc_B5DB15: MemStStrCopy
  loc_B5DB19: FLdPr Me
  loc_B5DB1C: VCallAd Control_ID_CodiFifuMsk
  loc_B5DB1F: FStAdFunc var_F4
  loc_B5DB22: FLdPr Me
  loc_B5DB25: VCallAd Control_ID_DetaFifuLbl
  loc_B5DB28: FStAdFunc var_BC
  loc_B5DB2B: FLdRfVar var_BC
  loc_B5DB2E: FLdZeroAd var_F4
  loc_B5DB31: FStAdFuncNoPop
  loc_B5DB34: CastAd
  loc_B5DB37: FStAdFunc var_90
  loc_B5DB3A: FLdRfVar var_90
  loc_B5DB3D: FLdPr Me
  loc_B5DB40: MemLdRfVar from_stack_1.global_64
  loc_B5DB43: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5DB48: IStI2 KeyAscii
  loc_B5DB4B: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5DB56: Branch loc_B5DFA1
  loc_B5DB59: FLdPr Me
  loc_B5DB5C: VCallAd Control_ID_CodiPartMsk
  loc_B5DB5F: FStAdFunc var_88
  loc_B5DB62: FLdPr var_88
  loc_B5DB65: LateIdLdVar var_A0 DispID_22 0
  loc_B5DB6C: PopAd
  loc_B5DB6E: FLdPr Me
  loc_B5DB71: VCallAd Control_ID_CodiOrgaMsk
  loc_B5DB74: FStAdFunc var_90
  loc_B5DB77: FLdPr var_90
  loc_B5DB7A: LateIdLdVar var_B8 DispID_22 0
  loc_B5DB81: PopAd
  loc_B5DB83: FLdPr Me
  loc_B5DB86: VCallAd Control_ID_CodiFifuMsk
  loc_B5DB89: FStAdFunc var_BC
  loc_B5DB8C: FLdPr var_BC
  loc_B5DB8F: LateIdLdVar var_CC DispID_22 0
  loc_B5DB96: PopAd
  loc_B5DB98: LitStr " AND DetaFifu LIKE '" & Chr(37)
  loc_B5DB9B: LitI4 0
  loc_B5DBA0: LitI4 -1
  loc_B5DBA5: LitI4 1
  loc_B5DBAA: LitStr Chr(37)
  loc_B5DBAD: LitStr " "
  loc_B5DBB0: FLdRfVar var_CC
  loc_B5DBB3: CStrVarTmp
  loc_B5DBB4: FStStrNoPop var_A4
  loc_B5DBB7: ImpAdCallI2 Replace(, , , , , )
  loc_B5DBBC: FStStrNoPop var_A8
  loc_B5DBBF: ConcatStr
  loc_B5DBC0: FStStrNoPop var_D0
  loc_B5DBC3: LitStr Chr(37) & "' ORDER BY DetaFifu"
  loc_B5DBC6: ConcatStr
  loc_B5DBC7: FStStrNoPop var_DC
  loc_B5DBCA: FLdRfVar var_B8
  loc_B5DBCD: CStrVarTmp
  loc_B5DBCE: FStStrNoPop var_D8
  loc_B5DBD1: FLdRfVar var_A0
  loc_B5DBD4: CStrVarTmp
  loc_B5DBD5: FStStrNoPop var_D4
  loc_B5DBD8: ImpAdLdI2 MemVar_C3D064
  loc_B5DBDB: ImpAdLdRf MemVar_C3D6E8
  loc_B5DBDE: NewIfNullPr bscFinalidad
  loc_B5DBE1: Call bscFinalidad.Constructor(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B5DBE6: FFreeStr var_A4 = "": var_A8 = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B5DBF5: FFreeAd var_88 = "": var_90 = ""
  loc_B5DBFE: FFreeVar var_A0 = "": var_B8 = ""
  loc_B5DC07: FLdRfVar var_E0
  loc_B5DC0A: FLdRfVar var_90
  loc_B5DC0D: FLdRfVar var_88
  loc_B5DC10: ImpAdLdRf MemVar_C3D6E8
  loc_B5DC13: NewIfNullPr bscFinalidad
  loc_B5DC16: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5DC1B: FLdPr var_88
  loc_B5DC1E: from_stack_1v = clsbase.RsFrmGet()
  loc_B5DC23: FLdPr var_90
  loc_B5DC26:  = Me.RecordCount
  loc_B5DC2B: ILdRf var_E0
  loc_B5DC2E: LitI4 1
  loc_B5DC33: EqI4
  loc_B5DC34: FFreeAd var_88 = ""
  loc_B5DC3B: BranchF loc_B5DD50
  loc_B5DC3E: FLdRfVar var_A0
  loc_B5DC41: FLdRfVar var_F4
  loc_B5DC44: LitVarStr var_F0, "CodiFifu"
  loc_B5DC49: PopAdLdVar
  loc_B5DC4A: FLdRfVar var_BC
  loc_B5DC4D: FLdRfVar var_90
  loc_B5DC50: FLdRfVar var_88
  loc_B5DC53: ImpAdLdRf MemVar_C3D6E8
  loc_B5DC56: NewIfNullPr bscFinalidad
  loc_B5DC59: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5DC5E: FLdPr var_88
  loc_B5DC61: from_stack_1v = clsbase.RsFrmGet()
  loc_B5DC66: FLdPr var_90
  loc_B5DC69:  = Me.Fields
  loc_B5DC6E: FLdPr var_BC
  loc_B5DC71: from_stack_2 = Me.Item(from_stack_1)
  loc_B5DC76: FLdPr var_F4
  loc_B5DC79:  = Me.Value
  loc_B5DC7E: FLdPr Me
  loc_B5DC81: MemLdRfVar from_stack_1.global_100
  loc_B5DC84: NewIfNullRf
  loc_B5DC88: FLdRfVar var_A0
  loc_B5DC8B: CStrVarTmp
  loc_B5DC8C: FStStrNoPop var_A4
  loc_B5DC8F: ImpAdLdI2 MemVar_C3D064
  loc_B5DC92: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5DC97: FStStrNoPop var_A8
  loc_B5DC9A: FLdPr Me
  loc_B5DC9D: MemStStrCopy
  loc_B5DCA1: FFreeStr var_A4 = ""
  loc_B5DCA8: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5DCB3: FFree1Var var_A0 = ""
  loc_B5DCB6: FLdRfVar var_A4
  loc_B5DCB9: FLdPr Me
  loc_B5DCBC: MemLdRfVar from_stack_1.global_100
  loc_B5DCBF: NewIfNullPr tblfinalidad
  loc_B5DCC2: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5DCC7: FLdZeroAd var_A4
  loc_B5DCCA: CVarStr var_A0
  loc_B5DCCD: PopAdLdVar
  loc_B5DCCE: FLdPr Me
  loc_B5DCD1: VCallAd Control_ID_CodiFifuMsk
  loc_B5DCD4: FStAdFunc var_88
  loc_B5DCD7: FLdPr var_88
  loc_B5DCDA: LateIdSt
  loc_B5DCDF: FFree1Ad var_88
  loc_B5DCE2: FFree1Var var_A0 = ""
  loc_B5DCE5: FLdRfVar var_A4
  loc_B5DCE8: FLdPr Me
  loc_B5DCEB: MemLdRfVar from_stack_1.global_100
  loc_B5DCEE: NewIfNullPr tblfinalidad
  loc_B5DCF1: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5DCF6: ILdRf var_A4
  loc_B5DCF9: FLdPr Me
  loc_B5DCFC: VCallAd Control_ID_DetaFifuLbl
  loc_B5DCFF: FStAdFunc var_88
  loc_B5DD02: FLdPr var_88
  loc_B5DD05: Me.Caption = from_stack_1
  loc_B5DD0A: FFree1Str var_A4
  loc_B5DD0D: FFree1Ad var_88
  loc_B5DD10: FLdPr Me
  loc_B5DD13: VCallAd Control_ID_CodiFifuMsk
  loc_B5DD16: FStAdFunc var_F4
  loc_B5DD19: FLdPr Me
  loc_B5DD1C: VCallAd Control_ID_DetaFifuLbl
  loc_B5DD1F: FStAdFunc var_BC
  loc_B5DD22: FLdRfVar var_BC
  loc_B5DD25: FLdZeroAd var_F4
  loc_B5DD28: FStAdFuncNoPop
  loc_B5DD2B: CastAd
  loc_B5DD2E: FStAdFunc var_90
  loc_B5DD31: FLdRfVar var_90
  loc_B5DD34: FLdPr Me
  loc_B5DD37: MemLdRfVar from_stack_1.global_64
  loc_B5DD3A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5DD3F: IStI2 KeyAscii
  loc_B5DD42: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5DD4D: Branch loc_B5DFA1
  loc_B5DD50: FLdRfVar var_E0
  loc_B5DD53: FLdRfVar var_90
  loc_B5DD56: FLdRfVar var_88
  loc_B5DD59: ImpAdLdRf MemVar_C3D6E8
  loc_B5DD5C: NewIfNullPr bscFinalidad
  loc_B5DD5F: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5DD64: FLdPr var_88
  loc_B5DD67: from_stack_1v = clsbase.RsFrmGet()
  loc_B5DD6C: FLdPr var_90
  loc_B5DD6F:  = Me.RecordCount
  loc_B5DD74: ILdRf var_E0
  loc_B5DD77: LitI4 1
  loc_B5DD7C: GtI4
  loc_B5DD7D: FFreeAd var_88 = ""
  loc_B5DD84: BranchF loc_B5DF23
  loc_B5DD87: LitVar_Missing var_104
  loc_B5DD8A: PopAdLdVar
  loc_B5DD8B: LitVarI4
  loc_B5DD93: PopAdLdVar
  loc_B5DD94: ImpAdLdRf MemVar_C3D6E8
  loc_B5DD97: NewIfNullPr bscFinalidad
  loc_B5DD9A: bscFinalidad.Show from_stack_1, from_stack_2
  loc_B5DD9F: FLdRfVar var_E0
  loc_B5DDA2: FLdRfVar var_88
  loc_B5DDA5: ImpAdLdRf MemVar_C3D6E8
  loc_B5DDA8: NewIfNullPr bscFinalidad
  loc_B5DDAB: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5DDB0: FLdPr var_88
  loc_B5DDB3: from_stack_1 = clsbase.RecordCount
  loc_B5DDB8: ILdRf var_E0
  loc_B5DDBB: LitI4 0
  loc_B5DDC0: GtI4
  loc_B5DDC1: FFree1Ad var_88
  loc_B5DDC4: BranchF loc_B5DED9
  loc_B5DDC7: FLdRfVar var_A0
  loc_B5DDCA: FLdRfVar var_F4
  loc_B5DDCD: LitVarStr var_F0, "CodiFifu"
  loc_B5DDD2: PopAdLdVar
  loc_B5DDD3: FLdRfVar var_BC
  loc_B5DDD6: FLdRfVar var_90
  loc_B5DDD9: FLdRfVar var_88
  loc_B5DDDC: ImpAdLdRf MemVar_C3D6E8
  loc_B5DDDF: NewIfNullPr bscFinalidad
  loc_B5DDE2: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5DDE7: FLdPr var_88
  loc_B5DDEA: from_stack_1v = clsbase.RsFrmGet()
  loc_B5DDEF: FLdPr var_90
  loc_B5DDF2:  = Me.Fields
  loc_B5DDF7: FLdPr var_BC
  loc_B5DDFA: from_stack_2 = Me.Item(from_stack_1)
  loc_B5DDFF: FLdPr var_F4
  loc_B5DE02:  = Me.Value
  loc_B5DE07: FLdPr Me
  loc_B5DE0A: MemLdRfVar from_stack_1.global_100
  loc_B5DE0D: NewIfNullRf
  loc_B5DE11: FLdRfVar var_A0
  loc_B5DE14: CStrVarTmp
  loc_B5DE15: FStStrNoPop var_A4
  loc_B5DE18: ImpAdLdI2 MemVar_C3D064
  loc_B5DE1B: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5DE20: FStStrNoPop var_A8
  loc_B5DE23: FLdPr Me
  loc_B5DE26: MemStStrCopy
  loc_B5DE2A: FFreeStr var_A4 = ""
  loc_B5DE31: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5DE3C: FFree1Var var_A0 = ""
  loc_B5DE3F: FLdRfVar var_A4
  loc_B5DE42: FLdPr Me
  loc_B5DE45: MemLdRfVar from_stack_1.global_100
  loc_B5DE48: NewIfNullPr tblfinalidad
  loc_B5DE4B: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5DE50: FLdZeroAd var_A4
  loc_B5DE53: CVarStr var_A0
  loc_B5DE56: PopAdLdVar
  loc_B5DE57: FLdPr Me
  loc_B5DE5A: VCallAd Control_ID_CodiFifuMsk
  loc_B5DE5D: FStAdFunc var_88
  loc_B5DE60: FLdPr var_88
  loc_B5DE63: LateIdSt
  loc_B5DE68: FFree1Ad var_88
  loc_B5DE6B: FFree1Var var_A0 = ""
  loc_B5DE6E: FLdRfVar var_A4
  loc_B5DE71: FLdPr Me
  loc_B5DE74: MemLdRfVar from_stack_1.global_100
  loc_B5DE77: NewIfNullPr tblfinalidad
  loc_B5DE7A: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5DE7F: ILdRf var_A4
  loc_B5DE82: FLdPr Me
  loc_B5DE85: VCallAd Control_ID_DetaFifuLbl
  loc_B5DE88: FStAdFunc var_88
  loc_B5DE8B: FLdPr var_88
  loc_B5DE8E: Me.Caption = from_stack_1
  loc_B5DE93: FFree1Str var_A4
  loc_B5DE96: FFree1Ad var_88
  loc_B5DE99: FLdPr Me
  loc_B5DE9C: VCallAd Control_ID_CodiFifuMsk
  loc_B5DE9F: FStAdFunc var_F4
  loc_B5DEA2: FLdPr Me
  loc_B5DEA5: VCallAd Control_ID_DetaFifuLbl
  loc_B5DEA8: FStAdFunc var_BC
  loc_B5DEAB: FLdRfVar var_BC
  loc_B5DEAE: FLdZeroAd var_F4
  loc_B5DEB1: FStAdFuncNoPop
  loc_B5DEB4: CastAd
  loc_B5DEB7: FStAdFunc var_90
  loc_B5DEBA: FLdRfVar var_90
  loc_B5DEBD: FLdPr Me
  loc_B5DEC0: MemLdRfVar from_stack_1.global_64
  loc_B5DEC3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5DEC8: IStI2 KeyAscii
  loc_B5DECB: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5DED6: Branch loc_B5DF20
  loc_B5DED9: LitStr "La Finalidad NO EXISTE. Verique..."
  loc_B5DEDC: FLdPr Me
  loc_B5DEDF: MemStStrCopy
  loc_B5DEE3: FLdPr Me
  loc_B5DEE6: VCallAd Control_ID_CodiFifuMsk
  loc_B5DEE9: FStAdFunc var_F4
  loc_B5DEEC: FLdPr Me
  loc_B5DEEF: VCallAd Control_ID_DetaFifuLbl
  loc_B5DEF2: FStAdFunc var_BC
  loc_B5DEF5: FLdRfVar var_BC
  loc_B5DEF8: FLdZeroAd var_F4
  loc_B5DEFB: FStAdFuncNoPop
  loc_B5DEFE: CastAd
  loc_B5DF01: FStAdFunc var_90
  loc_B5DF04: FLdRfVar var_90
  loc_B5DF07: FLdPr Me
  loc_B5DF0A: MemLdRfVar from_stack_1.global_64
  loc_B5DF0D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5DF12: IStI2 KeyAscii
  loc_B5DF15: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5DF20: Branch loc_B5DFA1
  loc_B5DF23: FLdRfVar var_E0
  loc_B5DF26: FLdRfVar var_90
  loc_B5DF29: FLdRfVar var_88
  loc_B5DF2C: ImpAdLdRf MemVar_C3D6E8
  loc_B5DF2F: NewIfNullPr bscFinalidad
  loc_B5DF32: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5DF37: FLdPr var_88
  loc_B5DF3A: from_stack_1v = clsbase.RsFrmGet()
  loc_B5DF3F: FLdPr var_90
  loc_B5DF42:  = Me.RecordCount
  loc_B5DF47: ILdRf var_E0
  loc_B5DF4A: LitI4 1
  loc_B5DF4F: LtI4
  loc_B5DF50: FFreeAd var_88 = ""
  loc_B5DF57: BranchF loc_B5DFA1
  loc_B5DF5A: LitStr "La Finalidad NO EXISTE. Verique..."
  loc_B5DF5D: FLdPr Me
  loc_B5DF60: MemStStrCopy
  loc_B5DF64: FLdPr Me
  loc_B5DF67: VCallAd Control_ID_CodiFifuMsk
  loc_B5DF6A: FStAdFunc var_F4
  loc_B5DF6D: FLdPr Me
  loc_B5DF70: VCallAd Control_ID_DetaFifuLbl
  loc_B5DF73: FStAdFunc var_BC
  loc_B5DF76: FLdRfVar var_BC
  loc_B5DF79: FLdZeroAd var_F4
  loc_B5DF7C: FStAdFuncNoPop
  loc_B5DF7F: CastAd
  loc_B5DF82: FStAdFunc var_90
  loc_B5DF85: FLdRfVar var_90
  loc_B5DF88: FLdPr Me
  loc_B5DF8B: MemLdRfVar from_stack_1.global_64
  loc_B5DF8E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5DF93: IStI2 KeyAscii
  loc_B5DF96: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5DFA1: Branch loc_B5E153
  loc_B5DFA4: LitNothing
  loc_B5DFA6: CastAd
  loc_B5DFA9: FStAdFuncNoPop
  loc_B5DFAC: ImpAdLdRf MemVar_C3D6E8
  loc_B5DFAF: NewIfNullPr bscFinalidad
  loc_B5DFB2: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_B5DFB7: FFree1Ad var_88
  loc_B5DFBA: LitVar_Missing var_104
  loc_B5DFBD: PopAdLdVar
  loc_B5DFBE: LitVarI4
  loc_B5DFC6: PopAdLdVar
  loc_B5DFC7: ImpAdLdRf MemVar_C3D6E8
  loc_B5DFCA: NewIfNullPr bscFinalidad
  loc_B5DFCD: bscFinalidad.Show from_stack_1, from_stack_2
  loc_B5DFD2: FLdRfVar var_E0
  loc_B5DFD5: FLdRfVar var_88
  loc_B5DFD8: ImpAdLdRf MemVar_C3D6E8
  loc_B5DFDB: NewIfNullPr bscFinalidad
  loc_B5DFDE: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5DFE3: FLdPr var_88
  loc_B5DFE6: from_stack_1 = clsbase.RecordCount
  loc_B5DFEB: ILdRf var_E0
  loc_B5DFEE: LitI4 0
  loc_B5DFF3: GtI4
  loc_B5DFF4: FFree1Ad var_88
  loc_B5DFF7: BranchF loc_B5E10C
  loc_B5DFFA: FLdRfVar var_A0
  loc_B5DFFD: FLdRfVar var_F4
  loc_B5E000: LitVarStr var_F0, "CodiFifu"
  loc_B5E005: PopAdLdVar
  loc_B5E006: FLdRfVar var_BC
  loc_B5E009: FLdRfVar var_90
  loc_B5E00C: FLdRfVar var_88
  loc_B5E00F: ImpAdLdRf MemVar_C3D6E8
  loc_B5E012: NewIfNullPr bscFinalidad
  loc_B5E015: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5E01A: FLdPr var_88
  loc_B5E01D: from_stack_1v = clsbase.RsFrmGet()
  loc_B5E022: FLdPr var_90
  loc_B5E025:  = Me.Fields
  loc_B5E02A: FLdPr var_BC
  loc_B5E02D: from_stack_2 = Me.Item(from_stack_1)
  loc_B5E032: FLdPr var_F4
  loc_B5E035:  = Me.Value
  loc_B5E03A: FLdPr Me
  loc_B5E03D: MemLdRfVar from_stack_1.global_100
  loc_B5E040: NewIfNullRf
  loc_B5E044: FLdRfVar var_A0
  loc_B5E047: CStrVarTmp
  loc_B5E048: FStStrNoPop var_A4
  loc_B5E04B: ImpAdLdI2 MemVar_C3D064
  loc_B5E04E: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5E053: FStStrNoPop var_A8
  loc_B5E056: FLdPr Me
  loc_B5E059: MemStStrCopy
  loc_B5E05D: FFreeStr var_A4 = ""
  loc_B5E064: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5E06F: FFree1Var var_A0 = ""
  loc_B5E072: FLdRfVar var_A4
  loc_B5E075: FLdPr Me
  loc_B5E078: MemLdRfVar from_stack_1.global_100
  loc_B5E07B: NewIfNullPr tblfinalidad
  loc_B5E07E: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5E083: FLdZeroAd var_A4
  loc_B5E086: CVarStr var_A0
  loc_B5E089: PopAdLdVar
  loc_B5E08A: FLdPr Me
  loc_B5E08D: VCallAd Control_ID_CodiFifuMsk
  loc_B5E090: FStAdFunc var_88
  loc_B5E093: FLdPr var_88
  loc_B5E096: LateIdSt
  loc_B5E09B: FFree1Ad var_88
  loc_B5E09E: FFree1Var var_A0 = ""
  loc_B5E0A1: FLdRfVar var_A4
  loc_B5E0A4: FLdPr Me
  loc_B5E0A7: MemLdRfVar from_stack_1.global_100
  loc_B5E0AA: NewIfNullPr tblfinalidad
  loc_B5E0AD: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5E0B2: ILdRf var_A4
  loc_B5E0B5: FLdPr Me
  loc_B5E0B8: VCallAd Control_ID_DetaFifuLbl
  loc_B5E0BB: FStAdFunc var_88
  loc_B5E0BE: FLdPr var_88
  loc_B5E0C1: Me.Caption = from_stack_1
  loc_B5E0C6: FFree1Str var_A4
  loc_B5E0C9: FFree1Ad var_88
  loc_B5E0CC: FLdPr Me
  loc_B5E0CF: VCallAd Control_ID_CodiFifuMsk
  loc_B5E0D2: FStAdFunc var_F4
  loc_B5E0D5: FLdPr Me
  loc_B5E0D8: VCallAd Control_ID_DetaFifuLbl
  loc_B5E0DB: FStAdFunc var_BC
  loc_B5E0DE: FLdRfVar var_BC
  loc_B5E0E1: FLdZeroAd var_F4
  loc_B5E0E4: FStAdFuncNoPop
  loc_B5E0E7: CastAd
  loc_B5E0EA: FStAdFunc var_90
  loc_B5E0ED: FLdRfVar var_90
  loc_B5E0F0: FLdPr Me
  loc_B5E0F3: MemLdRfVar from_stack_1.global_64
  loc_B5E0F6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5E0FB: IStI2 KeyAscii
  loc_B5E0FE: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5E109: Branch loc_B5E153
  loc_B5E10C: LitStr "La Finalidad NO EXISTE. Verifique..."
  loc_B5E10F: FLdPr Me
  loc_B5E112: MemStStrCopy
  loc_B5E116: FLdPr Me
  loc_B5E119: VCallAd Control_ID_CodiFifuMsk
  loc_B5E11C: FStAdFunc var_F4
  loc_B5E11F: FLdPr Me
  loc_B5E122: VCallAd Control_ID_DetaFifuLbl
  loc_B5E125: FStAdFunc var_BC
  loc_B5E128: FLdRfVar var_BC
  loc_B5E12B: FLdZeroAd var_F4
  loc_B5E12E: FStAdFuncNoPop
  loc_B5E131: CastAd
  loc_B5E134: FStAdFunc var_90
  loc_B5E137: FLdRfVar var_90
  loc_B5E13A: FLdPr Me
  loc_B5E13D: MemLdRfVar from_stack_1.global_64
  loc_B5E140: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5E145: IStI2 KeyAscii
  loc_B5E148: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5E153: ILdI2 KeyAscii
  loc_B5E156: NotI4
  loc_B5E157: BranchF loc_B5E188
  loc_B5E15A: FLdRfVar var_A4
  loc_B5E15D: FLdPr Me
  loc_B5E160: MemLdRfVar from_stack_1.global_100
  loc_B5E163: NewIfNullPr tblfinalidad
  loc_B5E166: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5E16B: ILdRf var_A4
  loc_B5E16E: FLdPr Me
  loc_B5E171: VCallAd Control_ID_DetaFifuLbl
  loc_B5E174: FStAdFunc var_88
  loc_B5E177: FLdPr var_88
  loc_B5E17A: Me.Caption = from_stack_1
  loc_B5E17F: FFree1Str var_A4
  loc_B5E182: FFree1Ad var_88
  loc_B5E185: Branch loc_B5E1A2
  loc_B5E188: LitVarStr var_F0, vbNullString
  loc_B5E18D: PopAdLdVar
  loc_B5E18E: FLdPr Me
  loc_B5E191: VCallAd Control_ID_CodiFifuMsk
  loc_B5E194: FStAdFunc var_88
  loc_B5E197: FLdPr var_88
  loc_B5E19A: LateIdSt
  loc_B5E19F: FFree1Ad var_88
  loc_B5E1A2: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_KeyPress(KeyAscii As Integer) '9AEDD4
  'Data Table: 4FA290
  loc_9AED34: FLdPr Me
  loc_9AED37: VCallAd Control_ID_CodiFifuMsk
  loc_9AED3A: FStAdFunc var_88
  loc_9AED3D: FLdPr var_88
  loc_9AED40: LateIdLdVar var_98 DispID_22 0
  loc_9AED47: PopAd
  loc_9AED49: LitI4 0
  loc_9AED4E: LitI4 -1
  loc_9AED53: LitI4 1
  loc_9AED58: LitStr vbNullString
  loc_9AED5B: LitStr "."
  loc_9AED5E: FLdRfVar var_98
  loc_9AED61: CStrVarTmp
  loc_9AED62: FStStrNoPop var_9C
  loc_9AED65: ImpAdCallI2 Replace(, , , , , )
  loc_9AED6A: FStStrNoPop var_A0
  loc_9AED6D: FnLenStr
  loc_9AED6E: LitI2_Byte 6
  loc_9AED70: CI2UI1
  loc_9AED72: LitI2_Byte 1
  loc_9AED74: SubI2
  loc_9AED75: CI4UI1
  loc_9AED76: GtI4
  loc_9AED77: FFreeStr var_9C = ""
  loc_9AED7E: FFree1Ad var_88
  loc_9AED81: FFree1Var var_98 = ""
  loc_9AED84: BranchF loc_9AEDD2
  loc_9AED87: FLdPr Me
  loc_9AED8A: VCallAd Control_ID_CodiFifuMsk
  loc_9AED8D: FStAdFunc var_88
  loc_9AED90: FLdRfVar var_88
  loc_9AED93: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9AED98: FFree1Ad var_88
  loc_9AED9B: BranchF loc_9AEDD2
  loc_9AED9E: ILdI2 KeyAscii
  loc_9AEDA1: CI4UI1
  loc_9AEDA2: LitI4 8
  loc_9AEDA7: NeI4
  loc_9AEDA8: FLdPr Me
  loc_9AEDAB: VCallAd Control_ID_CodiFifuMsk
  loc_9AEDAE: FStAdFunc var_88
  loc_9AEDB1: FLdPr var_88
  loc_9AEDB4: LateIdLdVar var_98 DispID_17 0
  loc_9AEDBB: CI4Var
  loc_9AEDBD: LitI4 0
  loc_9AEDC2: EqI4
  loc_9AEDC3: AndI4
  loc_9AEDC4: FFree1Ad var_88
  loc_9AEDC7: FFree1Var var_98 = ""
  loc_9AEDCA: BranchF loc_9AEDD2
  loc_9AEDCD: LitI2_Byte 0
  loc_9AEDCF: IStI2 KeyAscii
  loc_9AEDD2: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A20BA0
  'Data Table: 4FA290
  loc_A20A00: ILdI2 Shift
  loc_A20A03: CI4UI1
  loc_A20A04: LitI4 2
  loc_A20A09: EqI4
  loc_A20A0A: ILdI2 KeyCode
  loc_A20A0D: CI4UI1
  loc_A20A0E: LitI4 &H42
  loc_A20A13: EqI4
  loc_A20A14: AndI4
  loc_A20A15: BranchF loc_A20B9C
  loc_A20A18: FLdPr Me
  loc_A20A1B: VCallAd Control_ID_CodiPartMsk
  loc_A20A1E: FStAdFunc var_88
  loc_A20A21: FLdPr var_88
  loc_A20A24: LateIdLdVar var_98 DispID_22 0
  loc_A20A2B: CStrVarTmp
  loc_A20A2C: FStStrNoPop var_9C
  loc_A20A2F: ImpAdLdRf MemVar_C3D6E8
  loc_A20A32: NewIfNullPr bscFinalidad
  loc_A20A35: Call bscFinalidad.sCodiPartPut(from_stack_1v)
  loc_A20A3A: FFree1Str var_9C
  loc_A20A3D: FFree1Ad var_88
  loc_A20A40: FFree1Var var_98 = ""
  loc_A20A43: FLdPr Me
  loc_A20A46: VCallAd Control_ID_
  loc_A20A49: FStAdFunc var_88
  loc_A20A4C: FLdPr var_88
  loc_A20A4F: LateIdLdVar var_98 DispID_22 0
  loc_A20A56: CStrVarTmp
  loc_A20A57: FStStrNoPop var_9C
  loc_A20A5A: ImpAdLdRf MemVar_C3D6E8
  loc_A20A5D: NewIfNullPr bscFinalidad
  loc_A20A60: Call bscFinalidad.sCodiOrgaPut(from_stack_1v)
  loc_A20A65: FFree1Str var_9C
  loc_A20A68: FFree1Ad var_88
  loc_A20A6B: FFree1Var var_98 = ""
  loc_A20A6E: LitNothing
  loc_A20A70: CastAd
  loc_A20A73: FStAdFuncNoPop
  loc_A20A76: ImpAdLdRf MemVar_C3D6E8
  loc_A20A79: NewIfNullPr bscFinalidad
  loc_A20A7C: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_A20A81: FFree1Ad var_88
  loc_A20A84: LitVar_Missing var_BC
  loc_A20A87: PopAdLdVar
  loc_A20A88: LitVarI4
  loc_A20A90: PopAdLdVar
  loc_A20A91: ImpAdLdRf MemVar_C3D6E8
  loc_A20A94: NewIfNullPr bscFinalidad
  loc_A20A97: bscFinalidad.Show from_stack_1, from_stack_2
  loc_A20A9C: FLdRfVar var_C0
  loc_A20A9F: FLdRfVar var_88
  loc_A20AA2: ImpAdLdRf MemVar_C3D6E8
  loc_A20AA5: NewIfNullPr bscFinalidad
  loc_A20AA8: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A20AAD: FLdPr var_88
  loc_A20AB0: from_stack_1 = clsbase.RecordCount
  loc_A20AB5: ILdRf var_C0
  loc_A20AB8: LitI4 0
  loc_A20ABD: GtI4
  loc_A20ABE: FFree1Ad var_88
  loc_A20AC1: BranchF loc_A20B9C
  loc_A20AC4: FLdRfVar var_98
  loc_A20AC7: FLdRfVar var_CC
  loc_A20ACA: LitVarStr var_AC, "CodiFifu"
  loc_A20ACF: PopAdLdVar
  loc_A20AD0: FLdRfVar var_C8
  loc_A20AD3: FLdRfVar var_C4
  loc_A20AD6: FLdRfVar var_88
  loc_A20AD9: ImpAdLdRf MemVar_C3D6E8
  loc_A20ADC: NewIfNullPr bscFinalidad
  loc_A20ADF: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A20AE4: FLdPr var_88
  loc_A20AE7: from_stack_1v = clsbase.RsFrmGet()
  loc_A20AEC: FLdPr var_C4
  loc_A20AEF:  = Me.Fields
  loc_A20AF4: FLdPr var_C8
  loc_A20AF7: from_stack_2 = Me.Item(from_stack_1)
  loc_A20AFC: FLdPr var_CC
  loc_A20AFF:  = Me.Value
  loc_A20B04: FLdRfVar var_98
  loc_A20B07: CStrVarTmp
  loc_A20B08: CVarStr var_DC
  loc_A20B0B: PopAdLdVar
  loc_A20B0C: FLdPr Me
  loc_A20B0F: VCallAd Control_ID_CodiFifuMsk
  loc_A20B12: FStAdFunc var_E0
  loc_A20B15: FLdPr var_E0
  loc_A20B18: LateIdSt
  loc_A20B1D: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A20B2A: FFreeVar var_98 = ""
  loc_A20B31: FLdRfVar var_98
  loc_A20B34: FLdRfVar var_CC
  loc_A20B37: LitVarStr var_AC, "DetaFifu"
  loc_A20B3C: PopAdLdVar
  loc_A20B3D: FLdRfVar var_C8
  loc_A20B40: FLdRfVar var_C4
  loc_A20B43: FLdRfVar var_88
  loc_A20B46: ImpAdLdRf MemVar_C3D6E8
  loc_A20B49: NewIfNullPr bscFinalidad
  loc_A20B4C: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A20B51: FLdPr var_88
  loc_A20B54: from_stack_1v = clsbase.RsFrmGet()
  loc_A20B59: FLdPr var_C4
  loc_A20B5C:  = Me.Fields
  loc_A20B61: FLdPr var_C8
  loc_A20B64: from_stack_2 = Me.Item(from_stack_1)
  loc_A20B69: FLdPr var_CC
  loc_A20B6C:  = Me.Value
  loc_A20B71: FLdRfVar var_98
  loc_A20B74: CStrVarTmp
  loc_A20B75: FStStrNoPop var_9C
  loc_A20B78: FLdPr Me
  loc_A20B7B: VCallAd Control_ID_DetaFifuLbl
  loc_A20B7E: FStAdFunc var_E0
  loc_A20B81: FLdPr var_E0
  loc_A20B84: Me.Caption = from_stack_1
  loc_A20B89: FFree1Str var_9C
  loc_A20B8C: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A20B99: FFree1Var var_98 = ""
  loc_A20B9C: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_GotFocus() '94C290
  'Data Table: 4FA290
  loc_94C27C: FLdPr Me
  loc_94C27F: VCallAd Control_ID_DetaImpuTxt
  loc_94C282: CVarAd
  loc_94C286: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C28B: FFree1Var var_94 = ""
  loc_94C28E: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_Validate(Cancel As Boolean) '9C03E0
  'Data Table: 4FA290
  loc_9C0324: FLdRfVar var_8A
  loc_9C0327: FLdPr Me
  loc_9C032A: VCallAd Control_ID_cmdCancelar
  loc_9C032D: FStAdFunc var_88
  loc_9C0330: FLdPr var_88
  loc_9C0333:  = Me.Value
  loc_9C0338: FLdI2 var_8A
  loc_9C033B: NotI4
  loc_9C033C: FLdRfVar var_92
  loc_9C033F: FLdPr Me
  loc_9C0342: VCallAd Control_ID_DetaImpuTxt
  loc_9C0345: FStAdFunc var_90
  loc_9C0348: FLdPr var_90
  loc_9C034B:  = Me.Enabled
  loc_9C0350: FLdI2 var_92
  loc_9C0353: AndI4
  loc_9C0354: FFreeAd var_88 = ""
  loc_9C035B: BranchF loc_9C03DC
  loc_9C035E: FLdRfVar var_98
  loc_9C0361: FLdPr Me
  loc_9C0364: VCallAd Control_ID_DetaImpuTxt
  loc_9C0367: FStAdFunc var_88
  loc_9C036A: FLdPr var_88
  loc_9C036D:  = Me.Text
  loc_9C0372: LitI2_Byte 0
  loc_9C0374: PopTmpLdAd2 var_9A
  loc_9C0377: LitI2_Byte 0
  loc_9C0379: PopTmpLdAd2 var_92
  loc_9C037C: LitI2_Byte 0
  loc_9C037E: PopTmpLdAd2 var_8A
  loc_9C0381: ILdRf var_98
  loc_9C0384: LitStr "Detalle"
  loc_9C0387: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C038C: FStStrNoPop var_A0
  loc_9C038F: FLdPr Me
  loc_9C0392: MemStStrCopy
  loc_9C0396: FFreeStr var_98 = ""
  loc_9C039D: FFree1Ad var_88
  loc_9C03A0: FLdPr Me
  loc_9C03A3: VCallAd Control_ID_DetaImpuTxt
  loc_9C03A6: FStAdFunc var_A8
  loc_9C03A9: LitNothing
  loc_9C03AB: CastAd
  loc_9C03AE: FStAdFunc var_A4
  loc_9C03B1: FLdRfVar var_A4
  loc_9C03B4: FLdZeroAd var_A8
  loc_9C03B7: FStAdFuncNoPop
  loc_9C03BA: CastAd
  loc_9C03BD: FStAdFunc var_90
  loc_9C03C0: FLdRfVar var_90
  loc_9C03C3: FLdPr Me
  loc_9C03C6: MemLdRfVar from_stack_1.global_64
  loc_9C03C9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C03CE: IStI2 Cancel
  loc_9C03D1: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C03DC: ExitProcHresult
End Sub

Private Sub Form_Load() 'A5CD74
  'Data Table: 4FA290
  loc_A5CA7C: LitStr "U. Ejec."
  loc_A5CA7F: FLdRfVar var_8C
  loc_A5CA82: FLdPr Me
  loc_A5CA85: VCallAd Control_ID_Label6
  loc_A5CA88: FStAdFunc var_88
  loc_A5CA8B: FLdPr var_88
  loc_A5CA8E:  = Me.Caption
  loc_A5CA93: ILdRf var_8C
  loc_A5CA96: ConcatStr
  loc_A5CA97: FStStrNoPop var_90
  loc_A5CA9A: FLdPr Me
  loc_A5CA9D: VCallAd Control_ID_Label6
  loc_A5CAA0: FStAdFunc var_94
  loc_A5CAA3: FLdPr var_94
  loc_A5CAA6: Me.Caption = from_stack_1
  loc_A5CAAB: FFreeStr var_8C = ""
  loc_A5CAB2: FFreeAd var_88 = ""
  loc_A5CAB9: LitStr "U. Ejec."
  loc_A5CABC: FLdRfVar var_B8
  loc_A5CABF: LitVarI2 var_B4, 3
  loc_A5CAC4: PopAdLdVar
  loc_A5CAC5: FLdPr Me
  loc_A5CAC8: VCallAd Control_ID_dgdABMS
  loc_A5CACB: FStAdFunc var_88
  loc_A5CACE: FLdPr var_88
  loc_A5CAD1: LateIdLdVar var_A4 DispID_105 0
  loc_A5CAD8: CastAdVar Me
  loc_A5CADC: FStAdFunc var_94
  loc_A5CADF: FLdPr var_94
  loc_A5CAE2: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A5CAE7: FLdPr var_B8
  loc_A5CAEA: Me.Caption = from_stack_1
  loc_A5CAEF: FFreeAd var_88 = "": var_94 = ""
  loc_A5CAF8: FFree1Var var_A4 = ""
  loc_A5CAFB: ImpAdLdI2 MemVar_C3D064
  loc_A5CAFE: LitI2 2025
  loc_A5CB01: LeI2
  loc_A5CB02: BranchF loc_A5CB22
  loc_A5CB05: LitVarI4
  loc_A5CB0D: PopAdLdVar
  loc_A5CB0E: FLdPr Me
  loc_A5CB11: VCallAd Control_ID_dgdABMS
  loc_A5CB14: FStAdFunc var_88
  loc_A5CB17: FLdPr var_88
  loc_A5CB1A: LateIdSt
  loc_A5CB1F: FFree1Ad var_88
  loc_A5CB22: LitVarStr var_B4, "######"
  loc_A5CB27: PopAdLdVar
  loc_A5CB28: FLdPr Me
  loc_A5CB2B: VCallAd Control_ID_CodiOrgaMsk
  loc_A5CB2E: FStAdFunc var_88
  loc_A5CB31: FLdPr var_88
  loc_A5CB34: LateIdSt
  loc_A5CB39: FFree1Ad var_88
  loc_A5CB3C: LitVarStr var_B4, "#.#.#.#.##.##"
  loc_A5CB41: PopAdLdVar
  loc_A5CB42: FLdPr Me
  loc_A5CB45: VCallAd Control_ID_CodiPartMsk
  loc_A5CB48: FStAdFunc var_88
  loc_A5CB4B: FLdPr var_88
  loc_A5CB4E: LateIdSt
  loc_A5CB53: FFree1Ad var_88
  loc_A5CB56: LitVarStr var_B4, "##.##.##"
  loc_A5CB5B: PopAdLdVar
  loc_A5CB5C: FLdPr Me
  loc_A5CB5F: VCallAd Control_ID_CodiFifuMsk
  loc_A5CB62: FStAdFunc var_88
  loc_A5CB65: FLdPr var_88
  loc_A5CB68: LateIdSt
  loc_A5CB6D: FFree1Ad var_88
  loc_A5CB70: LitVarStr var_B4, vbNullString
  loc_A5CB75: PopAdLdVar
  loc_A5CB76: FLdPr Me
  loc_A5CB79: VCallAd Control_ID_ExorImpuMsk
  loc_A5CB7C: FStAdFunc var_88
  loc_A5CB7F: FLdPr var_88
  loc_A5CB82: LateIdSt
  loc_A5CB87: FFree1Ad var_88
  loc_A5CB8A: ILdRf Me
  loc_A5CB8D: CastAd
  loc_A5CB90: FStAdFunc var_88
  loc_A5CB93: FLdRfVar var_88
  loc_A5CB96: ImpAdCallFPR4 Proc_261_41_999BCC()
  loc_A5CB9B: FFree1Ad var_88
  loc_A5CB9E: ILdRf Me
  loc_A5CBA1: CastAd
  loc_A5CBA4: FStAdFunc var_88
  loc_A5CBA7: FLdRfVar var_88
  loc_A5CBAA: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A5CBAF: FFree1Ad var_88
  loc_A5CBB2: LitI2_Byte 0
  loc_A5CBB4: CR8I2
  loc_A5CBB5: PopFPR4
  loc_A5CBB6: FLdPr Me
  loc_A5CBB9: Me.Left = from_stack_1s
  loc_A5CBBE: LitI2_Byte 0
  loc_A5CBC0: CR8I2
  loc_A5CBC1: PopFPR4
  loc_A5CBC2: FLdPr Me
  loc_A5CBC5: Me.Top = from_stack_1s
  loc_A5CBCA: LitI2_Byte &HFF
  loc_A5CBCC: FLdPr Me
  loc_A5CBCF: VCallAd Control_ID_TifaDeveCbo
  loc_A5CBD2: FStAdFunc var_88
  loc_A5CBD5: FLdRfVar var_88
  loc_A5CBD8: ImpAdCallFPR4 Proc_261_56_9A8F4C(, )
  loc_A5CBDD: FFree1Ad var_88
  loc_A5CBE0: LitStr vbNullString
  loc_A5CBE3: FLdPr Me
  loc_A5CBE6: MemStStrCopy
  loc_A5CBEA: LitI4 0
  loc_A5CBEF: LitI4 0
  loc_A5CBF4: LitI4 0
  loc_A5CBF9: LitI4 0
  loc_A5CBFE: LitI4 0
  loc_A5CC03: Call Proc_144_69_AB40F4()
  loc_A5CC08: LitVarI2 var_B4, 0
  loc_A5CC0D: PopAdLdVar
  loc_A5CC0E: LitStr "Orden Pago"
  loc_A5CC11: FLdPr Me
  loc_A5CC14: VCallAd Control_ID_FiltroCbo
  loc_A5CC17: FStAdFunc var_88
  loc_A5CC1A: FLdPr var_88
  loc_A5CC1D: Me.AddItem from_stack_1, from_stack_2
  loc_A5CC22: FFree1Ad var_88
  loc_A5CC25: LitVarI2 var_B4, 1
  loc_A5CC2A: PopAdLdVar
  loc_A5CC2B: LitStr "Expediente Original"
  loc_A5CC2E: FLdPr Me
  loc_A5CC31: VCallAd Control_ID_FiltroCbo
  loc_A5CC34: FStAdFunc var_88
  loc_A5CC37: FLdPr var_88
  loc_A5CC3A: Me.AddItem from_stack_1, from_stack_2
  loc_A5CC3F: FFree1Ad var_88
  loc_A5CC42: LitVarI2 var_B4, 2
  loc_A5CC47: PopAdLdVar
  loc_A5CC48: LitStr "Expediente de Pago"
  loc_A5CC4B: FLdPr Me
  loc_A5CC4E: VCallAd Control_ID_FiltroCbo
  loc_A5CC51: FStAdFunc var_88
  loc_A5CC54: FLdPr var_88
  loc_A5CC57: Me.AddItem from_stack_1, from_stack_2
  loc_A5CC5C: FFree1Ad var_88
  loc_A5CC5F: LitVarI2 var_B4, 3
  loc_A5CC64: PopAdLdVar
  loc_A5CC65: LitStr "Detalle de la imputación"
  loc_A5CC68: FLdPr Me
  loc_A5CC6B: VCallAd Control_ID_FiltroCbo
  loc_A5CC6E: FStAdFunc var_88
  loc_A5CC71: FLdPr var_88
  loc_A5CC74: Me.AddItem from_stack_1, from_stack_2
  loc_A5CC79: FFree1Ad var_88
  loc_A5CC7C: LitVarI2 var_B4, 4
  loc_A5CC81: PopAdLdVar
  loc_A5CC82: LitStr "Partida (código)"
  loc_A5CC85: FLdPr Me
  loc_A5CC88: VCallAd Control_ID_FiltroCbo
  loc_A5CC8B: FStAdFunc var_88
  loc_A5CC8E: FLdPr var_88
  loc_A5CC91: Me.AddItem from_stack_1, from_stack_2
  loc_A5CC96: FFree1Ad var_88
  loc_A5CC99: LitVarI2 var_B4, 5
  loc_A5CC9E: PopAdLdVar
  loc_A5CC9F: LitStr "U. Ejec."
  loc_A5CCA2: LitStr " (código)"
  loc_A5CCA5: ConcatStr
  loc_A5CCA6: FStStrNoPop var_8C
  loc_A5CCA9: FLdPr Me
  loc_A5CCAC: VCallAd Control_ID_FiltroCbo
  loc_A5CCAF: FStAdFunc var_88
  loc_A5CCB2: FLdPr var_88
  loc_A5CCB5: Me.AddItem from_stack_1, from_stack_2
  loc_A5CCBA: FFree1Str var_8C
  loc_A5CCBD: FFree1Ad var_88
  loc_A5CCC0: LitVarI2 var_B4, 6
  loc_A5CCC5: PopAdLdVar
  loc_A5CCC6: LitStr "Finalidad (código)"
  loc_A5CCC9: FLdPr Me
  loc_A5CCCC: VCallAd Control_ID_FiltroCbo
  loc_A5CCCF: FStAdFunc var_88
  loc_A5CCD2: FLdPr var_88
  loc_A5CCD5: Me.AddItem from_stack_1, from_stack_2
  loc_A5CCDA: FFree1Ad var_88
  loc_A5CCDD: LitVarI2 var_B4, 7
  loc_A5CCE2: PopAdLdVar
  loc_A5CCE3: LitStr "Proveedor (detalle)"
  loc_A5CCE6: FLdPr Me
  loc_A5CCE9: VCallAd Control_ID_FiltroCbo
  loc_A5CCEC: FStAdFunc var_88
  loc_A5CCEF: FLdPr var_88
  loc_A5CCF2: Me.AddItem from_stack_1, from_stack_2
  loc_A5CCF7: FFree1Ad var_88
  loc_A5CCFA: LitI2_Byte 0
  loc_A5CCFC: FLdPr Me
  loc_A5CCFF: VCallAd Control_ID_FiltroCbo
  loc_A5CD02: FStAdFunc var_88
  loc_A5CD05: FLdPr var_88
  loc_A5CD08: Me.ListIndex = from_stack_1
  loc_A5CD0D: FFree1Ad var_88
  loc_A5CD10: Call cmdCancelar_Click()
  loc_A5CD15: LitI4 0
  loc_A5CD1A: LitI4 1
  loc_A5CD1F: FLdRfVar var_CC
  loc_A5CD22: Redim
  loc_A5CD2C: FLdPr Me
  loc_A5CD2F: MemLdRfVar from_stack_1.global_52
  loc_A5CD32: NewIfNullAd
  loc_A5CD35: FStAd var_88 
  loc_A5CD39: FLdRfVar var_88
  loc_A5CD3C: CVarRef
  loc_A5CD41: ParmAry1St
  loc_A5CD47: FLdPr Me
  loc_A5CD4A: VCallAd Control_ID_dgdABMS
  loc_A5CD4D: CVarAd
  loc_A5CD51: ParmAry1St
  loc_A5CD57: FLdRfVar var_CC
  loc_A5CD5A: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A5CD5F: ILdRf var_88
  loc_A5CD62: CastAd
  loc_A5CD65: FLdPr Me
  loc_A5CD68: MemStAdFunc
  loc_A5CD6C: FLdRfVar var_CC
  loc_A5CD6F: Erase
  loc_A5CD70: FFree1Ad var_88
  loc_A5CD73: ExitProcHresult
End Sub

Private Sub Form_Activate(arg_18) '9A1E94
  'Data Table: 4FA290
  loc_9A1E28: FLdRfVar var_C2
  loc_9A1E2B: FLdRfVar var_C0
  loc_9A1E2E: LitVarI2 var_B8, 1
  loc_9A1E33: FLdPr Me
  loc_9A1E36: VCallAd Control_ID_tlbABMS
  loc_9A1E39: FStAdFunc var_88
  loc_9A1E3C: FLdPr var_88
  loc_9A1E3F: LateIdLdVar var_98 DispID_3 0
  loc_9A1E46: CastAdVar Me
  loc_9A1E4A: FStAdFunc var_BC
  loc_9A1E4D: FLdPr var_BC
  loc_9A1E50:  = Me.Buttons.ControlDefault
  loc_9A1E55: FLdPr var_C0
  loc_9A1E58:  = Me.Enabled
  loc_9A1E5D: FLdI2 var_C2
  loc_9A1E60: FFreeAd var_88 = "": var_BC = ""
  loc_9A1E69: FFreeVar var_98 = ""
  loc_9A1E70: BranchF loc_9A1E91
  loc_9A1E73: LitI4 0
  loc_9A1E78: LitI4 0
  loc_9A1E7D: LitI4 0
  loc_9A1E82: LitI4 0
  loc_9A1E87: LitI4 0
  loc_9A1E8C: Call Proc_144_69_AB40F4()
  loc_9A1E91: ExitProcHresult
  loc_9A1E92: FStFPR8 arg_1800
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '948BCC
  'Data Table: 4FA290
  loc_948BB8: ILdI2 KeyAscii
  loc_948BBB: CI4UI1
  loc_948BBC: LitI4 &HD
  loc_948BC1: EqI4
  loc_948BC2: BranchF loc_948BCA
  loc_948BC5: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_948BCA: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9597F8
  'Data Table: 4FA290
  loc_9597E0: ILdI2 KeyCode
  loc_9597E3: ILdRf Me
  loc_9597E6: CastAd
  loc_9597E9: FStAdFunc var_88
  loc_9597EC: FLdRfVar var_88
  loc_9597EF: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_9597F4: FFree1Ad var_88
  loc_9597F7: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '9AA384
  'Data Table: 4FA290
  loc_9AA2EC: LitVarStr var_94, vbNullString
  loc_9AA2F1: PopAdLdVar
  loc_9AA2F2: FLdPr Me
  loc_9AA2F5: VCallAd Control_ID_CodiPartMsk
  loc_9AA2F8: FStAdFunc var_A8
  loc_9AA2FB: FLdPr var_A8
  loc_9AA2FE: LateIdSt
  loc_9AA303: FFree1Ad var_A8
  loc_9AA306: FLdPr Me
  loc_9AA309: VCallAd Control_ID_CodiPartMsk
  loc_9AA30C: FStAdFunc var_A8
  loc_9AA30F: FLdPr var_A8
  loc_9AA312: LateIdLdVar var_B8 DispID_22 0
  loc_9AA319: CStrVarTmp
  loc_9AA31A: FStStrNoPop var_BC
  loc_9AA31D: LitStr "_._._._.__.__"
  loc_9AA320: EqStr
  loc_9AA322: FFree1Str var_BC
  loc_9AA325: FFree1Ad var_A8
  loc_9AA328: FFree1Var var_B8 = ""
  loc_9AA32B: BranchF loc_9AA348
  loc_9AA32E: LitVarStr var_94, vbNullString
  loc_9AA333: PopAdLdVar
  loc_9AA334: FLdPr Me
  loc_9AA337: VCallAd Control_ID_CodiPartMsk
  loc_9AA33A: FStAdFunc var_A8
  loc_9AA33D: FLdPr var_A8
  loc_9AA340: LateIdSt
  loc_9AA345: FFree1Ad var_A8
  loc_9AA348: FLdPr Me
  loc_9AA34B: VCallAd Control_ID_CodiPartMsk
  loc_9AA34E: FStAdFunc var_A8
  loc_9AA351: FLdPr var_A8
  loc_9AA354: LateIdLdVar var_B8 DispID_22 0
  loc_9AA35B: CStrVarTmp
  loc_9AA35C: FStStrNoPop var_BC
  loc_9AA35F: LitStr vbNullString
  loc_9AA362: EqStr
  loc_9AA364: FFree1Str var_BC
  loc_9AA367: FFree1Ad var_A8
  loc_9AA36A: FFree1Var var_B8 = ""
  loc_9AA36D: BranchF loc_9AA370
  loc_9AA370: FLdPr Me
  loc_9AA373: VCallAd Control_ID_CodiPartMsk
  loc_9AA376: CVarAd
  loc_9AA37A: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9AA37F: FFree1Var var_B8 = ""
  loc_9AA382: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_1 '96A81C
  'Data Table: 4FA290
  loc_96A800: LitVarStr var_94, "#.#.#.#.##.##"
  loc_96A805: PopAdLdVar
  loc_96A806: FLdPr Me
  loc_96A809: VCallAd Control_ID_CodiPartMsk
  loc_96A80C: FStAdFunc var_A8
  loc_96A80F: FLdPr var_A8
  loc_96A812: LateIdSt
  loc_96A817: FFree1Ad var_A8
  loc_96A81A: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'BB0960
  'Data Table: 4FA290
  loc_BAF9B0: FLdRfVar var_92
  loc_BAF9B3: FLdPr Me
  loc_BAF9B6: VCallAd Control_ID_cmdCancelar
  loc_BAF9B9: FStAdFunc var_90
  loc_BAF9BC: FLdPr var_90
  loc_BAF9BF:  = Me.Value
  loc_BAF9C4: FLdI2 var_92
  loc_BAF9C7: NotI4
  loc_BAF9C8: FLdPr Me
  loc_BAF9CB: VCallAd Control_ID_CodiPartMsk
  loc_BAF9CE: FStAdFunc var_98
  loc_BAF9D1: FLdPr var_98
  loc_BAF9D4: LateIdLdVar var_A8 DispID_13 -32767
  loc_BAF9DB: CBoolVar
  loc_BAF9DD: AndI4
  loc_BAF9DE: FFreeAd var_90 = ""
  loc_BAF9E5: FFree1Var var_A8 = ""
  loc_BAF9E8: BranchF loc_BB0663
  loc_BAF9EB: FLdPr Me
  loc_BAF9EE: VCallAd Control_ID_CodiPartMsk
  loc_BAF9F1: FStAdFunc var_90
  loc_BAF9F4: FLdPr var_90
  loc_BAF9F7: LateIdLdVar var_A8 DispID_22 0
  loc_BAF9FE: CStrVarTmp
  loc_BAF9FF: FStStrNoPop var_AC
  loc_BAFA02: ImpAdCallI2 Trim$()
  loc_BAFA07: FStStrNoPop var_B0
  loc_BAFA0A: LitStr vbNullString
  loc_BAFA0D: NeStr
  loc_BAFA0F: FFreeStr var_AC = ""
  loc_BAFA16: FFree1Ad var_90
  loc_BAFA19: FFree1Var var_A8 = ""
  loc_BAFA1C: BranchF loc_BB031E
  loc_BAFA1F: FLdPr Me
  loc_BAFA22: VCallAd Control_ID_CodiPartMsk
  loc_BAFA25: FStAdFunc var_90
  loc_BAFA28: FLdRfVar var_90
  loc_BAFA2B: ImpAdCallI2 Proc_266_40_A1E128()
  loc_BAFA30: FFree1Ad var_90
  loc_BAFA33: BranchF loc_BAFEAA
  loc_BAFA36: FLdRfVar var_DC
  loc_BAFA39: FLdRfVar var_C4
  loc_BAFA3C: LitVarStr var_C0, "CodiInsu"
  loc_BAFA41: PopAdLdVar
  loc_BAFA42: FLdRfVar var_98
  loc_BAFA45: FLdRfVar var_90
  loc_BAFA48: FLdPr Me
  loc_BAFA4B: MemLdRfVar from_stack_1.global_52
  loc_BAFA4E: NewIfNullPr clsimputacion
  loc_BAFA51: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BAFA56: FLdPr var_90
  loc_BAFA59:  = Me.Fields
  loc_BAFA5E: FLdPr var_98
  loc_BAFA61: from_stack_2 = Me.Item(from_stack_1)
  loc_BAFA66: FLdPr var_C4
  loc_BAFA69:  = Me.Value
  loc_BAFA6E: FLdPr Me
  loc_BAFA71: VCallAd Control_ID_CodiPartMsk
  loc_BAFA74: FStAdFunc var_C8
  loc_BAFA77: FLdPr var_C8
  loc_BAFA7A: LateIdLdVar var_A8 DispID_22 0
  loc_BAFA81: PopAd
  loc_BAFA83: LitStr " AND partida.CodiPart LIKE '"
  loc_BAFA86: LitI4 0
  loc_BAFA8B: LitI4 -1
  loc_BAFA90: LitI4 1
  loc_BAFA95: LitStr vbNullString
  loc_BAFA98: LitStr "."
  loc_BAFA9B: FLdRfVar var_A8
  loc_BAFA9E: CStrVarTmp
  loc_BAFA9F: FStStrNoPop var_AC
  loc_BAFAA2: ImpAdCallI2 Replace(, , , , , )
  loc_BAFAA7: FStStrNoPop var_B0
  loc_BAFAAA: ConcatStr
  loc_BAFAAB: FStStrNoPop var_CC
  loc_BAFAAE: LitStr Chr(37) & "' ORDER BY partida.CodiPart;"
  loc_BAFAB1: ConcatStr
  loc_BAFAB2: FStStrNoPop var_E4
  loc_BAFAB5: FLdRfVar var_DC
  loc_BAFAB8: CStrVarTmp
  loc_BAFAB9: FStStrNoPop var_E0
  loc_BAFABC: ImpAdLdI2 MemVar_C3D064
  loc_BAFABF: ImpAdLdRf MemVar_C3D724
  loc_BAFAC2: NewIfNullPr bscPartida
  loc_BAFAC5: Call bscPartida.Constructor(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BAFACA: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_E0 = ""
  loc_BAFAD7: FFreeAd var_90 = "": var_98 = "": var_C8 = ""
  loc_BAFAE2: FFreeVar var_A8 = ""
  loc_BAFAE9: FLdRfVar var_E8
  loc_BAFAEC: FLdRfVar var_98
  loc_BAFAEF: FLdRfVar var_90
  loc_BAFAF2: ImpAdLdRf MemVar_C3D724
  loc_BAFAF5: NewIfNullPr bscPartida
  loc_BAFAF8: from_stack_1v = bscPartida.global_4332396Get()
  loc_BAFAFD: FLdPr var_90
  loc_BAFB00: from_stack_1v = clsbase.RsFrmGet()
  loc_BAFB05: FLdPr var_98
  loc_BAFB08:  = Me.RecordCount
  loc_BAFB0D: ILdRf var_E8
  loc_BAFB10: LitI4 1
  loc_BAFB15: EqI4
  loc_BAFB16: FFreeAd var_90 = ""
  loc_BAFB1D: BranchF loc_BAFC44
  loc_BAFB20: FLdRfVar var_A8
  loc_BAFB23: FLdRfVar var_C8
  loc_BAFB26: LitVarStr var_C0, "CodiPart"
  loc_BAFB2B: PopAdLdVar
  loc_BAFB2C: FLdRfVar var_C4
  loc_BAFB2F: FLdRfVar var_98
  loc_BAFB32: FLdRfVar var_90
  loc_BAFB35: ImpAdLdRf MemVar_C3D724
  loc_BAFB38: NewIfNullPr bscPartida
  loc_BAFB3B: from_stack_1v = bscPartida.global_4332396Get()
  loc_BAFB40: FLdPr var_90
  loc_BAFB43: from_stack_1v = clsbase.RsFrmGet()
  loc_BAFB48: FLdPr var_98
  loc_BAFB4B:  = Me.Fields
  loc_BAFB50: FLdPr var_C4
  loc_BAFB53: from_stack_2 = Me.Item(from_stack_1)
  loc_BAFB58: FLdPr var_C8
  loc_BAFB5B:  = Me.Value
  loc_BAFB60: FLdRfVar var_AC
  loc_BAFB63: FLdPr Me
  loc_BAFB66:  = Me.Name
  loc_BAFB6B: FLdPr Me
  loc_BAFB6E: MemLdRfVar from_stack_1.global_92
  loc_BAFB71: NewIfNullRf
  loc_BAFB75: ILdRf var_AC
  loc_BAFB78: LitI2_Byte &HFF
  loc_BAFB7A: FLdRfVar var_A8
  loc_BAFB7D: CStrVarTmp
  loc_BAFB7E: FStStrNoPop var_B0
  loc_BAFB81: ImpAdLdI2 MemVar_C3D064
  loc_BAFB84: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_BAFB89: FStStrNoPop var_CC
  loc_BAFB8C: FLdPr Me
  loc_BAFB8F: MemStStrCopy
  loc_BAFB93: FFreeStr var_B0 = "": var_AC = ""
  loc_BAFB9C: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BAFBA7: FFree1Var var_A8 = ""
  loc_BAFBAA: FLdRfVar var_AC
  loc_BAFBAD: FLdPr Me
  loc_BAFBB0: MemLdRfVar from_stack_1.global_92
  loc_BAFBB3: NewIfNullPr tblpartida
  loc_BAFBB6: from_stack_1v = tblpartida.CodiPartGet()
  loc_BAFBBB: FLdZeroAd var_AC
  loc_BAFBBE: CVarStr var_A8
  loc_BAFBC1: PopAdLdVar
  loc_BAFBC2: FLdPr Me
  loc_BAFBC5: VCallAd Control_ID_CodiPartMsk
  loc_BAFBC8: FStAdFunc var_90
  loc_BAFBCB: FLdPr var_90
  loc_BAFBCE: LateIdSt
  loc_BAFBD3: FFree1Ad var_90
  loc_BAFBD6: FFree1Var var_A8 = ""
  loc_BAFBD9: FLdRfVar var_AC
  loc_BAFBDC: FLdPr Me
  loc_BAFBDF: MemLdRfVar from_stack_1.global_92
  loc_BAFBE2: NewIfNullPr tblpartida
  loc_BAFBE5: from_stack_1v = tblpartida.DetaPartGet()
  loc_BAFBEA: ILdRf var_AC
  loc_BAFBED: FLdPr Me
  loc_BAFBF0: VCallAd Control_ID_DetaPartLbl
  loc_BAFBF3: FStAdFunc var_90
  loc_BAFBF6: FLdPr var_90
  loc_BAFBF9: Me.Caption = from_stack_1
  loc_BAFBFE: FFree1Str var_AC
  loc_BAFC01: FFree1Ad var_90
  loc_BAFC04: FLdPr Me
  loc_BAFC07: VCallAd Control_ID_CodiPartMsk
  loc_BAFC0A: FStAdFunc var_C8
  loc_BAFC0D: FLdPr Me
  loc_BAFC10: VCallAd Control_ID_DetaPartLbl
  loc_BAFC13: FStAdFunc var_C4
  loc_BAFC16: FLdRfVar var_C4
  loc_BAFC19: FLdZeroAd var_C8
  loc_BAFC1C: FStAdFuncNoPop
  loc_BAFC1F: CastAd
  loc_BAFC22: FStAdFunc var_98
  loc_BAFC25: FLdRfVar var_98
  loc_BAFC28: FLdPr Me
  loc_BAFC2B: MemLdRfVar from_stack_1.global_64
  loc_BAFC2E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BAFC33: IStI2 KeyCode
  loc_BAFC36: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BAFC41: Branch loc_BAFEA7
  loc_BAFC44: FLdRfVar var_E8
  loc_BAFC47: FLdRfVar var_98
  loc_BAFC4A: FLdRfVar var_90
  loc_BAFC4D: ImpAdLdRf MemVar_C3D724
  loc_BAFC50: NewIfNullPr bscPartida
  loc_BAFC53: from_stack_1v = bscPartida.global_4332396Get()
  loc_BAFC58: FLdPr var_90
  loc_BAFC5B: from_stack_1v = clsbase.RsFrmGet()
  loc_BAFC60: FLdPr var_98
  loc_BAFC63:  = Me.RecordCount
  loc_BAFC68: ILdRf var_E8
  loc_BAFC6B: LitI4 1
  loc_BAFC70: GtI4
  loc_BAFC71: FFreeAd var_90 = ""
  loc_BAFC78: BranchF loc_BAFE29
  loc_BAFC7B: LitVar_Missing var_F8
  loc_BAFC7E: PopAdLdVar
  loc_BAFC7F: LitVarI4
  loc_BAFC87: PopAdLdVar
  loc_BAFC88: ImpAdLdRf MemVar_C3D724
  loc_BAFC8B: NewIfNullPr bscPartida
  loc_BAFC8E: bscPartida.Show from_stack_1, from_stack_2
  loc_BAFC93: FLdRfVar var_E8
  loc_BAFC96: FLdRfVar var_90
  loc_BAFC99: ImpAdLdRf MemVar_C3D724
  loc_BAFC9C: NewIfNullPr bscPartida
  loc_BAFC9F: from_stack_1v = bscPartida.global_4332396Get()
  loc_BAFCA4: FLdPr var_90
  loc_BAFCA7: from_stack_1 = clsbase.RecordCount
  loc_BAFCAC: ILdRf var_E8
  loc_BAFCAF: LitI4 0
  loc_BAFCB4: GtI4
  loc_BAFCB5: FFree1Ad var_90
  loc_BAFCB8: BranchF loc_BAFDDF
  loc_BAFCBB: FLdRfVar var_A8
  loc_BAFCBE: FLdRfVar var_C8
  loc_BAFCC1: LitVarStr var_C0, "CodiPart"
  loc_BAFCC6: PopAdLdVar
  loc_BAFCC7: FLdRfVar var_C4
  loc_BAFCCA: FLdRfVar var_98
  loc_BAFCCD: FLdRfVar var_90
  loc_BAFCD0: ImpAdLdRf MemVar_C3D724
  loc_BAFCD3: NewIfNullPr bscPartida
  loc_BAFCD6: from_stack_1v = bscPartida.global_4332396Get()
  loc_BAFCDB: FLdPr var_90
  loc_BAFCDE: from_stack_1v = clsbase.RsFrmGet()
  loc_BAFCE3: FLdPr var_98
  loc_BAFCE6:  = Me.Fields
  loc_BAFCEB: FLdPr var_C4
  loc_BAFCEE: from_stack_2 = Me.Item(from_stack_1)
  loc_BAFCF3: FLdPr var_C8
  loc_BAFCF6:  = Me.Value
  loc_BAFCFB: FLdRfVar var_AC
  loc_BAFCFE: FLdPr Me
  loc_BAFD01:  = Me.Name
  loc_BAFD06: FLdPr Me
  loc_BAFD09: MemLdRfVar from_stack_1.global_92
  loc_BAFD0C: NewIfNullRf
  loc_BAFD10: ILdRf var_AC
  loc_BAFD13: LitI2_Byte &HFF
  loc_BAFD15: FLdRfVar var_A8
  loc_BAFD18: CStrVarTmp
  loc_BAFD19: FStStrNoPop var_B0
  loc_BAFD1C: ImpAdLdI2 MemVar_C3D064
  loc_BAFD1F: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_BAFD24: FStStrNoPop var_CC
  loc_BAFD27: FLdPr Me
  loc_BAFD2A: MemStStrCopy
  loc_BAFD2E: FFreeStr var_B0 = "": var_AC = ""
  loc_BAFD37: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BAFD42: FFree1Var var_A8 = ""
  loc_BAFD45: FLdRfVar var_AC
  loc_BAFD48: FLdPr Me
  loc_BAFD4B: MemLdRfVar from_stack_1.global_92
  loc_BAFD4E: NewIfNullPr tblpartida
  loc_BAFD51: from_stack_1v = tblpartida.CodiPartGet()
  loc_BAFD56: FLdZeroAd var_AC
  loc_BAFD59: CVarStr var_A8
  loc_BAFD5C: PopAdLdVar
  loc_BAFD5D: FLdPr Me
  loc_BAFD60: VCallAd Control_ID_CodiPartMsk
  loc_BAFD63: FStAdFunc var_90
  loc_BAFD66: FLdPr var_90
  loc_BAFD69: LateIdSt
  loc_BAFD6E: FFree1Ad var_90
  loc_BAFD71: FFree1Var var_A8 = ""
  loc_BAFD74: FLdRfVar var_AC
  loc_BAFD77: FLdPr Me
  loc_BAFD7A: MemLdRfVar from_stack_1.global_92
  loc_BAFD7D: NewIfNullPr tblpartida
  loc_BAFD80: from_stack_1v = tblpartida.DetaPartGet()
  loc_BAFD85: ILdRf var_AC
  loc_BAFD88: FLdPr Me
  loc_BAFD8B: VCallAd Control_ID_DetaPartLbl
  loc_BAFD8E: FStAdFunc var_90
  loc_BAFD91: FLdPr var_90
  loc_BAFD94: Me.Caption = from_stack_1
  loc_BAFD99: FFree1Str var_AC
  loc_BAFD9C: FFree1Ad var_90
  loc_BAFD9F: FLdPr Me
  loc_BAFDA2: VCallAd Control_ID_CodiPartMsk
  loc_BAFDA5: FStAdFunc var_C8
  loc_BAFDA8: FLdPr Me
  loc_BAFDAB: VCallAd Control_ID_DetaPartLbl
  loc_BAFDAE: FStAdFunc var_C4
  loc_BAFDB1: FLdRfVar var_C4
  loc_BAFDB4: FLdZeroAd var_C8
  loc_BAFDB7: FStAdFuncNoPop
  loc_BAFDBA: CastAd
  loc_BAFDBD: FStAdFunc var_98
  loc_BAFDC0: FLdRfVar var_98
  loc_BAFDC3: FLdPr Me
  loc_BAFDC6: MemLdRfVar from_stack_1.global_64
  loc_BAFDC9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BAFDCE: IStI2 KeyCode
  loc_BAFDD1: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BAFDDC: Branch loc_BAFE26
  loc_BAFDDF: LitStr "La Partida NO EXISTE. Verifique..."
  loc_BAFDE2: FLdPr Me
  loc_BAFDE5: MemStStrCopy
  loc_BAFDE9: FLdPr Me
  loc_BAFDEC: VCallAd Control_ID_CodiPartMsk
  loc_BAFDEF: FStAdFunc var_C8
  loc_BAFDF2: FLdPr Me
  loc_BAFDF5: VCallAd Control_ID_DetaPartLbl
  loc_BAFDF8: FStAdFunc var_C4
  loc_BAFDFB: FLdRfVar var_C4
  loc_BAFDFE: FLdZeroAd var_C8
  loc_BAFE01: FStAdFuncNoPop
  loc_BAFE04: CastAd
  loc_BAFE07: FStAdFunc var_98
  loc_BAFE0A: FLdRfVar var_98
  loc_BAFE0D: FLdPr Me
  loc_BAFE10: MemLdRfVar from_stack_1.global_64
  loc_BAFE13: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BAFE18: IStI2 KeyCode
  loc_BAFE1B: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BAFE26: Branch loc_BAFEA7
  loc_BAFE29: FLdRfVar var_E8
  loc_BAFE2C: FLdRfVar var_98
  loc_BAFE2F: FLdRfVar var_90
  loc_BAFE32: ImpAdLdRf MemVar_C3D724
  loc_BAFE35: NewIfNullPr bscPartida
  loc_BAFE38: from_stack_1v = bscPartida.global_4332396Get()
  loc_BAFE3D: FLdPr var_90
  loc_BAFE40: from_stack_1v = clsbase.RsFrmGet()
  loc_BAFE45: FLdPr var_98
  loc_BAFE48:  = Me.RecordCount
  loc_BAFE4D: ILdRf var_E8
  loc_BAFE50: LitI4 1
  loc_BAFE55: LtI4
  loc_BAFE56: FFreeAd var_90 = ""
  loc_BAFE5D: BranchF loc_BAFEA7
  loc_BAFE60: LitStr "La Partida NO EXISTE. Verifique..."
  loc_BAFE63: FLdPr Me
  loc_BAFE66: MemStStrCopy
  loc_BAFE6A: FLdPr Me
  loc_BAFE6D: VCallAd Control_ID_CodiPartMsk
  loc_BAFE70: FStAdFunc var_C8
  loc_BAFE73: FLdPr Me
  loc_BAFE76: VCallAd Control_ID_DetaPartLbl
  loc_BAFE79: FStAdFunc var_C4
  loc_BAFE7C: FLdRfVar var_C4
  loc_BAFE7F: FLdZeroAd var_C8
  loc_BAFE82: FStAdFuncNoPop
  loc_BAFE85: CastAd
  loc_BAFE88: FStAdFunc var_98
  loc_BAFE8B: FLdRfVar var_98
  loc_BAFE8E: FLdPr Me
  loc_BAFE91: MemLdRfVar from_stack_1.global_64
  loc_BAFE94: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BAFE99: IStI2 KeyCode
  loc_BAFE9C: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BAFEA7: Branch loc_BB031B
  loc_BAFEAA: FLdRfVar var_DC
  loc_BAFEAD: FLdRfVar var_C4
  loc_BAFEB0: LitVarStr var_C0, "CodiInsu"
  loc_BAFEB5: PopAdLdVar
  loc_BAFEB6: FLdRfVar var_98
  loc_BAFEB9: FLdRfVar var_90
  loc_BAFEBC: FLdPr Me
  loc_BAFEBF: MemLdRfVar from_stack_1.global_52
  loc_BAFEC2: NewIfNullPr clsimputacion
  loc_BAFEC5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BAFECA: FLdPr var_90
  loc_BAFECD:  = Me.Fields
  loc_BAFED2: FLdPr var_98
  loc_BAFED5: from_stack_2 = Me.Item(from_stack_1)
  loc_BAFEDA: FLdPr var_C4
  loc_BAFEDD:  = Me.Value
  loc_BAFEE2: FLdPr Me
  loc_BAFEE5: VCallAd Control_ID_CodiPartMsk
  loc_BAFEE8: FStAdFunc var_C8
  loc_BAFEEB: FLdPr var_C8
  loc_BAFEEE: LateIdLdVar var_A8 DispID_22 0
  loc_BAFEF5: PopAd
  loc_BAFEF7: LitStr " AND DetaPart LIKE '" & Chr(37)
  loc_BAFEFA: LitI4 0
  loc_BAFEFF: LitI4 -1
  loc_BAFF04: LitI4 1
  loc_BAFF09: LitStr Chr(37)
  loc_BAFF0C: LitStr " "
  loc_BAFF0F: FLdRfVar var_A8
  loc_BAFF12: CStrVarTmp
  loc_BAFF13: FStStrNoPop var_AC
  loc_BAFF16: ImpAdCallI2 Replace(, , , , , )
  loc_BAFF1B: FStStrNoPop var_B0
  loc_BAFF1E: ConcatStr
  loc_BAFF1F: FStStrNoPop var_CC
  loc_BAFF22: LitStr Chr(37) & "' ORDER BY DetaPart"
  loc_BAFF25: ConcatStr
  loc_BAFF26: FStStrNoPop var_E4
  loc_BAFF29: FLdRfVar var_DC
  loc_BAFF2C: CStrVarTmp
  loc_BAFF2D: FStStrNoPop var_E0
  loc_BAFF30: ImpAdLdI2 MemVar_C3D064
  loc_BAFF33: ImpAdLdRf MemVar_C3D724
  loc_BAFF36: NewIfNullPr bscPartida
  loc_BAFF39: Call bscPartida.Constructor(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BAFF3E: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_E0 = ""
  loc_BAFF4B: FFreeAd var_90 = "": var_98 = "": var_C8 = ""
  loc_BAFF56: FFreeVar var_A8 = ""
  loc_BAFF5D: FLdRfVar var_E8
  loc_BAFF60: FLdRfVar var_98
  loc_BAFF63: FLdRfVar var_90
  loc_BAFF66: ImpAdLdRf MemVar_C3D724
  loc_BAFF69: NewIfNullPr bscPartida
  loc_BAFF6C: from_stack_1v = bscPartida.global_4332396Get()
  loc_BAFF71: FLdPr var_90
  loc_BAFF74: from_stack_1v = clsbase.RsFrmGet()
  loc_BAFF79: FLdPr var_98
  loc_BAFF7C:  = Me.RecordCount
  loc_BAFF81: ILdRf var_E8
  loc_BAFF84: LitI4 1
  loc_BAFF89: EqI4
  loc_BAFF8A: FFreeAd var_90 = ""
  loc_BAFF91: BranchF loc_BB00B8
  loc_BAFF94: FLdRfVar var_A8
  loc_BAFF97: FLdRfVar var_C8
  loc_BAFF9A: LitVarStr var_C0, "CodiPart"
  loc_BAFF9F: PopAdLdVar
  loc_BAFFA0: FLdRfVar var_C4
  loc_BAFFA3: FLdRfVar var_98
  loc_BAFFA6: FLdRfVar var_90
  loc_BAFFA9: ImpAdLdRf MemVar_C3D724
  loc_BAFFAC: NewIfNullPr bscPartida
  loc_BAFFAF: from_stack_1v = bscPartida.global_4332396Get()
  loc_BAFFB4: FLdPr var_90
  loc_BAFFB7: from_stack_1v = clsbase.RsFrmGet()
  loc_BAFFBC: FLdPr var_98
  loc_BAFFBF:  = Me.Fields
  loc_BAFFC4: FLdPr var_C4
  loc_BAFFC7: from_stack_2 = Me.Item(from_stack_1)
  loc_BAFFCC: FLdPr var_C8
  loc_BAFFCF:  = Me.Value
  loc_BAFFD4: FLdRfVar var_AC
  loc_BAFFD7: FLdPr Me
  loc_BAFFDA:  = Me.Name
  loc_BAFFDF: FLdPr Me
  loc_BAFFE2: MemLdRfVar from_stack_1.global_92
  loc_BAFFE5: NewIfNullRf
  loc_BAFFE9: ILdRf var_AC
  loc_BAFFEC: LitI2_Byte &HFF
  loc_BAFFEE: FLdRfVar var_A8
  loc_BAFFF1: CStrVarTmp
  loc_BAFFF2: FStStrNoPop var_B0
  loc_BAFFF5: ImpAdLdI2 MemVar_C3D064
  loc_BAFFF8: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_BAFFFD: FStStrNoPop var_CC
  loc_BB0000: FLdPr Me
  loc_BB0003: MemStStrCopy
  loc_BB0007: FFreeStr var_B0 = "": var_AC = ""
  loc_BB0010: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB001B: FFree1Var var_A8 = ""
  loc_BB001E: FLdRfVar var_AC
  loc_BB0021: FLdPr Me
  loc_BB0024: MemLdRfVar from_stack_1.global_92
  loc_BB0027: NewIfNullPr tblpartida
  loc_BB002A: from_stack_1v = tblpartida.CodiPartGet()
  loc_BB002F: FLdZeroAd var_AC
  loc_BB0032: CVarStr var_A8
  loc_BB0035: PopAdLdVar
  loc_BB0036: FLdPr Me
  loc_BB0039: VCallAd Control_ID_CodiPartMsk
  loc_BB003C: FStAdFunc var_90
  loc_BB003F: FLdPr var_90
  loc_BB0042: LateIdSt
  loc_BB0047: FFree1Ad var_90
  loc_BB004A: FFree1Var var_A8 = ""
  loc_BB004D: FLdRfVar var_AC
  loc_BB0050: FLdPr Me
  loc_BB0053: MemLdRfVar from_stack_1.global_92
  loc_BB0056: NewIfNullPr tblpartida
  loc_BB0059: from_stack_1v = tblpartida.DetaPartGet()
  loc_BB005E: ILdRf var_AC
  loc_BB0061: FLdPr Me
  loc_BB0064: VCallAd Control_ID_DetaPartLbl
  loc_BB0067: FStAdFunc var_90
  loc_BB006A: FLdPr var_90
  loc_BB006D: Me.Caption = from_stack_1
  loc_BB0072: FFree1Str var_AC
  loc_BB0075: FFree1Ad var_90
  loc_BB0078: FLdPr Me
  loc_BB007B: VCallAd Control_ID_CodiPartMsk
  loc_BB007E: FStAdFunc var_C8
  loc_BB0081: FLdPr Me
  loc_BB0084: VCallAd Control_ID_DetaPartLbl
  loc_BB0087: FStAdFunc var_C4
  loc_BB008A: FLdRfVar var_C4
  loc_BB008D: FLdZeroAd var_C8
  loc_BB0090: FStAdFuncNoPop
  loc_BB0093: CastAd
  loc_BB0096: FStAdFunc var_98
  loc_BB0099: FLdRfVar var_98
  loc_BB009C: FLdPr Me
  loc_BB009F: MemLdRfVar from_stack_1.global_64
  loc_BB00A2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB00A7: IStI2 KeyCode
  loc_BB00AA: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB00B5: Branch loc_BB031B
  loc_BB00B8: FLdRfVar var_E8
  loc_BB00BB: FLdRfVar var_98
  loc_BB00BE: FLdRfVar var_90
  loc_BB00C1: ImpAdLdRf MemVar_C3D724
  loc_BB00C4: NewIfNullPr bscPartida
  loc_BB00C7: from_stack_1v = bscPartida.global_4332396Get()
  loc_BB00CC: FLdPr var_90
  loc_BB00CF: from_stack_1v = clsbase.RsFrmGet()
  loc_BB00D4: FLdPr var_98
  loc_BB00D7:  = Me.RecordCount
  loc_BB00DC: ILdRf var_E8
  loc_BB00DF: LitI4 1
  loc_BB00E4: GtI4
  loc_BB00E5: FFreeAd var_90 = ""
  loc_BB00EC: BranchF loc_BB029D
  loc_BB00EF: LitVar_Missing var_F8
  loc_BB00F2: PopAdLdVar
  loc_BB00F3: LitVarI4
  loc_BB00FB: PopAdLdVar
  loc_BB00FC: ImpAdLdRf MemVar_C3D724
  loc_BB00FF: NewIfNullPr bscPartida
  loc_BB0102: bscPartida.Show from_stack_1, from_stack_2
  loc_BB0107: FLdRfVar var_E8
  loc_BB010A: FLdRfVar var_90
  loc_BB010D: ImpAdLdRf MemVar_C3D724
  loc_BB0110: NewIfNullPr bscPartida
  loc_BB0113: from_stack_1v = bscPartida.global_4332396Get()
  loc_BB0118: FLdPr var_90
  loc_BB011B: from_stack_1 = clsbase.RecordCount
  loc_BB0120: ILdRf var_E8
  loc_BB0123: LitI4 0
  loc_BB0128: GtI4
  loc_BB0129: FFree1Ad var_90
  loc_BB012C: BranchF loc_BB0253
  loc_BB012F: FLdRfVar var_A8
  loc_BB0132: FLdRfVar var_C8
  loc_BB0135: LitVarStr var_C0, "CodiPart"
  loc_BB013A: PopAdLdVar
  loc_BB013B: FLdRfVar var_C4
  loc_BB013E: FLdRfVar var_98
  loc_BB0141: FLdRfVar var_90
  loc_BB0144: ImpAdLdRf MemVar_C3D724
  loc_BB0147: NewIfNullPr bscPartida
  loc_BB014A: from_stack_1v = bscPartida.global_4332396Get()
  loc_BB014F: FLdPr var_90
  loc_BB0152: from_stack_1v = clsbase.RsFrmGet()
  loc_BB0157: FLdPr var_98
  loc_BB015A:  = Me.Fields
  loc_BB015F: FLdPr var_C4
  loc_BB0162: from_stack_2 = Me.Item(from_stack_1)
  loc_BB0167: FLdPr var_C8
  loc_BB016A:  = Me.Value
  loc_BB016F: FLdRfVar var_AC
  loc_BB0172: FLdPr Me
  loc_BB0175:  = Me.Name
  loc_BB017A: FLdPr Me
  loc_BB017D: MemLdRfVar from_stack_1.global_92
  loc_BB0180: NewIfNullRf
  loc_BB0184: ILdRf var_AC
  loc_BB0187: LitI2_Byte &HFF
  loc_BB0189: FLdRfVar var_A8
  loc_BB018C: CStrVarTmp
  loc_BB018D: FStStrNoPop var_B0
  loc_BB0190: ImpAdLdI2 MemVar_C3D064
  loc_BB0193: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_BB0198: FStStrNoPop var_CC
  loc_BB019B: FLdPr Me
  loc_BB019E: MemStStrCopy
  loc_BB01A2: FFreeStr var_B0 = "": var_AC = ""
  loc_BB01AB: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB01B6: FFree1Var var_A8 = ""
  loc_BB01B9: FLdRfVar var_AC
  loc_BB01BC: FLdPr Me
  loc_BB01BF: MemLdRfVar from_stack_1.global_92
  loc_BB01C2: NewIfNullPr tblpartida
  loc_BB01C5: from_stack_1v = tblpartida.CodiPartGet()
  loc_BB01CA: FLdZeroAd var_AC
  loc_BB01CD: CVarStr var_A8
  loc_BB01D0: PopAdLdVar
  loc_BB01D1: FLdPr Me
  loc_BB01D4: VCallAd Control_ID_CodiPartMsk
  loc_BB01D7: FStAdFunc var_90
  loc_BB01DA: FLdPr var_90
  loc_BB01DD: LateIdSt
  loc_BB01E2: FFree1Ad var_90
  loc_BB01E5: FFree1Var var_A8 = ""
  loc_BB01E8: FLdRfVar var_AC
  loc_BB01EB: FLdPr Me
  loc_BB01EE: MemLdRfVar from_stack_1.global_92
  loc_BB01F1: NewIfNullPr tblpartida
  loc_BB01F4: from_stack_1v = tblpartida.DetaPartGet()
  loc_BB01F9: ILdRf var_AC
  loc_BB01FC: FLdPr Me
  loc_BB01FF: VCallAd Control_ID_DetaPartLbl
  loc_BB0202: FStAdFunc var_90
  loc_BB0205: FLdPr var_90
  loc_BB0208: Me.Caption = from_stack_1
  loc_BB020D: FFree1Str var_AC
  loc_BB0210: FFree1Ad var_90
  loc_BB0213: FLdPr Me
  loc_BB0216: VCallAd Control_ID_CodiPartMsk
  loc_BB0219: FStAdFunc var_C8
  loc_BB021C: FLdPr Me
  loc_BB021F: VCallAd Control_ID_DetaPartLbl
  loc_BB0222: FStAdFunc var_C4
  loc_BB0225: FLdRfVar var_C4
  loc_BB0228: FLdZeroAd var_C8
  loc_BB022B: FStAdFuncNoPop
  loc_BB022E: CastAd
  loc_BB0231: FStAdFunc var_98
  loc_BB0234: FLdRfVar var_98
  loc_BB0237: FLdPr Me
  loc_BB023A: MemLdRfVar from_stack_1.global_64
  loc_BB023D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB0242: IStI2 KeyCode
  loc_BB0245: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB0250: Branch loc_BB029A
  loc_BB0253: LitStr "La Partida NO EXISTE. Verique..."
  loc_BB0256: FLdPr Me
  loc_BB0259: MemStStrCopy
  loc_BB025D: FLdPr Me
  loc_BB0260: VCallAd Control_ID_CodiPartMsk
  loc_BB0263: FStAdFunc var_C8
  loc_BB0266: FLdPr Me
  loc_BB0269: VCallAd Control_ID_DetaPartLbl
  loc_BB026C: FStAdFunc var_C4
  loc_BB026F: FLdRfVar var_C4
  loc_BB0272: FLdZeroAd var_C8
  loc_BB0275: FStAdFuncNoPop
  loc_BB0278: CastAd
  loc_BB027B: FStAdFunc var_98
  loc_BB027E: FLdRfVar var_98
  loc_BB0281: FLdPr Me
  loc_BB0284: MemLdRfVar from_stack_1.global_64
  loc_BB0287: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB028C: IStI2 KeyCode
  loc_BB028F: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB029A: Branch loc_BB031B
  loc_BB029D: FLdRfVar var_E8
  loc_BB02A0: FLdRfVar var_98
  loc_BB02A3: FLdRfVar var_90
  loc_BB02A6: ImpAdLdRf MemVar_C3D724
  loc_BB02A9: NewIfNullPr bscPartida
  loc_BB02AC: from_stack_1v = bscPartida.global_4332396Get()
  loc_BB02B1: FLdPr var_90
  loc_BB02B4: from_stack_1v = clsbase.RsFrmGet()
  loc_BB02B9: FLdPr var_98
  loc_BB02BC:  = Me.RecordCount
  loc_BB02C1: ILdRf var_E8
  loc_BB02C4: LitI4 1
  loc_BB02C9: LtI4
  loc_BB02CA: FFreeAd var_90 = ""
  loc_BB02D1: BranchF loc_BB031B
  loc_BB02D4: LitStr "La Partida NO EXISTE. Verique..."
  loc_BB02D7: FLdPr Me
  loc_BB02DA: MemStStrCopy
  loc_BB02DE: FLdPr Me
  loc_BB02E1: VCallAd Control_ID_CodiPartMsk
  loc_BB02E4: FStAdFunc var_C8
  loc_BB02E7: FLdPr Me
  loc_BB02EA: VCallAd Control_ID_DetaPartLbl
  loc_BB02ED: FStAdFunc var_C4
  loc_BB02F0: FLdRfVar var_C4
  loc_BB02F3: FLdZeroAd var_C8
  loc_BB02F6: FStAdFuncNoPop
  loc_BB02F9: CastAd
  loc_BB02FC: FStAdFunc var_98
  loc_BB02FF: FLdRfVar var_98
  loc_BB0302: FLdPr Me
  loc_BB0305: MemLdRfVar from_stack_1.global_64
  loc_BB0308: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB030D: IStI2 KeyCode
  loc_BB0310: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB031B: Branch loc_BB04DF
  loc_BB031E: LitNothing
  loc_BB0320: CastAd
  loc_BB0323: FStAdFuncNoPop
  loc_BB0326: ImpAdLdRf MemVar_C3D724
  loc_BB0329: NewIfNullPr bscPartida
  loc_BB032C: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_BB0331: FFree1Ad var_90
  loc_BB0334: LitVar_Missing var_F8
  loc_BB0337: PopAdLdVar
  loc_BB0338: LitVarI4
  loc_BB0340: PopAdLdVar
  loc_BB0341: ImpAdLdRf MemVar_C3D724
  loc_BB0344: NewIfNullPr bscPartida
  loc_BB0347: bscPartida.Show from_stack_1, from_stack_2
  loc_BB034C: FLdRfVar var_E8
  loc_BB034F: FLdRfVar var_90
  loc_BB0352: ImpAdLdRf MemVar_C3D724
  loc_BB0355: NewIfNullPr bscPartida
  loc_BB0358: from_stack_1v = bscPartida.global_4332396Get()
  loc_BB035D: FLdPr var_90
  loc_BB0360: from_stack_1 = clsbase.RecordCount
  loc_BB0365: ILdRf var_E8
  loc_BB0368: LitI4 0
  loc_BB036D: GtI4
  loc_BB036E: FFree1Ad var_90
  loc_BB0371: BranchF loc_BB0498
  loc_BB0374: FLdRfVar var_A8
  loc_BB0377: FLdRfVar var_C8
  loc_BB037A: LitVarStr var_C0, "CodiPart"
  loc_BB037F: PopAdLdVar
  loc_BB0380: FLdRfVar var_C4
  loc_BB0383: FLdRfVar var_98
  loc_BB0386: FLdRfVar var_90
  loc_BB0389: ImpAdLdRf MemVar_C3D724
  loc_BB038C: NewIfNullPr bscPartida
  loc_BB038F: from_stack_1v = bscPartida.global_4332396Get()
  loc_BB0394: FLdPr var_90
  loc_BB0397: from_stack_1v = clsbase.RsFrmGet()
  loc_BB039C: FLdPr var_98
  loc_BB039F:  = Me.Fields
  loc_BB03A4: FLdPr var_C4
  loc_BB03A7: from_stack_2 = Me.Item(from_stack_1)
  loc_BB03AC: FLdPr var_C8
  loc_BB03AF:  = Me.Value
  loc_BB03B4: FLdRfVar var_AC
  loc_BB03B7: FLdPr Me
  loc_BB03BA:  = Me.Name
  loc_BB03BF: FLdPr Me
  loc_BB03C2: MemLdRfVar from_stack_1.global_92
  loc_BB03C5: NewIfNullRf
  loc_BB03C9: ILdRf var_AC
  loc_BB03CC: LitI2_Byte &HFF
  loc_BB03CE: FLdRfVar var_A8
  loc_BB03D1: CStrVarTmp
  loc_BB03D2: FStStrNoPop var_B0
  loc_BB03D5: ImpAdLdI2 MemVar_C3D064
  loc_BB03D8: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_BB03DD: FStStrNoPop var_CC
  loc_BB03E0: FLdPr Me
  loc_BB03E3: MemStStrCopy
  loc_BB03E7: FFreeStr var_B0 = "": var_AC = ""
  loc_BB03F0: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB03FB: FFree1Var var_A8 = ""
  loc_BB03FE: FLdRfVar var_AC
  loc_BB0401: FLdPr Me
  loc_BB0404: MemLdRfVar from_stack_1.global_92
  loc_BB0407: NewIfNullPr tblpartida
  loc_BB040A: from_stack_1v = tblpartida.CodiPartGet()
  loc_BB040F: FLdZeroAd var_AC
  loc_BB0412: CVarStr var_A8
  loc_BB0415: PopAdLdVar
  loc_BB0416: FLdPr Me
  loc_BB0419: VCallAd Control_ID_CodiPartMsk
  loc_BB041C: FStAdFunc var_90
  loc_BB041F: FLdPr var_90
  loc_BB0422: LateIdSt
  loc_BB0427: FFree1Ad var_90
  loc_BB042A: FFree1Var var_A8 = ""
  loc_BB042D: FLdRfVar var_AC
  loc_BB0430: FLdPr Me
  loc_BB0433: MemLdRfVar from_stack_1.global_92
  loc_BB0436: NewIfNullPr tblpartida
  loc_BB0439: from_stack_1v = tblpartida.DetaPartGet()
  loc_BB043E: ILdRf var_AC
  loc_BB0441: FLdPr Me
  loc_BB0444: VCallAd Control_ID_DetaPartLbl
  loc_BB0447: FStAdFunc var_90
  loc_BB044A: FLdPr var_90
  loc_BB044D: Me.Caption = from_stack_1
  loc_BB0452: FFree1Str var_AC
  loc_BB0455: FFree1Ad var_90
  loc_BB0458: FLdPr Me
  loc_BB045B: VCallAd Control_ID_CodiPartMsk
  loc_BB045E: FStAdFunc var_C8
  loc_BB0461: FLdPr Me
  loc_BB0464: VCallAd Control_ID_DetaPartLbl
  loc_BB0467: FStAdFunc var_C4
  loc_BB046A: FLdRfVar var_C4
  loc_BB046D: FLdZeroAd var_C8
  loc_BB0470: FStAdFuncNoPop
  loc_BB0473: CastAd
  loc_BB0476: FStAdFunc var_98
  loc_BB0479: FLdRfVar var_98
  loc_BB047C: FLdPr Me
  loc_BB047F: MemLdRfVar from_stack_1.global_64
  loc_BB0482: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB0487: IStI2 KeyCode
  loc_BB048A: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB0495: Branch loc_BB04DF
  loc_BB0498: LitStr "La Partida NO EXISTE. Verifique..."
  loc_BB049B: FLdPr Me
  loc_BB049E: MemStStrCopy
  loc_BB04A2: FLdPr Me
  loc_BB04A5: VCallAd Control_ID_CodiPartMsk
  loc_BB04A8: FStAdFunc var_C8
  loc_BB04AB: FLdPr Me
  loc_BB04AE: VCallAd Control_ID_DetaPartLbl
  loc_BB04B1: FStAdFunc var_C4
  loc_BB04B4: FLdRfVar var_C4
  loc_BB04B7: FLdZeroAd var_C8
  loc_BB04BA: FStAdFuncNoPop
  loc_BB04BD: CastAd
  loc_BB04C0: FStAdFunc var_98
  loc_BB04C3: FLdRfVar var_98
  loc_BB04C6: FLdPr Me
  loc_BB04C9: MemLdRfVar from_stack_1.global_64
  loc_BB04CC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB04D1: IStI2 KeyCode
  loc_BB04D4: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB04DF: ILdI2 KeyCode
  loc_BB04E2: NotI4
  loc_BB04E3: BranchF loc_BB0649
  loc_BB04E6: LitI2_Byte 0
  loc_BB04E8: BranchF loc_BB063A
  loc_BB04EB: LitStr "SELECT * FROM insupart WHERE PeriInfo = "
  loc_BB04EE: ImpAdLdI2 MemVar_C3D064
  loc_BB04F1: CStrUI1
  loc_BB04F3: FStStrNoPop var_AC
  loc_BB04F6: ConcatStr
  loc_BB04F7: FStStrNoPop var_B0
  loc_BB04FA: LitStr " AND CodiPart = '"
  loc_BB04FD: ConcatStr
  loc_BB04FE: FStStrNoPop var_CC
  loc_BB0501: FLdPr Me
  loc_BB0504: VCallAd Control_ID_CodiPartMsk
  loc_BB0507: FStAdFunc var_90
  loc_BB050A: FLdPr var_90
  loc_BB050D: LateIdLdVar var_A8 DispID_22 0
  loc_BB0514: CStrVarTmp
  loc_BB0515: FStStrNoPop var_E0
  loc_BB0518: ConcatStr
  loc_BB0519: FStStrNoPop var_E4
  loc_BB051C: LitStr "' AND CodiInsu = '"
  loc_BB051F: ConcatStr
  loc_BB0520: CVarStr var_108
  loc_BB0523: FLdRfVar var_DC
  loc_BB0526: FLdRfVar var_C8
  loc_BB0529: LitVarStr var_C0, "CodiInsu"
  loc_BB052E: PopAdLdVar
  loc_BB052F: FLdRfVar var_C4
  loc_BB0532: FLdRfVar var_98
  loc_BB0535: FLdPr Me
  loc_BB0538: MemLdRfVar from_stack_1.global_52
  loc_BB053B: NewIfNullPr clsimputacion
  loc_BB053E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB0543: FLdPr var_98
  loc_BB0546:  = Me.Fields
  loc_BB054B: FLdPr var_C4
  loc_BB054E: from_stack_2 = Me.Item(from_stack_1)
  loc_BB0553: FLdPr var_C8
  loc_BB0556:  = Me.Value
  loc_BB055B: FLdRfVar var_DC
  loc_BB055E: ConcatVar var_118
  loc_BB0562: LitVarStr var_F8, "'"
  loc_BB0567: ConcatVar var_128
  loc_BB056B: CStrVarVal var_12C
  loc_BB056F: FLdPr Me
  loc_BB0572: MemLdRfVar from_stack_1.global_56
  loc_BB0575: NewIfNullPr clsinsupart
  loc_BB0578: Call clsinsupart.RedefineRS(from_stack_1v)
  loc_BB057D: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_E0 = "": var_E4 = ""
  loc_BB058C: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB0597: FFreeVar var_A8 = "": var_108 = "": var_DC = "": var_118 = ""
  loc_BB05A4: FLdRfVar var_E8
  loc_BB05A7: FLdPr Me
  loc_BB05AA: MemLdRfVar from_stack_1.global_56
  loc_BB05AD: NewIfNullPr clsinsupart
  loc_BB05B0: from_stack_1 = clsinsupart.RecordCount
  loc_BB05B5: ILdRf var_E8
  loc_BB05B8: LitI4 0
  loc_BB05BD: EqI4
  loc_BB05BE: BranchF loc_BB063A
  loc_BB05C1: LitStr "La Partida NO Corresponde al Insumo. Verifique..."
  loc_BB05C4: FLdPr Me
  loc_BB05C7: MemStStrCopy
  loc_BB05CB: FLdPr Me
  loc_BB05CE: VCallAd Control_ID_CodiPartMsk
  loc_BB05D1: FStAdFunc var_C8
  loc_BB05D4: FLdPr Me
  loc_BB05D7: VCallAd Control_ID_DetaPartLbl
  loc_BB05DA: FStAdFunc var_C4
  loc_BB05DD: FLdRfVar var_C4
  loc_BB05E0: FLdZeroAd var_C8
  loc_BB05E3: FStAdFuncNoPop
  loc_BB05E6: CastAd
  loc_BB05E9: FStAdFunc var_98
  loc_BB05EC: FLdRfVar var_98
  loc_BB05EF: FLdPr Me
  loc_BB05F2: MemLdRfVar from_stack_1.global_64
  loc_BB05F5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB05FA: IStI2 KeyCode
  loc_BB05FD: FFreeAd var_90 = "": var_98 = "": var_C4 = ""
  loc_BB0608: ILdI2 KeyCode
  loc_BB060B: BranchF loc_BB063A
  loc_BB060E: LitVarStr var_C0, vbNullString
  loc_BB0613: PopAdLdVar
  loc_BB0614: FLdPr Me
  loc_BB0617: VCallAd Control_ID_CodiPartMsk
  loc_BB061A: FStAdFunc var_90
  loc_BB061D: FLdPr var_90
  loc_BB0620: LateIdSt
  loc_BB0625: FFree1Ad var_90
  loc_BB0628: FLdPr Me
  loc_BB062B: VCallAd Control_ID_CodiPartMsk
  loc_BB062E: CVarAd
  loc_BB0632: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_BB0637: FFree1Var var_A8 = ""
  loc_BB063A: ILdI2 KeyCode
  loc_BB063D: NotI4
  loc_BB063E: BranchF loc_BB0646
  loc_BB0641: Call Proc_144_68_A7F56C()
  loc_BB0646: Branch loc_BB0663
  loc_BB0649: LitVarStr var_C0, vbNullString
  loc_BB064E: PopAdLdVar
  loc_BB064F: FLdPr Me
  loc_BB0652: VCallAd Control_ID_CodiPartMsk
  loc_BB0655: FStAdFunc var_90
  loc_BB0658: FLdPr var_90
  loc_BB065B: LateIdSt
  loc_BB0660: FFree1Ad var_90
  loc_BB0663: ILdI2 KeyCode
  loc_BB0666: NotI4
  loc_BB0667: BranchF loc_BB095E
  loc_BB066A: FLdRfVar var_AC
  loc_BB066D: FLdPr Me
  loc_BB0670: MemLdRfVar from_stack_1.global_92
  loc_BB0673: NewIfNullPr tblpartida
  loc_BB0676: from_stack_1v = tblpartida.InvePartGet()
  loc_BB067B: ILdRf var_AC
  loc_BB067E: LitStr "Si"
  loc_BB0681: EqStr
  loc_BB0683: FFree1Str var_AC
  loc_BB0686: BranchF loc_BB0696
  loc_BB0689: LitI4 0
  loc_BB068E: LitStr "Recuerde: dar de ALTA en el INVENTARIO !!!"
  loc_BB0691: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB0696: FLdRfVar var_108
  loc_BB0699: FLdRfVar var_C4
  loc_BB069C: LitVarStr var_C0, "ExorImpu"
  loc_BB06A1: PopAdLdVar
  loc_BB06A2: FLdRfVar var_98
  loc_BB06A5: FLdRfVar var_90
  loc_BB06A8: FLdPr Me
  loc_BB06AB: MemLdRfVar from_stack_1.global_52
  loc_BB06AE: NewIfNullPr clsimputacion
  loc_BB06B1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB06B6: FLdPr var_90
  loc_BB06B9:  = Me.Fields
  loc_BB06BE: FLdPr var_98
  loc_BB06C1: from_stack_2 = Me.Item(from_stack_1)
  loc_BB06C6: FLdPr var_C4
  loc_BB06C9:  = Me.Value
  loc_BB06CE: FLdRfVar var_118
  loc_BB06D1: FLdRfVar var_134
  loc_BB06D4: LitVarStr var_F8, "CodiNope"
  loc_BB06D9: PopAdLdVar
  loc_BB06DA: FLdRfVar var_130
  loc_BB06DD: FLdRfVar var_C8
  loc_BB06E0: FLdPr Me
  loc_BB06E3: MemLdRfVar from_stack_1.global_52
  loc_BB06E6: NewIfNullPr clsimputacion
  loc_BB06E9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB06EE: FLdPr var_C8
  loc_BB06F1:  = Me.Fields
  loc_BB06F6: FLdPr var_130
  loc_BB06F9: from_stack_2 = Me.Item(from_stack_1)
  loc_BB06FE: FLdPr var_134
  loc_BB0701:  = Me.Value
  loc_BB0706: FLdRfVar var_128
  loc_BB0709: FLdRfVar var_150
  loc_BB070C: LitVarStr var_14C, "Item"
  loc_BB0711: PopAdLdVar
  loc_BB0712: FLdRfVar var_13C
  loc_BB0715: FLdRfVar var_138
  loc_BB0718: FLdPr Me
  loc_BB071B: MemLdRfVar from_stack_1.global_52
  loc_BB071E: NewIfNullPr clsimputacion
  loc_BB0721: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB0726: FLdPr var_138
  loc_BB0729:  = Me.Fields
  loc_BB072E: FLdPr var_13C
  loc_BB0731: from_stack_2 = Me.Item(from_stack_1)
  loc_BB0736: FLdPr var_150
  loc_BB0739:  = Me.Value
  loc_BB073E: FLdRfVar var_1BC
  loc_BB0741: FLdRfVar var_16C
  loc_BB0744: LitVarStr var_168, "Altern"
  loc_BB0749: PopAdLdVar
  loc_BB074A: FLdRfVar var_158
  loc_BB074D: FLdRfVar var_154
  loc_BB0750: FLdPr Me
  loc_BB0753: MemLdRfVar from_stack_1.global_52
  loc_BB0756: NewIfNullPr clsimputacion
  loc_BB0759: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB075E: FLdPr var_154
  loc_BB0761:  = Me.Fields
  loc_BB0766: FLdPr var_158
  loc_BB0769: from_stack_2 = Me.Item(from_stack_1)
  loc_BB076E: FLdPr var_16C
  loc_BB0771:  = Me.Value
  loc_BB0776: FLdRfVar var_1CC
  loc_BB0779: FLdRfVar var_188
  loc_BB077C: LitVarStr var_184, "CodiOrco"
  loc_BB0781: PopAdLdVar
  loc_BB0782: FLdRfVar var_174
  loc_BB0785: FLdRfVar var_170
  loc_BB0788: FLdPr Me
  loc_BB078B: MemLdRfVar from_stack_1.global_52
  loc_BB078E: NewIfNullPr clsimputacion
  loc_BB0791: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB0796: FLdPr var_170
  loc_BB0799:  = Me.Fields
  loc_BB079E: FLdPr var_174
  loc_BB07A1: from_stack_2 = Me.Item(from_stack_1)
  loc_BB07A6: FLdPr var_188
  loc_BB07A9:  = Me.Value
  loc_BB07AE: FLdRfVar var_1DC
  loc_BB07B1: FLdRfVar var_1A4
  loc_BB07B4: LitVarStr var_1A0, "CodiRece"
  loc_BB07B9: PopAdLdVar
  loc_BB07BA: FLdRfVar var_190
  loc_BB07BD: FLdRfVar var_18C
  loc_BB07C0: FLdPr Me
  loc_BB07C3: MemLdRfVar from_stack_1.global_52
  loc_BB07C6: NewIfNullPr clsimputacion
  loc_BB07C9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB07CE: FLdPr var_18C
  loc_BB07D1:  = Me.Fields
  loc_BB07D6: FLdPr var_190
  loc_BB07D9: from_stack_2 = Me.Item(from_stack_1)
  loc_BB07DE: FLdPr var_1A4
  loc_BB07E1:  = Me.Value
  loc_BB07E6: FLdPr Me
  loc_BB07E9: VCallAd Control_ID_CodiPartMsk
  loc_BB07EC: FStAdFunc var_1A8
  loc_BB07EF: FLdPr var_1A8
  loc_BB07F2: LateIdLdVar var_A8 DispID_22 0
  loc_BB07F9: PopAd
  loc_BB07FB: FLdPr Me
  loc_BB07FE: VCallAd Control_ID_CodiOrgaMsk
  loc_BB0801: FStAdFunc var_1AC
  loc_BB0804: FLdPr var_1AC
  loc_BB0807: LateIdLdVar var_DC DispID_22 0
  loc_BB080E: PopAd
  loc_BB0810: FLdRfVar var_E0
  loc_BB0813: FLdRfVar var_DC
  loc_BB0816: CStrVarTmp
  loc_BB0817: FStStrNoPop var_CC
  loc_BB081A: FLdRfVar var_A8
  loc_BB081D: CStrVarTmp
  loc_BB081E: FStStrNoPop var_B0
  loc_BB0821: FLdRfVar var_1DC
  loc_BB0824: CI2Var
  loc_BB0825: FLdRfVar var_1CC
  loc_BB0828: CI2Var
  loc_BB0829: FLdRfVar var_1BC
  loc_BB082C: CI2Var
  loc_BB082D: FLdRfVar var_128
  loc_BB0830: CI2Var
  loc_BB0831: FLdRfVar var_118
  loc_BB0834: CI4Var
  loc_BB0836: FLdRfVar var_108
  loc_BB0839: CStrVarTmp
  loc_BB083A: FStStrNoPop var_AC
  loc_BB083D: LitI2_Byte &H32
  loc_BB083F: ImpAdLdI2 MemVar_C3D064
  loc_BB0842: FLdPr Me
  loc_BB0845: MemLdRfVar from_stack_1.global_52
  loc_BB0848: NewIfNullPr clsimputacion
  loc_BB084B: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_BB0850: ILdRf var_E0
  loc_BB0853: CDateStr
  loc_BB0855: FStFPR8 var_8C
  loc_BB0858: FFreeStr var_AC = "": var_B0 = "": var_CC = ""
  loc_BB0863: FFreeAd var_90 = "": var_98 = "": var_C8 = "": var_130 = "": var_138 = "": var_13C = "": var_154 = "": var_158 = "": var_170 = "": var_174 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_C4 = "": var_134 = "": var_150 = "": var_16C = "": var_188 = ""
  loc_BB088E: FFreeVar var_A8 = "": var_DC = "": var_108 = "": var_118 = "": var_128 = "": var_1BC = "": var_1CC = ""
  loc_BB08A1: FLdPr Me
  loc_BB08A4: VCallAd Control_ID_FechImpuMsk
  loc_BB08A7: FStAdFunc var_90
  loc_BB08AA: FLdPr var_90
  loc_BB08AD: LateIdLdVar var_A8 DispID_15 0
  loc_BB08B4: PopAd
  loc_BB08B6: FLdPr Me
  loc_BB08B9: VCallAd Control_ID_FechImpuMsk
  loc_BB08BC: FStAdFunc var_98
  loc_BB08BF: FLdPr var_98
  loc_BB08C2: LateIdLdVar var_DC DispID_22 0
  loc_BB08C9: PopAd
  loc_BB08CB: FLdRfVar var_8C
  loc_BB08CE: CVarRef
  loc_BB08D3: FLdRfVar var_DC
  loc_BB08D6: CStrVarTmp
  loc_BB08D7: CVarStr var_108
  loc_BB08DA: FLdRfVar var_A8
  loc_BB08DD: CStrVarTmp
  loc_BB08DE: FStStrNoPop var_AC
  loc_BB08E1: CDateStr
  loc_BB08E3: FLdFPR8 var_8C
  loc_BB08E6: GtR4
  loc_BB08E7: CVarBoolI2 var_C0
  loc_BB08EB: FLdRfVar var_118
  loc_BB08EE: ImpAdCallFPR4  = IIf(, , )
  loc_BB08F3: FLdRfVar var_118
  loc_BB08F6: CStrVarTmp
  loc_BB08F7: CVarStr var_128
  loc_BB08FA: PopAdLdVar
  loc_BB08FB: FLdPr Me
  loc_BB08FE: VCallAd Control_ID_FechImpuMsk
  loc_BB0901: FStAdFunc var_C4
  loc_BB0904: FLdPr var_C4
  loc_BB0907: LateIdSt
  loc_BB090C: FFree1Str var_AC
  loc_BB090F: FFreeAd var_90 = "": var_98 = ""
  loc_BB0918: FFreeVar var_A8 = "": var_DC = "": var_C0 = "": var_108 = "": var_118 = ""
  loc_BB0927: FLdPr Me
  loc_BB092A: VCallAd Control_ID_FechImpuMsk
  loc_BB092D: FStAdFunc var_90
  loc_BB0930: FLdPr var_90
  loc_BB0933: LateIdLdVar var_A8 DispID_15 0
  loc_BB093A: CStrVarTmp
  loc_BB093B: CVarStr var_DC
  loc_BB093E: PopAdLdVar
  loc_BB093F: FLdPr Me
  loc_BB0942: VCallAd Control_ID_FechImpuMsk
  loc_BB0945: FStAdFunc var_98
  loc_BB0948: FLdPr var_98
  loc_BB094B: LateIdSt
  loc_BB0950: FFreeAd var_90 = ""
  loc_BB0957: FFreeVar var_A8 = ""
  loc_BB095E: ExitProcHresult
  loc_BB095F: ModI4
End Sub

Private Sub CodiPartMsk_KeyPress(KeyAscii As Integer) '9AE194
  'Data Table: 4FA290
  loc_9AE0F4: FLdPr Me
  loc_9AE0F7: VCallAd Control_ID_CodiPartMsk
  loc_9AE0FA: FStAdFunc var_88
  loc_9AE0FD: FLdPr var_88
  loc_9AE100: LateIdLdVar var_98 DispID_22 0
  loc_9AE107: PopAd
  loc_9AE109: LitI4 0
  loc_9AE10E: LitI4 -1
  loc_9AE113: LitI4 1
  loc_9AE118: LitStr vbNullString
  loc_9AE11B: LitStr "."
  loc_9AE11E: FLdRfVar var_98
  loc_9AE121: CStrVarTmp
  loc_9AE122: FStStrNoPop var_9C
  loc_9AE125: ImpAdCallI2 Replace(, , , , , )
  loc_9AE12A: FStStrNoPop var_A0
  loc_9AE12D: FnLenStr
  loc_9AE12E: LitI2_Byte 8
  loc_9AE130: CI2UI1
  loc_9AE132: LitI2_Byte 1
  loc_9AE134: SubI2
  loc_9AE135: CI4UI1
  loc_9AE136: GtI4
  loc_9AE137: FFreeStr var_9C = ""
  loc_9AE13E: FFree1Ad var_88
  loc_9AE141: FFree1Var var_98 = ""
  loc_9AE144: BranchF loc_9AE192
  loc_9AE147: FLdPr Me
  loc_9AE14A: VCallAd Control_ID_CodiPartMsk
  loc_9AE14D: FStAdFunc var_88
  loc_9AE150: FLdRfVar var_88
  loc_9AE153: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9AE158: FFree1Ad var_88
  loc_9AE15B: BranchF loc_9AE192
  loc_9AE15E: ILdI2 KeyAscii
  loc_9AE161: CI4UI1
  loc_9AE162: LitI4 8
  loc_9AE167: NeI4
  loc_9AE168: FLdPr Me
  loc_9AE16B: VCallAd Control_ID_CodiPartMsk
  loc_9AE16E: FStAdFunc var_88
  loc_9AE171: FLdPr var_88
  loc_9AE174: LateIdLdVar var_98 DispID_17 0
  loc_9AE17B: CI4Var
  loc_9AE17D: LitI4 0
  loc_9AE182: EqI4
  loc_9AE183: AndI4
  loc_9AE184: FFree1Ad var_88
  loc_9AE187: FFree1Var var_98 = ""
  loc_9AE18A: BranchF loc_9AE192
  loc_9AE18D: LitI2_Byte 0
  loc_9AE18F: IStI2 KeyAscii
  loc_9AE192: ExitProcHresult
End Sub

Private Sub CodiPartMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A1EEB0
  'Data Table: 4FA290
  loc_A1ED14: ILdI2 Shift
  loc_A1ED17: CI4UI1
  loc_A1ED18: LitI4 2
  loc_A1ED1D: EqI4
  loc_A1ED1E: ILdI2 KeyCode
  loc_A1ED21: CI4UI1
  loc_A1ED22: LitI4 &H42
  loc_A1ED27: EqI4
  loc_A1ED28: AndI4
  loc_A1ED29: BranchF loc_A1EEAE
  loc_A1ED2C: FLdRfVar var_B0
  loc_A1ED2F: FLdRfVar var_A0
  loc_A1ED32: LitVarStr var_9C, "CodiInsu"
  loc_A1ED37: PopAdLdVar
  loc_A1ED38: FLdRfVar var_8C
  loc_A1ED3B: FLdRfVar var_88
  loc_A1ED3E: FLdPr Me
  loc_A1ED41: MemLdRfVar from_stack_1.global_52
  loc_A1ED44: NewIfNullPr clsimputacion
  loc_A1ED47: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A1ED4C: FLdPr var_88
  loc_A1ED4F:  = Me.Fields
  loc_A1ED54: FLdPr var_8C
  loc_A1ED57: from_stack_2 = Me.Item(from_stack_1)
  loc_A1ED5C: FLdPr var_A0
  loc_A1ED5F:  = Me.Value
  loc_A1ED64: FLdRfVar var_B0
  loc_A1ED67: CI4Var
  loc_A1ED69: ImpAdLdRf MemVar_C3D724
  loc_A1ED6C: NewIfNullPr bscPartida
  loc_A1ED6F: Call bscPartida.iCodiInsuPut(from_stack_1v)
  loc_A1ED74: FFreeAd var_88 = "": var_8C = ""
  loc_A1ED7D: FFree1Var var_B0 = ""
  loc_A1ED80: LitNothing
  loc_A1ED82: CastAd
  loc_A1ED85: FStAdFuncNoPop
  loc_A1ED88: ImpAdLdRf MemVar_C3D724
  loc_A1ED8B: NewIfNullPr bscPartida
  loc_A1ED8E: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_A1ED93: FFree1Ad var_88
  loc_A1ED96: LitVar_Missing var_C0
  loc_A1ED99: PopAdLdVar
  loc_A1ED9A: LitVarI4
  loc_A1EDA2: PopAdLdVar
  loc_A1EDA3: ImpAdLdRf MemVar_C3D724
  loc_A1EDA6: NewIfNullPr bscPartida
  loc_A1EDA9: bscPartida.Show from_stack_1, from_stack_2
  loc_A1EDAE: FLdRfVar var_C4
  loc_A1EDB1: FLdRfVar var_88
  loc_A1EDB4: ImpAdLdRf MemVar_C3D724
  loc_A1EDB7: NewIfNullPr bscPartida
  loc_A1EDBA: from_stack_1v = bscPartida.global_4332396Get()
  loc_A1EDBF: FLdPr var_88
  loc_A1EDC2: from_stack_1 = clsbase.RecordCount
  loc_A1EDC7: ILdRf var_C4
  loc_A1EDCA: LitI4 0
  loc_A1EDCF: GtI4
  loc_A1EDD0: FFree1Ad var_88
  loc_A1EDD3: BranchF loc_A1EEAE
  loc_A1EDD6: FLdRfVar var_B0
  loc_A1EDD9: FLdRfVar var_C8
  loc_A1EDDC: LitVarStr var_9C, "CodiPart"
  loc_A1EDE1: PopAdLdVar
  loc_A1EDE2: FLdRfVar var_A0
  loc_A1EDE5: FLdRfVar var_8C
  loc_A1EDE8: FLdRfVar var_88
  loc_A1EDEB: ImpAdLdRf MemVar_C3D724
  loc_A1EDEE: NewIfNullPr bscPartida
  loc_A1EDF1: from_stack_1v = bscPartida.global_4332396Get()
  loc_A1EDF6: FLdPr var_88
  loc_A1EDF9: from_stack_1v = clsbase.RsFrmGet()
  loc_A1EDFE: FLdPr var_8C
  loc_A1EE01:  = Me.Fields
  loc_A1EE06: FLdPr var_A0
  loc_A1EE09: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EE0E: FLdPr var_C8
  loc_A1EE11:  = Me.Value
  loc_A1EE16: FLdRfVar var_B0
  loc_A1EE19: CStrVarTmp
  loc_A1EE1A: CVarStr var_D8
  loc_A1EE1D: PopAdLdVar
  loc_A1EE1E: FLdPr Me
  loc_A1EE21: VCallAd Control_ID_CodiPartMsk
  loc_A1EE24: FStAdFunc var_DC
  loc_A1EE27: FLdPr var_DC
  loc_A1EE2A: LateIdSt
  loc_A1EE2F: FFreeAd var_88 = "": var_8C = "": var_A0 = "": var_C8 = ""
  loc_A1EE3C: FFreeVar var_B0 = ""
  loc_A1EE43: FLdRfVar var_B0
  loc_A1EE46: FLdRfVar var_C8
  loc_A1EE49: LitVarStr var_9C, "DetaPart"
  loc_A1EE4E: PopAdLdVar
  loc_A1EE4F: FLdRfVar var_A0
  loc_A1EE52: FLdRfVar var_8C
  loc_A1EE55: FLdRfVar var_88
  loc_A1EE58: ImpAdLdRf MemVar_C3D724
  loc_A1EE5B: NewIfNullPr bscPartida
  loc_A1EE5E: from_stack_1v = bscPartida.global_4332396Get()
  loc_A1EE63: FLdPr var_88
  loc_A1EE66: from_stack_1v = clsbase.RsFrmGet()
  loc_A1EE6B: FLdPr var_8C
  loc_A1EE6E:  = Me.Fields
  loc_A1EE73: FLdPr var_A0
  loc_A1EE76: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EE7B: FLdPr var_C8
  loc_A1EE7E:  = Me.Value
  loc_A1EE83: FLdRfVar var_B0
  loc_A1EE86: CStrVarTmp
  loc_A1EE87: FStStrNoPop var_E0
  loc_A1EE8A: FLdPr Me
  loc_A1EE8D: VCallAd Control_ID_DetaPartLbl
  loc_A1EE90: FStAdFunc var_DC
  loc_A1EE93: FLdPr var_DC
  loc_A1EE96: Me.Caption = from_stack_1
  loc_A1EE9B: FFree1Str var_E0
  loc_A1EE9E: FFreeAd var_88 = "": var_8C = "": var_A0 = "": var_C8 = ""
  loc_A1EEAB: FFree1Var var_B0 = ""
  loc_A1EEAE: ExitProcHresult
End Sub

Private Sub CantImpuTxt_GotFocus() '98C9DC
  'Data Table: 4FA290
  loc_98C99C: FLdPr Me
  loc_98C99F: MemLdUI1 global_60
  loc_98C9A3: CI2UI1
  loc_98C9A5: LitI2_Byte 3
  loc_98C9A7: EqI2
  loc_98C9A8: BranchF loc_98C9C9
  loc_98C9AB: LitI2_Byte 1
  loc_98C9AD: CStrUI1
  loc_98C9AF: FStStrNoPop var_88
  loc_98C9B2: FLdPr Me
  loc_98C9B5: VCallAd Control_ID_CantImpuTxt
  loc_98C9B8: FStAdFunc var_8C
  loc_98C9BB: FLdPr var_8C
  loc_98C9BE: Me.Text = from_stack_1
  loc_98C9C3: FFree1Str var_88
  loc_98C9C6: FFree1Ad var_8C
  loc_98C9C9: FLdPr Me
  loc_98C9CC: VCallAd Control_ID_CantImpuTxt
  loc_98C9CF: CVarAd
  loc_98C9D3: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_98C9D8: FFree1Var var_9C = ""
  loc_98C9DB: ExitProcHresult
End Sub

Private Sub CantImpuTxt_KeyPress(KeyAscii As Integer) '97FFE0
  'Data Table: 4FA290
  loc_97FFAC: LitStr "1234567890,."
  loc_97FFAF: FStStrCopy var_88
  loc_97FFB2: FLdRfVar var_88
  loc_97FFB5: ILdRf KeyAscii
  loc_97FFB8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97FFBD: IStI2 KeyAscii
  loc_97FFC0: FFree1Str var_88
  loc_97FFC3: ILdI2 KeyAscii
  loc_97FFC6: LitStr "."
  loc_97FFC9: ImpAdCallI2 Asc()
  loc_97FFCE: EqI2
  loc_97FFCF: BranchF loc_97FFDD
  loc_97FFD2: LitStr ","
  loc_97FFD5: ImpAdCallI2 Asc()
  loc_97FFDA: IStI2 KeyAscii
  loc_97FFDD: ExitProcHresult
End Sub

Private Sub CantImpuTxt_Validate(Cancel As Boolean) '9BB304
  'Data Table: 4FA290
  loc_9BB250: FLdRfVar var_8A
  loc_9BB253: FLdPr Me
  loc_9BB256: VCallAd Control_ID_cmdCancelar
  loc_9BB259: FStAdFunc var_88
  loc_9BB25C: FLdPr var_88
  loc_9BB25F:  = Me.Value
  loc_9BB264: FLdI2 var_8A
  loc_9BB267: NotI4
  loc_9BB268: FLdRfVar var_92
  loc_9BB26B: FLdPr Me
  loc_9BB26E: VCallAd Control_ID_CantImpuTxt
  loc_9BB271: FStAdFunc var_90
  loc_9BB274: FLdPr var_90
  loc_9BB277:  = Me.Enabled
  loc_9BB27C: FLdI2 var_92
  loc_9BB27F: AndI4
  loc_9BB280: FFreeAd var_88 = ""
  loc_9BB287: BranchF loc_9BB302
  loc_9BB28A: FLdRfVar var_98
  loc_9BB28D: FLdPr Me
  loc_9BB290: VCallAd Control_ID_CantImpuTxt
  loc_9BB293: FStAdFunc var_88
  loc_9BB296: FLdPr var_88
  loc_9BB299:  = Me.Text
  loc_9BB29E: LitStr "0"
  loc_9BB2A1: LitI2_Byte &HFF
  loc_9BB2A3: LitI2_Byte 0
  loc_9BB2A5: LitI2_Byte 0
  loc_9BB2A7: ILdRf var_98
  loc_9BB2AA: LitStr "Cantidad"
  loc_9BB2AD: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9BB2B2: FStStrNoPop var_9C
  loc_9BB2B5: FLdPr Me
  loc_9BB2B8: MemStStrCopy
  loc_9BB2BC: FFreeStr var_98 = ""
  loc_9BB2C3: FFree1Ad var_88
  loc_9BB2C6: FLdPr Me
  loc_9BB2C9: VCallAd Control_ID_CantImpuTxt
  loc_9BB2CC: FStAdFunc var_A4
  loc_9BB2CF: LitNothing
  loc_9BB2D1: CastAd
  loc_9BB2D4: FStAdFunc var_A0
  loc_9BB2D7: FLdRfVar var_A0
  loc_9BB2DA: FLdZeroAd var_A4
  loc_9BB2DD: FStAdFuncNoPop
  loc_9BB2E0: CastAd
  loc_9BB2E3: FStAdFunc var_90
  loc_9BB2E6: FLdRfVar var_90
  loc_9BB2E9: FLdPr Me
  loc_9BB2EC: MemLdRfVar from_stack_1.global_64
  loc_9BB2EF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BB2F4: IStI2 Cancel
  loc_9BB2F7: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BB302: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_GotFocus() '94B240
  'Data Table: 4FA290
  loc_94B22C: FLdPr Me
  loc_94B22F: VCallAd Control_ID_ImunImpuTxt
  loc_94B232: CVarAd
  loc_94B236: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B23B: FFree1Var var_94 = ""
  loc_94B23E: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_KeyPress(KeyAscii As Integer) '97F2E0
  'Data Table: 4FA290
  loc_97F2AC: LitStr "1234567890,."
  loc_97F2AF: FStStrCopy var_88
  loc_97F2B2: FLdRfVar var_88
  loc_97F2B5: ILdRf KeyAscii
  loc_97F2B8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97F2BD: IStI2 KeyAscii
  loc_97F2C0: FFree1Str var_88
  loc_97F2C3: ILdI2 KeyAscii
  loc_97F2C6: LitStr "."
  loc_97F2C9: ImpAdCallI2 Asc()
  loc_97F2CE: EqI2
  loc_97F2CF: BranchF loc_97F2DD
  loc_97F2D2: LitStr ","
  loc_97F2D5: ImpAdCallI2 Asc()
  loc_97F2DA: IStI2 KeyAscii
  loc_97F2DD: ExitProcHresult
  loc_97F2DE: SubCy
End Sub

Private Sub ImunImpuTxt_Validate(Cancel As Boolean) '9FBE50
  'Data Table: 4FA290
  loc_9FBD14: FLdRfVar var_8A
  loc_9FBD17: FLdPr Me
  loc_9FBD1A: VCallAd Control_ID_cmdCancelar
  loc_9FBD1D: FStAdFunc var_88
  loc_9FBD20: FLdPr var_88
  loc_9FBD23:  = Me.Value
  loc_9FBD28: FLdI2 var_8A
  loc_9FBD2B: NotI4
  loc_9FBD2C: FLdRfVar var_92
  loc_9FBD2F: FLdPr Me
  loc_9FBD32: VCallAd Control_ID_ImunImpuTxt
  loc_9FBD35: FStAdFunc var_90
  loc_9FBD38: FLdPr var_90
  loc_9FBD3B:  = Me.Enabled
  loc_9FBD40: FLdI2 var_92
  loc_9FBD43: AndI4
  loc_9FBD44: FFreeAd var_88 = ""
  loc_9FBD4B: BranchF loc_9FBE4C
  loc_9FBD4E: FLdRfVar var_98
  loc_9FBD51: FLdPr Me
  loc_9FBD54: VCallAd Control_ID_ImunImpuTxt
  loc_9FBD57: FStAdFunc var_88
  loc_9FBD5A: FLdPr var_88
  loc_9FBD5D:  = Me.Text
  loc_9FBD62: FLdRfVar var_9C
  loc_9FBD65: FLdPr Me
  loc_9FBD68: MemLdUI1 global_60
  loc_9FBD6C: FLdPr Me
  loc_9FBD6F: MemLdRfVar from_stack_1.global_92
  loc_9FBD72: NewIfNullRf
  loc_9FBD76: ILdRf var_98
  loc_9FBD79: FLdPr Me
  loc_9FBD7C: MemLdRfVar from_stack_1.global_52
  loc_9FBD7F: NewIfNullPr clsimputacion
  loc_9FBD82: from_stack_4v = clsimputacion.ValidaImunImpuPreventiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9FBD87: ILdRf var_9C
  loc_9FBD8A: FLdPr Me
  loc_9FBD8D: MemStStrCopy
  loc_9FBD91: FFreeStr var_98 = ""
  loc_9FBD98: FFree1Ad var_88
  loc_9FBD9B: FLdPr Me
  loc_9FBD9E: VCallAd Control_ID_ImunImpuTxt
  loc_9FBDA1: FStAdFunc var_A4
  loc_9FBDA4: LitNothing
  loc_9FBDA6: CastAd
  loc_9FBDA9: FStAdFunc var_A0
  loc_9FBDAC: FLdRfVar var_A0
  loc_9FBDAF: FLdZeroAd var_A4
  loc_9FBDB2: FStAdFuncNoPop
  loc_9FBDB5: CastAd
  loc_9FBDB8: FStAdFunc var_90
  loc_9FBDBB: FLdRfVar var_90
  loc_9FBDBE: FLdPr Me
  loc_9FBDC1: MemLdRfVar from_stack_1.global_64
  loc_9FBDC4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FBDC9: IStI2 Cancel
  loc_9FBDCC: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9FBDD7: FLdRfVar var_98
  loc_9FBDDA: FLdPr Me
  loc_9FBDDD: VCallAd Control_ID_CantImpuTxt
  loc_9FBDE0: FStAdFunc var_88
  loc_9FBDE3: FLdPr var_88
  loc_9FBDE6:  = Me.Text
  loc_9FBDEB: FLdRfVar var_9C
  loc_9FBDEE: FLdPr Me
  loc_9FBDF1: VCallAd Control_ID_ImunImpuTxt
  loc_9FBDF4: FStAdFunc var_90
  loc_9FBDF7: FLdPr var_90
  loc_9FBDFA:  = Me.Text
  loc_9FBDFF: LitI4 2
  loc_9FBE04: ILdRf var_98
  loc_9FBE07: CR8Str
  loc_9FBE09: ILdRf var_9C
  loc_9FBE0C: CR8Str
  loc_9FBE0E: MulR8
  loc_9FBE0F: CVarR8
  loc_9FBE13: FLdRfVar var_D4
  loc_9FBE16: ImpAdCallFPR4  = Round(, )
  loc_9FBE1B: FLdRfVar var_D4
  loc_9FBE1E: CStrVarVal var_D8
  loc_9FBE22: FLdPr Me
  loc_9FBE25: VCallAd Control_ID_ImpoImpuTxt
  loc_9FBE28: FStAdFunc var_A0
  loc_9FBE2B: FLdPr var_A0
  loc_9FBE2E: Me.Text = from_stack_1
  loc_9FBE33: FFreeStr var_98 = "": var_9C = ""
  loc_9FBE3C: FFreeAd var_88 = "": var_90 = ""
  loc_9FBE45: FFreeVar var_C4 = ""
  loc_9FBE4C: ExitProcHresult
  loc_9FBE4D: FFreeAd var_FFFFFFE8 = ""
End Sub

Private Sub ImpoImpuTxt_GotFocus() '94A868
  'Data Table: 4FA290
  loc_94A854: FLdPr Me
  loc_94A857: VCallAd Control_ID_ImpoImpuTxt
  loc_94A85A: CVarAd
  loc_94A85E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A863: FFree1Var var_94 = ""
  loc_94A866: ExitProcHresult
End Sub

Private Sub ImpoImpuTxt_KeyPress(KeyAscii As Integer) '980118
  'Data Table: 4FA290
  loc_9800E4: LitStr "1234567890,."
  loc_9800E7: FStStrCopy var_88
  loc_9800EA: FLdRfVar var_88
  loc_9800ED: ILdRf KeyAscii
  loc_9800F0: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9800F5: IStI2 KeyAscii
  loc_9800F8: FFree1Str var_88
  loc_9800FB: ILdI2 KeyAscii
  loc_9800FE: LitStr "."
  loc_980101: ImpAdCallI2 Asc()
  loc_980106: EqI2
  loc_980107: BranchF loc_980115
  loc_98010A: LitStr ","
  loc_98010D: ImpAdCallI2 Asc()
  loc_980112: IStI2 KeyAscii
  loc_980115: ExitProcHresult
  loc_980116: ILdRf arg_1874
End Sub

Private Sub ImpoImpuTxt_Validate(Cancel As Boolean) 'A5A2C0
  'Data Table: 4FA290
  loc_A59FE8: FLdRfVar var_8A
  loc_A59FEB: FLdPr Me
  loc_A59FEE: VCallAd Control_ID_cmdCancelar
  loc_A59FF1: FStAdFunc var_88
  loc_A59FF4: FLdPr var_88
  loc_A59FF7:  = Me.Value
  loc_A59FFC: FLdI2 var_8A
  loc_A59FFF: NotI4
  loc_A5A000: FLdRfVar var_92
  loc_A5A003: FLdPr Me
  loc_A5A006: VCallAd Control_ID_ImpoImpuTxt
  loc_A5A009: FStAdFunc var_90
  loc_A5A00C: FLdPr var_90
  loc_A5A00F:  = Me.Enabled
  loc_A5A014: FLdI2 var_92
  loc_A5A017: AndI4
  loc_A5A018: FFreeAd var_88 = ""
  loc_A5A01F: BranchF loc_A5A2BF
  loc_A5A022: FLdPr Me
  loc_A5A025: MemLdUI1 global_60
  loc_A5A029: CI2UI1
  loc_A5A02B: LitI2_Byte 3
  loc_A5A02D: NeI2
  loc_A5A02E: BranchF loc_A5A1CB
  loc_A5A031: LitStr vbNullString
  loc_A5A034: FLdPr Me
  loc_A5A037: MemStStrCopy
  loc_A5A03B: FLdRfVar var_98
  loc_A5A03E: FLdPr Me
  loc_A5A041: MemLdRfVar from_stack_1.global_84
  loc_A5A044: NewIfNullPr tblpartida
  loc_A5A047: from_stack_1v = tblpartida.CredPartGet()
  loc_A5A04C: ILdRf var_98
  loc_A5A04F: FLdRfVar var_9C
  loc_A5A052: FLdPr Me
  loc_A5A055: MemLdRfVar from_stack_1.global_92
  loc_A5A058: NewIfNullPr tblpartida
  loc_A5A05B: from_stack_1v = tblpartida.CredPartGet()
  loc_A5A060: ILdRf var_9C
  loc_A5A063: NeStr
  loc_A5A065: FLdRfVar var_A0
  loc_A5A068: FLdPr Me
  loc_A5A06B: MemLdRfVar from_stack_1.global_88
  loc_A5A06E: NewIfNullPr tblorganigrama
  loc_A5A071: from_stack_1v = tblorganigrama.CredOrgaGet()
  loc_A5A076: ILdRf var_A0
  loc_A5A079: FLdRfVar var_A4
  loc_A5A07C: FLdPr Me
  loc_A5A07F: MemLdRfVar from_stack_1.global_96
  loc_A5A082: NewIfNullPr tblorganigrama
  loc_A5A085: from_stack_1v = tblorganigrama.CredOrgaGet()
  loc_A5A08A: ILdRf var_A4
  loc_A5A08D: NeStr
  loc_A5A08F: OrI4
  loc_A5A090: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_A5A09B: BranchF loc_A5A18C
  loc_A5A09E: FLdRfVar var_98
  loc_A5A0A1: FLdPr Me
  loc_A5A0A4: VCallAd Control_ID_ImpoImpuTxt
  loc_A5A0A7: FStAdFunc var_88
  loc_A5A0AA: FLdPr var_88
  loc_A5A0AD:  = Me.Text
  loc_A5A0B2: FLdPr Me
  loc_A5A0B5: VCallAd Control_ID_FechImpuMsk
  loc_A5A0B8: FStAdFunc var_90
  loc_A5A0BB: FLdPr var_90
  loc_A5A0BE: LateIdLdVar var_B4 DispID_15 0
  loc_A5A0C5: PopAd
  loc_A5A0C7: FLdRfVar var_9C
  loc_A5A0CA: FLdPr Me
  loc_A5A0CD: VCallAd Control_ID_SaldImpuLbl
  loc_A5A0D0: FStAdFunc var_B8
  loc_A5A0D3: FLdPr var_B8
  loc_A5A0D6:  = Me.Caption
  loc_A5A0DB: FLdRfVar var_A0
  loc_A5A0DE: FLdPr Me
  loc_A5A0E1: VCallAd Control_ID_SaldImpuLbl
  loc_A5A0E4: FStAdFunc var_BC
  loc_A5A0E7: FLdPr var_BC
  loc_A5A0EA:  = Me.Caption
  loc_A5A0EF: LitVarI2 var_FC, 0
  loc_A5A0F4: FLdZeroAd var_A0
  loc_A5A0F7: CVarStr var_DC
  loc_A5A0FA: ILdRf var_9C
  loc_A5A0FD: LitStr vbNullString
  loc_A5A100: NeStr
  loc_A5A102: CVarBoolI2 var_CC
  loc_A5A106: FLdRfVar var_10C
  loc_A5A109: ImpAdCallFPR4  = IIf(, , )
  loc_A5A10E: FLdRfVar var_114
  loc_A5A111: LitI2_Byte 0
  loc_A5A113: PopTmpLdAd2 var_8A
  loc_A5A116: FLdRfVar var_10C
  loc_A5A119: CStrVarVal var_110
  loc_A5A11D: FLdRfVar var_B4
  loc_A5A120: CStrVarTmp
  loc_A5A121: FStStrNoPop var_A4
  loc_A5A124: FLdPr Me
  loc_A5A127: MemLdRfVar from_stack_1.global_108
  loc_A5A12A: NewIfNullRf
  loc_A5A12E: FLdPr Me
  loc_A5A131: MemLdRfVar from_stack_1.global_100
  loc_A5A134: NewIfNullRf
  loc_A5A138: FLdPr Me
  loc_A5A13B: MemLdRfVar from_stack_1.global_96
  loc_A5A13E: NewIfNullRf
  loc_A5A142: FLdPr Me
  loc_A5A145: MemLdRfVar from_stack_1.global_92
  loc_A5A148: NewIfNullRf
  loc_A5A14C: ILdRf var_98
  loc_A5A14F: FLdPr Me
  loc_A5A152: MemLdRfVar from_stack_1.global_52
  loc_A5A155: NewIfNullPr clsimputacion
  loc_A5A158: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_A5A15D: ILdRf var_114
  loc_A5A160: FLdPr Me
  loc_A5A163: MemStStrCopy
  loc_A5A167: FFreeStr var_9C = "": var_98 = "": var_A4 = "": var_110 = ""
  loc_A5A174: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_A5A17F: FFreeVar var_B4 = "": var_CC = "": var_DC = "": var_FC = ""
  loc_A5A18C: FLdPr Me
  loc_A5A18F: VCallAd Control_ID_ImpoImpuTxt
  loc_A5A192: FStAdFunc var_BC
  loc_A5A195: LitNothing
  loc_A5A197: CastAd
  loc_A5A19A: FStAdFunc var_B8
  loc_A5A19D: FLdRfVar var_B8
  loc_A5A1A0: FLdZeroAd var_BC
  loc_A5A1A3: FStAdFuncNoPop
  loc_A5A1A6: CastAd
  loc_A5A1A9: FStAdFunc var_90
  loc_A5A1AC: FLdRfVar var_90
  loc_A5A1AF: FLdPr Me
  loc_A5A1B2: MemLdRfVar from_stack_1.global_64
  loc_A5A1B5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A5A1BA: IStI2 Cancel
  loc_A5A1BD: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_A5A1C8: Branch loc_A5A25D
  loc_A5A1CB: FLdRfVar var_98
  loc_A5A1CE: FLdPr Me
  loc_A5A1D1: VCallAd Control_ID_ImpoImpuTxt
  loc_A5A1D4: FStAdFunc var_88
  loc_A5A1D7: FLdPr var_88
  loc_A5A1DA:  = Me.Text
  loc_A5A1DF: FLdRfVar var_9C
  loc_A5A1E2: FLdPr Me
  loc_A5A1E5: VCallAd Control_ID_SaldImpuLbl
  loc_A5A1E8: FStAdFunc var_90
  loc_A5A1EB: FLdPr var_90
  loc_A5A1EE:  = Me.Caption
  loc_A5A1F3: ILdRf var_9C
  loc_A5A1F6: LitI2_Byte &HFF
  loc_A5A1F8: LitI2_Byte 0
  loc_A5A1FA: LitI2_Byte &HFF
  loc_A5A1FC: ILdRf var_98
  loc_A5A1FF: LitStr "Importe"
  loc_A5A202: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_A5A207: FStStrNoPop var_A0
  loc_A5A20A: FLdPr Me
  loc_A5A20D: MemStStrCopy
  loc_A5A211: FFreeStr var_98 = "": var_9C = ""
  loc_A5A21A: FFreeAd var_88 = ""
  loc_A5A221: FLdPr Me
  loc_A5A224: VCallAd Control_ID_ImpoImpuTxt
  loc_A5A227: FStAdFunc var_BC
  loc_A5A22A: LitNothing
  loc_A5A22C: CastAd
  loc_A5A22F: FStAdFunc var_B8
  loc_A5A232: FLdRfVar var_B8
  loc_A5A235: FLdZeroAd var_BC
  loc_A5A238: FStAdFuncNoPop
  loc_A5A23B: CastAd
  loc_A5A23E: FStAdFunc var_90
  loc_A5A241: FLdRfVar var_90
  loc_A5A244: FLdPr Me
  loc_A5A247: MemLdRfVar from_stack_1.global_64
  loc_A5A24A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A5A24F: IStI2 Cancel
  loc_A5A252: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_A5A25D: ILdI2 Cancel
  loc_A5A260: NotI4
  loc_A5A261: BranchF loc_A5A2BF
  loc_A5A264: FLdRfVar var_9C
  loc_A5A267: FLdPr Me
  loc_A5A26A: VCallAd Control_ID_CantImpuTxt
  loc_A5A26D: FStAdFunc var_90
  loc_A5A270: FLdPr var_90
  loc_A5A273:  = Me.Text
  loc_A5A278: FLdRfVar var_98
  loc_A5A27B: FLdPr Me
  loc_A5A27E: VCallAd Control_ID_ImpoImpuTxt
  loc_A5A281: FStAdFunc var_88
  loc_A5A284: FLdPr var_88
  loc_A5A287:  = Me.Text
  loc_A5A28C: ILdRf var_98
  loc_A5A28F: CR8Str
  loc_A5A291: ILdRf var_9C
  loc_A5A294: CR8Str
  loc_A5A296: DivR8
  loc_A5A297: CStrR8
  loc_A5A299: FStStrNoPop var_A0
  loc_A5A29C: FLdPr Me
  loc_A5A29F: VCallAd Control_ID_ImunImpuTxt
  loc_A5A2A2: FStAdFunc var_B8
  loc_A5A2A5: FLdPr var_B8
  loc_A5A2A8: Me.Text = from_stack_1
  loc_A5A2AD: FFreeStr var_98 = "": var_9C = ""
  loc_A5A2B6: FFreeAd var_88 = "": var_90 = ""
  loc_A5A2BF: ExitProcHresult
End Sub

Private Sub FefaDeveMsk_UnknownEvent_0 '9C5CAC
  'Data Table: 4FA290
  loc_9C5BEC: FLdPr Me
  loc_9C5BEF: VCallAd Control_ID_FefaDeveMsk
  loc_9C5BF2: FStAdFunc var_88
  loc_9C5BF5: FLdPr var_88
  loc_9C5BF8: LateIdLdVar var_98 DispID_20 0
  loc_9C5BFF: CStrVarTmp
  loc_9C5C00: FStStrNoPop var_9C
  loc_9C5C03: LitStr vbNullString
  loc_9C5C06: EqStr
  loc_9C5C08: FFree1Str var_9C
  loc_9C5C0B: FFree1Ad var_88
  loc_9C5C0E: FFree1Var var_98 = ""
  loc_9C5C11: BranchF loc_9C5C99
  loc_9C5C14: FLdPr Me
  loc_9C5C17: VCallAd Control_ID_FechImpuMsk
  loc_9C5C1A: FStAdFunc var_88
  loc_9C5C1D: FLdPr var_88
  loc_9C5C20: LateIdLdVar var_98 DispID_20 0
  loc_9C5C27: PopAd
  loc_9C5C29: FLdPr Me
  loc_9C5C2C: VCallAd Control_ID_FechImpuMsk
  loc_9C5C2F: FStAdFunc var_A0
  loc_9C5C32: FLdPr var_A0
  loc_9C5C35: LateIdLdVar var_B0 DispID_22 0
  loc_9C5C3C: PopAd
  loc_9C5C3E: ImpAdLdRf MemVar_C3D04C
  loc_9C5C41: CVarRef
  loc_9C5C46: FLdRfVar var_B0
  loc_9C5C49: CStrVarTmp
  loc_9C5C4A: CVarStr var_D0
  loc_9C5C4D: FLdRfVar var_98
  loc_9C5C50: CStrVarTmp
  loc_9C5C51: FStStrNoPop var_9C
  loc_9C5C54: LitStr vbNullString
  loc_9C5C57: NeStr
  loc_9C5C59: CVarBoolI2 var_C0
  loc_9C5C5D: FLdRfVar var_F0
  loc_9C5C60: ImpAdCallFPR4  = IIf(, , )
  loc_9C5C65: FLdRfVar var_F0
  loc_9C5C68: CStrVarTmp
  loc_9C5C69: CVarStr var_100
  loc_9C5C6C: PopAdLdVar
  loc_9C5C6D: FLdPr Me
  loc_9C5C70: VCallAd Control_ID_FefaDeveMsk
  loc_9C5C73: FStAdFunc var_114
  loc_9C5C76: FLdPr var_114
  loc_9C5C79: LateIdSt
  loc_9C5C7E: FFree1Str var_9C
  loc_9C5C81: FFreeAd var_88 = "": var_A0 = ""
  loc_9C5C8A: FFreeVar var_98 = "": var_B0 = "": var_C0 = "": var_D0 = "": var_F0 = ""
  loc_9C5C99: FLdPr Me
  loc_9C5C9C: VCallAd Control_ID_FefaDeveMsk
  loc_9C5C9F: CVarAd
  loc_9C5CA3: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9C5CA8: FFree1Var var_98 = ""
  loc_9C5CAB: ExitProcHresult
End Sub

Private Sub FefaDeveMsk_UnknownEvent_8 '9C9C48
  'Data Table: 4FA290
  loc_9C9B74: FLdRfVar var_8A
  loc_9C9B77: FLdPr Me
  loc_9C9B7A: VCallAd Control_ID_cmdCancelar
  loc_9C9B7D: FStAdFunc var_88
  loc_9C9B80: FLdPr var_88
  loc_9C9B83:  = Me.Value
  loc_9C9B88: FLdI2 var_8A
  loc_9C9B8B: NotI4
  loc_9C9B8C: FLdPr Me
  loc_9C9B8F: VCallAd Control_ID_FefaDeveMsk
  loc_9C9B92: FStAdFunc var_90
  loc_9C9B95: FLdPr var_90
  loc_9C9B98: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C9B9F: CBoolVar
  loc_9C9BA1: AndI4
  loc_9C9BA2: FFreeAd var_88 = ""
  loc_9C9BA9: FFree1Var var_A0 = ""
  loc_9C9BAC: BranchF loc_9C9C47
  loc_9C9BAF: FLdPr Me
  loc_9C9BB2: VCallAd Control_ID_FefaDeveMsk
  loc_9C9BB5: FStAdFunc var_88
  loc_9C9BB8: FLdPr var_88
  loc_9C9BBB: LateIdLdVar var_A0 DispID_15 0
  loc_9C9BC2: PopAd
  loc_9C9BC4: FLdPr Me
  loc_9C9BC7: VCallAd Control_ID_FefaDeveMsk
  loc_9C9BCA: FStAdFunc var_AC
  loc_9C9BCD: LitI2_Byte &HFF
  loc_9C9BCF: PopTmpLdAd2 var_8A
  loc_9C9BD2: FLdZeroAd var_AC
  loc_9C9BD5: FStAdFunc var_90
  loc_9C9BD8: FLdRfVar var_90
  loc_9C9BDB: LitStr "01/01/2018"
  loc_9C9BDE: LitI2_Byte 0
  loc_9C9BE0: LitI2_Byte &HFF
  loc_9C9BE2: FLdRfVar var_A0
  loc_9C9BE5: CStrVarTmp
  loc_9C9BE6: FStStrNoPop var_A4
  loc_9C9BE9: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C9BEE: FStStrNoPop var_A8
  loc_9C9BF1: FLdPr Me
  loc_9C9BF4: MemStStrCopy
  loc_9C9BF8: FFreeStr var_A4 = ""
  loc_9C9BFF: FFreeAd var_88 = "": var_90 = ""
  loc_9C9C08: FFree1Var var_A0 = ""
  loc_9C9C0B: FLdPr Me
  loc_9C9C0E: VCallAd Control_ID_FefaDeveMsk
  loc_9C9C11: FStAdFunc var_B0
  loc_9C9C14: LitNothing
  loc_9C9C16: CastAd
  loc_9C9C19: FStAdFunc var_AC
  loc_9C9C1C: FLdRfVar var_AC
  loc_9C9C1F: FLdZeroAd var_B0
  loc_9C9C22: FStAdFuncNoPop
  loc_9C9C25: CastAd
  loc_9C9C28: FStAdFunc var_90
  loc_9C9C2B: FLdRfVar var_90
  loc_9C9C2E: FLdPr Me
  loc_9C9C31: MemLdRfVar from_stack_1.global_64
  loc_9C9C34: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C9C39: IStI2 Cancel
  loc_9C9C3C: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9C9C47: ExitProcHresult
End Sub

Private Sub FefaDeveMsk_KeyPress(KeyAscii As Integer) '98C068
  'Data Table: 4FA290
  loc_98C024: ILdI2 KeyAscii
  loc_98C027: CI4UI1
  loc_98C028: LitI4 &H20
  loc_98C02D: EqI4
  loc_98C02E: BranchF loc_98C064
  loc_98C031: LitVar_Missing var_A4
  loc_98C034: PopAdLdVar
  loc_98C035: LitVarI4
  loc_98C03D: PopAdLdVar
  loc_98C03E: ImpAdLdRf MemVar_C3D9A8
  loc_98C041: NewIfNullPr frmCalendario
  loc_98C044: frmCalendario.Show from_stack_1, from_stack_2
  loc_98C049: ImpAdLdRf MemVar_C3D038
  loc_98C04C: CDargRef
  loc_98C050: FLdPr Me
  loc_98C053: VCallAd Control_ID_FefaDeveMsk
  loc_98C056: FStAdFunc var_A8
  loc_98C059: FLdPr var_A8
  loc_98C05C: LateIdSt
  loc_98C061: FFree1Ad var_A8
  loc_98C064: ExitProcHresult
  loc_98C065: ConcatStr
End Sub

Private Sub cmdCancelar_Click() 'A14024
  'Data Table: 4FA290
  loc_A13EB0: LitI2_Byte 0
  loc_A13EB2: CUI1I2
  loc_A13EB4: FLdPr Me
  loc_A13EB7: MemStUI1
  loc_A13EBB: ILdRf Me
  loc_A13EBE: CastAd
  loc_A13EC1: FStAdFunc var_88
  loc_A13EC4: FLdRfVar var_88
  loc_A13EC7: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A13ECC: FFree1Ad var_88
  loc_A13ECF: LitI4 0
  loc_A13ED4: LitI4 0
  loc_A13ED9: FLdRfVar var_8C
  loc_A13EDC: Redim
  loc_A13EE6: FLdPr Me
  loc_A13EE9: VCallAd Control_ID_dgdABMS
  loc_A13EEC: CVarAd
  loc_A13EF0: ParmAry1St
  loc_A13EF6: FLdRfVar var_8C
  loc_A13EF9: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A13EFE: FLdRfVar var_8C
  loc_A13F01: Erase
  loc_A13F02: FLdPr Me
  loc_A13F05: MemLdRfVar from_stack_1.global_52
  loc_A13F08: NewIfNullAd
  loc_A13F0B: FStAd var_A0 
  loc_A13F0F: FLdRfVar var_A0
  loc_A13F12: CVarRef
  loc_A13F17: ILdRf Me
  loc_A13F1A: CastAd
  loc_A13F1D: FStAdFunc var_88
  loc_A13F20: FLdRfVar var_88
  loc_A13F23: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A13F28: ILdRf var_A0
  loc_A13F2B: CastAd
  loc_A13F2E: FLdPr Me
  loc_A13F31: MemStAdFunc
  loc_A13F35: FFreeAd var_88 = ""
  loc_A13F3C: FLdRfVar var_B4
  loc_A13F3F: FLdPr Me
  loc_A13F42: MemLdRfVar from_stack_1.global_52
  loc_A13F45: NewIfNullPr clsimputacion
  loc_A13F48: from_stack_1 = clsimputacion.RecordCount
  loc_A13F4D: ILdRf var_B4
  loc_A13F50: LitI4 0
  loc_A13F55: EqI4
  loc_A13F56: BranchF loc_A13FB7
  loc_A13F59: ILdRf Me
  loc_A13F5C: CastAd
  loc_A13F5F: FStAdFunc var_88
  loc_A13F62: FLdRfVar var_88
  loc_A13F65: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A13F6A: FFree1Ad var_88
  loc_A13F6D: ILdRf Me
  loc_A13F70: CastAd
  loc_A13F73: FStAdFunc var_88
  loc_A13F76: FLdRfVar var_88
  loc_A13F79: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A13F7E: FFree1Ad var_88
  loc_A13F81: LitI4 0
  loc_A13F86: LitI4 0
  loc_A13F8B: FLdRfVar var_8C
  loc_A13F8E: Redim
  loc_A13F98: FLdPr Me
  loc_A13F9B: VCallAd Control_ID_dgdABMS
  loc_A13F9E: CVarAd
  loc_A13FA2: ParmAry1St
  loc_A13FA8: FLdRfVar var_8C
  loc_A13FAB: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A13FB0: FLdRfVar var_8C
  loc_A13FB3: Erase
  loc_A13FB4: Branch loc_A13FC5
  loc_A13FB7: FLdPr Me
  loc_A13FBA: MemLdRfVar from_stack_1.global_52
  loc_A13FBD: NewIfNullPr clsimputacion
  loc_A13FC0: Call clsimputacion.MoveFirst()
  loc_A13FC5: ILdRf Me
  loc_A13FC8: CastAd
  loc_A13FCB: FStAdFunc var_88
  loc_A13FCE: FLdRfVar var_88
  loc_A13FD1: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A13FD6: FFree1Ad var_88
  loc_A13FD9: FLdPr Me
  loc_A13FDC: VCallAd Control_ID_dgdABMS
  loc_A13FDF: FStAdFunc var_A0
  loc_A13FE2: LitI4 0
  loc_A13FE7: FStStrCopy var_B8
  loc_A13FEA: FLdRfVar var_B8
  loc_A13FED: FLdPr Me
  loc_A13FF0: MemLdStr global_76
  loc_A13FF3: FLdZeroAd var_A0
  loc_A13FF6: FStAdFunc var_88
  loc_A13FF9: FLdRfVar var_88
  loc_A13FFC: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A14001: FFree1Str var_B8
  loc_A14004: FFreeAd var_88 = ""
  loc_A1400B: LitStr vbNullString
  loc_A1400E: FLdPr Me
  loc_A14011: VCallAd Control_ID_SaldAutoLbl
  loc_A14014: FStAdFunc var_88
  loc_A14017: FLdPr var_88
  loc_A1401A: Me.Caption = from_stack_1
  loc_A1401F: FFree1Ad var_88
  loc_A14022: ExitProcHresult
End Sub

Private Function ExorImpuMsk_UnknownEvent_8(arg_C) '9C3888
  'Data Table: 4FA290
  loc_9C37C4: FLdRfVar var_8A
  loc_9C37C7: FLdPr Me
  loc_9C37CA: VCallAd Control_ID_cmdCancelar
  loc_9C37CD: FStAdFunc var_88
  loc_9C37D0: FLdPr var_88
  loc_9C37D3:  = Me.Value
  loc_9C37D8: FLdI2 var_8A
  loc_9C37DB: NotI4
  loc_9C37DC: FLdPr Me
  loc_9C37DF: VCallAd Control_ID_ExorImpuMsk
  loc_9C37E2: FStAdFunc var_90
  loc_9C37E5: FLdPr var_90
  loc_9C37E8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C37EF: CBoolVar
  loc_9C37F1: AndI4
  loc_9C37F2: FFreeAd var_88 = ""
  loc_9C37F9: FFree1Var var_A0 = ""
  loc_9C37FC: BranchF loc_9C3885
  loc_9C37FF: FLdPr Me
  loc_9C3802: VCallAd Control_ID_ExorImpuMsk
  loc_9C3805: FStAdFunc var_88
  loc_9C3808: FLdPr var_88
  loc_9C380B: LateIdLdVar var_A0 DispID_22 0
  loc_9C3812: PopAd
  loc_9C3814: LitI2_Byte 0
  loc_9C3816: PopTmpLdAd2 var_A8
  loc_9C3819: LitI2_Byte 0
  loc_9C381B: PopTmpLdAd2 var_A6
  loc_9C381E: LitI2_Byte 0
  loc_9C3820: PopTmpLdAd2 var_8A
  loc_9C3823: FLdRfVar var_A0
  loc_9C3826: CStrVarTmp
  loc_9C3827: FStStrNoPop var_A4
  loc_9C382A: LitStr "Expediente Original"
  loc_9C382D: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C3832: FStStrNoPop var_AC
  loc_9C3835: FLdPr Me
  loc_9C3838: MemStStrCopy
  loc_9C383C: FFreeStr var_A4 = ""
  loc_9C3843: FFree1Ad var_88
  loc_9C3846: FFree1Var var_A0 = ""
  loc_9C3849: FLdPr Me
  loc_9C384C: VCallAd Control_ID_ExorImpuMsk
  loc_9C384F: FStAdFunc var_B4
  loc_9C3852: LitNothing
  loc_9C3854: CastAd
  loc_9C3857: FStAdFunc var_B0
  loc_9C385A: FLdRfVar var_B0
  loc_9C385D: FLdZeroAd var_B4
  loc_9C3860: FStAdFuncNoPop
  loc_9C3863: CastAd
  loc_9C3866: FStAdFunc var_90
  loc_9C3869: FLdRfVar var_90
  loc_9C386C: FLdPr Me
  loc_9C386F: MemLdRfVar from_stack_1.global_64
  loc_9C3872: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C3877: IStI2 arg_C
  loc_9C387A: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9C3885: ExitProcHresult
  loc_9C3886: ExitProcR4
End Function

Private Sub CodiOrgaMsk_UnknownEvent_0 '9A0A14
  'Data Table: 4FA290
  loc_9A09A4: LitVarStr var_94, vbNullString
  loc_9A09A9: PopAdLdVar
  loc_9A09AA: FLdPr Me
  loc_9A09AD: VCallAd Control_ID_CodiOrgaMsk
  loc_9A09B0: FStAdFunc var_A8
  loc_9A09B3: FLdPr var_A8
  loc_9A09B6: LateIdSt
  loc_9A09BB: FFree1Ad var_A8
  loc_9A09BE: FLdPr Me
  loc_9A09C1: VCallAd Control_ID_CodiOrgaMsk
  loc_9A09C4: FStAdFunc var_A8
  loc_9A09C7: FLdPr var_A8
  loc_9A09CA: LateIdLdVar var_B8 DispID_22 0
  loc_9A09D1: CStrVarTmp
  loc_9A09D2: FStStrNoPop var_BC
  loc_9A09D5: LitStr vbNullString
  loc_9A09D8: EqStr
  loc_9A09DA: FFree1Str var_BC
  loc_9A09DD: FFree1Ad var_A8
  loc_9A09E0: FFree1Var var_B8 = ""
  loc_9A09E3: BranchF loc_9A0A00
  loc_9A09E6: LitVarStr var_94, vbNullString
  loc_9A09EB: PopAdLdVar
  loc_9A09EC: FLdPr Me
  loc_9A09EF: VCallAd Control_ID_CodiOrgaMsk
  loc_9A09F2: FStAdFunc var_A8
  loc_9A09F5: FLdPr var_A8
  loc_9A09F8: LateIdSt
  loc_9A09FD: FFree1Ad var_A8
  loc_9A0A00: FLdPr Me
  loc_9A0A03: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0A06: CVarAd
  loc_9A0A0A: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A0A0F: FFree1Var var_B8 = ""
  loc_9A0A12: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_1 '96B3FC
  'Data Table: 4FA290
  loc_96B3E0: LitVarStr var_94, "######"
  loc_96B3E5: PopAdLdVar
  loc_96B3E6: FLdPr Me
  loc_96B3E9: VCallAd Control_ID_CodiOrgaMsk
  loc_96B3EC: FStAdFunc var_A8
  loc_96B3EF: FLdPr var_A8
  loc_96B3F2: LateIdSt
  loc_96B3F7: FFree1Ad var_A8
  loc_96B3FA: ExitProcHresult
End Sub

Private Function CodiOrgaMsk_UnknownEvent_8(arg_C) 'B58678
  'Data Table: 4FA290
  loc_B57B88: FLdRfVar var_8A
  loc_B57B8B: FLdPr Me
  loc_B57B8E: VCallAd Control_ID_cmdCancelar
  loc_B57B91: FStAdFunc var_88
  loc_B57B94: FLdPr var_88
  loc_B57B97:  = Me.Value
  loc_B57B9C: FLdI2 var_8A
  loc_B57B9F: NotI4
  loc_B57BA0: FLdPr Me
  loc_B57BA3: VCallAd Control_ID_CodiOrgaMsk
  loc_B57BA6: FStAdFunc var_90
  loc_B57BA9: FLdPr var_90
  loc_B57BAC: LateIdLdVar var_A0 DispID_13 -32767
  loc_B57BB3: CBoolVar
  loc_B57BB5: AndI4
  loc_B57BB6: FFreeAd var_88 = ""
  loc_B57BBD: FFree1Var var_A0 = ""
  loc_B57BC0: BranchF loc_B58674
  loc_B57BC3: FLdPr Me
  loc_B57BC6: VCallAd Control_ID_CodiOrgaMsk
  loc_B57BC9: FStAdFunc var_88
  loc_B57BCC: FLdPr var_88
  loc_B57BCF: LateIdLdVar var_A0 DispID_22 0
  loc_B57BD6: CStrVarTmp
  loc_B57BD7: FStStrNoPop var_A4
  loc_B57BDA: ImpAdCallI2 Trim$()
  loc_B57BDF: FStStrNoPop var_A8
  loc_B57BE2: LitStr vbNullString
  loc_B57BE5: NeStr
  loc_B57BE7: FFreeStr var_A4 = ""
  loc_B57BEE: FFree1Ad var_88
  loc_B57BF1: FFree1Var var_A0 = ""
  loc_B57BF4: BranchF loc_B58454
  loc_B57BF7: FLdPr Me
  loc_B57BFA: VCallAd Control_ID_CodiOrgaMsk
  loc_B57BFD: FStAdFunc var_88
  loc_B57C00: FLdRfVar var_88
  loc_B57C03: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B57C08: FFree1Ad var_88
  loc_B57C0B: BranchF loc_B58031
  loc_B57C0E: FLdPr Me
  loc_B57C11: VCallAd Control_ID_CodiOrgaMsk
  loc_B57C14: FStAdFunc var_88
  loc_B57C17: FLdPr var_88
  loc_B57C1A: LateIdLdVar var_A0 DispID_22 0
  loc_B57C21: PopAd
  loc_B57C23: LitStr " AND o.CodiOrga = '"
  loc_B57C26: LitI4 0
  loc_B57C2B: LitI4 -1
  loc_B57C30: LitI4 1
  loc_B57C35: LitStr vbNullString
  loc_B57C38: LitStr "."
  loc_B57C3B: FLdRfVar var_A0
  loc_B57C3E: CStrVarTmp
  loc_B57C3F: FStStrNoPop var_A4
  loc_B57C42: ImpAdCallI2 Replace(, , , , , )
  loc_B57C47: FStStrNoPop var_A8
  loc_B57C4A: ConcatStr
  loc_B57C4B: FStStrNoPop var_AC
  loc_B57C4E: LitStr "'"
  loc_B57C51: ConcatStr
  loc_B57C52: FStStrNoPop var_B0
  loc_B57C55: ImpAdLdI2 MemVar_C3D064
  loc_B57C58: ImpAdLdRf MemVar_C3D710
  loc_B57C5B: NewIfNullPr bscOrganigrama
  loc_B57C5E: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B57C63: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B57C6E: FFree1Ad var_88
  loc_B57C71: FFree1Var var_A0 = ""
  loc_B57C74: FLdRfVar var_B4
  loc_B57C77: FLdRfVar var_90
  loc_B57C7A: FLdRfVar var_88
  loc_B57C7D: ImpAdLdRf MemVar_C3D710
  loc_B57C80: NewIfNullPr bscOrganigrama
  loc_B57C83: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B57C88: FLdPr var_88
  loc_B57C8B: from_stack_1v = clsbase.RsFrmGet()
  loc_B57C90: FLdPr var_90
  loc_B57C93:  = Me.RecordCount
  loc_B57C98: ILdRf var_B4
  loc_B57C9B: LitI4 1
  loc_B57CA0: EqI4
  loc_B57CA1: FFreeAd var_88 = ""
  loc_B57CA8: BranchF loc_B57DCD
  loc_B57CAB: FLdRfVar var_A0
  loc_B57CAE: FLdRfVar var_CC
  loc_B57CB1: LitVarStr var_C8, "CodiOrga"
  loc_B57CB6: PopAdLdVar
  loc_B57CB7: FLdRfVar var_B8
  loc_B57CBA: FLdRfVar var_90
  loc_B57CBD: FLdRfVar var_88
  loc_B57CC0: ImpAdLdRf MemVar_C3D710
  loc_B57CC3: NewIfNullPr bscOrganigrama
  loc_B57CC6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B57CCB: FLdPr var_88
  loc_B57CCE: from_stack_1v = clsbase.RsFrmGet()
  loc_B57CD3: FLdPr var_90
  loc_B57CD6:  = Me.Fields
  loc_B57CDB: FLdPr var_B8
  loc_B57CDE: from_stack_2 = Me.Item(from_stack_1)
  loc_B57CE3: FLdPr var_CC
  loc_B57CE6:  = Me.Value
  loc_B57CEB: FLdRfVar var_A4
  loc_B57CEE: FLdPr Me
  loc_B57CF1:  = Me.Name
  loc_B57CF6: FLdPr Me
  loc_B57CF9: MemLdRfVar from_stack_1.global_96
  loc_B57CFC: NewIfNullRf
  loc_B57D00: ILdRf var_A4
  loc_B57D03: FLdRfVar var_A0
  loc_B57D06: CStrVarTmp
  loc_B57D07: FStStrNoPop var_A8
  loc_B57D0A: ImpAdLdI2 MemVar_C3D064
  loc_B57D0D: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B57D12: FStStrNoPop var_AC
  loc_B57D15: FLdPr Me
  loc_B57D18: MemStStrCopy
  loc_B57D1C: FFreeStr var_A8 = "": var_A4 = ""
  loc_B57D25: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57D30: FFree1Var var_A0 = ""
  loc_B57D33: FLdRfVar var_A4
  loc_B57D36: FLdPr Me
  loc_B57D39: MemLdRfVar from_stack_1.global_96
  loc_B57D3C: NewIfNullPr tblorganigrama
  loc_B57D3F: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B57D44: FLdZeroAd var_A4
  loc_B57D47: CVarStr var_A0
  loc_B57D4A: PopAdLdVar
  loc_B57D4B: FLdPr Me
  loc_B57D4E: VCallAd Control_ID_CodiOrgaMsk
  loc_B57D51: FStAdFunc var_88
  loc_B57D54: FLdPr var_88
  loc_B57D57: LateIdSt
  loc_B57D5C: FFree1Ad var_88
  loc_B57D5F: FFree1Var var_A0 = ""
  loc_B57D62: FLdRfVar var_A4
  loc_B57D65: FLdPr Me
  loc_B57D68: MemLdRfVar from_stack_1.global_96
  loc_B57D6B: NewIfNullPr tblorganigrama
  loc_B57D6E: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B57D73: ILdRf var_A4
  loc_B57D76: FLdPr Me
  loc_B57D79: VCallAd Control_ID_DetaOrgaLbl
  loc_B57D7C: FStAdFunc var_88
  loc_B57D7F: FLdPr var_88
  loc_B57D82: Me.Caption = from_stack_1
  loc_B57D87: FFree1Str var_A4
  loc_B57D8A: FFree1Ad var_88
  loc_B57D8D: FLdPr Me
  loc_B57D90: VCallAd Control_ID_CodiOrgaMsk
  loc_B57D93: FStAdFunc var_CC
  loc_B57D96: FLdPr Me
  loc_B57D99: VCallAd Control_ID_DetaOrgaLbl
  loc_B57D9C: FStAdFunc var_B8
  loc_B57D9F: FLdRfVar var_B8
  loc_B57DA2: FLdZeroAd var_CC
  loc_B57DA5: FStAdFuncNoPop
  loc_B57DA8: CastAd
  loc_B57DAB: FStAdFunc var_90
  loc_B57DAE: FLdRfVar var_90
  loc_B57DB1: FLdPr Me
  loc_B57DB4: MemLdRfVar from_stack_1.global_64
  loc_B57DB7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B57DBC: IStI2 arg_C
  loc_B57DBF: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57DCA: Branch loc_B5802E
  loc_B57DCD: FLdRfVar var_B4
  loc_B57DD0: FLdRfVar var_90
  loc_B57DD3: FLdRfVar var_88
  loc_B57DD6: ImpAdLdRf MemVar_C3D710
  loc_B57DD9: NewIfNullPr bscOrganigrama
  loc_B57DDC: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B57DE1: FLdPr var_88
  loc_B57DE4: from_stack_1v = clsbase.RsFrmGet()
  loc_B57DE9: FLdPr var_90
  loc_B57DEC:  = Me.RecordCount
  loc_B57DF1: ILdRf var_B4
  loc_B57DF4: LitI4 1
  loc_B57DF9: GtI4
  loc_B57DFA: FFreeAd var_88 = ""
  loc_B57E01: BranchF loc_B57FB0
  loc_B57E04: LitVar_Missing var_DC
  loc_B57E07: PopAdLdVar
  loc_B57E08: LitVarI4
  loc_B57E10: PopAdLdVar
  loc_B57E11: ImpAdLdRf MemVar_C3D710
  loc_B57E14: NewIfNullPr bscOrganigrama
  loc_B57E17: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B57E1C: FLdRfVar var_B4
  loc_B57E1F: FLdRfVar var_88
  loc_B57E22: ImpAdLdRf MemVar_C3D710
  loc_B57E25: NewIfNullPr bscOrganigrama
  loc_B57E28: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B57E2D: FLdPr var_88
  loc_B57E30: from_stack_1 = clsbase.RecordCount
  loc_B57E35: ILdRf var_B4
  loc_B57E38: LitI4 0
  loc_B57E3D: GtI4
  loc_B57E3E: FFree1Ad var_88
  loc_B57E41: BranchF loc_B57F66
  loc_B57E44: FLdRfVar var_A0
  loc_B57E47: FLdRfVar var_CC
  loc_B57E4A: LitVarStr var_C8, "CodiOrga"
  loc_B57E4F: PopAdLdVar
  loc_B57E50: FLdRfVar var_B8
  loc_B57E53: FLdRfVar var_90
  loc_B57E56: FLdRfVar var_88
  loc_B57E59: ImpAdLdRf MemVar_C3D710
  loc_B57E5C: NewIfNullPr bscOrganigrama
  loc_B57E5F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B57E64: FLdPr var_88
  loc_B57E67: from_stack_1v = clsbase.RsFrmGet()
  loc_B57E6C: FLdPr var_90
  loc_B57E6F:  = Me.Fields
  loc_B57E74: FLdPr var_B8
  loc_B57E77: from_stack_2 = Me.Item(from_stack_1)
  loc_B57E7C: FLdPr var_CC
  loc_B57E7F:  = Me.Value
  loc_B57E84: FLdRfVar var_A4
  loc_B57E87: FLdPr Me
  loc_B57E8A:  = Me.Name
  loc_B57E8F: FLdPr Me
  loc_B57E92: MemLdRfVar from_stack_1.global_96
  loc_B57E95: NewIfNullRf
  loc_B57E99: ILdRf var_A4
  loc_B57E9C: FLdRfVar var_A0
  loc_B57E9F: CStrVarTmp
  loc_B57EA0: FStStrNoPop var_A8
  loc_B57EA3: ImpAdLdI2 MemVar_C3D064
  loc_B57EA6: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B57EAB: FStStrNoPop var_AC
  loc_B57EAE: FLdPr Me
  loc_B57EB1: MemStStrCopy
  loc_B57EB5: FFreeStr var_A8 = "": var_A4 = ""
  loc_B57EBE: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57EC9: FFree1Var var_A0 = ""
  loc_B57ECC: FLdRfVar var_A4
  loc_B57ECF: FLdPr Me
  loc_B57ED2: MemLdRfVar from_stack_1.global_96
  loc_B57ED5: NewIfNullPr tblorganigrama
  loc_B57ED8: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B57EDD: FLdZeroAd var_A4
  loc_B57EE0: CVarStr var_A0
  loc_B57EE3: PopAdLdVar
  loc_B57EE4: FLdPr Me
  loc_B57EE7: VCallAd Control_ID_CodiOrgaMsk
  loc_B57EEA: FStAdFunc var_88
  loc_B57EED: FLdPr var_88
  loc_B57EF0: LateIdSt
  loc_B57EF5: FFree1Ad var_88
  loc_B57EF8: FFree1Var var_A0 = ""
  loc_B57EFB: FLdRfVar var_A4
  loc_B57EFE: FLdPr Me
  loc_B57F01: MemLdRfVar from_stack_1.global_96
  loc_B57F04: NewIfNullPr tblorganigrama
  loc_B57F07: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B57F0C: ILdRf var_A4
  loc_B57F0F: FLdPr Me
  loc_B57F12: VCallAd Control_ID_DetaOrgaLbl
  loc_B57F15: FStAdFunc var_88
  loc_B57F18: FLdPr var_88
  loc_B57F1B: Me.Caption = from_stack_1
  loc_B57F20: FFree1Str var_A4
  loc_B57F23: FFree1Ad var_88
  loc_B57F26: FLdPr Me
  loc_B57F29: VCallAd Control_ID_CodiOrgaMsk
  loc_B57F2C: FStAdFunc var_CC
  loc_B57F2F: FLdPr Me
  loc_B57F32: VCallAd Control_ID_DetaOrgaLbl
  loc_B57F35: FStAdFunc var_B8
  loc_B57F38: FLdRfVar var_B8
  loc_B57F3B: FLdZeroAd var_CC
  loc_B57F3E: FStAdFuncNoPop
  loc_B57F41: CastAd
  loc_B57F44: FStAdFunc var_90
  loc_B57F47: FLdRfVar var_90
  loc_B57F4A: FLdPr Me
  loc_B57F4D: MemLdRfVar from_stack_1.global_64
  loc_B57F50: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B57F55: IStI2 arg_C
  loc_B57F58: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57F63: Branch loc_B57FAD
  loc_B57F66: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B57F69: FLdPr Me
  loc_B57F6C: MemStStrCopy
  loc_B57F70: FLdPr Me
  loc_B57F73: VCallAd Control_ID_CodiOrgaMsk
  loc_B57F76: FStAdFunc var_CC
  loc_B57F79: FLdPr Me
  loc_B57F7C: VCallAd Control_ID_DetaOrgaLbl
  loc_B57F7F: FStAdFunc var_B8
  loc_B57F82: FLdRfVar var_B8
  loc_B57F85: FLdZeroAd var_CC
  loc_B57F88: FStAdFuncNoPop
  loc_B57F8B: CastAd
  loc_B57F8E: FStAdFunc var_90
  loc_B57F91: FLdRfVar var_90
  loc_B57F94: FLdPr Me
  loc_B57F97: MemLdRfVar from_stack_1.global_64
  loc_B57F9A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B57F9F: IStI2 arg_C
  loc_B57FA2: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57FAD: Branch loc_B5802E
  loc_B57FB0: FLdRfVar var_B4
  loc_B57FB3: FLdRfVar var_90
  loc_B57FB6: FLdRfVar var_88
  loc_B57FB9: ImpAdLdRf MemVar_C3D710
  loc_B57FBC: NewIfNullPr bscOrganigrama
  loc_B57FBF: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B57FC4: FLdPr var_88
  loc_B57FC7: from_stack_1v = clsbase.RsFrmGet()
  loc_B57FCC: FLdPr var_90
  loc_B57FCF:  = Me.RecordCount
  loc_B57FD4: ILdRf var_B4
  loc_B57FD7: LitI4 1
  loc_B57FDC: LtI4
  loc_B57FDD: FFreeAd var_88 = ""
  loc_B57FE4: BranchF loc_B5802E
  loc_B57FE7: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B57FEA: FLdPr Me
  loc_B57FED: MemStStrCopy
  loc_B57FF1: FLdPr Me
  loc_B57FF4: VCallAd Control_ID_CodiOrgaMsk
  loc_B57FF7: FStAdFunc var_CC
  loc_B57FFA: FLdPr Me
  loc_B57FFD: VCallAd Control_ID_DetaOrgaLbl
  loc_B58000: FStAdFunc var_B8
  loc_B58003: FLdRfVar var_B8
  loc_B58006: FLdZeroAd var_CC
  loc_B58009: FStAdFuncNoPop
  loc_B5800C: CastAd
  loc_B5800F: FStAdFunc var_90
  loc_B58012: FLdRfVar var_90
  loc_B58015: FLdPr Me
  loc_B58018: MemLdRfVar from_stack_1.global_64
  loc_B5801B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58020: IStI2 arg_C
  loc_B58023: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5802E: Branch loc_B58451
  loc_B58031: FLdPr Me
  loc_B58034: VCallAd Control_ID_CodiOrgaMsk
  loc_B58037: FStAdFunc var_88
  loc_B5803A: FLdPr var_88
  loc_B5803D: LateIdLdVar var_A0 DispID_22 0
  loc_B58044: PopAd
  loc_B58046: LitStr " AND o.DetaOrga LIKE '" & Chr(37)
  loc_B58049: LitI4 0
  loc_B5804E: LitI4 -1
  loc_B58053: LitI4 1
  loc_B58058: LitStr Chr(37)
  loc_B5805B: LitStr " "
  loc_B5805E: FLdRfVar var_A0
  loc_B58061: CStrVarTmp
  loc_B58062: FStStrNoPop var_A4
  loc_B58065: ImpAdCallI2 Replace(, , , , , )
  loc_B5806A: FStStrNoPop var_A8
  loc_B5806D: ConcatStr
  loc_B5806E: FStStrNoPop var_AC
  loc_B58071: LitStr Chr(37) & "'"
  loc_B58074: ConcatStr
  loc_B58075: FStStrNoPop var_B0
  loc_B58078: ImpAdLdI2 MemVar_C3D064
  loc_B5807B: ImpAdLdRf MemVar_C3D710
  loc_B5807E: NewIfNullPr bscOrganigrama
  loc_B58081: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B58086: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B58091: FFree1Ad var_88
  loc_B58094: FFree1Var var_A0 = ""
  loc_B58097: FLdRfVar var_B4
  loc_B5809A: FLdRfVar var_90
  loc_B5809D: FLdRfVar var_88
  loc_B580A0: ImpAdLdRf MemVar_C3D710
  loc_B580A3: NewIfNullPr bscOrganigrama
  loc_B580A6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B580AB: FLdPr var_88
  loc_B580AE: from_stack_1v = clsbase.RsFrmGet()
  loc_B580B3: FLdPr var_90
  loc_B580B6:  = Me.RecordCount
  loc_B580BB: ILdRf var_B4
  loc_B580BE: LitI4 1
  loc_B580C3: EqI4
  loc_B580C4: FFreeAd var_88 = ""
  loc_B580CB: BranchF loc_B581F0
  loc_B580CE: FLdRfVar var_A0
  loc_B580D1: FLdRfVar var_CC
  loc_B580D4: LitVarStr var_C8, "CodiOrga"
  loc_B580D9: PopAdLdVar
  loc_B580DA: FLdRfVar var_B8
  loc_B580DD: FLdRfVar var_90
  loc_B580E0: FLdRfVar var_88
  loc_B580E3: ImpAdLdRf MemVar_C3D710
  loc_B580E6: NewIfNullPr bscOrganigrama
  loc_B580E9: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B580EE: FLdPr var_88
  loc_B580F1: from_stack_1v = clsbase.RsFrmGet()
  loc_B580F6: FLdPr var_90
  loc_B580F9:  = Me.Fields
  loc_B580FE: FLdPr var_B8
  loc_B58101: from_stack_2 = Me.Item(from_stack_1)
  loc_B58106: FLdPr var_CC
  loc_B58109:  = Me.Value
  loc_B5810E: FLdRfVar var_A4
  loc_B58111: FLdPr Me
  loc_B58114:  = Me.Name
  loc_B58119: FLdPr Me
  loc_B5811C: MemLdRfVar from_stack_1.global_96
  loc_B5811F: NewIfNullRf
  loc_B58123: ILdRf var_A4
  loc_B58126: FLdRfVar var_A0
  loc_B58129: CStrVarTmp
  loc_B5812A: FStStrNoPop var_A8
  loc_B5812D: ImpAdLdI2 MemVar_C3D064
  loc_B58130: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B58135: FStStrNoPop var_AC
  loc_B58138: FLdPr Me
  loc_B5813B: MemStStrCopy
  loc_B5813F: FFreeStr var_A8 = "": var_A4 = ""
  loc_B58148: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58153: FFree1Var var_A0 = ""
  loc_B58156: FLdRfVar var_A4
  loc_B58159: FLdPr Me
  loc_B5815C: MemLdRfVar from_stack_1.global_96
  loc_B5815F: NewIfNullPr tblorganigrama
  loc_B58162: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B58167: FLdZeroAd var_A4
  loc_B5816A: CVarStr var_A0
  loc_B5816D: PopAdLdVar
  loc_B5816E: FLdPr Me
  loc_B58171: VCallAd Control_ID_CodiOrgaMsk
  loc_B58174: FStAdFunc var_88
  loc_B58177: FLdPr var_88
  loc_B5817A: LateIdSt
  loc_B5817F: FFree1Ad var_88
  loc_B58182: FFree1Var var_A0 = ""
  loc_B58185: FLdRfVar var_A4
  loc_B58188: FLdPr Me
  loc_B5818B: MemLdRfVar from_stack_1.global_96
  loc_B5818E: NewIfNullPr tblorganigrama
  loc_B58191: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B58196: ILdRf var_A4
  loc_B58199: FLdPr Me
  loc_B5819C: VCallAd Control_ID_DetaOrgaLbl
  loc_B5819F: FStAdFunc var_88
  loc_B581A2: FLdPr var_88
  loc_B581A5: Me.Caption = from_stack_1
  loc_B581AA: FFree1Str var_A4
  loc_B581AD: FFree1Ad var_88
  loc_B581B0: FLdPr Me
  loc_B581B3: VCallAd Control_ID_CodiOrgaMsk
  loc_B581B6: FStAdFunc var_CC
  loc_B581B9: FLdPr Me
  loc_B581BC: VCallAd Control_ID_DetaOrgaLbl
  loc_B581BF: FStAdFunc var_B8
  loc_B581C2: FLdRfVar var_B8
  loc_B581C5: FLdZeroAd var_CC
  loc_B581C8: FStAdFuncNoPop
  loc_B581CB: CastAd
  loc_B581CE: FStAdFunc var_90
  loc_B581D1: FLdRfVar var_90
  loc_B581D4: FLdPr Me
  loc_B581D7: MemLdRfVar from_stack_1.global_64
  loc_B581DA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B581DF: IStI2 arg_C
  loc_B581E2: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B581ED: Branch loc_B58451
  loc_B581F0: FLdRfVar var_B4
  loc_B581F3: FLdRfVar var_90
  loc_B581F6: FLdRfVar var_88
  loc_B581F9: ImpAdLdRf MemVar_C3D710
  loc_B581FC: NewIfNullPr bscOrganigrama
  loc_B581FF: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58204: FLdPr var_88
  loc_B58207: from_stack_1v = clsbase.RsFrmGet()
  loc_B5820C: FLdPr var_90
  loc_B5820F:  = Me.RecordCount
  loc_B58214: ILdRf var_B4
  loc_B58217: LitI4 1
  loc_B5821C: GtI4
  loc_B5821D: FFreeAd var_88 = ""
  loc_B58224: BranchF loc_B583D3
  loc_B58227: LitVar_Missing var_DC
  loc_B5822A: PopAdLdVar
  loc_B5822B: LitVarI4
  loc_B58233: PopAdLdVar
  loc_B58234: ImpAdLdRf MemVar_C3D710
  loc_B58237: NewIfNullPr bscOrganigrama
  loc_B5823A: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B5823F: FLdRfVar var_B4
  loc_B58242: FLdRfVar var_88
  loc_B58245: ImpAdLdRf MemVar_C3D710
  loc_B58248: NewIfNullPr bscOrganigrama
  loc_B5824B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58250: FLdPr var_88
  loc_B58253: from_stack_1 = clsbase.RecordCount
  loc_B58258: ILdRf var_B4
  loc_B5825B: LitI4 0
  loc_B58260: GtI4
  loc_B58261: FFree1Ad var_88
  loc_B58264: BranchF loc_B58389
  loc_B58267: FLdRfVar var_A0
  loc_B5826A: FLdRfVar var_CC
  loc_B5826D: LitVarStr var_C8, "CodiOrga"
  loc_B58272: PopAdLdVar
  loc_B58273: FLdRfVar var_B8
  loc_B58276: FLdRfVar var_90
  loc_B58279: FLdRfVar var_88
  loc_B5827C: ImpAdLdRf MemVar_C3D710
  loc_B5827F: NewIfNullPr bscOrganigrama
  loc_B58282: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58287: FLdPr var_88
  loc_B5828A: from_stack_1v = clsbase.RsFrmGet()
  loc_B5828F: FLdPr var_90
  loc_B58292:  = Me.Fields
  loc_B58297: FLdPr var_B8
  loc_B5829A: from_stack_2 = Me.Item(from_stack_1)
  loc_B5829F: FLdPr var_CC
  loc_B582A2:  = Me.Value
  loc_B582A7: FLdRfVar var_A4
  loc_B582AA: FLdPr Me
  loc_B582AD:  = Me.Name
  loc_B582B2: FLdPr Me
  loc_B582B5: MemLdRfVar from_stack_1.global_96
  loc_B582B8: NewIfNullRf
  loc_B582BC: ILdRf var_A4
  loc_B582BF: FLdRfVar var_A0
  loc_B582C2: CStrVarTmp
  loc_B582C3: FStStrNoPop var_A8
  loc_B582C6: ImpAdLdI2 MemVar_C3D064
  loc_B582C9: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B582CE: FStStrNoPop var_AC
  loc_B582D1: FLdPr Me
  loc_B582D4: MemStStrCopy
  loc_B582D8: FFreeStr var_A8 = "": var_A4 = ""
  loc_B582E1: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B582EC: FFree1Var var_A0 = ""
  loc_B582EF: FLdRfVar var_A4
  loc_B582F2: FLdPr Me
  loc_B582F5: MemLdRfVar from_stack_1.global_96
  loc_B582F8: NewIfNullPr tblorganigrama
  loc_B582FB: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B58300: FLdZeroAd var_A4
  loc_B58303: CVarStr var_A0
  loc_B58306: PopAdLdVar
  loc_B58307: FLdPr Me
  loc_B5830A: VCallAd Control_ID_CodiOrgaMsk
  loc_B5830D: FStAdFunc var_88
  loc_B58310: FLdPr var_88
  loc_B58313: LateIdSt
  loc_B58318: FFree1Ad var_88
  loc_B5831B: FFree1Var var_A0 = ""
  loc_B5831E: FLdRfVar var_A4
  loc_B58321: FLdPr Me
  loc_B58324: MemLdRfVar from_stack_1.global_96
  loc_B58327: NewIfNullPr tblorganigrama
  loc_B5832A: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B5832F: ILdRf var_A4
  loc_B58332: FLdPr Me
  loc_B58335: VCallAd Control_ID_DetaOrgaLbl
  loc_B58338: FStAdFunc var_88
  loc_B5833B: FLdPr var_88
  loc_B5833E: Me.Caption = from_stack_1
  loc_B58343: FFree1Str var_A4
  loc_B58346: FFree1Ad var_88
  loc_B58349: FLdPr Me
  loc_B5834C: VCallAd Control_ID_CodiOrgaMsk
  loc_B5834F: FStAdFunc var_CC
  loc_B58352: FLdPr Me
  loc_B58355: VCallAd Control_ID_DetaOrgaLbl
  loc_B58358: FStAdFunc var_B8
  loc_B5835B: FLdRfVar var_B8
  loc_B5835E: FLdZeroAd var_CC
  loc_B58361: FStAdFuncNoPop
  loc_B58364: CastAd
  loc_B58367: FStAdFunc var_90
  loc_B5836A: FLdRfVar var_90
  loc_B5836D: FLdPr Me
  loc_B58370: MemLdRfVar from_stack_1.global_64
  loc_B58373: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58378: IStI2 arg_C
  loc_B5837B: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58386: Branch loc_B583D0
  loc_B58389: LitStr "El Organigrama NO EXISTE. Verique..."
  loc_B5838C: FLdPr Me
  loc_B5838F: MemStStrCopy
  loc_B58393: FLdPr Me
  loc_B58396: VCallAd Control_ID_CodiOrgaMsk
  loc_B58399: FStAdFunc var_CC
  loc_B5839C: FLdPr Me
  loc_B5839F: VCallAd Control_ID_DetaOrgaLbl
  loc_B583A2: FStAdFunc var_B8
  loc_B583A5: FLdRfVar var_B8
  loc_B583A8: FLdZeroAd var_CC
  loc_B583AB: FStAdFuncNoPop
  loc_B583AE: CastAd
  loc_B583B1: FStAdFunc var_90
  loc_B583B4: FLdRfVar var_90
  loc_B583B7: FLdPr Me
  loc_B583BA: MemLdRfVar from_stack_1.global_64
  loc_B583BD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B583C2: IStI2 arg_C
  loc_B583C5: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B583D0: Branch loc_B58451
  loc_B583D3: FLdRfVar var_B4
  loc_B583D6: FLdRfVar var_90
  loc_B583D9: FLdRfVar var_88
  loc_B583DC: ImpAdLdRf MemVar_C3D710
  loc_B583DF: NewIfNullPr bscOrganigrama
  loc_B583E2: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B583E7: FLdPr var_88
  loc_B583EA: from_stack_1v = clsbase.RsFrmGet()
  loc_B583EF: FLdPr var_90
  loc_B583F2:  = Me.RecordCount
  loc_B583F7: ILdRf var_B4
  loc_B583FA: LitI4 1
  loc_B583FF: LtI4
  loc_B58400: FFreeAd var_88 = ""
  loc_B58407: BranchF loc_B58451
  loc_B5840A: LitStr "El organigrama NO EXISTE. Verique..."
  loc_B5840D: FLdPr Me
  loc_B58410: MemStStrCopy
  loc_B58414: FLdPr Me
  loc_B58417: VCallAd Control_ID_CodiOrgaMsk
  loc_B5841A: FStAdFunc var_CC
  loc_B5841D: FLdPr Me
  loc_B58420: VCallAd Control_ID_DetaOrgaLbl
  loc_B58423: FStAdFunc var_B8
  loc_B58426: FLdRfVar var_B8
  loc_B58429: FLdZeroAd var_CC
  loc_B5842C: FStAdFuncNoPop
  loc_B5842F: CastAd
  loc_B58432: FStAdFunc var_90
  loc_B58435: FLdRfVar var_90
  loc_B58438: FLdPr Me
  loc_B5843B: MemLdRfVar from_stack_1.global_64
  loc_B5843E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58443: IStI2 arg_C
  loc_B58446: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58451: Branch loc_B58620
  loc_B58454: LitI2_Byte 0
  loc_B58456: ImpAdLdRf MemVar_C3D710
  loc_B58459: NewIfNullPr bscOrganigrama
  loc_B5845C: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_B58461: LitNothing
  loc_B58463: CastAd
  loc_B58466: FStAdFuncNoPop
  loc_B58469: ImpAdLdRf MemVar_C3D710
  loc_B5846C: NewIfNullPr bscOrganigrama
  loc_B5846F: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_B58474: FFree1Ad var_88
  loc_B58477: LitVar_Missing var_DC
  loc_B5847A: PopAdLdVar
  loc_B5847B: LitVarI4
  loc_B58483: PopAdLdVar
  loc_B58484: ImpAdLdRf MemVar_C3D710
  loc_B58487: NewIfNullPr bscOrganigrama
  loc_B5848A: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B5848F: FLdRfVar var_B4
  loc_B58492: FLdRfVar var_88
  loc_B58495: ImpAdLdRf MemVar_C3D710
  loc_B58498: NewIfNullPr bscOrganigrama
  loc_B5849B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B584A0: FLdPr var_88
  loc_B584A3: from_stack_1 = clsbase.RecordCount
  loc_B584A8: ILdRf var_B4
  loc_B584AB: LitI4 0
  loc_B584B0: GtI4
  loc_B584B1: FFree1Ad var_88
  loc_B584B4: BranchF loc_B585D9
  loc_B584B7: FLdRfVar var_A0
  loc_B584BA: FLdRfVar var_CC
  loc_B584BD: LitVarStr var_C8, "CodiOrga"
  loc_B584C2: PopAdLdVar
  loc_B584C3: FLdRfVar var_B8
  loc_B584C6: FLdRfVar var_90
  loc_B584C9: FLdRfVar var_88
  loc_B584CC: ImpAdLdRf MemVar_C3D710
  loc_B584CF: NewIfNullPr bscOrganigrama
  loc_B584D2: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B584D7: FLdPr var_88
  loc_B584DA: from_stack_1v = clsbase.RsFrmGet()
  loc_B584DF: FLdPr var_90
  loc_B584E2:  = Me.Fields
  loc_B584E7: FLdPr var_B8
  loc_B584EA: from_stack_2 = Me.Item(from_stack_1)
  loc_B584EF: FLdPr var_CC
  loc_B584F2:  = Me.Value
  loc_B584F7: FLdRfVar var_A4
  loc_B584FA: FLdPr Me
  loc_B584FD:  = Me.Name
  loc_B58502: FLdPr Me
  loc_B58505: MemLdRfVar from_stack_1.global_96
  loc_B58508: NewIfNullRf
  loc_B5850C: ILdRf var_A4
  loc_B5850F: FLdRfVar var_A0
  loc_B58512: CStrVarTmp
  loc_B58513: FStStrNoPop var_A8
  loc_B58516: ImpAdLdI2 MemVar_C3D064
  loc_B58519: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B5851E: FStStrNoPop var_AC
  loc_B58521: FLdPr Me
  loc_B58524: MemStStrCopy
  loc_B58528: FFreeStr var_A8 = "": var_A4 = ""
  loc_B58531: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5853C: FFree1Var var_A0 = ""
  loc_B5853F: FLdRfVar var_A4
  loc_B58542: FLdPr Me
  loc_B58545: MemLdRfVar from_stack_1.global_96
  loc_B58548: NewIfNullPr tblorganigrama
  loc_B5854B: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B58550: FLdZeroAd var_A4
  loc_B58553: CVarStr var_A0
  loc_B58556: PopAdLdVar
  loc_B58557: FLdPr Me
  loc_B5855A: VCallAd Control_ID_CodiOrgaMsk
  loc_B5855D: FStAdFunc var_88
  loc_B58560: FLdPr var_88
  loc_B58563: LateIdSt
  loc_B58568: FFree1Ad var_88
  loc_B5856B: FFree1Var var_A0 = ""
  loc_B5856E: FLdRfVar var_A4
  loc_B58571: FLdPr Me
  loc_B58574: MemLdRfVar from_stack_1.global_96
  loc_B58577: NewIfNullPr tblorganigrama
  loc_B5857A: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B5857F: ILdRf var_A4
  loc_B58582: FLdPr Me
  loc_B58585: VCallAd Control_ID_DetaOrgaLbl
  loc_B58588: FStAdFunc var_88
  loc_B5858B: FLdPr var_88
  loc_B5858E: Me.Caption = from_stack_1
  loc_B58593: FFree1Str var_A4
  loc_B58596: FFree1Ad var_88
  loc_B58599: FLdPr Me
  loc_B5859C: VCallAd Control_ID_CodiOrgaMsk
  loc_B5859F: FStAdFunc var_CC
  loc_B585A2: FLdPr Me
  loc_B585A5: VCallAd Control_ID_DetaOrgaLbl
  loc_B585A8: FStAdFunc var_B8
  loc_B585AB: FLdRfVar var_B8
  loc_B585AE: FLdZeroAd var_CC
  loc_B585B1: FStAdFuncNoPop
  loc_B585B4: CastAd
  loc_B585B7: FStAdFunc var_90
  loc_B585BA: FLdRfVar var_90
  loc_B585BD: FLdPr Me
  loc_B585C0: MemLdRfVar from_stack_1.global_64
  loc_B585C3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B585C8: IStI2 arg_C
  loc_B585CB: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B585D6: Branch loc_B58620
  loc_B585D9: LitStr "El organigrama NO EXISTE. Verifique..."
  loc_B585DC: FLdPr Me
  loc_B585DF: MemStStrCopy
  loc_B585E3: FLdPr Me
  loc_B585E6: VCallAd Control_ID_CodiOrgaMsk
  loc_B585E9: FStAdFunc var_CC
  loc_B585EC: FLdPr Me
  loc_B585EF: VCallAd Control_ID_DetaOrgaLbl
  loc_B585F2: FStAdFunc var_B8
  loc_B585F5: FLdRfVar var_B8
  loc_B585F8: FLdZeroAd var_CC
  loc_B585FB: FStAdFuncNoPop
  loc_B585FE: CastAd
  loc_B58601: FStAdFunc var_90
  loc_B58604: FLdRfVar var_90
  loc_B58607: FLdPr Me
  loc_B5860A: MemLdRfVar from_stack_1.global_64
  loc_B5860D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58612: IStI2 arg_C
  loc_B58615: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58620: ILdI2 arg_C
  loc_B58623: NotI4
  loc_B58624: BranchF loc_B5865A
  loc_B58627: FLdRfVar var_A4
  loc_B5862A: FLdPr Me
  loc_B5862D: MemLdRfVar from_stack_1.global_96
  loc_B58630: NewIfNullPr tblorganigrama
  loc_B58633: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B58638: ILdRf var_A4
  loc_B5863B: FLdPr Me
  loc_B5863E: VCallAd Control_ID_DetaOrgaLbl
  loc_B58641: FStAdFunc var_88
  loc_B58644: FLdPr var_88
  loc_B58647: Me.Caption = from_stack_1
  loc_B5864C: FFree1Str var_A4
  loc_B5864F: FFree1Ad var_88
  loc_B58652: Call Proc_144_68_A7F56C()
  loc_B58657: Branch loc_B58674
  loc_B5865A: LitVarStr var_C8, vbNullString
  loc_B5865F: PopAdLdVar
  loc_B58660: FLdPr Me
  loc_B58663: VCallAd Control_ID_CodiOrgaMsk
  loc_B58666: FStAdFunc var_88
  loc_B58669: FLdPr var_88
  loc_B5866C: LateIdSt
  loc_B58671: FFree1Ad var_88
  loc_B58674: ExitProcHresult
End Function

Private Sub CodiOrgaMsk_KeyPress(KeyAscii As Integer) '9AD134
  'Data Table: 4FA290
  loc_9AD098: FLdPr Me
  loc_9AD09B: VCallAd Control_ID_CodiOrgaMsk
  loc_9AD09E: FStAdFunc var_88
  loc_9AD0A1: FLdPr var_88
  loc_9AD0A4: LateIdLdVar var_98 DispID_22 0
  loc_9AD0AB: PopAd
  loc_9AD0AD: LitI4 0
  loc_9AD0B2: LitI4 -1
  loc_9AD0B7: LitI4 1
  loc_9AD0BC: LitStr vbNullString
  loc_9AD0BF: LitStr "."
  loc_9AD0C2: FLdRfVar var_98
  loc_9AD0C5: CStrVarTmp
  loc_9AD0C6: FStStrNoPop var_9C
  loc_9AD0C9: ImpAdCallI2 Replace(, , , , , )
  loc_9AD0CE: FStStrNoPop var_A0
  loc_9AD0D1: FnLenStr
  loc_9AD0D2: LitI4 5
  loc_9AD0D7: GtI4
  loc_9AD0D8: FFreeStr var_9C = ""
  loc_9AD0DF: FFree1Ad var_88
  loc_9AD0E2: FFree1Var var_98 = ""
  loc_9AD0E5: BranchF loc_9AD133
  loc_9AD0E8: FLdPr Me
  loc_9AD0EB: VCallAd Control_ID_CodiOrgaMsk
  loc_9AD0EE: FStAdFunc var_88
  loc_9AD0F1: FLdRfVar var_88
  loc_9AD0F4: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9AD0F9: FFree1Ad var_88
  loc_9AD0FC: BranchF loc_9AD133
  loc_9AD0FF: ILdI2 KeyAscii
  loc_9AD102: CI4UI1
  loc_9AD103: LitI4 8
  loc_9AD108: NeI4
  loc_9AD109: FLdPr Me
  loc_9AD10C: VCallAd Control_ID_CodiOrgaMsk
  loc_9AD10F: FStAdFunc var_88
  loc_9AD112: FLdPr var_88
  loc_9AD115: LateIdLdVar var_98 DispID_17 0
  loc_9AD11C: CI4Var
  loc_9AD11E: LitI4 0
  loc_9AD123: EqI4
  loc_9AD124: AndI4
  loc_9AD125: FFree1Ad var_88
  loc_9AD128: FFree1Var var_98 = ""
  loc_9AD12B: BranchF loc_9AD133
  loc_9AD12E: LitI2_Byte 0
  loc_9AD130: IStI2 KeyAscii
  loc_9AD133: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A05030
  'Data Table: 4FA290
  loc_A04EDC: ILdI2 Shift
  loc_A04EDF: CI4UI1
  loc_A04EE0: LitI4 2
  loc_A04EE5: EqI4
  loc_A04EE6: ILdI2 KeyCode
  loc_A04EE9: CI4UI1
  loc_A04EEA: LitI4 &H42
  loc_A04EEF: EqI4
  loc_A04EF0: AndI4
  loc_A04EF1: BranchF loc_A0502F
  loc_A04EF4: LitI2_Byte 0
  loc_A04EF6: ImpAdLdRf MemVar_C3D710
  loc_A04EF9: NewIfNullPr bscOrganigrama
  loc_A04EFC: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A04F01: LitNothing
  loc_A04F03: CastAd
  loc_A04F06: FStAdFuncNoPop
  loc_A04F09: ImpAdLdRf MemVar_C3D710
  loc_A04F0C: NewIfNullPr bscOrganigrama
  loc_A04F0F: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A04F14: FFree1Ad var_88
  loc_A04F17: LitVar_Missing var_A8
  loc_A04F1A: PopAdLdVar
  loc_A04F1B: LitVarI4
  loc_A04F23: PopAdLdVar
  loc_A04F24: ImpAdLdRf MemVar_C3D710
  loc_A04F27: NewIfNullPr bscOrganigrama
  loc_A04F2A: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A04F2F: FLdRfVar var_AC
  loc_A04F32: FLdRfVar var_88
  loc_A04F35: ImpAdLdRf MemVar_C3D710
  loc_A04F38: NewIfNullPr bscOrganigrama
  loc_A04F3B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A04F40: FLdPr var_88
  loc_A04F43: from_stack_1 = clsbase.RecordCount
  loc_A04F48: ILdRf var_AC
  loc_A04F4B: LitI4 0
  loc_A04F50: GtI4
  loc_A04F51: FFree1Ad var_88
  loc_A04F54: BranchF loc_A0502F
  loc_A04F57: FLdRfVar var_C8
  loc_A04F5A: FLdRfVar var_B8
  loc_A04F5D: LitVarStr var_98, "CodiOrga"
  loc_A04F62: PopAdLdVar
  loc_A04F63: FLdRfVar var_B4
  loc_A04F66: FLdRfVar var_B0
  loc_A04F69: FLdRfVar var_88
  loc_A04F6C: ImpAdLdRf MemVar_C3D710
  loc_A04F6F: NewIfNullPr bscOrganigrama
  loc_A04F72: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A04F77: FLdPr var_88
  loc_A04F7A: from_stack_1v = clsbase.RsFrmGet()
  loc_A04F7F: FLdPr var_B0
  loc_A04F82:  = Me.Fields
  loc_A04F87: FLdPr var_B4
  loc_A04F8A: from_stack_2 = Me.Item(from_stack_1)
  loc_A04F8F: FLdPr var_B8
  loc_A04F92:  = Me.Value
  loc_A04F97: FLdRfVar var_C8
  loc_A04F9A: CStrVarTmp
  loc_A04F9B: CVarStr var_D8
  loc_A04F9E: PopAdLdVar
  loc_A04F9F: FLdPr Me
  loc_A04FA2: VCallAd Control_ID_CodiOrgaMsk
  loc_A04FA5: FStAdFunc var_DC
  loc_A04FA8: FLdPr var_DC
  loc_A04FAB: LateIdSt
  loc_A04FB0: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A04FBD: FFreeVar var_C8 = ""
  loc_A04FC4: FLdRfVar var_C8
  loc_A04FC7: FLdRfVar var_B8
  loc_A04FCA: LitVarStr var_98, "DetaOrga"
  loc_A04FCF: PopAdLdVar
  loc_A04FD0: FLdRfVar var_B4
  loc_A04FD3: FLdRfVar var_B0
  loc_A04FD6: FLdRfVar var_88
  loc_A04FD9: ImpAdLdRf MemVar_C3D710
  loc_A04FDC: NewIfNullPr bscOrganigrama
  loc_A04FDF: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A04FE4: FLdPr var_88
  loc_A04FE7: from_stack_1v = clsbase.RsFrmGet()
  loc_A04FEC: FLdPr var_B0
  loc_A04FEF:  = Me.Fields
  loc_A04FF4: FLdPr var_B4
  loc_A04FF7: from_stack_2 = Me.Item(from_stack_1)
  loc_A04FFC: FLdPr var_B8
  loc_A04FFF:  = Me.Value
  loc_A05004: FLdRfVar var_C8
  loc_A05007: CStrVarTmp
  loc_A05008: FStStrNoPop var_E0
  loc_A0500B: FLdPr Me
  loc_A0500E: VCallAd Control_ID_DetaOrgaLbl
  loc_A05011: FStAdFunc var_DC
  loc_A05014: FLdPr var_DC
  loc_A05017: Me.Caption = from_stack_1
  loc_A0501C: FFree1Str var_E0
  loc_A0501F: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A0502C: FFree1Var var_C8 = ""
  loc_A0502F: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '93FFFC
  'Data Table: 4FA290
  loc_93FFF8: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95B218
  'Data Table: 4FA290
  loc_95B200: FLdPr Me
  loc_95B203: VCallAd Control_ID_dgdABMS
  loc_95B206: FStAdFunc var_88
  loc_95B209: FLdRfVar var_88
  loc_95B20C: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95B211: FFree1Ad var_88
  loc_95B214: ExitProcHresult
  loc_95B215: EqStr
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99B564
  'Data Table: 4FA290
  loc_99B508: FLdRfVar var_B4
  loc_99B50B: FLdRfVar var_B0
  loc_99B50E: FLdI2 ColIndex
  loc_99B511: CVarI2 var_A8
  loc_99B514: PopAdLdVar
  loc_99B515: FLdPr Me
  loc_99B518: VCallAd Control_ID_dgdABMS
  loc_99B51B: FStAdFunc var_88
  loc_99B51E: FLdPr var_88
  loc_99B521: LateIdLdVar var_98 DispID_105 0
  loc_99B528: CastAdVar Me
  loc_99B52C: FStAdFunc var_AC
  loc_99B52F: FLdPr var_AC
  loc_99B532: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99B537: FLdPr var_B0
  loc_99B53A:  = Me.DataField
  loc_99B53F: FLdZeroAd var_B4
  loc_99B542: PopTmpLdAdStr
  loc_99B546: FLdPr Me
  loc_99B549: MemLdRfVar from_stack_1.global_52
  loc_99B54C: NewIfNullPr clsimputacion
  loc_99B54F: Call clsimputacion.Sort(from_stack_1v)
  loc_99B554: FFree1Str var_B8
  loc_99B557: FFreeAd var_88 = "": var_AC = ""
  loc_99B560: FFree1Var var_98 = ""
  loc_99B563: ExitProcHresult
End Sub

Private Sub TifaDeveCbo_GotFocus() '97AB8C
  'Data Table: 4FA290
  loc_97AB60: FLdRfVar var_88
  loc_97AB63: FLdPr Me
  loc_97AB66: MemLdRfVar from_stack_1.global_112
  loc_97AB69: NewIfNullPr tblproveedor
  loc_97AB6C: from_stack_1v = tblproveedor.FactProvGet()
  loc_97AB71: ILdRf var_88
  loc_97AB74: FLdPr Me
  loc_97AB77: VCallAd Control_ID_TifaDeveCbo
  loc_97AB7A: FStAdFunc var_8C
  loc_97AB7D: FLdPr var_8C
  loc_97AB80: Me.Text = from_stack_1
  loc_97AB85: FFree1Str var_88
  loc_97AB88: FFree1Ad var_8C
  loc_97AB8B: ExitProcHresult
End Sub

Private Sub TifaDeveCbo_KeyPress(KeyAscii As Integer) '958414
  'Data Table: 4FA290
  loc_9583FC: LitStr "fs"
  loc_9583FF: FStStrCopy var_88
  loc_958402: FLdRfVar var_88
  loc_958405: ILdRf KeyAscii
  loc_958408: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_95840D: IStI2 KeyAscii
  loc_958410: FFree1Str var_88
  loc_958413: ExitProcHresult
End Sub

Private Sub TifaDeveCbo_Validate(Cancel As Boolean) '9E2138
  'Data Table: 4FA290
  loc_9E203C: FLdRfVar var_8A
  loc_9E203F: FLdPr Me
  loc_9E2042: VCallAd Control_ID_cmdCancelar
  loc_9E2045: FStAdFunc var_88
  loc_9E2048: FLdPr var_88
  loc_9E204B:  = Me.Value
  loc_9E2050: FLdI2 var_8A
  loc_9E2053: NotI4
  loc_9E2054: FLdRfVar var_92
  loc_9E2057: FLdPr Me
  loc_9E205A: VCallAd Control_ID_TifaDeveCbo
  loc_9E205D: FStAdFunc var_90
  loc_9E2060: FLdPr var_90
  loc_9E2063:  = Me.Enabled
  loc_9E2068: FLdI2 var_92
  loc_9E206B: AndI4
  loc_9E206C: FFreeAd var_88 = ""
  loc_9E2073: BranchF loc_9E2135
  loc_9E2076: FLdRfVar var_98
  loc_9E2079: FLdPr Me
  loc_9E207C: VCallAd Control_ID_TifaDeveCbo
  loc_9E207F: FStAdFunc var_88
  loc_9E2082: FLdPr var_88
  loc_9E2085:  = Me.Text
  loc_9E208A: FLdPr Me
  loc_9E208D: VCallAd Control_ID_CucuPersMsk
  loc_9E2090: FStAdFunc var_90
  loc_9E2093: FLdPr var_90
  loc_9E2096: LateIdLdVar var_A8 DispID_22 0
  loc_9E209D: PopAd
  loc_9E209F: FLdPr Me
  loc_9E20A2: VCallAd Control_ID_FefaDeveMsk
  loc_9E20A5: FStAdFunc var_AC
  loc_9E20A8: FLdPr var_AC
  loc_9E20AB: LateIdLdVar var_BC DispID_15 0
  loc_9E20B2: PopAd
  loc_9E20B4: FLdPr Me
  loc_9E20B7: MemLdRfVar from_stack_1.global_112
  loc_9E20BA: NewIfNullRf
  loc_9E20BE: FLdRfVar var_BC
  loc_9E20C1: CStrVarTmp
  loc_9E20C2: FStStrNoPop var_C4
  loc_9E20C5: FLdRfVar var_A8
  loc_9E20C8: CStrVarTmp
  loc_9E20C9: FStStrNoPop var_C0
  loc_9E20CC: ILdRf var_98
  loc_9E20CF: ImpAdCallI2 Proc_266_23_A2F578(, , , )
  loc_9E20D4: FStStrNoPop var_C8
  loc_9E20D7: FLdPr Me
  loc_9E20DA: MemStStrCopy
  loc_9E20DE: FFreeStr var_98 = "": var_C0 = "": var_C4 = ""
  loc_9E20E9: FFreeAd var_88 = "": var_90 = ""
  loc_9E20F2: FFreeVar var_A8 = ""
  loc_9E20F9: FLdPr Me
  loc_9E20FC: VCallAd Control_ID_TifaDeveCbo
  loc_9E20FF: FStAdFunc var_CC
  loc_9E2102: LitNothing
  loc_9E2104: CastAd
  loc_9E2107: FStAdFunc var_AC
  loc_9E210A: FLdRfVar var_AC
  loc_9E210D: FLdZeroAd var_CC
  loc_9E2110: FStAdFuncNoPop
  loc_9E2113: CastAd
  loc_9E2116: FStAdFunc var_90
  loc_9E2119: FLdRfVar var_90
  loc_9E211C: FLdPr Me
  loc_9E211F: MemLdRfVar from_stack_1.global_64
  loc_9E2122: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E2127: IStI2 Cancel
  loc_9E212A: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9E2135: ExitProcHresult
End Sub

Private Sub NufaDeveTxt_GotFocus() '9A55DC
  'Data Table: 4FA290
  loc_9A5558: FLdRfVar var_8C
  loc_9A555B: FLdPr Me
  loc_9A555E: VCallAd Control_ID_NufaDeveTxt
  loc_9A5561: FStAdFunc var_88
  loc_9A5564: FLdPr var_88
  loc_9A5567:  = Me.Text
  loc_9A556C: ILdRf var_8C
  loc_9A556F: LitStr vbNullString
  loc_9A5572: EqStr
  loc_9A5574: FFree1Str var_8C
  loc_9A5577: FFree1Ad var_88
  loc_9A557A: BranchF loc_9A5594
  loc_9A557D: LitStr "00000000"
  loc_9A5580: FLdPr Me
  loc_9A5583: VCallAd Control_ID_NufaDeveTxt
  loc_9A5586: FStAdFunc var_88
  loc_9A5589: FLdPr var_88
  loc_9A558C: Me.Text = from_stack_1
  loc_9A5591: FFree1Ad var_88
  loc_9A5594: LitStr "Municipalidad de Guaymallén"
  loc_9A5597: LitStr "Municipalidad de Malargüe"
  loc_9A559A: NeStr
  loc_9A559C: BranchF loc_9A55C9
  loc_9A559F: FLdRfVar var_8C
  loc_9A55A2: FLdPr Me
  loc_9A55A5: VCallAd Control_ID_TifaDeveCbo
  loc_9A55A8: FStAdFunc var_88
  loc_9A55AB: FLdPr var_88
  loc_9A55AE:  = Me.Text
  loc_9A55B3: ILdRf var_8C
  loc_9A55B6: LitStr "s/f"
  loc_9A55B9: EqStr
  loc_9A55BB: FFree1Str var_8C
  loc_9A55BE: FFree1Ad var_88
  loc_9A55C1: BranchF loc_9A55C9
  loc_9A55C4: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9A55C9: FLdPr Me
  loc_9A55CC: VCallAd Control_ID_NufaDeveTxt
  loc_9A55CF: CVarAd
  loc_9A55D3: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A55D8: FFree1Var var_9C = ""
  loc_9A55DB: ExitProcHresult
End Sub

Private Sub NufaDeveTxt_KeyPress(KeyAscii As Integer) '9639C4
  'Data Table: 4FA290
  loc_9639AC: LitStr "0123456789"
  loc_9639AF: FStStrCopy var_88
  loc_9639B2: FLdRfVar var_88
  loc_9639B5: ILdRf KeyAscii
  loc_9639B8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9639BD: IStI2 KeyAscii
  loc_9639C0: FFree1Str var_88
  loc_9639C3: ExitProcHresult
End Sub

Private Sub NufaDeveTxt_Validate(Cancel As Boolean) '9F1660
  'Data Table: 4FA290
  loc_9F153C: FLdRfVar var_8A
  loc_9F153F: FLdPr Me
  loc_9F1542: VCallAd Control_ID_cmdCancelar
  loc_9F1545: FStAdFunc var_88
  loc_9F1548: FLdPr var_88
  loc_9F154B:  = Me.Value
  loc_9F1550: FLdI2 var_8A
  loc_9F1553: NotI4
  loc_9F1554: FLdRfVar var_92
  loc_9F1557: FLdPr Me
  loc_9F155A: VCallAd Control_ID_NufaDeveTxt
  loc_9F155D: FStAdFunc var_90
  loc_9F1560: FLdPr var_90
  loc_9F1563:  = Me.Enabled
  loc_9F1568: FLdI2 var_92
  loc_9F156B: AndI4
  loc_9F156C: FFreeAd var_88 = ""
  loc_9F1573: BranchF loc_9F165F
  loc_9F1576: FLdRfVar var_98
  loc_9F1579: FLdPr Me
  loc_9F157C: VCallAd Control_ID_NufaDeveTxt
  loc_9F157F: FStAdFunc var_88
  loc_9F1582: FLdPr var_88
  loc_9F1585:  = Me.Text
  loc_9F158A: FLdRfVar var_9C
  loc_9F158D: FLdPr Me
  loc_9F1590: VCallAd Control_ID_TifaDeveCbo
  loc_9F1593: FStAdFunc var_90
  loc_9F1596: FLdPr var_90
  loc_9F1599:  = Me.Text
  loc_9F159E: ILdRf var_9C
  loc_9F15A1: ILdRf var_98
  loc_9F15A4: ImpAdCallI2 Proc_266_20_996550(, )
  loc_9F15A9: FStStrNoPop var_A0
  loc_9F15AC: FLdPr Me
  loc_9F15AF: MemStStrCopy
  loc_9F15B3: FFreeStr var_98 = "": var_9C = ""
  loc_9F15BC: FFreeAd var_88 = ""
  loc_9F15C3: FLdPr Me
  loc_9F15C6: VCallAd Control_ID_NufaDeveTxt
  loc_9F15C9: FStAdFunc var_A8
  loc_9F15CC: LitNothing
  loc_9F15CE: CastAd
  loc_9F15D1: FStAdFunc var_A4
  loc_9F15D4: FLdRfVar var_A4
  loc_9F15D7: FLdZeroAd var_A8
  loc_9F15DA: FStAdFuncNoPop
  loc_9F15DD: CastAd
  loc_9F15E0: FStAdFunc var_90
  loc_9F15E3: FLdRfVar var_90
  loc_9F15E6: FLdPr Me
  loc_9F15E9: MemLdRfVar from_stack_1.global_64
  loc_9F15EC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F15F1: IStI2 Cancel
  loc_9F15F4: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9F15FF: ILdI2 Cancel
  loc_9F1602: NotI4
  loc_9F1603: BranchF loc_9F165F
  loc_9F1606: FLdRfVar var_98
  loc_9F1609: FLdPr Me
  loc_9F160C: VCallAd Control_ID_NufaDeveTxt
  loc_9F160F: FStAdFunc var_88
  loc_9F1612: FLdPr var_88
  loc_9F1615:  = Me.Text
  loc_9F161A: LitI4 1
  loc_9F161F: LitI4 1
  loc_9F1624: LitVarStr var_C8, "00000000"
  loc_9F1629: FStVarCopyObj var_D8
  loc_9F162C: FLdRfVar var_D8
  loc_9F162F: FLdZeroAd var_98
  loc_9F1632: CVarStr var_B8
  loc_9F1635: ImpAdCallI2 Format$(, )
  loc_9F163A: FStStrNoPop var_9C
  loc_9F163D: FLdPr Me
  loc_9F1640: VCallAd Control_ID_NufaDeveTxt
  loc_9F1643: FStAdFunc var_90
  loc_9F1646: FLdPr var_90
  loc_9F1649: Me.Text = from_stack_1
  loc_9F164E: FFree1Str var_9C
  loc_9F1651: FFreeAd var_88 = ""
  loc_9F1658: FFreeVar var_B8 = ""
  loc_9F165F: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94A8F8
  'Data Table: 4FA290
  loc_94A8E4: FLdPr Me
  loc_94A8E7: VCallAd Control_ID_FiltroMsk
  loc_94A8EA: CVarAd
  loc_94A8EE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A8F3: FFree1Var var_94 = ""
  loc_94A8F6: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4BAC4
  'Data Table: 4FA290
  loc_A4B828: LitStr "Expediente que comience con: "
  loc_A4B82B: FLdPr Me
  loc_A4B82E: VCallAd Control_ID_FiltroMsk
  loc_A4B831: FStAdFunc var_88
  loc_A4B834: FLdPr var_88
  loc_A4B837: LateIdLdVar var_98 DispID_22 0
  loc_A4B83E: CStrVarTmp
  loc_A4B83F: FStStrNoPop var_9C
  loc_A4B842: ConcatStr
  loc_A4B843: FStStrNoPop var_A0
  loc_A4B846: FLdPr Me
  loc_A4B849: MemStStrCopy
  loc_A4B84D: FFreeStr var_9C = ""
  loc_A4B854: FFree1Ad var_88
  loc_A4B857: FFree1Var var_98 = ""
  loc_A4B85A: FLdPr Me
  loc_A4B85D: VCallAd Control_ID_FiltroMsk
  loc_A4B860: FStAdFunc var_88
  loc_A4B863: FLdPr var_88
  loc_A4B866: LateIdLdVar var_98 DispID_22 0
  loc_A4B86D: CStrVarTmp
  loc_A4B86E: FStStrNoPop var_9C
  loc_A4B871: LitStr vbNullString
  loc_A4B874: EqStr
  loc_A4B876: FFree1Str var_9C
  loc_A4B879: FFree1Ad var_88
  loc_A4B87C: FFree1Var var_98 = ""
  loc_A4B87F: BranchF loc_A4B8A5
  loc_A4B882: LitI4 0
  loc_A4B887: LitI4 0
  loc_A4B88C: LitI4 0
  loc_A4B891: LitI4 0
  loc_A4B896: LitI4 0
  loc_A4B89B: Call Proc_144_69_AB40F4()
  loc_A4B8A0: Call cmdCancelar_Click()
  loc_A4B8A5: FLdRfVar var_A2
  loc_A4B8A8: FLdPr Me
  loc_A4B8AB: VCallAd Control_ID_FiltroCbo
  loc_A4B8AE: FStAdFunc var_88
  loc_A4B8B1: FLdPr var_88
  loc_A4B8B4:  = Me.ListIndex
  loc_A4B8B9: FLdI2 var_A2
  loc_A4B8BC: FStI2 var_A4
  loc_A4B8BF: FFree1Ad var_88
  loc_A4B8C2: FLdI2 var_A4
  loc_A4B8C5: LitI2_Byte 0
  loc_A4B8C7: EqI2
  loc_A4B8C8: BranchF loc_A4B900
  loc_A4B8CB: LitStr "Orden de Pago igual a: "
  loc_A4B8CE: FLdPr Me
  loc_A4B8D1: VCallAd Control_ID_FiltroMsk
  loc_A4B8D4: FStAdFunc var_88
  loc_A4B8D7: FLdPr var_88
  loc_A4B8DA: LateIdLdVar var_98 DispID_22 0
  loc_A4B8E1: CStrVarTmp
  loc_A4B8E2: FStStrNoPop var_9C
  loc_A4B8E5: ConcatStr
  loc_A4B8E6: FStStrNoPop var_A0
  loc_A4B8E9: FLdPr Me
  loc_A4B8EC: MemStStrCopy
  loc_A4B8F0: FFreeStr var_9C = ""
  loc_A4B8F7: FFree1Ad var_88
  loc_A4B8FA: FFree1Var var_98 = ""
  loc_A4B8FD: Branch loc_A4BAC1
  loc_A4B900: FLdI2 var_A4
  loc_A4B903: LitI2_Byte 1
  loc_A4B905: EqI2
  loc_A4B906: BranchF loc_A4B93E
  loc_A4B909: LitStr "Expediente ORIGINAL que comience con: "
  loc_A4B90C: FLdPr Me
  loc_A4B90F: VCallAd Control_ID_FiltroMsk
  loc_A4B912: FStAdFunc var_88
  loc_A4B915: FLdPr var_88
  loc_A4B918: LateIdLdVar var_98 DispID_22 0
  loc_A4B91F: CStrVarTmp
  loc_A4B920: FStStrNoPop var_9C
  loc_A4B923: ConcatStr
  loc_A4B924: FStStrNoPop var_A0
  loc_A4B927: FLdPr Me
  loc_A4B92A: MemStStrCopy
  loc_A4B92E: FFreeStr var_9C = ""
  loc_A4B935: FFree1Ad var_88
  loc_A4B938: FFree1Var var_98 = ""
  loc_A4B93B: Branch loc_A4BAC1
  loc_A4B93E: FLdI2 var_A4
  loc_A4B941: LitI2_Byte 2
  loc_A4B943: EqI2
  loc_A4B944: BranchF loc_A4B97C
  loc_A4B947: LitStr "Expediente DE PAGO que comience con: "
  loc_A4B94A: FLdPr Me
  loc_A4B94D: VCallAd Control_ID_FiltroMsk
  loc_A4B950: FStAdFunc var_88
  loc_A4B953: FLdPr var_88
  loc_A4B956: LateIdLdVar var_98 DispID_22 0
  loc_A4B95D: CStrVarTmp
  loc_A4B95E: FStStrNoPop var_9C
  loc_A4B961: ConcatStr
  loc_A4B962: FStStrNoPop var_A0
  loc_A4B965: FLdPr Me
  loc_A4B968: MemStStrCopy
  loc_A4B96C: FFreeStr var_9C = ""
  loc_A4B973: FFree1Ad var_88
  loc_A4B976: FFree1Var var_98 = ""
  loc_A4B979: Branch loc_A4BAC1
  loc_A4B97C: FLdI2 var_A4
  loc_A4B97F: LitI2_Byte 3
  loc_A4B981: EqI2
  loc_A4B982: BranchF loc_A4B9BA
  loc_A4B985: LitStr "DETALLE DE IMPUTACION que contiene: "
  loc_A4B988: FLdPr Me
  loc_A4B98B: VCallAd Control_ID_FiltroMsk
  loc_A4B98E: FStAdFunc var_88
  loc_A4B991: FLdPr var_88
  loc_A4B994: LateIdLdVar var_98 DispID_22 0
  loc_A4B99B: CStrVarTmp
  loc_A4B99C: FStStrNoPop var_9C
  loc_A4B99F: ConcatStr
  loc_A4B9A0: FStStrNoPop var_A0
  loc_A4B9A3: FLdPr Me
  loc_A4B9A6: MemStStrCopy
  loc_A4B9AA: FFreeStr var_9C = ""
  loc_A4B9B1: FFree1Ad var_88
  loc_A4B9B4: FFree1Var var_98 = ""
  loc_A4B9B7: Branch loc_A4BAC1
  loc_A4B9BA: FLdI2 var_A4
  loc_A4B9BD: LitI2_Byte 4
  loc_A4B9BF: EqI2
  loc_A4B9C0: BranchF loc_A4B9F8
  loc_A4B9C3: LitStr "CÓDIGO DE LA PARTIDA comience con: "
  loc_A4B9C6: FLdPr Me
  loc_A4B9C9: VCallAd Control_ID_FiltroMsk
  loc_A4B9CC: FStAdFunc var_88
  loc_A4B9CF: FLdPr var_88
  loc_A4B9D2: LateIdLdVar var_98 DispID_22 0
  loc_A4B9D9: CStrVarTmp
  loc_A4B9DA: FStStrNoPop var_9C
  loc_A4B9DD: ConcatStr
  loc_A4B9DE: FStStrNoPop var_A0
  loc_A4B9E1: FLdPr Me
  loc_A4B9E4: MemStStrCopy
  loc_A4B9E8: FFreeStr var_9C = ""
  loc_A4B9EF: FFree1Ad var_88
  loc_A4B9F2: FFree1Var var_98 = ""
  loc_A4B9F5: Branch loc_A4BAC1
  loc_A4B9F8: FLdI2 var_A4
  loc_A4B9FB: LitI2_Byte 5
  loc_A4B9FD: EqI2
  loc_A4B9FE: BranchF loc_A4BA48
  loc_A4BA01: LitStr "CÓDIGO DEL "
  loc_A4BA04: LitStr "U. Ejec."
  loc_A4BA07: ConcatStr
  loc_A4BA08: FStStrNoPop var_9C
  loc_A4BA0B: LitStr " comience con: "
  loc_A4BA0E: ConcatStr
  loc_A4BA0F: FStStrNoPop var_A0
  loc_A4BA12: FLdPr Me
  loc_A4BA15: VCallAd Control_ID_FiltroMsk
  loc_A4BA18: FStAdFunc var_88
  loc_A4BA1B: FLdPr var_88
  loc_A4BA1E: LateIdLdVar var_98 DispID_22 0
  loc_A4BA25: CStrVarTmp
  loc_A4BA26: FStStrNoPop var_A8
  loc_A4BA29: ConcatStr
  loc_A4BA2A: FStStrNoPop var_AC
  loc_A4BA2D: FLdPr Me
  loc_A4BA30: MemStStrCopy
  loc_A4BA34: FFreeStr var_9C = "": var_A0 = "": var_A8 = ""
  loc_A4BA3F: FFree1Ad var_88
  loc_A4BA42: FFree1Var var_98 = ""
  loc_A4BA45: Branch loc_A4BAC1
  loc_A4BA48: FLdI2 var_A4
  loc_A4BA4B: LitI2_Byte 6
  loc_A4BA4D: EqI2
  loc_A4BA4E: BranchF loc_A4BA86
  loc_A4BA51: LitStr "CÓDIGO DE LA FINALIDAD comience con: "
  loc_A4BA54: FLdPr Me
  loc_A4BA57: VCallAd Control_ID_FiltroMsk
  loc_A4BA5A: FStAdFunc var_88
  loc_A4BA5D: FLdPr var_88
  loc_A4BA60: LateIdLdVar var_98 DispID_22 0
  loc_A4BA67: CStrVarTmp
  loc_A4BA68: FStStrNoPop var_9C
  loc_A4BA6B: ConcatStr
  loc_A4BA6C: FStStrNoPop var_A0
  loc_A4BA6F: FLdPr Me
  loc_A4BA72: MemStStrCopy
  loc_A4BA76: FFreeStr var_9C = ""
  loc_A4BA7D: FFree1Ad var_88
  loc_A4BA80: FFree1Var var_98 = ""
  loc_A4BA83: Branch loc_A4BAC1
  loc_A4BA86: FLdI2 var_A4
  loc_A4BA89: LitI2_Byte 7
  loc_A4BA8B: EqI2
  loc_A4BA8C: BranchF loc_A4BAC1
  loc_A4BA8F: LitStr "Proveedor contiene: "
  loc_A4BA92: FLdPr Me
  loc_A4BA95: VCallAd Control_ID_FiltroMsk
  loc_A4BA98: FStAdFunc var_88
  loc_A4BA9B: FLdPr var_88
  loc_A4BA9E: LateIdLdVar var_98 DispID_22 0
  loc_A4BAA5: CStrVarTmp
  loc_A4BAA6: FStStrNoPop var_9C
  loc_A4BAA9: ConcatStr
  loc_A4BAAA: FStStrNoPop var_A0
  loc_A4BAAD: FLdPr Me
  loc_A4BAB0: MemStStrCopy
  loc_A4BAB4: FFreeStr var_9C = ""
  loc_A4BABB: FFree1Ad var_88
  loc_A4BABE: FFree1Var var_98 = ""
  loc_A4BAC1: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '981E40
  'Data Table: 4FA290
  loc_981E00: ILdI2 KeyAscii
  loc_981E03: LitI2_Byte &H27
  loc_981E05: EqI2
  loc_981E06: BranchF loc_981E0E
  loc_981E09: LitI2_Byte 0
  loc_981E0B: IStI2 KeyAscii
  loc_981E0E: ILdI2 KeyAscii
  loc_981E11: CI4UI1
  loc_981E12: LitI4 &HD
  loc_981E17: EqI4
  loc_981E18: BranchF loc_981E3E
  loc_981E1B: LitI4 0
  loc_981E20: LitI4 0
  loc_981E25: LitI4 0
  loc_981E2A: LitI4 0
  loc_981E2F: LitI4 0
  loc_981E34: Call Proc_144_69_AB40F4()
  loc_981E39: Call cmdCancelar_Click()
  loc_981E3E: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_GotFocus() '9A1F48
  'Data Table: 4FA290
  loc_9A1ED8: FLdRfVar var_8C
  loc_9A1EDB: FLdPr Me
  loc_9A1EDE: VCallAd Control_ID_ExpeImpuTxt
  loc_9A1EE1: FStAdFunc var_88
  loc_9A1EE4: FLdPr var_88
  loc_9A1EE7:  = Me.Text
  loc_9A1EEC: ILdRf var_8C
  loc_9A1EEF: LitStr vbNullString
  loc_9A1EF2: EqStr
  loc_9A1EF4: FFree1Str var_8C
  loc_9A1EF7: FFree1Ad var_88
  loc_9A1EFA: BranchF loc_9A1F32
  loc_9A1EFD: FLdPr Me
  loc_9A1F00: VCallAd Control_ID_ExorImpuMsk
  loc_9A1F03: FStAdFunc var_88
  loc_9A1F06: FLdPr var_88
  loc_9A1F09: LateIdLdVar var_9C DispID_15 0
  loc_9A1F10: CStrVarTmp
  loc_9A1F11: FStStrNoPop var_8C
  loc_9A1F14: FLdPr Me
  loc_9A1F17: VCallAd Control_ID_ExpeImpuTxt
  loc_9A1F1A: FStAdFunc var_A0
  loc_9A1F1D: FLdPr var_A0
  loc_9A1F20: Me.Text = from_stack_1
  loc_9A1F25: FFree1Str var_8C
  loc_9A1F28: FFreeAd var_88 = ""
  loc_9A1F2F: FFree1Var var_9C = ""
  loc_9A1F32: FLdPr Me
  loc_9A1F35: VCallAd Control_ID_ExpeImpuTxt
  loc_9A1F38: CVarAd
  loc_9A1F3C: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A1F41: FFree1Var var_9C = ""
  loc_9A1F44: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_KeyPress(KeyAscii As Integer) '96C908
  'Data Table: 4FA290
  loc_96C8E4: ILdI2 KeyAscii
  loc_96C8E7: CI4UI1
  loc_96C8E8: LitI4 9
  loc_96C8ED: EqI4
  loc_96C8EE: ILdI2 KeyAscii
  loc_96C8F1: CI4UI1
  loc_96C8F2: LitI4 0
  loc_96C8F7: EqI4
  loc_96C8F8: OrI4
  loc_96C8F9: BranchF loc_96C906
  loc_96C8FC: LitI2_Byte 0
  loc_96C8FE: PopTmpLdAd2 var_86
  loc_96C901: Call ExpeImpuTxt_Validate(from_stack_1v)
  loc_96C906: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_Validate(Cancel As Boolean) '9C24A0
  'Data Table: 4FA290
  loc_9C23E0: Call ExpeImpuTxt_GotFocus()
  loc_9C23E5: FLdRfVar var_8A
  loc_9C23E8: FLdPr Me
  loc_9C23EB: VCallAd Control_ID_cmdCancelar
  loc_9C23EE: FStAdFunc var_88
  loc_9C23F1: FLdPr var_88
  loc_9C23F4:  = Me.Value
  loc_9C23F9: FLdI2 var_8A
  loc_9C23FC: NotI4
  loc_9C23FD: FLdRfVar var_92
  loc_9C2400: FLdPr Me
  loc_9C2403: VCallAd Control_ID_ExpeImpuTxt
  loc_9C2406: FStAdFunc var_90
  loc_9C2409: FLdPr var_90
  loc_9C240C:  = Me.Enabled
  loc_9C2411: FLdI2 var_92
  loc_9C2414: AndI4
  loc_9C2415: FFreeAd var_88 = ""
  loc_9C241C: BranchF loc_9C249D
  loc_9C241F: FLdRfVar var_98
  loc_9C2422: FLdPr Me
  loc_9C2425: VCallAd Control_ID_ExpeImpuTxt
  loc_9C2428: FStAdFunc var_88
  loc_9C242B: FLdPr var_88
  loc_9C242E:  = Me.Text
  loc_9C2433: LitI2_Byte 0
  loc_9C2435: PopTmpLdAd2 var_9A
  loc_9C2438: LitI2_Byte 0
  loc_9C243A: PopTmpLdAd2 var_92
  loc_9C243D: LitI2_Byte 0
  loc_9C243F: PopTmpLdAd2 var_8A
  loc_9C2442: ILdRf var_98
  loc_9C2445: LitStr "Expediente de Pago"
  loc_9C2448: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C244D: FStStrNoPop var_A0
  loc_9C2450: FLdPr Me
  loc_9C2453: MemStStrCopy
  loc_9C2457: FFreeStr var_98 = ""
  loc_9C245E: FFree1Ad var_88
  loc_9C2461: FLdPr Me
  loc_9C2464: VCallAd Control_ID_ExpeImpuTxt
  loc_9C2467: FStAdFunc var_A8
  loc_9C246A: LitNothing
  loc_9C246C: CastAd
  loc_9C246F: FStAdFunc var_A4
  loc_9C2472: FLdRfVar var_A4
  loc_9C2475: FLdZeroAd var_A8
  loc_9C2478: FStAdFuncNoPop
  loc_9C247B: CastAd
  loc_9C247E: FStAdFunc var_90
  loc_9C2481: FLdRfVar var_90
  loc_9C2484: FLdPr Me
  loc_9C2487: MemLdRfVar from_stack_1.global_64
  loc_9C248A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C248F: IStI2 Cancel
  loc_9C2492: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C249D: ExitProcHresult
End Sub

Private Sub SufaDeveTxt_GotFocus() '992F58
  'Data Table: 4FA290
  loc_992F08: FLdRfVar var_8C
  loc_992F0B: FLdPr Me
  loc_992F0E: VCallAd Control_ID_SufaDeveTxt
  loc_992F11: FStAdFunc var_88
  loc_992F14: FLdPr var_88
  loc_992F17:  = Me.Text
  loc_992F1C: ILdRf var_8C
  loc_992F1F: LitStr vbNullString
  loc_992F22: EqStr
  loc_992F24: FFree1Str var_8C
  loc_992F27: FFree1Ad var_88
  loc_992F2A: BranchF loc_992F44
  loc_992F2D: LitStr "0000"
  loc_992F30: FLdPr Me
  loc_992F33: VCallAd Control_ID_SufaDeveTxt
  loc_992F36: FStAdFunc var_88
  loc_992F39: FLdPr var_88
  loc_992F3C: Me.Text = from_stack_1
  loc_992F41: FFree1Ad var_88
  loc_992F44: FLdPr Me
  loc_992F47: VCallAd Control_ID_SufaDeveTxt
  loc_992F4A: CVarAd
  loc_992F4E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_992F53: FFree1Var var_9C = ""
  loc_992F56: ExitProcHresult
End Sub

Private Sub SufaDeveTxt_KeyPress(KeyAscii As Integer) '9631C0
  'Data Table: 4FA290
  loc_9631A8: LitStr "0123456789"
  loc_9631AB: FStStrCopy var_88
  loc_9631AE: FLdRfVar var_88
  loc_9631B1: ILdRf KeyAscii
  loc_9631B4: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9631B9: IStI2 KeyAscii
  loc_9631BC: FFree1Str var_88
  loc_9631BF: ExitProcHresult
End Sub

Private Sub SufaDeveTxt_Validate(Cancel As Boolean) '9F8204
  'Data Table: 4FA290
  loc_9F80D4: FLdRfVar var_8A
  loc_9F80D7: FLdPr Me
  loc_9F80DA: VCallAd Control_ID_cmdCancelar
  loc_9F80DD: FStAdFunc var_88
  loc_9F80E0: FLdPr var_88
  loc_9F80E3:  = Me.Value
  loc_9F80E8: FLdI2 var_8A
  loc_9F80EB: NotI4
  loc_9F80EC: FLdRfVar var_92
  loc_9F80EF: FLdPr Me
  loc_9F80F2: VCallAd Control_ID_SufaDeveTxt
  loc_9F80F5: FStAdFunc var_90
  loc_9F80F8: FLdPr var_90
  loc_9F80FB:  = Me.Enabled
  loc_9F8100: FLdI2 var_92
  loc_9F8103: AndI4
  loc_9F8104: FFreeAd var_88 = ""
  loc_9F810B: BranchF loc_9F8200
  loc_9F810E: FLdRfVar var_98
  loc_9F8111: FLdPr Me
  loc_9F8114: VCallAd Control_ID_SufaDeveTxt
  loc_9F8117: FStAdFunc var_88
  loc_9F811A: FLdPr var_88
  loc_9F811D:  = Me.Text
  loc_9F8122: FLdRfVar var_9C
  loc_9F8125: FLdPr Me
  loc_9F8128: VCallAd Control_ID_TifaDeveCbo
  loc_9F812B: FStAdFunc var_90
  loc_9F812E: FLdPr var_90
  loc_9F8131:  = Me.Text
  loc_9F8136: ILdRf var_9C
  loc_9F8139: ILdRf var_98
  loc_9F813C: ImpAdCallI2 Proc_266_22_990D68(, )
  loc_9F8141: FStStrNoPop var_A0
  loc_9F8144: FLdPr Me
  loc_9F8147: MemStStrCopy
  loc_9F814B: FFreeStr var_98 = "": var_9C = ""
  loc_9F8154: FFreeAd var_88 = ""
  loc_9F815B: FLdPr Me
  loc_9F815E: VCallAd Control_ID_SufaDeveTxt
  loc_9F8161: FStAdFunc var_A8
  loc_9F8164: LitNothing
  loc_9F8166: CastAd
  loc_9F8169: FStAdFunc var_A4
  loc_9F816C: FLdRfVar var_A4
  loc_9F816F: FLdZeroAd var_A8
  loc_9F8172: FStAdFuncNoPop
  loc_9F8175: CastAd
  loc_9F8178: FStAdFunc var_90
  loc_9F817B: FLdRfVar var_90
  loc_9F817E: FLdPr Me
  loc_9F8181: MemLdRfVar from_stack_1.global_64
  loc_9F8184: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F8189: IStI2 Cancel
  loc_9F818C: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9F8197: ILdI2 Cancel
  loc_9F819A: NotI4
  loc_9F819B: BranchF loc_9F8200
  loc_9F819E: FLdRfVar var_98
  loc_9F81A1: FLdPr Me
  loc_9F81A4: VCallAd Control_ID_SufaDeveTxt
  loc_9F81A7: FStAdFunc var_88
  loc_9F81AA: FLdPr var_88
  loc_9F81AD:  = Me.Text
  loc_9F81B2: LitI4 1
  loc_9F81B7: LitI4 1
  loc_9F81BC: LitVarStr var_C8, "0000"
  loc_9F81C1: FStVarCopyObj var_D8
  loc_9F81C4: FLdRfVar var_D8
  loc_9F81C7: FLdZeroAd var_98
  loc_9F81CA: CVarStr var_B8
  loc_9F81CD: FLdRfVar var_E8
  loc_9F81D0: ImpAdCallFPR4  = Format(, )
  loc_9F81D5: FLdRfVar var_E8
  loc_9F81D8: CStrVarVal var_9C
  loc_9F81DC: FLdPr Me
  loc_9F81DF: VCallAd Control_ID_SufaDeveTxt
  loc_9F81E2: FStAdFunc var_90
  loc_9F81E5: FLdPr var_90
  loc_9F81E8: Me.Text = from_stack_1
  loc_9F81ED: FFree1Str var_9C
  loc_9F81F0: FFreeAd var_88 = ""
  loc_9F81F7: FFreeVar var_B8 = "": var_D8 = ""
  loc_9F8200: ExitProcHresult
End Sub

Private Sub CodiUngaTxt_GotFocus() '992ECC
  'Data Table: 4FA290
  loc_992E7C: FLdRfVar var_8C
  loc_992E7F: FLdPr Me
  loc_992E82: VCallAd Control_ID_CodiUngaTxt
  loc_992E85: FStAdFunc var_88
  loc_992E88: FLdPr var_88
  loc_992E8B:  = Me.Text
  loc_992E90: ILdRf var_8C
  loc_992E93: LitStr vbNullString
  loc_992E96: EqStr
  loc_992E98: FFree1Str var_8C
  loc_992E9B: FFree1Ad var_88
  loc_992E9E: BranchF loc_992EB8
  loc_992EA1: LitStr "1"
  loc_992EA4: FLdPr Me
  loc_992EA7: VCallAd Control_ID_CodiUngaTxt
  loc_992EAA: FStAdFunc var_88
  loc_992EAD: FLdPr var_88
  loc_992EB0: Me.Text = from_stack_1
  loc_992EB5: FFree1Ad var_88
  loc_992EB8: FLdPr Me
  loc_992EBB: VCallAd Control_ID_CodiUngaTxt
  loc_992EBE: CVarAd
  loc_992EC2: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_992EC7: FFree1Var var_9C = ""
  loc_992ECA: ExitProcHresult
End Sub

Private Sub CodiUngaTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A020D8
  'Data Table: 4FA290
  loc_A01F84: ILdI2 Shift
  loc_A01F87: CI4UI1
  loc_A01F88: LitI4 2
  loc_A01F8D: EqI4
  loc_A01F8E: ILdI2 KeyCode
  loc_A01F91: CI4UI1
  loc_A01F92: LitI4 &H42
  loc_A01F97: EqI4
  loc_A01F98: AndI4
  loc_A01F99: BranchF loc_A020D5
  loc_A01F9C: LitI2_Byte 0
  loc_A01F9E: ImpAdLdRf MemVar_C3D7D8
  loc_A01FA1: NewIfNullPr bscUnidadGasto
  loc_A01FA4: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_A01FA9: LitNothing
  loc_A01FAB: CastAd
  loc_A01FAE: FStAdFuncNoPop
  loc_A01FB1: ImpAdLdRf MemVar_C3D7D8
  loc_A01FB4: NewIfNullPr bscUnidadGasto
  loc_A01FB7: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_A01FBC: FFree1Ad var_88
  loc_A01FBF: LitVar_Missing var_A8
  loc_A01FC2: PopAdLdVar
  loc_A01FC3: LitVarI4
  loc_A01FCB: PopAdLdVar
  loc_A01FCC: ImpAdLdRf MemVar_C3D7D8
  loc_A01FCF: NewIfNullPr bscUnidadGasto
  loc_A01FD2: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_A01FD7: FLdRfVar var_AC
  loc_A01FDA: FLdRfVar var_88
  loc_A01FDD: ImpAdLdRf MemVar_C3D7D8
  loc_A01FE0: NewIfNullPr bscUnidadGasto
  loc_A01FE3: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A01FE8: FLdPr var_88
  loc_A01FEB: from_stack_1 = clsbase.RecordCount
  loc_A01FF0: ILdRf var_AC
  loc_A01FF3: LitI4 0
  loc_A01FF8: GtI4
  loc_A01FF9: FFree1Ad var_88
  loc_A01FFC: BranchF loc_A020D5
  loc_A01FFF: FLdRfVar var_C8
  loc_A02002: FLdRfVar var_B8
  loc_A02005: LitVarStr var_98, "CodiUnga"
  loc_A0200A: PopAdLdVar
  loc_A0200B: FLdRfVar var_B4
  loc_A0200E: FLdRfVar var_B0
  loc_A02011: FLdRfVar var_88
  loc_A02014: ImpAdLdRf MemVar_C3D7D8
  loc_A02017: NewIfNullPr bscUnidadGasto
  loc_A0201A: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A0201F: FLdPr var_88
  loc_A02022: from_stack_1v = clsbase.RsFrmGet()
  loc_A02027: FLdPr var_B0
  loc_A0202A:  = Me.Fields
  loc_A0202F: FLdPr var_B4
  loc_A02032: from_stack_2 = Me.Item(from_stack_1)
  loc_A02037: FLdPr var_B8
  loc_A0203A:  = Me.Value
  loc_A0203F: FLdRfVar var_C8
  loc_A02042: CStrVarTmp
  loc_A02043: FStStrNoPop var_CC
  loc_A02046: FLdPr Me
  loc_A02049: VCallAd Control_ID_CodiUngaTxt
  loc_A0204C: FStAdFunc var_D0
  loc_A0204F: FLdPr var_D0
  loc_A02052: Me.Text = from_stack_1
  loc_A02057: FFree1Str var_CC
  loc_A0205A: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A02067: FFree1Var var_C8 = ""
  loc_A0206A: FLdRfVar var_C8
  loc_A0206D: FLdRfVar var_B8
  loc_A02070: LitVarStr var_98, "DetaUnga"
  loc_A02075: PopAdLdVar
  loc_A02076: FLdRfVar var_B4
  loc_A02079: FLdRfVar var_B0
  loc_A0207C: FLdRfVar var_88
  loc_A0207F: ImpAdLdRf MemVar_C3D7D8
  loc_A02082: NewIfNullPr bscUnidadGasto
  loc_A02085: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A0208A: FLdPr var_88
  loc_A0208D: from_stack_1v = clsbase.RsFrmGet()
  loc_A02092: FLdPr var_B0
  loc_A02095:  = Me.Fields
  loc_A0209A: FLdPr var_B4
  loc_A0209D: from_stack_2 = Me.Item(from_stack_1)
  loc_A020A2: FLdPr var_B8
  loc_A020A5:  = Me.Value
  loc_A020AA: FLdRfVar var_C8
  loc_A020AD: CStrVarTmp
  loc_A020AE: FStStrNoPop var_CC
  loc_A020B1: FLdPr Me
  loc_A020B4: VCallAd Control_ID_DetaUngaLbl
  loc_A020B7: FStAdFunc var_D0
  loc_A020BA: FLdPr var_D0
  loc_A020BD: Me.Caption = from_stack_1
  loc_A020C2: FFree1Str var_CC
  loc_A020C5: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A020D2: FFree1Var var_C8 = ""
  loc_A020D5: ExitProcHresult
End Sub

Private Sub CodiUngaTxt_Validate(Cancel As Boolean) 'B8EA2C
  'Data Table: 4FA290
  loc_B8DBAC: FLdRfVar var_8A
  loc_B8DBAF: FLdPr Me
  loc_B8DBB2: VCallAd Control_ID_cmdCancelar
  loc_B8DBB5: FStAdFunc var_88
  loc_B8DBB8: FLdPr var_88
  loc_B8DBBB:  = Me.Value
  loc_B8DBC0: FLdI2 var_8A
  loc_B8DBC3: NotI4
  loc_B8DBC4: FLdRfVar var_92
  loc_B8DBC7: FLdPr Me
  loc_B8DBCA: VCallAd Control_ID_CodiUngaTxt
  loc_B8DBCD: FStAdFunc var_90
  loc_B8DBD0: FLdPr var_90
  loc_B8DBD3:  = Me.Enabled
  loc_B8DBD8: FLdI2 var_92
  loc_B8DBDB: AndI4
  loc_B8DBDC: FFreeAd var_88 = ""
  loc_B8DBE3: BranchF loc_B8EA28
  loc_B8DBE6: FLdRfVar var_98
  loc_B8DBE9: FLdPr Me
  loc_B8DBEC: VCallAd Control_ID_CodiUngaTxt
  loc_B8DBEF: FStAdFunc var_88
  loc_B8DBF2: FLdPr var_88
  loc_B8DBF5:  = Me.Text
  loc_B8DBFA: ILdRf var_98
  loc_B8DBFD: ImpAdCallI2 Trim$()
  loc_B8DC02: FStStrNoPop var_9C
  loc_B8DC05: LitStr vbNullString
  loc_B8DC08: NeStr
  loc_B8DC0A: FFreeStr var_98 = ""
  loc_B8DC11: FFree1Ad var_88
  loc_B8DC14: BranchF loc_B8E6DC
  loc_B8DC17: FLdPr Me
  loc_B8DC1A: VCallAd Control_ID_CodiUngaTxt
  loc_B8DC1D: FStAdFunc var_88
  loc_B8DC20: FLdRfVar var_88
  loc_B8DC23: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B8DC28: FFree1Ad var_88
  loc_B8DC2B: BranchF loc_B8DFC4
  loc_B8DC2E: LitStr " AND ug.CodiUnga = '"
  loc_B8DC31: FLdRfVar var_98
  loc_B8DC34: FLdPr Me
  loc_B8DC37: VCallAd Control_ID_CodiUngaTxt
  loc_B8DC3A: FStAdFunc var_88
  loc_B8DC3D: FLdPr var_88
  loc_B8DC40:  = Me.Text
  loc_B8DC45: ILdRf var_98
  loc_B8DC48: ConcatStr
  loc_B8DC49: FStStrNoPop var_9C
  loc_B8DC4C: LitStr "' ORDER BY ug.CodiUnga"
  loc_B8DC4F: ConcatStr
  loc_B8DC50: FStStrNoPop var_A0
  loc_B8DC53: ImpAdLdRf MemVar_C3D7D8
  loc_B8DC56: NewIfNullPr bscUnidadGasto
  loc_B8DC59: Call bscUnidadGasto.Constructor(from_stack_1v)
  loc_B8DC5E: FFreeStr var_98 = "": var_9C = ""
  loc_B8DC67: FFree1Ad var_88
  loc_B8DC6A: FLdRfVar var_A4
  loc_B8DC6D: FLdRfVar var_90
  loc_B8DC70: FLdRfVar var_88
  loc_B8DC73: ImpAdLdRf MemVar_C3D7D8
  loc_B8DC76: NewIfNullPr bscUnidadGasto
  loc_B8DC79: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8DC7E: FLdPr var_88
  loc_B8DC81: from_stack_1v = clsbase.RsFrmGet()
  loc_B8DC86: FLdPr var_90
  loc_B8DC89:  = Me.RecordCount
  loc_B8DC8E: ILdRf var_A4
  loc_B8DC91: LitI4 1
  loc_B8DC96: EqI4
  loc_B8DC97: FFreeAd var_88 = ""
  loc_B8DC9E: BranchF loc_B8DF43
  loc_B8DCA1: FLdRfVar var_CC
  loc_B8DCA4: FLdRfVar var_BC
  loc_B8DCA7: LitVarStr var_B8, "CodiUnga"
  loc_B8DCAC: PopAdLdVar
  loc_B8DCAD: FLdRfVar var_A8
  loc_B8DCB0: FLdRfVar var_90
  loc_B8DCB3: FLdRfVar var_88
  loc_B8DCB6: ImpAdLdRf MemVar_C3D7D8
  loc_B8DCB9: NewIfNullPr bscUnidadGasto
  loc_B8DCBC: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8DCC1: FLdPr var_88
  loc_B8DCC4: from_stack_1v = clsbase.RsFrmGet()
  loc_B8DCC9: FLdPr var_90
  loc_B8DCCC:  = Me.Fields
  loc_B8DCD1: FLdPr var_A8
  loc_B8DCD4: from_stack_2 = Me.Item(from_stack_1)
  loc_B8DCD9: FLdPr var_BC
  loc_B8DCDC:  = Me.Value
  loc_B8DCE1: FLdPr Me
  loc_B8DCE4: MemLdRfVar from_stack_1.global_108
  loc_B8DCE7: NewIfNullRf
  loc_B8DCEB: FLdRfVar var_CC
  loc_B8DCEE: CStrVarTmp
  loc_B8DCEF: FStStrNoPop var_9C
  loc_B8DCF2: ImpAdLdI2 MemVar_C3D064
  loc_B8DCF5: CStrUI1
  loc_B8DCF7: FStStrNoPop var_98
  loc_B8DCFA: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8DCFF: FStStrNoPop var_A0
  loc_B8DD02: FLdPr Me
  loc_B8DD05: MemStStrCopy
  loc_B8DD09: FFreeStr var_98 = "": var_9C = ""
  loc_B8DD12: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8DD1D: FFree1Var var_CC = ""
  loc_B8DD20: FLdRfVar var_98
  loc_B8DD23: FLdPr Me
  loc_B8DD26: MemLdRfVar from_stack_1.global_108
  loc_B8DD29: NewIfNullPr tblunidadgasto
  loc_B8DD2C: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8DD31: ILdRf var_98
  loc_B8DD34: FLdPr Me
  loc_B8DD37: VCallAd Control_ID_CodiUngaTxt
  loc_B8DD3A: FStAdFunc var_88
  loc_B8DD3D: FLdPr var_88
  loc_B8DD40: Me.Text = from_stack_1
  loc_B8DD45: FFree1Str var_98
  loc_B8DD48: FFree1Ad var_88
  loc_B8DD4B: FLdRfVar var_98
  loc_B8DD4E: FLdPr Me
  loc_B8DD51: MemLdRfVar from_stack_1.global_108
  loc_B8DD54: NewIfNullPr tblunidadgasto
  loc_B8DD57: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8DD5C: ILdRf var_98
  loc_B8DD5F: FLdPr Me
  loc_B8DD62: VCallAd Control_ID_DetaUngaLbl
  loc_B8DD65: FStAdFunc var_88
  loc_B8DD68: FLdPr var_88
  loc_B8DD6B: Me.Caption = from_stack_1
  loc_B8DD70: FFree1Str var_98
  loc_B8DD73: FFree1Ad var_88
  loc_B8DD76: FLdPr Me
  loc_B8DD79: VCallAd Control_ID_CodiUngaTxt
  loc_B8DD7C: FStAdFunc var_BC
  loc_B8DD7F: FLdPr Me
  loc_B8DD82: VCallAd Control_ID_DetaUngaLbl
  loc_B8DD85: FStAdFunc var_A8
  loc_B8DD88: FLdRfVar var_A8
  loc_B8DD8B: FLdZeroAd var_BC
  loc_B8DD8E: FStAdFuncNoPop
  loc_B8DD91: CastAd
  loc_B8DD94: FStAdFunc var_90
  loc_B8DD97: FLdRfVar var_90
  loc_B8DD9A: FLdPr Me
  loc_B8DD9D: MemLdRfVar from_stack_1.global_64
  loc_B8DDA0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8DDA5: IStI2 Cancel
  loc_B8DDA8: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8DDB3: ILdI2 Cancel
  loc_B8DDB6: NotI4
  loc_B8DDB7: BranchF loc_B8DF40
  loc_B8DDBA: FLdPr Me
  loc_B8DDBD: VCallAd Control_ID_CodiOrgaMsk
  loc_B8DDC0: FStAdFunc var_88
  loc_B8DDC3: FLdPr var_88
  loc_B8DDC6: LateIdLdVar var_CC DispID_22 0
  loc_B8DDCD: CStrVarTmp
  loc_B8DDCE: FStStrNoPop var_98
  loc_B8DDD1: LitStr vbNullString
  loc_B8DDD4: EqStr
  loc_B8DDD6: FFree1Str var_98
  loc_B8DDD9: FFree1Ad var_88
  loc_B8DDDC: FFree1Var var_CC = ""
  loc_B8DDDF: BranchF loc_B8DE3C
  loc_B8DDE2: FLdRfVar var_98
  loc_B8DDE5: FLdPr Me
  loc_B8DDE8: MemLdRfVar from_stack_1.global_108
  loc_B8DDEB: NewIfNullPr tblunidadgasto
  loc_B8DDEE: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8DDF3: FLdZeroAd var_98
  loc_B8DDF6: CVarStr var_CC
  loc_B8DDF9: PopAdLdVar
  loc_B8DDFA: FLdPr Me
  loc_B8DDFD: VCallAd Control_ID_CodiOrgaMsk
  loc_B8DE00: FStAdFunc var_88
  loc_B8DE03: FLdPr var_88
  loc_B8DE06: LateIdSt
  loc_B8DE0B: FFree1Ad var_88
  loc_B8DE0E: FFree1Var var_CC = ""
  loc_B8DE11: FLdRfVar var_98
  loc_B8DE14: FLdPr Me
  loc_B8DE17: MemLdRfVar from_stack_1.global_108
  loc_B8DE1A: NewIfNullPr tblunidadgasto
  loc_B8DE1D: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8DE22: ILdRf var_98
  loc_B8DE25: FLdPr Me
  loc_B8DE28: VCallAd Control_ID_DetaOrgaLbl
  loc_B8DE2B: FStAdFunc var_88
  loc_B8DE2E: FLdPr var_88
  loc_B8DE31: Me.Caption = from_stack_1
  loc_B8DE36: FFree1Str var_98
  loc_B8DE39: FFree1Ad var_88
  loc_B8DE3C: FLdPr Me
  loc_B8DE3F: VCallAd Control_ID_CodiPartMsk
  loc_B8DE42: FStAdFunc var_88
  loc_B8DE45: FLdPr var_88
  loc_B8DE48: LateIdLdVar var_CC DispID_22 0
  loc_B8DE4F: CStrVarTmp
  loc_B8DE50: FStStrNoPop var_98
  loc_B8DE53: LitStr vbNullString
  loc_B8DE56: EqStr
  loc_B8DE58: FFree1Str var_98
  loc_B8DE5B: FFree1Ad var_88
  loc_B8DE5E: FFree1Var var_CC = ""
  loc_B8DE61: BranchF loc_B8DEBE
  loc_B8DE64: FLdRfVar var_98
  loc_B8DE67: FLdPr Me
  loc_B8DE6A: MemLdRfVar from_stack_1.global_108
  loc_B8DE6D: NewIfNullPr tblunidadgasto
  loc_B8DE70: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8DE75: FLdZeroAd var_98
  loc_B8DE78: CVarStr var_CC
  loc_B8DE7B: PopAdLdVar
  loc_B8DE7C: FLdPr Me
  loc_B8DE7F: VCallAd Control_ID_CodiPartMsk
  loc_B8DE82: FStAdFunc var_88
  loc_B8DE85: FLdPr var_88
  loc_B8DE88: LateIdSt
  loc_B8DE8D: FFree1Ad var_88
  loc_B8DE90: FFree1Var var_CC = ""
  loc_B8DE93: FLdRfVar var_98
  loc_B8DE96: FLdPr Me
  loc_B8DE99: MemLdRfVar from_stack_1.global_108
  loc_B8DE9C: NewIfNullPr tblunidadgasto
  loc_B8DE9F: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8DEA4: ILdRf var_98
  loc_B8DEA7: FLdPr Me
  loc_B8DEAA: VCallAd Control_ID_DetaPartLbl
  loc_B8DEAD: FStAdFunc var_88
  loc_B8DEB0: FLdPr var_88
  loc_B8DEB3: Me.Caption = from_stack_1
  loc_B8DEB8: FFree1Str var_98
  loc_B8DEBB: FFree1Ad var_88
  loc_B8DEBE: FLdPr Me
  loc_B8DEC1: VCallAd Control_ID_CodiFifuMsk
  loc_B8DEC4: FStAdFunc var_88
  loc_B8DEC7: FLdPr var_88
  loc_B8DECA: LateIdLdVar var_CC DispID_22 0
  loc_B8DED1: CStrVarTmp
  loc_B8DED2: FStStrNoPop var_98
  loc_B8DED5: LitStr vbNullString
  loc_B8DED8: EqStr
  loc_B8DEDA: FFree1Str var_98
  loc_B8DEDD: FFree1Ad var_88
  loc_B8DEE0: FFree1Var var_CC = ""
  loc_B8DEE3: BranchF loc_B8DF40
  loc_B8DEE6: FLdRfVar var_98
  loc_B8DEE9: FLdPr Me
  loc_B8DEEC: MemLdRfVar from_stack_1.global_108
  loc_B8DEEF: NewIfNullPr tblunidadgasto
  loc_B8DEF2: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8DEF7: FLdZeroAd var_98
  loc_B8DEFA: CVarStr var_CC
  loc_B8DEFD: PopAdLdVar
  loc_B8DEFE: FLdPr Me
  loc_B8DF01: VCallAd Control_ID_CodiFifuMsk
  loc_B8DF04: FStAdFunc var_88
  loc_B8DF07: FLdPr var_88
  loc_B8DF0A: LateIdSt
  loc_B8DF0F: FFree1Ad var_88
  loc_B8DF12: FFree1Var var_CC = ""
  loc_B8DF15: FLdRfVar var_98
  loc_B8DF18: FLdPr Me
  loc_B8DF1B: MemLdRfVar from_stack_1.global_108
  loc_B8DF1E: NewIfNullPr tblunidadgasto
  loc_B8DF21: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8DF26: ILdRf var_98
  loc_B8DF29: FLdPr Me
  loc_B8DF2C: VCallAd Control_ID_DetaFifuLbl
  loc_B8DF2F: FStAdFunc var_88
  loc_B8DF32: FLdPr var_88
  loc_B8DF35: Me.Caption = from_stack_1
  loc_B8DF3A: FFree1Str var_98
  loc_B8DF3D: FFree1Ad var_88
  loc_B8DF40: Branch loc_B8DFC1
  loc_B8DF43: FLdRfVar var_A4
  loc_B8DF46: FLdRfVar var_90
  loc_B8DF49: FLdRfVar var_88
  loc_B8DF4C: ImpAdLdRf MemVar_C3D7D8
  loc_B8DF4F: NewIfNullPr bscUnidadGasto
  loc_B8DF52: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8DF57: FLdPr var_88
  loc_B8DF5A: from_stack_1v = clsbase.RsFrmGet()
  loc_B8DF5F: FLdPr var_90
  loc_B8DF62:  = Me.RecordCount
  loc_B8DF67: ILdRf var_A4
  loc_B8DF6A: LitI4 1
  loc_B8DF6F: LtI4
  loc_B8DF70: FFreeAd var_88 = ""
  loc_B8DF77: BranchF loc_B8DFC1
  loc_B8DF7A: LitStr "La Unidad de Gasto NO EXISTE. Verifique..."
  loc_B8DF7D: FLdPr Me
  loc_B8DF80: MemStStrCopy
  loc_B8DF84: FLdPr Me
  loc_B8DF87: VCallAd Control_ID_CodiUngaTxt
  loc_B8DF8A: FStAdFunc var_BC
  loc_B8DF8D: FLdPr Me
  loc_B8DF90: VCallAd Control_ID_DetaUngaLbl
  loc_B8DF93: FStAdFunc var_A8
  loc_B8DF96: FLdRfVar var_A8
  loc_B8DF99: FLdZeroAd var_BC
  loc_B8DF9C: FStAdFuncNoPop
  loc_B8DF9F: CastAd
  loc_B8DFA2: FStAdFunc var_90
  loc_B8DFA5: FLdRfVar var_90
  loc_B8DFA8: FLdPr Me
  loc_B8DFAB: MemLdRfVar from_stack_1.global_64
  loc_B8DFAE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8DFB3: IStI2 Cancel
  loc_B8DFB6: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8DFC1: Branch loc_B8E6D9
  loc_B8DFC4: FLdRfVar var_98
  loc_B8DFC7: FLdPr Me
  loc_B8DFCA: VCallAd Control_ID_CodiUngaTxt
  loc_B8DFCD: FStAdFunc var_88
  loc_B8DFD0: FLdPr var_88
  loc_B8DFD3:  = Me.Text
  loc_B8DFD8: LitStr " AND DetaUnga LIKE '" & Chr(37)
  loc_B8DFDB: LitI4 0
  loc_B8DFE0: LitI4 -1
  loc_B8DFE5: LitI4 1
  loc_B8DFEA: LitStr Chr(37)
  loc_B8DFED: LitStr " "
  loc_B8DFF0: ILdRf var_98
  loc_B8DFF3: ImpAdCallI2 Replace(, , , , , )
  loc_B8DFF8: FStStrNoPop var_9C
  loc_B8DFFB: ConcatStr
  loc_B8DFFC: FStStrNoPop var_A0
  loc_B8DFFF: LitStr Chr(37) & "' ORDER BY DetaUnga"
  loc_B8E002: ConcatStr
  loc_B8E003: FStStrNoPop var_D0
  loc_B8E006: ImpAdLdRf MemVar_C3D7D8
  loc_B8E009: NewIfNullPr bscUnidadGasto
  loc_B8E00C: Call bscUnidadGasto.Constructor(from_stack_1v)
  loc_B8E011: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_B8E01C: FFree1Ad var_88
  loc_B8E01F: FLdRfVar var_A4
  loc_B8E022: FLdRfVar var_90
  loc_B8E025: FLdRfVar var_88
  loc_B8E028: ImpAdLdRf MemVar_C3D7D8
  loc_B8E02B: NewIfNullPr bscUnidadGasto
  loc_B8E02E: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8E033: FLdPr var_88
  loc_B8E036: from_stack_1v = clsbase.RsFrmGet()
  loc_B8E03B: FLdPr var_90
  loc_B8E03E:  = Me.RecordCount
  loc_B8E043: ILdRf var_A4
  loc_B8E046: LitI4 1
  loc_B8E04B: EqI4
  loc_B8E04C: FFreeAd var_88 = ""
  loc_B8E053: BranchF loc_B8E2F8
  loc_B8E056: FLdRfVar var_CC
  loc_B8E059: FLdRfVar var_BC
  loc_B8E05C: LitVarStr var_B8, "CodiUnga"
  loc_B8E061: PopAdLdVar
  loc_B8E062: FLdRfVar var_A8
  loc_B8E065: FLdRfVar var_90
  loc_B8E068: FLdRfVar var_88
  loc_B8E06B: ImpAdLdRf MemVar_C3D7D8
  loc_B8E06E: NewIfNullPr bscUnidadGasto
  loc_B8E071: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8E076: FLdPr var_88
  loc_B8E079: from_stack_1v = clsbase.RsFrmGet()
  loc_B8E07E: FLdPr var_90
  loc_B8E081:  = Me.Fields
  loc_B8E086: FLdPr var_A8
  loc_B8E089: from_stack_2 = Me.Item(from_stack_1)
  loc_B8E08E: FLdPr var_BC
  loc_B8E091:  = Me.Value
  loc_B8E096: FLdPr Me
  loc_B8E099: MemLdRfVar from_stack_1.global_108
  loc_B8E09C: NewIfNullRf
  loc_B8E0A0: FLdRfVar var_CC
  loc_B8E0A3: CStrVarTmp
  loc_B8E0A4: FStStrNoPop var_9C
  loc_B8E0A7: ImpAdLdI2 MemVar_C3D064
  loc_B8E0AA: CStrUI1
  loc_B8E0AC: FStStrNoPop var_98
  loc_B8E0AF: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8E0B4: FStStrNoPop var_A0
  loc_B8E0B7: FLdPr Me
  loc_B8E0BA: MemStStrCopy
  loc_B8E0BE: FFreeStr var_98 = "": var_9C = ""
  loc_B8E0C7: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8E0D2: FFree1Var var_CC = ""
  loc_B8E0D5: FLdRfVar var_98
  loc_B8E0D8: FLdPr Me
  loc_B8E0DB: MemLdRfVar from_stack_1.global_108
  loc_B8E0DE: NewIfNullPr tblunidadgasto
  loc_B8E0E1: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8E0E6: ILdRf var_98
  loc_B8E0E9: FLdPr Me
  loc_B8E0EC: VCallAd Control_ID_CodiUngaTxt
  loc_B8E0EF: FStAdFunc var_88
  loc_B8E0F2: FLdPr var_88
  loc_B8E0F5: Me.Text = from_stack_1
  loc_B8E0FA: FFree1Str var_98
  loc_B8E0FD: FFree1Ad var_88
  loc_B8E100: FLdRfVar var_98
  loc_B8E103: FLdPr Me
  loc_B8E106: MemLdRfVar from_stack_1.global_108
  loc_B8E109: NewIfNullPr tblunidadgasto
  loc_B8E10C: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8E111: ILdRf var_98
  loc_B8E114: FLdPr Me
  loc_B8E117: VCallAd Control_ID_DetaUngaLbl
  loc_B8E11A: FStAdFunc var_88
  loc_B8E11D: FLdPr var_88
  loc_B8E120: Me.Caption = from_stack_1
  loc_B8E125: FFree1Str var_98
  loc_B8E128: FFree1Ad var_88
  loc_B8E12B: FLdPr Me
  loc_B8E12E: VCallAd Control_ID_CodiUngaTxt
  loc_B8E131: FStAdFunc var_BC
  loc_B8E134: FLdPr Me
  loc_B8E137: VCallAd Control_ID_DetaUngaLbl
  loc_B8E13A: FStAdFunc var_A8
  loc_B8E13D: FLdRfVar var_A8
  loc_B8E140: FLdZeroAd var_BC
  loc_B8E143: FStAdFuncNoPop
  loc_B8E146: CastAd
  loc_B8E149: FStAdFunc var_90
  loc_B8E14C: FLdRfVar var_90
  loc_B8E14F: FLdPr Me
  loc_B8E152: MemLdRfVar from_stack_1.global_64
  loc_B8E155: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8E15A: IStI2 Cancel
  loc_B8E15D: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8E168: ILdI2 Cancel
  loc_B8E16B: NotI4
  loc_B8E16C: BranchF loc_B8E2F5
  loc_B8E16F: FLdPr Me
  loc_B8E172: VCallAd Control_ID_CodiOrgaMsk
  loc_B8E175: FStAdFunc var_88
  loc_B8E178: FLdPr var_88
  loc_B8E17B: LateIdLdVar var_CC DispID_22 0
  loc_B8E182: CStrVarTmp
  loc_B8E183: FStStrNoPop var_98
  loc_B8E186: LitStr vbNullString
  loc_B8E189: EqStr
  loc_B8E18B: FFree1Str var_98
  loc_B8E18E: FFree1Ad var_88
  loc_B8E191: FFree1Var var_CC = ""
  loc_B8E194: BranchF loc_B8E1F1
  loc_B8E197: FLdRfVar var_98
  loc_B8E19A: FLdPr Me
  loc_B8E19D: MemLdRfVar from_stack_1.global_108
  loc_B8E1A0: NewIfNullPr tblunidadgasto
  loc_B8E1A3: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8E1A8: FLdZeroAd var_98
  loc_B8E1AB: CVarStr var_CC
  loc_B8E1AE: PopAdLdVar
  loc_B8E1AF: FLdPr Me
  loc_B8E1B2: VCallAd Control_ID_CodiOrgaMsk
  loc_B8E1B5: FStAdFunc var_88
  loc_B8E1B8: FLdPr var_88
  loc_B8E1BB: LateIdSt
  loc_B8E1C0: FFree1Ad var_88
  loc_B8E1C3: FFree1Var var_CC = ""
  loc_B8E1C6: FLdRfVar var_98
  loc_B8E1C9: FLdPr Me
  loc_B8E1CC: MemLdRfVar from_stack_1.global_108
  loc_B8E1CF: NewIfNullPr tblunidadgasto
  loc_B8E1D2: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8E1D7: ILdRf var_98
  loc_B8E1DA: FLdPr Me
  loc_B8E1DD: VCallAd Control_ID_DetaOrgaLbl
  loc_B8E1E0: FStAdFunc var_88
  loc_B8E1E3: FLdPr var_88
  loc_B8E1E6: Me.Caption = from_stack_1
  loc_B8E1EB: FFree1Str var_98
  loc_B8E1EE: FFree1Ad var_88
  loc_B8E1F1: FLdPr Me
  loc_B8E1F4: VCallAd Control_ID_CodiPartMsk
  loc_B8E1F7: FStAdFunc var_88
  loc_B8E1FA: FLdPr var_88
  loc_B8E1FD: LateIdLdVar var_CC DispID_22 0
  loc_B8E204: CStrVarTmp
  loc_B8E205: FStStrNoPop var_98
  loc_B8E208: LitStr vbNullString
  loc_B8E20B: EqStr
  loc_B8E20D: FFree1Str var_98
  loc_B8E210: FFree1Ad var_88
  loc_B8E213: FFree1Var var_CC = ""
  loc_B8E216: BranchF loc_B8E273
  loc_B8E219: FLdRfVar var_98
  loc_B8E21C: FLdPr Me
  loc_B8E21F: MemLdRfVar from_stack_1.global_108
  loc_B8E222: NewIfNullPr tblunidadgasto
  loc_B8E225: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8E22A: FLdZeroAd var_98
  loc_B8E22D: CVarStr var_CC
  loc_B8E230: PopAdLdVar
  loc_B8E231: FLdPr Me
  loc_B8E234: VCallAd Control_ID_CodiPartMsk
  loc_B8E237: FStAdFunc var_88
  loc_B8E23A: FLdPr var_88
  loc_B8E23D: LateIdSt
  loc_B8E242: FFree1Ad var_88
  loc_B8E245: FFree1Var var_CC = ""
  loc_B8E248: FLdRfVar var_98
  loc_B8E24B: FLdPr Me
  loc_B8E24E: MemLdRfVar from_stack_1.global_108
  loc_B8E251: NewIfNullPr tblunidadgasto
  loc_B8E254: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8E259: ILdRf var_98
  loc_B8E25C: FLdPr Me
  loc_B8E25F: VCallAd Control_ID_DetaPartLbl
  loc_B8E262: FStAdFunc var_88
  loc_B8E265: FLdPr var_88
  loc_B8E268: Me.Caption = from_stack_1
  loc_B8E26D: FFree1Str var_98
  loc_B8E270: FFree1Ad var_88
  loc_B8E273: FLdPr Me
  loc_B8E276: VCallAd Control_ID_CodiFifuMsk
  loc_B8E279: FStAdFunc var_88
  loc_B8E27C: FLdPr var_88
  loc_B8E27F: LateIdLdVar var_CC DispID_22 0
  loc_B8E286: CStrVarTmp
  loc_B8E287: FStStrNoPop var_98
  loc_B8E28A: LitStr vbNullString
  loc_B8E28D: EqStr
  loc_B8E28F: FFree1Str var_98
  loc_B8E292: FFree1Ad var_88
  loc_B8E295: FFree1Var var_CC = ""
  loc_B8E298: BranchF loc_B8E2F5
  loc_B8E29B: FLdRfVar var_98
  loc_B8E29E: FLdPr Me
  loc_B8E2A1: MemLdRfVar from_stack_1.global_108
  loc_B8E2A4: NewIfNullPr tblunidadgasto
  loc_B8E2A7: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8E2AC: FLdZeroAd var_98
  loc_B8E2AF: CVarStr var_CC
  loc_B8E2B2: PopAdLdVar
  loc_B8E2B3: FLdPr Me
  loc_B8E2B6: VCallAd Control_ID_CodiFifuMsk
  loc_B8E2B9: FStAdFunc var_88
  loc_B8E2BC: FLdPr var_88
  loc_B8E2BF: LateIdSt
  loc_B8E2C4: FFree1Ad var_88
  loc_B8E2C7: FFree1Var var_CC = ""
  loc_B8E2CA: FLdRfVar var_98
  loc_B8E2CD: FLdPr Me
  loc_B8E2D0: MemLdRfVar from_stack_1.global_108
  loc_B8E2D3: NewIfNullPr tblunidadgasto
  loc_B8E2D6: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8E2DB: ILdRf var_98
  loc_B8E2DE: FLdPr Me
  loc_B8E2E1: VCallAd Control_ID_DetaFifuLbl
  loc_B8E2E4: FStAdFunc var_88
  loc_B8E2E7: FLdPr var_88
  loc_B8E2EA: Me.Caption = from_stack_1
  loc_B8E2EF: FFree1Str var_98
  loc_B8E2F2: FFree1Ad var_88
  loc_B8E2F5: Branch loc_B8E6D9
  loc_B8E2F8: FLdRfVar var_A4
  loc_B8E2FB: FLdRfVar var_90
  loc_B8E2FE: FLdRfVar var_88
  loc_B8E301: ImpAdLdRf MemVar_C3D7D8
  loc_B8E304: NewIfNullPr bscUnidadGasto
  loc_B8E307: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8E30C: FLdPr var_88
  loc_B8E30F: from_stack_1v = clsbase.RsFrmGet()
  loc_B8E314: FLdPr var_90
  loc_B8E317:  = Me.RecordCount
  loc_B8E31C: ILdRf var_A4
  loc_B8E31F: LitI4 1
  loc_B8E324: GtI4
  loc_B8E325: FFreeAd var_88 = ""
  loc_B8E32C: BranchF loc_B8E65B
  loc_B8E32F: LitVar_Missing var_E0
  loc_B8E332: PopAdLdVar
  loc_B8E333: LitVarI4
  loc_B8E33B: PopAdLdVar
  loc_B8E33C: ImpAdLdRf MemVar_C3D7D8
  loc_B8E33F: NewIfNullPr bscUnidadGasto
  loc_B8E342: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_B8E347: FLdRfVar var_A4
  loc_B8E34A: FLdRfVar var_88
  loc_B8E34D: ImpAdLdRf MemVar_C3D7D8
  loc_B8E350: NewIfNullPr bscUnidadGasto
  loc_B8E353: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8E358: FLdPr var_88
  loc_B8E35B: from_stack_1 = clsbase.RecordCount
  loc_B8E360: ILdRf var_A4
  loc_B8E363: LitI4 0
  loc_B8E368: GtI4
  loc_B8E369: FFree1Ad var_88
  loc_B8E36C: BranchF loc_B8E611
  loc_B8E36F: FLdRfVar var_CC
  loc_B8E372: FLdRfVar var_BC
  loc_B8E375: LitVarStr var_B8, "CodiUnga"
  loc_B8E37A: PopAdLdVar
  loc_B8E37B: FLdRfVar var_A8
  loc_B8E37E: FLdRfVar var_90
  loc_B8E381: FLdRfVar var_88
  loc_B8E384: ImpAdLdRf MemVar_C3D7D8
  loc_B8E387: NewIfNullPr bscUnidadGasto
  loc_B8E38A: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8E38F: FLdPr var_88
  loc_B8E392: from_stack_1v = clsbase.RsFrmGet()
  loc_B8E397: FLdPr var_90
  loc_B8E39A:  = Me.Fields
  loc_B8E39F: FLdPr var_A8
  loc_B8E3A2: from_stack_2 = Me.Item(from_stack_1)
  loc_B8E3A7: FLdPr var_BC
  loc_B8E3AA:  = Me.Value
  loc_B8E3AF: FLdPr Me
  loc_B8E3B2: MemLdRfVar from_stack_1.global_108
  loc_B8E3B5: NewIfNullRf
  loc_B8E3B9: FLdRfVar var_CC
  loc_B8E3BC: CStrVarTmp
  loc_B8E3BD: FStStrNoPop var_9C
  loc_B8E3C0: ImpAdLdI2 MemVar_C3D064
  loc_B8E3C3: CStrUI1
  loc_B8E3C5: FStStrNoPop var_98
  loc_B8E3C8: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8E3CD: FStStrNoPop var_A0
  loc_B8E3D0: FLdPr Me
  loc_B8E3D3: MemStStrCopy
  loc_B8E3D7: FFreeStr var_98 = "": var_9C = ""
  loc_B8E3E0: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8E3EB: FFree1Var var_CC = ""
  loc_B8E3EE: FLdRfVar var_98
  loc_B8E3F1: FLdPr Me
  loc_B8E3F4: MemLdRfVar from_stack_1.global_108
  loc_B8E3F7: NewIfNullPr tblunidadgasto
  loc_B8E3FA: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8E3FF: ILdRf var_98
  loc_B8E402: FLdPr Me
  loc_B8E405: VCallAd Control_ID_CodiUngaTxt
  loc_B8E408: FStAdFunc var_88
  loc_B8E40B: FLdPr var_88
  loc_B8E40E: Me.Text = from_stack_1
  loc_B8E413: FFree1Str var_98
  loc_B8E416: FFree1Ad var_88
  loc_B8E419: FLdRfVar var_98
  loc_B8E41C: FLdPr Me
  loc_B8E41F: MemLdRfVar from_stack_1.global_108
  loc_B8E422: NewIfNullPr tblunidadgasto
  loc_B8E425: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8E42A: ILdRf var_98
  loc_B8E42D: FLdPr Me
  loc_B8E430: VCallAd Control_ID_DetaUngaLbl
  loc_B8E433: FStAdFunc var_88
  loc_B8E436: FLdPr var_88
  loc_B8E439: Me.Caption = from_stack_1
  loc_B8E43E: FFree1Str var_98
  loc_B8E441: FFree1Ad var_88
  loc_B8E444: FLdPr Me
  loc_B8E447: VCallAd Control_ID_CodiUngaTxt
  loc_B8E44A: FStAdFunc var_BC
  loc_B8E44D: FLdPr Me
  loc_B8E450: VCallAd Control_ID_DetaUngaLbl
  loc_B8E453: FStAdFunc var_A8
  loc_B8E456: FLdRfVar var_A8
  loc_B8E459: FLdZeroAd var_BC
  loc_B8E45C: FStAdFuncNoPop
  loc_B8E45F: CastAd
  loc_B8E462: FStAdFunc var_90
  loc_B8E465: FLdRfVar var_90
  loc_B8E468: FLdPr Me
  loc_B8E46B: MemLdRfVar from_stack_1.global_64
  loc_B8E46E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8E473: IStI2 Cancel
  loc_B8E476: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8E481: ILdI2 Cancel
  loc_B8E484: NotI4
  loc_B8E485: BranchF loc_B8E60E
  loc_B8E488: FLdPr Me
  loc_B8E48B: VCallAd Control_ID_CodiOrgaMsk
  loc_B8E48E: FStAdFunc var_88
  loc_B8E491: FLdPr var_88
  loc_B8E494: LateIdLdVar var_CC DispID_22 0
  loc_B8E49B: CStrVarTmp
  loc_B8E49C: FStStrNoPop var_98
  loc_B8E49F: LitStr vbNullString
  loc_B8E4A2: EqStr
  loc_B8E4A4: FFree1Str var_98
  loc_B8E4A7: FFree1Ad var_88
  loc_B8E4AA: FFree1Var var_CC = ""
  loc_B8E4AD: BranchF loc_B8E50A
  loc_B8E4B0: FLdRfVar var_98
  loc_B8E4B3: FLdPr Me
  loc_B8E4B6: MemLdRfVar from_stack_1.global_108
  loc_B8E4B9: NewIfNullPr tblunidadgasto
  loc_B8E4BC: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8E4C1: FLdZeroAd var_98
  loc_B8E4C4: CVarStr var_CC
  loc_B8E4C7: PopAdLdVar
  loc_B8E4C8: FLdPr Me
  loc_B8E4CB: VCallAd Control_ID_CodiOrgaMsk
  loc_B8E4CE: FStAdFunc var_88
  loc_B8E4D1: FLdPr var_88
  loc_B8E4D4: LateIdSt
  loc_B8E4D9: FFree1Ad var_88
  loc_B8E4DC: FFree1Var var_CC = ""
  loc_B8E4DF: FLdRfVar var_98
  loc_B8E4E2: FLdPr Me
  loc_B8E4E5: MemLdRfVar from_stack_1.global_108
  loc_B8E4E8: NewIfNullPr tblunidadgasto
  loc_B8E4EB: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8E4F0: ILdRf var_98
  loc_B8E4F3: FLdPr Me
  loc_B8E4F6: VCallAd Control_ID_DetaOrgaLbl
  loc_B8E4F9: FStAdFunc var_88
  loc_B8E4FC: FLdPr var_88
  loc_B8E4FF: Me.Caption = from_stack_1
  loc_B8E504: FFree1Str var_98
  loc_B8E507: FFree1Ad var_88
  loc_B8E50A: FLdPr Me
  loc_B8E50D: VCallAd Control_ID_CodiPartMsk
  loc_B8E510: FStAdFunc var_88
  loc_B8E513: FLdPr var_88
  loc_B8E516: LateIdLdVar var_CC DispID_22 0
  loc_B8E51D: CStrVarTmp
  loc_B8E51E: FStStrNoPop var_98
  loc_B8E521: LitStr vbNullString
  loc_B8E524: EqStr
  loc_B8E526: FFree1Str var_98
  loc_B8E529: FFree1Ad var_88
  loc_B8E52C: FFree1Var var_CC = ""
  loc_B8E52F: BranchF loc_B8E58C
  loc_B8E532: FLdRfVar var_98
  loc_B8E535: FLdPr Me
  loc_B8E538: MemLdRfVar from_stack_1.global_108
  loc_B8E53B: NewIfNullPr tblunidadgasto
  loc_B8E53E: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8E543: FLdZeroAd var_98
  loc_B8E546: CVarStr var_CC
  loc_B8E549: PopAdLdVar
  loc_B8E54A: FLdPr Me
  loc_B8E54D: VCallAd Control_ID_CodiPartMsk
  loc_B8E550: FStAdFunc var_88
  loc_B8E553: FLdPr var_88
  loc_B8E556: LateIdSt
  loc_B8E55B: FFree1Ad var_88
  loc_B8E55E: FFree1Var var_CC = ""
  loc_B8E561: FLdRfVar var_98
  loc_B8E564: FLdPr Me
  loc_B8E567: MemLdRfVar from_stack_1.global_108
  loc_B8E56A: NewIfNullPr tblunidadgasto
  loc_B8E56D: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8E572: ILdRf var_98
  loc_B8E575: FLdPr Me
  loc_B8E578: VCallAd Control_ID_DetaPartLbl
  loc_B8E57B: FStAdFunc var_88
  loc_B8E57E: FLdPr var_88
  loc_B8E581: Me.Caption = from_stack_1
  loc_B8E586: FFree1Str var_98
  loc_B8E589: FFree1Ad var_88
  loc_B8E58C: FLdPr Me
  loc_B8E58F: VCallAd Control_ID_CodiFifuMsk
  loc_B8E592: FStAdFunc var_88
  loc_B8E595: FLdPr var_88
  loc_B8E598: LateIdLdVar var_CC DispID_22 0
  loc_B8E59F: CStrVarTmp
  loc_B8E5A0: FStStrNoPop var_98
  loc_B8E5A3: LitStr vbNullString
  loc_B8E5A6: EqStr
  loc_B8E5A8: FFree1Str var_98
  loc_B8E5AB: FFree1Ad var_88
  loc_B8E5AE: FFree1Var var_CC = ""
  loc_B8E5B1: BranchF loc_B8E60E
  loc_B8E5B4: FLdRfVar var_98
  loc_B8E5B7: FLdPr Me
  loc_B8E5BA: MemLdRfVar from_stack_1.global_108
  loc_B8E5BD: NewIfNullPr tblunidadgasto
  loc_B8E5C0: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8E5C5: FLdZeroAd var_98
  loc_B8E5C8: CVarStr var_CC
  loc_B8E5CB: PopAdLdVar
  loc_B8E5CC: FLdPr Me
  loc_B8E5CF: VCallAd Control_ID_CodiFifuMsk
  loc_B8E5D2: FStAdFunc var_88
  loc_B8E5D5: FLdPr var_88
  loc_B8E5D8: LateIdSt
  loc_B8E5DD: FFree1Ad var_88
  loc_B8E5E0: FFree1Var var_CC = ""
  loc_B8E5E3: FLdRfVar var_98
  loc_B8E5E6: FLdPr Me
  loc_B8E5E9: MemLdRfVar from_stack_1.global_108
  loc_B8E5EC: NewIfNullPr tblunidadgasto
  loc_B8E5EF: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8E5F4: ILdRf var_98
  loc_B8E5F7: FLdPr Me
  loc_B8E5FA: VCallAd Control_ID_DetaFifuLbl
  loc_B8E5FD: FStAdFunc var_88
  loc_B8E600: FLdPr var_88
  loc_B8E603: Me.Caption = from_stack_1
  loc_B8E608: FFree1Str var_98
  loc_B8E60B: FFree1Ad var_88
  loc_B8E60E: Branch loc_B8E658
  loc_B8E611: LitStr "La Unidad de Gasto NO EXISTE. Verique..."
  loc_B8E614: FLdPr Me
  loc_B8E617: MemStStrCopy
  loc_B8E61B: FLdPr Me
  loc_B8E61E: VCallAd Control_ID_CodiUngaTxt
  loc_B8E621: FStAdFunc var_BC
  loc_B8E624: FLdPr Me
  loc_B8E627: VCallAd Control_ID_DetaUngaLbl
  loc_B8E62A: FStAdFunc var_A8
  loc_B8E62D: FLdRfVar var_A8
  loc_B8E630: FLdZeroAd var_BC
  loc_B8E633: FStAdFuncNoPop
  loc_B8E636: CastAd
  loc_B8E639: FStAdFunc var_90
  loc_B8E63C: FLdRfVar var_90
  loc_B8E63F: FLdPr Me
  loc_B8E642: MemLdRfVar from_stack_1.global_64
  loc_B8E645: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8E64A: IStI2 Cancel
  loc_B8E64D: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8E658: Branch loc_B8E6D9
  loc_B8E65B: FLdRfVar var_A4
  loc_B8E65E: FLdRfVar var_90
  loc_B8E661: FLdRfVar var_88
  loc_B8E664: ImpAdLdRf MemVar_C3D7D8
  loc_B8E667: NewIfNullPr bscUnidadGasto
  loc_B8E66A: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8E66F: FLdPr var_88
  loc_B8E672: from_stack_1v = clsbase.RsFrmGet()
  loc_B8E677: FLdPr var_90
  loc_B8E67A:  = Me.RecordCount
  loc_B8E67F: ILdRf var_A4
  loc_B8E682: LitI4 1
  loc_B8E687: LtI4
  loc_B8E688: FFreeAd var_88 = ""
  loc_B8E68F: BranchF loc_B8E6D9
  loc_B8E692: LitStr "La Unidad El Proveedor NO EXISTE. Verique..."
  loc_B8E695: FLdPr Me
  loc_B8E698: MemStStrCopy
  loc_B8E69C: FLdPr Me
  loc_B8E69F: VCallAd Control_ID_CodiUngaTxt
  loc_B8E6A2: FStAdFunc var_BC
  loc_B8E6A5: FLdPr Me
  loc_B8E6A8: VCallAd Control_ID_DetaUngaLbl
  loc_B8E6AB: FStAdFunc var_A8
  loc_B8E6AE: FLdRfVar var_A8
  loc_B8E6B1: FLdZeroAd var_BC
  loc_B8E6B4: FStAdFuncNoPop
  loc_B8E6B7: CastAd
  loc_B8E6BA: FStAdFunc var_90
  loc_B8E6BD: FLdRfVar var_90
  loc_B8E6C0: FLdPr Me
  loc_B8E6C3: MemLdRfVar from_stack_1.global_64
  loc_B8E6C6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8E6CB: IStI2 Cancel
  loc_B8E6CE: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8E6D9: Branch loc_B8EA28
  loc_B8E6DC: LitI2_Byte 0
  loc_B8E6DE: ImpAdLdRf MemVar_C3D7D8
  loc_B8E6E1: NewIfNullPr bscUnidadGasto
  loc_B8E6E4: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_B8E6E9: LitNothing
  loc_B8E6EB: CastAd
  loc_B8E6EE: FStAdFuncNoPop
  loc_B8E6F1: ImpAdLdRf MemVar_C3D7D8
  loc_B8E6F4: NewIfNullPr bscUnidadGasto
  loc_B8E6F7: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_B8E6FC: FFree1Ad var_88
  loc_B8E6FF: LitVar_Missing var_E0
  loc_B8E702: PopAdLdVar
  loc_B8E703: LitVarI4
  loc_B8E70B: PopAdLdVar
  loc_B8E70C: ImpAdLdRf MemVar_C3D7D8
  loc_B8E70F: NewIfNullPr bscUnidadGasto
  loc_B8E712: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_B8E717: FLdRfVar var_A4
  loc_B8E71A: FLdRfVar var_88
  loc_B8E71D: ImpAdLdRf MemVar_C3D7D8
  loc_B8E720: NewIfNullPr bscUnidadGasto
  loc_B8E723: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8E728: FLdPr var_88
  loc_B8E72B: from_stack_1 = clsbase.RecordCount
  loc_B8E730: ILdRf var_A4
  loc_B8E733: LitI4 0
  loc_B8E738: GtI4
  loc_B8E739: FFree1Ad var_88
  loc_B8E73C: BranchF loc_B8E9E1
  loc_B8E73F: FLdRfVar var_CC
  loc_B8E742: FLdRfVar var_BC
  loc_B8E745: LitVarStr var_B8, "CodiUnga"
  loc_B8E74A: PopAdLdVar
  loc_B8E74B: FLdRfVar var_A8
  loc_B8E74E: FLdRfVar var_90
  loc_B8E751: FLdRfVar var_88
  loc_B8E754: ImpAdLdRf MemVar_C3D7D8
  loc_B8E757: NewIfNullPr bscUnidadGasto
  loc_B8E75A: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8E75F: FLdPr var_88
  loc_B8E762: from_stack_1v = clsbase.RsFrmGet()
  loc_B8E767: FLdPr var_90
  loc_B8E76A:  = Me.Fields
  loc_B8E76F: FLdPr var_A8
  loc_B8E772: from_stack_2 = Me.Item(from_stack_1)
  loc_B8E777: FLdPr var_BC
  loc_B8E77A:  = Me.Value
  loc_B8E77F: FLdPr Me
  loc_B8E782: MemLdRfVar from_stack_1.global_108
  loc_B8E785: NewIfNullRf
  loc_B8E789: FLdRfVar var_CC
  loc_B8E78C: CStrVarTmp
  loc_B8E78D: FStStrNoPop var_9C
  loc_B8E790: ImpAdLdI2 MemVar_C3D064
  loc_B8E793: CStrUI1
  loc_B8E795: FStStrNoPop var_98
  loc_B8E798: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8E79D: FStStrNoPop var_A0
  loc_B8E7A0: FLdPr Me
  loc_B8E7A3: MemStStrCopy
  loc_B8E7A7: FFreeStr var_98 = "": var_9C = ""
  loc_B8E7B0: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8E7BB: FFree1Var var_CC = ""
  loc_B8E7BE: FLdRfVar var_98
  loc_B8E7C1: FLdPr Me
  loc_B8E7C4: MemLdRfVar from_stack_1.global_108
  loc_B8E7C7: NewIfNullPr tblunidadgasto
  loc_B8E7CA: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8E7CF: ILdRf var_98
  loc_B8E7D2: FLdPr Me
  loc_B8E7D5: VCallAd Control_ID_CodiUngaTxt
  loc_B8E7D8: FStAdFunc var_88
  loc_B8E7DB: FLdPr var_88
  loc_B8E7DE: Me.Text = from_stack_1
  loc_B8E7E3: FFree1Str var_98
  loc_B8E7E6: FFree1Ad var_88
  loc_B8E7E9: FLdRfVar var_98
  loc_B8E7EC: FLdPr Me
  loc_B8E7EF: MemLdRfVar from_stack_1.global_108
  loc_B8E7F2: NewIfNullPr tblunidadgasto
  loc_B8E7F5: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8E7FA: ILdRf var_98
  loc_B8E7FD: FLdPr Me
  loc_B8E800: VCallAd Control_ID_DetaUngaLbl
  loc_B8E803: FStAdFunc var_88
  loc_B8E806: FLdPr var_88
  loc_B8E809: Me.Caption = from_stack_1
  loc_B8E80E: FFree1Str var_98
  loc_B8E811: FFree1Ad var_88
  loc_B8E814: FLdPr Me
  loc_B8E817: VCallAd Control_ID_CodiUngaTxt
  loc_B8E81A: FStAdFunc var_BC
  loc_B8E81D: FLdPr Me
  loc_B8E820: VCallAd Control_ID_DetaUngaLbl
  loc_B8E823: FStAdFunc var_A8
  loc_B8E826: FLdRfVar var_A8
  loc_B8E829: FLdZeroAd var_BC
  loc_B8E82C: FStAdFuncNoPop
  loc_B8E82F: CastAd
  loc_B8E832: FStAdFunc var_90
  loc_B8E835: FLdRfVar var_90
  loc_B8E838: FLdPr Me
  loc_B8E83B: MemLdRfVar from_stack_1.global_64
  loc_B8E83E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8E843: IStI2 Cancel
  loc_B8E846: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8E851: ILdI2 Cancel
  loc_B8E854: NotI4
  loc_B8E855: BranchF loc_B8E9DE
  loc_B8E858: FLdPr Me
  loc_B8E85B: VCallAd Control_ID_CodiOrgaMsk
  loc_B8E85E: FStAdFunc var_88
  loc_B8E861: FLdPr var_88
  loc_B8E864: LateIdLdVar var_CC DispID_22 0
  loc_B8E86B: CStrVarTmp
  loc_B8E86C: FStStrNoPop var_98
  loc_B8E86F: LitStr vbNullString
  loc_B8E872: EqStr
  loc_B8E874: FFree1Str var_98
  loc_B8E877: FFree1Ad var_88
  loc_B8E87A: FFree1Var var_CC = ""
  loc_B8E87D: BranchF loc_B8E8DA
  loc_B8E880: FLdRfVar var_98
  loc_B8E883: FLdPr Me
  loc_B8E886: MemLdRfVar from_stack_1.global_108
  loc_B8E889: NewIfNullPr tblunidadgasto
  loc_B8E88C: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8E891: FLdZeroAd var_98
  loc_B8E894: CVarStr var_CC
  loc_B8E897: PopAdLdVar
  loc_B8E898: FLdPr Me
  loc_B8E89B: VCallAd Control_ID_CodiOrgaMsk
  loc_B8E89E: FStAdFunc var_88
  loc_B8E8A1: FLdPr var_88
  loc_B8E8A4: LateIdSt
  loc_B8E8A9: FFree1Ad var_88
  loc_B8E8AC: FFree1Var var_CC = ""
  loc_B8E8AF: FLdRfVar var_98
  loc_B8E8B2: FLdPr Me
  loc_B8E8B5: MemLdRfVar from_stack_1.global_108
  loc_B8E8B8: NewIfNullPr tblunidadgasto
  loc_B8E8BB: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8E8C0: ILdRf var_98
  loc_B8E8C3: FLdPr Me
  loc_B8E8C6: VCallAd Control_ID_DetaOrgaLbl
  loc_B8E8C9: FStAdFunc var_88
  loc_B8E8CC: FLdPr var_88
  loc_B8E8CF: Me.Caption = from_stack_1
  loc_B8E8D4: FFree1Str var_98
  loc_B8E8D7: FFree1Ad var_88
  loc_B8E8DA: FLdPr Me
  loc_B8E8DD: VCallAd Control_ID_CodiPartMsk
  loc_B8E8E0: FStAdFunc var_88
  loc_B8E8E3: FLdPr var_88
  loc_B8E8E6: LateIdLdVar var_CC DispID_22 0
  loc_B8E8ED: CStrVarTmp
  loc_B8E8EE: FStStrNoPop var_98
  loc_B8E8F1: LitStr vbNullString
  loc_B8E8F4: EqStr
  loc_B8E8F6: FFree1Str var_98
  loc_B8E8F9: FFree1Ad var_88
  loc_B8E8FC: FFree1Var var_CC = ""
  loc_B8E8FF: BranchF loc_B8E95C
  loc_B8E902: FLdRfVar var_98
  loc_B8E905: FLdPr Me
  loc_B8E908: MemLdRfVar from_stack_1.global_108
  loc_B8E90B: NewIfNullPr tblunidadgasto
  loc_B8E90E: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8E913: FLdZeroAd var_98
  loc_B8E916: CVarStr var_CC
  loc_B8E919: PopAdLdVar
  loc_B8E91A: FLdPr Me
  loc_B8E91D: VCallAd Control_ID_CodiPartMsk
  loc_B8E920: FStAdFunc var_88
  loc_B8E923: FLdPr var_88
  loc_B8E926: LateIdSt
  loc_B8E92B: FFree1Ad var_88
  loc_B8E92E: FFree1Var var_CC = ""
  loc_B8E931: FLdRfVar var_98
  loc_B8E934: FLdPr Me
  loc_B8E937: MemLdRfVar from_stack_1.global_108
  loc_B8E93A: NewIfNullPr tblunidadgasto
  loc_B8E93D: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8E942: ILdRf var_98
  loc_B8E945: FLdPr Me
  loc_B8E948: VCallAd Control_ID_DetaPartLbl
  loc_B8E94B: FStAdFunc var_88
  loc_B8E94E: FLdPr var_88
  loc_B8E951: Me.Caption = from_stack_1
  loc_B8E956: FFree1Str var_98
  loc_B8E959: FFree1Ad var_88
  loc_B8E95C: FLdPr Me
  loc_B8E95F: VCallAd Control_ID_CodiFifuMsk
  loc_B8E962: FStAdFunc var_88
  loc_B8E965: FLdPr var_88
  loc_B8E968: LateIdLdVar var_CC DispID_22 0
  loc_B8E96F: CStrVarTmp
  loc_B8E970: FStStrNoPop var_98
  loc_B8E973: LitStr vbNullString
  loc_B8E976: EqStr
  loc_B8E978: FFree1Str var_98
  loc_B8E97B: FFree1Ad var_88
  loc_B8E97E: FFree1Var var_CC = ""
  loc_B8E981: BranchF loc_B8E9DE
  loc_B8E984: FLdRfVar var_98
  loc_B8E987: FLdPr Me
  loc_B8E98A: MemLdRfVar from_stack_1.global_108
  loc_B8E98D: NewIfNullPr tblunidadgasto
  loc_B8E990: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8E995: FLdZeroAd var_98
  loc_B8E998: CVarStr var_CC
  loc_B8E99B: PopAdLdVar
  loc_B8E99C: FLdPr Me
  loc_B8E99F: VCallAd Control_ID_CodiFifuMsk
  loc_B8E9A2: FStAdFunc var_88
  loc_B8E9A5: FLdPr var_88
  loc_B8E9A8: LateIdSt
  loc_B8E9AD: FFree1Ad var_88
  loc_B8E9B0: FFree1Var var_CC = ""
  loc_B8E9B3: FLdRfVar var_98
  loc_B8E9B6: FLdPr Me
  loc_B8E9B9: MemLdRfVar from_stack_1.global_108
  loc_B8E9BC: NewIfNullPr tblunidadgasto
  loc_B8E9BF: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8E9C4: ILdRf var_98
  loc_B8E9C7: FLdPr Me
  loc_B8E9CA: VCallAd Control_ID_DetaFifuLbl
  loc_B8E9CD: FStAdFunc var_88
  loc_B8E9D0: FLdPr var_88
  loc_B8E9D3: Me.Caption = from_stack_1
  loc_B8E9D8: FFree1Str var_98
  loc_B8E9DB: FFree1Ad var_88
  loc_B8E9DE: Branch loc_B8EA28
  loc_B8E9E1: LitStr "La Unidad de Gasto NO EXISTE. Verifique..."
  loc_B8E9E4: FLdPr Me
  loc_B8E9E7: MemStStrCopy
  loc_B8E9EB: FLdPr Me
  loc_B8E9EE: VCallAd Control_ID_CodiUngaTxt
  loc_B8E9F1: FStAdFunc var_BC
  loc_B8E9F4: FLdPr Me
  loc_B8E9F7: VCallAd Control_ID_DetaUngaLbl
  loc_B8E9FA: FStAdFunc var_A8
  loc_B8E9FD: FLdRfVar var_A8
  loc_B8EA00: FLdZeroAd var_BC
  loc_B8EA03: FStAdFuncNoPop
  loc_B8EA06: CastAd
  loc_B8EA09: FStAdFunc var_90
  loc_B8EA0C: FLdRfVar var_90
  loc_B8EA0F: FLdPr Me
  loc_B8EA12: MemLdRfVar from_stack_1.global_64
  loc_B8EA15: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8EA1A: IStI2 Cancel
  loc_B8EA1D: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8EA28: ExitProcHresult
  loc_B8EA29: UMiI4
  loc_B8EA2A: FLdPrThis
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BD9104
  'Data Table: 4FA290
  loc_BD7AD0: ILdRf Button
  loc_BD7AD3: FStAd var_88 
  loc_BD7AD7: FLdRfVar var_8C
  loc_BD7ADA: FLdPr var_88
  loc_BD7ADD:  = Me.Key
  loc_BD7AE2: FLdZeroAd var_8C
  loc_BD7AE5: FStStr var_90
  loc_BD7AE8: ILdRf var_90
  loc_BD7AEB: LitStr "btnCrear"
  loc_BD7AEE: EqStr
  loc_BD7AF0: BranchF loc_BD827B
  loc_BD7AF3: FLdRfVar var_94
  loc_BD7AF6: FLdPr Me
  loc_BD7AF9: MemLdRfVar from_stack_1.global_52
  loc_BD7AFC: NewIfNullPr clsimputacion
  loc_BD7AFF: from_stack_1 = clsimputacion.RecordCount
  loc_BD7B04: ILdRf var_94
  loc_BD7B07: LitI4 0
  loc_BD7B0C: GtI4
  loc_BD7B0D: BranchF loc_BD8278
  loc_BD7B10: LitI2_Byte 1
  loc_BD7B12: FLdPr Me
  loc_BD7B15: MemStUI1
  loc_BD7B19: ILdRf Me
  loc_BD7B1C: CastAd
  loc_BD7B1F: FStAdFunc var_98
  loc_BD7B22: FLdRfVar var_98
  loc_BD7B25: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BD7B2A: FFree1Ad var_98
  loc_BD7B2D: LitI4 0
  loc_BD7B32: LitI4 0
  loc_BD7B37: FLdRfVar var_9C
  loc_BD7B3A: Redim
  loc_BD7B44: FLdPr Me
  loc_BD7B47: VCallAd Control_ID_dgdABMS
  loc_BD7B4A: CVarAd
  loc_BD7B4E: ParmAry1St
  loc_BD7B54: FLdRfVar var_9C
  loc_BD7B57: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BD7B5C: FLdRfVar var_9C
  loc_BD7B5F: Erase
  loc_BD7B60: ILdRf Me
  loc_BD7B63: CastAd
  loc_BD7B66: FStAdFunc var_98
  loc_BD7B69: FLdRfVar var_98
  loc_BD7B6C: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BD7B71: FFree1Ad var_98
  loc_BD7B74: FLdPr Me
  loc_BD7B77: MemLdStr global_76
  loc_BD7B7A: LitStr vbNullString
  loc_BD7B7D: NeStr
  loc_BD7B7F: FLdRfVar var_94
  loc_BD7B82: FLdPr Me
  loc_BD7B85: MemLdRfVar from_stack_1.global_52
  loc_BD7B88: NewIfNullPr clsimputacion
  loc_BD7B8B: from_stack_1 = clsimputacion.RecordCount
  loc_BD7B90: ILdRf var_94
  loc_BD7B93: LitI4 0
  loc_BD7B98: GtI4
  loc_BD7B99: AndI4
  loc_BD7B9A: BranchF loc_BD7EE2
  loc_BD7B9D: FLdRfVar var_AC
  loc_BD7BA0: FLdRfVar var_C4
  loc_BD7BA3: LitVarStr var_C0, "CodiPart"
  loc_BD7BA8: PopAdLdVar
  loc_BD7BA9: FLdRfVar var_B0
  loc_BD7BAC: FLdRfVar var_98
  loc_BD7BAF: FLdPr Me
  loc_BD7BB2: MemLdRfVar from_stack_1.global_52
  loc_BD7BB5: NewIfNullPr clsimputacion
  loc_BD7BB8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7BBD: FLdPr var_98
  loc_BD7BC0:  = Me.Fields
  loc_BD7BC5: FLdPr var_B0
  loc_BD7BC8: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7BCD: FLdPr var_C4
  loc_BD7BD0:  = Me.Value
  loc_BD7BD5: FLdRfVar var_AC
  loc_BD7BD8: CStrVarTmp
  loc_BD7BD9: CVarStr var_D4
  loc_BD7BDC: PopAdLdVar
  loc_BD7BDD: FLdPr Me
  loc_BD7BE0: VCallAd Control_ID_CodiPartMsk
  loc_BD7BE3: FStAdFunc var_E8
  loc_BD7BE6: FLdPr var_E8
  loc_BD7BE9: LateIdSt
  loc_BD7BEE: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_BD7BF9: FFreeVar var_AC = ""
  loc_BD7C00: FLdRfVar var_AC
  loc_BD7C03: FLdRfVar var_C4
  loc_BD7C06: LitVarStr var_C0, "CodiPart"
  loc_BD7C0B: PopAdLdVar
  loc_BD7C0C: FLdRfVar var_B0
  loc_BD7C0F: FLdRfVar var_98
  loc_BD7C12: FLdPr Me
  loc_BD7C15: MemLdRfVar from_stack_1.global_52
  loc_BD7C18: NewIfNullPr clsimputacion
  loc_BD7C1B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7C20: FLdPr var_98
  loc_BD7C23:  = Me.Fields
  loc_BD7C28: FLdPr var_B0
  loc_BD7C2B: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7C30: FLdPr var_C4
  loc_BD7C33:  = Me.Value
  loc_BD7C38: FLdRfVar var_8C
  loc_BD7C3B: FLdPr Me
  loc_BD7C3E:  = Me.Name
  loc_BD7C43: FLdPr Me
  loc_BD7C46: MemLdRfVar from_stack_1.global_84
  loc_BD7C49: NewIfNullRf
  loc_BD7C4D: ILdRf var_8C
  loc_BD7C50: LitI2_Byte &HFF
  loc_BD7C52: FLdRfVar var_AC
  loc_BD7C55: CStrVarTmp
  loc_BD7C56: FStStrNoPop var_EC
  loc_BD7C59: ImpAdLdI2 MemVar_C3D064
  loc_BD7C5C: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_BD7C61: FStStrNoPop var_F0
  loc_BD7C64: FLdPr Me
  loc_BD7C67: MemStStrCopy
  loc_BD7C6B: FFreeStr var_EC = "": var_8C = ""
  loc_BD7C74: FFreeAd var_98 = "": var_B0 = ""
  loc_BD7C7D: FFree1Var var_AC = ""
  loc_BD7C80: FLdRfVar var_AC
  loc_BD7C83: FLdRfVar var_C4
  loc_BD7C86: LitVarStr var_C0, "CodiOrga"
  loc_BD7C8B: PopAdLdVar
  loc_BD7C8C: FLdRfVar var_B0
  loc_BD7C8F: FLdRfVar var_98
  loc_BD7C92: FLdPr Me
  loc_BD7C95: MemLdRfVar from_stack_1.global_52
  loc_BD7C98: NewIfNullPr clsimputacion
  loc_BD7C9B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7CA0: FLdPr var_98
  loc_BD7CA3:  = Me.Fields
  loc_BD7CA8: FLdPr var_B0
  loc_BD7CAB: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7CB0: FLdPr var_C4
  loc_BD7CB3:  = Me.Value
  loc_BD7CB8: FLdRfVar var_AC
  loc_BD7CBB: CStrVarTmp
  loc_BD7CBC: CVarStr var_D4
  loc_BD7CBF: PopAdLdVar
  loc_BD7CC0: FLdPr Me
  loc_BD7CC3: VCallAd Control_ID_CodiOrgaMsk
  loc_BD7CC6: FStAdFunc var_E8
  loc_BD7CC9: FLdPr var_E8
  loc_BD7CCC: LateIdSt
  loc_BD7CD1: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_BD7CDC: FFreeVar var_AC = ""
  loc_BD7CE3: FLdRfVar var_AC
  loc_BD7CE6: FLdRfVar var_C4
  loc_BD7CE9: LitVarStr var_C0, "CodiOrga"
  loc_BD7CEE: PopAdLdVar
  loc_BD7CEF: FLdRfVar var_B0
  loc_BD7CF2: FLdRfVar var_98
  loc_BD7CF5: FLdPr Me
  loc_BD7CF8: MemLdRfVar from_stack_1.global_52
  loc_BD7CFB: NewIfNullPr clsimputacion
  loc_BD7CFE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7D03: FLdPr var_98
  loc_BD7D06:  = Me.Fields
  loc_BD7D0B: FLdPr var_B0
  loc_BD7D0E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7D13: FLdPr var_C4
  loc_BD7D16:  = Me.Value
  loc_BD7D1B: FLdPr Me
  loc_BD7D1E: MemLdRfVar from_stack_1.global_88
  loc_BD7D21: NewIfNullRf
  loc_BD7D25: LitI2_Byte &HFF
  loc_BD7D27: CStrBool
  loc_BD7D29: FStStrNoPop var_EC
  loc_BD7D2C: FLdRfVar var_AC
  loc_BD7D2F: CStrVarTmp
  loc_BD7D30: FStStrNoPop var_8C
  loc_BD7D33: ImpAdLdI2 MemVar_C3D064
  loc_BD7D36: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_BD7D3B: FStStrNoPop var_F0
  loc_BD7D3E: FLdPr Me
  loc_BD7D41: MemStStrCopy
  loc_BD7D45: FFreeStr var_8C = "": var_EC = ""
  loc_BD7D4E: FFreeAd var_98 = "": var_B0 = ""
  loc_BD7D57: FFree1Var var_AC = ""
  loc_BD7D5A: FLdRfVar var_AC
  loc_BD7D5D: FLdRfVar var_C4
  loc_BD7D60: LitVarStr var_C0, "CodiFifu"
  loc_BD7D65: PopAdLdVar
  loc_BD7D66: FLdRfVar var_B0
  loc_BD7D69: FLdRfVar var_98
  loc_BD7D6C: FLdPr Me
  loc_BD7D6F: MemLdRfVar from_stack_1.global_52
  loc_BD7D72: NewIfNullPr clsimputacion
  loc_BD7D75: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7D7A: FLdPr var_98
  loc_BD7D7D:  = Me.Fields
  loc_BD7D82: FLdPr var_B0
  loc_BD7D85: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7D8A: FLdPr var_C4
  loc_BD7D8D:  = Me.Value
  loc_BD7D92: FLdRfVar var_AC
  loc_BD7D95: CStrVarTmp
  loc_BD7D96: CVarStr var_D4
  loc_BD7D99: PopAdLdVar
  loc_BD7D9A: FLdPr Me
  loc_BD7D9D: VCallAd Control_ID_CodiFifuMsk
  loc_BD7DA0: FStAdFunc var_E8
  loc_BD7DA3: FLdPr var_E8
  loc_BD7DA6: LateIdSt
  loc_BD7DAB: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_BD7DB6: FFreeVar var_AC = ""
  loc_BD7DBD: FLdRfVar var_AC
  loc_BD7DC0: FLdRfVar var_C4
  loc_BD7DC3: LitVarStr var_C0, "ExorImpu"
  loc_BD7DC8: PopAdLdVar
  loc_BD7DC9: FLdRfVar var_B0
  loc_BD7DCC: FLdRfVar var_98
  loc_BD7DCF: FLdPr Me
  loc_BD7DD2: MemLdRfVar from_stack_1.global_52
  loc_BD7DD5: NewIfNullPr clsimputacion
  loc_BD7DD8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7DDD: FLdPr var_98
  loc_BD7DE0:  = Me.Fields
  loc_BD7DE5: FLdPr var_B0
  loc_BD7DE8: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7DED: FLdPr var_C4
  loc_BD7DF0:  = Me.Value
  loc_BD7DF5: FLdRfVar var_AC
  loc_BD7DF8: CStrVarTmp
  loc_BD7DF9: CVarStr var_D4
  loc_BD7DFC: PopAdLdVar
  loc_BD7DFD: FLdPr Me
  loc_BD7E00: VCallAd Control_ID_ExorImpuMsk
  loc_BD7E03: FStAdFunc var_E8
  loc_BD7E06: FLdPr var_E8
  loc_BD7E09: LateIdSt
  loc_BD7E0E: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_BD7E19: FFreeVar var_AC = ""
  loc_BD7E20: FLdRfVar var_AC
  loc_BD7E23: FLdRfVar var_C4
  loc_BD7E26: LitVarStr var_C0, "ExpeImpu"
  loc_BD7E2B: PopAdLdVar
  loc_BD7E2C: FLdRfVar var_B0
  loc_BD7E2F: FLdRfVar var_98
  loc_BD7E32: FLdPr Me
  loc_BD7E35: MemLdRfVar from_stack_1.global_52
  loc_BD7E38: NewIfNullPr clsimputacion
  loc_BD7E3B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7E40: FLdPr var_98
  loc_BD7E43:  = Me.Fields
  loc_BD7E48: FLdPr var_B0
  loc_BD7E4B: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7E50: FLdPr var_C4
  loc_BD7E53:  = Me.Value
  loc_BD7E58: FLdRfVar var_AC
  loc_BD7E5B: CStrVarTmp
  loc_BD7E5C: FStStrNoPop var_8C
  loc_BD7E5F: FLdPr Me
  loc_BD7E62: VCallAd Control_ID_ExpeImpuTxt
  loc_BD7E65: FStAdFunc var_E8
  loc_BD7E68: FLdPr var_E8
  loc_BD7E6B: Me.Text = from_stack_1
  loc_BD7E70: FFree1Str var_8C
  loc_BD7E73: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_BD7E7E: FFree1Var var_AC = ""
  loc_BD7E81: FLdRfVar var_AC
  loc_BD7E84: FLdRfVar var_C4
  loc_BD7E87: LitVarStr var_C0, "DetaImpu"
  loc_BD7E8C: PopAdLdVar
  loc_BD7E8D: FLdRfVar var_B0
  loc_BD7E90: FLdRfVar var_98
  loc_BD7E93: FLdPr Me
  loc_BD7E96: MemLdRfVar from_stack_1.global_52
  loc_BD7E99: NewIfNullPr clsimputacion
  loc_BD7E9C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7EA1: FLdPr var_98
  loc_BD7EA4:  = Me.Fields
  loc_BD7EA9: FLdPr var_B0
  loc_BD7EAC: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7EB1: FLdPr var_C4
  loc_BD7EB4:  = Me.Value
  loc_BD7EB9: FLdRfVar var_AC
  loc_BD7EBC: CStrVarTmp
  loc_BD7EBD: FStStrNoPop var_8C
  loc_BD7EC0: FLdPr Me
  loc_BD7EC3: VCallAd Control_ID_DetaImpuTxt
  loc_BD7EC6: FStAdFunc var_E8
  loc_BD7EC9: FLdPr var_E8
  loc_BD7ECC: Me.Text = from_stack_1
  loc_BD7ED1: FFree1Str var_8C
  loc_BD7ED4: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_BD7EDF: FFree1Var var_AC = ""
  loc_BD7EE2: FLdRfVar var_AC
  loc_BD7EE5: FLdRfVar var_C4
  loc_BD7EE8: LitVarStr var_C0, "ExorImpu"
  loc_BD7EED: PopAdLdVar
  loc_BD7EEE: FLdRfVar var_B0
  loc_BD7EF1: FLdRfVar var_98
  loc_BD7EF4: FLdPr Me
  loc_BD7EF7: MemLdRfVar from_stack_1.global_52
  loc_BD7EFA: NewIfNullPr clsimputacion
  loc_BD7EFD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7F02: FLdPr var_98
  loc_BD7F05:  = Me.Fields
  loc_BD7F0A: FLdPr var_B0
  loc_BD7F0D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7F12: FLdPr var_C4
  loc_BD7F15:  = Me.Value
  loc_BD7F1A: FLdRfVar var_D4
  loc_BD7F1D: FLdRfVar var_F8
  loc_BD7F20: LitVarStr var_E4, "CodiNope"
  loc_BD7F25: PopAdLdVar
  loc_BD7F26: FLdRfVar var_F4
  loc_BD7F29: FLdRfVar var_E8
  loc_BD7F2C: FLdPr Me
  loc_BD7F2F: MemLdRfVar from_stack_1.global_52
  loc_BD7F32: NewIfNullPr clsimputacion
  loc_BD7F35: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7F3A: FLdPr var_E8
  loc_BD7F3D:  = Me.Fields
  loc_BD7F42: FLdPr var_F4
  loc_BD7F45: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7F4A: FLdPr var_F8
  loc_BD7F4D:  = Me.Value
  loc_BD7F52: FLdRfVar var_1B0
  loc_BD7F55: FLdRfVar var_114
  loc_BD7F58: LitVarStr var_110, "Item"
  loc_BD7F5D: PopAdLdVar
  loc_BD7F5E: FLdRfVar var_100
  loc_BD7F61: FLdRfVar var_FC
  loc_BD7F64: FLdPr Me
  loc_BD7F67: MemLdRfVar from_stack_1.global_52
  loc_BD7F6A: NewIfNullPr clsimputacion
  loc_BD7F6D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7F72: FLdPr var_FC
  loc_BD7F75:  = Me.Fields
  loc_BD7F7A: FLdPr var_100
  loc_BD7F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7F82: FLdPr var_114
  loc_BD7F85:  = Me.Value
  loc_BD7F8A: FLdRfVar var_1C0
  loc_BD7F8D: FLdRfVar var_130
  loc_BD7F90: LitVarStr var_12C, "Altern"
  loc_BD7F95: PopAdLdVar
  loc_BD7F96: FLdRfVar var_11C
  loc_BD7F99: FLdRfVar var_118
  loc_BD7F9C: FLdPr Me
  loc_BD7F9F: MemLdRfVar from_stack_1.global_52
  loc_BD7FA2: NewIfNullPr clsimputacion
  loc_BD7FA5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7FAA: FLdPr var_118
  loc_BD7FAD:  = Me.Fields
  loc_BD7FB2: FLdPr var_11C
  loc_BD7FB5: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7FBA: FLdPr var_130
  loc_BD7FBD:  = Me.Value
  loc_BD7FC2: FLdRfVar var_1D0
  loc_BD7FC5: FLdRfVar var_14C
  loc_BD7FC8: LitVarStr var_148, "CodiOrco"
  loc_BD7FCD: PopAdLdVar
  loc_BD7FCE: FLdRfVar var_138
  loc_BD7FD1: FLdRfVar var_134
  loc_BD7FD4: FLdPr Me
  loc_BD7FD7: MemLdRfVar from_stack_1.global_52
  loc_BD7FDA: NewIfNullPr clsimputacion
  loc_BD7FDD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD7FE2: FLdPr var_134
  loc_BD7FE5:  = Me.Fields
  loc_BD7FEA: FLdPr var_138
  loc_BD7FED: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7FF2: FLdPr var_14C
  loc_BD7FF5:  = Me.Value
  loc_BD7FFA: FLdRfVar var_1E0
  loc_BD7FFD: FLdRfVar var_168
  loc_BD8000: LitVarStr var_164, "CodiRece"
  loc_BD8005: PopAdLdVar
  loc_BD8006: FLdRfVar var_154
  loc_BD8009: FLdRfVar var_150
  loc_BD800C: FLdPr Me
  loc_BD800F: MemLdRfVar from_stack_1.global_52
  loc_BD8012: NewIfNullPr clsimputacion
  loc_BD8015: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD801A: FLdPr var_150
  loc_BD801D:  = Me.Fields
  loc_BD8022: FLdPr var_154
  loc_BD8025: from_stack_2 = Me.Item(from_stack_1)
  loc_BD802A: FLdPr var_168
  loc_BD802D:  = Me.Value
  loc_BD8032: FLdRfVar var_1F0
  loc_BD8035: FLdRfVar var_184
  loc_BD8038: LitVarStr var_180, "CodiPart"
  loc_BD803D: PopAdLdVar
  loc_BD803E: FLdRfVar var_170
  loc_BD8041: FLdRfVar var_16C
  loc_BD8044: FLdPr Me
  loc_BD8047: MemLdRfVar from_stack_1.global_52
  loc_BD804A: NewIfNullPr clsimputacion
  loc_BD804D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8052: FLdPr var_16C
  loc_BD8055:  = Me.Fields
  loc_BD805A: FLdPr var_170
  loc_BD805D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8062: FLdPr var_184
  loc_BD8065:  = Me.Value
  loc_BD806A: FLdRfVar var_200
  loc_BD806D: FLdRfVar var_1A0
  loc_BD8070: LitVarStr var_19C, "CodiOrga"
  loc_BD8075: PopAdLdVar
  loc_BD8076: FLdRfVar var_18C
  loc_BD8079: FLdRfVar var_188
  loc_BD807C: FLdPr Me
  loc_BD807F: MemLdRfVar from_stack_1.global_52
  loc_BD8082: NewIfNullPr clsimputacion
  loc_BD8085: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD808A: FLdPr var_188
  loc_BD808D:  = Me.Fields
  loc_BD8092: FLdPr var_18C
  loc_BD8095: from_stack_2 = Me.Item(from_stack_1)
  loc_BD809A: FLdPr var_1A0
  loc_BD809D:  = Me.Value
  loc_BD80A2: FLdRfVar var_204
  loc_BD80A5: FLdRfVar var_200
  loc_BD80A8: CStrVarTmp
  loc_BD80A9: FStStrNoPop var_F0
  loc_BD80AC: FLdRfVar var_1F0
  loc_BD80AF: CStrVarTmp
  loc_BD80B0: FStStrNoPop var_EC
  loc_BD80B3: FLdRfVar var_1E0
  loc_BD80B6: CI2Var
  loc_BD80B7: FLdRfVar var_1D0
  loc_BD80BA: CI2Var
  loc_BD80BB: FLdRfVar var_1C0
  loc_BD80BE: CI2Var
  loc_BD80BF: FLdRfVar var_1B0
  loc_BD80C2: CI2Var
  loc_BD80C3: FLdRfVar var_D4
  loc_BD80C6: CI4Var
  loc_BD80C8: FLdRfVar var_AC
  loc_BD80CB: CStrVarTmp
  loc_BD80CC: FStStrNoPop var_8C
  loc_BD80CF: LitI2_Byte &H32
  loc_BD80D1: ImpAdLdI2 MemVar_C3D064
  loc_BD80D4: FLdPr Me
  loc_BD80D7: MemLdRfVar from_stack_1.global_52
  loc_BD80DA: NewIfNullPr clsimputacion
  loc_BD80DD: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_BD80E2: FLdZeroAd var_204
  loc_BD80E5: CVarStr var_214
  loc_BD80E8: PopAdLdVar
  loc_BD80E9: FLdPr Me
  loc_BD80EC: VCallAd Control_ID_FechImpuMsk
  loc_BD80EF: FStAdFunc var_228
  loc_BD80F2: FLdPr var_228
  loc_BD80F5: LateIdSt
  loc_BD80FA: FFreeStr var_8C = "": var_EC = ""
  loc_BD8103: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_F4 = "": var_FC = "": var_100 = "": var_118 = "": var_11C = "": var_134 = "": var_138 = "": var_150 = "": var_154 = "": var_16C = "": var_170 = "": var_188 = "": var_18C = "": var_C4 = "": var_F8 = "": var_114 = "": var_130 = "": var_14C = "": var_168 = "": var_184 = "": var_1A0 = ""
  loc_BD8138: FFreeVar var_AC = "": var_D4 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_200 = ""
  loc_BD814D: FLdPr Me
  loc_BD8150: VCallAd Control_ID_FechImpuMsk
  loc_BD8153: FStAdFunc var_98
  loc_BD8156: FLdPr var_98
  loc_BD8159: LateIdLdVar var_AC DispID_11 -32767
  loc_BD8160: CStrVarTmp
  loc_BD8161: CVarStr var_D4
  loc_BD8164: PopAdLdVar
  loc_BD8165: FLdPr Me
  loc_BD8168: VCallAd Control_ID_FechImpuMsk
  loc_BD816B: FStAdFunc var_B0
  loc_BD816E: FLdPr var_B0
  loc_BD8171: LateIdSt
  loc_BD8176: FFreeAd var_98 = ""
  loc_BD817D: FFreeVar var_AC = ""
  loc_BD8184: FLdRfVar var_AC
  loc_BD8187: FLdRfVar var_C4
  loc_BD818A: LitVarStr var_C0, "SaldImpu"
  loc_BD818F: PopAdLdVar
  loc_BD8190: FLdRfVar var_B0
  loc_BD8193: FLdRfVar var_98
  loc_BD8196: FLdPr Me
  loc_BD8199: MemLdRfVar from_stack_1.global_52
  loc_BD819C: NewIfNullPr clsimputacion
  loc_BD819F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD81A4: FLdPr var_98
  loc_BD81A7:  = Me.Fields
  loc_BD81AC: FLdPr var_B0
  loc_BD81AF: from_stack_2 = Me.Item(from_stack_1)
  loc_BD81B4: FLdPr var_C4
  loc_BD81B7:  = Me.Value
  loc_BD81BC: FLdRfVar var_AC
  loc_BD81BF: CStrVarTmp
  loc_BD81C0: FStStrNoPop var_8C
  loc_BD81C3: FLdPr Me
  loc_BD81C6: VCallAd Control_ID_ImpoImpuTxt
  loc_BD81C9: FStAdFunc var_E8
  loc_BD81CC: FLdPr var_E8
  loc_BD81CF: Me.Text = from_stack_1
  loc_BD81D4: FFree1Str var_8C
  loc_BD81D7: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_BD81E2: FFree1Var var_AC = ""
  loc_BD81E5: LitI4 0
  loc_BD81EA: LitI4 6
  loc_BD81EF: FLdRfVar var_9C
  loc_BD81F2: Redim
  loc_BD81FC: FLdPr Me
  loc_BD81FF: VCallAd Control_ID_CodiPartMsk
  loc_BD8202: CVarAd
  loc_BD8206: ParmAry1St
  loc_BD820C: FLdPr Me
  loc_BD820F: VCallAd Control_ID_CodiOrgaMsk
  loc_BD8212: CVarAd
  loc_BD8216: ParmAry1St
  loc_BD821C: FLdPr Me
  loc_BD821F: VCallAd Control_ID_CodiFifuMsk
  loc_BD8222: CVarAd
  loc_BD8226: ParmAry1St
  loc_BD822C: FLdPr Me
  loc_BD822F: VCallAd Control_ID_CodiUngaTxt
  loc_BD8232: CVarAd
  loc_BD8236: ParmAry1St
  loc_BD823C: FLdPr Me
  loc_BD823F: VCallAd Control_ID_DetaImpuTxt
  loc_BD8242: CVarAd
  loc_BD8246: ParmAry1St
  loc_BD824C: FLdPr Me
  loc_BD824F: VCallAd Control_ID_FechImpuMsk
  loc_BD8252: CVarAd
  loc_BD8256: ParmAry1St
  loc_BD825C: FLdPr Me
  loc_BD825F: VCallAd Control_ID_ImpoImpuTxt
  loc_BD8262: CVarAd
  loc_BD8266: ParmAry1St
  loc_BD826C: FLdRfVar var_9C
  loc_BD826F: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BD8274: FLdRfVar var_9C
  loc_BD8277: Erase
  loc_BD8278: Branch loc_BD9101
  loc_BD827B: ILdRf var_90
  loc_BD827E: LitStr "btnModificar"
  loc_BD8281: EqStr
  loc_BD8283: BranchF loc_BD8289
  loc_BD8286: Branch loc_BD9101
  loc_BD8289: ILdRf var_90
  loc_BD828C: LitStr "btnEliminar"
  loc_BD828F: EqStr
  loc_BD8291: BranchF loc_BD860C
  loc_BD8294: FLdRfVar var_94
  loc_BD8297: FLdPr Me
  loc_BD829A: MemLdRfVar from_stack_1.global_52
  loc_BD829D: NewIfNullPr clsimputacion
  loc_BD82A0: from_stack_1 = clsimputacion.RecordCount
  loc_BD82A5: ILdRf var_94
  loc_BD82A8: LitI4 0
  loc_BD82AD: GtI4
  loc_BD82AE: BranchF loc_BD8609
  loc_BD82B1: LitI2_Byte 0
  loc_BD82B3: PopTmpLdAd2 var_22C
  loc_BD82B6: LitI2_Byte &HFF
  loc_BD82B8: PopTmpLdAd2 var_22A
  loc_BD82BB: LitStr "¿Desafecta las 5 ETAPAS del gasto?"
  loc_BD82BE: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BD82C3: CI4UI1
  loc_BD82C4: LitI4 6
  loc_BD82C9: EqI4
  loc_BD82CA: BranchF loc_BD8609
  loc_BD82CD: LitI2_Byte 3
  loc_BD82CF: FLdPr Me
  loc_BD82D2: MemStUI1
  loc_BD82D6: ILdRf Me
  loc_BD82D9: CastAd
  loc_BD82DC: FStAdFunc var_98
  loc_BD82DF: FLdRfVar var_98
  loc_BD82E2: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BD82E7: FFree1Ad var_98
  loc_BD82EA: LitI4 0
  loc_BD82EF: LitI4 0
  loc_BD82F4: FLdRfVar var_9C
  loc_BD82F7: Redim
  loc_BD8301: FLdPr Me
  loc_BD8304: VCallAd Control_ID_dgdABMS
  loc_BD8307: CVarAd
  loc_BD830B: ParmAry1St
  loc_BD8311: FLdRfVar var_9C
  loc_BD8314: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BD8319: FLdRfVar var_9C
  loc_BD831C: Erase
  loc_BD831D: ILdRf Me
  loc_BD8320: CastAd
  loc_BD8323: FStAdFunc var_98
  loc_BD8326: FLdRfVar var_98
  loc_BD8329: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BD832E: FFree1Ad var_98
  loc_BD8331: FLdRfVar var_AC
  loc_BD8334: FLdRfVar var_C4
  loc_BD8337: LitVarStr var_C0, "ExorImpu"
  loc_BD833C: PopAdLdVar
  loc_BD833D: FLdRfVar var_B0
  loc_BD8340: FLdRfVar var_98
  loc_BD8343: FLdPr Me
  loc_BD8346: MemLdRfVar from_stack_1.global_52
  loc_BD8349: NewIfNullPr clsimputacion
  loc_BD834C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8351: FLdPr var_98
  loc_BD8354:  = Me.Fields
  loc_BD8359: FLdPr var_B0
  loc_BD835C: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8361: FLdPr var_C4
  loc_BD8364:  = Me.Value
  loc_BD8369: FLdRfVar var_D4
  loc_BD836C: FLdRfVar var_F8
  loc_BD836F: LitVarStr var_E4, "CodiNope"
  loc_BD8374: PopAdLdVar
  loc_BD8375: FLdRfVar var_F4
  loc_BD8378: FLdRfVar var_E8
  loc_BD837B: FLdPr Me
  loc_BD837E: MemLdRfVar from_stack_1.global_52
  loc_BD8381: NewIfNullPr clsimputacion
  loc_BD8384: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8389: FLdPr var_E8
  loc_BD838C:  = Me.Fields
  loc_BD8391: FLdPr var_F4
  loc_BD8394: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8399: FLdPr var_F8
  loc_BD839C:  = Me.Value
  loc_BD83A1: FLdRfVar var_1B0
  loc_BD83A4: FLdRfVar var_114
  loc_BD83A7: LitVarStr var_110, "Item"
  loc_BD83AC: PopAdLdVar
  loc_BD83AD: FLdRfVar var_100
  loc_BD83B0: FLdRfVar var_FC
  loc_BD83B3: FLdPr Me
  loc_BD83B6: MemLdRfVar from_stack_1.global_52
  loc_BD83B9: NewIfNullPr clsimputacion
  loc_BD83BC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD83C1: FLdPr var_FC
  loc_BD83C4:  = Me.Fields
  loc_BD83C9: FLdPr var_100
  loc_BD83CC: from_stack_2 = Me.Item(from_stack_1)
  loc_BD83D1: FLdPr var_114
  loc_BD83D4:  = Me.Value
  loc_BD83D9: FLdRfVar var_1C0
  loc_BD83DC: FLdRfVar var_130
  loc_BD83DF: LitVarStr var_12C, "Altern"
  loc_BD83E4: PopAdLdVar
  loc_BD83E5: FLdRfVar var_11C
  loc_BD83E8: FLdRfVar var_118
  loc_BD83EB: FLdPr Me
  loc_BD83EE: MemLdRfVar from_stack_1.global_52
  loc_BD83F1: NewIfNullPr clsimputacion
  loc_BD83F4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD83F9: FLdPr var_118
  loc_BD83FC:  = Me.Fields
  loc_BD8401: FLdPr var_11C
  loc_BD8404: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8409: FLdPr var_130
  loc_BD840C:  = Me.Value
  loc_BD8411: FLdRfVar var_1D0
  loc_BD8414: FLdRfVar var_14C
  loc_BD8417: LitVarStr var_148, "CodiOrco"
  loc_BD841C: PopAdLdVar
  loc_BD841D: FLdRfVar var_138
  loc_BD8420: FLdRfVar var_134
  loc_BD8423: FLdPr Me
  loc_BD8426: MemLdRfVar from_stack_1.global_52
  loc_BD8429: NewIfNullPr clsimputacion
  loc_BD842C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8431: FLdPr var_134
  loc_BD8434:  = Me.Fields
  loc_BD8439: FLdPr var_138
  loc_BD843C: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8441: FLdPr var_14C
  loc_BD8444:  = Me.Value
  loc_BD8449: FLdRfVar var_1E0
  loc_BD844C: FLdRfVar var_168
  loc_BD844F: LitVarStr var_164, "CodiRece"
  loc_BD8454: PopAdLdVar
  loc_BD8455: FLdRfVar var_154
  loc_BD8458: FLdRfVar var_150
  loc_BD845B: FLdPr Me
  loc_BD845E: MemLdRfVar from_stack_1.global_52
  loc_BD8461: NewIfNullPr clsimputacion
  loc_BD8464: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8469: FLdPr var_150
  loc_BD846C:  = Me.Fields
  loc_BD8471: FLdPr var_154
  loc_BD8474: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8479: FLdPr var_168
  loc_BD847C:  = Me.Value
  loc_BD8481: FLdRfVar var_EC
  loc_BD8484: LitStr vbNullString
  loc_BD8487: LitStr vbNullString
  loc_BD848A: FLdRfVar var_1E0
  loc_BD848D: CI2Var
  loc_BD848E: FLdRfVar var_1D0
  loc_BD8491: CI2Var
  loc_BD8492: FLdRfVar var_1C0
  loc_BD8495: CI2Var
  loc_BD8496: FLdRfVar var_1B0
  loc_BD8499: CI2Var
  loc_BD849A: FLdRfVar var_D4
  loc_BD849D: CI4Var
  loc_BD849F: FLdRfVar var_AC
  loc_BD84A2: CStrVarTmp
  loc_BD84A3: FStStrNoPop var_8C
  loc_BD84A6: LitI2_Byte &H32
  loc_BD84A8: ImpAdLdI2 MemVar_C3D064
  loc_BD84AB: FLdPr Me
  loc_BD84AE: MemLdRfVar from_stack_1.global_52
  loc_BD84B1: NewIfNullPr clsimputacion
  loc_BD84B4: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_BD84B9: FLdZeroAd var_EC
  loc_BD84BC: CVarStr var_1F0
  loc_BD84BF: PopAdLdVar
  loc_BD84C0: FLdPr Me
  loc_BD84C3: VCallAd Control_ID_FechImpuMsk
  loc_BD84C6: FStAdFunc var_16C
  loc_BD84C9: FLdPr var_16C
  loc_BD84CC: LateIdSt
  loc_BD84D1: FFree1Str var_8C
  loc_BD84D4: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_F4 = "": var_FC = "": var_100 = "": var_118 = "": var_11C = "": var_134 = "": var_138 = "": var_150 = "": var_154 = "": var_C4 = "": var_F8 = "": var_114 = "": var_130 = "": var_14C = "": var_168 = ""
  loc_BD84FD: FFreeVar var_AC = "": var_D4 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = ""
  loc_BD850E: FLdPr Me
  loc_BD8511: VCallAd Control_ID_FechImpuMsk
  loc_BD8514: FStAdFunc var_98
  loc_BD8517: FLdPr var_98
  loc_BD851A: LateIdLdVar var_AC DispID_11 -32767
  loc_BD8521: CStrVarTmp
  loc_BD8522: CVarStr var_D4
  loc_BD8525: PopAdLdVar
  loc_BD8526: FLdPr Me
  loc_BD8529: VCallAd Control_ID_FechImpuMsk
  loc_BD852C: FStAdFunc var_B0
  loc_BD852F: FLdPr var_B0
  loc_BD8532: LateIdSt
  loc_BD8537: FFreeAd var_98 = ""
  loc_BD853E: FFreeVar var_AC = ""
  loc_BD8545: FLdRfVar var_AC
  loc_BD8548: FLdRfVar var_C4
  loc_BD854B: LitVarStr var_C0, "SaldImpu"
  loc_BD8550: PopAdLdVar
  loc_BD8551: FLdRfVar var_B0
  loc_BD8554: FLdRfVar var_98
  loc_BD8557: FLdPr Me
  loc_BD855A: MemLdRfVar from_stack_1.global_52
  loc_BD855D: NewIfNullPr clsimputacion
  loc_BD8560: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8565: FLdPr var_98
  loc_BD8568:  = Me.Fields
  loc_BD856D: FLdPr var_B0
  loc_BD8570: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8575: FLdPr var_C4
  loc_BD8578:  = Me.Value
  loc_BD857D: FLdRfVar var_AC
  loc_BD8580: CStrVarTmp
  loc_BD8581: FStStrNoPop var_8C
  loc_BD8584: FLdPr Me
  loc_BD8587: VCallAd Control_ID_ImpoImpuTxt
  loc_BD858A: FStAdFunc var_E8
  loc_BD858D: FLdPr var_E8
  loc_BD8590: Me.Text = from_stack_1
  loc_BD8595: FFree1Str var_8C
  loc_BD8598: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_BD85A3: FFree1Var var_AC = ""
  loc_BD85A6: LitI4 0
  loc_BD85AB: LitI4 3
  loc_BD85B0: FLdRfVar var_9C
  loc_BD85B3: Redim
  loc_BD85BD: FLdPr Me
  loc_BD85C0: VCallAd Control_ID_CodiCucoMsk
  loc_BD85C3: CVarAd
  loc_BD85C7: ParmAry1St
  loc_BD85CD: FLdPr Me
  loc_BD85D0: VCallAd Control_ID_FechImpuMsk
  loc_BD85D3: CVarAd
  loc_BD85D7: ParmAry1St
  loc_BD85DD: FLdPr Me
  loc_BD85E0: VCallAd Control_ID_ImpoImpuTxt
  loc_BD85E3: CVarAd
  loc_BD85E7: ParmAry1St
  loc_BD85ED: FLdPr Me
  loc_BD85F0: VCallAd Control_ID_DetaImpuTxt
  loc_BD85F3: CVarAd
  loc_BD85F7: ParmAry1St
  loc_BD85FD: FLdRfVar var_9C
  loc_BD8600: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BD8605: FLdRfVar var_9C
  loc_BD8608: Erase
  loc_BD8609: Branch loc_BD9101
  loc_BD860C: ILdRf var_90
  loc_BD860F: LitStr "btnGuardar"
  loc_BD8612: EqStr
  loc_BD8614: BranchF loc_BD8F99
  loc_BD8617: LitStr vbNullString
  loc_BD861A: FLdPr Me
  loc_BD861D: MemStStrCopy
  loc_BD8621: LitI2_Byte 0
  loc_BD8623: PopTmpLdAd2 var_22A
  loc_BD8626: from_stack_2v = CodiCucoMsk_UnknownEvent_8(from_stack_1v)
  loc_BD862B: FLdPr Me
  loc_BD862E: MemLdStr global_64
  loc_BD8631: LitStr vbNullString
  loc_BD8634: NeStr
  loc_BD8636: BranchF loc_BD863A
  loc_BD8639: ExitProcHresult
  loc_BD863A: LitI2_Byte 0
  loc_BD863C: PopTmpLdAd2 var_22A
  loc_BD863F: from_stack_2v = ExorImpuMsk_UnknownEvent_8(from_stack_1v)
  loc_BD8644: FLdPr Me
  loc_BD8647: MemLdStr global_64
  loc_BD864A: LitStr vbNullString
  loc_BD864D: NeStr
  loc_BD864F: BranchF loc_BD8653
  loc_BD8652: ExitProcHresult
  loc_BD8653: LitI2_Byte 0
  loc_BD8655: PopTmpLdAd2 var_22A
  loc_BD8658: Call ExpeImpuTxt_Validate(from_stack_1v)
  loc_BD865D: FLdPr Me
  loc_BD8660: MemLdStr global_64
  loc_BD8663: LitStr vbNullString
  loc_BD8666: NeStr
  loc_BD8668: BranchF loc_BD866C
  loc_BD866B: ExitProcHresult
  loc_BD866C: LitI2_Byte 0
  loc_BD866E: PopTmpLdAd2 var_22A
  loc_BD8671: Call CodiPartMsk_UnknownEvent_8()
  loc_BD8676: FLdPr Me
  loc_BD8679: MemLdStr global_64
  loc_BD867C: LitStr vbNullString
  loc_BD867F: NeStr
  loc_BD8681: BranchF loc_BD8685
  loc_BD8684: ExitProcHresult
  loc_BD8685: LitI2_Byte 0
  loc_BD8687: PopTmpLdAd2 var_22A
  loc_BD868A: from_stack_2v = CodiOrgaMsk_UnknownEvent_8(from_stack_1v)
  loc_BD868F: FLdPr Me
  loc_BD8692: MemLdStr global_64
  loc_BD8695: LitStr vbNullString
  loc_BD8698: NeStr
  loc_BD869A: BranchF loc_BD869E
  loc_BD869D: ExitProcHresult
  loc_BD869E: LitI2_Byte 0
  loc_BD86A0: PopTmpLdAd2 var_22A
  loc_BD86A3: Call CodiUngaTxt_Validate(from_stack_1v)
  loc_BD86A8: FLdPr Me
  loc_BD86AB: MemLdStr global_64
  loc_BD86AE: LitStr vbNullString
  loc_BD86B1: NeStr
  loc_BD86B3: BranchF loc_BD86B7
  loc_BD86B6: ExitProcHresult
  loc_BD86B7: LitI2_Byte 0
  loc_BD86B9: PopTmpLdAd2 var_22A
  loc_BD86BC: Call CodiFifuMsk_UnknownEvent_8()
  loc_BD86C1: FLdPr Me
  loc_BD86C4: MemLdStr global_64
  loc_BD86C7: LitStr vbNullString
  loc_BD86CA: NeStr
  loc_BD86CC: BranchF loc_BD86D0
  loc_BD86CF: ExitProcHresult
  loc_BD86D0: LitI2_Byte 0
  loc_BD86D2: PopTmpLdAd2 var_22A
  loc_BD86D5: Call DetaImpuTxt_Validate(from_stack_1v)
  loc_BD86DA: FLdPr Me
  loc_BD86DD: MemLdStr global_64
  loc_BD86E0: LitStr vbNullString
  loc_BD86E3: NeStr
  loc_BD86E5: BranchF loc_BD86E9
  loc_BD86E8: ExitProcHresult
  loc_BD86E9: LitI2_Byte 0
  loc_BD86EB: PopTmpLdAd2 var_22A
  loc_BD86EE: from_stack_2v = FechImpuMsk_UnknownEvent_8(from_stack_1v)
  loc_BD86F3: FLdPr Me
  loc_BD86F6: MemLdStr global_64
  loc_BD86F9: LitStr vbNullString
  loc_BD86FC: NeStr
  loc_BD86FE: BranchF loc_BD8702
  loc_BD8701: ExitProcHresult
  loc_BD8702: LitI2_Byte 0
  loc_BD8704: PopTmpLdAd2 var_22A
  loc_BD8707: Call FefaDeveMsk_UnknownEvent_8()
  loc_BD870C: FLdPr Me
  loc_BD870F: MemLdStr global_64
  loc_BD8712: LitStr vbNullString
  loc_BD8715: NeStr
  loc_BD8717: BranchF loc_BD871B
  loc_BD871A: ExitProcHresult
  loc_BD871B: LitI2_Byte 0
  loc_BD871D: PopTmpLdAd2 var_22A
  loc_BD8720: Call TifaDeveCbo_Validate(from_stack_1v)
  loc_BD8725: FLdPr Me
  loc_BD8728: MemLdStr global_64
  loc_BD872B: LitStr vbNullString
  loc_BD872E: NeStr
  loc_BD8730: BranchF loc_BD8734
  loc_BD8733: ExitProcHresult
  loc_BD8734: LitI2_Byte 0
  loc_BD8736: PopTmpLdAd2 var_22A
  loc_BD8739: Call SufaDeveTxt_Validate(from_stack_1v)
  loc_BD873E: FLdPr Me
  loc_BD8741: MemLdStr global_64
  loc_BD8744: LitStr vbNullString
  loc_BD8747: NeStr
  loc_BD8749: BranchF loc_BD874D
  loc_BD874C: ExitProcHresult
  loc_BD874D: LitI2_Byte 0
  loc_BD874F: PopTmpLdAd2 var_22A
  loc_BD8752: Call NufaDeveTxt_Validate(from_stack_1v)
  loc_BD8757: FLdPr Me
  loc_BD875A: MemLdStr global_64
  loc_BD875D: LitStr vbNullString
  loc_BD8760: NeStr
  loc_BD8762: BranchF loc_BD8766
  loc_BD8765: ExitProcHresult
  loc_BD8766: LitI2_Byte 0
  loc_BD8768: PopTmpLdAd2 var_22A
  loc_BD876B: Call CantImpuTxt_Validate(from_stack_1v)
  loc_BD8770: FLdPr Me
  loc_BD8773: MemLdStr global_64
  loc_BD8776: LitStr vbNullString
  loc_BD8779: NeStr
  loc_BD877B: BranchF loc_BD877F
  loc_BD877E: ExitProcHresult
  loc_BD877F: LitI2_Byte 0
  loc_BD8781: PopTmpLdAd2 var_22A
  loc_BD8784: Call ImunImpuTxt_Validate(from_stack_1v)
  loc_BD8789: FLdPr Me
  loc_BD878C: MemLdStr global_64
  loc_BD878F: LitStr vbNullString
  loc_BD8792: NeStr
  loc_BD8794: BranchF loc_BD8798
  loc_BD8797: ExitProcHresult
  loc_BD8798: LitI2_Byte 0
  loc_BD879A: PopTmpLdAd2 var_22A
  loc_BD879D: Call ImpoImpuTxt_Validate(from_stack_1v)
  loc_BD87A2: FLdPr Me
  loc_BD87A5: MemLdStr global_64
  loc_BD87A8: LitStr vbNullString
  loc_BD87AB: NeStr
  loc_BD87AD: BranchF loc_BD87B1
  loc_BD87B0: ExitProcHresult
  loc_BD87B1: LitI2_Byte 0
  loc_BD87B3: PopTmpLdAd2 var_22A
  loc_BD87B6: Call CucuPersMsk_UnknownEvent_8()
  loc_BD87BB: FLdPr Me
  loc_BD87BE: MemLdStr global_64
  loc_BD87C1: LitStr vbNullString
  loc_BD87C4: NeStr
  loc_BD87C6: BranchF loc_BD87CA
  loc_BD87C9: ExitProcHresult
  loc_BD87CA: FLdPr Me
  loc_BD87CD: VCallAd Control_ID_CodiPartMsk
  loc_BD87D0: FStAdFunc var_E8
  loc_BD87D3: LitNothing
  loc_BD87D5: CastAd
  loc_BD87D8: FStAdFunc var_C4
  loc_BD87DB: FLdRfVar var_C4
  loc_BD87DE: FLdZeroAd var_E8
  loc_BD87E1: FStAdFuncNoPop
  loc_BD87E4: CastAd
  loc_BD87E7: FStAdFunc var_B0
  loc_BD87EA: FLdRfVar var_B0
  loc_BD87ED: FLdPr Me
  loc_BD87F0: MemLdRfVar from_stack_1.global_64
  loc_BD87F3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BD87F8: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_BD8803: BranchF loc_BD8807
  loc_BD8806: ExitProcHresult
  loc_BD8807: FLdPr Me
  loc_BD880A: MemLdUI1 global_60
  loc_BD880E: CI2UI1
  loc_BD8810: LitI2_Byte 3
  loc_BD8812: EqI2
  loc_BD8813: BranchF loc_BD89D2
  loc_BD8816: FLdRfVar var_D4
  loc_BD8819: FLdRfVar var_C4
  loc_BD881C: LitVarStr var_C0, "CodiPart"
  loc_BD8821: PopAdLdVar
  loc_BD8822: FLdRfVar var_B0
  loc_BD8825: FLdRfVar var_98
  loc_BD8828: FLdPr Me
  loc_BD882B: MemLdRfVar from_stack_1.global_52
  loc_BD882E: NewIfNullPr clsimputacion
  loc_BD8831: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8836: FLdPr var_98
  loc_BD8839:  = Me.Fields
  loc_BD883E: FLdPr var_B0
  loc_BD8841: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8846: FLdPr var_C4
  loc_BD8849:  = Me.Value
  loc_BD884E: FLdRfVar var_D4
  loc_BD8851: FLdPr Me
  loc_BD8854: VCallAd Control_ID_CodiPartMsk
  loc_BD8857: FStAdFunc var_E8
  loc_BD885A: FLdPr var_E8
  loc_BD885D: LateIdLdVar var_AC DispID_22 0
  loc_BD8864: CStrVarTmp
  loc_BD8865: CVarStr var_1B0
  loc_BD8868: HardType
  loc_BD8869: EqVar var_1C0
  loc_BD886D: FLdRfVar var_1E0
  loc_BD8870: FLdRfVar var_FC
  loc_BD8873: LitVarStr var_E4, "CodiOrga"
  loc_BD8878: PopAdLdVar
  loc_BD8879: FLdRfVar var_F8
  loc_BD887C: FLdRfVar var_F4
  loc_BD887F: FLdPr Me
  loc_BD8882: MemLdRfVar from_stack_1.global_52
  loc_BD8885: NewIfNullPr clsimputacion
  loc_BD8888: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD888D: FLdPr var_F4
  loc_BD8890:  = Me.Fields
  loc_BD8895: FLdPr var_F8
  loc_BD8898: from_stack_2 = Me.Item(from_stack_1)
  loc_BD889D: FLdPr var_FC
  loc_BD88A0:  = Me.Value
  loc_BD88A5: FLdRfVar var_1E0
  loc_BD88A8: FLdPr Me
  loc_BD88AB: VCallAd Control_ID_CodiOrgaMsk
  loc_BD88AE: FStAdFunc var_100
  loc_BD88B1: FLdPr var_100
  loc_BD88B4: LateIdLdVar var_1D0 DispID_22 0
  loc_BD88BB: CStrVarTmp
  loc_BD88BC: CVarStr var_1F0
  loc_BD88BF: HardType
  loc_BD88C0: EqVar var_200
  loc_BD88C4: AndVar var_214
  loc_BD88C8: FLdRfVar var_24C
  loc_BD88CB: FLdRfVar var_11C
  loc_BD88CE: LitVarStr var_110, "CodiFifu"
  loc_BD88D3: PopAdLdVar
  loc_BD88D4: FLdRfVar var_118
  loc_BD88D7: FLdRfVar var_114
  loc_BD88DA: FLdPr Me
  loc_BD88DD: MemLdRfVar from_stack_1.global_52
  loc_BD88E0: NewIfNullPr clsimputacion
  loc_BD88E3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD88E8: FLdPr var_114
  loc_BD88EB:  = Me.Fields
  loc_BD88F0: FLdPr var_118
  loc_BD88F3: from_stack_2 = Me.Item(from_stack_1)
  loc_BD88F8: FLdPr var_11C
  loc_BD88FB:  = Me.Value
  loc_BD8900: FLdRfVar var_24C
  loc_BD8903: FLdPr Me
  loc_BD8906: VCallAd Control_ID_CodiFifuMsk
  loc_BD8909: FStAdFunc var_130
  loc_BD890C: FLdPr var_130
  loc_BD890F: LateIdLdVar var_23C DispID_22 0
  loc_BD8916: CStrVarTmp
  loc_BD8917: CVarStr var_25C
  loc_BD891A: HardType
  loc_BD891B: EqVar var_26C
  loc_BD891F: AndVar var_27C
  loc_BD8923: FLdRfVar var_28C
  loc_BD8926: FLdRfVar var_14C
  loc_BD8929: LitVarStr var_12C, "ImpoImpu"
  loc_BD892E: PopAdLdVar
  loc_BD892F: FLdRfVar var_138
  loc_BD8932: FLdRfVar var_134
  loc_BD8935: FLdPr Me
  loc_BD8938: MemLdRfVar from_stack_1.global_52
  loc_BD893B: NewIfNullPr clsimputacion
  loc_BD893E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8943: FLdPr var_134
  loc_BD8946:  = Me.Fields
  loc_BD894B: FLdPr var_138
  loc_BD894E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8953: FLdPr var_14C
  loc_BD8956:  = Me.Value
  loc_BD895B: FLdRfVar var_28C
  loc_BD895E: FLdRfVar var_8C
  loc_BD8961: FLdPr Me
  loc_BD8964: VCallAd Control_ID_ImpoImpuTxt
  loc_BD8967: FStAdFunc var_150
  loc_BD896A: FLdPr var_150
  loc_BD896D:  = Me.Text
  loc_BD8972: FLdZeroAd var_8C
  loc_BD8975: CVarStr var_29C
  loc_BD8978: HardType
  loc_BD8979: EqVar var_2AC
  loc_BD897D: AndVar var_2BC
  loc_BD8981: CBoolVarNull
  loc_BD8983: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_C4 = "": var_F4 = "": var_F8 = "": var_100 = "": var_FC = "": var_114 = "": var_118 = "": var_130 = "": var_11C = "": var_134 = "": var_138 = "": var_150 = ""
  loc_BD89A6: FFreeVar var_AC = "": var_D4 = "": var_1B0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_23C = "": var_24C = "": var_25C = "": var_28C = ""
  loc_BD89BF: BranchF loc_BD89CF
  loc_BD89C2: LitI4 0
  loc_BD89C7: LitStr "El Expediente será DESAFECTADO totalmente..."
  loc_BD89CA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD89CF: Branch loc_BD8C00
  loc_BD89D2: FLdRfVar var_D4
  loc_BD89D5: FLdRfVar var_C4
  loc_BD89D8: LitVarStr var_C0, "CodiPart"
  loc_BD89DD: PopAdLdVar
  loc_BD89DE: FLdRfVar var_B0
  loc_BD89E1: FLdRfVar var_98
  loc_BD89E4: FLdPr Me
  loc_BD89E7: MemLdRfVar from_stack_1.global_52
  loc_BD89EA: NewIfNullPr clsimputacion
  loc_BD89ED: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD89F2: FLdPr var_98
  loc_BD89F5:  = Me.Fields
  loc_BD89FA: FLdPr var_B0
  loc_BD89FD: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8A02: FLdPr var_C4
  loc_BD8A05:  = Me.Value
  loc_BD8A0A: FLdRfVar var_D4
  loc_BD8A0D: FLdPr Me
  loc_BD8A10: VCallAd Control_ID_CodiPartMsk
  loc_BD8A13: FStAdFunc var_E8
  loc_BD8A16: FLdPr var_E8
  loc_BD8A19: LateIdLdVar var_AC DispID_22 0
  loc_BD8A20: CStrVarTmp
  loc_BD8A21: CVarStr var_1B0
  loc_BD8A24: HardType
  loc_BD8A25: EqVar var_1C0
  loc_BD8A29: FLdRfVar var_1E0
  loc_BD8A2C: FLdRfVar var_FC
  loc_BD8A2F: LitVarStr var_E4, "CodiOrga"
  loc_BD8A34: PopAdLdVar
  loc_BD8A35: FLdRfVar var_F8
  loc_BD8A38: FLdRfVar var_F4
  loc_BD8A3B: FLdPr Me
  loc_BD8A3E: MemLdRfVar from_stack_1.global_52
  loc_BD8A41: NewIfNullPr clsimputacion
  loc_BD8A44: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8A49: FLdPr var_F4
  loc_BD8A4C:  = Me.Fields
  loc_BD8A51: FLdPr var_F8
  loc_BD8A54: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8A59: FLdPr var_FC
  loc_BD8A5C:  = Me.Value
  loc_BD8A61: FLdRfVar var_1E0
  loc_BD8A64: FLdPr Me
  loc_BD8A67: VCallAd Control_ID_CodiOrgaMsk
  loc_BD8A6A: FStAdFunc var_100
  loc_BD8A6D: FLdPr var_100
  loc_BD8A70: LateIdLdVar var_1D0 DispID_22 0
  loc_BD8A77: CStrVarTmp
  loc_BD8A78: CVarStr var_1F0
  loc_BD8A7B: HardType
  loc_BD8A7C: EqVar var_200
  loc_BD8A80: AndVar var_214
  loc_BD8A84: FLdRfVar var_24C
  loc_BD8A87: FLdRfVar var_11C
  loc_BD8A8A: LitVarStr var_110, "CodiFifu"
  loc_BD8A8F: PopAdLdVar
  loc_BD8A90: FLdRfVar var_118
  loc_BD8A93: FLdRfVar var_114
  loc_BD8A96: FLdPr Me
  loc_BD8A99: MemLdRfVar from_stack_1.global_52
  loc_BD8A9C: NewIfNullPr clsimputacion
  loc_BD8A9F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8AA4: FLdPr var_114
  loc_BD8AA7:  = Me.Fields
  loc_BD8AAC: FLdPr var_118
  loc_BD8AAF: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8AB4: FLdPr var_11C
  loc_BD8AB7:  = Me.Value
  loc_BD8ABC: FLdRfVar var_24C
  loc_BD8ABF: FLdPr Me
  loc_BD8AC2: VCallAd Control_ID_CodiFifuMsk
  loc_BD8AC5: FStAdFunc var_130
  loc_BD8AC8: FLdPr var_130
  loc_BD8ACB: LateIdLdVar var_23C DispID_22 0
  loc_BD8AD2: CStrVarTmp
  loc_BD8AD3: CVarStr var_25C
  loc_BD8AD6: HardType
  loc_BD8AD7: EqVar var_26C
  loc_BD8ADB: AndVar var_27C
  loc_BD8ADF: FLdRfVar var_28C
  loc_BD8AE2: FLdRfVar var_14C
  loc_BD8AE5: LitVarStr var_12C, "CodiUnga"
  loc_BD8AEA: PopAdLdVar
  loc_BD8AEB: FLdRfVar var_138
  loc_BD8AEE: FLdRfVar var_134
  loc_BD8AF1: FLdPr Me
  loc_BD8AF4: MemLdRfVar from_stack_1.global_52
  loc_BD8AF7: NewIfNullPr clsimputacion
  loc_BD8AFA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8AFF: FLdPr var_134
  loc_BD8B02:  = Me.Fields
  loc_BD8B07: FLdPr var_138
  loc_BD8B0A: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8B0F: FLdPr var_14C
  loc_BD8B12:  = Me.Value
  loc_BD8B17: FLdRfVar var_28C
  loc_BD8B1A: FnCStrVar
  loc_BD8B1C: FStStrNoPop var_EC
  loc_BD8B1F: FLdRfVar var_8C
  loc_BD8B22: FLdPr Me
  loc_BD8B25: VCallAd Control_ID_CodiUngaTxt
  loc_BD8B28: FStAdFunc var_150
  loc_BD8B2B: FLdPr var_150
  loc_BD8B2E:  = Me.Text
  loc_BD8B33: ILdRf var_8C
  loc_BD8B36: EqStr
  loc_BD8B38: CVarBoolI2 var_148
  loc_BD8B3C: AndVar var_29C
  loc_BD8B40: FLdRfVar var_2AC
  loc_BD8B43: FLdRfVar var_16C
  loc_BD8B46: LitVarStr var_164, "ImpoImpu"
  loc_BD8B4B: PopAdLdVar
  loc_BD8B4C: FLdRfVar var_168
  loc_BD8B4F: FLdRfVar var_154
  loc_BD8B52: FLdPr Me
  loc_BD8B55: MemLdRfVar from_stack_1.global_52
  loc_BD8B58: NewIfNullPr clsimputacion
  loc_BD8B5B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8B60: FLdPr var_154
  loc_BD8B63:  = Me.Fields
  loc_BD8B68: FLdPr var_168
  loc_BD8B6B: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8B70: FLdPr var_16C
  loc_BD8B73:  = Me.Value
  loc_BD8B78: FLdRfVar var_2AC
  loc_BD8B7B: FLdRfVar var_F0
  loc_BD8B7E: FLdPr Me
  loc_BD8B81: VCallAd Control_ID_ImpoImpuTxt
  loc_BD8B84: FStAdFunc var_170
  loc_BD8B87: FLdPr var_170
  loc_BD8B8A:  = Me.Text
  loc_BD8B8F: FLdZeroAd var_F0
  loc_BD8B92: CVarStr var_2BC
  loc_BD8B95: HardType
  loc_BD8B96: EqVar var_2CC
  loc_BD8B9A: AndVar var_2DC
  loc_BD8B9E: CBoolVarNull
  loc_BD8BA0: FFreeStr var_EC = ""
  loc_BD8BA7: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_C4 = "": var_F4 = "": var_F8 = "": var_100 = "": var_FC = "": var_114 = "": var_118 = "": var_130 = "": var_11C = "": var_134 = "": var_138 = "": var_14C = "": var_150 = "": var_154 = "": var_168 = "": var_170 = ""
  loc_BD8BD2: FFreeVar var_AC = "": var_D4 = "": var_1B0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_23C = "": var_24C = "": var_25C = "": var_28C = "": var_148 = "": var_2AC = ""
  loc_BD8BEF: BranchF loc_BD8C00
  loc_BD8BF2: LitI4 0
  loc_BD8BF7: LitStr "Debe cambiar la Partida, el Organigrama, el Programa de Gestión o el Importe. Verifique..."
  loc_BD8BFA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD8BFF: ExitProcHresult
  loc_BD8C00: FLdPr Me
  loc_BD8C03: MemLdUI1 global_60
  loc_BD8C07: FStUI1 var_2DE
  loc_BD8C0B: FLdUI1
  loc_BD8C0F: LitI2_Byte 1
  loc_BD8C11: EqI2
  loc_BD8C12: BranchF loc_BD8D6E
  loc_BD8C15: FLdRfVar var_94
  loc_BD8C18: ImpAdLdI2 MemVar_C3D064
  loc_BD8C1B: FLdPr Me
  loc_BD8C1E: MemLdRfVar from_stack_1.global_52
  loc_BD8C21: NewIfNullPr clsimputacion
  loc_BD8C24: from_stack_2v = clsimputacion.BuscaAjusImpu(from_stack_1v)
  loc_BD8C29: ILdRf var_94
  loc_BD8C2C: FLdPr Me
  loc_BD8C2F: MemStI4 global_72
  loc_BD8C32: FLdRfVar var_1D0
  loc_BD8C35: FLdRfVar var_C4
  loc_BD8C38: LitVarStr var_C0, "IdImpu"
  loc_BD8C3D: PopAdLdVar
  loc_BD8C3E: FLdRfVar var_B0
  loc_BD8C41: FLdRfVar var_98
  loc_BD8C44: FLdPr Me
  loc_BD8C47: MemLdRfVar from_stack_1.global_52
  loc_BD8C4A: NewIfNullPr clsimputacion
  loc_BD8C4D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8C52: FLdPr var_98
  loc_BD8C55:  = Me.Fields
  loc_BD8C5A: FLdPr var_B0
  loc_BD8C5D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8C62: FLdPr var_C4
  loc_BD8C65:  = Me.Value
  loc_BD8C6A: FLdPr Me
  loc_BD8C6D: VCallAd Control_ID_FechImpuMsk
  loc_BD8C70: FStAdFunc var_E8
  loc_BD8C73: FLdPr var_E8
  loc_BD8C76: LateIdLdVar var_AC DispID_15 0
  loc_BD8C7D: PopAd
  loc_BD8C7F: FLdPr Me
  loc_BD8C82: VCallAd Control_ID_CodiPartMsk
  loc_BD8C85: FStAdFunc var_F4
  loc_BD8C88: FLdPr var_F4
  loc_BD8C8B: LateIdLdVar var_D4 DispID_22 0
  loc_BD8C92: PopAd
  loc_BD8C94: FLdPr Me
  loc_BD8C97: VCallAd Control_ID_CodiOrgaMsk
  loc_BD8C9A: FStAdFunc var_F8
  loc_BD8C9D: FLdPr var_F8
  loc_BD8CA0: LateIdLdVar var_1B0 DispID_22 0
  loc_BD8CA7: PopAd
  loc_BD8CA9: FLdPr Me
  loc_BD8CAC: VCallAd Control_ID_CodiFifuMsk
  loc_BD8CAF: FStAdFunc var_FC
  loc_BD8CB2: FLdPr var_FC
  loc_BD8CB5: LateIdLdVar var_1C0 DispID_22 0
  loc_BD8CBC: PopAd
  loc_BD8CBE: FLdRfVar var_8C
  loc_BD8CC1: FLdPr Me
  loc_BD8CC4: VCallAd Control_ID_CodiUngaTxt
  loc_BD8CC7: FStAdFunc var_100
  loc_BD8CCA: FLdPr var_100
  loc_BD8CCD:  = Me.Text
  loc_BD8CD2: FLdRfVar var_EC
  loc_BD8CD5: FLdPrThis
  loc_BD8CD6: VCallAd Control_ID_ImpoImpuTxt
  loc_BD8CD9: FStAdFunc var_114
  loc_BD8CDC: FLdPr var_114
  loc_BD8CDF:  = Me.Text
  loc_BD8CE4: FLdRfVar var_94
  loc_BD8CE7: LitI2_Byte 0
  loc_BD8CE9: FLdPr Me
  loc_BD8CEC: MemLdStr global_72
  loc_BD8CEF: ILdRf var_EC
  loc_BD8CF2: CR8Str
  loc_BD8CF4: LitI2_Byte &HFF
  loc_BD8CF6: CR8I2
  loc_BD8CF7: MulR8
  loc_BD8CF8: CStrR8
  loc_BD8CFA: FStStrNoPop var_2EC
  loc_BD8CFD: ILdRf var_8C
  loc_BD8D00: FLdRfVar var_1C0
  loc_BD8D03: CStrVarTmp
  loc_BD8D04: FStStrNoPop var_2E8
  loc_BD8D07: FLdRfVar var_1B0
  loc_BD8D0A: CStrVarTmp
  loc_BD8D0B: FStStrNoPop var_2E4
  loc_BD8D0E: FLdRfVar var_D4
  loc_BD8D11: CStrVarTmp
  loc_BD8D12: FStStrNoPop var_204
  loc_BD8D15: FLdRfVar var_AC
  loc_BD8D18: CStrVarTmp
  loc_BD8D19: FStStrNoPop var_F0
  loc_BD8D1C: FLdRfVar var_1D0
  loc_BD8D1F: CI4Var
  loc_BD8D21: FLdPr Me
  loc_BD8D24: MemLdRfVar from_stack_1.global_52
  loc_BD8D27: NewIfNullPr clsimputacion
  loc_BD8D2A: from_stack_10v = clsimputacion.Transferencia5etapas(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_BD8D2F: ILdRf var_94
  loc_BD8D32: FLdPr Me
  loc_BD8D35: MemStI4 global_68
  loc_BD8D38: FFreeStr var_EC = "": var_F0 = "": var_204 = "": var_2E4 = "": var_2E8 = "": var_8C = ""
  loc_BD8D49: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = ""
  loc_BD8D5E: FFreeVar var_AC = "": var_D4 = "": var_1B0 = "": var_1C0 = ""
  loc_BD8D6B: Branch loc_BD8E7C
  loc_BD8D6E: FLdUI1
  loc_BD8D72: LitI2_Byte 2
  loc_BD8D74: EqI2
  loc_BD8D75: BranchF loc_BD8D7B
  loc_BD8D78: Branch loc_BD8E7C
  loc_BD8D7B: FLdUI1
  loc_BD8D7F: LitI2_Byte 3
  loc_BD8D81: EqI2
  loc_BD8D82: BranchF loc_BD8E7C
  loc_BD8D85: FLdRfVar var_94
  loc_BD8D88: ImpAdLdI2 MemVar_C3D064
  loc_BD8D8B: FLdPr Me
  loc_BD8D8E: MemLdRfVar from_stack_1.global_52
  loc_BD8D91: NewIfNullPr clsimputacion
  loc_BD8D94: from_stack_2v = clsimputacion.BuscaAjusImpu(from_stack_1v)
  loc_BD8D99: ILdRf var_94
  loc_BD8D9C: FLdPr Me
  loc_BD8D9F: MemStI4 global_72
  loc_BD8DA2: FLdRfVar var_1B0
  loc_BD8DA5: FLdRfVar var_C4
  loc_BD8DA8: LitVarStr var_C0, "IdImpu"
  loc_BD8DAD: PopAdLdVar
  loc_BD8DAE: FLdRfVar var_B0
  loc_BD8DB1: FLdRfVar var_98
  loc_BD8DB4: FLdPr Me
  loc_BD8DB7: MemLdRfVar from_stack_1.global_52
  loc_BD8DBA: NewIfNullPr clsimputacion
  loc_BD8DBD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD8DC2: FLdPr var_98
  loc_BD8DC5:  = Me.Fields
  loc_BD8DCA: FLdPr var_B0
  loc_BD8DCD: from_stack_2 = Me.Item(from_stack_1)
  loc_BD8DD2: FLdPr var_C4
  loc_BD8DD5:  = Me.Value
  loc_BD8DDA: FLdPr Me
  loc_BD8DDD: VCallAd Control_ID_FechImpuMsk
  loc_BD8DE0: FStAdFunc var_E8
  loc_BD8DE3: FLdPr var_E8
  loc_BD8DE6: LateIdLdVar var_AC DispID_15 0
  loc_BD8DED: PopAd
  loc_BD8DEF: FLdPr Me
  loc_BD8DF2: VCallAd Control_ID_CodiCucoMsk
  loc_BD8DF5: FStAdFunc var_F4
  loc_BD8DF8: FLdPr var_F4
  loc_BD8DFB: LateIdLdVar var_D4 DispID_22 0
  loc_BD8E02: PopAd
  loc_BD8E04: FLdRfVar var_8C
  loc_BD8E07: FLdPrThis
  loc_BD8E08: VCallAd Control_ID_ImpoImpuTxt
  loc_BD8E0B: FStAdFunc var_F8
  loc_BD8E0E: FLdPr var_F8
  loc_BD8E11:  = Me.Text
  loc_BD8E16: FLdRfVar var_94
  loc_BD8E19: LitI2_Byte 0
  loc_BD8E1B: FLdPr Me
  loc_BD8E1E: MemLdStr global_72
  loc_BD8E21: ILdRf var_8C
  loc_BD8E24: CR8Str
  loc_BD8E26: LitI2_Byte &HFF
  loc_BD8E28: CR8I2
  loc_BD8E29: MulR8
  loc_BD8E2A: CStrR8
  loc_BD8E2C: FStStrNoPop var_204
  loc_BD8E2F: FLdRfVar var_D4
  loc_BD8E32: CStrVarTmp
  loc_BD8E33: FStStrNoPop var_F0
  loc_BD8E36: FLdRfVar var_AC
  loc_BD8E39: CStrVarTmp
  loc_BD8E3A: FStStrNoPop var_EC
  loc_BD8E3D: FLdRfVar var_1B0
  loc_BD8E40: CI4Var
  loc_BD8E42: FLdPr Me
  loc_BD8E45: MemLdRfVar from_stack_1.global_52
  loc_BD8E48: NewIfNullPr clsimputacion
  loc_BD8E4B: from_stack_7v = clsimputacion.Desafectar5etapas(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BD8E50: ILdRf var_94
  loc_BD8E53: FLdPr Me
  loc_BD8E56: MemStI4 global_68
  loc_BD8E59: FFreeStr var_8C = "": var_EC = "": var_F0 = ""
  loc_BD8E64: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_F4 = "": var_F8 = ""
  loc_BD8E73: FFreeVar var_AC = "": var_D4 = ""
  loc_BD8E7C: FLdPr Me
  loc_BD8E7F: VCallAd Control_ID_CodiPartMsk
  loc_BD8E82: FStAdFunc var_98
  loc_BD8E85: FLdPr var_98
  loc_BD8E88: LateIdLdVar var_AC DispID_22 0
  loc_BD8E8F: PopAd
  loc_BD8E91: FLdPr Me
  loc_BD8E94: VCallAd Control_ID_CodiOrgaMsk
  loc_BD8E97: FStAdFunc var_B0
  loc_BD8E9A: FLdPr var_B0
  loc_BD8E9D: LateIdLdVar var_D4 DispID_22 0
  loc_BD8EA4: PopAd
  loc_BD8EA6: FLdPr Me
  loc_BD8EA9: VCallAd Control_ID_ExorImpuMsk
  loc_BD8EAC: FStAdFunc var_C4
  loc_BD8EAF: FLdPr var_C4
  loc_BD8EB2: LateIdLdVar var_1B0 DispID_15 0
  loc_BD8EB9: CStrVarTmp
  loc_BD8EBA: FStStrNoPop var_2E4
  loc_BD8EBD: FLdPr Me
  loc_BD8EC0: MemLdStr global_68
  loc_BD8EC3: CStrI4
  loc_BD8EC5: FStStrNoPop var_204
  loc_BD8EC8: FLdRfVar var_D4
  loc_BD8ECB: CStrVarTmp
  loc_BD8ECC: FStStrNoPop var_F0
  loc_BD8ECF: FLdRfVar var_AC
  loc_BD8ED2: CStrVarTmp
  loc_BD8ED3: FStStrNoPop var_EC
  loc_BD8ED6: ImpAdLdI2 MemVar_C3D064
  loc_BD8ED9: CStrUI1
  loc_BD8EDB: FStStrNoPop var_8C
  loc_BD8EDE: Call Proc_144_69_AB40F4()
  loc_BD8EE3: FFreeStr var_8C = "": var_EC = "": var_F0 = "": var_204 = ""
  loc_BD8EF0: FFreeAd var_98 = "": var_B0 = ""
  loc_BD8EF9: FFreeVar var_AC = "": var_D4 = ""
  loc_BD8F02: FLdPr Me
  loc_BD8F05: MemLdStr global_68
  loc_BD8F08: LitI4 0
  loc_BD8F0D: GtI4
  loc_BD8F0E: BranchF loc_BD8F91
  loc_BD8F11: LitI2_Byte &HFF
  loc_BD8F13: PopTmpLdAd2 var_22C
  loc_BD8F16: LitI2_Byte 0
  loc_BD8F18: PopTmpLdAd2 var_22A
  loc_BD8F1B: LitStr "¿Imprime el volante de imputaciones?"
  loc_BD8F1E: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BD8F23: CI4UI1
  loc_BD8F24: LitI4 6
  loc_BD8F29: EqI4
  loc_BD8F2A: BranchF loc_BD8F91
  loc_BD8F2D: ImpAdLdRf MemVar_C3D9BC
  loc_BD8F30: NewIfNullAd
  loc_BD8F33: CastAd
  loc_BD8F36: FStAdFuncNoPop
  loc_BD8F39: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BD8F3E: FFree1Ad var_98
  loc_BD8F41: FLdPr Me
  loc_BD8F44: VCallAd Control_ID_ExorImpuMsk
  loc_BD8F47: FStAdFunc var_98
  loc_BD8F4A: FLdPr var_98
  loc_BD8F4D: LateIdLdVar var_AC DispID_15 0
  loc_BD8F54: CStrVarTmp
  loc_BD8F55: FStStrNoPop var_8C
  loc_BD8F58: ImpAdLdRf MemVar_C3D9BC
  loc_BD8F5B: NewIfNullPr rptVolantedeImputaciones
  loc_BD8F5E: VCallAd Control_ID_cboExorImpu
  loc_BD8F61: FStAdFunc var_B0
  loc_BD8F64: FLdPr var_B0
  loc_BD8F67: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_BD8F6C: FFree1Str var_8C
  loc_BD8F6F: FFreeAd var_98 = ""
  loc_BD8F76: FFree1Var var_AC = ""
  loc_BD8F79: LitVar_Missing var_E4
  loc_BD8F7C: PopAdLdVar
  loc_BD8F7D: LitVarI4
  loc_BD8F85: PopAdLdVar
  loc_BD8F86: ImpAdLdRf MemVar_C3D9BC
  loc_BD8F89: NewIfNullPr rptVolantedeImputaciones
  loc_BD8F8C: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_BD8F91: Call cmdCancelar_Click()
  loc_BD8F96: Branch loc_BD9101
  loc_BD8F99: ILdRf var_90
  loc_BD8F9C: LitStr "btnCancelar"
  loc_BD8F9F: EqStr
  loc_BD8FA1: BranchF loc_BD8FAC
  loc_BD8FA4: Call cmdCancelar_Click()
  loc_BD8FA9: Branch loc_BD9101
  loc_BD8FAC: ILdRf var_90
  loc_BD8FAF: LitStr "btnPrimero"
  loc_BD8FB2: EqStr
  loc_BD8FB4: BranchF loc_BD8FC8
  loc_BD8FB7: FLdPr Me
  loc_BD8FBA: MemLdRfVar from_stack_1.global_52
  loc_BD8FBD: NewIfNullPr clsimputacion
  loc_BD8FC0: Call clsimputacion.MoveFirst()
  loc_BD8FC5: Branch loc_BD9101
  loc_BD8FC8: ILdRf var_90
  loc_BD8FCB: LitStr "btnAnterior"
  loc_BD8FCE: EqStr
  loc_BD8FD0: BranchF loc_BD8FE4
  loc_BD8FD3: FLdPr Me
  loc_BD8FD6: MemLdRfVar from_stack_1.global_52
  loc_BD8FD9: NewIfNullPr clsimputacion
  loc_BD8FDC: Call clsimputacion.MovePrevious()
  loc_BD8FE1: Branch loc_BD9101
  loc_BD8FE4: ILdRf var_90
  loc_BD8FE7: LitStr "btnSiguiente"
  loc_BD8FEA: EqStr
  loc_BD8FEC: BranchF loc_BD9000
  loc_BD8FEF: FLdPr Me
  loc_BD8FF2: MemLdRfVar from_stack_1.global_52
  loc_BD8FF5: NewIfNullPr clsimputacion
  loc_BD8FF8: Call clsimputacion.MoveNext()
  loc_BD8FFD: Branch loc_BD9101
  loc_BD9000: ILdRf var_90
  loc_BD9003: LitStr "btnUltimo"
  loc_BD9006: EqStr
  loc_BD9008: BranchF loc_BD901C
  loc_BD900B: FLdPr Me
  loc_BD900E: MemLdRfVar from_stack_1.global_52
  loc_BD9011: NewIfNullPr clsimputacion
  loc_BD9014: Call clsimputacion.MoveLast()
  loc_BD9019: Branch loc_BD9101
  loc_BD901C: ILdRf var_90
  loc_BD901F: LitStr "btnFiltrar"
  loc_BD9022: EqStr
  loc_BD9024: BranchF loc_BD902A
  loc_BD9027: Branch loc_BD9101
  loc_BD902A: ILdRf var_90
  loc_BD902D: LitStr "btnBuscar"
  loc_BD9030: EqStr
  loc_BD9032: BranchF loc_BD9038
  loc_BD9035: Branch loc_BD9101
  loc_BD9038: ILdRf var_90
  loc_BD903B: LitStr "btnImprimir"
  loc_BD903E: EqStr
  loc_BD9040: BranchF loc_BD90AA
  loc_BD9043: ImpAdLdRf MemVar_C3D9BC
  loc_BD9046: NewIfNullAd
  loc_BD9049: CastAd
  loc_BD904C: FStAdFuncNoPop
  loc_BD904F: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BD9054: FFree1Ad var_98
  loc_BD9057: FLdPr Me
  loc_BD905A: VCallAd Control_ID_ExorImpuMsk
  loc_BD905D: FStAdFunc var_98
  loc_BD9060: FLdPr var_98
  loc_BD9063: LateIdLdVar var_AC DispID_15 0
  loc_BD906A: CStrVarTmp
  loc_BD906B: FStStrNoPop var_8C
  loc_BD906E: ImpAdLdRf MemVar_C3D9BC
  loc_BD9071: NewIfNullPr rptVolantedeImputaciones
  loc_BD9074: VCallAd Control_ID_cboExorImpu
  loc_BD9077: FStAdFunc var_B0
  loc_BD907A: FLdPr var_B0
  loc_BD907D: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_BD9082: FFree1Str var_8C
  loc_BD9085: FFreeAd var_98 = ""
  loc_BD908C: FFree1Var var_AC = ""
  loc_BD908F: LitVar_Missing var_E4
  loc_BD9092: PopAdLdVar
  loc_BD9093: LitVarI4
  loc_BD909B: PopAdLdVar
  loc_BD909C: ImpAdLdRf MemVar_C3D9BC
  loc_BD909F: NewIfNullPr rptVolantedeImputaciones
  loc_BD90A2: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_BD90A7: Branch loc_BD9101
  loc_BD90AA: ILdRf var_90
  loc_BD90AD: LitStr "btnAyuda"
  loc_BD90B0: EqStr
  loc_BD90B2: BranchF loc_BD90E1
  loc_BD90B5: LitVar_Missing var_1C0
  loc_BD90B8: LitVar_Missing var_1B0
  loc_BD90BB: LitVar_Missing var_D4
  loc_BD90BE: LitI4 0
  loc_BD90C3: LitVarStr var_C0, "Opcion no disponible en esta version."
  loc_BD90C8: FStVarCopyObj var_AC
  loc_BD90CB: FLdRfVar var_AC
  loc_BD90CE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BD90D3: FFreeVar var_AC = "": var_D4 = "": var_1B0 = ""
  loc_BD90DE: Branch loc_BD9101
  loc_BD90E1: ILdRf var_90
  loc_BD90E4: LitStr "btnSalir"
  loc_BD90E7: EqStr
  loc_BD90E9: BranchF loc_BD9101
  loc_BD90EC: ILdRf Me
  loc_BD90EF: FStAdNoPop
  loc_BD90F3: ImpAdLdRf MemVar_C44F9C
  loc_BD90F6: NewIfNullPr Me
  loc_BD90F9: Me.Global.Unload from_stack_1
  loc_BD90FE: FFree1Ad var_98
  loc_BD9101: ExitProcHresult
End Sub

Private Function Proc_144_68_A7F56C() 'A7F56C
  'Data Table: 4FA290
  loc_A7F178: LitStr vbNullString
  loc_A7F17B: FLdPr Me
  loc_A7F17E: MemStStrCopy
  loc_A7F182: FLdPr Me
  loc_A7F185: VCallAd Control_ID_CodiPartMsk
  loc_A7F188: FStAdFunc var_88
  loc_A7F18B: FLdPr var_88
  loc_A7F18E: LateIdLdVar var_98 DispID_22 0
  loc_A7F195: CStrVarTmp
  loc_A7F196: FStStrNoPop var_9C
  loc_A7F199: LitStr vbNullString
  loc_A7F19C: NeStr
  loc_A7F19E: FFree1Str var_9C
  loc_A7F1A1: FFree1Ad var_88
  loc_A7F1A4: FFree1Var var_98 = ""
  loc_A7F1A7: BranchF loc_A7F201
  loc_A7F1AA: FLdPr Me
  loc_A7F1AD: VCallAd Control_ID_CodiPartMsk
  loc_A7F1B0: FStAdFunc var_88
  loc_A7F1B3: FLdPr var_88
  loc_A7F1B6: LateIdLdVar var_98 DispID_22 0
  loc_A7F1BD: PopAd
  loc_A7F1BF: FLdRfVar var_9C
  loc_A7F1C2: FLdPr Me
  loc_A7F1C5:  = Me.Name
  loc_A7F1CA: FLdPr Me
  loc_A7F1CD: MemLdRfVar from_stack_1.global_92
  loc_A7F1D0: NewIfNullRf
  loc_A7F1D4: ILdRf var_9C
  loc_A7F1D7: LitI2_Byte 0
  loc_A7F1D9: FLdRfVar var_98
  loc_A7F1DC: CStrVarTmp
  loc_A7F1DD: FStStrNoPop var_A0
  loc_A7F1E0: ImpAdLdI2 MemVar_C3D064
  loc_A7F1E3: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_A7F1E8: FStStrNoPop var_A4
  loc_A7F1EB: FLdPr Me
  loc_A7F1EE: MemStStrCopy
  loc_A7F1F2: FFreeStr var_A0 = "": var_9C = ""
  loc_A7F1FB: FFree1Ad var_88
  loc_A7F1FE: FFree1Var var_98 = ""
  loc_A7F201: FLdPr Me
  loc_A7F204: MemLdStr global_64
  loc_A7F207: LitStr vbNullString
  loc_A7F20A: NeStr
  loc_A7F20C: BranchF loc_A7F220
  loc_A7F20F: LitI4 0
  loc_A7F214: FLdPr Me
  loc_A7F217: MemLdStr global_64
  loc_A7F21A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A7F21F: ExitProcHresult
  loc_A7F220: FLdPr Me
  loc_A7F223: VCallAd Control_ID_CodiOrgaMsk
  loc_A7F226: FStAdFunc var_88
  loc_A7F229: FLdPr var_88
  loc_A7F22C: LateIdLdVar var_98 DispID_22 0
  loc_A7F233: CStrVarTmp
  loc_A7F234: FStStrNoPop var_9C
  loc_A7F237: LitStr vbNullString
  loc_A7F23A: NeStr
  loc_A7F23C: FFree1Str var_9C
  loc_A7F23F: FFree1Ad var_88
  loc_A7F242: FFree1Var var_98 = ""
  loc_A7F245: BranchF loc_A7F29D
  loc_A7F248: FLdPr Me
  loc_A7F24B: VCallAd Control_ID_CodiOrgaMsk
  loc_A7F24E: FStAdFunc var_88
  loc_A7F251: FLdPr var_88
  loc_A7F254: LateIdLdVar var_98 DispID_22 0
  loc_A7F25B: PopAd
  loc_A7F25D: FLdRfVar var_9C
  loc_A7F260: FLdPr Me
  loc_A7F263:  = Me.Name
  loc_A7F268: FLdPr Me
  loc_A7F26B: MemLdRfVar from_stack_1.global_96
  loc_A7F26E: NewIfNullRf
  loc_A7F272: ILdRf var_9C
  loc_A7F275: FLdRfVar var_98
  loc_A7F278: CStrVarTmp
  loc_A7F279: FStStrNoPop var_A0
  loc_A7F27C: ImpAdLdI2 MemVar_C3D064
  loc_A7F27F: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_A7F284: FStStrNoPop var_A4
  loc_A7F287: FLdPr Me
  loc_A7F28A: MemStStrCopy
  loc_A7F28E: FFreeStr var_A0 = "": var_9C = ""
  loc_A7F297: FFree1Ad var_88
  loc_A7F29A: FFree1Var var_98 = ""
  loc_A7F29D: FLdPr Me
  loc_A7F2A0: MemLdStr global_64
  loc_A7F2A3: LitStr vbNullString
  loc_A7F2A6: NeStr
  loc_A7F2A8: BranchF loc_A7F2BC
  loc_A7F2AB: LitI4 0
  loc_A7F2B0: FLdPr Me
  loc_A7F2B3: MemLdStr global_64
  loc_A7F2B6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A7F2BB: ExitProcHresult
  loc_A7F2BC: FLdPr Me
  loc_A7F2BF: VCallAd Control_ID_CodiFifuMsk
  loc_A7F2C2: FStAdFunc var_88
  loc_A7F2C5: FLdPr var_88
  loc_A7F2C8: LateIdLdVar var_98 DispID_22 0
  loc_A7F2CF: CStrVarTmp
  loc_A7F2D0: FStStrNoPop var_9C
  loc_A7F2D3: LitStr vbNullString
  loc_A7F2D6: NeStr
  loc_A7F2D8: FFree1Str var_9C
  loc_A7F2DB: FFree1Ad var_88
  loc_A7F2DE: FFree1Var var_98 = ""
  loc_A7F2E1: BranchF loc_A7F329
  loc_A7F2E4: FLdPr Me
  loc_A7F2E7: VCallAd Control_ID_CodiFifuMsk
  loc_A7F2EA: FStAdFunc var_88
  loc_A7F2ED: FLdPr var_88
  loc_A7F2F0: LateIdLdVar var_98 DispID_22 0
  loc_A7F2F7: PopAd
  loc_A7F2F9: FLdPr Me
  loc_A7F2FC: MemLdRfVar from_stack_1.global_100
  loc_A7F2FF: NewIfNullRf
  loc_A7F303: FLdRfVar var_98
  loc_A7F306: CStrVarTmp
  loc_A7F307: FStStrNoPop var_9C
  loc_A7F30A: ImpAdLdI2 MemVar_C3D064
  loc_A7F30D: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_A7F312: FStStrNoPop var_A0
  loc_A7F315: FLdPr Me
  loc_A7F318: MemStStrCopy
  loc_A7F31C: FFreeStr var_9C = ""
  loc_A7F323: FFree1Ad var_88
  loc_A7F326: FFree1Var var_98 = ""
  loc_A7F329: FLdPr Me
  loc_A7F32C: MemLdStr global_64
  loc_A7F32F: LitStr vbNullString
  loc_A7F332: NeStr
  loc_A7F334: BranchF loc_A7F348
  loc_A7F337: LitI4 0
  loc_A7F33C: FLdPr Me
  loc_A7F33F: MemLdStr global_64
  loc_A7F342: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A7F347: ExitProcHresult
  loc_A7F348: FLdPr Me
  loc_A7F34B: VCallAd Control_ID_FechImpuMsk
  loc_A7F34E: FStAdFunc var_88
  loc_A7F351: FLdPr var_88
  loc_A7F354: LateIdLdVar var_98 DispID_15 0
  loc_A7F35B: CStrVarTmp
  loc_A7F35C: FStStrNoPop var_9C
  loc_A7F35F: LitStr "  /  /    "
  loc_A7F362: NeStr
  loc_A7F364: FFree1Str var_9C
  loc_A7F367: FFree1Ad var_88
  loc_A7F36A: FFree1Var var_98 = ""
  loc_A7F36D: BranchF loc_A7F3E4
  loc_A7F370: FLdPr Me
  loc_A7F373: VCallAd Control_ID_FechImpuMsk
  loc_A7F376: FStAdFunc var_88
  loc_A7F379: FLdPr var_88
  loc_A7F37C: LateIdLdVar var_98 DispID_15 0
  loc_A7F383: PopAd
  loc_A7F385: FLdPr Me
  loc_A7F388: VCallAd Control_ID_FechImpuMsk
  loc_A7F38B: FStAdFunc var_A8
  loc_A7F38E: FLdPr var_A8
  loc_A7F391: LateIdLdVar var_B8 DispID_11 -32767
  loc_A7F398: PopAd
  loc_A7F39A: LitI2_Byte &HFF
  loc_A7F39C: PopTmpLdAd2 var_BE
  loc_A7F39F: LitNothing
  loc_A7F3A1: CastAd
  loc_A7F3A4: FStAdFunc var_BC
  loc_A7F3A7: FLdRfVar var_BC
  loc_A7F3AA: FLdRfVar var_B8
  loc_A7F3AD: CStrVarTmp
  loc_A7F3AE: FStStrNoPop var_A0
  loc_A7F3B1: LitI2_Byte &HFF
  loc_A7F3B3: LitI2_Byte &HFF
  loc_A7F3B5: FLdRfVar var_98
  loc_A7F3B8: CStrVarTmp
  loc_A7F3B9: FStStrNoPop var_9C
  loc_A7F3BC: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A7F3C1: FStStrNoPop var_A4
  loc_A7F3C4: FLdPr Me
  loc_A7F3C7: MemStStrCopy
  loc_A7F3CB: FFreeStr var_9C = "": var_A0 = ""
  loc_A7F3D4: FFreeAd var_88 = "": var_A8 = ""
  loc_A7F3DD: FFreeVar var_98 = ""
  loc_A7F3E4: FLdPr Me
  loc_A7F3E7: MemLdStr global_64
  loc_A7F3EA: LitStr vbNullString
  loc_A7F3ED: NeStr
  loc_A7F3EF: BranchF loc_A7F3F3
  loc_A7F3F2: ExitProcHresult
  loc_A7F3F3: FLdPr Me
  loc_A7F3F6: VCallAd Control_ID_FechImpuMsk
  loc_A7F3F9: FStAdFunc var_88
  loc_A7F3FC: FLdPr var_88
  loc_A7F3FF: LateIdLdVar var_98 DispID_15 0
  loc_A7F406: CStrVarTmp
  loc_A7F407: FStStrNoPop var_9C
  loc_A7F40A: LitStr "  /  /    "
  loc_A7F40D: NeStr
  loc_A7F40F: FFree1Str var_9C
  loc_A7F412: FFree1Ad var_88
  loc_A7F415: FFree1Var var_98 = ""
  loc_A7F418: BranchF loc_A7F56A
  loc_A7F41B: FLdPr Me
  loc_A7F41E: VCallAd Control_ID_FechImpuMsk
  loc_A7F421: FStAdFunc var_88
  loc_A7F424: FLdPr var_88
  loc_A7F427: LateIdLdVar var_98 DispID_15 0
  loc_A7F42E: PopAd
  loc_A7F430: FLdRfVar var_C8
  loc_A7F433: FLdRfVar var_98
  loc_A7F436: CStrVarTmp
  loc_A7F437: FStStrNoPop var_9C
  loc_A7F43A: FLdPr Me
  loc_A7F43D: MemLdRfVar from_stack_1.global_96
  loc_A7F440: NewIfNullRf
  loc_A7F444: FLdPr Me
  loc_A7F447: MemLdRfVar from_stack_1.global_92
  loc_A7F44A: NewIfNullRf
  loc_A7F44E: FLdPr Me
  loc_A7F451: MemLdRfVar from_stack_1.global_52
  loc_A7F454: NewIfNullPr clsimputacion
  loc_A7F457: from_stack_4v = clsimputacion.BuscaSaldAuto(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A7F45C: LitI4 1
  loc_A7F461: LitI4 1
  loc_A7F466: LitVarStr var_E8, "currency"
  loc_A7F46B: FStVarCopyObj var_F8
  loc_A7F46E: FLdRfVar var_F8
  loc_A7F471: FLdFPR8 var_C8
  loc_A7F474: CVarR8
  loc_A7F478: ImpAdCallI2 Format$(, )
  loc_A7F47D: FStStrNoPop var_A0
  loc_A7F480: FLdPr Me
  loc_A7F483: VCallAd Control_ID_SaldAutoLbl
  loc_A7F486: FStAdFunc var_A8
  loc_A7F489: FLdPr var_A8
  loc_A7F48C: Me.Caption = from_stack_1
  loc_A7F491: FFreeStr var_9C = ""
  loc_A7F498: FFreeAd var_88 = ""
  loc_A7F49F: FFreeVar var_98 = "": var_B8 = ""
  loc_A7F4A8: FLdRfVar var_9C
  loc_A7F4AB: FLdPr Me
  loc_A7F4AE: VCallAd Control_ID_SaldAutoLbl
  loc_A7F4B1: FStAdFunc var_88
  loc_A7F4B4: FLdPr var_88
  loc_A7F4B7:  = Me.Caption
  loc_A7F4BC: LitVarI4
  loc_A7F4C4: LitVarI2 var_98, 255
  loc_A7F4C9: ILdRf var_9C
  loc_A7F4CC: CR8Str
  loc_A7F4CE: LitI2_Byte 0
  loc_A7F4D0: CR8I2
  loc_A7F4D1: LtR8
  loc_A7F4D2: CVarBoolI2 var_D8
  loc_A7F4D6: FLdRfVar var_F8
  loc_A7F4D9: ImpAdCallFPR4  = IIf(, , )
  loc_A7F4DE: FLdRfVar var_F8
  loc_A7F4E1: CI4Var
  loc_A7F4E3: FLdPr Me
  loc_A7F4E6: VCallAd Control_ID_SaldAutoLbl
  loc_A7F4E9: FStAdFunc var_A8
  loc_A7F4EC: FLdPr var_A8
  loc_A7F4EF: Me.ForeColor = from_stack_1
  loc_A7F4F4: FFree1Str var_9C
  loc_A7F4F7: FFreeAd var_88 = ""
  loc_A7F4FE: FFreeVar var_D8 = "": var_98 = "": var_B8 = ""
  loc_A7F509: FLdRfVar var_9C
  loc_A7F50C: FLdPr Me
  loc_A7F50F: VCallAd Control_ID_SaldAutoLbl
  loc_A7F512: FStAdFunc var_88
  loc_A7F515: FLdPr var_88
  loc_A7F518:  = Me.Caption
  loc_A7F51D: LitVarI4
  loc_A7F525: LitVarI2 var_98, 255
  loc_A7F52A: ILdRf var_9C
  loc_A7F52D: CR8Str
  loc_A7F52F: LitI2_Byte 0
  loc_A7F531: CR8I2
  loc_A7F532: LtR8
  loc_A7F533: CVarBoolI2 var_D8
  loc_A7F537: FLdRfVar var_F8
  loc_A7F53A: ImpAdCallFPR4  = IIf(, , )
  loc_A7F53F: FLdRfVar var_F8
  loc_A7F542: CI4Var
  loc_A7F544: FLdPr Me
  loc_A7F547: VCallAd Control_ID_LabelSaldAuto
  loc_A7F54A: FStAdFunc var_A8
  loc_A7F54D: FLdPr var_A8
  loc_A7F550: Me.ForeColor = from_stack_1
  loc_A7F555: FFree1Str var_9C
  loc_A7F558: FFreeAd var_88 = ""
  loc_A7F55F: FFreeVar var_D8 = "": var_98 = "": var_B8 = ""
  loc_A7F56A: ExitProcHresult
End Function

Private Function Proc_144_69_AB40F4(arg_C, arg_10, arg_14, arg_18, arg_1C) 'AB40F4
  'Data Table: 4FA290
  loc_AB3BF0: ILdRf arg_C
  loc_AB3BF3: FStStrCopy var_88
  loc_AB3BF6: ILdRf arg_10
  loc_AB3BF9: FStStrCopy var_8C
  loc_AB3BFC: ILdRf arg_14
  loc_AB3BFF: FStStrCopy var_90
  loc_AB3C02: ILdRf arg_18
  loc_AB3C05: FStStrCopy var_94
  loc_AB3C08: ILdRf arg_1C
  loc_AB3C0B: FStStrCopy var_98
  loc_AB3C0E: FLdRfVar var_A2
  loc_AB3C11: FLdPrThis
  loc_AB3C12: VCallAd Control_ID_FiltroCbo
  loc_AB3C15: FStAdFunc var_A0
  loc_AB3C18: FLdPr var_A0
  loc_AB3C1B:  = Me.ListIndex
  loc_AB3C20: FLdI2 var_A2
  loc_AB3C23: FStI2 var_A4
  loc_AB3C26: FFree1Ad var_A0
  loc_AB3C29: FLdI2 var_A4
  loc_AB3C2C: LitI2_Byte 0
  loc_AB3C2E: EqI2
  loc_AB3C2F: BranchF loc_AB3C67
  loc_AB3C32: LitStr " AND i.NumeOrpa = '"
  loc_AB3C35: FLdPr Me
  loc_AB3C38: VCallAd Control_ID_FiltroMsk
  loc_AB3C3B: FStAdFunc var_A0
  loc_AB3C3E: FLdPr var_A0
  loc_AB3C41: LateIdLdVar var_B4 DispID_22 0
  loc_AB3C48: CStrVarTmp
  loc_AB3C49: FStStrNoPop var_B8
  loc_AB3C4C: ConcatStr
  loc_AB3C4D: FStStrNoPop var_BC
  loc_AB3C50: LitStr "'"
  loc_AB3C53: ConcatStr
  loc_AB3C54: FStStr var_9C
  loc_AB3C57: FFreeStr var_B8 = ""
  loc_AB3C5E: FFree1Ad var_A0
  loc_AB3C61: FFree1Var var_B4 = ""
  loc_AB3C64: Branch loc_AB3E16
  loc_AB3C67: FLdI2 var_A4
  loc_AB3C6A: LitI2_Byte 1
  loc_AB3C6C: EqI2
  loc_AB3C6D: BranchF loc_AB3CA5
  loc_AB3C70: LitStr " AND ExorImpu LIKE '"
  loc_AB3C73: FLdPr Me
  loc_AB3C76: VCallAd Control_ID_FiltroMsk
  loc_AB3C79: FStAdFunc var_A0
  loc_AB3C7C: FLdPr var_A0
  loc_AB3C7F: LateIdLdVar var_B4 DispID_22 0
  loc_AB3C86: CStrVarTmp
  loc_AB3C87: FStStrNoPop var_B8
  loc_AB3C8A: ConcatStr
  loc_AB3C8B: FStStrNoPop var_BC
  loc_AB3C8E: LitStr Chr(37) & "'"
  loc_AB3C91: ConcatStr
  loc_AB3C92: FStStr var_9C
  loc_AB3C95: FFreeStr var_B8 = ""
  loc_AB3C9C: FFree1Ad var_A0
  loc_AB3C9F: FFree1Var var_B4 = ""
  loc_AB3CA2: Branch loc_AB3E16
  loc_AB3CA5: FLdI2 var_A4
  loc_AB3CA8: LitI2_Byte 2
  loc_AB3CAA: EqI2
  loc_AB3CAB: BranchF loc_AB3CE3
  loc_AB3CAE: LitStr " AND i.ExpeImpu LIKE '"
  loc_AB3CB1: FLdPr Me
  loc_AB3CB4: VCallAd Control_ID_FiltroMsk
  loc_AB3CB7: FStAdFunc var_A0
  loc_AB3CBA: FLdPr var_A0
  loc_AB3CBD: LateIdLdVar var_B4 DispID_22 0
  loc_AB3CC4: CStrVarTmp
  loc_AB3CC5: FStStrNoPop var_B8
  loc_AB3CC8: ConcatStr
  loc_AB3CC9: FStStrNoPop var_BC
  loc_AB3CCC: LitStr Chr(37) & "'"
  loc_AB3CCF: ConcatStr
  loc_AB3CD0: FStStr var_9C
  loc_AB3CD3: FFreeStr var_B8 = ""
  loc_AB3CDA: FFree1Ad var_A0
  loc_AB3CDD: FFree1Var var_B4 = ""
  loc_AB3CE0: Branch loc_AB3E16
  loc_AB3CE3: FLdI2 var_A4
  loc_AB3CE6: LitI2_Byte 3
  loc_AB3CE8: EqI2
  loc_AB3CE9: BranchF loc_AB3D21
  loc_AB3CEC: LitStr " AND DetaImpu LIKE '" & Chr(37)
  loc_AB3CEF: FLdPr Me
  loc_AB3CF2: VCallAd Control_ID_FiltroMsk
  loc_AB3CF5: FStAdFunc var_A0
  loc_AB3CF8: FLdPr var_A0
  loc_AB3CFB: LateIdLdVar var_B4 DispID_22 0
  loc_AB3D02: CStrVarTmp
  loc_AB3D03: FStStrNoPop var_B8
  loc_AB3D06: ConcatStr
  loc_AB3D07: FStStrNoPop var_BC
  loc_AB3D0A: LitStr Chr(37) & "'"
  loc_AB3D0D: ConcatStr
  loc_AB3D0E: FStStr var_9C
  loc_AB3D11: FFreeStr var_B8 = ""
  loc_AB3D18: FFree1Ad var_A0
  loc_AB3D1B: FFree1Var var_B4 = ""
  loc_AB3D1E: Branch loc_AB3E16
  loc_AB3D21: FLdI2 var_A4
  loc_AB3D24: LitI2_Byte 4
  loc_AB3D26: EqI2
  loc_AB3D27: BranchF loc_AB3D5F
  loc_AB3D2A: LitStr " AND i.CodiPart LIKE '"
  loc_AB3D2D: FLdPr Me
  loc_AB3D30: VCallAd Control_ID_FiltroMsk
  loc_AB3D33: FStAdFunc var_A0
  loc_AB3D36: FLdPr var_A0
  loc_AB3D39: LateIdLdVar var_B4 DispID_22 0
  loc_AB3D40: CStrVarTmp
  loc_AB3D41: FStStrNoPop var_B8
  loc_AB3D44: ConcatStr
  loc_AB3D45: FStStrNoPop var_BC
  loc_AB3D48: LitStr Chr(37) & "'"
  loc_AB3D4B: ConcatStr
  loc_AB3D4C: FStStr var_9C
  loc_AB3D4F: FFreeStr var_B8 = ""
  loc_AB3D56: FFree1Ad var_A0
  loc_AB3D59: FFree1Var var_B4 = ""
  loc_AB3D5C: Branch loc_AB3E16
  loc_AB3D5F: FLdI2 var_A4
  loc_AB3D62: LitI2_Byte 5
  loc_AB3D64: EqI2
  loc_AB3D65: BranchF loc_AB3D9D
  loc_AB3D68: LitStr " AND i.CodiOrga LIKE '"
  loc_AB3D6B: FLdPr Me
  loc_AB3D6E: VCallAd Control_ID_FiltroMsk
  loc_AB3D71: FStAdFunc var_A0
  loc_AB3D74: FLdPr var_A0
  loc_AB3D77: LateIdLdVar var_B4 DispID_22 0
  loc_AB3D7E: CStrVarTmp
  loc_AB3D7F: FStStrNoPop var_B8
  loc_AB3D82: ConcatStr
  loc_AB3D83: FStStrNoPop var_BC
  loc_AB3D86: LitStr Chr(37) & "'"
  loc_AB3D89: ConcatStr
  loc_AB3D8A: FStStr var_9C
  loc_AB3D8D: FFreeStr var_B8 = ""
  loc_AB3D94: FFree1Ad var_A0
  loc_AB3D97: FFree1Var var_B4 = ""
  loc_AB3D9A: Branch loc_AB3E16
  loc_AB3D9D: FLdI2 var_A4
  loc_AB3DA0: LitI2_Byte 6
  loc_AB3DA2: EqI2
  loc_AB3DA3: BranchF loc_AB3DDB
  loc_AB3DA6: LitStr " AND i.CodiFifu LIKE '"
  loc_AB3DA9: FLdPr Me
  loc_AB3DAC: VCallAd Control_ID_FiltroMsk
  loc_AB3DAF: FStAdFunc var_A0
  loc_AB3DB2: FLdPr var_A0
  loc_AB3DB5: LateIdLdVar var_B4 DispID_22 0
  loc_AB3DBC: CStrVarTmp
  loc_AB3DBD: FStStrNoPop var_B8
  loc_AB3DC0: ConcatStr
  loc_AB3DC1: FStStrNoPop var_BC
  loc_AB3DC4: LitStr Chr(37) & "'"
  loc_AB3DC7: ConcatStr
  loc_AB3DC8: FStStr var_9C
  loc_AB3DCB: FFreeStr var_B8 = ""
  loc_AB3DD2: FFree1Ad var_A0
  loc_AB3DD5: FFree1Var var_B4 = ""
  loc_AB3DD8: Branch loc_AB3E16
  loc_AB3DDB: FLdI2 var_A4
  loc_AB3DDE: LitI2_Byte 7
  loc_AB3DE0: EqI2
  loc_AB3DE1: BranchF loc_AB3E16
  loc_AB3DE4: LitStr " AND DetaProv LIKE '"
  loc_AB3DE7: FLdPr Me
  loc_AB3DEA: VCallAd Control_ID_FiltroMsk
  loc_AB3DED: FStAdFunc var_A0
  loc_AB3DF0: FLdPr var_A0
  loc_AB3DF3: LateIdLdVar var_B4 DispID_22 0
  loc_AB3DFA: CStrVarTmp
  loc_AB3DFB: FStStrNoPop var_B8
  loc_AB3DFE: ConcatStr
  loc_AB3DFF: FStStrNoPop var_BC
  loc_AB3E02: LitStr Chr(37) & "'"
  loc_AB3E05: ConcatStr
  loc_AB3E06: FStStr var_9C
  loc_AB3E09: FFreeStr var_B8 = ""
  loc_AB3E10: FFree1Ad var_A0
  loc_AB3E13: FFree1Var var_B4 = ""
  loc_AB3E16: LitI4 &HB
  loc_AB3E1B: CI2I4
  loc_AB3E1C: FLdPr Me
  loc_AB3E1F: Me.MousePointer = from_stack_1
  loc_AB3E24: FLdPr Me
  loc_AB3E27: VCallAd Control_ID_FiltroMsk
  loc_AB3E2A: FStAdFunc var_A0
  loc_AB3E2D: FLdPr var_A0
  loc_AB3E30: LateIdLdVar var_B4 DispID_22 0
  loc_AB3E37: PopAd
  loc_AB3E39: LitStr "SELECT i.*, DetaInsu, DetaProv, DetaPart, DetaOrga, DetaUnga, DetaFifu"
  loc_AB3E3C: LitStr " , Left(NumeFact,3) TifaDeve, Substr(NumeFact,4,4) SufaDeve, Right(NumeFact,8) NufaDeve"
  loc_AB3E3F: ConcatStr
  loc_AB3E40: FStStrNoPop var_B8
  loc_AB3E43: LitStr ", Sum(PagaImpu) ImpoImpu, Sum(PagaImpu) SaldImpu, 1 Cantidad, Sum(PagaImpu) ImunImpu"
  loc_AB3E46: ConcatStr
  loc_AB3E47: FStStrNoPop var_BC
  loc_AB3E4A: LitStr " FROM imputacion i"
  loc_AB3E4D: ConcatStr
  loc_AB3E4E: FStStrNoPop var_C0
  loc_AB3E51: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AB3E54: ConcatStr
  loc_AB3E55: FStStrNoPop var_C4
  loc_AB3E58: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_AB3E5B: ConcatStr
  loc_AB3E5C: FStStrNoPop var_C8
  loc_AB3E5F: LitStr " INNER JOIN unidadgasto ug ON ug.CodiUnga = i.CodiUnga"
  loc_AB3E62: ConcatStr
  loc_AB3E63: FStStrNoPop var_CC
  loc_AB3E66: LitStr " INNER JOIN finalidad f ON f.PeriInfo = i.PeriInfo AND f.CodiFifu = i.CodiFifu"
  loc_AB3E69: ConcatStr
  loc_AB3E6A: FStStrNoPop var_D0
  loc_AB3E6D: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_AB3E70: ConcatStr
  loc_AB3E71: FStStrNoPop var_D4
  loc_AB3E74: LitStr " INNER JOIN infogov.insumo ii ON ii.CodiInsu = i.CodiInsu"
  loc_AB3E77: ConcatStr
  loc_AB3E78: FStStrNoPop var_D8
  loc_AB3E7B: LitStr " WHERE i.PeriInfo = '"
  loc_AB3E7E: ConcatStr
  loc_AB3E7F: CVarStr var_13C
  loc_AB3E82: LitVarI2 var_11C, 0
  loc_AB3E87: ImpAdLdRf MemVar_C3D064
  loc_AB3E8A: CVarRef
  loc_AB3E8F: FLdRfVar var_B4
  loc_AB3E92: CStrVarTmp
  loc_AB3E93: FStStrNoPop var_DC
  loc_AB3E96: LitStr vbNullString
  loc_AB3E99: NeStr
  loc_AB3E9B: CVarBoolI2 var_EC
  loc_AB3E9F: FLdRfVar var_12C
  loc_AB3EA2: ImpAdCallFPR4  = IIf(, , )
  loc_AB3EA7: FLdRfVar var_12C
  loc_AB3EAA: ConcatVar var_14C
  loc_AB3EAE: LitVarStr var_15C, "'"
  loc_AB3EB3: ConcatVar var_16C
  loc_AB3EB7: LitVarStr var_17C, " AND i.PagaImpu != 0"
  loc_AB3EBC: ConcatVar var_18C
  loc_AB3EC0: ILdRf var_9C
  loc_AB3EC3: CVarStr var_19C
  loc_AB3EC6: ConcatVar var_1AC
  loc_AB3ECA: LitVarStr var_1BC, " GROUP BY i.PeriInfo, i.CodiPart, i.CodiOrga, i.CodiFifu, i.CodiInsu, i.CodiUnga, i.ExorImpu, i.ExpeImpu, i.NumeLiqu, i.NumeOrpa, i.CucuPers, i.NumeFact"
  loc_AB3ECF: ConcatVar var_1CC
  loc_AB3ED3: LitVarStr var_1DC, " HAVING ImpoImpu > 0;"
  loc_AB3ED8: ConcatVar var_1EC
  loc_AB3EDC: CStrVarVal var_1F0
  loc_AB3EE0: FLdPr Me
  loc_AB3EE3: MemLdRfVar from_stack_1.global_52
  loc_AB3EE6: NewIfNullPr clsimputacion
  loc_AB3EE9: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AB3EEE: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AB3F07: FFree1Ad var_A0
  loc_AB3F0A: FFreeVar var_B4 = "": var_EC = "": var_11C = "": var_13C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_AB3F23: FLdRfVar var_1F4
  loc_AB3F26: FLdPr Me
  loc_AB3F29: MemLdRfVar from_stack_1.global_52
  loc_AB3F2C: NewIfNullPr clsimputacion
  loc_AB3F2F: from_stack_1 = clsimputacion.RecordCount
  loc_AB3F34: ILdRf var_1F4
  loc_AB3F37: LitI4 0
  loc_AB3F3C: GtI4
  loc_AB3F3D: BranchF loc_AB40E5
  loc_AB3F40: FLdRfVar var_B4
  loc_AB3F43: FLdRfVar var_1FC
  loc_AB3F46: LitVarStr var_EC, "PeriInfo"
  loc_AB3F4B: PopAdLdVar
  loc_AB3F4C: FLdRfVar var_1F8
  loc_AB3F4F: FLdRfVar var_A0
  loc_AB3F52: FLdPr Me
  loc_AB3F55: MemLdRfVar from_stack_1.global_52
  loc_AB3F58: NewIfNullPr clsimputacion
  loc_AB3F5B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AB3F60: FLdPr var_A0
  loc_AB3F63:  = Me.Fields
  loc_AB3F68: FLdPr var_1F8
  loc_AB3F6B: from_stack_2 = Me.Item(from_stack_1)
  loc_AB3F70: FLdPr var_1FC
  loc_AB3F73:  = Me.Value
  loc_AB3F78: FLdRfVar var_B4
  loc_AB3F7B: FnCStrVar
  loc_AB3F7D: FStStrNoPop var_B8
  loc_AB3F80: LitStr vbNullString
  loc_AB3F83: NeStr
  loc_AB3F85: CVarBoolI2 var_15C
  loc_AB3F89: FLdRfVar var_11C
  loc_AB3F8C: FLdRfVar var_208
  loc_AB3F8F: LitVarStr var_FC, "CodiPart"
  loc_AB3F94: PopAdLdVar
  loc_AB3F95: FLdRfVar var_204
  loc_AB3F98: FLdRfVar var_200
  loc_AB3F9B: FLdPr Me
  loc_AB3F9E: MemLdRfVar from_stack_1.global_52
  loc_AB3FA1: NewIfNullPr clsimputacion
  loc_AB3FA4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AB3FA9: FLdPr var_200
  loc_AB3FAC:  = Me.Fields
  loc_AB3FB1: FLdPr var_204
  loc_AB3FB4: from_stack_2 = Me.Item(from_stack_1)
  loc_AB3FB9: FLdPr var_208
  loc_AB3FBC:  = Me.Value
  loc_AB3FC1: FLdRfVar var_11C
  loc_AB3FC4: LitVarStr var_10C, vbNullString
  loc_AB3FC9: HardType
  loc_AB3FCA: NeVar var_12C
  loc_AB3FCE: AndVar var_13C
  loc_AB3FD2: FLdRfVar var_14C
  loc_AB3FD5: FLdRfVar var_214
  loc_AB3FD8: LitVarStr var_17C, "CodiOrga"
  loc_AB3FDD: PopAdLdVar
  loc_AB3FDE: FLdRfVar var_210
  loc_AB3FE1: FLdRfVar var_20C
  loc_AB3FE4: FLdPr Me
  loc_AB3FE7: MemLdRfVar from_stack_1.global_52
  loc_AB3FEA: NewIfNullPr clsimputacion
  loc_AB3FED: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AB3FF2: FLdPr var_20C
  loc_AB3FF5:  = Me.Fields
  loc_AB3FFA: FLdPr var_210
  loc_AB3FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_AB4002: FLdPr var_214
  loc_AB4005:  = Me.Value
  loc_AB400A: FLdRfVar var_14C
  loc_AB400D: LitVarStr var_19C, vbNullString
  loc_AB4012: HardType
  loc_AB4013: NeVar var_16C
  loc_AB4017: AndVar var_18C
  loc_AB401B: CBoolVarNull
  loc_AB401D: FFree1Str var_B8
  loc_AB4020: FFreeAd var_A0 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = ""
  loc_AB4035: FFreeVar var_B4 = "": var_11C = "": var_15C = ""
  loc_AB4040: BranchF loc_AB40E5
  loc_AB4043: FLdRfVar var_B4
  loc_AB4046: FLdRfVar var_1FC
  loc_AB4049: LitVarStr var_EC, "PeriInfo"
  loc_AB404E: PopAdLdVar
  loc_AB404F: FLdRfVar var_1F8
  loc_AB4052: FLdRfVar var_A0
  loc_AB4055: FLdPr Me
  loc_AB4058: MemLdRfVar from_stack_1.global_52
  loc_AB405B: NewIfNullPr clsimputacion
  loc_AB405E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AB4063: FLdPr var_A0
  loc_AB4066:  = Me.Fields
  loc_AB406B: FLdPr var_1F8
  loc_AB406E: from_stack_2 = Me.Item(from_stack_1)
  loc_AB4073: FLdPr var_1FC
  loc_AB4076:  = Me.Value
  loc_AB407B: FLdRfVar var_11C
  loc_AB407E: FLdRfVar var_208
  loc_AB4081: LitVarStr var_FC, "IdImpu"
  loc_AB4086: PopAdLdVar
  loc_AB4087: FLdRfVar var_204
  loc_AB408A: FLdRfVar var_200
  loc_AB408D: FLdPr Me
  loc_AB4090: MemLdRfVar from_stack_1.global_52
  loc_AB4093: NewIfNullPr clsimputacion
  loc_AB4096: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AB409B: FLdPr var_200
  loc_AB409E:  = Me.Fields
  loc_AB40A3: FLdPr var_204
  loc_AB40A6: from_stack_2 = Me.Item(from_stack_1)
  loc_AB40AB: FLdPr var_208
  loc_AB40AE:  = Me.Value
  loc_AB40B3: LitI2_Byte 0
  loc_AB40B5: PopTmpLdAd2 var_A2
  loc_AB40B8: FLdRfVar var_11C
  loc_AB40BB: CI4Var
  loc_AB40BD: FLdRfVar var_B4
  loc_AB40C0: CI2Var
  loc_AB40C1: FLdPr Me
  loc_AB40C4: MemLdRfVar from_stack_1.global_52
  loc_AB40C7: NewIfNullPr clsimputacion
  loc_AB40CA: Call clsimputacion.Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AB40CF: FFreeAd var_A0 = "": var_1F8 = "": var_200 = "": var_204 = "": var_1FC = ""
  loc_AB40DE: FFreeVar var_B4 = ""
  loc_AB40E5: LitI4 0
  loc_AB40EA: CI2I4
  loc_AB40EB: FLdPr Me
  loc_AB40EE: Me.MousePointer = from_stack_1
  loc_AB40F3: ExitProcHresult
End Function

Private Function Proc_144_70_9E2298() '9E2298
  'Data Table: 4FA290
  loc_9E2190: FLdPr Me
  loc_9E2193: MemLdRfVar from_stack_1.global_116
  loc_9E2196: NewIfNullRf
  loc_9E219A: ImpAdLdI2 MemVar_C3D064
  loc_9E219D: ImpAdCallFPR4 Proc_259_23_AE2098(, )
  loc_9E21A2: LitStr "Municipalidad de Guaymallén"
  loc_9E21A5: FStStrCopy var_88
  loc_9E21A8: ILdRf var_88
  loc_9E21AB: LitStr "Municipalidad de Guaymallén"
  loc_9E21AE: EqStr
  loc_9E21B0: BranchF loc_9E2211
  loc_9E21B3: FLdPr Me
  loc_9E21B6: VCallAd Control_ID_CodiCucoMsk
  loc_9E21B9: FStAdFunc var_8C
  loc_9E21BC: FLdPr var_8C
  loc_9E21BF: LateIdLdVar var_9C DispID_22 0
  loc_9E21C6: CStrVarTmp
  loc_9E21C7: FStStrNoPop var_A0
  loc_9E21CA: LitStr "8102040000"
  loc_9E21CD: EqStr
  loc_9E21CF: FLdPr Me
  loc_9E21D2: VCallAd Control_ID_CodiCucoMsk
  loc_9E21D5: FStAdFunc var_A4
  loc_9E21D8: FLdPr var_A4
  loc_9E21DB: LateIdLdVar var_B4 DispID_22 0
  loc_9E21E2: CStrVarTmp
  loc_9E21E3: FStStrNoPop var_B8
  loc_9E21E6: LitStr "8102080000"
  loc_9E21E9: EqStr
  loc_9E21EB: OrI4
  loc_9E21EC: FFreeStr var_A0 = ""
  loc_9E21F3: FFreeAd var_8C = ""
  loc_9E21FA: FFreeVar var_9C = ""
  loc_9E2201: BranchF loc_9E220E
  loc_9E2204: LitStr vbNullString
  loc_9E2207: FLdPr Me
  loc_9E220A: MemStStrCopy
  loc_9E220E: Branch loc_9E224E
  loc_9E2211: ILdRf var_88
  loc_9E2214: LitStr "Municipalidad de Santa Rosa"
  loc_9E2217: EqStr
  loc_9E2219: BranchF loc_9E224E
  loc_9E221C: FLdPr Me
  loc_9E221F: VCallAd Control_ID_CodiCucoMsk
  loc_9E2222: FStAdFunc var_8C
  loc_9E2225: FLdPr var_8C
  loc_9E2228: LateIdLdVar var_9C DispID_22 0
  loc_9E222F: CStrVarTmp
  loc_9E2230: FStStrNoPop var_A0
  loc_9E2233: LitStr "1113000000"
  loc_9E2236: EqStr
  loc_9E2238: FFree1Str var_A0
  loc_9E223B: FFree1Ad var_8C
  loc_9E223E: FFree1Var var_9C = ""
  loc_9E2241: BranchF loc_9E224E
  loc_9E2244: LitStr vbNullString
  loc_9E2247: FLdPr Me
  loc_9E224A: MemStStrCopy
  loc_9E224E: FLdPr Me
  loc_9E2251: VCallAd Control_ID_CodiCucoMsk
  loc_9E2254: FStAdFunc var_8C
  loc_9E2257: FLdPr var_8C
  loc_9E225A: LateIdLdVar var_9C DispID_22 0
  loc_9E2261: CStrVarTmp
  loc_9E2262: FStStrNoPop var_B8
  loc_9E2265: FLdRfVar var_A0
  loc_9E2268: FLdPr Me
  loc_9E226B: MemLdRfVar from_stack_1.global_116
  loc_9E226E: NewIfNullPr tblparaconta
  loc_9E2271: from_stack_1v = tblparaconta.TranPacoGet()
  loc_9E2276: ILdRf var_A0
  loc_9E2279: EqStr
  loc_9E227B: FFreeStr var_B8 = ""
  loc_9E2282: FFree1Ad var_8C
  loc_9E2285: FFree1Var var_9C = ""
  loc_9E2288: BranchF loc_9E2295
  loc_9E228B: LitStr vbNullString
  loc_9E228E: FLdPr Me
  loc_9E2291: MemStStrCopy
  loc_9E2295: ExitProcHresult
End Function
