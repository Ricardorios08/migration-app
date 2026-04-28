VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmPreventivaDefinitivaDevengado
  Caption = "Imputaciones Preventivas, Definitivas y Devengados"
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
  ClientHeight = 9780
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
      OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":0000
    End
  End
  Begin VB.Frame Frame1
    Caption = " Imputaciones Preventivas, Definitivas y Devengados "
    Left = 120
    Top = 3720
    Width = 15255
    Height = 5895
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CheckBox chkRepetirExpePago
      Left = 10080
      Top = 480
      Width = 255
      Height = 300
      TabIndex = 10
    End
    Begin VB.Frame FrameCompras
      Left = 10680
      Top = 1320
      Width = 4335
      Height = 1935
      TabIndex = 30
      Begin VB.Label Label9
        Caption = "Item:"
        Left = 2655
        Top = 420
        Width = 540
        Height = 300
        TabIndex = 34
        AutoSize = -1  'True
      End
      Begin VB.Label ItemLbl
        Left = 3285
        Top = 360
        Width = 975
        Height = 360
        TabIndex = 32
        BorderStyle = 1 'Fixed Single
        DataField = "Item"
      End
      Begin VB.Label CodiNopeLbl
        Left = 885
        Top = 360
        Width = 975
        Height = 360
        TabIndex = 31
        BorderStyle = 1 'Fixed Single
        DataField = "CodiNope"
      End
      Begin VB.Label Label19
        Caption = "N.P.:"
        Left = 300
        Top = 420
        Width = 495
        Height = 300
        TabIndex = 33
        AutoSize = -1  'True
      End
      Begin VB.Label Label16
        Caption = "O.C.:"
        Left = 270
        Top = 900
        Width = 525
        Height = 300
        TabIndex = 37
        AutoSize = -1  'True
      End
      Begin VB.Label CodiOrcoLbl
        Left = 900
        Top = 840
        Width = 975
        Height = 360
        TabIndex = 35
        BorderStyle = 1 'Fixed Single
        DataField = "CodiOrco"
      End
      Begin VB.Label CodiReceLbl
        Left = 3300
        Top = 1320
        Width = 975
        Height = 360
        TabIndex = 39
        BorderStyle = 1 'Fixed Single
        DataField = "CodiRece"
      End
      Begin VB.Label Label23
        Caption = "Recep.:"
        Left = 2370
        Top = 1380
        Width = 825
        Height = 300
        TabIndex = 40
        AutoSize = -1  'True
      End
      Begin VB.Label AlternLbl
        Left = 3300
        Top = 840
        Width = 975
        Height = 360
        TabIndex = 36
        BorderStyle = 1 'Fixed Single
        DataField = "Altern"
      End
      Begin VB.Label Label25
        Caption = "Alternat.:"
        Left = 2235
        Top = 900
        Width = 960
        Height = 300
        TabIndex = 38
        AutoSize = -1  'True
      End
    End
    Begin VB.CheckBox chkRepetirFactura
      Left = 1200
      Top = 4920
      Width = 255
      Height = 300
      TabIndex = 60
    End
    Begin VB.CheckBox chkRepetirProveedor
      Left = 840
      Top = 4440
      Width = 255
      Height = 300
      TabIndex = 55
    End
    Begin VB.TextBox ImunImpuTxt
      Left = 5160
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 50
      MaxLength = 14
      DataField = "ImunImpu"
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
      Left = 1200
      Top = 3960
      Width = 1575
      Height = 375
      TabIndex = 48
      MaxLength = 14
      DataField = "CantImpu"
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
      Left = 12720
      Top = 457
      Width = 2175
      Height = 360
      TabIndex = 12
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
      TabIndex = 63
      MaxLength = 8
      DataField = "NufaDeve"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
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
      TabIndex = 62
      MaxLength = 4
      DataField = "SufaDeve"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
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
      TabIndex = 61
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
      OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":0088
      DataField = "CodiFifu"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2400
      Top = 1440
      Width = 1335
      Height = 360
      TabIndex = 19
      OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":0110
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox CodiInsuMsk
      Left = 2400
      Top = 1920
      Width = 1335
      Height = 360
      TabIndex = 22
      OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":0198
      DataField = "CodiInsu"
    End
    Begin MSMask.MaskEdBox ExorImpuMsk
      Left = 7320
      Top = 450
      Width = 2175
      Height = 360
      TabIndex = 9
      OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":0230
      DataField = "ExorImpu"
    End
    Begin VB.TextBox DetaImpuTxt
      Left = 2400
      Top = 5400
      Width = 12255
      Height = 360
      TabIndex = 65
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
      Left = 9120
      Top = 3960
      Width = 1815
      Height = 360
      TabIndex = 52
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
      Top = 2400
      Width = 1575
      Height = 360
      TabIndex = 25
      OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":0290
      DataField = "CodiPart"
    End
    Begin MSMask.MaskEdBox FechImpuMsk
      Left = 1680
      Top = 3420
      Width = 1335
      Height = 360
      TabIndex = 42
      OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":0318
      DataField = "FechImpu"
    End
    Begin VB.TextBox CucuPersTxt
      Left = 2400
      Top = 4440
      Width = 1815
      Height = 360
      TabIndex = 57
      MaxLength = 70
      DataField = "CucuPers"
    End
    Begin VB.TextBox CodiUngaTxt
      Left = 2400
      Top = 960
      Width = 1335
      Height = 360
      TabIndex = 14
      MaxLength = 70
      DataField = "CodiUnga"
    End
    Begin MSMask.MaskEdBox FefaDeveMsk
      Left = 9105
      Top = 3420
      Width = 1335
      Height = 360
      TabIndex = 45
      OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":03C8
      DataField = "FefaDeve"
    End
    Begin MSMask.MaskEdBox FechDeveMsk
      Left = 5430
      Top = 3420
      Width = 1335
      Height = 360
      TabIndex = 44
      OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":0478
      DataField = "FechDeve"
    End
    Begin VB.ComboBox cboSeleccion
      Style = 2
      Left = 240
      Top = 450
      Width = 4095
      Height = 360
      TabIndex = 7
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label24
      Caption = "Fecha Deveng.:"
      Left = 3720
      Top = 3450
      Width = 1680
      Height = 300
      TabIndex = 43
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
    Begin VB.Label LabelSaldAuto
      Caption = "Saldo Autorizado:"
      Left = 10680
      Top = 990
      Width = 1890
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
    End
    Begin VB.Label SaldAutoLbl
      Left = 12720
      Top = 960
      Width = 1935
      Height = 360
      TabIndex = 17
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
    Begin VB.Label Label22
      Caption = "Fecha Factura:"
      Left = 7440
      Top = 3480
      Width = 1620
      Height = 300
      TabIndex = 46
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
      Left = 3840
      Top = 960
      Width = 6615
      Height = 360
      TabIndex = 15
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
      Top = 960
      Width = 1875
      Height = 300
      TabIndex = 13
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
    Begin VB.Label Label12
      Caption = "Importe Unitario:"
      Left = 3300
      Top = 3960
      Width = 1770
      Height = 300
      TabIndex = 49
      AutoSize = -1  'True
    End
    Begin VB.Label Label11
      Caption = "Cantidad:"
      Left = 120
      Top = 3960
      Width = 1020
      Height = 300
      TabIndex = 47
      AutoSize = -1  'True
    End
    Begin VB.Label SaldImpuLbl
      Left = 13200
      Top = 3960
      Width = 1935
      Height = 360
      TabIndex = 54
      BorderStyle = 1 'Fixed Single
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
    End
    Begin VB.Label DetaInsuLbl
      Left = 3840
      Top = 1920
      Width = 6615
      Height = 360
      TabIndex = 23
      BorderStyle = 1 'Fixed Single
      DataField = "DetaInsu"
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
    Begin VB.Label DetaProvLbl
      Left = 4320
      Top = 4440
      Width = 9855
      Height = 360
      TabIndex = 58
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
      Width = 6375
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
      Top = 1440
      Width = 6615
      Height = 360
      TabIndex = 20
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
      Top = 2400
      Width = 6375
      Height = 360
      TabIndex = 26
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
      Left = 10440
      Top = 480
      Width = 2205
      Height = 300
      TabIndex = 11
      AutoSize = -1  'True
    End
    Begin VB.Label Label17
      Caption = "Factura:"
      Left = 1440
      Top = 4920
      Width = 885
      Height = 300
      TabIndex = 59
      AutoSize = -1  'True
    End
    Begin VB.Label Label15
      Caption = "Proveedor:"
      Left = 1200
      Top = 4440
      Width = 1140
      Height = 300
      TabIndex = 56
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
      Caption = "Saldo exped.:"
      Left = 11640
      Top = 3960
      Width = 1440
      Height = 300
      TabIndex = 53
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
      Caption = ":"
      Left = 870
      Top = 1440
      Width = 60
      Height = 300
      TabIndex = 18
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
    Begin VB.Label Label3
      Caption = "Insumo:"
      Left = 1455
      Top = 1920
      Width = 855
      Height = 300
      TabIndex = 21
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
      Top = 2400
      Width = 810
      Height = 300
      TabIndex = 24
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
      Caption = "Fecha Imp.:"
      Left = 330
      Top = 3450
      Width = 1260
      Height = 300
      TabIndex = 41
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
      Left = 5160
      Top = 480
      Width = 2115
      Height = 300
      TabIndex = 8
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Importe Total:"
      Left = 7560
      Top = 3960
      Width = 1470
      Height = 300
      TabIndex = 51
      AutoSize = -1  'True
    End
    Begin VB.Label Label18
      Caption = "Detalle:"
      Left = 1500
      Top = 5400
      Width = 810
      Height = 300
      TabIndex = 64
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 15255
    Height = 1935
    TabIndex = 5
    OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":0528
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":0C9C
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 16110
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmPreventivaDefinitivaDevengado.frx":881A
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmPreventivaDefinitivaDevengado.frx":8D76
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmPreventivaDefinitivaDevengado"


Private Sub ExorImpuMsk_UnknownEvent_0 '94C758
  'Data Table: 500268
  loc_94C744: FLdPr Me
  loc_94C747: VCallAd Control_ID_ExorImpuMsk
  loc_94C74A: CVarAd
  loc_94C74E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C753: FFree1Var var_94 = ""
  loc_94C756: ExitProcHresult
End Sub

Private Sub ExorImpuMsk_UnknownEvent_8 '9E65E8
  'Data Table: 500268
  loc_9E64DC: FLdRfVar var_8A
  loc_9E64DF: FLdPr Me
  loc_9E64E2: VCallAd Control_ID_cmdCancelar
  loc_9E64E5: FStAdFunc var_88
  loc_9E64E8: FLdPr var_88
  loc_9E64EB:  = Me.Value
  loc_9E64F0: FLdI2 var_8A
  loc_9E64F3: NotI4
  loc_9E64F4: FLdPr Me
  loc_9E64F7: VCallAd Control_ID_ExorImpuMsk
  loc_9E64FA: FStAdFunc var_90
  loc_9E64FD: FLdPr var_90
  loc_9E6500: LateIdLdVar var_A0 DispID_13 -32767
  loc_9E6507: CBoolVar
  loc_9E6509: AndI4
  loc_9E650A: FFreeAd var_88 = ""
  loc_9E6511: FFree1Var var_A0 = ""
  loc_9E6514: BranchF loc_9E65E7
  loc_9E6517: FLdPr Me
  loc_9E651A: VCallAd Control_ID_ExorImpuMsk
  loc_9E651D: FStAdFunc var_88
  loc_9E6520: FLdPr var_88
  loc_9E6523: LateIdLdVar var_A0 DispID_22 0
  loc_9E652A: CStrVarTmp
  loc_9E652B: CVarStr var_B0
  loc_9E652E: FLdRfVar var_C0
  loc_9E6531: ImpAdCallFPR4  = Ucase()
  loc_9E6536: FLdRfVar var_C0
  loc_9E6539: CStrVarTmp
  loc_9E653A: CVarStr var_D0
  loc_9E653D: PopAdLdVar
  loc_9E653E: FLdPr Me
  loc_9E6541: VCallAd Control_ID_ExorImpuMsk
  loc_9E6544: FStAdFunc var_90
  loc_9E6547: FLdPr var_90
  loc_9E654A: LateIdSt
  loc_9E654F: FFreeAd var_88 = ""
  loc_9E6556: FFreeVar var_A0 = "": var_B0 = "": var_C0 = ""
  loc_9E6561: FLdPr Me
  loc_9E6564: VCallAd Control_ID_ExorImpuMsk
  loc_9E6567: FStAdFunc var_88
  loc_9E656A: FLdPr var_88
  loc_9E656D: LateIdLdVar var_A0 DispID_15 0
  loc_9E6574: PopAd
  loc_9E6576: LitI2_Byte 0
  loc_9E6578: PopTmpLdAd2 var_E8
  loc_9E657B: LitI2_Byte 0
  loc_9E657D: PopTmpLdAd2 var_E6
  loc_9E6580: LitI2_Byte 0
  loc_9E6582: PopTmpLdAd2 var_8A
  loc_9E6585: FLdRfVar var_A0
  loc_9E6588: CStrVarTmp
  loc_9E6589: FStStrNoPop var_E4
  loc_9E658C: LitStr "Expediente Original"
  loc_9E658F: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9E6594: FStStrNoPop var_EC
  loc_9E6597: FLdPr Me
  loc_9E659A: MemStStrCopy
  loc_9E659E: FFreeStr var_E4 = ""
  loc_9E65A5: FFree1Ad var_88
  loc_9E65A8: FFree1Var var_A0 = ""
  loc_9E65AB: FLdPr Me
  loc_9E65AE: VCallAd Control_ID_ExorImpuMsk
  loc_9E65B1: FStAdFunc var_F4
  loc_9E65B4: LitNothing
  loc_9E65B6: CastAd
  loc_9E65B9: FStAdFunc var_F0
  loc_9E65BC: FLdRfVar var_F0
  loc_9E65BF: FLdZeroAd var_F4
  loc_9E65C2: FStAdFuncNoPop
  loc_9E65C5: CastAd
  loc_9E65C8: FStAdFunc var_90
  loc_9E65CB: FLdRfVar var_90
  loc_9E65CE: FLdPr Me
  loc_9E65D1: MemLdRfVar from_stack_1.global_64
  loc_9E65D4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E65D9: IStI2 KeyCode
  loc_9E65DC: FFreeAd var_88 = "": var_90 = "": var_F0 = ""
  loc_9E65E7: ExitProcHresult
End Sub

Private Sub ExorImpuMsk_KeyPress(KeyAscii As Integer) '9824C4
  'Data Table: 500268
  loc_982490: ILdI2 KeyAscii
  loc_982493: CI4UI1
  loc_982494: FLdRfVar var_94
  loc_982497: ImpAdCallFPR4  = Chr()
  loc_98249C: FLdRfVar var_94
  loc_98249F: FLdRfVar var_A4
  loc_9824A2: ImpAdCallFPR4  = Ucase()
  loc_9824A7: FLdRfVar var_A4
  loc_9824AA: CStrVarVal var_A8
  loc_9824AE: ImpAdCallI2 Asc()
  loc_9824B3: IStI2 KeyAscii
  loc_9824B6: FFree1Str var_A8
  loc_9824B9: FFreeVar var_94 = ""
  loc_9824C0: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '9A0968
  'Data Table: 500268
  loc_9A08F8: LitVarStr var_94, vbNullString
  loc_9A08FD: PopAdLdVar
  loc_9A08FE: FLdPr Me
  loc_9A0901: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0904: FStAdFunc var_A8
  loc_9A0907: FLdPr var_A8
  loc_9A090A: LateIdSt
  loc_9A090F: FFree1Ad var_A8
  loc_9A0912: FLdPr Me
  loc_9A0915: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0918: FStAdFunc var_A8
  loc_9A091B: FLdPr var_A8
  loc_9A091E: LateIdLdVar var_B8 DispID_22 0
  loc_9A0925: CStrVarTmp
  loc_9A0926: FStStrNoPop var_BC
  loc_9A0929: LitStr vbNullString
  loc_9A092C: EqStr
  loc_9A092E: FFree1Str var_BC
  loc_9A0931: FFree1Ad var_A8
  loc_9A0934: FFree1Var var_B8 = ""
  loc_9A0937: BranchF loc_9A0954
  loc_9A093A: LitVarStr var_94, vbNullString
  loc_9A093F: PopAdLdVar
  loc_9A0940: FLdPr Me
  loc_9A0943: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0946: FStAdFunc var_A8
  loc_9A0949: FLdPr var_A8
  loc_9A094C: LateIdSt
  loc_9A0951: FFree1Ad var_A8
  loc_9A0954: FLdPr Me
  loc_9A0957: VCallAd Control_ID_CodiOrgaMsk
  loc_9A095A: CVarAd
  loc_9A095E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A0963: FFree1Var var_B8 = ""
  loc_9A0966: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_1 '98A628
  'Data Table: 500268
  loc_98A5E4: ImpAdLdI2 MemVar_C3D064
  loc_98A5E7: LitI2 2024
  loc_98A5EA: GeI2
  loc_98A5EB: BranchF loc_98A60B
  loc_98A5EE: LitVarStr var_94, "###"
  loc_98A5F3: PopAdLdVar
  loc_98A5F4: FLdPr Me
  loc_98A5F7: VCallAd Control_ID_CodiOrgaMsk
  loc_98A5FA: FStAdFunc var_A8
  loc_98A5FD: FLdPr var_A8
  loc_98A600: LateIdSt
  loc_98A605: FFree1Ad var_A8
  loc_98A608: Branch loc_98A625
  loc_98A60B: LitVarStr var_94, "######"
  loc_98A610: PopAdLdVar
  loc_98A611: FLdPr Me
  loc_98A614: VCallAd Control_ID_CodiOrgaMsk
  loc_98A617: FStAdFunc var_A8
  loc_98A61A: FLdPr var_A8
  loc_98A61D: LateIdSt
  loc_98A622: FFree1Ad var_A8
  loc_98A625: ExitProcHresult
  loc_98A626: Erase
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'B591BC
  'Data Table: 500268
  loc_B586CC: FLdRfVar var_8A
  loc_B586CF: FLdPr Me
  loc_B586D2: VCallAd Control_ID_cmdCancelar
  loc_B586D5: FStAdFunc var_88
  loc_B586D8: FLdPr var_88
  loc_B586DB:  = Me.Value
  loc_B586E0: FLdI2 var_8A
  loc_B586E3: NotI4
  loc_B586E4: FLdPr Me
  loc_B586E7: VCallAd Control_ID_CodiOrgaMsk
  loc_B586EA: FStAdFunc var_90
  loc_B586ED: FLdPr var_90
  loc_B586F0: LateIdLdVar var_A0 DispID_13 -32767
  loc_B586F7: CBoolVar
  loc_B586F9: AndI4
  loc_B586FA: FFreeAd var_88 = ""
  loc_B58701: FFree1Var var_A0 = ""
  loc_B58704: BranchF loc_B591B8
  loc_B58707: FLdPr Me
  loc_B5870A: VCallAd Control_ID_CodiOrgaMsk
  loc_B5870D: FStAdFunc var_88
  loc_B58710: FLdPr var_88
  loc_B58713: LateIdLdVar var_A0 DispID_22 0
  loc_B5871A: CStrVarTmp
  loc_B5871B: FStStrNoPop var_A4
  loc_B5871E: ImpAdCallI2 Trim$()
  loc_B58723: FStStrNoPop var_A8
  loc_B58726: LitStr vbNullString
  loc_B58729: NeStr
  loc_B5872B: FFreeStr var_A4 = ""
  loc_B58732: FFree1Ad var_88
  loc_B58735: FFree1Var var_A0 = ""
  loc_B58738: BranchF loc_B58F98
  loc_B5873B: FLdPr Me
  loc_B5873E: VCallAd Control_ID_CodiOrgaMsk
  loc_B58741: FStAdFunc var_88
  loc_B58744: FLdRfVar var_88
  loc_B58747: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B5874C: FFree1Ad var_88
  loc_B5874F: BranchF loc_B58B75
  loc_B58752: FLdPr Me
  loc_B58755: VCallAd Control_ID_CodiOrgaMsk
  loc_B58758: FStAdFunc var_88
  loc_B5875B: FLdPr var_88
  loc_B5875E: LateIdLdVar var_A0 DispID_22 0
  loc_B58765: PopAd
  loc_B58767: LitStr " AND o.CodiOrga = '"
  loc_B5876A: LitI4 0
  loc_B5876F: LitI4 -1
  loc_B58774: LitI4 1
  loc_B58779: LitStr vbNullString
  loc_B5877C: LitStr "."
  loc_B5877F: FLdRfVar var_A0
  loc_B58782: CStrVarTmp
  loc_B58783: FStStrNoPop var_A4
  loc_B58786: ImpAdCallI2 Replace(, , , , , )
  loc_B5878B: FStStrNoPop var_A8
  loc_B5878E: ConcatStr
  loc_B5878F: FStStrNoPop var_AC
  loc_B58792: LitStr "'"
  loc_B58795: ConcatStr
  loc_B58796: FStStrNoPop var_B0
  loc_B58799: ImpAdLdI2 MemVar_C3D064
  loc_B5879C: ImpAdLdRf MemVar_C3D710
  loc_B5879F: NewIfNullPr bscOrganigrama
  loc_B587A2: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B587A7: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B587B2: FFree1Ad var_88
  loc_B587B5: FFree1Var var_A0 = ""
  loc_B587B8: FLdRfVar var_B4
  loc_B587BB: FLdRfVar var_90
  loc_B587BE: FLdRfVar var_88
  loc_B587C1: ImpAdLdRf MemVar_C3D710
  loc_B587C4: NewIfNullPr bscOrganigrama
  loc_B587C7: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B587CC: FLdPr var_88
  loc_B587CF: from_stack_1v = clsbase.RsFrmGet()
  loc_B587D4: FLdPr var_90
  loc_B587D7:  = Me.RecordCount
  loc_B587DC: ILdRf var_B4
  loc_B587DF: LitI4 1
  loc_B587E4: EqI4
  loc_B587E5: FFreeAd var_88 = ""
  loc_B587EC: BranchF loc_B58911
  loc_B587EF: FLdRfVar var_A0
  loc_B587F2: FLdRfVar var_CC
  loc_B587F5: LitVarStr var_C8, "CodiOrga"
  loc_B587FA: PopAdLdVar
  loc_B587FB: FLdRfVar var_B8
  loc_B587FE: FLdRfVar var_90
  loc_B58801: FLdRfVar var_88
  loc_B58804: ImpAdLdRf MemVar_C3D710
  loc_B58807: NewIfNullPr bscOrganigrama
  loc_B5880A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5880F: FLdPr var_88
  loc_B58812: from_stack_1v = clsbase.RsFrmGet()
  loc_B58817: FLdPr var_90
  loc_B5881A:  = Me.Fields
  loc_B5881F: FLdPr var_B8
  loc_B58822: from_stack_2 = Me.Item(from_stack_1)
  loc_B58827: FLdPr var_CC
  loc_B5882A:  = Me.Value
  loc_B5882F: FLdRfVar var_A4
  loc_B58832: FLdPr Me
  loc_B58835:  = Me.Name
  loc_B5883A: FLdPr Me
  loc_B5883D: MemLdRfVar from_stack_1.global_144
  loc_B58840: NewIfNullRf
  loc_B58844: ILdRf var_A4
  loc_B58847: FLdRfVar var_A0
  loc_B5884A: CStrVarTmp
  loc_B5884B: FStStrNoPop var_A8
  loc_B5884E: ImpAdLdI2 MemVar_C3D064
  loc_B58851: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B58856: FStStrNoPop var_AC
  loc_B58859: FLdPr Me
  loc_B5885C: MemStStrCopy
  loc_B58860: FFreeStr var_A8 = "": var_A4 = ""
  loc_B58869: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58874: FFree1Var var_A0 = ""
  loc_B58877: FLdRfVar var_A4
  loc_B5887A: FLdPr Me
  loc_B5887D: MemLdRfVar from_stack_1.global_144
  loc_B58880: NewIfNullPr tblorganigrama
  loc_B58883: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B58888: FLdZeroAd var_A4
  loc_B5888B: CVarStr var_A0
  loc_B5888E: PopAdLdVar
  loc_B5888F: FLdPr Me
  loc_B58892: VCallAd Control_ID_CodiOrgaMsk
  loc_B58895: FStAdFunc var_88
  loc_B58898: FLdPr var_88
  loc_B5889B: LateIdSt
  loc_B588A0: FFree1Ad var_88
  loc_B588A3: FFree1Var var_A0 = ""
  loc_B588A6: FLdRfVar var_A4
  loc_B588A9: FLdPr Me
  loc_B588AC: MemLdRfVar from_stack_1.global_144
  loc_B588AF: NewIfNullPr tblorganigrama
  loc_B588B2: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B588B7: ILdRf var_A4
  loc_B588BA: FLdPr Me
  loc_B588BD: VCallAd Control_ID_DetaOrgaLbl
  loc_B588C0: FStAdFunc var_88
  loc_B588C3: FLdPr var_88
  loc_B588C6: Me.Caption = from_stack_1
  loc_B588CB: FFree1Str var_A4
  loc_B588CE: FFree1Ad var_88
  loc_B588D1: FLdPr Me
  loc_B588D4: VCallAd Control_ID_CodiOrgaMsk
  loc_B588D7: FStAdFunc var_CC
  loc_B588DA: FLdPr Me
  loc_B588DD: VCallAd Control_ID_DetaOrgaLbl
  loc_B588E0: FStAdFunc var_B8
  loc_B588E3: FLdRfVar var_B8
  loc_B588E6: FLdZeroAd var_CC
  loc_B588E9: FStAdFuncNoPop
  loc_B588EC: CastAd
  loc_B588EF: FStAdFunc var_90
  loc_B588F2: FLdRfVar var_90
  loc_B588F5: FLdPr Me
  loc_B588F8: MemLdRfVar from_stack_1.global_64
  loc_B588FB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58900: IStI2 KeyAscii
  loc_B58903: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5890E: Branch loc_B58B72
  loc_B58911: FLdRfVar var_B4
  loc_B58914: FLdRfVar var_90
  loc_B58917: FLdRfVar var_88
  loc_B5891A: ImpAdLdRf MemVar_C3D710
  loc_B5891D: NewIfNullPr bscOrganigrama
  loc_B58920: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58925: FLdPr var_88
  loc_B58928: from_stack_1v = clsbase.RsFrmGet()
  loc_B5892D: FLdPr var_90
  loc_B58930:  = Me.RecordCount
  loc_B58935: ILdRf var_B4
  loc_B58938: LitI4 1
  loc_B5893D: GtI4
  loc_B5893E: FFreeAd var_88 = ""
  loc_B58945: BranchF loc_B58AF4
  loc_B58948: LitVar_Missing var_DC
  loc_B5894B: PopAdLdVar
  loc_B5894C: LitVarI4
  loc_B58954: PopAdLdVar
  loc_B58955: ImpAdLdRf MemVar_C3D710
  loc_B58958: NewIfNullPr bscOrganigrama
  loc_B5895B: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B58960: FLdRfVar var_B4
  loc_B58963: FLdRfVar var_88
  loc_B58966: ImpAdLdRf MemVar_C3D710
  loc_B58969: NewIfNullPr bscOrganigrama
  loc_B5896C: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58971: FLdPr var_88
  loc_B58974: from_stack_1 = clsbase.RecordCount
  loc_B58979: ILdRf var_B4
  loc_B5897C: LitI4 0
  loc_B58981: GtI4
  loc_B58982: FFree1Ad var_88
  loc_B58985: BranchF loc_B58AAA
  loc_B58988: FLdRfVar var_A0
  loc_B5898B: FLdRfVar var_CC
  loc_B5898E: LitVarStr var_C8, "CodiOrga"
  loc_B58993: PopAdLdVar
  loc_B58994: FLdRfVar var_B8
  loc_B58997: FLdRfVar var_90
  loc_B5899A: FLdRfVar var_88
  loc_B5899D: ImpAdLdRf MemVar_C3D710
  loc_B589A0: NewIfNullPr bscOrganigrama
  loc_B589A3: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B589A8: FLdPr var_88
  loc_B589AB: from_stack_1v = clsbase.RsFrmGet()
  loc_B589B0: FLdPr var_90
  loc_B589B3:  = Me.Fields
  loc_B589B8: FLdPr var_B8
  loc_B589BB: from_stack_2 = Me.Item(from_stack_1)
  loc_B589C0: FLdPr var_CC
  loc_B589C3:  = Me.Value
  loc_B589C8: FLdRfVar var_A4
  loc_B589CB: FLdPr Me
  loc_B589CE:  = Me.Name
  loc_B589D3: FLdPr Me
  loc_B589D6: MemLdRfVar from_stack_1.global_144
  loc_B589D9: NewIfNullRf
  loc_B589DD: ILdRf var_A4
  loc_B589E0: FLdRfVar var_A0
  loc_B589E3: CStrVarTmp
  loc_B589E4: FStStrNoPop var_A8
  loc_B589E7: ImpAdLdI2 MemVar_C3D064
  loc_B589EA: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B589EF: FStStrNoPop var_AC
  loc_B589F2: FLdPr Me
  loc_B589F5: MemStStrCopy
  loc_B589F9: FFreeStr var_A8 = "": var_A4 = ""
  loc_B58A02: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58A0D: FFree1Var var_A0 = ""
  loc_B58A10: FLdRfVar var_A4
  loc_B58A13: FLdPr Me
  loc_B58A16: MemLdRfVar from_stack_1.global_144
  loc_B58A19: NewIfNullPr tblorganigrama
  loc_B58A1C: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B58A21: FLdZeroAd var_A4
  loc_B58A24: CVarStr var_A0
  loc_B58A27: PopAdLdVar
  loc_B58A28: FLdPr Me
  loc_B58A2B: VCallAd Control_ID_CodiOrgaMsk
  loc_B58A2E: FStAdFunc var_88
  loc_B58A31: FLdPr var_88
  loc_B58A34: LateIdSt
  loc_B58A39: FFree1Ad var_88
  loc_B58A3C: FFree1Var var_A0 = ""
  loc_B58A3F: FLdRfVar var_A4
  loc_B58A42: FLdPr Me
  loc_B58A45: MemLdRfVar from_stack_1.global_144
  loc_B58A48: NewIfNullPr tblorganigrama
  loc_B58A4B: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B58A50: ILdRf var_A4
  loc_B58A53: FLdPr Me
  loc_B58A56: VCallAd Control_ID_DetaOrgaLbl
  loc_B58A59: FStAdFunc var_88
  loc_B58A5C: FLdPr var_88
  loc_B58A5F: Me.Caption = from_stack_1
  loc_B58A64: FFree1Str var_A4
  loc_B58A67: FFree1Ad var_88
  loc_B58A6A: FLdPr Me
  loc_B58A6D: VCallAd Control_ID_CodiOrgaMsk
  loc_B58A70: FStAdFunc var_CC
  loc_B58A73: FLdPr Me
  loc_B58A76: VCallAd Control_ID_DetaOrgaLbl
  loc_B58A79: FStAdFunc var_B8
  loc_B58A7C: FLdRfVar var_B8
  loc_B58A7F: FLdZeroAd var_CC
  loc_B58A82: FStAdFuncNoPop
  loc_B58A85: CastAd
  loc_B58A88: FStAdFunc var_90
  loc_B58A8B: FLdRfVar var_90
  loc_B58A8E: FLdPr Me
  loc_B58A91: MemLdRfVar from_stack_1.global_64
  loc_B58A94: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58A99: IStI2 KeyAscii
  loc_B58A9C: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58AA7: Branch loc_B58AF1
  loc_B58AAA: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B58AAD: FLdPr Me
  loc_B58AB0: MemStStrCopy
  loc_B58AB4: FLdPr Me
  loc_B58AB7: VCallAd Control_ID_CodiOrgaMsk
  loc_B58ABA: FStAdFunc var_CC
  loc_B58ABD: FLdPr Me
  loc_B58AC0: VCallAd Control_ID_DetaOrgaLbl
  loc_B58AC3: FStAdFunc var_B8
  loc_B58AC6: FLdRfVar var_B8
  loc_B58AC9: FLdZeroAd var_CC
  loc_B58ACC: FStAdFuncNoPop
  loc_B58ACF: CastAd
  loc_B58AD2: FStAdFunc var_90
  loc_B58AD5: FLdRfVar var_90
  loc_B58AD8: FLdPr Me
  loc_B58ADB: MemLdRfVar from_stack_1.global_64
  loc_B58ADE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58AE3: IStI2 KeyAscii
  loc_B58AE6: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58AF1: Branch loc_B58B72
  loc_B58AF4: FLdRfVar var_B4
  loc_B58AF7: FLdRfVar var_90
  loc_B58AFA: FLdRfVar var_88
  loc_B58AFD: ImpAdLdRf MemVar_C3D710
  loc_B58B00: NewIfNullPr bscOrganigrama
  loc_B58B03: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58B08: FLdPr var_88
  loc_B58B0B: from_stack_1v = clsbase.RsFrmGet()
  loc_B58B10: FLdPr var_90
  loc_B58B13:  = Me.RecordCount
  loc_B58B18: ILdRf var_B4
  loc_B58B1B: LitI4 1
  loc_B58B20: LtI4
  loc_B58B21: FFreeAd var_88 = ""
  loc_B58B28: BranchF loc_B58B72
  loc_B58B2B: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B58B2E: FLdPr Me
  loc_B58B31: MemStStrCopy
  loc_B58B35: FLdPr Me
  loc_B58B38: VCallAd Control_ID_CodiOrgaMsk
  loc_B58B3B: FStAdFunc var_CC
  loc_B58B3E: FLdPr Me
  loc_B58B41: VCallAd Control_ID_DetaOrgaLbl
  loc_B58B44: FStAdFunc var_B8
  loc_B58B47: FLdRfVar var_B8
  loc_B58B4A: FLdZeroAd var_CC
  loc_B58B4D: FStAdFuncNoPop
  loc_B58B50: CastAd
  loc_B58B53: FStAdFunc var_90
  loc_B58B56: FLdRfVar var_90
  loc_B58B59: FLdPr Me
  loc_B58B5C: MemLdRfVar from_stack_1.global_64
  loc_B58B5F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58B64: IStI2 KeyAscii
  loc_B58B67: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58B72: Branch loc_B58F95
  loc_B58B75: FLdPr Me
  loc_B58B78: VCallAd Control_ID_CodiOrgaMsk
  loc_B58B7B: FStAdFunc var_88
  loc_B58B7E: FLdPr var_88
  loc_B58B81: LateIdLdVar var_A0 DispID_22 0
  loc_B58B88: PopAd
  loc_B58B8A: LitStr " AND o.DetaOrga LIKE '" & Chr(37)
  loc_B58B8D: LitI4 0
  loc_B58B92: LitI4 -1
  loc_B58B97: LitI4 1
  loc_B58B9C: LitStr Chr(37)
  loc_B58B9F: LitStr " "
  loc_B58BA2: FLdRfVar var_A0
  loc_B58BA5: CStrVarTmp
  loc_B58BA6: FStStrNoPop var_A4
  loc_B58BA9: ImpAdCallI2 Replace(, , , , , )
  loc_B58BAE: FStStrNoPop var_A8
  loc_B58BB1: ConcatStr
  loc_B58BB2: FStStrNoPop var_AC
  loc_B58BB5: LitStr Chr(37) & "'"
  loc_B58BB8: ConcatStr
  loc_B58BB9: FStStrNoPop var_B0
  loc_B58BBC: ImpAdLdI2 MemVar_C3D064
  loc_B58BBF: ImpAdLdRf MemVar_C3D710
  loc_B58BC2: NewIfNullPr bscOrganigrama
  loc_B58BC5: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B58BCA: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B58BD5: FFree1Ad var_88
  loc_B58BD8: FFree1Var var_A0 = ""
  loc_B58BDB: FLdRfVar var_B4
  loc_B58BDE: FLdRfVar var_90
  loc_B58BE1: FLdRfVar var_88
  loc_B58BE4: ImpAdLdRf MemVar_C3D710
  loc_B58BE7: NewIfNullPr bscOrganigrama
  loc_B58BEA: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58BEF: FLdPr var_88
  loc_B58BF2: from_stack_1v = clsbase.RsFrmGet()
  loc_B58BF7: FLdPr var_90
  loc_B58BFA:  = Me.RecordCount
  loc_B58BFF: ILdRf var_B4
  loc_B58C02: LitI4 1
  loc_B58C07: EqI4
  loc_B58C08: FFreeAd var_88 = ""
  loc_B58C0F: BranchF loc_B58D34
  loc_B58C12: FLdRfVar var_A0
  loc_B58C15: FLdRfVar var_CC
  loc_B58C18: LitVarStr var_C8, "CodiOrga"
  loc_B58C1D: PopAdLdVar
  loc_B58C1E: FLdRfVar var_B8
  loc_B58C21: FLdRfVar var_90
  loc_B58C24: FLdRfVar var_88
  loc_B58C27: ImpAdLdRf MemVar_C3D710
  loc_B58C2A: NewIfNullPr bscOrganigrama
  loc_B58C2D: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58C32: FLdPr var_88
  loc_B58C35: from_stack_1v = clsbase.RsFrmGet()
  loc_B58C3A: FLdPr var_90
  loc_B58C3D:  = Me.Fields
  loc_B58C42: FLdPr var_B8
  loc_B58C45: from_stack_2 = Me.Item(from_stack_1)
  loc_B58C4A: FLdPr var_CC
  loc_B58C4D:  = Me.Value
  loc_B58C52: FLdRfVar var_A4
  loc_B58C55: FLdPr Me
  loc_B58C58:  = Me.Name
  loc_B58C5D: FLdPr Me
  loc_B58C60: MemLdRfVar from_stack_1.global_144
  loc_B58C63: NewIfNullRf
  loc_B58C67: ILdRf var_A4
  loc_B58C6A: FLdRfVar var_A0
  loc_B58C6D: CStrVarTmp
  loc_B58C6E: FStStrNoPop var_A8
  loc_B58C71: ImpAdLdI2 MemVar_C3D064
  loc_B58C74: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B58C79: FStStrNoPop var_AC
  loc_B58C7C: FLdPr Me
  loc_B58C7F: MemStStrCopy
  loc_B58C83: FFreeStr var_A8 = "": var_A4 = ""
  loc_B58C8C: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58C97: FFree1Var var_A0 = ""
  loc_B58C9A: FLdRfVar var_A4
  loc_B58C9D: FLdPr Me
  loc_B58CA0: MemLdRfVar from_stack_1.global_144
  loc_B58CA3: NewIfNullPr tblorganigrama
  loc_B58CA6: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B58CAB: FLdZeroAd var_A4
  loc_B58CAE: CVarStr var_A0
  loc_B58CB1: PopAdLdVar
  loc_B58CB2: FLdPr Me
  loc_B58CB5: VCallAd Control_ID_CodiOrgaMsk
  loc_B58CB8: FStAdFunc var_88
  loc_B58CBB: FLdPr var_88
  loc_B58CBE: LateIdSt
  loc_B58CC3: FFree1Ad var_88
  loc_B58CC6: FFree1Var var_A0 = ""
  loc_B58CC9: FLdRfVar var_A4
  loc_B58CCC: FLdPr Me
  loc_B58CCF: MemLdRfVar from_stack_1.global_144
  loc_B58CD2: NewIfNullPr tblorganigrama
  loc_B58CD5: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B58CDA: ILdRf var_A4
  loc_B58CDD: FLdPr Me
  loc_B58CE0: VCallAd Control_ID_DetaOrgaLbl
  loc_B58CE3: FStAdFunc var_88
  loc_B58CE6: FLdPr var_88
  loc_B58CE9: Me.Caption = from_stack_1
  loc_B58CEE: FFree1Str var_A4
  loc_B58CF1: FFree1Ad var_88
  loc_B58CF4: FLdPr Me
  loc_B58CF7: VCallAd Control_ID_CodiOrgaMsk
  loc_B58CFA: FStAdFunc var_CC
  loc_B58CFD: FLdPr Me
  loc_B58D00: VCallAd Control_ID_DetaOrgaLbl
  loc_B58D03: FStAdFunc var_B8
  loc_B58D06: FLdRfVar var_B8
  loc_B58D09: FLdZeroAd var_CC
  loc_B58D0C: FStAdFuncNoPop
  loc_B58D0F: CastAd
  loc_B58D12: FStAdFunc var_90
  loc_B58D15: FLdRfVar var_90
  loc_B58D18: FLdPr Me
  loc_B58D1B: MemLdRfVar from_stack_1.global_64
  loc_B58D1E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58D23: IStI2 KeyAscii
  loc_B58D26: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58D31: Branch loc_B58F95
  loc_B58D34: FLdRfVar var_B4
  loc_B58D37: FLdRfVar var_90
  loc_B58D3A: FLdRfVar var_88
  loc_B58D3D: ImpAdLdRf MemVar_C3D710
  loc_B58D40: NewIfNullPr bscOrganigrama
  loc_B58D43: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58D48: FLdPr var_88
  loc_B58D4B: from_stack_1v = clsbase.RsFrmGet()
  loc_B58D50: FLdPr var_90
  loc_B58D53:  = Me.RecordCount
  loc_B58D58: ILdRf var_B4
  loc_B58D5B: LitI4 1
  loc_B58D60: GtI4
  loc_B58D61: FFreeAd var_88 = ""
  loc_B58D68: BranchF loc_B58F17
  loc_B58D6B: LitVar_Missing var_DC
  loc_B58D6E: PopAdLdVar
  loc_B58D6F: LitVarI4
  loc_B58D77: PopAdLdVar
  loc_B58D78: ImpAdLdRf MemVar_C3D710
  loc_B58D7B: NewIfNullPr bscOrganigrama
  loc_B58D7E: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B58D83: FLdRfVar var_B4
  loc_B58D86: FLdRfVar var_88
  loc_B58D89: ImpAdLdRf MemVar_C3D710
  loc_B58D8C: NewIfNullPr bscOrganigrama
  loc_B58D8F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58D94: FLdPr var_88
  loc_B58D97: from_stack_1 = clsbase.RecordCount
  loc_B58D9C: ILdRf var_B4
  loc_B58D9F: LitI4 0
  loc_B58DA4: GtI4
  loc_B58DA5: FFree1Ad var_88
  loc_B58DA8: BranchF loc_B58ECD
  loc_B58DAB: FLdRfVar var_A0
  loc_B58DAE: FLdRfVar var_CC
  loc_B58DB1: LitVarStr var_C8, "CodiOrga"
  loc_B58DB6: PopAdLdVar
  loc_B58DB7: FLdRfVar var_B8
  loc_B58DBA: FLdRfVar var_90
  loc_B58DBD: FLdRfVar var_88
  loc_B58DC0: ImpAdLdRf MemVar_C3D710
  loc_B58DC3: NewIfNullPr bscOrganigrama
  loc_B58DC6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58DCB: FLdPr var_88
  loc_B58DCE: from_stack_1v = clsbase.RsFrmGet()
  loc_B58DD3: FLdPr var_90
  loc_B58DD6:  = Me.Fields
  loc_B58DDB: FLdPr var_B8
  loc_B58DDE: from_stack_2 = Me.Item(from_stack_1)
  loc_B58DE3: FLdPr var_CC
  loc_B58DE6:  = Me.Value
  loc_B58DEB: FLdRfVar var_A4
  loc_B58DEE: FLdPr Me
  loc_B58DF1:  = Me.Name
  loc_B58DF6: FLdPr Me
  loc_B58DF9: MemLdRfVar from_stack_1.global_144
  loc_B58DFC: NewIfNullRf
  loc_B58E00: ILdRf var_A4
  loc_B58E03: FLdRfVar var_A0
  loc_B58E06: CStrVarTmp
  loc_B58E07: FStStrNoPop var_A8
  loc_B58E0A: ImpAdLdI2 MemVar_C3D064
  loc_B58E0D: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B58E12: FStStrNoPop var_AC
  loc_B58E15: FLdPr Me
  loc_B58E18: MemStStrCopy
  loc_B58E1C: FFreeStr var_A8 = "": var_A4 = ""
  loc_B58E25: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58E30: FFree1Var var_A0 = ""
  loc_B58E33: FLdRfVar var_A4
  loc_B58E36: FLdPr Me
  loc_B58E39: MemLdRfVar from_stack_1.global_144
  loc_B58E3C: NewIfNullPr tblorganigrama
  loc_B58E3F: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B58E44: FLdZeroAd var_A4
  loc_B58E47: CVarStr var_A0
  loc_B58E4A: PopAdLdVar
  loc_B58E4B: FLdPr Me
  loc_B58E4E: VCallAd Control_ID_CodiOrgaMsk
  loc_B58E51: FStAdFunc var_88
  loc_B58E54: FLdPr var_88
  loc_B58E57: LateIdSt
  loc_B58E5C: FFree1Ad var_88
  loc_B58E5F: FFree1Var var_A0 = ""
  loc_B58E62: FLdRfVar var_A4
  loc_B58E65: FLdPr Me
  loc_B58E68: MemLdRfVar from_stack_1.global_144
  loc_B58E6B: NewIfNullPr tblorganigrama
  loc_B58E6E: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B58E73: ILdRf var_A4
  loc_B58E76: FLdPr Me
  loc_B58E79: VCallAd Control_ID_DetaOrgaLbl
  loc_B58E7C: FStAdFunc var_88
  loc_B58E7F: FLdPr var_88
  loc_B58E82: Me.Caption = from_stack_1
  loc_B58E87: FFree1Str var_A4
  loc_B58E8A: FFree1Ad var_88
  loc_B58E8D: FLdPr Me
  loc_B58E90: VCallAd Control_ID_CodiOrgaMsk
  loc_B58E93: FStAdFunc var_CC
  loc_B58E96: FLdPr Me
  loc_B58E99: VCallAd Control_ID_DetaOrgaLbl
  loc_B58E9C: FStAdFunc var_B8
  loc_B58E9F: FLdRfVar var_B8
  loc_B58EA2: FLdZeroAd var_CC
  loc_B58EA5: FStAdFuncNoPop
  loc_B58EA8: CastAd
  loc_B58EAB: FStAdFunc var_90
  loc_B58EAE: FLdRfVar var_90
  loc_B58EB1: FLdPr Me
  loc_B58EB4: MemLdRfVar from_stack_1.global_64
  loc_B58EB7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58EBC: IStI2 KeyAscii
  loc_B58EBF: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58ECA: Branch loc_B58F14
  loc_B58ECD: LitStr "El Organigrama NO EXISTE. Verique..."
  loc_B58ED0: FLdPr Me
  loc_B58ED3: MemStStrCopy
  loc_B58ED7: FLdPr Me
  loc_B58EDA: VCallAd Control_ID_CodiOrgaMsk
  loc_B58EDD: FStAdFunc var_CC
  loc_B58EE0: FLdPr Me
  loc_B58EE3: VCallAd Control_ID_DetaOrgaLbl
  loc_B58EE6: FStAdFunc var_B8
  loc_B58EE9: FLdRfVar var_B8
  loc_B58EEC: FLdZeroAd var_CC
  loc_B58EEF: FStAdFuncNoPop
  loc_B58EF2: CastAd
  loc_B58EF5: FStAdFunc var_90
  loc_B58EF8: FLdRfVar var_90
  loc_B58EFB: FLdPr Me
  loc_B58EFE: MemLdRfVar from_stack_1.global_64
  loc_B58F01: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58F06: IStI2 KeyAscii
  loc_B58F09: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58F14: Branch loc_B58F95
  loc_B58F17: FLdRfVar var_B4
  loc_B58F1A: FLdRfVar var_90
  loc_B58F1D: FLdRfVar var_88
  loc_B58F20: ImpAdLdRf MemVar_C3D710
  loc_B58F23: NewIfNullPr bscOrganigrama
  loc_B58F26: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58F2B: FLdPr var_88
  loc_B58F2E: from_stack_1v = clsbase.RsFrmGet()
  loc_B58F33: FLdPr var_90
  loc_B58F36:  = Me.RecordCount
  loc_B58F3B: ILdRf var_B4
  loc_B58F3E: LitI4 1
  loc_B58F43: LtI4
  loc_B58F44: FFreeAd var_88 = ""
  loc_B58F4B: BranchF loc_B58F95
  loc_B58F4E: LitStr "El organigrama NO EXISTE. Verique..."
  loc_B58F51: FLdPr Me
  loc_B58F54: MemStStrCopy
  loc_B58F58: FLdPr Me
  loc_B58F5B: VCallAd Control_ID_CodiOrgaMsk
  loc_B58F5E: FStAdFunc var_CC
  loc_B58F61: FLdPr Me
  loc_B58F64: VCallAd Control_ID_DetaOrgaLbl
  loc_B58F67: FStAdFunc var_B8
  loc_B58F6A: FLdRfVar var_B8
  loc_B58F6D: FLdZeroAd var_CC
  loc_B58F70: FStAdFuncNoPop
  loc_B58F73: CastAd
  loc_B58F76: FStAdFunc var_90
  loc_B58F79: FLdRfVar var_90
  loc_B58F7C: FLdPr Me
  loc_B58F7F: MemLdRfVar from_stack_1.global_64
  loc_B58F82: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B58F87: IStI2 KeyAscii
  loc_B58F8A: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B58F95: Branch loc_B59164
  loc_B58F98: LitI2_Byte 0
  loc_B58F9A: ImpAdLdRf MemVar_C3D710
  loc_B58F9D: NewIfNullPr bscOrganigrama
  loc_B58FA0: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_B58FA5: LitNothing
  loc_B58FA7: CastAd
  loc_B58FAA: FStAdFuncNoPop
  loc_B58FAD: ImpAdLdRf MemVar_C3D710
  loc_B58FB0: NewIfNullPr bscOrganigrama
  loc_B58FB3: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_B58FB8: FFree1Ad var_88
  loc_B58FBB: LitVar_Missing var_DC
  loc_B58FBE: PopAdLdVar
  loc_B58FBF: LitVarI4
  loc_B58FC7: PopAdLdVar
  loc_B58FC8: ImpAdLdRf MemVar_C3D710
  loc_B58FCB: NewIfNullPr bscOrganigrama
  loc_B58FCE: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B58FD3: FLdRfVar var_B4
  loc_B58FD6: FLdRfVar var_88
  loc_B58FD9: ImpAdLdRf MemVar_C3D710
  loc_B58FDC: NewIfNullPr bscOrganigrama
  loc_B58FDF: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B58FE4: FLdPr var_88
  loc_B58FE7: from_stack_1 = clsbase.RecordCount
  loc_B58FEC: ILdRf var_B4
  loc_B58FEF: LitI4 0
  loc_B58FF4: GtI4
  loc_B58FF5: FFree1Ad var_88
  loc_B58FF8: BranchF loc_B5911D
  loc_B58FFB: FLdRfVar var_A0
  loc_B58FFE: FLdRfVar var_CC
  loc_B59001: LitVarStr var_C8, "CodiOrga"
  loc_B59006: PopAdLdVar
  loc_B59007: FLdRfVar var_B8
  loc_B5900A: FLdRfVar var_90
  loc_B5900D: FLdRfVar var_88
  loc_B59010: ImpAdLdRf MemVar_C3D710
  loc_B59013: NewIfNullPr bscOrganigrama
  loc_B59016: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5901B: FLdPr var_88
  loc_B5901E: from_stack_1v = clsbase.RsFrmGet()
  loc_B59023: FLdPr var_90
  loc_B59026:  = Me.Fields
  loc_B5902B: FLdPr var_B8
  loc_B5902E: from_stack_2 = Me.Item(from_stack_1)
  loc_B59033: FLdPr var_CC
  loc_B59036:  = Me.Value
  loc_B5903B: FLdRfVar var_A4
  loc_B5903E: FLdPr Me
  loc_B59041:  = Me.Name
  loc_B59046: FLdPr Me
  loc_B59049: MemLdRfVar from_stack_1.global_144
  loc_B5904C: NewIfNullRf
  loc_B59050: ILdRf var_A4
  loc_B59053: FLdRfVar var_A0
  loc_B59056: CStrVarTmp
  loc_B59057: FStStrNoPop var_A8
  loc_B5905A: ImpAdLdI2 MemVar_C3D064
  loc_B5905D: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B59062: FStStrNoPop var_AC
  loc_B59065: FLdPr Me
  loc_B59068: MemStStrCopy
  loc_B5906C: FFreeStr var_A8 = "": var_A4 = ""
  loc_B59075: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B59080: FFree1Var var_A0 = ""
  loc_B59083: FLdRfVar var_A4
  loc_B59086: FLdPr Me
  loc_B59089: MemLdRfVar from_stack_1.global_144
  loc_B5908C: NewIfNullPr tblorganigrama
  loc_B5908F: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B59094: FLdZeroAd var_A4
  loc_B59097: CVarStr var_A0
  loc_B5909A: PopAdLdVar
  loc_B5909B: FLdPr Me
  loc_B5909E: VCallAd Control_ID_CodiOrgaMsk
  loc_B590A1: FStAdFunc var_88
  loc_B590A4: FLdPr var_88
  loc_B590A7: LateIdSt
  loc_B590AC: FFree1Ad var_88
  loc_B590AF: FFree1Var var_A0 = ""
  loc_B590B2: FLdRfVar var_A4
  loc_B590B5: FLdPr Me
  loc_B590B8: MemLdRfVar from_stack_1.global_144
  loc_B590BB: NewIfNullPr tblorganigrama
  loc_B590BE: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B590C3: ILdRf var_A4
  loc_B590C6: FLdPr Me
  loc_B590C9: VCallAd Control_ID_DetaOrgaLbl
  loc_B590CC: FStAdFunc var_88
  loc_B590CF: FLdPr var_88
  loc_B590D2: Me.Caption = from_stack_1
  loc_B590D7: FFree1Str var_A4
  loc_B590DA: FFree1Ad var_88
  loc_B590DD: FLdPr Me
  loc_B590E0: VCallAd Control_ID_CodiOrgaMsk
  loc_B590E3: FStAdFunc var_CC
  loc_B590E6: FLdPr Me
  loc_B590E9: VCallAd Control_ID_DetaOrgaLbl
  loc_B590EC: FStAdFunc var_B8
  loc_B590EF: FLdRfVar var_B8
  loc_B590F2: FLdZeroAd var_CC
  loc_B590F5: FStAdFuncNoPop
  loc_B590F8: CastAd
  loc_B590FB: FStAdFunc var_90
  loc_B590FE: FLdRfVar var_90
  loc_B59101: FLdPr Me
  loc_B59104: MemLdRfVar from_stack_1.global_64
  loc_B59107: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5910C: IStI2 KeyAscii
  loc_B5910F: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5911A: Branch loc_B59164
  loc_B5911D: LitStr "El organigrama NO EXISTE. Verifique..."
  loc_B59120: FLdPr Me
  loc_B59123: MemStStrCopy
  loc_B59127: FLdPr Me
  loc_B5912A: VCallAd Control_ID_CodiOrgaMsk
  loc_B5912D: FStAdFunc var_CC
  loc_B59130: FLdPr Me
  loc_B59133: VCallAd Control_ID_DetaOrgaLbl
  loc_B59136: FStAdFunc var_B8
  loc_B59139: FLdRfVar var_B8
  loc_B5913C: FLdZeroAd var_CC
  loc_B5913F: FStAdFuncNoPop
  loc_B59142: CastAd
  loc_B59145: FStAdFunc var_90
  loc_B59148: FLdRfVar var_90
  loc_B5914B: FLdPr Me
  loc_B5914E: MemLdRfVar from_stack_1.global_64
  loc_B59151: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B59156: IStI2 KeyAscii
  loc_B59159: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B59164: ILdI2 KeyAscii
  loc_B59167: NotI4
  loc_B59168: BranchF loc_B5919E
  loc_B5916B: FLdRfVar var_A4
  loc_B5916E: FLdPr Me
  loc_B59171: MemLdRfVar from_stack_1.global_144
  loc_B59174: NewIfNullPr tblorganigrama
  loc_B59177: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B5917C: ILdRf var_A4
  loc_B5917F: FLdPr Me
  loc_B59182: VCallAd Control_ID_DetaOrgaLbl
  loc_B59185: FStAdFunc var_88
  loc_B59188: FLdPr var_88
  loc_B5918B: Me.Caption = from_stack_1
  loc_B59190: FFree1Str var_A4
  loc_B59193: FFree1Ad var_88
  loc_B59196: Call Proc_135_77_A8FC68()
  loc_B5919B: Branch loc_B591B8
  loc_B5919E: LitVarStr var_C8, vbNullString
  loc_B591A3: PopAdLdVar
  loc_B591A4: FLdPr Me
  loc_B591A7: VCallAd Control_ID_CodiOrgaMsk
  loc_B591AA: FStAdFunc var_88
  loc_B591AD: FLdPr var_88
  loc_B591B0: LateIdSt
  loc_B591B5: FFree1Ad var_88
  loc_B591B8: ExitProcHresult
  loc_B591B9: UMiI4
  loc_B591BA: FLdPrThis
End Sub

Private Sub CodiOrgaMsk_KeyPress(KeyAscii As Integer) '9ADD3C
  'Data Table: 500268
  loc_9ADCA0: FLdPr Me
  loc_9ADCA3: VCallAd Control_ID_CodiOrgaMsk
  loc_9ADCA6: FStAdFunc var_88
  loc_9ADCA9: FLdPr var_88
  loc_9ADCAC: LateIdLdVar var_98 DispID_22 0
  loc_9ADCB3: PopAd
  loc_9ADCB5: LitI4 0
  loc_9ADCBA: LitI4 -1
  loc_9ADCBF: LitI4 1
  loc_9ADCC4: LitStr vbNullString
  loc_9ADCC7: LitStr "."
  loc_9ADCCA: FLdRfVar var_98
  loc_9ADCCD: CStrVarTmp
  loc_9ADCCE: FStStrNoPop var_9C
  loc_9ADCD1: ImpAdCallI2 Replace(, , , , , )
  loc_9ADCD6: FStStrNoPop var_A0
  loc_9ADCD9: FnLenStr
  loc_9ADCDA: LitI4 5
  loc_9ADCDF: GtI4
  loc_9ADCE0: FFreeStr var_9C = ""
  loc_9ADCE7: FFree1Ad var_88
  loc_9ADCEA: FFree1Var var_98 = ""
  loc_9ADCED: BranchF loc_9ADD3B
  loc_9ADCF0: FLdPr Me
  loc_9ADCF3: VCallAd Control_ID_CodiOrgaMsk
  loc_9ADCF6: FStAdFunc var_88
  loc_9ADCF9: FLdRfVar var_88
  loc_9ADCFC: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9ADD01: FFree1Ad var_88
  loc_9ADD04: BranchF loc_9ADD3B
  loc_9ADD07: ILdI2 KeyAscii
  loc_9ADD0A: CI4UI1
  loc_9ADD0B: LitI4 8
  loc_9ADD10: NeI4
  loc_9ADD11: FLdPr Me
  loc_9ADD14: VCallAd Control_ID_CodiOrgaMsk
  loc_9ADD17: FStAdFunc var_88
  loc_9ADD1A: FLdPr var_88
  loc_9ADD1D: LateIdLdVar var_98 DispID_17 0
  loc_9ADD24: CI4Var
  loc_9ADD26: LitI4 0
  loc_9ADD2B: EqI4
  loc_9ADD2C: AndI4
  loc_9ADD2D: FFree1Ad var_88
  loc_9ADD30: FFree1Var var_98 = ""
  loc_9ADD33: BranchF loc_9ADD3B
  loc_9ADD36: LitI2_Byte 0
  loc_9ADD38: IStI2 KeyAscii
  loc_9ADD3B: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A051D4
  'Data Table: 500268
  loc_A05080: ILdI2 Shift
  loc_A05083: CI4UI1
  loc_A05084: LitI4 2
  loc_A05089: EqI4
  loc_A0508A: ILdI2 KeyCode
  loc_A0508D: CI4UI1
  loc_A0508E: LitI4 &H42
  loc_A05093: EqI4
  loc_A05094: AndI4
  loc_A05095: BranchF loc_A051D3
  loc_A05098: LitI2_Byte 0
  loc_A0509A: ImpAdLdRf MemVar_C3D710
  loc_A0509D: NewIfNullPr bscOrganigrama
  loc_A050A0: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A050A5: LitNothing
  loc_A050A7: CastAd
  loc_A050AA: FStAdFuncNoPop
  loc_A050AD: ImpAdLdRf MemVar_C3D710
  loc_A050B0: NewIfNullPr bscOrganigrama
  loc_A050B3: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A050B8: FFree1Ad var_88
  loc_A050BB: LitVar_Missing var_A8
  loc_A050BE: PopAdLdVar
  loc_A050BF: LitVarI4
  loc_A050C7: PopAdLdVar
  loc_A050C8: ImpAdLdRf MemVar_C3D710
  loc_A050CB: NewIfNullPr bscOrganigrama
  loc_A050CE: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A050D3: FLdRfVar var_AC
  loc_A050D6: FLdRfVar var_88
  loc_A050D9: ImpAdLdRf MemVar_C3D710
  loc_A050DC: NewIfNullPr bscOrganigrama
  loc_A050DF: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A050E4: FLdPr var_88
  loc_A050E7: from_stack_1 = clsbase.RecordCount
  loc_A050EC: ILdRf var_AC
  loc_A050EF: LitI4 0
  loc_A050F4: GtI4
  loc_A050F5: FFree1Ad var_88
  loc_A050F8: BranchF loc_A051D3
  loc_A050FB: FLdRfVar var_C8
  loc_A050FE: FLdRfVar var_B8
  loc_A05101: LitVarStr var_98, "CodiOrga"
  loc_A05106: PopAdLdVar
  loc_A05107: FLdRfVar var_B4
  loc_A0510A: FLdRfVar var_B0
  loc_A0510D: FLdRfVar var_88
  loc_A05110: ImpAdLdRf MemVar_C3D710
  loc_A05113: NewIfNullPr bscOrganigrama
  loc_A05116: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A0511B: FLdPr var_88
  loc_A0511E: from_stack_1v = clsbase.RsFrmGet()
  loc_A05123: FLdPr var_B0
  loc_A05126:  = Me.Fields
  loc_A0512B: FLdPr var_B4
  loc_A0512E: from_stack_2 = Me.Item(from_stack_1)
  loc_A05133: FLdPr var_B8
  loc_A05136:  = Me.Value
  loc_A0513B: FLdRfVar var_C8
  loc_A0513E: CStrVarTmp
  loc_A0513F: CVarStr var_D8
  loc_A05142: PopAdLdVar
  loc_A05143: FLdPr Me
  loc_A05146: VCallAd Control_ID_CodiOrgaMsk
  loc_A05149: FStAdFunc var_DC
  loc_A0514C: FLdPr var_DC
  loc_A0514F: LateIdSt
  loc_A05154: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A05161: FFreeVar var_C8 = ""
  loc_A05168: FLdRfVar var_C8
  loc_A0516B: FLdRfVar var_B8
  loc_A0516E: LitVarStr var_98, "DetaOrga"
  loc_A05173: PopAdLdVar
  loc_A05174: FLdRfVar var_B4
  loc_A05177: FLdRfVar var_B0
  loc_A0517A: FLdRfVar var_88
  loc_A0517D: ImpAdLdRf MemVar_C3D710
  loc_A05180: NewIfNullPr bscOrganigrama
  loc_A05183: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A05188: FLdPr var_88
  loc_A0518B: from_stack_1v = clsbase.RsFrmGet()
  loc_A05190: FLdPr var_B0
  loc_A05193:  = Me.Fields
  loc_A05198: FLdPr var_B4
  loc_A0519B: from_stack_2 = Me.Item(from_stack_1)
  loc_A051A0: FLdPr var_B8
  loc_A051A3:  = Me.Value
  loc_A051A8: FLdRfVar var_C8
  loc_A051AB: CStrVarTmp
  loc_A051AC: FStStrNoPop var_E0
  loc_A051AF: FLdPr Me
  loc_A051B2: VCallAd Control_ID_DetaOrgaLbl
  loc_A051B5: FStAdFunc var_DC
  loc_A051B8: FLdPr var_DC
  loc_A051BB: Me.Caption = from_stack_1
  loc_A051C0: FFree1Str var_E0
  loc_A051C3: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A051D0: FFree1Var var_C8 = ""
  loc_A051D3: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 'A190AC
  'Data Table: 500268
  loc_A18F38: LitVarStr var_94, vbNullString
  loc_A18F3D: PopAdLdVar
  loc_A18F3E: FLdPr Me
  loc_A18F41: VCallAd Control_ID_CodiPartMsk
  loc_A18F44: FStAdFunc var_A8
  loc_A18F47: FLdPr var_A8
  loc_A18F4A: LateIdSt
  loc_A18F4F: FFree1Ad var_A8
  loc_A18F52: FLdPr Me
  loc_A18F55: VCallAd Control_ID_CodiPartMsk
  loc_A18F58: FStAdFunc var_A8
  loc_A18F5B: FLdPr var_A8
  loc_A18F5E: LateIdLdVar var_B8 DispID_22 0
  loc_A18F65: CStrVarTmp
  loc_A18F66: FStStrNoPop var_BC
  loc_A18F69: LitStr "_._._._.__.__"
  loc_A18F6C: EqStr
  loc_A18F6E: FFree1Str var_BC
  loc_A18F71: FFree1Ad var_A8
  loc_A18F74: FFree1Var var_B8 = ""
  loc_A18F77: BranchF loc_A18F94
  loc_A18F7A: LitVarStr var_94, vbNullString
  loc_A18F7F: PopAdLdVar
  loc_A18F80: FLdPr Me
  loc_A18F83: VCallAd Control_ID_CodiPartMsk
  loc_A18F86: FStAdFunc var_A8
  loc_A18F89: FLdPr var_A8
  loc_A18F8C: LateIdSt
  loc_A18F91: FFree1Ad var_A8
  loc_A18F94: FLdPr Me
  loc_A18F97: VCallAd Control_ID_CodiPartMsk
  loc_A18F9A: FStAdFunc var_A8
  loc_A18F9D: FLdPr var_A8
  loc_A18FA0: LateIdLdVar var_B8 DispID_22 0
  loc_A18FA7: CStrVarTmp
  loc_A18FA8: FStStrNoPop var_BC
  loc_A18FAB: LitStr vbNullString
  loc_A18FAE: EqStr
  loc_A18FB0: FFree1Str var_BC
  loc_A18FB3: FFree1Ad var_A8
  loc_A18FB6: FFree1Var var_B8 = ""
  loc_A18FB9: BranchF loc_A19097
  loc_A18FBC: LitStr "SELECT * FROM insupart WHERE PeriInfo = "
  loc_A18FBF: ImpAdLdI2 MemVar_C3D064
  loc_A18FC2: CStrUI1
  loc_A18FC4: FStStrNoPop var_BC
  loc_A18FC7: ConcatStr
  loc_A18FC8: FStStrNoPop var_C0
  loc_A18FCB: LitStr " AND CodiInsu = '"
  loc_A18FCE: ConcatStr
  loc_A18FCF: FStStrNoPop var_C4
  loc_A18FD2: FLdPr Me
  loc_A18FD5: VCallAd Control_ID_CodiInsuMsk
  loc_A18FD8: FStAdFunc var_A8
  loc_A18FDB: FLdPr var_A8
  loc_A18FDE: LateIdLdVar var_B8 DispID_22 0
  loc_A18FE5: CStrVarTmp
  loc_A18FE6: FStStrNoPop var_C8
  loc_A18FE9: ConcatStr
  loc_A18FEA: FStStrNoPop var_CC
  loc_A18FED: LitStr "'"
  loc_A18FF0: ConcatStr
  loc_A18FF1: FStStrNoPop var_D0
  loc_A18FF4: FLdPr Me
  loc_A18FF7: MemLdRfVar from_stack_1.global_56
  loc_A18FFA: NewIfNullPr clsinsupart
  loc_A18FFD: Call clsinsupart.RedefineRS(from_stack_1v)
  loc_A19002: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A19011: FFree1Ad var_A8
  loc_A19014: FFree1Var var_B8 = ""
  loc_A19017: FLdRfVar var_D4
  loc_A1901A: FLdPr Me
  loc_A1901D: MemLdRfVar from_stack_1.global_56
  loc_A19020: NewIfNullPr clsinsupart
  loc_A19023: from_stack_1 = clsinsupart.RecordCount
  loc_A19028: ILdRf var_D4
  loc_A1902B: LitI4 1
  loc_A19030: EqI4
  loc_A19031: BranchF loc_A19097
  loc_A19034: FLdRfVar var_B8
  loc_A19037: FLdRfVar var_DC
  loc_A1903A: LitVarStr var_94, "CodiPart"
  loc_A1903F: PopAdLdVar
  loc_A19040: FLdRfVar var_D8
  loc_A19043: FLdRfVar var_A8
  loc_A19046: FLdPr Me
  loc_A19049: MemLdRfVar from_stack_1.global_56
  loc_A1904C: NewIfNullPr clsinsupart
  loc_A1904F: from_stack_1v = clsinsupart.RsFrmGet()
  loc_A19054: FLdPr var_A8
  loc_A19057:  = Me.Fields
  loc_A1905C: FLdPr var_D8
  loc_A1905F: from_stack_2 = Me.Item(from_stack_1)
  loc_A19064: FLdPr var_DC
  loc_A19067:  = Me.Value
  loc_A1906C: FLdRfVar var_B8
  loc_A1906F: CStrVarTmp
  loc_A19070: CVarStr var_EC
  loc_A19073: PopAdLdVar
  loc_A19074: FLdPr Me
  loc_A19077: VCallAd Control_ID_CodiPartMsk
  loc_A1907A: FStAdFunc var_F0
  loc_A1907D: FLdPr var_F0
  loc_A19080: LateIdSt
  loc_A19085: FFreeAd var_A8 = "": var_D8 = "": var_DC = ""
  loc_A19090: FFreeVar var_B8 = ""
  loc_A19097: FLdPr Me
  loc_A1909A: VCallAd Control_ID_CodiPartMsk
  loc_A1909D: CVarAd
  loc_A190A1: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A190A6: FFree1Var var_B8 = ""
  loc_A190A9: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_1 '96A31C
  'Data Table: 500268
  loc_96A300: LitVarStr var_94, "#.#.#.#.##.##"
  loc_96A305: PopAdLdVar
  loc_96A306: FLdPr Me
  loc_96A309: VCallAd Control_ID_CodiPartMsk
  loc_96A30C: FStAdFunc var_A8
  loc_96A30F: FLdPr var_A8
  loc_96A312: LateIdSt
  loc_96A317: FFree1Ad var_A8
  loc_96A31A: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'B9EA8C
  'Data Table: 500268
  loc_B9DB98: FLdRfVar var_8A
  loc_B9DB9B: FLdPr Me
  loc_B9DB9E: VCallAd Control_ID_cmdCancelar
  loc_B9DBA1: FStAdFunc var_88
  loc_B9DBA4: FLdPr var_88
  loc_B9DBA7:  = Me.Value
  loc_B9DBAC: FLdI2 var_8A
  loc_B9DBAF: NotI4
  loc_B9DBB0: FLdPr Me
  loc_B9DBB3: VCallAd Control_ID_CodiPartMsk
  loc_B9DBB6: FStAdFunc var_90
  loc_B9DBB9: FLdPr var_90
  loc_B9DBBC: LateIdLdVar var_A0 DispID_13 -32767
  loc_B9DBC3: CBoolVar
  loc_B9DBC5: AndI4
  loc_B9DBC6: FFreeAd var_88 = ""
  loc_B9DBCD: FFree1Var var_A0 = ""
  loc_B9DBD0: BranchF loc_B9EA8A
  loc_B9DBD3: FLdPr Me
  loc_B9DBD6: VCallAd Control_ID_CodiPartMsk
  loc_B9DBD9: FStAdFunc var_88
  loc_B9DBDC: FLdPr var_88
  loc_B9DBDF: LateIdLdVar var_A0 DispID_22 0
  loc_B9DBE6: CStrVarTmp
  loc_B9DBE7: FStStrNoPop var_A4
  loc_B9DBEA: ImpAdCallI2 Trim$()
  loc_B9DBEF: FStStrNoPop var_A8
  loc_B9DBF2: LitStr vbNullString
  loc_B9DBF5: NeStr
  loc_B9DBF7: FFreeStr var_A4 = ""
  loc_B9DBFE: FFree1Ad var_88
  loc_B9DC01: FFree1Var var_A0 = ""
  loc_B9DC04: BranchF loc_B9E4CA
  loc_B9DC07: FLdPr Me
  loc_B9DC0A: VCallAd Control_ID_CodiPartMsk
  loc_B9DC0D: FStAdFunc var_88
  loc_B9DC10: FLdRfVar var_88
  loc_B9DC13: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B9DC18: FFree1Ad var_88
  loc_B9DC1B: BranchF loc_B9E07D
  loc_B9DC1E: FLdPr Me
  loc_B9DC21: VCallAd Control_ID_CodiInsuMsk
  loc_B9DC24: FStAdFunc var_88
  loc_B9DC27: FLdPr var_88
  loc_B9DC2A: LateIdLdVar var_A0 DispID_22 0
  loc_B9DC31: PopAd
  loc_B9DC33: FLdPr Me
  loc_B9DC36: VCallAd Control_ID_CodiPartMsk
  loc_B9DC39: FStAdFunc var_90
  loc_B9DC3C: FLdPr var_90
  loc_B9DC3F: LateIdLdVar var_B8 DispID_22 0
  loc_B9DC46: PopAd
  loc_B9DC48: LitStr " AND partida.CodiPart LIKE '"
  loc_B9DC4B: LitI4 0
  loc_B9DC50: LitI4 -1
  loc_B9DC55: LitI4 1
  loc_B9DC5A: LitStr vbNullString
  loc_B9DC5D: LitStr "."
  loc_B9DC60: FLdRfVar var_B8
  loc_B9DC63: CStrVarTmp
  loc_B9DC64: FStStrNoPop var_A4
  loc_B9DC67: ImpAdCallI2 Replace(, , , , , )
  loc_B9DC6C: FStStrNoPop var_A8
  loc_B9DC6F: ConcatStr
  loc_B9DC70: FStStrNoPop var_BC
  loc_B9DC73: LitStr Chr(37) & "' ORDER BY partida.CodiPart"
  loc_B9DC76: ConcatStr
  loc_B9DC77: FStStrNoPop var_C4
  loc_B9DC7A: FLdRfVar var_A0
  loc_B9DC7D: CStrVarTmp
  loc_B9DC7E: FStStrNoPop var_C0
  loc_B9DC81: ImpAdLdI2 MemVar_C3D064
  loc_B9DC84: ImpAdLdRf MemVar_C3D724
  loc_B9DC87: NewIfNullPr bscPartida
  loc_B9DC8A: Call bscPartida.Constructor(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B9DC8F: FFreeStr var_A4 = "": var_A8 = "": var_BC = "": var_C0 = ""
  loc_B9DC9C: FFreeAd var_88 = ""
  loc_B9DCA3: FFreeVar var_A0 = ""
  loc_B9DCAA: FLdRfVar var_C8
  loc_B9DCAD: FLdRfVar var_90
  loc_B9DCB0: FLdRfVar var_88
  loc_B9DCB3: ImpAdLdRf MemVar_C3D724
  loc_B9DCB6: NewIfNullPr bscPartida
  loc_B9DCB9: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9DCBE: FLdPr var_88
  loc_B9DCC1: from_stack_1v = clsbase.RsFrmGet()
  loc_B9DCC6: FLdPr var_90
  loc_B9DCC9:  = Me.RecordCount
  loc_B9DCCE: ILdRf var_C8
  loc_B9DCD1: LitI4 1
  loc_B9DCD6: EqI4
  loc_B9DCD7: FFreeAd var_88 = ""
  loc_B9DCDE: BranchF loc_B9DE05
  loc_B9DCE1: FLdRfVar var_A0
  loc_B9DCE4: FLdRfVar var_E0
  loc_B9DCE7: LitVarStr var_DC, "CodiPart"
  loc_B9DCEC: PopAdLdVar
  loc_B9DCED: FLdRfVar var_CC
  loc_B9DCF0: FLdRfVar var_90
  loc_B9DCF3: FLdRfVar var_88
  loc_B9DCF6: ImpAdLdRf MemVar_C3D724
  loc_B9DCF9: NewIfNullPr bscPartida
  loc_B9DCFC: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9DD01: FLdPr var_88
  loc_B9DD04: from_stack_1v = clsbase.RsFrmGet()
  loc_B9DD09: FLdPr var_90
  loc_B9DD0C:  = Me.Fields
  loc_B9DD11: FLdPr var_CC
  loc_B9DD14: from_stack_2 = Me.Item(from_stack_1)
  loc_B9DD19: FLdPr var_E0
  loc_B9DD1C:  = Me.Value
  loc_B9DD21: FLdRfVar var_A4
  loc_B9DD24: FLdPr Me
  loc_B9DD27:  = Me.Name
  loc_B9DD2C: FLdPr Me
  loc_B9DD2F: MemLdRfVar from_stack_1.global_140
  loc_B9DD32: NewIfNullRf
  loc_B9DD36: ILdRf var_A4
  loc_B9DD39: LitI2_Byte &HFF
  loc_B9DD3B: FLdRfVar var_A0
  loc_B9DD3E: CStrVarTmp
  loc_B9DD3F: FStStrNoPop var_A8
  loc_B9DD42: ImpAdLdI2 MemVar_C3D064
  loc_B9DD45: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B9DD4A: FStStrNoPop var_BC
  loc_B9DD4D: FLdPr Me
  loc_B9DD50: MemStStrCopy
  loc_B9DD54: FFreeStr var_A8 = "": var_A4 = ""
  loc_B9DD5D: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9DD68: FFree1Var var_A0 = ""
  loc_B9DD6B: FLdRfVar var_A4
  loc_B9DD6E: FLdPr Me
  loc_B9DD71: MemLdRfVar from_stack_1.global_140
  loc_B9DD74: NewIfNullPr tblpartida
  loc_B9DD77: from_stack_1v = tblpartida.CodiPartGet()
  loc_B9DD7C: FLdZeroAd var_A4
  loc_B9DD7F: CVarStr var_A0
  loc_B9DD82: PopAdLdVar
  loc_B9DD83: FLdPr Me
  loc_B9DD86: VCallAd Control_ID_CodiPartMsk
  loc_B9DD89: FStAdFunc var_88
  loc_B9DD8C: FLdPr var_88
  loc_B9DD8F: LateIdSt
  loc_B9DD94: FFree1Ad var_88
  loc_B9DD97: FFree1Var var_A0 = ""
  loc_B9DD9A: FLdRfVar var_A4
  loc_B9DD9D: FLdPr Me
  loc_B9DDA0: MemLdRfVar from_stack_1.global_140
  loc_B9DDA3: NewIfNullPr tblpartida
  loc_B9DDA6: from_stack_1v = tblpartida.DetaPartGet()
  loc_B9DDAB: ILdRf var_A4
  loc_B9DDAE: FLdPr Me
  loc_B9DDB1: VCallAd Control_ID_DetaPartLbl
  loc_B9DDB4: FStAdFunc var_88
  loc_B9DDB7: FLdPr var_88
  loc_B9DDBA: Me.Caption = from_stack_1
  loc_B9DDBF: FFree1Str var_A4
  loc_B9DDC2: FFree1Ad var_88
  loc_B9DDC5: FLdPr Me
  loc_B9DDC8: VCallAd Control_ID_CodiPartMsk
  loc_B9DDCB: FStAdFunc var_E0
  loc_B9DDCE: FLdPr Me
  loc_B9DDD1: VCallAd Control_ID_DetaPartLbl
  loc_B9DDD4: FStAdFunc var_CC
  loc_B9DDD7: FLdRfVar var_CC
  loc_B9DDDA: FLdZeroAd var_E0
  loc_B9DDDD: FStAdFuncNoPop
  loc_B9DDE0: CastAd
  loc_B9DDE3: FStAdFunc var_90
  loc_B9DDE6: FLdRfVar var_90
  loc_B9DDE9: FLdPr Me
  loc_B9DDEC: MemLdRfVar from_stack_1.global_64
  loc_B9DDEF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9DDF4: IStI2 KeyCode
  loc_B9DDF7: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9DE02: Branch loc_B9E07A
  loc_B9DE05: FLdRfVar var_C8
  loc_B9DE08: FLdRfVar var_90
  loc_B9DE0B: FLdRfVar var_88
  loc_B9DE0E: ImpAdLdRf MemVar_C3D724
  loc_B9DE11: NewIfNullPr bscPartida
  loc_B9DE14: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9DE19: FLdPr var_88
  loc_B9DE1C: from_stack_1v = clsbase.RsFrmGet()
  loc_B9DE21: FLdPr var_90
  loc_B9DE24:  = Me.RecordCount
  loc_B9DE29: ILdRf var_C8
  loc_B9DE2C: LitI4 1
  loc_B9DE31: GtI4
  loc_B9DE32: FFreeAd var_88 = ""
  loc_B9DE39: BranchF loc_B9DFEA
  loc_B9DE3C: LitVar_Missing var_F0
  loc_B9DE3F: PopAdLdVar
  loc_B9DE40: LitVarI4
  loc_B9DE48: PopAdLdVar
  loc_B9DE49: ImpAdLdRf MemVar_C3D724
  loc_B9DE4C: NewIfNullPr bscPartida
  loc_B9DE4F: bscPartida.Show from_stack_1, from_stack_2
  loc_B9DE54: FLdRfVar var_C8
  loc_B9DE57: FLdRfVar var_88
  loc_B9DE5A: ImpAdLdRf MemVar_C3D724
  loc_B9DE5D: NewIfNullPr bscPartida
  loc_B9DE60: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9DE65: FLdPr var_88
  loc_B9DE68: from_stack_1 = clsbase.RecordCount
  loc_B9DE6D: ILdRf var_C8
  loc_B9DE70: LitI4 0
  loc_B9DE75: GtI4
  loc_B9DE76: FFree1Ad var_88
  loc_B9DE79: BranchF loc_B9DFA0
  loc_B9DE7C: FLdRfVar var_A0
  loc_B9DE7F: FLdRfVar var_E0
  loc_B9DE82: LitVarStr var_DC, "CodiPart"
  loc_B9DE87: PopAdLdVar
  loc_B9DE88: FLdRfVar var_CC
  loc_B9DE8B: FLdRfVar var_90
  loc_B9DE8E: FLdRfVar var_88
  loc_B9DE91: ImpAdLdRf MemVar_C3D724
  loc_B9DE94: NewIfNullPr bscPartida
  loc_B9DE97: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9DE9C: FLdPr var_88
  loc_B9DE9F: from_stack_1v = clsbase.RsFrmGet()
  loc_B9DEA4: FLdPr var_90
  loc_B9DEA7:  = Me.Fields
  loc_B9DEAC: FLdPr var_CC
  loc_B9DEAF: from_stack_2 = Me.Item(from_stack_1)
  loc_B9DEB4: FLdPr var_E0
  loc_B9DEB7:  = Me.Value
  loc_B9DEBC: FLdRfVar var_A4
  loc_B9DEBF: FLdPr Me
  loc_B9DEC2:  = Me.Name
  loc_B9DEC7: FLdPr Me
  loc_B9DECA: MemLdRfVar from_stack_1.global_140
  loc_B9DECD: NewIfNullRf
  loc_B9DED1: ILdRf var_A4
  loc_B9DED4: LitI2_Byte &HFF
  loc_B9DED6: FLdRfVar var_A0
  loc_B9DED9: CStrVarTmp
  loc_B9DEDA: FStStrNoPop var_A8
  loc_B9DEDD: ImpAdLdI2 MemVar_C3D064
  loc_B9DEE0: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B9DEE5: FStStrNoPop var_BC
  loc_B9DEE8: FLdPr Me
  loc_B9DEEB: MemStStrCopy
  loc_B9DEEF: FFreeStr var_A8 = "": var_A4 = ""
  loc_B9DEF8: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9DF03: FFree1Var var_A0 = ""
  loc_B9DF06: FLdRfVar var_A4
  loc_B9DF09: FLdPr Me
  loc_B9DF0C: MemLdRfVar from_stack_1.global_140
  loc_B9DF0F: NewIfNullPr tblpartida
  loc_B9DF12: from_stack_1v = tblpartida.CodiPartGet()
  loc_B9DF17: FLdZeroAd var_A4
  loc_B9DF1A: CVarStr var_A0
  loc_B9DF1D: PopAdLdVar
  loc_B9DF1E: FLdPr Me
  loc_B9DF21: VCallAd Control_ID_CodiPartMsk
  loc_B9DF24: FStAdFunc var_88
  loc_B9DF27: FLdPr var_88
  loc_B9DF2A: LateIdSt
  loc_B9DF2F: FFree1Ad var_88
  loc_B9DF32: FFree1Var var_A0 = ""
  loc_B9DF35: FLdRfVar var_A4
  loc_B9DF38: FLdPr Me
  loc_B9DF3B: MemLdRfVar from_stack_1.global_140
  loc_B9DF3E: NewIfNullPr tblpartida
  loc_B9DF41: from_stack_1v = tblpartida.DetaPartGet()
  loc_B9DF46: ILdRf var_A4
  loc_B9DF49: FLdPr Me
  loc_B9DF4C: VCallAd Control_ID_DetaPartLbl
  loc_B9DF4F: FStAdFunc var_88
  loc_B9DF52: FLdPr var_88
  loc_B9DF55: Me.Caption = from_stack_1
  loc_B9DF5A: FFree1Str var_A4
  loc_B9DF5D: FFree1Ad var_88
  loc_B9DF60: FLdPr Me
  loc_B9DF63: VCallAd Control_ID_CodiPartMsk
  loc_B9DF66: FStAdFunc var_E0
  loc_B9DF69: FLdPr Me
  loc_B9DF6C: VCallAd Control_ID_DetaPartLbl
  loc_B9DF6F: FStAdFunc var_CC
  loc_B9DF72: FLdRfVar var_CC
  loc_B9DF75: FLdZeroAd var_E0
  loc_B9DF78: FStAdFuncNoPop
  loc_B9DF7B: CastAd
  loc_B9DF7E: FStAdFunc var_90
  loc_B9DF81: FLdRfVar var_90
  loc_B9DF84: FLdPr Me
  loc_B9DF87: MemLdRfVar from_stack_1.global_64
  loc_B9DF8A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9DF8F: IStI2 KeyCode
  loc_B9DF92: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9DF9D: Branch loc_B9DFE7
  loc_B9DFA0: LitStr "La Partida NO EXISTE. Verifique..."
  loc_B9DFA3: FLdPr Me
  loc_B9DFA6: MemStStrCopy
  loc_B9DFAA: FLdPr Me
  loc_B9DFAD: VCallAd Control_ID_CodiPartMsk
  loc_B9DFB0: FStAdFunc var_E0
  loc_B9DFB3: FLdPr Me
  loc_B9DFB6: VCallAd Control_ID_DetaPartLbl
  loc_B9DFB9: FStAdFunc var_CC
  loc_B9DFBC: FLdRfVar var_CC
  loc_B9DFBF: FLdZeroAd var_E0
  loc_B9DFC2: FStAdFuncNoPop
  loc_B9DFC5: CastAd
  loc_B9DFC8: FStAdFunc var_90
  loc_B9DFCB: FLdRfVar var_90
  loc_B9DFCE: FLdPr Me
  loc_B9DFD1: MemLdRfVar from_stack_1.global_64
  loc_B9DFD4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9DFD9: IStI2 KeyCode
  loc_B9DFDC: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9DFE7: Branch loc_B9E07A
  loc_B9DFEA: FLdRfVar var_C8
  loc_B9DFED: FLdRfVar var_90
  loc_B9DFF0: FLdRfVar var_88
  loc_B9DFF3: ImpAdLdRf MemVar_C3D724
  loc_B9DFF6: NewIfNullPr bscPartida
  loc_B9DFF9: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9DFFE: FLdPr var_88
  loc_B9E001: from_stack_1v = clsbase.RsFrmGet()
  loc_B9E006: FLdPr var_90
  loc_B9E009:  = Me.RecordCount
  loc_B9E00E: ILdRf var_C8
  loc_B9E011: LitI4 1
  loc_B9E016: LtI4
  loc_B9E017: FFreeAd var_88 = ""
  loc_B9E01E: BranchF loc_B9E07A
  loc_B9E021: LitI2_Byte 0
  loc_B9E023: BranchF loc_B9E033
  loc_B9E026: LitStr "La Partida/Insumo NO EXISTE. Verifique..."
  loc_B9E029: FLdPr Me
  loc_B9E02C: MemStStrCopy
  loc_B9E030: Branch loc_B9E03D
  loc_B9E033: LitStr "La Partida NO EXISTE. Verifique..."
  loc_B9E036: FLdPr Me
  loc_B9E039: MemStStrCopy
  loc_B9E03D: FLdPr Me
  loc_B9E040: VCallAd Control_ID_CodiPartMsk
  loc_B9E043: FStAdFunc var_E0
  loc_B9E046: FLdPr Me
  loc_B9E049: VCallAd Control_ID_DetaPartLbl
  loc_B9E04C: FStAdFunc var_CC
  loc_B9E04F: FLdRfVar var_CC
  loc_B9E052: FLdZeroAd var_E0
  loc_B9E055: FStAdFuncNoPop
  loc_B9E058: CastAd
  loc_B9E05B: FStAdFunc var_90
  loc_B9E05E: FLdRfVar var_90
  loc_B9E061: FLdPr Me
  loc_B9E064: MemLdRfVar from_stack_1.global_64
  loc_B9E067: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9E06C: IStI2 KeyCode
  loc_B9E06F: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E07A: Branch loc_B9E4C7
  loc_B9E07D: FLdPr Me
  loc_B9E080: VCallAd Control_ID_CodiInsuMsk
  loc_B9E083: FStAdFunc var_88
  loc_B9E086: FLdPr var_88
  loc_B9E089: LateIdLdVar var_A0 DispID_22 0
  loc_B9E090: PopAd
  loc_B9E092: FLdPr Me
  loc_B9E095: VCallAd Control_ID_CodiPartMsk
  loc_B9E098: FStAdFunc var_90
  loc_B9E09B: FLdPr var_90
  loc_B9E09E: LateIdLdVar var_B8 DispID_22 0
  loc_B9E0A5: PopAd
  loc_B9E0A7: LitStr " AND DetaPart LIKE '" & Chr(37)
  loc_B9E0AA: LitI4 0
  loc_B9E0AF: LitI4 -1
  loc_B9E0B4: LitI4 1
  loc_B9E0B9: LitStr Chr(37)
  loc_B9E0BC: LitStr " "
  loc_B9E0BF: FLdRfVar var_B8
  loc_B9E0C2: CStrVarTmp
  loc_B9E0C3: FStStrNoPop var_A4
  loc_B9E0C6: ImpAdCallI2 Replace(, , , , , )
  loc_B9E0CB: FStStrNoPop var_A8
  loc_B9E0CE: ConcatStr
  loc_B9E0CF: FStStrNoPop var_BC
  loc_B9E0D2: LitStr Chr(37) & "' ORDER BY DetaPart"
  loc_B9E0D5: ConcatStr
  loc_B9E0D6: FStStrNoPop var_C4
  loc_B9E0D9: FLdRfVar var_A0
  loc_B9E0DC: CStrVarTmp
  loc_B9E0DD: FStStrNoPop var_C0
  loc_B9E0E0: ImpAdLdI2 MemVar_C3D064
  loc_B9E0E3: ImpAdLdRf MemVar_C3D724
  loc_B9E0E6: NewIfNullPr bscPartida
  loc_B9E0E9: Call bscPartida.Constructor(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B9E0EE: FFreeStr var_A4 = "": var_A8 = "": var_BC = "": var_C0 = ""
  loc_B9E0FB: FFreeAd var_88 = ""
  loc_B9E102: FFreeVar var_A0 = ""
  loc_B9E109: FLdRfVar var_C8
  loc_B9E10C: FLdRfVar var_90
  loc_B9E10F: FLdRfVar var_88
  loc_B9E112: ImpAdLdRf MemVar_C3D724
  loc_B9E115: NewIfNullPr bscPartida
  loc_B9E118: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9E11D: FLdPr var_88
  loc_B9E120: from_stack_1v = clsbase.RsFrmGet()
  loc_B9E125: FLdPr var_90
  loc_B9E128:  = Me.RecordCount
  loc_B9E12D: ILdRf var_C8
  loc_B9E130: LitI4 1
  loc_B9E135: EqI4
  loc_B9E136: FFreeAd var_88 = ""
  loc_B9E13D: BranchF loc_B9E264
  loc_B9E140: FLdRfVar var_A0
  loc_B9E143: FLdRfVar var_E0
  loc_B9E146: LitVarStr var_DC, "CodiPart"
  loc_B9E14B: PopAdLdVar
  loc_B9E14C: FLdRfVar var_CC
  loc_B9E14F: FLdRfVar var_90
  loc_B9E152: FLdRfVar var_88
  loc_B9E155: ImpAdLdRf MemVar_C3D724
  loc_B9E158: NewIfNullPr bscPartida
  loc_B9E15B: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9E160: FLdPr var_88
  loc_B9E163: from_stack_1v = clsbase.RsFrmGet()
  loc_B9E168: FLdPr var_90
  loc_B9E16B:  = Me.Fields
  loc_B9E170: FLdPr var_CC
  loc_B9E173: from_stack_2 = Me.Item(from_stack_1)
  loc_B9E178: FLdPr var_E0
  loc_B9E17B:  = Me.Value
  loc_B9E180: FLdRfVar var_A4
  loc_B9E183: FLdPr Me
  loc_B9E186:  = Me.Name
  loc_B9E18B: FLdPr Me
  loc_B9E18E: MemLdRfVar from_stack_1.global_140
  loc_B9E191: NewIfNullRf
  loc_B9E195: ILdRf var_A4
  loc_B9E198: LitI2_Byte &HFF
  loc_B9E19A: FLdRfVar var_A0
  loc_B9E19D: CStrVarTmp
  loc_B9E19E: FStStrNoPop var_A8
  loc_B9E1A1: ImpAdLdI2 MemVar_C3D064
  loc_B9E1A4: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B9E1A9: FStStrNoPop var_BC
  loc_B9E1AC: FLdPr Me
  loc_B9E1AF: MemStStrCopy
  loc_B9E1B3: FFreeStr var_A8 = "": var_A4 = ""
  loc_B9E1BC: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E1C7: FFree1Var var_A0 = ""
  loc_B9E1CA: FLdRfVar var_A4
  loc_B9E1CD: FLdPr Me
  loc_B9E1D0: MemLdRfVar from_stack_1.global_140
  loc_B9E1D3: NewIfNullPr tblpartida
  loc_B9E1D6: from_stack_1v = tblpartida.CodiPartGet()
  loc_B9E1DB: FLdZeroAd var_A4
  loc_B9E1DE: CVarStr var_A0
  loc_B9E1E1: PopAdLdVar
  loc_B9E1E2: FLdPr Me
  loc_B9E1E5: VCallAd Control_ID_CodiPartMsk
  loc_B9E1E8: FStAdFunc var_88
  loc_B9E1EB: FLdPr var_88
  loc_B9E1EE: LateIdSt
  loc_B9E1F3: FFree1Ad var_88
  loc_B9E1F6: FFree1Var var_A0 = ""
  loc_B9E1F9: FLdRfVar var_A4
  loc_B9E1FC: FLdPr Me
  loc_B9E1FF: MemLdRfVar from_stack_1.global_140
  loc_B9E202: NewIfNullPr tblpartida
  loc_B9E205: from_stack_1v = tblpartida.DetaPartGet()
  loc_B9E20A: ILdRf var_A4
  loc_B9E20D: FLdPr Me
  loc_B9E210: VCallAd Control_ID_DetaPartLbl
  loc_B9E213: FStAdFunc var_88
  loc_B9E216: FLdPr var_88
  loc_B9E219: Me.Caption = from_stack_1
  loc_B9E21E: FFree1Str var_A4
  loc_B9E221: FFree1Ad var_88
  loc_B9E224: FLdPr Me
  loc_B9E227: VCallAd Control_ID_CodiPartMsk
  loc_B9E22A: FStAdFunc var_E0
  loc_B9E22D: FLdPr Me
  loc_B9E230: VCallAd Control_ID_DetaPartLbl
  loc_B9E233: FStAdFunc var_CC
  loc_B9E236: FLdRfVar var_CC
  loc_B9E239: FLdZeroAd var_E0
  loc_B9E23C: FStAdFuncNoPop
  loc_B9E23F: CastAd
  loc_B9E242: FStAdFunc var_90
  loc_B9E245: FLdRfVar var_90
  loc_B9E248: FLdPr Me
  loc_B9E24B: MemLdRfVar from_stack_1.global_64
  loc_B9E24E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9E253: IStI2 KeyCode
  loc_B9E256: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E261: Branch loc_B9E4C7
  loc_B9E264: FLdRfVar var_C8
  loc_B9E267: FLdRfVar var_90
  loc_B9E26A: FLdRfVar var_88
  loc_B9E26D: ImpAdLdRf MemVar_C3D724
  loc_B9E270: NewIfNullPr bscPartida
  loc_B9E273: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9E278: FLdPr var_88
  loc_B9E27B: from_stack_1v = clsbase.RsFrmGet()
  loc_B9E280: FLdPr var_90
  loc_B9E283:  = Me.RecordCount
  loc_B9E288: ILdRf var_C8
  loc_B9E28B: LitI4 1
  loc_B9E290: GtI4
  loc_B9E291: FFreeAd var_88 = ""
  loc_B9E298: BranchF loc_B9E449
  loc_B9E29B: LitVar_Missing var_F0
  loc_B9E29E: PopAdLdVar
  loc_B9E29F: LitVarI4
  loc_B9E2A7: PopAdLdVar
  loc_B9E2A8: ImpAdLdRf MemVar_C3D724
  loc_B9E2AB: NewIfNullPr bscPartida
  loc_B9E2AE: bscPartida.Show from_stack_1, from_stack_2
  loc_B9E2B3: FLdRfVar var_C8
  loc_B9E2B6: FLdRfVar var_88
  loc_B9E2B9: ImpAdLdRf MemVar_C3D724
  loc_B9E2BC: NewIfNullPr bscPartida
  loc_B9E2BF: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9E2C4: FLdPr var_88
  loc_B9E2C7: from_stack_1 = clsbase.RecordCount
  loc_B9E2CC: ILdRf var_C8
  loc_B9E2CF: LitI4 0
  loc_B9E2D4: GtI4
  loc_B9E2D5: FFree1Ad var_88
  loc_B9E2D8: BranchF loc_B9E3FF
  loc_B9E2DB: FLdRfVar var_A0
  loc_B9E2DE: FLdRfVar var_E0
  loc_B9E2E1: LitVarStr var_DC, "CodiPart"
  loc_B9E2E6: PopAdLdVar
  loc_B9E2E7: FLdRfVar var_CC
  loc_B9E2EA: FLdRfVar var_90
  loc_B9E2ED: FLdRfVar var_88
  loc_B9E2F0: ImpAdLdRf MemVar_C3D724
  loc_B9E2F3: NewIfNullPr bscPartida
  loc_B9E2F6: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9E2FB: FLdPr var_88
  loc_B9E2FE: from_stack_1v = clsbase.RsFrmGet()
  loc_B9E303: FLdPr var_90
  loc_B9E306:  = Me.Fields
  loc_B9E30B: FLdPr var_CC
  loc_B9E30E: from_stack_2 = Me.Item(from_stack_1)
  loc_B9E313: FLdPr var_E0
  loc_B9E316:  = Me.Value
  loc_B9E31B: FLdRfVar var_A4
  loc_B9E31E: FLdPr Me
  loc_B9E321:  = Me.Name
  loc_B9E326: FLdPr Me
  loc_B9E329: MemLdRfVar from_stack_1.global_140
  loc_B9E32C: NewIfNullRf
  loc_B9E330: ILdRf var_A4
  loc_B9E333: LitI2_Byte &HFF
  loc_B9E335: FLdRfVar var_A0
  loc_B9E338: CStrVarTmp
  loc_B9E339: FStStrNoPop var_A8
  loc_B9E33C: ImpAdLdI2 MemVar_C3D064
  loc_B9E33F: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B9E344: FStStrNoPop var_BC
  loc_B9E347: FLdPr Me
  loc_B9E34A: MemStStrCopy
  loc_B9E34E: FFreeStr var_A8 = "": var_A4 = ""
  loc_B9E357: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E362: FFree1Var var_A0 = ""
  loc_B9E365: FLdRfVar var_A4
  loc_B9E368: FLdPr Me
  loc_B9E36B: MemLdRfVar from_stack_1.global_140
  loc_B9E36E: NewIfNullPr tblpartida
  loc_B9E371: from_stack_1v = tblpartida.CodiPartGet()
  loc_B9E376: FLdZeroAd var_A4
  loc_B9E379: CVarStr var_A0
  loc_B9E37C: PopAdLdVar
  loc_B9E37D: FLdPr Me
  loc_B9E380: VCallAd Control_ID_CodiPartMsk
  loc_B9E383: FStAdFunc var_88
  loc_B9E386: FLdPr var_88
  loc_B9E389: LateIdSt
  loc_B9E38E: FFree1Ad var_88
  loc_B9E391: FFree1Var var_A0 = ""
  loc_B9E394: FLdRfVar var_A4
  loc_B9E397: FLdPr Me
  loc_B9E39A: MemLdRfVar from_stack_1.global_140
  loc_B9E39D: NewIfNullPr tblpartida
  loc_B9E3A0: from_stack_1v = tblpartida.DetaPartGet()
  loc_B9E3A5: ILdRf var_A4
  loc_B9E3A8: FLdPr Me
  loc_B9E3AB: VCallAd Control_ID_DetaPartLbl
  loc_B9E3AE: FStAdFunc var_88
  loc_B9E3B1: FLdPr var_88
  loc_B9E3B4: Me.Caption = from_stack_1
  loc_B9E3B9: FFree1Str var_A4
  loc_B9E3BC: FFree1Ad var_88
  loc_B9E3BF: FLdPr Me
  loc_B9E3C2: VCallAd Control_ID_CodiPartMsk
  loc_B9E3C5: FStAdFunc var_E0
  loc_B9E3C8: FLdPr Me
  loc_B9E3CB: VCallAd Control_ID_DetaPartLbl
  loc_B9E3CE: FStAdFunc var_CC
  loc_B9E3D1: FLdRfVar var_CC
  loc_B9E3D4: FLdZeroAd var_E0
  loc_B9E3D7: FStAdFuncNoPop
  loc_B9E3DA: CastAd
  loc_B9E3DD: FStAdFunc var_90
  loc_B9E3E0: FLdRfVar var_90
  loc_B9E3E3: FLdPr Me
  loc_B9E3E6: MemLdRfVar from_stack_1.global_64
  loc_B9E3E9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9E3EE: IStI2 KeyCode
  loc_B9E3F1: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E3FC: Branch loc_B9E446
  loc_B9E3FF: LitStr "La Partida NO EXISTE. Verique..."
  loc_B9E402: FLdPr Me
  loc_B9E405: MemStStrCopy
  loc_B9E409: FLdPr Me
  loc_B9E40C: VCallAd Control_ID_CodiPartMsk
  loc_B9E40F: FStAdFunc var_E0
  loc_B9E412: FLdPr Me
  loc_B9E415: VCallAd Control_ID_DetaPartLbl
  loc_B9E418: FStAdFunc var_CC
  loc_B9E41B: FLdRfVar var_CC
  loc_B9E41E: FLdZeroAd var_E0
  loc_B9E421: FStAdFuncNoPop
  loc_B9E424: CastAd
  loc_B9E427: FStAdFunc var_90
  loc_B9E42A: FLdRfVar var_90
  loc_B9E42D: FLdPr Me
  loc_B9E430: MemLdRfVar from_stack_1.global_64
  loc_B9E433: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9E438: IStI2 KeyCode
  loc_B9E43B: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E446: Branch loc_B9E4C7
  loc_B9E449: FLdRfVar var_C8
  loc_B9E44C: FLdRfVar var_90
  loc_B9E44F: FLdRfVar var_88
  loc_B9E452: ImpAdLdRf MemVar_C3D724
  loc_B9E455: NewIfNullPr bscPartida
  loc_B9E458: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9E45D: FLdPr var_88
  loc_B9E460: from_stack_1v = clsbase.RsFrmGet()
  loc_B9E465: FLdPr var_90
  loc_B9E468:  = Me.RecordCount
  loc_B9E46D: ILdRf var_C8
  loc_B9E470: LitI4 1
  loc_B9E475: LtI4
  loc_B9E476: FFreeAd var_88 = ""
  loc_B9E47D: BranchF loc_B9E4C7
  loc_B9E480: LitStr "La Partida NO EXISTE. Verique..."
  loc_B9E483: FLdPr Me
  loc_B9E486: MemStStrCopy
  loc_B9E48A: FLdPr Me
  loc_B9E48D: VCallAd Control_ID_CodiPartMsk
  loc_B9E490: FStAdFunc var_E0
  loc_B9E493: FLdPr Me
  loc_B9E496: VCallAd Control_ID_DetaPartLbl
  loc_B9E499: FStAdFunc var_CC
  loc_B9E49C: FLdRfVar var_CC
  loc_B9E49F: FLdZeroAd var_E0
  loc_B9E4A2: FStAdFuncNoPop
  loc_B9E4A5: CastAd
  loc_B9E4A8: FStAdFunc var_90
  loc_B9E4AB: FLdRfVar var_90
  loc_B9E4AE: FLdPr Me
  loc_B9E4B1: MemLdRfVar from_stack_1.global_64
  loc_B9E4B4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9E4B9: IStI2 KeyCode
  loc_B9E4BC: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E4C7: Branch loc_B9E68B
  loc_B9E4CA: LitNothing
  loc_B9E4CC: CastAd
  loc_B9E4CF: FStAdFuncNoPop
  loc_B9E4D2: ImpAdLdRf MemVar_C3D724
  loc_B9E4D5: NewIfNullPr bscPartida
  loc_B9E4D8: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_B9E4DD: FFree1Ad var_88
  loc_B9E4E0: LitVar_Missing var_F0
  loc_B9E4E3: PopAdLdVar
  loc_B9E4E4: LitVarI4
  loc_B9E4EC: PopAdLdVar
  loc_B9E4ED: ImpAdLdRf MemVar_C3D724
  loc_B9E4F0: NewIfNullPr bscPartida
  loc_B9E4F3: bscPartida.Show from_stack_1, from_stack_2
  loc_B9E4F8: FLdRfVar var_C8
  loc_B9E4FB: FLdRfVar var_88
  loc_B9E4FE: ImpAdLdRf MemVar_C3D724
  loc_B9E501: NewIfNullPr bscPartida
  loc_B9E504: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9E509: FLdPr var_88
  loc_B9E50C: from_stack_1 = clsbase.RecordCount
  loc_B9E511: ILdRf var_C8
  loc_B9E514: LitI4 0
  loc_B9E519: GtI4
  loc_B9E51A: FFree1Ad var_88
  loc_B9E51D: BranchF loc_B9E644
  loc_B9E520: FLdRfVar var_A0
  loc_B9E523: FLdRfVar var_E0
  loc_B9E526: LitVarStr var_DC, "CodiPart"
  loc_B9E52B: PopAdLdVar
  loc_B9E52C: FLdRfVar var_CC
  loc_B9E52F: FLdRfVar var_90
  loc_B9E532: FLdRfVar var_88
  loc_B9E535: ImpAdLdRf MemVar_C3D724
  loc_B9E538: NewIfNullPr bscPartida
  loc_B9E53B: from_stack_1v = bscPartida.global_4332396Get()
  loc_B9E540: FLdPr var_88
  loc_B9E543: from_stack_1v = clsbase.RsFrmGet()
  loc_B9E548: FLdPr var_90
  loc_B9E54B:  = Me.Fields
  loc_B9E550: FLdPr var_CC
  loc_B9E553: from_stack_2 = Me.Item(from_stack_1)
  loc_B9E558: FLdPr var_E0
  loc_B9E55B:  = Me.Value
  loc_B9E560: FLdRfVar var_A4
  loc_B9E563: FLdPr Me
  loc_B9E566:  = Me.Name
  loc_B9E56B: FLdPr Me
  loc_B9E56E: MemLdRfVar from_stack_1.global_140
  loc_B9E571: NewIfNullRf
  loc_B9E575: ILdRf var_A4
  loc_B9E578: LitI2_Byte &HFF
  loc_B9E57A: FLdRfVar var_A0
  loc_B9E57D: CStrVarTmp
  loc_B9E57E: FStStrNoPop var_A8
  loc_B9E581: ImpAdLdI2 MemVar_C3D064
  loc_B9E584: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B9E589: FStStrNoPop var_BC
  loc_B9E58C: FLdPr Me
  loc_B9E58F: MemStStrCopy
  loc_B9E593: FFreeStr var_A8 = "": var_A4 = ""
  loc_B9E59C: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E5A7: FFree1Var var_A0 = ""
  loc_B9E5AA: FLdRfVar var_A4
  loc_B9E5AD: FLdPr Me
  loc_B9E5B0: MemLdRfVar from_stack_1.global_140
  loc_B9E5B3: NewIfNullPr tblpartida
  loc_B9E5B6: from_stack_1v = tblpartida.CodiPartGet()
  loc_B9E5BB: FLdZeroAd var_A4
  loc_B9E5BE: CVarStr var_A0
  loc_B9E5C1: PopAdLdVar
  loc_B9E5C2: FLdPr Me
  loc_B9E5C5: VCallAd Control_ID_CodiPartMsk
  loc_B9E5C8: FStAdFunc var_88
  loc_B9E5CB: FLdPr var_88
  loc_B9E5CE: LateIdSt
  loc_B9E5D3: FFree1Ad var_88
  loc_B9E5D6: FFree1Var var_A0 = ""
  loc_B9E5D9: FLdRfVar var_A4
  loc_B9E5DC: FLdPr Me
  loc_B9E5DF: MemLdRfVar from_stack_1.global_140
  loc_B9E5E2: NewIfNullPr tblpartida
  loc_B9E5E5: from_stack_1v = tblpartida.DetaPartGet()
  loc_B9E5EA: ILdRf var_A4
  loc_B9E5ED: FLdPr Me
  loc_B9E5F0: VCallAd Control_ID_DetaPartLbl
  loc_B9E5F3: FStAdFunc var_88
  loc_B9E5F6: FLdPr var_88
  loc_B9E5F9: Me.Caption = from_stack_1
  loc_B9E5FE: FFree1Str var_A4
  loc_B9E601: FFree1Ad var_88
  loc_B9E604: FLdPr Me
  loc_B9E607: VCallAd Control_ID_CodiPartMsk
  loc_B9E60A: FStAdFunc var_E0
  loc_B9E60D: FLdPr Me
  loc_B9E610: VCallAd Control_ID_DetaPartLbl
  loc_B9E613: FStAdFunc var_CC
  loc_B9E616: FLdRfVar var_CC
  loc_B9E619: FLdZeroAd var_E0
  loc_B9E61C: FStAdFuncNoPop
  loc_B9E61F: CastAd
  loc_B9E622: FStAdFunc var_90
  loc_B9E625: FLdRfVar var_90
  loc_B9E628: FLdPr Me
  loc_B9E62B: MemLdRfVar from_stack_1.global_64
  loc_B9E62E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9E633: IStI2 KeyCode
  loc_B9E636: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E641: Branch loc_B9E68B
  loc_B9E644: LitStr "La Partida NO EXISTE. Verifique..."
  loc_B9E647: FLdPr Me
  loc_B9E64A: MemStStrCopy
  loc_B9E64E: FLdPr Me
  loc_B9E651: VCallAd Control_ID_CodiPartMsk
  loc_B9E654: FStAdFunc var_E0
  loc_B9E657: FLdPr Me
  loc_B9E65A: VCallAd Control_ID_DetaPartLbl
  loc_B9E65D: FStAdFunc var_CC
  loc_B9E660: FLdRfVar var_CC
  loc_B9E663: FLdZeroAd var_E0
  loc_B9E666: FStAdFuncNoPop
  loc_B9E669: CastAd
  loc_B9E66C: FStAdFunc var_90
  loc_B9E66F: FLdRfVar var_90
  loc_B9E672: FLdPr Me
  loc_B9E675: MemLdRfVar from_stack_1.global_64
  loc_B9E678: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9E67D: IStI2 KeyCode
  loc_B9E680: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E68B: ILdI2 KeyCode
  loc_B9E68E: NotI4
  loc_B9E68F: BranchF loc_B9EA70
  loc_B9E692: LitI2_Byte 0
  loc_B9E694: BranchF loc_B9E7B8
  loc_B9E697: LitStr "SELECT * FROM insupart WHERE PeriInfo = "
  loc_B9E69A: ImpAdLdI2 MemVar_C3D064
  loc_B9E69D: CStrUI1
  loc_B9E69F: FStStrNoPop var_A4
  loc_B9E6A2: ConcatStr
  loc_B9E6A3: FStStrNoPop var_A8
  loc_B9E6A6: LitStr " AND CodiPart = '"
  loc_B9E6A9: ConcatStr
  loc_B9E6AA: FStStrNoPop var_BC
  loc_B9E6AD: FLdPr Me
  loc_B9E6B0: VCallAd Control_ID_CodiPartMsk
  loc_B9E6B3: FStAdFunc var_88
  loc_B9E6B6: FLdPr var_88
  loc_B9E6B9: LateIdLdVar var_A0 DispID_22 0
  loc_B9E6C0: CStrVarTmp
  loc_B9E6C1: FStStrNoPop var_C0
  loc_B9E6C4: ConcatStr
  loc_B9E6C5: FStStrNoPop var_C4
  loc_B9E6C8: LitStr "' AND CodiInsu = '"
  loc_B9E6CB: ConcatStr
  loc_B9E6CC: FStStrNoPop var_F4
  loc_B9E6CF: FLdPr Me
  loc_B9E6D2: VCallAd Control_ID_CodiInsuMsk
  loc_B9E6D5: FStAdFunc var_90
  loc_B9E6D8: FLdPr var_90
  loc_B9E6DB: LateIdLdVar var_B8 DispID_22 0
  loc_B9E6E2: CStrVarTmp
  loc_B9E6E3: FStStrNoPop var_F8
  loc_B9E6E6: ConcatStr
  loc_B9E6E7: FStStrNoPop var_FC
  loc_B9E6EA: LitStr "';"
  loc_B9E6ED: ConcatStr
  loc_B9E6EE: FStStrNoPop var_100
  loc_B9E6F1: FLdPr Me
  loc_B9E6F4: MemLdRfVar from_stack_1.global_56
  loc_B9E6F7: NewIfNullPr clsinsupart
  loc_B9E6FA: Call clsinsupart.RedefineRS(from_stack_1v)
  loc_B9E6FF: FFreeStr var_A4 = "": var_A8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B9E714: FFreeAd var_88 = ""
  loc_B9E71B: FFreeVar var_A0 = ""
  loc_B9E722: FLdRfVar var_C8
  loc_B9E725: FLdPr Me
  loc_B9E728: MemLdRfVar from_stack_1.global_56
  loc_B9E72B: NewIfNullPr clsinsupart
  loc_B9E72E: from_stack_1 = clsinsupart.RecordCount
  loc_B9E733: ILdRf var_C8
  loc_B9E736: LitI4 0
  loc_B9E73B: EqI4
  loc_B9E73C: BranchF loc_B9E7B8
  loc_B9E73F: LitStr "La Partida NO Corresponde al Insumo. Verifique..."
  loc_B9E742: FLdPr Me
  loc_B9E745: MemStStrCopy
  loc_B9E749: FLdPr Me
  loc_B9E74C: VCallAd Control_ID_CodiPartMsk
  loc_B9E74F: FStAdFunc var_E0
  loc_B9E752: FLdPr Me
  loc_B9E755: VCallAd Control_ID_DetaPartLbl
  loc_B9E758: FStAdFunc var_CC
  loc_B9E75B: FLdRfVar var_CC
  loc_B9E75E: FLdZeroAd var_E0
  loc_B9E761: FStAdFuncNoPop
  loc_B9E764: CastAd
  loc_B9E767: FStAdFunc var_90
  loc_B9E76A: FLdRfVar var_90
  loc_B9E76D: FLdPr Me
  loc_B9E770: MemLdRfVar from_stack_1.global_64
  loc_B9E773: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9E778: IStI2 KeyCode
  loc_B9E77B: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9E786: ILdI2 KeyCode
  loc_B9E789: BranchF loc_B9E7B8
  loc_B9E78C: LitVarStr var_DC, vbNullString
  loc_B9E791: PopAdLdVar
  loc_B9E792: FLdPr Me
  loc_B9E795: VCallAd Control_ID_CodiPartMsk
  loc_B9E798: FStAdFunc var_88
  loc_B9E79B: FLdPr var_88
  loc_B9E79E: LateIdSt
  loc_B9E7A3: FFree1Ad var_88
  loc_B9E7A6: FLdPr Me
  loc_B9E7A9: VCallAd Control_ID_CodiPartMsk
  loc_B9E7AC: CVarAd
  loc_B9E7B0: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_B9E7B5: FFree1Var var_A0 = ""
  loc_B9E7B8: LitI2_Byte 0
  loc_B9E7BA: BranchF loc_B9EA61
  loc_B9E7BD: LitStr "SELECT * FROM parttipoug WHERE PeriInfo = "
  loc_B9E7C0: ImpAdLdI2 MemVar_C3D064
  loc_B9E7C3: CStrUI1
  loc_B9E7C5: FStStrNoPop var_A4
  loc_B9E7C8: ConcatStr
  loc_B9E7C9: FStStrNoPop var_A8
  loc_B9E7CC: LitStr " AND CodiPart = '"
  loc_B9E7CF: ConcatStr
  loc_B9E7D0: FStStrNoPop var_BC
  loc_B9E7D3: FLdPr Me
  loc_B9E7D6: VCallAd Control_ID_CodiPartMsk
  loc_B9E7D9: FStAdFunc var_88
  loc_B9E7DC: FLdPr var_88
  loc_B9E7DF: LateIdLdVar var_A0 DispID_22 0
  loc_B9E7E6: CStrVarTmp
  loc_B9E7E7: FStStrNoPop var_C0
  loc_B9E7EA: ConcatStr
  loc_B9E7EB: FStStrNoPop var_C4
  loc_B9E7EE: LitStr "';"
  loc_B9E7F1: ConcatStr
  loc_B9E7F2: FStStrNoPop var_F4
  loc_B9E7F5: FLdRfVar var_104
  loc_B9E7F8: NewIfNullPr clsbase
  loc_B9E7FB: Call clsbase.RedefineRS(from_stack_1v)
  loc_B9E800: FFreeStr var_A4 = "": var_A8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9E80F: FFree1Ad var_88
  loc_B9E812: FFree1Var var_A0 = ""
  loc_B9E815: FLdRfVar var_C8
  loc_B9E818: FLdRfVar var_104
  loc_B9E81B: NewIfNullPr clsbase
  loc_B9E81E: from_stack_1 = clsbase.RecordCount
  loc_B9E823: ILdRf var_C8
  loc_B9E826: LitI4 0
  loc_B9E82B: GtI4
  loc_B9E82C: BranchF loc_B9EA61
  loc_B9E82F: LitStr "SELECT * "
  loc_B9E832: LitStr " FROM parttipoug "
  loc_B9E835: ConcatStr
  loc_B9E836: FStStrNoPop var_A4
  loc_B9E839: LitStr " WHERE PeriInfo = "
  loc_B9E83C: ConcatStr
  loc_B9E83D: FStStrNoPop var_A8
  loc_B9E840: ImpAdLdI2 MemVar_C3D064
  loc_B9E843: CStrUI1
  loc_B9E845: FStStrNoPop var_BC
  loc_B9E848: ConcatStr
  loc_B9E849: FStStrNoPop var_C0
  loc_B9E84C: LitStr " AND CodiPart = '"
  loc_B9E84F: ConcatStr
  loc_B9E850: FStStrNoPop var_C4
  loc_B9E853: FLdPr Me
  loc_B9E856: VCallAd Control_ID_CodiPartMsk
  loc_B9E859: FStAdFunc var_88
  loc_B9E85C: FLdPr var_88
  loc_B9E85F: LateIdLdVar var_A0 DispID_22 0
  loc_B9E866: CStrVarTmp
  loc_B9E867: FStStrNoPop var_F4
  loc_B9E86A: ConcatStr
  loc_B9E86B: FStStrNoPop var_F8
  loc_B9E86E: LitStr "' AND CodiTiug = (SELECT CodiTiug FROM unidadgasto WHERE CodiUnga = "
  loc_B9E871: ConcatStr
  loc_B9E872: FStStrNoPop var_100
  loc_B9E875: FLdRfVar var_FC
  loc_B9E878: FLdPr Me
  loc_B9E87B: VCallAd Control_ID_CodiUngaTxt
  loc_B9E87E: FStAdFunc var_90
  loc_B9E881: FLdPr var_90
  loc_B9E884:  = Me.Text
  loc_B9E889: ILdRf var_FC
  loc_B9E88C: ConcatStr
  loc_B9E88D: FStStrNoPop var_108
  loc_B9E890: LitStr ");"
  loc_B9E893: ConcatStr
  loc_B9E894: FStStrNoPop var_10C
  loc_B9E897: FLdRfVar var_104
  loc_B9E89A: NewIfNullPr clsbase
  loc_B9E89D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B9E8A2: FFreeStr var_A4 = "": var_A8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_F4 = "": var_F8 = "": var_100 = "": var_FC = "": var_108 = ""
  loc_B9E8BB: FFreeAd var_88 = ""
  loc_B9E8C2: FFree1Var var_A0 = ""
  loc_B9E8C5: FLdRfVar var_C8
  loc_B9E8C8: FLdRfVar var_104
  loc_B9E8CB: NewIfNullPr clsbase
  loc_B9E8CE: from_stack_1 = clsbase.RecordCount
  loc_B9E8D3: ILdRf var_C8
  loc_B9E8D6: LitI4 0
  loc_B9E8DB: GtI4
  loc_B9E8DC: BranchF loc_B9E8E2
  loc_B9E8DF: Branch loc_B9EA5E
  loc_B9E8E2: LitStr "SELECT IFNULL(GROUP_CONCAT(DISTINCT CodiTiug),'') sCodiTiug FROM parttipoug WHERE PeriInfo = "
  loc_B9E8E5: ImpAdLdI2 MemVar_C3D064
  loc_B9E8E8: CStrUI1
  loc_B9E8EA: FStStrNoPop var_A4
  loc_B9E8ED: ConcatStr
  loc_B9E8EE: FStStrNoPop var_A8
  loc_B9E8F1: LitStr " AND CodiPart = '"
  loc_B9E8F4: ConcatStr
  loc_B9E8F5: FStStrNoPop var_BC
  loc_B9E8F8: FLdPr Me
  loc_B9E8FB: VCallAd Control_ID_CodiPartMsk
  loc_B9E8FE: FStAdFunc var_88
  loc_B9E901: FLdPr var_88
  loc_B9E904: LateIdLdVar var_A0 DispID_22 0
  loc_B9E90B: CStrVarTmp
  loc_B9E90C: FStStrNoPop var_C0
  loc_B9E90F: ConcatStr
  loc_B9E910: FStStrNoPop var_C4
  loc_B9E913: LitStr "';"
  loc_B9E916: ConcatStr
  loc_B9E917: FStStrNoPop var_F4
  loc_B9E91A: FLdRfVar var_104
  loc_B9E91D: NewIfNullPr clsbase
  loc_B9E920: Call clsbase.RedefineRS(from_stack_1v)
  loc_B9E925: FFreeStr var_A4 = "": var_A8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9E934: FFree1Ad var_88
  loc_B9E937: FFree1Var var_A0 = ""
  loc_B9E93A: FLdRfVar var_A0
  loc_B9E93D: FLdRfVar var_CC
  loc_B9E940: LitVarStr var_DC, "sCodiTiug"
  loc_B9E945: PopAdLdVar
  loc_B9E946: FLdRfVar var_90
  loc_B9E949: FLdRfVar var_88
  loc_B9E94C: FLdRfVar var_104
  loc_B9E94F: NewIfNullPr clsbase
  loc_B9E952: from_stack_1v = clsbase.RsFrmGet()
  loc_B9E957: FLdPr var_88
  loc_B9E95A:  = Me.Fields
  loc_B9E95F: FLdPr var_90
  loc_B9E962: from_stack_2 = Me.Item(from_stack_1)
  loc_B9E967: FLdPr var_CC
  loc_B9E96A:  = Me.Value
  loc_B9E96F: FLdRfVar var_A0
  loc_B9E972: CStrVarTmp
  loc_B9E973: FStStr var_110
  loc_B9E976: FFreeAd var_88 = "": var_90 = ""
  loc_B9E97F: FFree1Var var_A0 = ""
  loc_B9E982: LitStr "Advertencia: próximamente deberá "
  loc_B9E985: LitStr vbCrLf
  loc_B9E988: ConcatStr
  loc_B9E989: FStStrNoPop var_A4
  loc_B9E98C: LitStr vbCrLf
  loc_B9E98F: ConcatStr
  loc_B9E990: FStStrNoPop var_A8
  loc_B9E993: LitStr ">> INGRESAR un cód. Unidad de Gasto DISTINTO de "
  loc_B9E996: ConcatStr
  loc_B9E997: FStStrNoPop var_C0
  loc_B9E99A: FLdRfVar var_BC
  loc_B9E99D: FLdPr Me
  loc_B9E9A0: VCallAd Control_ID_CodiUngaTxt
  loc_B9E9A3: FStAdFunc var_88
  loc_B9E9A6: FLdPr var_88
  loc_B9E9A9:  = Me.Text
  loc_B9E9AE: ILdRf var_BC
  loc_B9E9B1: ConcatStr
  loc_B9E9B2: FStStrNoPop var_C4
  loc_B9E9B5: LitStr ", ó "
  loc_B9E9B8: ConcatStr
  loc_B9E9B9: FStStrNoPop var_F4
  loc_B9E9BC: LitStr vbCrLf
  loc_B9E9BF: ConcatStr
  loc_B9E9C0: FStStrNoPop var_F8
  loc_B9E9C3: LitStr vbCrLf
  loc_B9E9C6: ConcatStr
  loc_B9E9C7: FStStrNoPop var_FC
  loc_B9E9CA: LitStr ">> MODIFICAR el TIPO de Unidad de Gasto por "
  loc_B9E9CD: ConcatStr
  loc_B9E9CE: FStStrNoPop var_100
  loc_B9E9D1: LitI4 0
  loc_B9E9D6: LitI4 -1
  loc_B9E9DB: LitI4 1
  loc_B9E9E0: LitStr " ó "
  loc_B9E9E3: LitStr ","
  loc_B9E9E6: ILdRf var_110
  loc_B9E9E9: ImpAdCallI2 Replace(, , , , , )
  loc_B9E9EE: FStStrNoPop var_108
  loc_B9E9F1: ConcatStr
  loc_B9E9F2: FStStrNoPop var_10C
  loc_B9E9F5: LitStr " !!!"
  loc_B9E9F8: ConcatStr
  loc_B9E9F9: FStStrNoPop var_114
  loc_B9E9FC: FLdPr Me
  loc_B9E9FF: MemStStrCopy
  loc_B9EA03: FFreeStr var_A4 = "": var_A8 = "": var_C0 = "": var_BC = "": var_C4 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_108 = "": var_10C = ""
  loc_B9EA1E: FFree1Ad var_88
  loc_B9EA21: FLdPr Me
  loc_B9EA24: VCallAd Control_ID_CodiPartMsk
  loc_B9EA27: FStAdFunc var_E0
  loc_B9EA2A: FLdPr Me
  loc_B9EA2D: VCallAd Control_ID_DetaPartLbl
  loc_B9EA30: FStAdFunc var_CC
  loc_B9EA33: FLdRfVar var_CC
  loc_B9EA36: FLdZeroAd var_E0
  loc_B9EA39: FStAdFuncNoPop
  loc_B9EA3C: CastAd
  loc_B9EA3F: FStAdFunc var_90
  loc_B9EA42: FLdRfVar var_90
  loc_B9EA45: FLdPr Me
  loc_B9EA48: MemLdRfVar from_stack_1.global_64
  loc_B9EA4B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9EA50: IStI2 KeyCode
  loc_B9EA53: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B9EA5E: Branch loc_B9EA61
  loc_B9EA61: ILdI2 KeyCode
  loc_B9EA64: NotI4
  loc_B9EA65: BranchF loc_B9EA6D
  loc_B9EA68: Call Proc_135_77_A8FC68()
  loc_B9EA6D: Branch loc_B9EA8A
  loc_B9EA70: LitVarStr var_DC, vbNullString
  loc_B9EA75: PopAdLdVar
  loc_B9EA76: FLdPr Me
  loc_B9EA79: VCallAd Control_ID_CodiPartMsk
  loc_B9EA7C: FStAdFunc var_88
  loc_B9EA7F: FLdPr var_88
  loc_B9EA82: LateIdSt
  loc_B9EA87: FFree1Ad var_88
  loc_B9EA8A: ExitProcHresult
End Sub

Private Sub CodiPartMsk_KeyPress(KeyAscii As Integer) '9AE434
  'Data Table: 500268
  loc_9AE394: FLdPr Me
  loc_9AE397: VCallAd Control_ID_CodiPartMsk
  loc_9AE39A: FStAdFunc var_88
  loc_9AE39D: FLdPr var_88
  loc_9AE3A0: LateIdLdVar var_98 DispID_22 0
  loc_9AE3A7: PopAd
  loc_9AE3A9: LitI4 0
  loc_9AE3AE: LitI4 -1
  loc_9AE3B3: LitI4 1
  loc_9AE3B8: LitStr vbNullString
  loc_9AE3BB: LitStr "."
  loc_9AE3BE: FLdRfVar var_98
  loc_9AE3C1: CStrVarTmp
  loc_9AE3C2: FStStrNoPop var_9C
  loc_9AE3C5: ImpAdCallI2 Replace(, , , , , )
  loc_9AE3CA: FStStrNoPop var_A0
  loc_9AE3CD: FnLenStr
  loc_9AE3CE: LitI2_Byte 8
  loc_9AE3D0: CI2UI1
  loc_9AE3D2: LitI2_Byte 1
  loc_9AE3D4: SubI2
  loc_9AE3D5: CI4UI1
  loc_9AE3D6: GtI4
  loc_9AE3D7: FFreeStr var_9C = ""
  loc_9AE3DE: FFree1Ad var_88
  loc_9AE3E1: FFree1Var var_98 = ""
  loc_9AE3E4: BranchF loc_9AE432
  loc_9AE3E7: FLdPr Me
  loc_9AE3EA: VCallAd Control_ID_CodiPartMsk
  loc_9AE3ED: FStAdFunc var_88
  loc_9AE3F0: FLdRfVar var_88
  loc_9AE3F3: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9AE3F8: FFree1Ad var_88
  loc_9AE3FB: BranchF loc_9AE432
  loc_9AE3FE: ILdI2 KeyAscii
  loc_9AE401: CI4UI1
  loc_9AE402: LitI4 8
  loc_9AE407: NeI4
  loc_9AE408: FLdPr Me
  loc_9AE40B: VCallAd Control_ID_CodiPartMsk
  loc_9AE40E: FStAdFunc var_88
  loc_9AE411: FLdPr var_88
  loc_9AE414: LateIdLdVar var_98 DispID_17 0
  loc_9AE41B: CI4Var
  loc_9AE41D: LitI4 0
  loc_9AE422: EqI4
  loc_9AE423: AndI4
  loc_9AE424: FFree1Ad var_88
  loc_9AE427: FFree1Var var_98 = ""
  loc_9AE42A: BranchF loc_9AE432
  loc_9AE42D: LitI2_Byte 0
  loc_9AE42F: IStI2 KeyAscii
  loc_9AE432: ExitProcHresult
End Sub

Private Sub CodiPartMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A1538C
  'Data Table: 500268
  loc_A15218: ILdI2 Shift
  loc_A1521B: CI4UI1
  loc_A1521C: LitI4 2
  loc_A15221: EqI4
  loc_A15222: ILdI2 KeyCode
  loc_A15225: CI4UI1
  loc_A15226: LitI4 &H42
  loc_A1522B: EqI4
  loc_A1522C: AndI4
  loc_A1522D: BranchF loc_A1538A
  loc_A15230: FLdPr Me
  loc_A15233: VCallAd Control_ID_CodiInsuMsk
  loc_A15236: FStAdFunc var_88
  loc_A15239: FLdPr var_88
  loc_A1523C: LateIdLdVar var_98 DispID_22 0
  loc_A15243: CStrVarTmp
  loc_A15244: FStStrNoPop var_9C
  loc_A15247: CI4Str
  loc_A15248: ImpAdLdRf MemVar_C3D724
  loc_A1524B: NewIfNullPr bscPartida
  loc_A1524E: Call bscPartida.iCodiInsuPut(from_stack_1v)
  loc_A15253: FFree1Str var_9C
  loc_A15256: FFree1Ad var_88
  loc_A15259: FFree1Var var_98 = ""
  loc_A1525C: LitNothing
  loc_A1525E: CastAd
  loc_A15261: FStAdFuncNoPop
  loc_A15264: ImpAdLdRf MemVar_C3D724
  loc_A15267: NewIfNullPr bscPartida
  loc_A1526A: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_A1526F: FFree1Ad var_88
  loc_A15272: LitVar_Missing var_BC
  loc_A15275: PopAdLdVar
  loc_A15276: LitVarI4
  loc_A1527E: PopAdLdVar
  loc_A1527F: ImpAdLdRf MemVar_C3D724
  loc_A15282: NewIfNullPr bscPartida
  loc_A15285: bscPartida.Show from_stack_1, from_stack_2
  loc_A1528A: FLdRfVar var_C0
  loc_A1528D: FLdRfVar var_88
  loc_A15290: ImpAdLdRf MemVar_C3D724
  loc_A15293: NewIfNullPr bscPartida
  loc_A15296: from_stack_1v = bscPartida.global_4332396Get()
  loc_A1529B: FLdPr var_88
  loc_A1529E: from_stack_1 = clsbase.RecordCount
  loc_A152A3: ILdRf var_C0
  loc_A152A6: LitI4 0
  loc_A152AB: GtI4
  loc_A152AC: FFree1Ad var_88
  loc_A152AF: BranchF loc_A1538A
  loc_A152B2: FLdRfVar var_98
  loc_A152B5: FLdRfVar var_CC
  loc_A152B8: LitVarStr var_AC, "CodiPart"
  loc_A152BD: PopAdLdVar
  loc_A152BE: FLdRfVar var_C8
  loc_A152C1: FLdRfVar var_C4
  loc_A152C4: FLdRfVar var_88
  loc_A152C7: ImpAdLdRf MemVar_C3D724
  loc_A152CA: NewIfNullPr bscPartida
  loc_A152CD: from_stack_1v = bscPartida.global_4332396Get()
  loc_A152D2: FLdPr var_88
  loc_A152D5: from_stack_1v = clsbase.RsFrmGet()
  loc_A152DA: FLdPr var_C4
  loc_A152DD:  = Me.Fields
  loc_A152E2: FLdPr var_C8
  loc_A152E5: from_stack_2 = Me.Item(from_stack_1)
  loc_A152EA: FLdPr var_CC
  loc_A152ED:  = Me.Value
  loc_A152F2: FLdRfVar var_98
  loc_A152F5: CStrVarTmp
  loc_A152F6: CVarStr var_DC
  loc_A152F9: PopAdLdVar
  loc_A152FA: FLdPr Me
  loc_A152FD: VCallAd Control_ID_CodiPartMsk
  loc_A15300: FStAdFunc var_E0
  loc_A15303: FLdPr var_E0
  loc_A15306: LateIdSt
  loc_A1530B: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A15318: FFreeVar var_98 = ""
  loc_A1531F: FLdRfVar var_98
  loc_A15322: FLdRfVar var_CC
  loc_A15325: LitVarStr var_AC, "DetaPart"
  loc_A1532A: PopAdLdVar
  loc_A1532B: FLdRfVar var_C8
  loc_A1532E: FLdRfVar var_C4
  loc_A15331: FLdRfVar var_88
  loc_A15334: ImpAdLdRf MemVar_C3D724
  loc_A15337: NewIfNullPr bscPartida
  loc_A1533A: from_stack_1v = bscPartida.global_4332396Get()
  loc_A1533F: FLdPr var_88
  loc_A15342: from_stack_1v = clsbase.RsFrmGet()
  loc_A15347: FLdPr var_C4
  loc_A1534A:  = Me.Fields
  loc_A1534F: FLdPr var_C8
  loc_A15352: from_stack_2 = Me.Item(from_stack_1)
  loc_A15357: FLdPr var_CC
  loc_A1535A:  = Me.Value
  loc_A1535F: FLdRfVar var_98
  loc_A15362: CStrVarTmp
  loc_A15363: FStStrNoPop var_9C
  loc_A15366: FLdPr Me
  loc_A15369: VCallAd Control_ID_DetaPartLbl
  loc_A1536C: FStAdFunc var_E0
  loc_A1536F: FLdPr var_E0
  loc_A15372: Me.Caption = from_stack_1
  loc_A15377: FFree1Str var_9C
  loc_A1537A: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A15387: FFree1Var var_98 = ""
  loc_A1538A: ExitProcHresult
End Sub

Private Sub NufaDeveTxt_GotFocus() '9D14E0
  'Data Table: 500268
  loc_9D1404: FLdRfVar var_8C
  loc_9D1407: FLdPr Me
  loc_9D140A: VCallAd Control_ID_NufaDeveTxt
  loc_9D140D: FStAdFunc var_88
  loc_9D1410: FLdPr var_88
  loc_9D1413:  = Me.Text
  loc_9D1418: ILdRf var_8C
  loc_9D141B: LitStr vbNullString
  loc_9D141E: EqStr
  loc_9D1420: FFree1Str var_8C
  loc_9D1423: FFree1Ad var_88
  loc_9D1426: BranchF loc_9D1440
  loc_9D1429: LitStr "00000000"
  loc_9D142C: FLdPr Me
  loc_9D142F: VCallAd Control_ID_NufaDeveTxt
  loc_9D1432: FStAdFunc var_88
  loc_9D1435: FLdPr var_88
  loc_9D1438: Me.Text = from_stack_1
  loc_9D143D: FFree1Ad var_88
  loc_9D1440: FLdRfVar var_8C
  loc_9D1443: FLdPr Me
  loc_9D1446: VCallAd Control_ID_TifaDeveCbo
  loc_9D1449: FStAdFunc var_88
  loc_9D144C: FLdPr var_88
  loc_9D144F:  = Me.Text
  loc_9D1454: ILdRf var_8C
  loc_9D1457: LitStr "s/f"
  loc_9D145A: EqStr
  loc_9D145C: FFree1Str var_8C
  loc_9D145F: FFree1Ad var_88
  loc_9D1462: BranchF loc_9D14CA
  loc_9D1465: FLdPr Me
  loc_9D1468: VCallAd Control_ID_FefaDeveMsk
  loc_9D146B: FStAdFunc var_88
  loc_9D146E: FLdPr var_88
  loc_9D1471: LateIdLdVar var_9C DispID_15 0
  loc_9D1478: CStrVarTmp
  loc_9D1479: CVarStr var_AC
  loc_9D147C: FLdRfVar var_BC
  loc_9D147F: ImpAdCallFPR4  = Month()
  loc_9D1484: LitI4 1
  loc_9D1489: LitI4 1
  loc_9D148E: LitVarStr var_CC, "00000000"
  loc_9D1493: FStVarCopyObj var_DC
  loc_9D1496: FLdRfVar var_DC
  loc_9D1499: FLdRfVar var_BC
  loc_9D149C: ImpAdCallI2 Format$(, )
  loc_9D14A1: FStStrNoPop var_8C
  loc_9D14A4: FLdPr Me
  loc_9D14A7: VCallAd Control_ID_NufaDeveTxt
  loc_9D14AA: FStAdFunc var_E0
  loc_9D14AD: FLdPr var_E0
  loc_9D14B0: Me.Text = from_stack_1
  loc_9D14B5: FFree1Str var_8C
  loc_9D14B8: FFreeAd var_88 = ""
  loc_9D14BF: FFreeVar var_9C = "": var_AC = "": var_BC = ""
  loc_9D14CA: FLdPr Me
  loc_9D14CD: VCallAd Control_ID_NufaDeveTxt
  loc_9D14D0: CVarAd
  loc_9D14D4: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9D14D9: FFree1Var var_9C = ""
  loc_9D14DC: ExitProcHresult
  loc_9D14DD: FStAdFuncNoPop
End Sub

Private Sub NufaDeveTxt_KeyPress(KeyAscii As Integer) '962D00
  'Data Table: 500268
  loc_962CE8: LitStr "0123456789"
  loc_962CEB: FStStrCopy var_88
  loc_962CEE: FLdRfVar var_88
  loc_962CF1: ILdRf KeyAscii
  loc_962CF4: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_962CF9: IStI2 KeyAscii
  loc_962CFC: FFree1Str var_88
  loc_962CFF: ExitProcHresult
End Sub

Private Sub NufaDeveTxt_Validate(Cancel As Boolean) 'A588AC
  'Data Table: 500268
  loc_A58614: FLdRfVar var_8A
  loc_A58617: FLdPr Me
  loc_A5861A: VCallAd Control_ID_cmdCancelar
  loc_A5861D: FStAdFunc var_88
  loc_A58620: FLdPr var_88
  loc_A58623:  = Me.Value
  loc_A58628: FLdI2 var_8A
  loc_A5862B: NotI4
  loc_A5862C: FLdRfVar var_92
  loc_A5862F: FLdPr Me
  loc_A58632: VCallAd Control_ID_NufaDeveTxt
  loc_A58635: FStAdFunc var_90
  loc_A58638: FLdPr var_90
  loc_A5863B:  = Me.Enabled
  loc_A58640: FLdI2 var_92
  loc_A58643: AndI4
  loc_A58644: FFreeAd var_88 = ""
  loc_A5864B: BranchF loc_A58896
  loc_A5864E: FLdRfVar var_98
  loc_A58651: FLdPr Me
  loc_A58654: VCallAd Control_ID_NufaDeveTxt
  loc_A58657: FStAdFunc var_88
  loc_A5865A: FLdPr var_88
  loc_A5865D:  = Me.Text
  loc_A58662: FLdRfVar var_9C
  loc_A58665: FLdPr Me
  loc_A58668: VCallAd Control_ID_TifaDeveCbo
  loc_A5866B: FStAdFunc var_90
  loc_A5866E: FLdPr var_90
  loc_A58671:  = Me.Text
  loc_A58676: ILdRf var_9C
  loc_A58679: ILdRf var_98
  loc_A5867C: ImpAdCallI2 Proc_266_20_996550(, )
  loc_A58681: FStStrNoPop var_A0
  loc_A58684: FLdPr Me
  loc_A58687: MemStStrCopy
  loc_A5868B: FFreeStr var_98 = "": var_9C = ""
  loc_A58694: FFreeAd var_88 = ""
  loc_A5869B: FLdPr Me
  loc_A5869E: VCallAd Control_ID_NufaDeveTxt
  loc_A586A1: FStAdFunc var_A8
  loc_A586A4: LitNothing
  loc_A586A6: CastAd
  loc_A586A9: FStAdFunc var_A4
  loc_A586AC: FLdRfVar var_A4
  loc_A586AF: FLdZeroAd var_A8
  loc_A586B2: FStAdFuncNoPop
  loc_A586B5: CastAd
  loc_A586B8: FStAdFunc var_90
  loc_A586BB: FLdRfVar var_90
  loc_A586BE: FLdPr Me
  loc_A586C1: MemLdRfVar from_stack_1.global_64
  loc_A586C4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A586C9: IStI2 Cancel
  loc_A586CC: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A586D7: ILdI2 Cancel
  loc_A586DA: NotI4
  loc_A586DB: BranchF loc_A58896
  loc_A586DE: FLdRfVar var_AC
  loc_A586E1: FLdPr Me
  loc_A586E4: MemLdRfVar from_stack_1.global_52
  loc_A586E7: NewIfNullPr clsimputacion
  loc_A586EA: from_stack_1 = clsimputacion.RecordCount
  loc_A586EF: FLdRfVar var_A4
  loc_A586F2: LitVarStr var_BC, "IdImpu"
  loc_A586F7: PopAdLdVar
  loc_A586F8: FLdRfVar var_90
  loc_A586FB: FLdRfVar var_88
  loc_A586FE: FLdPr Me
  loc_A58701: MemLdRfVar from_stack_1.global_52
  loc_A58704: NewIfNullPr clsimputacion
  loc_A58707: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5870C: FLdPr var_88
  loc_A5870F:  = Me.Fields
  loc_A58714: FLdPr var_90
  loc_A58717: from_stack_2 = Me.Item(from_stack_1)
  loc_A5871C: LitVarI2 var_FC, 0
  loc_A58721: FLdZeroAd var_A4
  loc_A58724: CVarAd
  loc_A58728: ILdRf var_AC
  loc_A5872B: LitI4 0
  loc_A58730: GtI4
  loc_A58731: CVarBoolI2 var_CC
  loc_A58735: FLdRfVar var_10C
  loc_A58738: ImpAdCallFPR4  = IIf(, , )
  loc_A5873D: FLdRfVar var_98
  loc_A58740: FLdPr Me
  loc_A58743: VCallAd Control_ID_ExpeImpuTxt
  loc_A58746: FStAdFunc var_A8
  loc_A58749: FLdPr var_A8
  loc_A5874C:  = Me.Text
  loc_A58751: FLdRfVar var_9C
  loc_A58754: FLdPr Me
  loc_A58757: VCallAd Control_ID_CucuPersTxt
  loc_A5875A: FStAdFunc var_110
  loc_A5875D: FLdPr var_110
  loc_A58760:  = Me.Text
  loc_A58765: FLdRfVar var_A0
  loc_A58768: FLdPr Me
  loc_A5876B: VCallAd Control_ID_TifaDeveCbo
  loc_A5876E: FStAdFunc var_114
  loc_A58771: FLdPr var_114
  loc_A58774:  = Me.Text
  loc_A58779: FLdRfVar var_11C
  loc_A5877C: FLdPr Me
  loc_A5877F: VCallAd Control_ID_SufaDeveTxt
  loc_A58782: FStAdFunc var_118
  loc_A58785: FLdPr var_118
  loc_A58788:  = Me.Text
  loc_A5878D: LitI4 1
  loc_A58792: LitI4 1
  loc_A58797: LitVarStr var_13C, "0000"
  loc_A5879C: FStVarCopyObj var_14C
  loc_A5879F: FLdRfVar var_14C
  loc_A587A2: FLdZeroAd var_11C
  loc_A587A5: CVarStr var_12C
  loc_A587A8: ImpAdCallI2 Format$(, )
  loc_A587AD: FStStr var_19C
  loc_A587B0: FLdRfVar var_158
  loc_A587B3: FLdPr Me
  loc_A587B6: VCallAd Control_ID_NufaDeveTxt
  loc_A587B9: FStAdFunc var_154
  loc_A587BC: FLdPr var_154
  loc_A587BF:  = Me.Text
  loc_A587C4: LitI4 1
  loc_A587C9: LitI4 1
  loc_A587CE: LitVarStr var_178, "00000000"
  loc_A587D3: FStVarCopyObj var_188
  loc_A587D6: FLdRfVar var_188
  loc_A587D9: FLdZeroAd var_158
  loc_A587DC: CVarStr var_168
  loc_A587DF: ImpAdCallI2 Format$(, )
  loc_A587E4: FStStr var_1A0
  loc_A587E7: LitI2_Byte 0
  loc_A587E9: LitI2_Byte 0
  loc_A587EB: ILdRf var_A0
  loc_A587EE: FLdZeroAd var_19C
  loc_A587F1: FStStrNoPop var_150
  loc_A587F4: ConcatStr
  loc_A587F5: FStStrNoPop var_18C
  loc_A587F8: FLdZeroAd var_1A0
  loc_A587FB: FStStrNoPop var_190
  loc_A587FE: ConcatStr
  loc_A587FF: FStStrNoPop var_194
  loc_A58802: ILdRf var_9C
  loc_A58805: ILdRf var_98
  loc_A58808: FLdRfVar var_10C
  loc_A5880B: CI4Var
  loc_A5880D: ImpAdLdI2 MemVar_C3D064
  loc_A58810: ImpAdCallI2 Proc_266_24_AF5868(, , , , , , )
  loc_A58815: FStStrNoPop var_198
  loc_A58818: FLdPr Me
  loc_A5881B: MemStStrCopy
  loc_A5881F: FFreeStr var_A0 = "": var_150 = "": var_18C = "": var_190 = "": var_98 = "": var_9C = "": var_194 = "": var_198 = "": var_19C = ""
  loc_A58836: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_110 = "": var_114 = "": var_118 = ""
  loc_A58847: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_12C = "": var_14C = "": var_168 = "": var_188 = ""
  loc_A5885A: FLdPr Me
  loc_A5885D: VCallAd Control_ID_NufaDeveTxt
  loc_A58860: FStAdFunc var_A8
  loc_A58863: LitNothing
  loc_A58865: CastAd
  loc_A58868: FStAdFunc var_A4
  loc_A5886B: FLdRfVar var_A4
  loc_A5886E: FLdZeroAd var_A8
  loc_A58871: FStAdFuncNoPop
  loc_A58874: CastAd
  loc_A58877: FStAdFunc var_90
  loc_A5887A: FLdRfVar var_90
  loc_A5887D: FLdPr Me
  loc_A58880: MemLdRfVar from_stack_1.global_64
  loc_A58883: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A58888: IStI2 Cancel
  loc_A5888B: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A58896: FLdPr Me
  loc_A58899: VCallAd Control_ID_NufaDeveTxt
  loc_A5889C: CVarAd
  loc_A588A0: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A588A5: FFree1Var var_DC = ""
  loc_A588A8: ExitProcHresult
  loc_A588A9: CExtInstUnk
End Sub

Private Sub TifaDeveCbo_GotFocus() '993EE8
  'Data Table: 500268
  loc_993E90: FLdRfVar var_8C
  loc_993E93: FLdPr Me
  loc_993E96: VCallAd Control_ID_CucuPersTxt
  loc_993E99: FStAdFunc var_88
  loc_993E9C: FLdPr var_88
  loc_993E9F:  = Me.Text
  loc_993EA4: FLdPr Me
  loc_993EA7: MemLdRfVar from_stack_1.global_160
  loc_993EAA: NewIfNullRf
  loc_993EAE: ILdRf var_8C
  loc_993EB1: ImpAdCallFPR4 Proc_259_26_B6A94C(, )
  loc_993EB6: FFree1Str var_8C
  loc_993EB9: FFree1Ad var_88
  loc_993EBC: FLdRfVar var_8C
  loc_993EBF: FLdPr Me
  loc_993EC2: MemLdRfVar from_stack_1.global_160
  loc_993EC5: NewIfNullPr tblproveedor
  loc_993EC8: from_stack_1v = tblproveedor.FactProvGet()
  loc_993ECD: ILdRf var_8C
  loc_993ED0: FLdPr Me
  loc_993ED3: VCallAd Control_ID_TifaDeveCbo
  loc_993ED6: FStAdFunc var_88
  loc_993ED9: FLdPr var_88
  loc_993EDC: Me.Text = from_stack_1
  loc_993EE1: FFree1Str var_8C
  loc_993EE4: FFree1Ad var_88
  loc_993EE7: ExitProcHresult
End Sub

Private Sub TifaDeveCbo_KeyPress(KeyAscii As Integer) '962FF8
  'Data Table: 500268
  loc_962FE0: LitStr "fs"
  loc_962FE3: FStStrCopy var_88
  loc_962FE6: FLdRfVar var_88
  loc_962FE9: ILdRf KeyAscii
  loc_962FEC: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_962FF1: IStI2 KeyAscii
  loc_962FF4: FFree1Str var_88
  loc_962FF7: ExitProcHresult
End Sub

Private Sub TifaDeveCbo_Validate(Cancel As Boolean) 'A0A154
  'Data Table: 500268
  loc_A0A000: FLdRfVar var_8A
  loc_A0A003: FLdPr Me
  loc_A0A006: VCallAd Control_ID_cmdCancelar
  loc_A0A009: FStAdFunc var_88
  loc_A0A00C: FLdPr var_88
  loc_A0A00F:  = Me.Value
  loc_A0A014: FLdI2 var_8A
  loc_A0A017: NotI4
  loc_A0A018: FLdRfVar var_92
  loc_A0A01B: FLdPr Me
  loc_A0A01E: VCallAd Control_ID_TifaDeveCbo
  loc_A0A021: FStAdFunc var_90
  loc_A0A024: FLdPr var_90
  loc_A0A027:  = Me.Enabled
  loc_A0A02C: FLdI2 var_92
  loc_A0A02F: AndI4
  loc_A0A030: FFreeAd var_88 = ""
  loc_A0A037: BranchF loc_A0A150
  loc_A0A03A: FLdRfVar var_98
  loc_A0A03D: FLdPr Me
  loc_A0A040: VCallAd Control_ID_TifaDeveCbo
  loc_A0A043: FStAdFunc var_88
  loc_A0A046: FLdPr var_88
  loc_A0A049:  = Me.Text
  loc_A0A04E: FLdRfVar var_9C
  loc_A0A051: FLdPr Me
  loc_A0A054: VCallAd Control_ID_CucuPersTxt
  loc_A0A057: FStAdFunc var_90
  loc_A0A05A: FLdPr var_90
  loc_A0A05D:  = Me.Text
  loc_A0A062: FLdPr Me
  loc_A0A065: VCallAd Control_ID_FefaDeveMsk
  loc_A0A068: FStAdFunc var_A0
  loc_A0A06B: FLdPr var_A0
  loc_A0A06E: LateIdLdVar var_B0 DispID_15 0
  loc_A0A075: PopAd
  loc_A0A077: FLdPr Me
  loc_A0A07A: MemLdRfVar from_stack_1.global_160
  loc_A0A07D: NewIfNullRf
  loc_A0A081: FLdRfVar var_B0
  loc_A0A084: CStrVarTmp
  loc_A0A085: FStStrNoPop var_B4
  loc_A0A088: ILdRf var_9C
  loc_A0A08B: ILdRf var_98
  loc_A0A08E: ImpAdCallI2 Proc_266_23_A2F578(, , , )
  loc_A0A093: FStStrNoPop var_B8
  loc_A0A096: FLdPr Me
  loc_A0A099: MemStStrCopy
  loc_A0A09D: FFreeStr var_98 = "": var_9C = "": var_B4 = ""
  loc_A0A0A8: FFreeAd var_88 = "": var_90 = ""
  loc_A0A0B1: FFree1Var var_B0 = ""
  loc_A0A0B4: FLdPr Me
  loc_A0A0B7: VCallAd Control_ID_TifaDeveCbo
  loc_A0A0BA: FStAdFunc var_BC
  loc_A0A0BD: LitNothing
  loc_A0A0BF: CastAd
  loc_A0A0C2: FStAdFunc var_A0
  loc_A0A0C5: FLdRfVar var_A0
  loc_A0A0C8: FLdZeroAd var_BC
  loc_A0A0CB: FStAdFuncNoPop
  loc_A0A0CE: CastAd
  loc_A0A0D1: FStAdFunc var_90
  loc_A0A0D4: FLdRfVar var_90
  loc_A0A0D7: FLdPr Me
  loc_A0A0DA: MemLdRfVar from_stack_1.global_64
  loc_A0A0DD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A0A0E2: IStI2 Cancel
  loc_A0A0E5: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_A0A0F0: ILdI2 Cancel
  loc_A0A0F3: NotI4
  loc_A0A0F4: BranchF loc_A0A150
  loc_A0A0F7: FLdRfVar var_98
  loc_A0A0FA: FLdPr Me
  loc_A0A0FD: VCallAd Control_ID_NufaDeveTxt
  loc_A0A100: FStAdFunc var_88
  loc_A0A103: FLdPr var_88
  loc_A0A106:  = Me.Text
  loc_A0A10B: LitI4 1
  loc_A0A110: LitI4 1
  loc_A0A115: LitVarStr var_CC, "00000000"
  loc_A0A11A: FStVarCopyObj var_DC
  loc_A0A11D: FLdRfVar var_DC
  loc_A0A120: FLdZeroAd var_98
  loc_A0A123: CVarStr var_B0
  loc_A0A126: ImpAdCallI2 Format$(, )
  loc_A0A12B: FStStrNoPop var_9C
  loc_A0A12E: FLdPr Me
  loc_A0A131: VCallAd Control_ID_NufaDeveTxt
  loc_A0A134: FStAdFunc var_90
  loc_A0A137: FLdPr var_90
  loc_A0A13A: Me.Text = from_stack_1
  loc_A0A13F: FFree1Str var_9C
  loc_A0A142: FFreeAd var_88 = ""
  loc_A0A149: FFreeVar var_B0 = ""
  loc_A0A150: ExitProcHresult
End Sub

Private Sub CantImpuTxt_GotFocus() '94C200
  'Data Table: 500268
  loc_94C1EC: FLdPr Me
  loc_94C1EF: VCallAd Control_ID_CantImpuTxt
  loc_94C1F2: CVarAd
  loc_94C1F6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C1FB: FFree1Var var_94 = ""
  loc_94C1FE: ExitProcHresult
End Sub

Private Sub CantImpuTxt_KeyPress(KeyAscii As Integer) '97F758
  'Data Table: 500268
  loc_97F724: LitStr "1234567890,."
  loc_97F727: FStStrCopy var_88
  loc_97F72A: FLdRfVar var_88
  loc_97F72D: ILdRf KeyAscii
  loc_97F730: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97F735: IStI2 KeyAscii
  loc_97F738: FFree1Str var_88
  loc_97F73B: ILdI2 KeyAscii
  loc_97F73E: LitStr "."
  loc_97F741: ImpAdCallI2 Asc()
  loc_97F746: EqI2
  loc_97F747: BranchF loc_97F755
  loc_97F74A: LitStr ","
  loc_97F74D: ImpAdCallI2 Asc()
  loc_97F752: IStI2 KeyAscii
  loc_97F755: ExitProcHresult
End Sub

Private Sub CantImpuTxt_Validate(Cancel As Boolean) '9BB208
  'Data Table: 500268
  loc_9BB154: FLdRfVar var_8A
  loc_9BB157: FLdPr Me
  loc_9BB15A: VCallAd Control_ID_cmdCancelar
  loc_9BB15D: FStAdFunc var_88
  loc_9BB160: FLdPr var_88
  loc_9BB163:  = Me.Value
  loc_9BB168: FLdI2 var_8A
  loc_9BB16B: NotI4
  loc_9BB16C: FLdRfVar var_92
  loc_9BB16F: FLdPr Me
  loc_9BB172: VCallAd Control_ID_CantImpuTxt
  loc_9BB175: FStAdFunc var_90
  loc_9BB178: FLdPr var_90
  loc_9BB17B:  = Me.Enabled
  loc_9BB180: FLdI2 var_92
  loc_9BB183: AndI4
  loc_9BB184: FFreeAd var_88 = ""
  loc_9BB18B: BranchF loc_9BB206
  loc_9BB18E: FLdRfVar var_98
  loc_9BB191: FLdPr Me
  loc_9BB194: VCallAd Control_ID_CantImpuTxt
  loc_9BB197: FStAdFunc var_88
  loc_9BB19A: FLdPr var_88
  loc_9BB19D:  = Me.Text
  loc_9BB1A2: LitStr "0"
  loc_9BB1A5: LitI2_Byte &HFF
  loc_9BB1A7: LitI2_Byte 0
  loc_9BB1A9: LitI2_Byte 0
  loc_9BB1AB: ILdRf var_98
  loc_9BB1AE: LitStr "Cantidad"
  loc_9BB1B1: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9BB1B6: FStStrNoPop var_9C
  loc_9BB1B9: FLdPr Me
  loc_9BB1BC: MemStStrCopy
  loc_9BB1C0: FFreeStr var_98 = ""
  loc_9BB1C7: FFree1Ad var_88
  loc_9BB1CA: FLdPr Me
  loc_9BB1CD: VCallAd Control_ID_CantImpuTxt
  loc_9BB1D0: FStAdFunc var_A4
  loc_9BB1D3: LitNothing
  loc_9BB1D5: CastAd
  loc_9BB1D8: FStAdFunc var_A0
  loc_9BB1DB: FLdRfVar var_A0
  loc_9BB1DE: FLdZeroAd var_A4
  loc_9BB1E1: FStAdFuncNoPop
  loc_9BB1E4: CastAd
  loc_9BB1E7: FStAdFunc var_90
  loc_9BB1EA: FLdRfVar var_90
  loc_9BB1ED: FLdPr Me
  loc_9BB1F0: MemLdRfVar from_stack_1.global_64
  loc_9BB1F3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BB1F8: IStI2 Cancel
  loc_9BB1FB: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BB206: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_GotFocus() 'A39CA4
  'Data Table: 500268
  loc_A39A88: FLdRfVar var_8A
  loc_A39A8B: FLdPr Me
  loc_A39A8E: VCallAd Control_ID_ExpeImpuTxt
  loc_A39A91: FStAdFunc var_88
  loc_A39A94: FLdPr var_88
  loc_A39A97:  = Me.Enabled
  loc_A39A9C: FLdI2 var_8A
  loc_A39A9F: FFree1Ad var_88
  loc_A39AA2: BranchF loc_A39CA3
  loc_A39AA5: FLdRfVar var_8A
  loc_A39AA8: FLdPr Me
  loc_A39AAB: VCallAd Control_ID_chkRepetirExpePago
  loc_A39AAE: FStAdFunc var_88
  loc_A39AB1: FLdPr var_88
  loc_A39AB4:  = Me.Value
  loc_A39AB9: FLdI2 var_8A
  loc_A39ABC: CI4UI1
  loc_A39ABD: LitI4 1
  loc_A39AC2: EqI4
  loc_A39AC3: FFree1Ad var_88
  loc_A39AC6: BranchF loc_A39ACC
  loc_A39AC9: Branch loc_A39C91
  loc_A39ACC: FLdRfVar var_90
  loc_A39ACF: FLdPr Me
  loc_A39AD2: VCallAd Control_ID_CucuPersTxt
  loc_A39AD5: FStAdFunc var_88
  loc_A39AD8: FLdPr var_88
  loc_A39ADB:  = Me.Text
  loc_A39AE0: FLdPr Me
  loc_A39AE3: VCallAd Control_ID_ExorImpuMsk
  loc_A39AE6: FStAdFunc var_94
  loc_A39AE9: FLdPr var_94
  loc_A39AEC: LateIdLdVar var_A4 DispID_15 0
  loc_A39AF3: PopAd
  loc_A39AF5: FLdRfVar var_AC
  loc_A39AF8: FLdPr Me
  loc_A39AFB: VCallAd Control_ID_ExpeImpuTxt
  loc_A39AFE: FStAdFunc var_A8
  loc_A39B01: FLdPr var_A8
  loc_A39B04:  = Me.Text
  loc_A39B09: ILdRf var_AC
  loc_A39B0C: FLdRfVar var_A4
  loc_A39B0F: CStrVarTmp
  loc_A39B10: FStStrNoPop var_B0
  loc_A39B13: ILdRf var_90
  loc_A39B16: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_A39B1B: FStStrNoPop var_B4
  loc_A39B1E: FLdPr Me
  loc_A39B21: VCallAd Control_ID_ExpeImpuTxt
  loc_A39B24: FStAdFunc var_B8
  loc_A39B27: FLdPr var_B8
  loc_A39B2A: Me.Text = from_stack_1
  loc_A39B2F: FFreeStr var_90 = "": var_B0 = "": var_AC = ""
  loc_A39B3A: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_A39B45: FFree1Var var_A4 = ""
  loc_A39B48: FLdRfVar var_90
  loc_A39B4B: FLdPr Me
  loc_A39B4E: VCallAd Control_ID_CucuPersTxt
  loc_A39B51: FStAdFunc var_88
  loc_A39B54: FLdPr var_88
  loc_A39B57:  = Me.Text
  loc_A39B5C: FLdPr Me
  loc_A39B5F: VCallAd Control_ID_ExorImpuMsk
  loc_A39B62: FStAdFunc var_94
  loc_A39B65: FLdPr var_94
  loc_A39B68: LateIdLdVar var_A4 DispID_15 0
  loc_A39B6F: PopAd
  loc_A39B71: FLdRfVar var_AC
  loc_A39B74: FLdPr Me
  loc_A39B77: VCallAd Control_ID_ExpeImpuTxt
  loc_A39B7A: FStAdFunc var_A8
  loc_A39B7D: FLdPr var_A8
  loc_A39B80:  = Me.Text
  loc_A39B85: ILdRf var_AC
  loc_A39B88: FLdRfVar var_A4
  loc_A39B8B: CStrVarTmp
  loc_A39B8C: FStStrNoPop var_B0
  loc_A39B8F: ILdRf var_90
  loc_A39B92: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_A39B97: FStStrNoPop var_B4
  loc_A39B9A: LitStr vbNullString
  loc_A39B9D: NeStr
  loc_A39B9F: FFreeStr var_90 = "": var_B0 = "": var_AC = ""
  loc_A39BAA: FFreeAd var_88 = "": var_94 = ""
  loc_A39BB3: FFree1Var var_A4 = ""
  loc_A39BB6: BranchF loc_A39C91
  loc_A39BB9: FLdRfVar var_BC
  loc_A39BBC: FLdRfVar var_8A
  loc_A39BBF: FLdPr Me
  loc_A39BC2: VCallAd Control_ID_cboSeleccion
  loc_A39BC5: FStAdFunc var_88
  loc_A39BC8: FLdPr var_88
  loc_A39BCB:  = Me.ListIndex
  loc_A39BD0: FLdI2 var_8A
  loc_A39BD3: FLdPr Me
  loc_A39BD6: VCallAd Control_ID_cboSeleccion
  loc_A39BD9: FStAdFunc var_94
  loc_A39BDC: FLdPr var_94
  loc_A39BDF:  = Me.ItemData
  loc_A39BE4: ILdRf var_BC
  loc_A39BE7: FStR4 var_C0
  loc_A39BEA: FFreeAd var_88 = ""
  loc_A39BF1: ILdRf var_C0
  loc_A39BF4: LitI4 3
  loc_A39BF9: EqI4
  loc_A39BFA: BranchT loc_A39C15
  loc_A39BFD: ILdRf var_C0
  loc_A39C00: LitI4 6
  loc_A39C05: EqI4
  loc_A39C06: BranchT loc_A39C15
  loc_A39C09: ILdRf var_C0
  loc_A39C0C: LitI4 7
  loc_A39C11: EqI4
  loc_A39C12: BranchF loc_A39C91
  loc_A39C15: FLdRfVar var_90
  loc_A39C18: FLdPr Me
  loc_A39C1B: VCallAd Control_ID_CucuPersTxt
  loc_A39C1E: FStAdFunc var_88
  loc_A39C21: FLdPr var_88
  loc_A39C24:  = Me.Text
  loc_A39C29: FLdPr Me
  loc_A39C2C: VCallAd Control_ID_ExorImpuMsk
  loc_A39C2F: FStAdFunc var_94
  loc_A39C32: FLdPr var_94
  loc_A39C35: LateIdLdVar var_A4 DispID_15 0
  loc_A39C3C: PopAd
  loc_A39C3E: FLdRfVar var_AC
  loc_A39C41: FLdPr Me
  loc_A39C44: VCallAd Control_ID_ExpeImpuTxt
  loc_A39C47: FStAdFunc var_A8
  loc_A39C4A: FLdPr var_A8
  loc_A39C4D:  = Me.Text
  loc_A39C52: ILdRf var_AC
  loc_A39C55: FLdRfVar var_A4
  loc_A39C58: CStrVarTmp
  loc_A39C59: FStStrNoPop var_B0
  loc_A39C5C: ILdRf var_90
  loc_A39C5F: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_A39C64: FStStrNoPop var_B4
  loc_A39C67: FLdPr Me
  loc_A39C6A: VCallAd Control_ID_ExpeImpuTxt
  loc_A39C6D: FStAdFunc var_B8
  loc_A39C70: FLdPr var_B8
  loc_A39C73: Me.Text = from_stack_1
  loc_A39C78: FFreeStr var_90 = "": var_B0 = "": var_AC = ""
  loc_A39C83: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_A39C8E: FFree1Var var_A4 = ""
  loc_A39C91: FLdPr Me
  loc_A39C94: VCallAd Control_ID_ExpeImpuTxt
  loc_A39C97: CVarAd
  loc_A39C9B: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A39CA0: FFree1Var var_A4 = ""
  loc_A39CA3: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_KeyPress(KeyAscii As Integer) '993D34
  'Data Table: 500268
  loc_993CE0: ILdI2 KeyAscii
  loc_993CE3: CI4UI1
  loc_993CE4: FLdRfVar var_94
  loc_993CE7: ImpAdCallFPR4  = Chr()
  loc_993CEC: FLdRfVar var_94
  loc_993CEF: FLdRfVar var_A4
  loc_993CF2: ImpAdCallFPR4  = Ucase()
  loc_993CF7: FLdRfVar var_A4
  loc_993CFA: CStrVarVal var_A8
  loc_993CFE: ImpAdCallI2 Asc()
  loc_993D03: IStI2 KeyAscii
  loc_993D06: FFree1Str var_A8
  loc_993D09: FFreeVar var_94 = ""
  loc_993D10: ILdI2 KeyAscii
  loc_993D13: CI4UI1
  loc_993D14: LitI4 9
  loc_993D19: EqI4
  loc_993D1A: ILdI2 KeyAscii
  loc_993D1D: CI4UI1
  loc_993D1E: LitI4 0
  loc_993D23: EqI4
  loc_993D24: OrI4
  loc_993D25: BranchF loc_993D32
  loc_993D28: LitI2_Byte 0
  loc_993D2A: PopTmpLdAd2 var_AA
  loc_993D2D: Call ExpeImpuTxt_Validate(from_stack_1v)
  loc_993D32: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_Validate(Cancel As Boolean) '9E5424
  'Data Table: 500268
  loc_9E5318: Call ExpeImpuTxt_GotFocus()
  loc_9E531D: FLdRfVar var_8A
  loc_9E5320: FLdPr Me
  loc_9E5323: VCallAd Control_ID_cmdCancelar
  loc_9E5326: FStAdFunc var_88
  loc_9E5329: FLdPr var_88
  loc_9E532C:  = Me.Value
  loc_9E5331: FLdI2 var_8A
  loc_9E5334: NotI4
  loc_9E5335: FLdRfVar var_92
  loc_9E5338: FLdPr Me
  loc_9E533B: VCallAd Control_ID_ExpeImpuTxt
  loc_9E533E: FStAdFunc var_90
  loc_9E5341: FLdPr var_90
  loc_9E5344:  = Me.Enabled
  loc_9E5349: FLdI2 var_92
  loc_9E534C: AndI4
  loc_9E534D: FFreeAd var_88 = ""
  loc_9E5354: BranchF loc_9E5420
  loc_9E5357: FLdRfVar var_98
  loc_9E535A: FLdPr Me
  loc_9E535D: VCallAd Control_ID_ExpeImpuTxt
  loc_9E5360: FStAdFunc var_88
  loc_9E5363: FLdPr var_88
  loc_9E5366:  = Me.Text
  loc_9E536B: FLdZeroAd var_98
  loc_9E536E: CVarStr var_A8
  loc_9E5371: FLdRfVar var_B8
  loc_9E5374: ImpAdCallFPR4  = Ucase()
  loc_9E5379: FLdRfVar var_B8
  loc_9E537C: CStrVarVal var_BC
  loc_9E5380: FLdPr Me
  loc_9E5383: VCallAd Control_ID_ExpeImpuTxt
  loc_9E5386: FStAdFunc var_90
  loc_9E5389: FLdPr var_90
  loc_9E538C: Me.Text = from_stack_1
  loc_9E5391: FFree1Str var_BC
  loc_9E5394: FFreeAd var_88 = ""
  loc_9E539B: FFreeVar var_A8 = ""
  loc_9E53A2: FLdRfVar var_98
  loc_9E53A5: FLdPr Me
  loc_9E53A8: VCallAd Control_ID_ExpeImpuTxt
  loc_9E53AB: FStAdFunc var_88
  loc_9E53AE: FLdPr var_88
  loc_9E53B1:  = Me.Text
  loc_9E53B6: LitI2_Byte 0
  loc_9E53B8: PopTmpLdAd2 var_BE
  loc_9E53BB: LitI2_Byte 0
  loc_9E53BD: PopTmpLdAd2 var_92
  loc_9E53C0: LitI2_Byte 0
  loc_9E53C2: PopTmpLdAd2 var_8A
  loc_9E53C5: ILdRf var_98
  loc_9E53C8: LitStr "Expediente de Pago"
  loc_9E53CB: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9E53D0: FStStrNoPop var_BC
  loc_9E53D3: FLdPr Me
  loc_9E53D6: MemStStrCopy
  loc_9E53DA: FFreeStr var_98 = ""
  loc_9E53E1: FFree1Ad var_88
  loc_9E53E4: FLdPr Me
  loc_9E53E7: VCallAd Control_ID_ExpeImpuTxt
  loc_9E53EA: FStAdFunc var_C8
  loc_9E53ED: LitNothing
  loc_9E53EF: CastAd
  loc_9E53F2: FStAdFunc var_C4
  loc_9E53F5: FLdRfVar var_C4
  loc_9E53F8: FLdZeroAd var_C8
  loc_9E53FB: FStAdFuncNoPop
  loc_9E53FE: CastAd
  loc_9E5401: FStAdFunc var_90
  loc_9E5404: FLdRfVar var_90
  loc_9E5407: FLdPr Me
  loc_9E540A: MemLdRfVar from_stack_1.global_64
  loc_9E540D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E5412: IStI2 Cancel
  loc_9E5415: FFreeAd var_88 = "": var_90 = "": var_C4 = ""
  loc_9E5420: ExitProcHresult
  loc_9E5421: LitStr "Fecha factura: "
End Sub

Private Sub SufaDeveTxt_GotFocus() '9B720C
  'Data Table: 500268
  loc_9B715C: FLdRfVar var_8C
  loc_9B715F: FLdPr Me
  loc_9B7162: VCallAd Control_ID_SufaDeveTxt
  loc_9B7165: FStAdFunc var_88
  loc_9B7168: FLdPr var_88
  loc_9B716B:  = Me.Text
  loc_9B7170: ILdRf var_8C
  loc_9B7173: LitStr vbNullString
  loc_9B7176: EqStr
  loc_9B7178: FFree1Str var_8C
  loc_9B717B: FFree1Ad var_88
  loc_9B717E: BranchF loc_9B7198
  loc_9B7181: LitStr "0000"
  loc_9B7184: FLdPr Me
  loc_9B7187: VCallAd Control_ID_SufaDeveTxt
  loc_9B718A: FStAdFunc var_88
  loc_9B718D: FLdPr var_88
  loc_9B7190: Me.Text = from_stack_1
  loc_9B7195: FFree1Ad var_88
  loc_9B7198: FLdRfVar var_8C
  loc_9B719B: FLdPr Me
  loc_9B719E: VCallAd Control_ID_TifaDeveCbo
  loc_9B71A1: FStAdFunc var_88
  loc_9B71A4: FLdPr var_88
  loc_9B71A7:  = Me.Text
  loc_9B71AC: ILdRf var_8C
  loc_9B71AF: LitStr "s/f"
  loc_9B71B2: EqStr
  loc_9B71B4: FFree1Str var_8C
  loc_9B71B7: FFree1Ad var_88
  loc_9B71BA: BranchF loc_9B71F8
  loc_9B71BD: LitStr "Municipalidad de Guaymallén"
  loc_9B71C0: FStStrCopy var_90
  loc_9B71C3: ILdRf var_90
  loc_9B71C6: LitStr "Municipalidad de Malargüe"
  loc_9B71C9: EqStr
  loc_9B71CB: BranchT loc_9B71D9
  loc_9B71CE: ILdRf var_90
  loc_9B71D1: LitStr "Municipalidad de Guaymallén"
  loc_9B71D4: EqStr
  loc_9B71D6: BranchF loc_9B71DC
  loc_9B71D9: Branch loc_9B71F8
  loc_9B71DC: LitStr "0"
  loc_9B71DF: FLdPr Me
  loc_9B71E2: VCallAd Control_ID_SufaDeveTxt
  loc_9B71E5: FStAdFunc var_88
  loc_9B71E8: FLdPr var_88
  loc_9B71EB: Me.Text = from_stack_1
  loc_9B71F0: FFree1Ad var_88
  loc_9B71F3: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9B71F8: FLdPr Me
  loc_9B71FB: VCallAd Control_ID_SufaDeveTxt
  loc_9B71FE: CVarAd
  loc_9B7202: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9B7207: FFree1Var var_A0 = ""
  loc_9B720A: ExitProcHresult
End Sub

Private Sub SufaDeveTxt_KeyPress(KeyAscii As Integer) '962EC8
  'Data Table: 500268
  loc_962EB0: LitStr "0123456789"
  loc_962EB3: FStStrCopy var_88
  loc_962EB6: FLdRfVar var_88
  loc_962EB9: ILdRf KeyAscii
  loc_962EBC: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_962EC1: IStI2 KeyAscii
  loc_962EC4: FFree1Str var_88
  loc_962EC7: ExitProcHresult
End Sub

Private Sub SufaDeveTxt_Validate(Cancel As Boolean) '9EF900
  'Data Table: 500268
  loc_9EF7DC: FLdRfVar var_8A
  loc_9EF7DF: FLdPr Me
  loc_9EF7E2: VCallAd Control_ID_cmdCancelar
  loc_9EF7E5: FStAdFunc var_88
  loc_9EF7E8: FLdPr var_88
  loc_9EF7EB:  = Me.Value
  loc_9EF7F0: FLdI2 var_8A
  loc_9EF7F3: NotI4
  loc_9EF7F4: FLdRfVar var_92
  loc_9EF7F7: FLdPr Me
  loc_9EF7FA: VCallAd Control_ID_SufaDeveTxt
  loc_9EF7FD: FStAdFunc var_90
  loc_9EF800: FLdPr var_90
  loc_9EF803:  = Me.Enabled
  loc_9EF808: FLdI2 var_92
  loc_9EF80B: AndI4
  loc_9EF80C: FFreeAd var_88 = ""
  loc_9EF813: BranchF loc_9EF8FF
  loc_9EF816: FLdRfVar var_98
  loc_9EF819: FLdPr Me
  loc_9EF81C: VCallAd Control_ID_SufaDeveTxt
  loc_9EF81F: FStAdFunc var_88
  loc_9EF822: FLdPr var_88
  loc_9EF825:  = Me.Text
  loc_9EF82A: FLdRfVar var_9C
  loc_9EF82D: FLdPr Me
  loc_9EF830: VCallAd Control_ID_TifaDeveCbo
  loc_9EF833: FStAdFunc var_90
  loc_9EF836: FLdPr var_90
  loc_9EF839:  = Me.Text
  loc_9EF83E: ILdRf var_9C
  loc_9EF841: ILdRf var_98
  loc_9EF844: ImpAdCallI2 Proc_266_22_990D68(, )
  loc_9EF849: FStStrNoPop var_A0
  loc_9EF84C: FLdPr Me
  loc_9EF84F: MemStStrCopy
  loc_9EF853: FFreeStr var_98 = "": var_9C = ""
  loc_9EF85C: FFreeAd var_88 = ""
  loc_9EF863: FLdPr Me
  loc_9EF866: VCallAd Control_ID_SufaDeveTxt
  loc_9EF869: FStAdFunc var_A8
  loc_9EF86C: LitNothing
  loc_9EF86E: CastAd
  loc_9EF871: FStAdFunc var_A4
  loc_9EF874: FLdRfVar var_A4
  loc_9EF877: FLdZeroAd var_A8
  loc_9EF87A: FStAdFuncNoPop
  loc_9EF87D: CastAd
  loc_9EF880: FStAdFunc var_90
  loc_9EF883: FLdRfVar var_90
  loc_9EF886: FLdPr Me
  loc_9EF889: MemLdRfVar from_stack_1.global_64
  loc_9EF88C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9EF891: IStI2 Cancel
  loc_9EF894: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9EF89F: ILdI2 Cancel
  loc_9EF8A2: NotI4
  loc_9EF8A3: BranchF loc_9EF8FF
  loc_9EF8A6: FLdRfVar var_98
  loc_9EF8A9: FLdPr Me
  loc_9EF8AC: VCallAd Control_ID_SufaDeveTxt
  loc_9EF8AF: FStAdFunc var_88
  loc_9EF8B2: FLdPr var_88
  loc_9EF8B5:  = Me.Text
  loc_9EF8BA: LitI4 1
  loc_9EF8BF: LitI4 1
  loc_9EF8C4: LitVarStr var_C8, "0000"
  loc_9EF8C9: FStVarCopyObj var_D8
  loc_9EF8CC: FLdRfVar var_D8
  loc_9EF8CF: FLdZeroAd var_98
  loc_9EF8D2: CVarStr var_B8
  loc_9EF8D5: ImpAdCallI2 Format$(, )
  loc_9EF8DA: FStStrNoPop var_9C
  loc_9EF8DD: FLdPr Me
  loc_9EF8E0: VCallAd Control_ID_SufaDeveTxt
  loc_9EF8E3: FStAdFunc var_90
  loc_9EF8E6: FLdPr var_90
  loc_9EF8E9: Me.Text = from_stack_1
  loc_9EF8EE: FFree1Str var_9C
  loc_9EF8F1: FFreeAd var_88 = ""
  loc_9EF8F8: FFreeVar var_B8 = ""
  loc_9EF8FF: ExitProcHresult
End Sub

Private Sub ImpoImpuTxt_GotFocus() '94C950
  'Data Table: 500268
  loc_94C93C: FLdPr Me
  loc_94C93F: VCallAd Control_ID_ImpoImpuTxt
  loc_94C942: CVarAd
  loc_94C946: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C94B: FFree1Var var_94 = ""
  loc_94C94E: ExitProcHresult
End Sub

Private Sub ImpoImpuTxt_KeyPress(KeyAscii As Integer) '97E3D8
  'Data Table: 500268
  loc_97E3A4: LitStr "1234567890,."
  loc_97E3A7: FStStrCopy var_88
  loc_97E3AA: FLdRfVar var_88
  loc_97E3AD: ILdRf KeyAscii
  loc_97E3B0: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97E3B5: IStI2 KeyAscii
  loc_97E3B8: FFree1Str var_88
  loc_97E3BB: ILdI2 KeyAscii
  loc_97E3BE: LitStr "."
  loc_97E3C1: ImpAdCallI2 Asc()
  loc_97E3C6: EqI2
  loc_97E3C7: BranchF loc_97E3D5
  loc_97E3CA: LitStr ","
  loc_97E3CD: ImpAdCallI2 Asc()
  loc_97E3D2: IStI2 KeyAscii
  loc_97E3D5: ExitProcHresult
  loc_97E3D6: EqCyR8
End Sub

Private Sub ImpoImpuTxt_LostFocus() 'A3B7A8
  'Data Table: 500268
  loc_A3B570: LitStr "Municipalidad de Guaymallén"
  loc_A3B573: LitStr "Municipalidad de Tupungato"
  loc_A3B576: EqStr
  loc_A3B578: FLdPr Me
  loc_A3B57B: VCallAd Control_ID_CodiOrgaMsk
  loc_A3B57E: FStAdFunc var_88
  loc_A3B581: FLdPr var_88
  loc_A3B584: LateIdLdVar var_98 DispID_22 0
  loc_A3B58B: CStrVarTmp
  loc_A3B58C: FStStrNoPop var_9C
  loc_A3B58F: LitStr "3100000"
  loc_A3B592: EqStr
  loc_A3B594: AndI4
  loc_A3B595: FFree1Str var_9C
  loc_A3B598: FFree1Ad var_88
  loc_A3B59B: FFree1Var var_98 = ""
  loc_A3B59E: BranchF loc_A3B7A5
  loc_A3B5A1: FLdRfVar var_9E
  loc_A3B5A4: FLdPr Me
  loc_A3B5A7: VCallAd Control_ID_cmdCancelar
  loc_A3B5AA: FStAdFunc var_88
  loc_A3B5AD: FLdPr var_88
  loc_A3B5B0:  = Me.Value
  loc_A3B5B5: FLdI2 var_9E
  loc_A3B5B8: NotI4
  loc_A3B5B9: FLdRfVar var_A6
  loc_A3B5BC: FLdPr Me
  loc_A3B5BF: VCallAd Control_ID_ImpoImpuTxt
  loc_A3B5C2: FStAdFunc var_A4
  loc_A3B5C5: FLdPr var_A4
  loc_A3B5C8:  = Me.Enabled
  loc_A3B5CD: FLdI2 var_A6
  loc_A3B5D0: AndI4
  loc_A3B5D1: FFreeAd var_88 = ""
  loc_A3B5D8: BranchF loc_A3B7A5
  loc_A3B5DB: FLdRfVar var_AC
  loc_A3B5DE: FLdRfVar var_9E
  loc_A3B5E1: FLdPr Me
  loc_A3B5E4: VCallAd Control_ID_cboSeleccion
  loc_A3B5E7: FStAdFunc var_88
  loc_A3B5EA: FLdPr var_88
  loc_A3B5ED:  = Me.ListIndex
  loc_A3B5F2: FLdI2 var_9E
  loc_A3B5F5: FLdPr Me
  loc_A3B5F8: VCallAd Control_ID_cboSeleccion
  loc_A3B5FB: FStAdFunc var_A4
  loc_A3B5FE: FLdPr var_A4
  loc_A3B601:  = Me.ItemData
  loc_A3B606: ILdRf var_AC
  loc_A3B609: FStR4 var_B0
  loc_A3B60C: FFreeAd var_88 = ""
  loc_A3B613: ILdRf var_B0
  loc_A3B616: LitI4 1
  loc_A3B61B: EqI4
  loc_A3B61C: BranchF loc_A3B622
  loc_A3B61F: Branch loc_A3B7A5
  loc_A3B622: ILdRf var_B0
  loc_A3B625: LitI4 2
  loc_A3B62A: EqI4
  loc_A3B62B: BranchF loc_A3B631
  loc_A3B62E: Branch loc_A3B7A5
  loc_A3B631: ILdRf var_B0
  loc_A3B634: LitI4 &H13
  loc_A3B639: EqI4
  loc_A3B63A: BranchF loc_A3B640
  loc_A3B63D: Branch loc_A3B7A5
  loc_A3B640: ILdRf var_B0
  loc_A3B643: LitI4 3
  loc_A3B648: EqI4
  loc_A3B649: BranchF loc_A3B6AE
  loc_A3B64C: FLdPr Me
  loc_A3B64F: MemLdUI1 global_60
  loc_A3B653: CI2UI1
  loc_A3B655: LitI2_Byte 1
  loc_A3B657: EqI2
  loc_A3B658: FLdPr Me
  loc_A3B65B: MemLdUI1 global_60
  loc_A3B65F: CI2UI1
  loc_A3B661: LitI2_Byte 2
  loc_A3B663: EqI2
  loc_A3B664: OrI4
  loc_A3B665: BranchF loc_A3B6AB
  loc_A3B668: FLdRfVar var_9C
  loc_A3B66B: FLdPr Me
  loc_A3B66E: VCallAd Control_ID_ImpoImpuTxt
  loc_A3B671: FStAdFunc var_88
  loc_A3B674: FLdPr var_88
  loc_A3B677:  = Me.Text
  loc_A3B67C: ILdRf var_9C
  loc_A3B67F: CR8Str
  loc_A3B681: PopFPR8
  loc_A3B682: ImpAdLdRf MemVar_C3D1C4
  loc_A3B685: NewIfNullPr mdlImporte
  loc_A3B688: Call mdlImporte.ImpoLimitePut(from_stack_1v)
  loc_A3B68D: FFree1Str var_9C
  loc_A3B690: FFree1Ad var_88
  loc_A3B693: LitVar_Missing var_D0
  loc_A3B696: PopAdLdVar
  loc_A3B697: LitVarI4
  loc_A3B69F: PopAdLdVar
  loc_A3B6A0: ImpAdLdRf MemVar_C3D1C4
  loc_A3B6A3: NewIfNullPr mdlImporte
  loc_A3B6A6: mdlImporte.Show from_stack_1, from_stack_2
  loc_A3B6AB: Branch loc_A3B7A5
  loc_A3B6AE: ILdRf var_B0
  loc_A3B6B1: LitI4 4
  loc_A3B6B6: EqI4
  loc_A3B6B7: BranchF loc_A3B6BD
  loc_A3B6BA: Branch loc_A3B7A5
  loc_A3B6BD: ILdRf var_B0
  loc_A3B6C0: LitI4 5
  loc_A3B6C5: EqI4
  loc_A3B6C6: BranchF loc_A3B6CC
  loc_A3B6C9: Branch loc_A3B7A5
  loc_A3B6CC: ILdRf var_B0
  loc_A3B6CF: LitI4 6
  loc_A3B6D4: EqI4
  loc_A3B6D5: BranchF loc_A3B73A
  loc_A3B6D8: FLdPr Me
  loc_A3B6DB: MemLdUI1 global_60
  loc_A3B6DF: CI2UI1
  loc_A3B6E1: LitI2_Byte 1
  loc_A3B6E3: EqI2
  loc_A3B6E4: FLdPr Me
  loc_A3B6E7: MemLdUI1 global_60
  loc_A3B6EB: CI2UI1
  loc_A3B6ED: LitI2_Byte 2
  loc_A3B6EF: EqI2
  loc_A3B6F0: OrI4
  loc_A3B6F1: BranchF loc_A3B737
  loc_A3B6F4: FLdRfVar var_9C
  loc_A3B6F7: FLdPr Me
  loc_A3B6FA: VCallAd Control_ID_ImpoImpuTxt
  loc_A3B6FD: FStAdFunc var_88
  loc_A3B700: FLdPr var_88
  loc_A3B703:  = Me.Text
  loc_A3B708: ILdRf var_9C
  loc_A3B70B: CR8Str
  loc_A3B70D: PopFPR8
  loc_A3B70E: ImpAdLdRf MemVar_C3D1C4
  loc_A3B711: NewIfNullPr mdlImporte
  loc_A3B714: Call mdlImporte.ImpoLimitePut(from_stack_1v)
  loc_A3B719: FFree1Str var_9C
  loc_A3B71C: FFree1Ad var_88
  loc_A3B71F: LitVar_Missing var_D0
  loc_A3B722: PopAdLdVar
  loc_A3B723: LitVarI4
  loc_A3B72B: PopAdLdVar
  loc_A3B72C: ImpAdLdRf MemVar_C3D1C4
  loc_A3B72F: NewIfNullPr mdlImporte
  loc_A3B732: mdlImporte.Show from_stack_1, from_stack_2
  loc_A3B737: Branch loc_A3B7A5
  loc_A3B73A: ILdRf var_B0
  loc_A3B73D: LitI4 7
  loc_A3B742: EqI4
  loc_A3B743: BranchF loc_A3B7A5
  loc_A3B746: FLdPr Me
  loc_A3B749: MemLdUI1 global_60
  loc_A3B74D: CI2UI1
  loc_A3B74F: LitI2_Byte 1
  loc_A3B751: EqI2
  loc_A3B752: FLdPr Me
  loc_A3B755: MemLdUI1 global_60
  loc_A3B759: CI2UI1
  loc_A3B75B: LitI2_Byte 2
  loc_A3B75D: EqI2
  loc_A3B75E: OrI4
  loc_A3B75F: BranchF loc_A3B7A5
  loc_A3B762: FLdRfVar var_9C
  loc_A3B765: FLdPr Me
  loc_A3B768: VCallAd Control_ID_ImpoImpuTxt
  loc_A3B76B: FStAdFunc var_88
  loc_A3B76E: FLdPr var_88
  loc_A3B771:  = Me.Text
  loc_A3B776: ILdRf var_9C
  loc_A3B779: CR8Str
  loc_A3B77B: PopFPR8
  loc_A3B77C: ImpAdLdRf MemVar_C3D1C4
  loc_A3B77F: NewIfNullPr mdlImporte
  loc_A3B782: Call mdlImporte.ImpoLimitePut(from_stack_1v)
  loc_A3B787: FFree1Str var_9C
  loc_A3B78A: FFree1Ad var_88
  loc_A3B78D: LitVar_Missing var_D0
  loc_A3B790: PopAdLdVar
  loc_A3B791: LitVarI4
  loc_A3B799: PopAdLdVar
  loc_A3B79A: ImpAdLdRf MemVar_C3D1C4
  loc_A3B79D: NewIfNullPr mdlImporte
  loc_A3B7A0: mdlImporte.Show from_stack_1, from_stack_2
  loc_A3B7A5: ExitProcHresult
End Sub

Private Sub ImpoImpuTxt_Validate(Cancel As Boolean) 'B9347C
  'Data Table: 500268
  loc_B925E8: FLdRfVar var_8A
  loc_B925EB: FLdPr Me
  loc_B925EE: VCallAd Control_ID_cmdCancelar
  loc_B925F1: FStAdFunc var_88
  loc_B925F4: FLdPr var_88
  loc_B925F7:  = Me.Value
  loc_B925FC: FLdI2 var_8A
  loc_B925FF: NotI4
  loc_B92600: FLdRfVar var_92
  loc_B92603: FLdPr Me
  loc_B92606: VCallAd Control_ID_ImpoImpuTxt
  loc_B92609: FStAdFunc var_90
  loc_B9260C: FLdPr var_90
  loc_B9260F:  = Me.Enabled
  loc_B92614: FLdI2 var_92
  loc_B92617: AndI4
  loc_B92618: FFreeAd var_88 = ""
  loc_B9261F: BranchF loc_B9347B
  loc_B92622: FLdRfVar var_98
  loc_B92625: FLdPr Me
  loc_B92628: VCallAd Control_ID_ImpoImpuTxt
  loc_B9262B: FStAdFunc var_88
  loc_B9262E: FLdPr var_88
  loc_B92631:  = Me.Text
  loc_B92636: LitStr "0"
  loc_B92639: LitI2_Byte &HFF
  loc_B9263B: LitI2_Byte 0
  loc_B9263D: LitI2_Byte 0
  loc_B9263F: ILdRf var_98
  loc_B92642: LitStr "Importe"
  loc_B92645: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B9264A: FStStrNoPop var_9C
  loc_B9264D: FLdPr Me
  loc_B92650: MemStStrCopy
  loc_B92654: FFreeStr var_98 = ""
  loc_B9265B: FFree1Ad var_88
  loc_B9265E: FLdPr Me
  loc_B92661: VCallAd Control_ID_ImpoImpuTxt
  loc_B92664: FStAdFunc var_A4
  loc_B92667: LitNothing
  loc_B92669: CastAd
  loc_B9266C: FStAdFunc var_A0
  loc_B9266F: FLdRfVar var_A0
  loc_B92672: FLdZeroAd var_A4
  loc_B92675: FStAdFuncNoPop
  loc_B92678: CastAd
  loc_B9267B: FStAdFunc var_90
  loc_B9267E: FLdRfVar var_90
  loc_B92681: FLdPr Me
  loc_B92684: MemLdRfVar from_stack_1.global_64
  loc_B92687: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9268C: IStI2 Cancel
  loc_B9268F: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B9269A: ILdI2 Cancel
  loc_B9269D: NotI4
  loc_B9269E: BranchF loc_B933FF
  loc_B926A1: FLdRfVar var_A8
  loc_B926A4: FLdRfVar var_8A
  loc_B926A7: FLdPr Me
  loc_B926AA: VCallAd Control_ID_cboSeleccion
  loc_B926AD: FStAdFunc var_88
  loc_B926B0: FLdPr var_88
  loc_B926B3:  = Me.ListIndex
  loc_B926B8: FLdI2 var_8A
  loc_B926BB: FLdPr Me
  loc_B926BE: VCallAd Control_ID_cboSeleccion
  loc_B926C1: FStAdFunc var_90
  loc_B926C4: FLdPr var_90
  loc_B926C7:  = Me.ItemData
  loc_B926CC: ILdRf var_A8
  loc_B926CF: FStR4 var_AC
  loc_B926D2: FFreeAd var_88 = ""
  loc_B926D9: ILdRf var_AC
  loc_B926DC: LitI4 1
  loc_B926E1: EqI4
  loc_B926E2: BranchF loc_B927B5
  loc_B926E5: FLdRfVar var_98
  loc_B926E8: FLdPr Me
  loc_B926EB: VCallAd Control_ID_ImpoImpuTxt
  loc_B926EE: FStAdFunc var_88
  loc_B926F1: FLdPr var_88
  loc_B926F4:  = Me.Text
  loc_B926F9: FLdPr Me
  loc_B926FC: VCallAd Control_ID_FechImpuMsk
  loc_B926FF: FStAdFunc var_90
  loc_B92702: FLdPr var_90
  loc_B92705: LateIdLdVar var_BC DispID_15 0
  loc_B9270C: PopAd
  loc_B9270E: FLdRfVar var_C0
  loc_B92711: LitI2_Byte 0
  loc_B92713: PopTmpLdAd2 var_8A
  loc_B92716: LitStr "0"
  loc_B92719: FLdRfVar var_BC
  loc_B9271C: CStrVarTmp
  loc_B9271D: FStStrNoPop var_9C
  loc_B92720: FLdPr Me
  loc_B92723: MemLdRfVar from_stack_1.global_156
  loc_B92726: NewIfNullRf
  loc_B9272A: FLdPr Me
  loc_B9272D: MemLdRfVar from_stack_1.global_148
  loc_B92730: NewIfNullRf
  loc_B92734: FLdPr Me
  loc_B92737: MemLdRfVar from_stack_1.global_144
  loc_B9273A: NewIfNullRf
  loc_B9273E: FLdPr Me
  loc_B92741: MemLdRfVar from_stack_1.global_140
  loc_B92744: NewIfNullRf
  loc_B92748: ILdRf var_98
  loc_B9274B: FLdPr Me
  loc_B9274E: MemLdRfVar from_stack_1.global_52
  loc_B92751: NewIfNullPr clsimputacion
  loc_B92754: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B92759: ILdRf var_C0
  loc_B9275C: FLdPr Me
  loc_B9275F: MemStStrCopy
  loc_B92763: FFreeStr var_98 = "": var_9C = ""
  loc_B9276C: FFreeAd var_88 = ""
  loc_B92773: FFree1Var var_BC = ""
  loc_B92776: FLdPr Me
  loc_B92779: VCallAd Control_ID_ImpoImpuTxt
  loc_B9277C: FStAdFunc var_A4
  loc_B9277F: LitNothing
  loc_B92781: CastAd
  loc_B92784: FStAdFunc var_A0
  loc_B92787: FLdRfVar var_A0
  loc_B9278A: FLdZeroAd var_A4
  loc_B9278D: FStAdFuncNoPop
  loc_B92790: CastAd
  loc_B92793: FStAdFunc var_90
  loc_B92796: FLdRfVar var_90
  loc_B92799: FLdPr Me
  loc_B9279C: MemLdRfVar from_stack_1.global_64
  loc_B9279F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B927A4: IStI2 Cancel
  loc_B927A7: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B927B2: Branch loc_B933FF
  loc_B927B5: ILdRf var_AC
  loc_B927B8: LitI4 2
  loc_B927BD: EqI4
  loc_B927BE: BranchF loc_B92891
  loc_B927C1: FLdRfVar var_98
  loc_B927C4: FLdPr Me
  loc_B927C7: VCallAd Control_ID_ImpoImpuTxt
  loc_B927CA: FStAdFunc var_88
  loc_B927CD: FLdPr var_88
  loc_B927D0:  = Me.Text
  loc_B927D5: FLdPr Me
  loc_B927D8: VCallAd Control_ID_FechImpuMsk
  loc_B927DB: FStAdFunc var_90
  loc_B927DE: FLdPr var_90
  loc_B927E1: LateIdLdVar var_BC DispID_15 0
  loc_B927E8: PopAd
  loc_B927EA: FLdRfVar var_C0
  loc_B927ED: LitI2_Byte 0
  loc_B927EF: PopTmpLdAd2 var_8A
  loc_B927F2: LitStr "0"
  loc_B927F5: FLdRfVar var_BC
  loc_B927F8: CStrVarTmp
  loc_B927F9: FStStrNoPop var_9C
  loc_B927FC: FLdPr Me
  loc_B927FF: MemLdRfVar from_stack_1.global_156
  loc_B92802: NewIfNullRf
  loc_B92806: FLdPr Me
  loc_B92809: MemLdRfVar from_stack_1.global_148
  loc_B9280C: NewIfNullRf
  loc_B92810: FLdPr Me
  loc_B92813: MemLdRfVar from_stack_1.global_144
  loc_B92816: NewIfNullRf
  loc_B9281A: FLdPr Me
  loc_B9281D: MemLdRfVar from_stack_1.global_140
  loc_B92820: NewIfNullRf
  loc_B92824: ILdRf var_98
  loc_B92827: FLdPr Me
  loc_B9282A: MemLdRfVar from_stack_1.global_52
  loc_B9282D: NewIfNullPr clsimputacion
  loc_B92830: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B92835: ILdRf var_C0
  loc_B92838: FLdPr Me
  loc_B9283B: MemStStrCopy
  loc_B9283F: FFreeStr var_98 = "": var_9C = ""
  loc_B92848: FFreeAd var_88 = ""
  loc_B9284F: FFree1Var var_BC = ""
  loc_B92852: FLdPr Me
  loc_B92855: VCallAd Control_ID_ImpoImpuTxt
  loc_B92858: FStAdFunc var_A4
  loc_B9285B: LitNothing
  loc_B9285D: CastAd
  loc_B92860: FStAdFunc var_A0
  loc_B92863: FLdRfVar var_A0
  loc_B92866: FLdZeroAd var_A4
  loc_B92869: FStAdFuncNoPop
  loc_B9286C: CastAd
  loc_B9286F: FStAdFunc var_90
  loc_B92872: FLdRfVar var_90
  loc_B92875: FLdPr Me
  loc_B92878: MemLdRfVar from_stack_1.global_64
  loc_B9287B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B92880: IStI2 Cancel
  loc_B92883: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B9288E: Branch loc_B933FF
  loc_B92891: ILdRf var_AC
  loc_B92894: LitI4 &H13
  loc_B92899: EqI4
  loc_B9289A: BranchF loc_B9296D
  loc_B9289D: FLdRfVar var_98
  loc_B928A0: FLdPr Me
  loc_B928A3: VCallAd Control_ID_ImpoImpuTxt
  loc_B928A6: FStAdFunc var_88
  loc_B928A9: FLdPr var_88
  loc_B928AC:  = Me.Text
  loc_B928B1: FLdPr Me
  loc_B928B4: VCallAd Control_ID_FechImpuMsk
  loc_B928B7: FStAdFunc var_90
  loc_B928BA: FLdPr var_90
  loc_B928BD: LateIdLdVar var_BC DispID_15 0
  loc_B928C4: PopAd
  loc_B928C6: FLdRfVar var_C0
  loc_B928C9: LitI2_Byte 0
  loc_B928CB: PopTmpLdAd2 var_8A
  loc_B928CE: LitStr "0"
  loc_B928D1: FLdRfVar var_BC
  loc_B928D4: CStrVarTmp
  loc_B928D5: FStStrNoPop var_9C
  loc_B928D8: FLdPr Me
  loc_B928DB: MemLdRfVar from_stack_1.global_156
  loc_B928DE: NewIfNullRf
  loc_B928E2: FLdPr Me
  loc_B928E5: MemLdRfVar from_stack_1.global_148
  loc_B928E8: NewIfNullRf
  loc_B928EC: FLdPr Me
  loc_B928EF: MemLdRfVar from_stack_1.global_144
  loc_B928F2: NewIfNullRf
  loc_B928F6: FLdPr Me
  loc_B928F9: MemLdRfVar from_stack_1.global_140
  loc_B928FC: NewIfNullRf
  loc_B92900: ILdRf var_98
  loc_B92903: FLdPr Me
  loc_B92906: MemLdRfVar from_stack_1.global_52
  loc_B92909: NewIfNullPr clsimputacion
  loc_B9290C: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B92911: ILdRf var_C0
  loc_B92914: FLdPr Me
  loc_B92917: MemStStrCopy
  loc_B9291B: FFreeStr var_98 = "": var_9C = ""
  loc_B92924: FFreeAd var_88 = ""
  loc_B9292B: FFree1Var var_BC = ""
  loc_B9292E: FLdPr Me
  loc_B92931: VCallAd Control_ID_ImpoImpuTxt
  loc_B92934: FStAdFunc var_A4
  loc_B92937: LitNothing
  loc_B92939: CastAd
  loc_B9293C: FStAdFunc var_A0
  loc_B9293F: FLdRfVar var_A0
  loc_B92942: FLdZeroAd var_A4
  loc_B92945: FStAdFuncNoPop
  loc_B92948: CastAd
  loc_B9294B: FStAdFunc var_90
  loc_B9294E: FLdRfVar var_90
  loc_B92951: FLdPr Me
  loc_B92954: MemLdRfVar from_stack_1.global_64
  loc_B92957: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9295C: IStI2 Cancel
  loc_B9295F: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B9296A: Branch loc_B933FF
  loc_B9296D: ILdRf var_AC
  loc_B92970: LitI4 3
  loc_B92975: EqI4
  loc_B92976: BranchF loc_B92A49
  loc_B92979: FLdRfVar var_98
  loc_B9297C: FLdPr Me
  loc_B9297F: VCallAd Control_ID_ImpoImpuTxt
  loc_B92982: FStAdFunc var_88
  loc_B92985: FLdPr var_88
  loc_B92988:  = Me.Text
  loc_B9298D: FLdPr Me
  loc_B92990: VCallAd Control_ID_FechImpuMsk
  loc_B92993: FStAdFunc var_90
  loc_B92996: FLdPr var_90
  loc_B92999: LateIdLdVar var_BC DispID_15 0
  loc_B929A0: PopAd
  loc_B929A2: FLdRfVar var_C0
  loc_B929A5: LitI2_Byte 0
  loc_B929A7: PopTmpLdAd2 var_8A
  loc_B929AA: LitStr "0"
  loc_B929AD: FLdRfVar var_BC
  loc_B929B0: CStrVarTmp
  loc_B929B1: FStStrNoPop var_9C
  loc_B929B4: FLdPr Me
  loc_B929B7: MemLdRfVar from_stack_1.global_156
  loc_B929BA: NewIfNullRf
  loc_B929BE: FLdPr Me
  loc_B929C1: MemLdRfVar from_stack_1.global_148
  loc_B929C4: NewIfNullRf
  loc_B929C8: FLdPr Me
  loc_B929CB: MemLdRfVar from_stack_1.global_144
  loc_B929CE: NewIfNullRf
  loc_B929D2: FLdPr Me
  loc_B929D5: MemLdRfVar from_stack_1.global_140
  loc_B929D8: NewIfNullRf
  loc_B929DC: ILdRf var_98
  loc_B929DF: FLdPr Me
  loc_B929E2: MemLdRfVar from_stack_1.global_52
  loc_B929E5: NewIfNullPr clsimputacion
  loc_B929E8: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B929ED: ILdRf var_C0
  loc_B929F0: FLdPr Me
  loc_B929F3: MemStStrCopy
  loc_B929F7: FFreeStr var_98 = "": var_9C = ""
  loc_B92A00: FFreeAd var_88 = ""
  loc_B92A07: FFree1Var var_BC = ""
  loc_B92A0A: FLdPr Me
  loc_B92A0D: VCallAd Control_ID_ImpoImpuTxt
  loc_B92A10: FStAdFunc var_A4
  loc_B92A13: LitNothing
  loc_B92A15: CastAd
  loc_B92A18: FStAdFunc var_A0
  loc_B92A1B: FLdRfVar var_A0
  loc_B92A1E: FLdZeroAd var_A4
  loc_B92A21: FStAdFuncNoPop
  loc_B92A24: CastAd
  loc_B92A27: FStAdFunc var_90
  loc_B92A2A: FLdRfVar var_90
  loc_B92A2D: FLdPr Me
  loc_B92A30: MemLdRfVar from_stack_1.global_64
  loc_B92A33: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B92A38: IStI2 Cancel
  loc_B92A3B: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B92A46: Branch loc_B933FF
  loc_B92A49: ILdRf var_AC
  loc_B92A4C: LitI4 4
  loc_B92A51: EqI4
  loc_B92A52: BranchF loc_B92B25
  loc_B92A55: FLdRfVar var_98
  loc_B92A58: FLdPr Me
  loc_B92A5B: VCallAd Control_ID_ImpoImpuTxt
  loc_B92A5E: FStAdFunc var_88
  loc_B92A61: FLdPr var_88
  loc_B92A64:  = Me.Text
  loc_B92A69: FLdPr Me
  loc_B92A6C: VCallAd Control_ID_FechImpuMsk
  loc_B92A6F: FStAdFunc var_90
  loc_B92A72: FLdPr var_90
  loc_B92A75: LateIdLdVar var_BC DispID_15 0
  loc_B92A7C: PopAd
  loc_B92A7E: FLdRfVar var_C0
  loc_B92A81: LitI2_Byte 0
  loc_B92A83: PopTmpLdAd2 var_8A
  loc_B92A86: LitStr "0"
  loc_B92A89: FLdRfVar var_BC
  loc_B92A8C: CStrVarTmp
  loc_B92A8D: FStStrNoPop var_9C
  loc_B92A90: FLdPr Me
  loc_B92A93: MemLdRfVar from_stack_1.global_156
  loc_B92A96: NewIfNullRf
  loc_B92A9A: FLdPr Me
  loc_B92A9D: MemLdRfVar from_stack_1.global_148
  loc_B92AA0: NewIfNullRf
  loc_B92AA4: FLdPr Me
  loc_B92AA7: MemLdRfVar from_stack_1.global_144
  loc_B92AAA: NewIfNullRf
  loc_B92AAE: FLdPr Me
  loc_B92AB1: MemLdRfVar from_stack_1.global_140
  loc_B92AB4: NewIfNullRf
  loc_B92AB8: ILdRf var_98
  loc_B92ABB: FLdPr Me
  loc_B92ABE: MemLdRfVar from_stack_1.global_52
  loc_B92AC1: NewIfNullPr clsimputacion
  loc_B92AC4: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B92AC9: ILdRf var_C0
  loc_B92ACC: FLdPr Me
  loc_B92ACF: MemStStrCopy
  loc_B92AD3: FFreeStr var_98 = "": var_9C = ""
  loc_B92ADC: FFreeAd var_88 = ""
  loc_B92AE3: FFree1Var var_BC = ""
  loc_B92AE6: FLdPr Me
  loc_B92AE9: VCallAd Control_ID_ImpoImpuTxt
  loc_B92AEC: FStAdFunc var_A4
  loc_B92AEF: LitNothing
  loc_B92AF1: CastAd
  loc_B92AF4: FStAdFunc var_A0
  loc_B92AF7: FLdRfVar var_A0
  loc_B92AFA: FLdZeroAd var_A4
  loc_B92AFD: FStAdFuncNoPop
  loc_B92B00: CastAd
  loc_B92B03: FStAdFunc var_90
  loc_B92B06: FLdRfVar var_90
  loc_B92B09: FLdPr Me
  loc_B92B0C: MemLdRfVar from_stack_1.global_64
  loc_B92B0F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B92B14: IStI2 Cancel
  loc_B92B17: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B92B22: Branch loc_B933FF
  loc_B92B25: ILdRf var_AC
  loc_B92B28: LitI4 5
  loc_B92B2D: EqI4
  loc_B92B2E: BranchF loc_B92BC6
  loc_B92B31: FLdRfVar var_98
  loc_B92B34: FLdPr Me
  loc_B92B37: VCallAd Control_ID_ImpoImpuTxt
  loc_B92B3A: FStAdFunc var_88
  loc_B92B3D: FLdPr var_88
  loc_B92B40:  = Me.Text
  loc_B92B45: FLdRfVar var_9C
  loc_B92B48: FLdPr Me
  loc_B92B4B: VCallAd Control_ID_SaldImpuLbl
  loc_B92B4E: FStAdFunc var_90
  loc_B92B51: FLdPr var_90
  loc_B92B54:  = Me.Caption
  loc_B92B59: ILdRf var_9C
  loc_B92B5C: LitI2_Byte &HFF
  loc_B92B5E: LitI2_Byte 0
  loc_B92B60: LitI2_Byte 0
  loc_B92B62: ILdRf var_98
  loc_B92B65: LitStr "Importe"
  loc_B92B68: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B92B6D: FStStrNoPop var_C0
  loc_B92B70: FLdPr Me
  loc_B92B73: MemStStrCopy
  loc_B92B77: FFreeStr var_98 = "": var_9C = ""
  loc_B92B80: FFreeAd var_88 = ""
  loc_B92B87: FLdPr Me
  loc_B92B8A: VCallAd Control_ID_ImpoImpuTxt
  loc_B92B8D: FStAdFunc var_A4
  loc_B92B90: LitNothing
  loc_B92B92: CastAd
  loc_B92B95: FStAdFunc var_A0
  loc_B92B98: FLdRfVar var_A0
  loc_B92B9B: FLdZeroAd var_A4
  loc_B92B9E: FStAdFuncNoPop
  loc_B92BA1: CastAd
  loc_B92BA4: FStAdFunc var_90
  loc_B92BA7: FLdRfVar var_90
  loc_B92BAA: FLdPr Me
  loc_B92BAD: MemLdRfVar from_stack_1.global_64
  loc_B92BB0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B92BB5: IStI2 Cancel
  loc_B92BB8: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B92BC3: Branch loc_B933FF
  loc_B92BC6: ILdRf var_AC
  loc_B92BC9: LitI4 6
  loc_B92BCE: EqI4
  loc_B92BCF: BranchF loc_B92C67
  loc_B92BD2: FLdRfVar var_98
  loc_B92BD5: FLdPr Me
  loc_B92BD8: VCallAd Control_ID_ImpoImpuTxt
  loc_B92BDB: FStAdFunc var_88
  loc_B92BDE: FLdPr var_88
  loc_B92BE1:  = Me.Text
  loc_B92BE6: FLdRfVar var_9C
  loc_B92BE9: FLdPr Me
  loc_B92BEC: VCallAd Control_ID_SaldImpuLbl
  loc_B92BEF: FStAdFunc var_90
  loc_B92BF2: FLdPr var_90
  loc_B92BF5:  = Me.Caption
  loc_B92BFA: ILdRf var_9C
  loc_B92BFD: LitI2_Byte &HFF
  loc_B92BFF: LitI2_Byte 0
  loc_B92C01: LitI2_Byte 0
  loc_B92C03: ILdRf var_98
  loc_B92C06: LitStr "Importe"
  loc_B92C09: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B92C0E: FStStrNoPop var_C0
  loc_B92C11: FLdPr Me
  loc_B92C14: MemStStrCopy
  loc_B92C18: FFreeStr var_98 = "": var_9C = ""
  loc_B92C21: FFreeAd var_88 = ""
  loc_B92C28: FLdPr Me
  loc_B92C2B: VCallAd Control_ID_ImpoImpuTxt
  loc_B92C2E: FStAdFunc var_A4
  loc_B92C31: LitNothing
  loc_B92C33: CastAd
  loc_B92C36: FStAdFunc var_A0
  loc_B92C39: FLdRfVar var_A0
  loc_B92C3C: FLdZeroAd var_A4
  loc_B92C3F: FStAdFuncNoPop
  loc_B92C42: CastAd
  loc_B92C45: FStAdFunc var_90
  loc_B92C48: FLdRfVar var_90
  loc_B92C4B: FLdPr Me
  loc_B92C4E: MemLdRfVar from_stack_1.global_64
  loc_B92C51: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B92C56: IStI2 Cancel
  loc_B92C59: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B92C64: Branch loc_B933FF
  loc_B92C67: ILdRf var_AC
  loc_B92C6A: LitI4 7
  loc_B92C6F: EqI4
  loc_B92C70: BranchF loc_B92D08
  loc_B92C73: FLdRfVar var_98
  loc_B92C76: FLdPr Me
  loc_B92C79: VCallAd Control_ID_ImpoImpuTxt
  loc_B92C7C: FStAdFunc var_88
  loc_B92C7F: FLdPr var_88
  loc_B92C82:  = Me.Text
  loc_B92C87: FLdRfVar var_9C
  loc_B92C8A: FLdPr Me
  loc_B92C8D: VCallAd Control_ID_SaldImpuLbl
  loc_B92C90: FStAdFunc var_90
  loc_B92C93: FLdPr var_90
  loc_B92C96:  = Me.Caption
  loc_B92C9B: ILdRf var_9C
  loc_B92C9E: LitI2_Byte &HFF
  loc_B92CA0: LitI2_Byte 0
  loc_B92CA2: LitI2_Byte 0
  loc_B92CA4: ILdRf var_98
  loc_B92CA7: LitStr "Importe"
  loc_B92CAA: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B92CAF: FStStrNoPop var_C0
  loc_B92CB2: FLdPr Me
  loc_B92CB5: MemStStrCopy
  loc_B92CB9: FFreeStr var_98 = "": var_9C = ""
  loc_B92CC2: FFreeAd var_88 = ""
  loc_B92CC9: FLdPr Me
  loc_B92CCC: VCallAd Control_ID_ImpoImpuTxt
  loc_B92CCF: FStAdFunc var_A4
  loc_B92CD2: LitNothing
  loc_B92CD4: CastAd
  loc_B92CD7: FStAdFunc var_A0
  loc_B92CDA: FLdRfVar var_A0
  loc_B92CDD: FLdZeroAd var_A4
  loc_B92CE0: FStAdFuncNoPop
  loc_B92CE3: CastAd
  loc_B92CE6: FStAdFunc var_90
  loc_B92CE9: FLdRfVar var_90
  loc_B92CEC: FLdPr Me
  loc_B92CEF: MemLdRfVar from_stack_1.global_64
  loc_B92CF2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B92CF7: IStI2 Cancel
  loc_B92CFA: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B92D05: Branch loc_B933FF
  loc_B92D08: ILdRf var_AC
  loc_B92D0B: LitI4 8
  loc_B92D10: EqI4
  loc_B92D11: BranchF loc_B92DA9
  loc_B92D14: FLdRfVar var_98
  loc_B92D17: FLdPr Me
  loc_B92D1A: VCallAd Control_ID_ImpoImpuTxt
  loc_B92D1D: FStAdFunc var_88
  loc_B92D20: FLdPr var_88
  loc_B92D23:  = Me.Text
  loc_B92D28: FLdRfVar var_9C
  loc_B92D2B: FLdPr Me
  loc_B92D2E: VCallAd Control_ID_SaldImpuLbl
  loc_B92D31: FStAdFunc var_90
  loc_B92D34: FLdPr var_90
  loc_B92D37:  = Me.Caption
  loc_B92D3C: ILdRf var_9C
  loc_B92D3F: LitI2_Byte &HFF
  loc_B92D41: LitI2_Byte 0
  loc_B92D43: LitI2_Byte 0
  loc_B92D45: ILdRf var_98
  loc_B92D48: LitStr "Importe"
  loc_B92D4B: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B92D50: FStStrNoPop var_C0
  loc_B92D53: FLdPr Me
  loc_B92D56: MemStStrCopy
  loc_B92D5A: FFreeStr var_98 = "": var_9C = ""
  loc_B92D63: FFreeAd var_88 = ""
  loc_B92D6A: FLdPr Me
  loc_B92D6D: VCallAd Control_ID_ImpoImpuTxt
  loc_B92D70: FStAdFunc var_A4
  loc_B92D73: LitNothing
  loc_B92D75: CastAd
  loc_B92D78: FStAdFunc var_A0
  loc_B92D7B: FLdRfVar var_A0
  loc_B92D7E: FLdZeroAd var_A4
  loc_B92D81: FStAdFuncNoPop
  loc_B92D84: CastAd
  loc_B92D87: FStAdFunc var_90
  loc_B92D8A: FLdRfVar var_90
  loc_B92D8D: FLdPr Me
  loc_B92D90: MemLdRfVar from_stack_1.global_64
  loc_B92D93: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B92D98: IStI2 Cancel
  loc_B92D9B: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B92DA6: Branch loc_B933FF
  loc_B92DA9: ILdRf var_AC
  loc_B92DAC: LitI4 9
  loc_B92DB1: EqI4
  loc_B92DB2: BranchF loc_B92E4A
  loc_B92DB5: FLdRfVar var_98
  loc_B92DB8: FLdPr Me
  loc_B92DBB: VCallAd Control_ID_ImpoImpuTxt
  loc_B92DBE: FStAdFunc var_88
  loc_B92DC1: FLdPr var_88
  loc_B92DC4:  = Me.Text
  loc_B92DC9: FLdRfVar var_9C
  loc_B92DCC: FLdPr Me
  loc_B92DCF: VCallAd Control_ID_SaldImpuLbl
  loc_B92DD2: FStAdFunc var_90
  loc_B92DD5: FLdPr var_90
  loc_B92DD8:  = Me.Caption
  loc_B92DDD: ILdRf var_9C
  loc_B92DE0: LitI2_Byte &HFF
  loc_B92DE2: LitI2_Byte 0
  loc_B92DE4: LitI2_Byte 0
  loc_B92DE6: ILdRf var_98
  loc_B92DE9: LitStr "Importe"
  loc_B92DEC: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B92DF1: FStStrNoPop var_C0
  loc_B92DF4: FLdPr Me
  loc_B92DF7: MemStStrCopy
  loc_B92DFB: FFreeStr var_98 = "": var_9C = ""
  loc_B92E04: FFreeAd var_88 = ""
  loc_B92E0B: FLdPr Me
  loc_B92E0E: VCallAd Control_ID_ImpoImpuTxt
  loc_B92E11: FStAdFunc var_A4
  loc_B92E14: LitNothing
  loc_B92E16: CastAd
  loc_B92E19: FStAdFunc var_A0
  loc_B92E1C: FLdRfVar var_A0
  loc_B92E1F: FLdZeroAd var_A4
  loc_B92E22: FStAdFuncNoPop
  loc_B92E25: CastAd
  loc_B92E28: FStAdFunc var_90
  loc_B92E2B: FLdRfVar var_90
  loc_B92E2E: FLdPr Me
  loc_B92E31: MemLdRfVar from_stack_1.global_64
  loc_B92E34: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B92E39: IStI2 Cancel
  loc_B92E3C: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B92E47: Branch loc_B933FF
  loc_B92E4A: ILdRf var_AC
  loc_B92E4D: LitI4 &HA
  loc_B92E52: EqI4
  loc_B92E53: BranchF loc_B92EEB
  loc_B92E56: FLdRfVar var_98
  loc_B92E59: FLdPr Me
  loc_B92E5C: VCallAd Control_ID_ImpoImpuTxt
  loc_B92E5F: FStAdFunc var_88
  loc_B92E62: FLdPr var_88
  loc_B92E65:  = Me.Text
  loc_B92E6A: FLdRfVar var_9C
  loc_B92E6D: FLdPr Me
  loc_B92E70: VCallAd Control_ID_SaldImpuLbl
  loc_B92E73: FStAdFunc var_90
  loc_B92E76: FLdPr var_90
  loc_B92E79:  = Me.Caption
  loc_B92E7E: ILdRf var_9C
  loc_B92E81: LitI2_Byte &HFF
  loc_B92E83: LitI2_Byte 0
  loc_B92E85: LitI2_Byte 0
  loc_B92E87: ILdRf var_98
  loc_B92E8A: LitStr "Importe"
  loc_B92E8D: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B92E92: FStStrNoPop var_C0
  loc_B92E95: FLdPr Me
  loc_B92E98: MemStStrCopy
  loc_B92E9C: FFreeStr var_98 = "": var_9C = ""
  loc_B92EA5: FFreeAd var_88 = ""
  loc_B92EAC: FLdPr Me
  loc_B92EAF: VCallAd Control_ID_ImpoImpuTxt
  loc_B92EB2: FStAdFunc var_A4
  loc_B92EB5: LitNothing
  loc_B92EB7: CastAd
  loc_B92EBA: FStAdFunc var_A0
  loc_B92EBD: FLdRfVar var_A0
  loc_B92EC0: FLdZeroAd var_A4
  loc_B92EC3: FStAdFuncNoPop
  loc_B92EC6: CastAd
  loc_B92EC9: FStAdFunc var_90
  loc_B92ECC: FLdRfVar var_90
  loc_B92ECF: FLdPr Me
  loc_B92ED2: MemLdRfVar from_stack_1.global_64
  loc_B92ED5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B92EDA: IStI2 Cancel
  loc_B92EDD: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B92EE8: Branch loc_B933FF
  loc_B92EEB: ILdRf var_AC
  loc_B92EEE: LitI4 &H11
  loc_B92EF3: EqI4
  loc_B92EF4: BranchF loc_B92F8C
  loc_B92EF7: FLdRfVar var_98
  loc_B92EFA: FLdPr Me
  loc_B92EFD: VCallAd Control_ID_ImpoImpuTxt
  loc_B92F00: FStAdFunc var_88
  loc_B92F03: FLdPr var_88
  loc_B92F06:  = Me.Text
  loc_B92F0B: FLdRfVar var_9C
  loc_B92F0E: FLdPr Me
  loc_B92F11: VCallAd Control_ID_SaldImpuLbl
  loc_B92F14: FStAdFunc var_90
  loc_B92F17: FLdPr var_90
  loc_B92F1A:  = Me.Caption
  loc_B92F1F: ILdRf var_9C
  loc_B92F22: LitI2_Byte &HFF
  loc_B92F24: LitI2_Byte 0
  loc_B92F26: LitI2_Byte 0
  loc_B92F28: ILdRf var_98
  loc_B92F2B: LitStr "Importe"
  loc_B92F2E: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B92F33: FStStrNoPop var_C0
  loc_B92F36: FLdPr Me
  loc_B92F39: MemStStrCopy
  loc_B92F3D: FFreeStr var_98 = "": var_9C = ""
  loc_B92F46: FFreeAd var_88 = ""
  loc_B92F4D: FLdPr Me
  loc_B92F50: VCallAd Control_ID_ImpoImpuTxt
  loc_B92F53: FStAdFunc var_A4
  loc_B92F56: LitNothing
  loc_B92F58: CastAd
  loc_B92F5B: FStAdFunc var_A0
  loc_B92F5E: FLdRfVar var_A0
  loc_B92F61: FLdZeroAd var_A4
  loc_B92F64: FStAdFuncNoPop
  loc_B92F67: CastAd
  loc_B92F6A: FStAdFunc var_90
  loc_B92F6D: FLdRfVar var_90
  loc_B92F70: FLdPr Me
  loc_B92F73: MemLdRfVar from_stack_1.global_64
  loc_B92F76: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B92F7B: IStI2 Cancel
  loc_B92F7E: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B92F89: Branch loc_B933FF
  loc_B92F8C: ILdRf var_AC
  loc_B92F8F: LitI4 &H12
  loc_B92F94: EqI4
  loc_B92F95: BranchF loc_B9302D
  loc_B92F98: FLdRfVar var_98
  loc_B92F9B: FLdPr Me
  loc_B92F9E: VCallAd Control_ID_ImpoImpuTxt
  loc_B92FA1: FStAdFunc var_88
  loc_B92FA4: FLdPr var_88
  loc_B92FA7:  = Me.Text
  loc_B92FAC: FLdRfVar var_9C
  loc_B92FAF: FLdPr Me
  loc_B92FB2: VCallAd Control_ID_SaldImpuLbl
  loc_B92FB5: FStAdFunc var_90
  loc_B92FB8: FLdPr var_90
  loc_B92FBB:  = Me.Caption
  loc_B92FC0: ILdRf var_9C
  loc_B92FC3: LitI2_Byte &HFF
  loc_B92FC5: LitI2_Byte 0
  loc_B92FC7: LitI2_Byte 0
  loc_B92FC9: ILdRf var_98
  loc_B92FCC: LitStr "Importe"
  loc_B92FCF: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B92FD4: FStStrNoPop var_C0
  loc_B92FD7: FLdPr Me
  loc_B92FDA: MemStStrCopy
  loc_B92FDE: FFreeStr var_98 = "": var_9C = ""
  loc_B92FE7: FFreeAd var_88 = ""
  loc_B92FEE: FLdPr Me
  loc_B92FF1: VCallAd Control_ID_ImpoImpuTxt
  loc_B92FF4: FStAdFunc var_A4
  loc_B92FF7: LitNothing
  loc_B92FF9: CastAd
  loc_B92FFC: FStAdFunc var_A0
  loc_B92FFF: FLdRfVar var_A0
  loc_B93002: FLdZeroAd var_A4
  loc_B93005: FStAdFuncNoPop
  loc_B93008: CastAd
  loc_B9300B: FStAdFunc var_90
  loc_B9300E: FLdRfVar var_90
  loc_B93011: FLdPr Me
  loc_B93014: MemLdRfVar from_stack_1.global_64
  loc_B93017: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9301C: IStI2 Cancel
  loc_B9301F: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B9302A: Branch loc_B933FF
  loc_B9302D: ILdRf var_AC
  loc_B93030: LitI4 &H13
  loc_B93035: EqI4
  loc_B93036: BranchF loc_B930CE
  loc_B93039: FLdRfVar var_98
  loc_B9303C: FLdPr Me
  loc_B9303F: VCallAd Control_ID_ImpoImpuTxt
  loc_B93042: FStAdFunc var_88
  loc_B93045: FLdPr var_88
  loc_B93048:  = Me.Text
  loc_B9304D: FLdRfVar var_9C
  loc_B93050: FLdPr Me
  loc_B93053: VCallAd Control_ID_SaldImpuLbl
  loc_B93056: FStAdFunc var_90
  loc_B93059: FLdPr var_90
  loc_B9305C:  = Me.Caption
  loc_B93061: ILdRf var_9C
  loc_B93064: LitI2_Byte &HFF
  loc_B93066: LitI2_Byte 0
  loc_B93068: LitI2_Byte 0
  loc_B9306A: ILdRf var_98
  loc_B9306D: LitStr "Importe"
  loc_B93070: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B93075: FStStrNoPop var_C0
  loc_B93078: FLdPr Me
  loc_B9307B: MemStStrCopy
  loc_B9307F: FFreeStr var_98 = "": var_9C = ""
  loc_B93088: FFreeAd var_88 = ""
  loc_B9308F: FLdPr Me
  loc_B93092: VCallAd Control_ID_ImpoImpuTxt
  loc_B93095: FStAdFunc var_A4
  loc_B93098: LitNothing
  loc_B9309A: CastAd
  loc_B9309D: FStAdFunc var_A0
  loc_B930A0: FLdRfVar var_A0
  loc_B930A3: FLdZeroAd var_A4
  loc_B930A6: FStAdFuncNoPop
  loc_B930A9: CastAd
  loc_B930AC: FStAdFunc var_90
  loc_B930AF: FLdRfVar var_90
  loc_B930B2: FLdPr Me
  loc_B930B5: MemLdRfVar from_stack_1.global_64
  loc_B930B8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B930BD: IStI2 Cancel
  loc_B930C0: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B930CB: Branch loc_B933FF
  loc_B930CE: ILdRf var_AC
  loc_B930D1: LitI4 &HB
  loc_B930D6: EqI4
  loc_B930D7: BranchF loc_B9316F
  loc_B930DA: FLdRfVar var_98
  loc_B930DD: FLdPr Me
  loc_B930E0: VCallAd Control_ID_ImpoImpuTxt
  loc_B930E3: FStAdFunc var_88
  loc_B930E6: FLdPr var_88
  loc_B930E9:  = Me.Text
  loc_B930EE: FLdRfVar var_9C
  loc_B930F1: FLdPr Me
  loc_B930F4: VCallAd Control_ID_SaldImpuLbl
  loc_B930F7: FStAdFunc var_90
  loc_B930FA: FLdPr var_90
  loc_B930FD:  = Me.Caption
  loc_B93102: ILdRf var_9C
  loc_B93105: LitI2_Byte &HFF
  loc_B93107: LitI2_Byte 0
  loc_B93109: LitI2_Byte 0
  loc_B9310B: ILdRf var_98
  loc_B9310E: LitStr "Importe"
  loc_B93111: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B93116: FStStrNoPop var_C0
  loc_B93119: FLdPr Me
  loc_B9311C: MemStStrCopy
  loc_B93120: FFreeStr var_98 = "": var_9C = ""
  loc_B93129: FFreeAd var_88 = ""
  loc_B93130: FLdPr Me
  loc_B93133: VCallAd Control_ID_ImpoImpuTxt
  loc_B93136: FStAdFunc var_A4
  loc_B93139: LitNothing
  loc_B9313B: CastAd
  loc_B9313E: FStAdFunc var_A0
  loc_B93141: FLdRfVar var_A0
  loc_B93144: FLdZeroAd var_A4
  loc_B93147: FStAdFuncNoPop
  loc_B9314A: CastAd
  loc_B9314D: FStAdFunc var_90
  loc_B93150: FLdRfVar var_90
  loc_B93153: FLdPr Me
  loc_B93156: MemLdRfVar from_stack_1.global_64
  loc_B93159: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9315E: IStI2 Cancel
  loc_B93161: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B9316C: Branch loc_B933FF
  loc_B9316F: ILdRf var_AC
  loc_B93172: LitI4 &HC
  loc_B93177: EqI4
  loc_B93178: BranchF loc_B93210
  loc_B9317B: FLdRfVar var_98
  loc_B9317E: FLdPr Me
  loc_B93181: VCallAd Control_ID_ImpoImpuTxt
  loc_B93184: FStAdFunc var_88
  loc_B93187: FLdPr var_88
  loc_B9318A:  = Me.Text
  loc_B9318F: FLdRfVar var_9C
  loc_B93192: FLdPr Me
  loc_B93195: VCallAd Control_ID_SaldImpuLbl
  loc_B93198: FStAdFunc var_90
  loc_B9319B: FLdPr var_90
  loc_B9319E:  = Me.Caption
  loc_B931A3: ILdRf var_9C
  loc_B931A6: LitI2_Byte &HFF
  loc_B931A8: LitI2_Byte 0
  loc_B931AA: LitI2_Byte 0
  loc_B931AC: ILdRf var_98
  loc_B931AF: LitStr "Importe"
  loc_B931B2: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B931B7: FStStrNoPop var_C0
  loc_B931BA: FLdPr Me
  loc_B931BD: MemStStrCopy
  loc_B931C1: FFreeStr var_98 = "": var_9C = ""
  loc_B931CA: FFreeAd var_88 = ""
  loc_B931D1: FLdPr Me
  loc_B931D4: VCallAd Control_ID_ImpoImpuTxt
  loc_B931D7: FStAdFunc var_A4
  loc_B931DA: LitNothing
  loc_B931DC: CastAd
  loc_B931DF: FStAdFunc var_A0
  loc_B931E2: FLdRfVar var_A0
  loc_B931E5: FLdZeroAd var_A4
  loc_B931E8: FStAdFuncNoPop
  loc_B931EB: CastAd
  loc_B931EE: FStAdFunc var_90
  loc_B931F1: FLdRfVar var_90
  loc_B931F4: FLdPr Me
  loc_B931F7: MemLdRfVar from_stack_1.global_64
  loc_B931FA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B931FF: IStI2 Cancel
  loc_B93202: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B9320D: Branch loc_B933FF
  loc_B93210: ILdRf var_AC
  loc_B93213: LitI4 &HD
  loc_B93218: EqI4
  loc_B93219: BranchF loc_B932B1
  loc_B9321C: FLdRfVar var_98
  loc_B9321F: FLdPr Me
  loc_B93222: VCallAd Control_ID_ImpoImpuTxt
  loc_B93225: FStAdFunc var_88
  loc_B93228: FLdPr var_88
  loc_B9322B:  = Me.Text
  loc_B93230: FLdRfVar var_9C
  loc_B93233: FLdPr Me
  loc_B93236: VCallAd Control_ID_SaldImpuLbl
  loc_B93239: FStAdFunc var_90
  loc_B9323C: FLdPr var_90
  loc_B9323F:  = Me.Caption
  loc_B93244: ILdRf var_9C
  loc_B93247: LitI2_Byte &HFF
  loc_B93249: LitI2_Byte 0
  loc_B9324B: LitI2_Byte 0
  loc_B9324D: ILdRf var_98
  loc_B93250: LitStr "Importe"
  loc_B93253: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B93258: FStStrNoPop var_C0
  loc_B9325B: FLdPr Me
  loc_B9325E: MemStStrCopy
  loc_B93262: FFreeStr var_98 = "": var_9C = ""
  loc_B9326B: FFreeAd var_88 = ""
  loc_B93272: FLdPr Me
  loc_B93275: VCallAd Control_ID_ImpoImpuTxt
  loc_B93278: FStAdFunc var_A4
  loc_B9327B: LitNothing
  loc_B9327D: CastAd
  loc_B93280: FStAdFunc var_A0
  loc_B93283: FLdRfVar var_A0
  loc_B93286: FLdZeroAd var_A4
  loc_B93289: FStAdFuncNoPop
  loc_B9328C: CastAd
  loc_B9328F: FStAdFunc var_90
  loc_B93292: FLdRfVar var_90
  loc_B93295: FLdPr Me
  loc_B93298: MemLdRfVar from_stack_1.global_64
  loc_B9329B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B932A0: IStI2 Cancel
  loc_B932A3: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B932AE: Branch loc_B933FF
  loc_B932B1: ILdRf var_AC
  loc_B932B4: LitI4 &HE
  loc_B932B9: EqI4
  loc_B932BA: BranchF loc_B93352
  loc_B932BD: FLdRfVar var_98
  loc_B932C0: FLdPr Me
  loc_B932C3: VCallAd Control_ID_ImpoImpuTxt
  loc_B932C6: FStAdFunc var_88
  loc_B932C9: FLdPr var_88
  loc_B932CC:  = Me.Text
  loc_B932D1: FLdRfVar var_9C
  loc_B932D4: FLdPr Me
  loc_B932D7: VCallAd Control_ID_SaldImpuLbl
  loc_B932DA: FStAdFunc var_90
  loc_B932DD: FLdPr var_90
  loc_B932E0:  = Me.Caption
  loc_B932E5: ILdRf var_9C
  loc_B932E8: LitI2_Byte &HFF
  loc_B932EA: LitI2_Byte 0
  loc_B932EC: LitI2_Byte 0
  loc_B932EE: ILdRf var_98
  loc_B932F1: LitStr "Importe"
  loc_B932F4: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B932F9: FStStrNoPop var_C0
  loc_B932FC: FLdPr Me
  loc_B932FF: MemStStrCopy
  loc_B93303: FFreeStr var_98 = "": var_9C = ""
  loc_B9330C: FFreeAd var_88 = ""
  loc_B93313: FLdPr Me
  loc_B93316: VCallAd Control_ID_ImpoImpuTxt
  loc_B93319: FStAdFunc var_A4
  loc_B9331C: LitNothing
  loc_B9331E: CastAd
  loc_B93321: FStAdFunc var_A0
  loc_B93324: FLdRfVar var_A0
  loc_B93327: FLdZeroAd var_A4
  loc_B9332A: FStAdFuncNoPop
  loc_B9332D: CastAd
  loc_B93330: FStAdFunc var_90
  loc_B93333: FLdRfVar var_90
  loc_B93336: FLdPr Me
  loc_B93339: MemLdRfVar from_stack_1.global_64
  loc_B9333C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B93341: IStI2 Cancel
  loc_B93344: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B9334F: Branch loc_B933FF
  loc_B93352: ILdRf var_AC
  loc_B93355: LitI4 &HF
  loc_B9335A: EqI4
  loc_B9335B: BranchF loc_B933F3
  loc_B9335E: FLdRfVar var_98
  loc_B93361: FLdPr Me
  loc_B93364: VCallAd Control_ID_ImpoImpuTxt
  loc_B93367: FStAdFunc var_88
  loc_B9336A: FLdPr var_88
  loc_B9336D:  = Me.Text
  loc_B93372: FLdRfVar var_9C
  loc_B93375: FLdPr Me
  loc_B93378: VCallAd Control_ID_SaldImpuLbl
  loc_B9337B: FStAdFunc var_90
  loc_B9337E: FLdPr var_90
  loc_B93381:  = Me.Caption
  loc_B93386: ILdRf var_9C
  loc_B93389: LitI2_Byte &HFF
  loc_B9338B: LitI2_Byte 0
  loc_B9338D: LitI2_Byte 0
  loc_B9338F: ILdRf var_98
  loc_B93392: LitStr "Importe"
  loc_B93395: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B9339A: FStStrNoPop var_C0
  loc_B9339D: FLdPr Me
  loc_B933A0: MemStStrCopy
  loc_B933A4: FFreeStr var_98 = "": var_9C = ""
  loc_B933AD: FFreeAd var_88 = ""
  loc_B933B4: FLdPr Me
  loc_B933B7: VCallAd Control_ID_ImpoImpuTxt
  loc_B933BA: FStAdFunc var_A4
  loc_B933BD: LitNothing
  loc_B933BF: CastAd
  loc_B933C2: FStAdFunc var_A0
  loc_B933C5: FLdRfVar var_A0
  loc_B933C8: FLdZeroAd var_A4
  loc_B933CB: FStAdFuncNoPop
  loc_B933CE: CastAd
  loc_B933D1: FStAdFunc var_90
  loc_B933D4: FLdRfVar var_90
  loc_B933D7: FLdPr Me
  loc_B933DA: MemLdRfVar from_stack_1.global_64
  loc_B933DD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B933E2: IStI2 Cancel
  loc_B933E5: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_B933F0: Branch loc_B933FF
  loc_B933F3: ILdRf var_AC
  loc_B933F6: LitI4 &H10
  loc_B933FB: EqI4
  loc_B933FC: BranchF loc_B933FF
  loc_B933FF: ILdI2 Cancel
  loc_B93402: NotI4
  loc_B93403: BranchF loc_B9347B
  loc_B93406: FLdRfVar var_98
  loc_B93409: FLdPr Me
  loc_B9340C: VCallAd Control_ID_ImpoImpuTxt
  loc_B9340F: FStAdFunc var_88
  loc_B93412: FLdPr var_88
  loc_B93415:  = Me.Text
  loc_B9341A: FLdRfVar var_9C
  loc_B9341D: FLdPr Me
  loc_B93420: VCallAd Control_ID_CantImpuTxt
  loc_B93423: FStAdFunc var_90
  loc_B93426: FLdPr var_90
  loc_B93429:  = Me.Text
  loc_B9342E: LitI4 2
  loc_B93433: ILdRf var_98
  loc_B93436: CR8Str
  loc_B93438: ILdRf var_9C
  loc_B9343B: CR8Str
  loc_B9343D: DivR8
  loc_B9343E: CVarR8
  loc_B93442: FLdRfVar var_E0
  loc_B93445: ImpAdCallFPR4  = Round(, )
  loc_B9344A: FLdRfVar var_E0
  loc_B9344D: CStrVarVal var_C0
  loc_B93451: FLdPr Me
  loc_B93454: VCallAd Control_ID_ImunImpuTxt
  loc_B93457: FStAdFunc var_A0
  loc_B9345A: FLdPr var_A0
  loc_B9345D: Me.Text = from_stack_1
  loc_B93462: FFreeStr var_98 = "": var_9C = ""
  loc_B9346B: FFreeAd var_88 = "": var_90 = ""
  loc_B93474: FFreeVar var_BC = ""
  loc_B9347B: ExitProcHresult
End Sub

Private Sub CodiInsuMsk_UnknownEvent_0 '9A0ECC
  'Data Table: 500268
  loc_9A0E58: LitVarStr var_94, vbNullString
  loc_9A0E5D: PopAdLdVar
  loc_9A0E5E: FLdPr Me
  loc_9A0E61: VCallAd Control_ID_CodiInsuMsk
  loc_9A0E64: FStAdFunc var_A8
  loc_9A0E67: FLdPr var_A8
  loc_9A0E6A: LateIdSt
  loc_9A0E6F: FFree1Ad var_A8
  loc_9A0E72: FLdPr Me
  loc_9A0E75: VCallAd Control_ID_CodiInsuMsk
  loc_9A0E78: FStAdFunc var_A8
  loc_9A0E7B: FLdPr var_A8
  loc_9A0E7E: LateIdLdVar var_B8 DispID_22 0
  loc_9A0E85: CStrVarTmp
  loc_9A0E86: FStStrNoPop var_BC
  loc_9A0E89: LitStr vbNullString
  loc_9A0E8C: EqStr
  loc_9A0E8E: FFree1Str var_BC
  loc_9A0E91: FFree1Ad var_A8
  loc_9A0E94: FFree1Var var_B8 = ""
  loc_9A0E97: BranchF loc_9A0EB9
  loc_9A0E9A: LitI2_Byte 1
  loc_9A0E9C: CStrUI1
  loc_9A0E9E: CVarStr var_B8
  loc_9A0EA1: PopAdLdVar
  loc_9A0EA2: FLdPr Me
  loc_9A0EA5: VCallAd Control_ID_CodiInsuMsk
  loc_9A0EA8: FStAdFunc var_A8
  loc_9A0EAB: FLdPr var_A8
  loc_9A0EAE: LateIdSt
  loc_9A0EB3: FFree1Ad var_A8
  loc_9A0EB6: FFree1Var var_B8 = ""
  loc_9A0EB9: FLdPr Me
  loc_9A0EBC: VCallAd Control_ID_CodiInsuMsk
  loc_9A0EBF: CVarAd
  loc_9A0EC3: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A0EC8: FFree1Var var_B8 = ""
  loc_9A0ECB: ExitProcHresult
End Sub

Private Sub CodiInsuMsk_UnknownEvent_8 'B15EC0
  'Data Table: 500268
  loc_B15630: FLdRfVar var_8A
  loc_B15633: FLdPr Me
  loc_B15636: VCallAd Control_ID_cmdCancelar
  loc_B15639: FStAdFunc var_88
  loc_B1563C: FLdPr var_88
  loc_B1563F:  = Me.Value
  loc_B15644: FLdI2 var_8A
  loc_B15647: NotI4
  loc_B15648: FLdPr Me
  loc_B1564B: VCallAd Control_ID_CodiInsuMsk
  loc_B1564E: FStAdFunc var_90
  loc_B15651: FLdPr var_90
  loc_B15654: LateIdLdVar var_A0 DispID_13 -32767
  loc_B1565B: CBoolVar
  loc_B1565D: AndI4
  loc_B1565E: FFreeAd var_88 = ""
  loc_B15665: FFree1Var var_A0 = ""
  loc_B15668: BranchF loc_B15E6F
  loc_B1566B: FLdPr Me
  loc_B1566E: VCallAd Control_ID_CodiInsuMsk
  loc_B15671: FStAdFunc var_88
  loc_B15674: FLdPr var_88
  loc_B15677: LateIdLdVar var_A0 DispID_22 0
  loc_B1567E: CStrVarTmp
  loc_B1567F: FStStrNoPop var_A4
  loc_B15682: ImpAdCallI2 Trim$()
  loc_B15687: FStStrNoPop var_A8
  loc_B1568A: LitStr vbNullString
  loc_B1568D: NeStr
  loc_B1568F: FFreeStr var_A4 = ""
  loc_B15696: FFree1Ad var_88
  loc_B15699: FFree1Var var_A0 = ""
  loc_B1569C: BranchF loc_B15CB6
  loc_B1569F: FLdPr Me
  loc_B156A2: VCallAd Control_ID_CodiInsuMsk
  loc_B156A5: FStAdFunc var_88
  loc_B156A8: FLdRfVar var_88
  loc_B156AB: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B156B0: FFree1Ad var_88
  loc_B156B3: BranchF loc_B158BC
  loc_B156B6: LitStr " AND insumo.CodiInsu = '"
  loc_B156B9: FLdPr Me
  loc_B156BC: VCallAd Control_ID_CodiInsuMsk
  loc_B156BF: FStAdFunc var_88
  loc_B156C2: FLdPr var_88
  loc_B156C5: LateIdLdVar var_A0 DispID_22 0
  loc_B156CC: CStrVarTmp
  loc_B156CD: FStStrNoPop var_A4
  loc_B156D0: ConcatStr
  loc_B156D1: FStStrNoPop var_A8
  loc_B156D4: LitStr "'"
  loc_B156D7: ConcatStr
  loc_B156D8: FStStrNoPop var_AC
  loc_B156DB: ImpAdLdRf MemVar_C3D6FC
  loc_B156DE: NewIfNullPr bscInsumo
  loc_B156E1: Call bscInsumo.Constructor(from_stack_1v)
  loc_B156E6: FFreeStr var_A4 = "": var_A8 = ""
  loc_B156EF: FFree1Ad var_88
  loc_B156F2: FFree1Var var_A0 = ""
  loc_B156F5: FLdRfVar var_B0
  loc_B156F8: FLdRfVar var_90
  loc_B156FB: FLdRfVar var_88
  loc_B156FE: ImpAdLdRf MemVar_C3D6FC
  loc_B15701: NewIfNullPr bscInsumo
  loc_B15704: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B15709: FLdPr var_88
  loc_B1570C: from_stack_1v = clsbase.RsFrmGet()
  loc_B15711: FLdPr var_90
  loc_B15714:  = Me.RecordCount
  loc_B15719: ILdRf var_B0
  loc_B1571C: LitI4 1
  loc_B15721: EqI4
  loc_B15722: FFreeAd var_88 = ""
  loc_B15729: BranchF loc_B1583B
  loc_B1572C: FLdRfVar var_A0
  loc_B1572F: FLdRfVar var_C8
  loc_B15732: LitVarStr var_C4, "CodiInsu"
  loc_B15737: PopAdLdVar
  loc_B15738: FLdRfVar var_B4
  loc_B1573B: FLdRfVar var_90
  loc_B1573E: FLdRfVar var_88
  loc_B15741: ImpAdLdRf MemVar_C3D6FC
  loc_B15744: NewIfNullPr bscInsumo
  loc_B15747: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B1574C: FLdPr var_88
  loc_B1574F: from_stack_1v = clsbase.RsFrmGet()
  loc_B15754: FLdPr var_90
  loc_B15757:  = Me.Fields
  loc_B1575C: FLdPr var_B4
  loc_B1575F: from_stack_2 = Me.Item(from_stack_1)
  loc_B15764: FLdPr var_C8
  loc_B15767:  = Me.Value
  loc_B1576C: FLdPr Me
  loc_B1576F: MemLdRfVar from_stack_1.global_152
  loc_B15772: NewIfNullRf
  loc_B15776: FLdRfVar var_A0
  loc_B15779: CStrVarTmp
  loc_B1577A: FStStrNoPop var_A4
  loc_B1577D: ImpAdCallI2 Proc_266_5_99AB30(, )
  loc_B15782: FStStrNoPop var_A8
  loc_B15785: FLdPr Me
  loc_B15788: MemStStrCopy
  loc_B1578C: FFreeStr var_A4 = ""
  loc_B15793: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B1579E: FFree1Var var_A0 = ""
  loc_B157A1: FLdRfVar var_A4
  loc_B157A4: FLdPr Me
  loc_B157A7: MemLdRfVar from_stack_1.global_152
  loc_B157AA: NewIfNullPr tblinsumo
  loc_B157AD: from_stack_1v = tblinsumo.CodiInsuGet()
  loc_B157B2: FLdZeroAd var_A4
  loc_B157B5: CVarStr var_A0
  loc_B157B8: PopAdLdVar
  loc_B157B9: FLdPr Me
  loc_B157BC: VCallAd Control_ID_CodiInsuMsk
  loc_B157BF: FStAdFunc var_88
  loc_B157C2: FLdPr var_88
  loc_B157C5: LateIdSt
  loc_B157CA: FFree1Ad var_88
  loc_B157CD: FFree1Var var_A0 = ""
  loc_B157D0: FLdRfVar var_A4
  loc_B157D3: FLdPr Me
  loc_B157D6: MemLdRfVar from_stack_1.global_152
  loc_B157D9: NewIfNullPr tblinsumo
  loc_B157DC: from_stack_1v = tblinsumo.DetaInsuGet()
  loc_B157E1: ILdRf var_A4
  loc_B157E4: FLdPr Me
  loc_B157E7: VCallAd Control_ID_DetaInsuLbl
  loc_B157EA: FStAdFunc var_88
  loc_B157ED: FLdPr var_88
  loc_B157F0: Me.Caption = from_stack_1
  loc_B157F5: FFree1Str var_A4
  loc_B157F8: FFree1Ad var_88
  loc_B157FB: FLdPr Me
  loc_B157FE: VCallAd Control_ID_CodiInsuMsk
  loc_B15801: FStAdFunc var_C8
  loc_B15804: FLdPr Me
  loc_B15807: VCallAd Control_ID_DetaInsuLbl
  loc_B1580A: FStAdFunc var_B4
  loc_B1580D: FLdRfVar var_B4
  loc_B15810: FLdZeroAd var_C8
  loc_B15813: FStAdFuncNoPop
  loc_B15816: CastAd
  loc_B15819: FStAdFunc var_90
  loc_B1581C: FLdRfVar var_90
  loc_B1581F: FLdPr Me
  loc_B15822: MemLdRfVar from_stack_1.global_64
  loc_B15825: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B1582A: IStI2 Cancel
  loc_B1582D: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B15838: Branch loc_B158B9
  loc_B1583B: FLdRfVar var_B0
  loc_B1583E: FLdRfVar var_90
  loc_B15841: FLdRfVar var_88
  loc_B15844: ImpAdLdRf MemVar_C3D6FC
  loc_B15847: NewIfNullPr bscInsumo
  loc_B1584A: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B1584F: FLdPr var_88
  loc_B15852: from_stack_1v = clsbase.RsFrmGet()
  loc_B15857: FLdPr var_90
  loc_B1585A:  = Me.RecordCount
  loc_B1585F: ILdRf var_B0
  loc_B15862: LitI4 1
  loc_B15867: LtI4
  loc_B15868: FFreeAd var_88 = ""
  loc_B1586F: BranchF loc_B158B9
  loc_B15872: LitStr "El Insumo NO EXISTE. Verifique..."
  loc_B15875: FLdPr Me
  loc_B15878: MemStStrCopy
  loc_B1587C: FLdPr Me
  loc_B1587F: VCallAd Control_ID_CodiInsuMsk
  loc_B15882: FStAdFunc var_C8
  loc_B15885: FLdPr Me
  loc_B15888: VCallAd Control_ID_DetaInsuLbl
  loc_B1588B: FStAdFunc var_B4
  loc_B1588E: FLdRfVar var_B4
  loc_B15891: FLdZeroAd var_C8
  loc_B15894: FStAdFuncNoPop
  loc_B15897: CastAd
  loc_B1589A: FStAdFunc var_90
  loc_B1589D: FLdRfVar var_90
  loc_B158A0: FLdPr Me
  loc_B158A3: MemLdRfVar from_stack_1.global_64
  loc_B158A6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B158AB: IStI2 Cancel
  loc_B158AE: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B158B9: Branch loc_B15CB3
  loc_B158BC: FLdPr Me
  loc_B158BF: VCallAd Control_ID_CodiInsuMsk
  loc_B158C2: FStAdFunc var_88
  loc_B158C5: FLdPr var_88
  loc_B158C8: LateIdLdVar var_A0 DispID_22 0
  loc_B158CF: PopAd
  loc_B158D1: LitStr " AND DetaInsu LIKE '" & Chr(37)
  loc_B158D4: LitI4 0
  loc_B158D9: LitI4 -1
  loc_B158DE: LitI4 1
  loc_B158E3: LitStr Chr(37)
  loc_B158E6: LitStr " "
  loc_B158E9: FLdRfVar var_A0
  loc_B158EC: CStrVarTmp
  loc_B158ED: FStStrNoPop var_A4
  loc_B158F0: ImpAdCallI2 Replace(, , , , , )
  loc_B158F5: FStStrNoPop var_A8
  loc_B158F8: ConcatStr
  loc_B158F9: FStStrNoPop var_AC
  loc_B158FC: LitStr Chr(37) & "' ORDER BY DetaInsu"
  loc_B158FF: ConcatStr
  loc_B15900: FStStrNoPop var_CC
  loc_B15903: ImpAdLdRf MemVar_C3D6FC
  loc_B15906: NewIfNullPr bscInsumo
  loc_B15909: Call bscInsumo.Constructor(from_stack_1v)
  loc_B1590E: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B15919: FFree1Ad var_88
  loc_B1591C: FFree1Var var_A0 = ""
  loc_B1591F: FLdRfVar var_B0
  loc_B15922: FLdRfVar var_90
  loc_B15925: FLdRfVar var_88
  loc_B15928: ImpAdLdRf MemVar_C3D6FC
  loc_B1592B: NewIfNullPr bscInsumo
  loc_B1592E: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B15933: FLdPr var_88
  loc_B15936: from_stack_1v = clsbase.RsFrmGet()
  loc_B1593B: FLdPr var_90
  loc_B1593E:  = Me.RecordCount
  loc_B15943: ILdRf var_B0
  loc_B15946: LitI4 1
  loc_B1594B: EqI4
  loc_B1594C: FFreeAd var_88 = ""
  loc_B15953: BranchF loc_B15A65
  loc_B15956: FLdRfVar var_A0
  loc_B15959: FLdRfVar var_C8
  loc_B1595C: LitVarStr var_C4, "CodiInsu"
  loc_B15961: PopAdLdVar
  loc_B15962: FLdRfVar var_B4
  loc_B15965: FLdRfVar var_90
  loc_B15968: FLdRfVar var_88
  loc_B1596B: ImpAdLdRf MemVar_C3D6FC
  loc_B1596E: NewIfNullPr bscInsumo
  loc_B15971: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B15976: FLdPr var_88
  loc_B15979: from_stack_1v = clsbase.RsFrmGet()
  loc_B1597E: FLdPr var_90
  loc_B15981:  = Me.Fields
  loc_B15986: FLdPr var_B4
  loc_B15989: from_stack_2 = Me.Item(from_stack_1)
  loc_B1598E: FLdPr var_C8
  loc_B15991:  = Me.Value
  loc_B15996: FLdPr Me
  loc_B15999: MemLdRfVar from_stack_1.global_152
  loc_B1599C: NewIfNullRf
  loc_B159A0: FLdRfVar var_A0
  loc_B159A3: CStrVarTmp
  loc_B159A4: FStStrNoPop var_A4
  loc_B159A7: ImpAdCallI2 Proc_266_5_99AB30(, )
  loc_B159AC: FStStrNoPop var_A8
  loc_B159AF: FLdPr Me
  loc_B159B2: MemStStrCopy
  loc_B159B6: FFreeStr var_A4 = ""
  loc_B159BD: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B159C8: FFree1Var var_A0 = ""
  loc_B159CB: FLdRfVar var_A4
  loc_B159CE: FLdPr Me
  loc_B159D1: MemLdRfVar from_stack_1.global_152
  loc_B159D4: NewIfNullPr tblinsumo
  loc_B159D7: from_stack_1v = tblinsumo.CodiInsuGet()
  loc_B159DC: FLdZeroAd var_A4
  loc_B159DF: CVarStr var_A0
  loc_B159E2: PopAdLdVar
  loc_B159E3: FLdPr Me
  loc_B159E6: VCallAd Control_ID_CodiInsuMsk
  loc_B159E9: FStAdFunc var_88
  loc_B159EC: FLdPr var_88
  loc_B159EF: LateIdSt
  loc_B159F4: FFree1Ad var_88
  loc_B159F7: FFree1Var var_A0 = ""
  loc_B159FA: FLdRfVar var_A4
  loc_B159FD: FLdPr Me
  loc_B15A00: MemLdRfVar from_stack_1.global_152
  loc_B15A03: NewIfNullPr tblinsumo
  loc_B15A06: from_stack_1v = tblinsumo.DetaInsuGet()
  loc_B15A0B: ILdRf var_A4
  loc_B15A0E: FLdPr Me
  loc_B15A11: VCallAd Control_ID_DetaInsuLbl
  loc_B15A14: FStAdFunc var_88
  loc_B15A17: FLdPr var_88
  loc_B15A1A: Me.Caption = from_stack_1
  loc_B15A1F: FFree1Str var_A4
  loc_B15A22: FFree1Ad var_88
  loc_B15A25: FLdPr Me
  loc_B15A28: VCallAd Control_ID_CodiInsuMsk
  loc_B15A2B: FStAdFunc var_C8
  loc_B15A2E: FLdPr Me
  loc_B15A31: VCallAd Control_ID_DetaInsuLbl
  loc_B15A34: FStAdFunc var_B4
  loc_B15A37: FLdRfVar var_B4
  loc_B15A3A: FLdZeroAd var_C8
  loc_B15A3D: FStAdFuncNoPop
  loc_B15A40: CastAd
  loc_B15A43: FStAdFunc var_90
  loc_B15A46: FLdRfVar var_90
  loc_B15A49: FLdPr Me
  loc_B15A4C: MemLdRfVar from_stack_1.global_64
  loc_B15A4F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B15A54: IStI2 Cancel
  loc_B15A57: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B15A62: Branch loc_B15CB3
  loc_B15A65: FLdRfVar var_B0
  loc_B15A68: FLdRfVar var_90
  loc_B15A6B: FLdRfVar var_88
  loc_B15A6E: ImpAdLdRf MemVar_C3D6FC
  loc_B15A71: NewIfNullPr bscInsumo
  loc_B15A74: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B15A79: FLdPr var_88
  loc_B15A7C: from_stack_1v = clsbase.RsFrmGet()
  loc_B15A81: FLdPr var_90
  loc_B15A84:  = Me.RecordCount
  loc_B15A89: ILdRf var_B0
  loc_B15A8C: LitI4 1
  loc_B15A91: GtI4
  loc_B15A92: FFreeAd var_88 = ""
  loc_B15A99: BranchF loc_B15C35
  loc_B15A9C: LitVar_Missing var_DC
  loc_B15A9F: PopAdLdVar
  loc_B15AA0: LitVarI4
  loc_B15AA8: PopAdLdVar
  loc_B15AA9: ImpAdLdRf MemVar_C3D6FC
  loc_B15AAC: NewIfNullPr bscInsumo
  loc_B15AAF: bscInsumo.Show from_stack_1, from_stack_2
  loc_B15AB4: FLdRfVar var_B0
  loc_B15AB7: FLdRfVar var_88
  loc_B15ABA: ImpAdLdRf MemVar_C3D6FC
  loc_B15ABD: NewIfNullPr bscInsumo
  loc_B15AC0: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B15AC5: FLdPr var_88
  loc_B15AC8: from_stack_1 = clsbase.RecordCount
  loc_B15ACD: ILdRf var_B0
  loc_B15AD0: LitI4 0
  loc_B15AD5: GtI4
  loc_B15AD6: FFree1Ad var_88
  loc_B15AD9: BranchF loc_B15BEB
  loc_B15ADC: FLdRfVar var_A0
  loc_B15ADF: FLdRfVar var_C8
  loc_B15AE2: LitVarStr var_C4, "CodiInsu"
  loc_B15AE7: PopAdLdVar
  loc_B15AE8: FLdRfVar var_B4
  loc_B15AEB: FLdRfVar var_90
  loc_B15AEE: FLdRfVar var_88
  loc_B15AF1: ImpAdLdRf MemVar_C3D6FC
  loc_B15AF4: NewIfNullPr bscInsumo
  loc_B15AF7: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B15AFC: FLdPr var_88
  loc_B15AFF: from_stack_1v = clsbase.RsFrmGet()
  loc_B15B04: FLdPr var_90
  loc_B15B07:  = Me.Fields
  loc_B15B0C: FLdPr var_B4
  loc_B15B0F: from_stack_2 = Me.Item(from_stack_1)
  loc_B15B14: FLdPr var_C8
  loc_B15B17:  = Me.Value
  loc_B15B1C: FLdPr Me
  loc_B15B1F: MemLdRfVar from_stack_1.global_152
  loc_B15B22: NewIfNullRf
  loc_B15B26: FLdRfVar var_A0
  loc_B15B29: CStrVarTmp
  loc_B15B2A: FStStrNoPop var_A4
  loc_B15B2D: ImpAdCallI2 Proc_266_5_99AB30(, )
  loc_B15B32: FStStrNoPop var_A8
  loc_B15B35: FLdPr Me
  loc_B15B38: MemStStrCopy
  loc_B15B3C: FFreeStr var_A4 = ""
  loc_B15B43: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B15B4E: FFree1Var var_A0 = ""
  loc_B15B51: FLdRfVar var_A4
  loc_B15B54: FLdPr Me
  loc_B15B57: MemLdRfVar from_stack_1.global_152
  loc_B15B5A: NewIfNullPr tblinsumo
  loc_B15B5D: from_stack_1v = tblinsumo.CodiInsuGet()
  loc_B15B62: FLdZeroAd var_A4
  loc_B15B65: CVarStr var_A0
  loc_B15B68: PopAdLdVar
  loc_B15B69: FLdPr Me
  loc_B15B6C: VCallAd Control_ID_CodiInsuMsk
  loc_B15B6F: FStAdFunc var_88
  loc_B15B72: FLdPr var_88
  loc_B15B75: LateIdSt
  loc_B15B7A: FFree1Ad var_88
  loc_B15B7D: FFree1Var var_A0 = ""
  loc_B15B80: FLdRfVar var_A4
  loc_B15B83: FLdPr Me
  loc_B15B86: MemLdRfVar from_stack_1.global_152
  loc_B15B89: NewIfNullPr tblinsumo
  loc_B15B8C: from_stack_1v = tblinsumo.DetaInsuGet()
  loc_B15B91: ILdRf var_A4
  loc_B15B94: FLdPr Me
  loc_B15B97: VCallAd Control_ID_DetaInsuLbl
  loc_B15B9A: FStAdFunc var_88
  loc_B15B9D: FLdPr var_88
  loc_B15BA0: Me.Caption = from_stack_1
  loc_B15BA5: FFree1Str var_A4
  loc_B15BA8: FFree1Ad var_88
  loc_B15BAB: FLdPr Me
  loc_B15BAE: VCallAd Control_ID_CodiInsuMsk
  loc_B15BB1: FStAdFunc var_C8
  loc_B15BB4: FLdPr Me
  loc_B15BB7: VCallAd Control_ID_DetaInsuLbl
  loc_B15BBA: FStAdFunc var_B4
  loc_B15BBD: FLdRfVar var_B4
  loc_B15BC0: FLdZeroAd var_C8
  loc_B15BC3: FStAdFuncNoPop
  loc_B15BC6: CastAd
  loc_B15BC9: FStAdFunc var_90
  loc_B15BCC: FLdRfVar var_90
  loc_B15BCF: FLdPr Me
  loc_B15BD2: MemLdRfVar from_stack_1.global_64
  loc_B15BD5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B15BDA: IStI2 Cancel
  loc_B15BDD: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B15BE8: Branch loc_B15C32
  loc_B15BEB: LitStr "El Insumo NO EXISTE. Verique..."
  loc_B15BEE: FLdPr Me
  loc_B15BF1: MemStStrCopy
  loc_B15BF5: FLdPr Me
  loc_B15BF8: VCallAd Control_ID_CodiInsuMsk
  loc_B15BFB: FStAdFunc var_C8
  loc_B15BFE: FLdPr Me
  loc_B15C01: VCallAd Control_ID_DetaInsuLbl
  loc_B15C04: FStAdFunc var_B4
  loc_B15C07: FLdRfVar var_B4
  loc_B15C0A: FLdZeroAd var_C8
  loc_B15C0D: FStAdFuncNoPop
  loc_B15C10: CastAd
  loc_B15C13: FStAdFunc var_90
  loc_B15C16: FLdRfVar var_90
  loc_B15C19: FLdPr Me
  loc_B15C1C: MemLdRfVar from_stack_1.global_64
  loc_B15C1F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B15C24: IStI2 Cancel
  loc_B15C27: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B15C32: Branch loc_B15CB3
  loc_B15C35: FLdRfVar var_B0
  loc_B15C38: FLdRfVar var_90
  loc_B15C3B: FLdRfVar var_88
  loc_B15C3E: ImpAdLdRf MemVar_C3D6FC
  loc_B15C41: NewIfNullPr bscInsumo
  loc_B15C44: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B15C49: FLdPr var_88
  loc_B15C4C: from_stack_1v = clsbase.RsFrmGet()
  loc_B15C51: FLdPr var_90
  loc_B15C54:  = Me.RecordCount
  loc_B15C59: ILdRf var_B0
  loc_B15C5C: LitI4 1
  loc_B15C61: LtI4
  loc_B15C62: FFreeAd var_88 = ""
  loc_B15C69: BranchF loc_B15CB3
  loc_B15C6C: LitStr "El Insumo NO EXISTE. Verique..."
  loc_B15C6F: FLdPr Me
  loc_B15C72: MemStStrCopy
  loc_B15C76: FLdPr Me
  loc_B15C79: VCallAd Control_ID_CodiInsuMsk
  loc_B15C7C: FStAdFunc var_C8
  loc_B15C7F: FLdPr Me
  loc_B15C82: VCallAd Control_ID_DetaInsuLbl
  loc_B15C85: FStAdFunc var_B4
  loc_B15C88: FLdRfVar var_B4
  loc_B15C8B: FLdZeroAd var_C8
  loc_B15C8E: FStAdFuncNoPop
  loc_B15C91: CastAd
  loc_B15C94: FStAdFunc var_90
  loc_B15C97: FLdRfVar var_90
  loc_B15C9A: FLdPr Me
  loc_B15C9D: MemLdRfVar from_stack_1.global_64
  loc_B15CA0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B15CA5: IStI2 Cancel
  loc_B15CA8: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B15CB3: Branch loc_B15E6F
  loc_B15CB6: LitI2_Byte 0
  loc_B15CB8: ImpAdLdRf MemVar_C3D6FC
  loc_B15CBB: NewIfNullPr bscInsumo
  loc_B15CBE: Call bscInsumo.MuestroAnuladosPut(from_stack_1v)
  loc_B15CC3: LitNothing
  loc_B15CC5: CastAd
  loc_B15CC8: FStAdFuncNoPop
  loc_B15CCB: ImpAdLdRf MemVar_C3D6FC
  loc_B15CCE: NewIfNullPr bscInsumo
  loc_B15CD1: Call bscInsumo.global_4304576Set(from_stack_1v)
  loc_B15CD6: FFree1Ad var_88
  loc_B15CD9: LitVar_Missing var_DC
  loc_B15CDC: PopAdLdVar
  loc_B15CDD: LitVarI4
  loc_B15CE5: PopAdLdVar
  loc_B15CE6: ImpAdLdRf MemVar_C3D6FC
  loc_B15CE9: NewIfNullPr bscInsumo
  loc_B15CEC: bscInsumo.Show from_stack_1, from_stack_2
  loc_B15CF1: FLdRfVar var_B0
  loc_B15CF4: FLdRfVar var_88
  loc_B15CF7: ImpAdLdRf MemVar_C3D6FC
  loc_B15CFA: NewIfNullPr bscInsumo
  loc_B15CFD: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B15D02: FLdPr var_88
  loc_B15D05: from_stack_1 = clsbase.RecordCount
  loc_B15D0A: ILdRf var_B0
  loc_B15D0D: LitI4 0
  loc_B15D12: GtI4
  loc_B15D13: FFree1Ad var_88
  loc_B15D16: BranchF loc_B15E28
  loc_B15D19: FLdRfVar var_A0
  loc_B15D1C: FLdRfVar var_C8
  loc_B15D1F: LitVarStr var_C4, "CodiInsu"
  loc_B15D24: PopAdLdVar
  loc_B15D25: FLdRfVar var_B4
  loc_B15D28: FLdRfVar var_90
  loc_B15D2B: FLdRfVar var_88
  loc_B15D2E: ImpAdLdRf MemVar_C3D6FC
  loc_B15D31: NewIfNullPr bscInsumo
  loc_B15D34: from_stack_1v = bscInsumo.global_4304576Get()
  loc_B15D39: FLdPr var_88
  loc_B15D3C: from_stack_1v = clsbase.RsFrmGet()
  loc_B15D41: FLdPr var_90
  loc_B15D44:  = Me.Fields
  loc_B15D49: FLdPr var_B4
  loc_B15D4C: from_stack_2 = Me.Item(from_stack_1)
  loc_B15D51: FLdPr var_C8
  loc_B15D54:  = Me.Value
  loc_B15D59: FLdPr Me
  loc_B15D5C: MemLdRfVar from_stack_1.global_152
  loc_B15D5F: NewIfNullRf
  loc_B15D63: FLdRfVar var_A0
  loc_B15D66: CStrVarTmp
  loc_B15D67: FStStrNoPop var_A4
  loc_B15D6A: ImpAdCallI2 Proc_266_5_99AB30(, )
  loc_B15D6F: FStStrNoPop var_A8
  loc_B15D72: FLdPr Me
  loc_B15D75: MemStStrCopy
  loc_B15D79: FFreeStr var_A4 = ""
  loc_B15D80: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B15D8B: FFree1Var var_A0 = ""
  loc_B15D8E: FLdRfVar var_A4
  loc_B15D91: FLdPr Me
  loc_B15D94: MemLdRfVar from_stack_1.global_152
  loc_B15D97: NewIfNullPr tblinsumo
  loc_B15D9A: from_stack_1v = tblinsumo.CodiInsuGet()
  loc_B15D9F: FLdZeroAd var_A4
  loc_B15DA2: CVarStr var_A0
  loc_B15DA5: PopAdLdVar
  loc_B15DA6: FLdPr Me
  loc_B15DA9: VCallAd Control_ID_CodiInsuMsk
  loc_B15DAC: FStAdFunc var_88
  loc_B15DAF: FLdPr var_88
  loc_B15DB2: LateIdSt
  loc_B15DB7: FFree1Ad var_88
  loc_B15DBA: FFree1Var var_A0 = ""
  loc_B15DBD: FLdRfVar var_A4
  loc_B15DC0: FLdPr Me
  loc_B15DC3: MemLdRfVar from_stack_1.global_152
  loc_B15DC6: NewIfNullPr tblinsumo
  loc_B15DC9: from_stack_1v = tblinsumo.DetaInsuGet()
  loc_B15DCE: ILdRf var_A4
  loc_B15DD1: FLdPr Me
  loc_B15DD4: VCallAd Control_ID_DetaInsuLbl
  loc_B15DD7: FStAdFunc var_88
  loc_B15DDA: FLdPr var_88
  loc_B15DDD: Me.Caption = from_stack_1
  loc_B15DE2: FFree1Str var_A4
  loc_B15DE5: FFree1Ad var_88
  loc_B15DE8: FLdPr Me
  loc_B15DEB: VCallAd Control_ID_CodiInsuMsk
  loc_B15DEE: FStAdFunc var_C8
  loc_B15DF1: FLdPr Me
  loc_B15DF4: VCallAd Control_ID_DetaInsuLbl
  loc_B15DF7: FStAdFunc var_B4
  loc_B15DFA: FLdRfVar var_B4
  loc_B15DFD: FLdZeroAd var_C8
  loc_B15E00: FStAdFuncNoPop
  loc_B15E03: CastAd
  loc_B15E06: FStAdFunc var_90
  loc_B15E09: FLdRfVar var_90
  loc_B15E0C: FLdPr Me
  loc_B15E0F: MemLdRfVar from_stack_1.global_64
  loc_B15E12: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B15E17: IStI2 Cancel
  loc_B15E1A: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B15E25: Branch loc_B15E6F
  loc_B15E28: LitStr "El Insumo NO EXISTE. Verifique..."
  loc_B15E2B: FLdPr Me
  loc_B15E2E: MemStStrCopy
  loc_B15E32: FLdPr Me
  loc_B15E35: VCallAd Control_ID_CodiInsuMsk
  loc_B15E38: FStAdFunc var_C8
  loc_B15E3B: FLdPr Me
  loc_B15E3E: VCallAd Control_ID_DetaInsuLbl
  loc_B15E41: FStAdFunc var_B4
  loc_B15E44: FLdRfVar var_B4
  loc_B15E47: FLdZeroAd var_C8
  loc_B15E4A: FStAdFuncNoPop
  loc_B15E4D: CastAd
  loc_B15E50: FStAdFunc var_90
  loc_B15E53: FLdRfVar var_90
  loc_B15E56: FLdPr Me
  loc_B15E59: MemLdRfVar from_stack_1.global_64
  loc_B15E5C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B15E61: IStI2 Cancel
  loc_B15E64: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_B15E6F: ILdI2 Cancel
  loc_B15E72: NotI4
  loc_B15E73: BranchF loc_B15EA4
  loc_B15E76: FLdRfVar var_A4
  loc_B15E79: FLdPr Me
  loc_B15E7C: MemLdRfVar from_stack_1.global_152
  loc_B15E7F: NewIfNullPr tblinsumo
  loc_B15E82: from_stack_1v = tblinsumo.DetaInsuGet()
  loc_B15E87: ILdRf var_A4
  loc_B15E8A: FLdPr Me
  loc_B15E8D: VCallAd Control_ID_DetaInsuLbl
  loc_B15E90: FStAdFunc var_88
  loc_B15E93: FLdPr var_88
  loc_B15E96: Me.Caption = from_stack_1
  loc_B15E9B: FFree1Str var_A4
  loc_B15E9E: FFree1Ad var_88
  loc_B15EA1: Branch loc_B15EBE
  loc_B15EA4: LitVarStr var_C4, vbNullString
  loc_B15EA9: PopAdLdVar
  loc_B15EAA: FLdPr Me
  loc_B15EAD: VCallAd Control_ID_CodiInsuMsk
  loc_B15EB0: FStAdFunc var_88
  loc_B15EB3: FLdPr var_88
  loc_B15EB6: LateIdSt
  loc_B15EBB: FFree1Ad var_88
  loc_B15EBE: ExitProcHresult
End Sub

Private Sub CodiInsuMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A0623C
  'Data Table: 500268
  loc_A060E8: ILdI2 Shift
  loc_A060EB: CI4UI1
  loc_A060EC: LitI4 2
  loc_A060F1: EqI4
  loc_A060F2: ILdI2 KeyCode
  loc_A060F5: CI4UI1
  loc_A060F6: LitI4 &H42
  loc_A060FB: EqI4
  loc_A060FC: AndI4
  loc_A060FD: BranchF loc_A0623B
  loc_A06100: LitI2_Byte 0
  loc_A06102: ImpAdLdRf MemVar_C3D6FC
  loc_A06105: NewIfNullPr bscInsumo
  loc_A06108: Call bscInsumo.MuestroAnuladosPut(from_stack_1v)
  loc_A0610D: LitNothing
  loc_A0610F: CastAd
  loc_A06112: FStAdFuncNoPop
  loc_A06115: ImpAdLdRf MemVar_C3D6FC
  loc_A06118: NewIfNullPr bscInsumo
  loc_A0611B: Call bscInsumo.global_4304576Set(from_stack_1v)
  loc_A06120: FFree1Ad var_88
  loc_A06123: LitVar_Missing var_A8
  loc_A06126: PopAdLdVar
  loc_A06127: LitVarI4
  loc_A0612F: PopAdLdVar
  loc_A06130: ImpAdLdRf MemVar_C3D6FC
  loc_A06133: NewIfNullPr bscInsumo
  loc_A06136: bscInsumo.Show from_stack_1, from_stack_2
  loc_A0613B: FLdRfVar var_AC
  loc_A0613E: FLdRfVar var_88
  loc_A06141: ImpAdLdRf MemVar_C3D6FC
  loc_A06144: NewIfNullPr bscInsumo
  loc_A06147: from_stack_1v = bscInsumo.global_4304576Get()
  loc_A0614C: FLdPr var_88
  loc_A0614F: from_stack_1 = clsbase.RecordCount
  loc_A06154: ILdRf var_AC
  loc_A06157: LitI4 0
  loc_A0615C: GtI4
  loc_A0615D: FFree1Ad var_88
  loc_A06160: BranchF loc_A0623B
  loc_A06163: FLdRfVar var_C8
  loc_A06166: FLdRfVar var_B8
  loc_A06169: LitVarStr var_98, "CodiInsu"
  loc_A0616E: PopAdLdVar
  loc_A0616F: FLdRfVar var_B4
  loc_A06172: FLdRfVar var_B0
  loc_A06175: FLdRfVar var_88
  loc_A06178: ImpAdLdRf MemVar_C3D6FC
  loc_A0617B: NewIfNullPr bscInsumo
  loc_A0617E: from_stack_1v = bscInsumo.global_4304576Get()
  loc_A06183: FLdPr var_88
  loc_A06186: from_stack_1v = clsbase.RsFrmGet()
  loc_A0618B: FLdPr var_B0
  loc_A0618E:  = Me.Fields
  loc_A06193: FLdPr var_B4
  loc_A06196: from_stack_2 = Me.Item(from_stack_1)
  loc_A0619B: FLdPr var_B8
  loc_A0619E:  = Me.Value
  loc_A061A3: FLdRfVar var_C8
  loc_A061A6: CStrVarTmp
  loc_A061A7: CVarStr var_D8
  loc_A061AA: PopAdLdVar
  loc_A061AB: FLdPr Me
  loc_A061AE: VCallAd Control_ID_CodiInsuMsk
  loc_A061B1: FStAdFunc var_DC
  loc_A061B4: FLdPr var_DC
  loc_A061B7: LateIdSt
  loc_A061BC: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A061C9: FFreeVar var_C8 = ""
  loc_A061D0: FLdRfVar var_C8
  loc_A061D3: FLdRfVar var_B8
  loc_A061D6: LitVarStr var_98, "DetaInsu"
  loc_A061DB: PopAdLdVar
  loc_A061DC: FLdRfVar var_B4
  loc_A061DF: FLdRfVar var_B0
  loc_A061E2: FLdRfVar var_88
  loc_A061E5: ImpAdLdRf MemVar_C3D6FC
  loc_A061E8: NewIfNullPr bscInsumo
  loc_A061EB: from_stack_1v = bscInsumo.global_4304576Get()
  loc_A061F0: FLdPr var_88
  loc_A061F3: from_stack_1v = clsbase.RsFrmGet()
  loc_A061F8: FLdPr var_B0
  loc_A061FB:  = Me.Fields
  loc_A06200: FLdPr var_B4
  loc_A06203: from_stack_2 = Me.Item(from_stack_1)
  loc_A06208: FLdPr var_B8
  loc_A0620B:  = Me.Value
  loc_A06210: FLdRfVar var_C8
  loc_A06213: CStrVarTmp
  loc_A06214: FStStrNoPop var_E0
  loc_A06217: FLdPr Me
  loc_A0621A: VCallAd Control_ID_DetaInsuLbl
  loc_A0621D: FStAdFunc var_DC
  loc_A06220: FLdPr var_DC
  loc_A06223: Me.Caption = from_stack_1
  loc_A06228: FFree1Str var_E0
  loc_A0622B: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A06238: FFree1Var var_C8 = ""
  loc_A0623B: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_0 '9B8110
  'Data Table: 500268
  loc_9B805C: LitVarStr var_94, vbNullString
  loc_9B8061: PopAdLdVar
  loc_9B8062: FLdPr Me
  loc_9B8065: VCallAd Control_ID_CodiFifuMsk
  loc_9B8068: FStAdFunc var_A8
  loc_9B806B: FLdPr var_A8
  loc_9B806E: LateIdSt
  loc_9B8073: FFree1Ad var_A8
  loc_9B8076: FLdPr Me
  loc_9B8079: VCallAd Control_ID_CodiFifuMsk
  loc_9B807C: FStAdFunc var_A8
  loc_9B807F: FLdPr var_A8
  loc_9B8082: LateIdLdVar var_B8 DispID_22 0
  loc_9B8089: CStrVarTmp
  loc_9B808A: FStStrNoPop var_BC
  loc_9B808D: LitStr "__.__.__"
  loc_9B8090: EqStr
  loc_9B8092: FFree1Str var_BC
  loc_9B8095: FFree1Ad var_A8
  loc_9B8098: FFree1Var var_B8 = ""
  loc_9B809B: BranchF loc_9B80B8
  loc_9B809E: LitVarStr var_94, vbNullString
  loc_9B80A3: PopAdLdVar
  loc_9B80A4: FLdPr Me
  loc_9B80A7: VCallAd Control_ID_CodiFifuMsk
  loc_9B80AA: FStAdFunc var_A8
  loc_9B80AD: FLdPr var_A8
  loc_9B80B0: LateIdSt
  loc_9B80B5: FFree1Ad var_A8
  loc_9B80B8: FLdPr Me
  loc_9B80BB: VCallAd Control_ID_CodiFifuMsk
  loc_9B80BE: FStAdFunc var_A8
  loc_9B80C1: FLdPr var_A8
  loc_9B80C4: LateIdLdVar var_B8 DispID_22 0
  loc_9B80CB: CStrVarTmp
  loc_9B80CC: FStStrNoPop var_BC
  loc_9B80CF: LitStr vbNullString
  loc_9B80D2: EqStr
  loc_9B80D4: FFree1Str var_BC
  loc_9B80D7: FFree1Ad var_A8
  loc_9B80DA: FFree1Var var_B8 = ""
  loc_9B80DD: BranchF loc_9B80FA
  loc_9B80E0: LitVarStr var_94, "019000"
  loc_9B80E5: PopAdLdVar
  loc_9B80E6: FLdPr Me
  loc_9B80E9: VCallAd Control_ID_CodiFifuMsk
  loc_9B80EC: FStAdFunc var_A8
  loc_9B80EF: FLdPr var_A8
  loc_9B80F2: LateIdSt
  loc_9B80F7: FFree1Ad var_A8
  loc_9B80FA: FLdPr Me
  loc_9B80FD: VCallAd Control_ID_CodiFifuMsk
  loc_9B8100: CVarAd
  loc_9B8104: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9B8109: FFree1Var var_B8 = ""
  loc_9B810C: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_1 '96B17C
  'Data Table: 500268
  loc_96B160: LitVarStr var_94, "##.##.##"
  loc_96B165: PopAdLdVar
  loc_96B166: FLdPr Me
  loc_96B169: VCallAd Control_ID_CodiFifuMsk
  loc_96B16C: FStAdFunc var_A8
  loc_96B16F: FLdPr var_A8
  loc_96B172: LateIdSt
  loc_96B177: FFree1Ad var_A8
  loc_96B17A: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_8 'B5D624
  'Data Table: 500268
  loc_B5CB08: FLdRfVar var_8A
  loc_B5CB0B: FLdPr Me
  loc_B5CB0E: VCallAd Control_ID_cmdCancelar
  loc_B5CB11: FStAdFunc var_88
  loc_B5CB14: FLdPr var_88
  loc_B5CB17:  = Me.Value
  loc_B5CB1C: FLdI2 var_8A
  loc_B5CB1F: NotI4
  loc_B5CB20: FLdPr Me
  loc_B5CB23: VCallAd Control_ID_CodiFifuMsk
  loc_B5CB26: FStAdFunc var_90
  loc_B5CB29: FLdPr var_90
  loc_B5CB2C: LateIdLdVar var_A0 DispID_13 -32767
  loc_B5CB33: CBoolVar
  loc_B5CB35: AndI4
  loc_B5CB36: FFreeAd var_88 = ""
  loc_B5CB3D: FFree1Var var_A0 = ""
  loc_B5CB40: BranchF loc_B5D622
  loc_B5CB43: FLdPr Me
  loc_B5CB46: VCallAd Control_ID_CodiFifuMsk
  loc_B5CB49: FStAdFunc var_88
  loc_B5CB4C: FLdPr var_88
  loc_B5CB4F: LateIdLdVar var_A0 DispID_22 0
  loc_B5CB56: CStrVarTmp
  loc_B5CB57: FStStrNoPop var_A4
  loc_B5CB5A: ImpAdCallI2 Trim$()
  loc_B5CB5F: FStStrNoPop var_A8
  loc_B5CB62: LitStr vbNullString
  loc_B5CB65: NeStr
  loc_B5CB67: FFreeStr var_A4 = ""
  loc_B5CB6E: FFree1Ad var_88
  loc_B5CB71: FFree1Var var_A0 = ""
  loc_B5CB74: BranchF loc_B5D424
  loc_B5CB77: FLdPr Me
  loc_B5CB7A: VCallAd Control_ID_CodiFifuMsk
  loc_B5CB7D: FStAdFunc var_88
  loc_B5CB80: FLdRfVar var_88
  loc_B5CB83: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B5CB88: FFree1Ad var_88
  loc_B5CB8B: BranchF loc_B5CFD9
  loc_B5CB8E: FLdPr Me
  loc_B5CB91: VCallAd Control_ID_CodiPartMsk
  loc_B5CB94: FStAdFunc var_88
  loc_B5CB97: FLdPr var_88
  loc_B5CB9A: LateIdLdVar var_A0 DispID_22 0
  loc_B5CBA1: PopAd
  loc_B5CBA3: FLdPr Me
  loc_B5CBA6: VCallAd Control_ID_CodiOrgaMsk
  loc_B5CBA9: FStAdFunc var_90
  loc_B5CBAC: FLdPr var_90
  loc_B5CBAF: LateIdLdVar var_B8 DispID_22 0
  loc_B5CBB6: PopAd
  loc_B5CBB8: FLdPr Me
  loc_B5CBBB: VCallAd Control_ID_CodiFifuMsk
  loc_B5CBBE: FStAdFunc var_BC
  loc_B5CBC1: FLdPr var_BC
  loc_B5CBC4: LateIdLdVar var_CC DispID_22 0
  loc_B5CBCB: PopAd
  loc_B5CBCD: LitStr " AND finalidad.CodiFifu LIKE '"
  loc_B5CBD0: LitI4 0
  loc_B5CBD5: LitI4 -1
  loc_B5CBDA: LitI4 1
  loc_B5CBDF: LitStr vbNullString
  loc_B5CBE2: LitStr "."
  loc_B5CBE5: FLdRfVar var_CC
  loc_B5CBE8: CStrVarTmp
  loc_B5CBE9: FStStrNoPop var_A4
  loc_B5CBEC: ImpAdCallI2 Replace(, , , , , )
  loc_B5CBF1: FStStrNoPop var_A8
  loc_B5CBF4: ConcatStr
  loc_B5CBF5: FStStrNoPop var_D0
  loc_B5CBF8: LitStr Chr(37) & "' ORDER BY finalidad.CodiFifu"
  loc_B5CBFB: ConcatStr
  loc_B5CBFC: FStStrNoPop var_DC
  loc_B5CBFF: FLdRfVar var_B8
  loc_B5CC02: CStrVarTmp
  loc_B5CC03: FStStrNoPop var_D8
  loc_B5CC06: FLdRfVar var_A0
  loc_B5CC09: CStrVarTmp
  loc_B5CC0A: FStStrNoPop var_D4
  loc_B5CC0D: ImpAdLdI2 MemVar_C3D064
  loc_B5CC10: ImpAdLdRf MemVar_C3D6E8
  loc_B5CC13: NewIfNullPr bscFinalidad
  loc_B5CC16: Call bscFinalidad.Constructor(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B5CC1B: FFreeStr var_A4 = "": var_A8 = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B5CC2A: FFreeAd var_88 = "": var_90 = ""
  loc_B5CC33: FFreeVar var_A0 = "": var_B8 = ""
  loc_B5CC3C: FLdRfVar var_E0
  loc_B5CC3F: FLdRfVar var_90
  loc_B5CC42: FLdRfVar var_88
  loc_B5CC45: ImpAdLdRf MemVar_C3D6E8
  loc_B5CC48: NewIfNullPr bscFinalidad
  loc_B5CC4B: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5CC50: FLdPr var_88
  loc_B5CC53: from_stack_1v = clsbase.RsFrmGet()
  loc_B5CC58: FLdPr var_90
  loc_B5CC5B:  = Me.RecordCount
  loc_B5CC60: ILdRf var_E0
  loc_B5CC63: LitI4 1
  loc_B5CC68: EqI4
  loc_B5CC69: FFreeAd var_88 = ""
  loc_B5CC70: BranchF loc_B5CD85
  loc_B5CC73: FLdRfVar var_A0
  loc_B5CC76: FLdRfVar var_F4
  loc_B5CC79: LitVarStr var_F0, "CodiFifu"
  loc_B5CC7E: PopAdLdVar
  loc_B5CC7F: FLdRfVar var_BC
  loc_B5CC82: FLdRfVar var_90
  loc_B5CC85: FLdRfVar var_88
  loc_B5CC88: ImpAdLdRf MemVar_C3D6E8
  loc_B5CC8B: NewIfNullPr bscFinalidad
  loc_B5CC8E: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5CC93: FLdPr var_88
  loc_B5CC96: from_stack_1v = clsbase.RsFrmGet()
  loc_B5CC9B: FLdPr var_90
  loc_B5CC9E:  = Me.Fields
  loc_B5CCA3: FLdPr var_BC
  loc_B5CCA6: from_stack_2 = Me.Item(from_stack_1)
  loc_B5CCAB: FLdPr var_F4
  loc_B5CCAE:  = Me.Value
  loc_B5CCB3: FLdPr Me
  loc_B5CCB6: MemLdRfVar from_stack_1.global_148
  loc_B5CCB9: NewIfNullRf
  loc_B5CCBD: FLdRfVar var_A0
  loc_B5CCC0: CStrVarTmp
  loc_B5CCC1: FStStrNoPop var_A4
  loc_B5CCC4: ImpAdLdI2 MemVar_C3D064
  loc_B5CCC7: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5CCCC: FStStrNoPop var_A8
  loc_B5CCCF: FLdPr Me
  loc_B5CCD2: MemStStrCopy
  loc_B5CCD6: FFreeStr var_A4 = ""
  loc_B5CCDD: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5CCE8: FFree1Var var_A0 = ""
  loc_B5CCEB: FLdRfVar var_A4
  loc_B5CCEE: FLdPr Me
  loc_B5CCF1: MemLdRfVar from_stack_1.global_148
  loc_B5CCF4: NewIfNullPr tblfinalidad
  loc_B5CCF7: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5CCFC: FLdZeroAd var_A4
  loc_B5CCFF: CVarStr var_A0
  loc_B5CD02: PopAdLdVar
  loc_B5CD03: FLdPr Me
  loc_B5CD06: VCallAd Control_ID_CodiFifuMsk
  loc_B5CD09: FStAdFunc var_88
  loc_B5CD0C: FLdPr var_88
  loc_B5CD0F: LateIdSt
  loc_B5CD14: FFree1Ad var_88
  loc_B5CD17: FFree1Var var_A0 = ""
  loc_B5CD1A: FLdRfVar var_A4
  loc_B5CD1D: FLdPr Me
  loc_B5CD20: MemLdRfVar from_stack_1.global_148
  loc_B5CD23: NewIfNullPr tblfinalidad
  loc_B5CD26: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5CD2B: ILdRf var_A4
  loc_B5CD2E: FLdPr Me
  loc_B5CD31: VCallAd Control_ID_DetaFifuLbl
  loc_B5CD34: FStAdFunc var_88
  loc_B5CD37: FLdPr var_88
  loc_B5CD3A: Me.Caption = from_stack_1
  loc_B5CD3F: FFree1Str var_A4
  loc_B5CD42: FFree1Ad var_88
  loc_B5CD45: FLdPr Me
  loc_B5CD48: VCallAd Control_ID_CodiFifuMsk
  loc_B5CD4B: FStAdFunc var_F4
  loc_B5CD4E: FLdPr Me
  loc_B5CD51: VCallAd Control_ID_DetaFifuLbl
  loc_B5CD54: FStAdFunc var_BC
  loc_B5CD57: FLdRfVar var_BC
  loc_B5CD5A: FLdZeroAd var_F4
  loc_B5CD5D: FStAdFuncNoPop
  loc_B5CD60: CastAd
  loc_B5CD63: FStAdFunc var_90
  loc_B5CD66: FLdRfVar var_90
  loc_B5CD69: FLdPr Me
  loc_B5CD6C: MemLdRfVar from_stack_1.global_64
  loc_B5CD6F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5CD74: IStI2 KeyCode
  loc_B5CD77: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5CD82: Branch loc_B5CFD6
  loc_B5CD85: FLdRfVar var_E0
  loc_B5CD88: FLdRfVar var_90
  loc_B5CD8B: FLdRfVar var_88
  loc_B5CD8E: ImpAdLdRf MemVar_C3D6E8
  loc_B5CD91: NewIfNullPr bscFinalidad
  loc_B5CD94: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5CD99: FLdPr var_88
  loc_B5CD9C: from_stack_1v = clsbase.RsFrmGet()
  loc_B5CDA1: FLdPr var_90
  loc_B5CDA4:  = Me.RecordCount
  loc_B5CDA9: ILdRf var_E0
  loc_B5CDAC: LitI4 1
  loc_B5CDB1: GtI4
  loc_B5CDB2: FFreeAd var_88 = ""
  loc_B5CDB9: BranchF loc_B5CF58
  loc_B5CDBC: LitVar_Missing var_104
  loc_B5CDBF: PopAdLdVar
  loc_B5CDC0: LitVarI4
  loc_B5CDC8: PopAdLdVar
  loc_B5CDC9: ImpAdLdRf MemVar_C3D6E8
  loc_B5CDCC: NewIfNullPr bscFinalidad
  loc_B5CDCF: bscFinalidad.Show from_stack_1, from_stack_2
  loc_B5CDD4: FLdRfVar var_E0
  loc_B5CDD7: FLdRfVar var_88
  loc_B5CDDA: ImpAdLdRf MemVar_C3D6E8
  loc_B5CDDD: NewIfNullPr bscFinalidad
  loc_B5CDE0: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5CDE5: FLdPr var_88
  loc_B5CDE8: from_stack_1 = clsbase.RecordCount
  loc_B5CDED: ILdRf var_E0
  loc_B5CDF0: LitI4 0
  loc_B5CDF5: GtI4
  loc_B5CDF6: FFree1Ad var_88
  loc_B5CDF9: BranchF loc_B5CF0E
  loc_B5CDFC: FLdRfVar var_A0
  loc_B5CDFF: FLdRfVar var_F4
  loc_B5CE02: LitVarStr var_F0, "CodiFifu"
  loc_B5CE07: PopAdLdVar
  loc_B5CE08: FLdRfVar var_BC
  loc_B5CE0B: FLdRfVar var_90
  loc_B5CE0E: FLdRfVar var_88
  loc_B5CE11: ImpAdLdRf MemVar_C3D6E8
  loc_B5CE14: NewIfNullPr bscFinalidad
  loc_B5CE17: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5CE1C: FLdPr var_88
  loc_B5CE1F: from_stack_1v = clsbase.RsFrmGet()
  loc_B5CE24: FLdPr var_90
  loc_B5CE27:  = Me.Fields
  loc_B5CE2C: FLdPr var_BC
  loc_B5CE2F: from_stack_2 = Me.Item(from_stack_1)
  loc_B5CE34: FLdPr var_F4
  loc_B5CE37:  = Me.Value
  loc_B5CE3C: FLdPr Me
  loc_B5CE3F: MemLdRfVar from_stack_1.global_148
  loc_B5CE42: NewIfNullRf
  loc_B5CE46: FLdRfVar var_A0
  loc_B5CE49: CStrVarTmp
  loc_B5CE4A: FStStrNoPop var_A4
  loc_B5CE4D: ImpAdLdI2 MemVar_C3D064
  loc_B5CE50: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5CE55: FStStrNoPop var_A8
  loc_B5CE58: FLdPr Me
  loc_B5CE5B: MemStStrCopy
  loc_B5CE5F: FFreeStr var_A4 = ""
  loc_B5CE66: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5CE71: FFree1Var var_A0 = ""
  loc_B5CE74: FLdRfVar var_A4
  loc_B5CE77: FLdPr Me
  loc_B5CE7A: MemLdRfVar from_stack_1.global_148
  loc_B5CE7D: NewIfNullPr tblfinalidad
  loc_B5CE80: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5CE85: FLdZeroAd var_A4
  loc_B5CE88: CVarStr var_A0
  loc_B5CE8B: PopAdLdVar
  loc_B5CE8C: FLdPr Me
  loc_B5CE8F: VCallAd Control_ID_CodiFifuMsk
  loc_B5CE92: FStAdFunc var_88
  loc_B5CE95: FLdPr var_88
  loc_B5CE98: LateIdSt
  loc_B5CE9D: FFree1Ad var_88
  loc_B5CEA0: FFree1Var var_A0 = ""
  loc_B5CEA3: FLdRfVar var_A4
  loc_B5CEA6: FLdPr Me
  loc_B5CEA9: MemLdRfVar from_stack_1.global_148
  loc_B5CEAC: NewIfNullPr tblfinalidad
  loc_B5CEAF: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5CEB4: ILdRf var_A4
  loc_B5CEB7: FLdPr Me
  loc_B5CEBA: VCallAd Control_ID_DetaFifuLbl
  loc_B5CEBD: FStAdFunc var_88
  loc_B5CEC0: FLdPr var_88
  loc_B5CEC3: Me.Caption = from_stack_1
  loc_B5CEC8: FFree1Str var_A4
  loc_B5CECB: FFree1Ad var_88
  loc_B5CECE: FLdPr Me
  loc_B5CED1: VCallAd Control_ID_CodiFifuMsk
  loc_B5CED4: FStAdFunc var_F4
  loc_B5CED7: FLdPr Me
  loc_B5CEDA: VCallAd Control_ID_DetaFifuLbl
  loc_B5CEDD: FStAdFunc var_BC
  loc_B5CEE0: FLdRfVar var_BC
  loc_B5CEE3: FLdZeroAd var_F4
  loc_B5CEE6: FStAdFuncNoPop
  loc_B5CEE9: CastAd
  loc_B5CEEC: FStAdFunc var_90
  loc_B5CEEF: FLdRfVar var_90
  loc_B5CEF2: FLdPr Me
  loc_B5CEF5: MemLdRfVar from_stack_1.global_64
  loc_B5CEF8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5CEFD: IStI2 KeyCode
  loc_B5CF00: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5CF0B: Branch loc_B5CF55
  loc_B5CF0E: LitStr "La Finalidad NO EXISTE. Verifique..."
  loc_B5CF11: FLdPr Me
  loc_B5CF14: MemStStrCopy
  loc_B5CF18: FLdPr Me
  loc_B5CF1B: VCallAd Control_ID_CodiFifuMsk
  loc_B5CF1E: FStAdFunc var_F4
  loc_B5CF21: FLdPr Me
  loc_B5CF24: VCallAd Control_ID_DetaFifuLbl
  loc_B5CF27: FStAdFunc var_BC
  loc_B5CF2A: FLdRfVar var_BC
  loc_B5CF2D: FLdZeroAd var_F4
  loc_B5CF30: FStAdFuncNoPop
  loc_B5CF33: CastAd
  loc_B5CF36: FStAdFunc var_90
  loc_B5CF39: FLdRfVar var_90
  loc_B5CF3C: FLdPr Me
  loc_B5CF3F: MemLdRfVar from_stack_1.global_64
  loc_B5CF42: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5CF47: IStI2 KeyCode
  loc_B5CF4A: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5CF55: Branch loc_B5CFD6
  loc_B5CF58: FLdRfVar var_E0
  loc_B5CF5B: FLdRfVar var_90
  loc_B5CF5E: FLdRfVar var_88
  loc_B5CF61: ImpAdLdRf MemVar_C3D6E8
  loc_B5CF64: NewIfNullPr bscFinalidad
  loc_B5CF67: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5CF6C: FLdPr var_88
  loc_B5CF6F: from_stack_1v = clsbase.RsFrmGet()
  loc_B5CF74: FLdPr var_90
  loc_B5CF77:  = Me.RecordCount
  loc_B5CF7C: ILdRf var_E0
  loc_B5CF7F: LitI4 1
  loc_B5CF84: LtI4
  loc_B5CF85: FFreeAd var_88 = ""
  loc_B5CF8C: BranchF loc_B5CFD6
  loc_B5CF8F: LitStr "La Finalidad NO EXISTE. Verifique..."
  loc_B5CF92: FLdPr Me
  loc_B5CF95: MemStStrCopy
  loc_B5CF99: FLdPr Me
  loc_B5CF9C: VCallAd Control_ID_CodiFifuMsk
  loc_B5CF9F: FStAdFunc var_F4
  loc_B5CFA2: FLdPr Me
  loc_B5CFA5: VCallAd Control_ID_DetaFifuLbl
  loc_B5CFA8: FStAdFunc var_BC
  loc_B5CFAB: FLdRfVar var_BC
  loc_B5CFAE: FLdZeroAd var_F4
  loc_B5CFB1: FStAdFuncNoPop
  loc_B5CFB4: CastAd
  loc_B5CFB7: FStAdFunc var_90
  loc_B5CFBA: FLdRfVar var_90
  loc_B5CFBD: FLdPr Me
  loc_B5CFC0: MemLdRfVar from_stack_1.global_64
  loc_B5CFC3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5CFC8: IStI2 KeyCode
  loc_B5CFCB: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5CFD6: Branch loc_B5D421
  loc_B5CFD9: FLdPr Me
  loc_B5CFDC: VCallAd Control_ID_CodiPartMsk
  loc_B5CFDF: FStAdFunc var_88
  loc_B5CFE2: FLdPr var_88
  loc_B5CFE5: LateIdLdVar var_A0 DispID_22 0
  loc_B5CFEC: PopAd
  loc_B5CFEE: FLdPr Me
  loc_B5CFF1: VCallAd Control_ID_CodiOrgaMsk
  loc_B5CFF4: FStAdFunc var_90
  loc_B5CFF7: FLdPr var_90
  loc_B5CFFA: LateIdLdVar var_B8 DispID_22 0
  loc_B5D001: PopAd
  loc_B5D003: FLdPr Me
  loc_B5D006: VCallAd Control_ID_CodiFifuMsk
  loc_B5D009: FStAdFunc var_BC
  loc_B5D00C: FLdPr var_BC
  loc_B5D00F: LateIdLdVar var_CC DispID_22 0
  loc_B5D016: PopAd
  loc_B5D018: LitStr " AND DetaFifu LIKE '" & Chr(37)
  loc_B5D01B: LitI4 0
  loc_B5D020: LitI4 -1
  loc_B5D025: LitI4 1
  loc_B5D02A: LitStr Chr(37)
  loc_B5D02D: LitStr " "
  loc_B5D030: FLdRfVar var_CC
  loc_B5D033: CStrVarTmp
  loc_B5D034: FStStrNoPop var_A4
  loc_B5D037: ImpAdCallI2 Replace(, , , , , )
  loc_B5D03C: FStStrNoPop var_A8
  loc_B5D03F: ConcatStr
  loc_B5D040: FStStrNoPop var_D0
  loc_B5D043: LitStr Chr(37) & "' ORDER BY DetaFifu"
  loc_B5D046: ConcatStr
  loc_B5D047: FStStrNoPop var_DC
  loc_B5D04A: FLdRfVar var_B8
  loc_B5D04D: CStrVarTmp
  loc_B5D04E: FStStrNoPop var_D8
  loc_B5D051: FLdRfVar var_A0
  loc_B5D054: CStrVarTmp
  loc_B5D055: FStStrNoPop var_D4
  loc_B5D058: ImpAdLdI2 MemVar_C3D064
  loc_B5D05B: ImpAdLdRf MemVar_C3D6E8
  loc_B5D05E: NewIfNullPr bscFinalidad
  loc_B5D061: Call bscFinalidad.Constructor(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B5D066: FFreeStr var_A4 = "": var_A8 = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B5D075: FFreeAd var_88 = "": var_90 = ""
  loc_B5D07E: FFreeVar var_A0 = "": var_B8 = ""
  loc_B5D087: FLdRfVar var_E0
  loc_B5D08A: FLdRfVar var_90
  loc_B5D08D: FLdRfVar var_88
  loc_B5D090: ImpAdLdRf MemVar_C3D6E8
  loc_B5D093: NewIfNullPr bscFinalidad
  loc_B5D096: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D09B: FLdPr var_88
  loc_B5D09E: from_stack_1v = clsbase.RsFrmGet()
  loc_B5D0A3: FLdPr var_90
  loc_B5D0A6:  = Me.RecordCount
  loc_B5D0AB: ILdRf var_E0
  loc_B5D0AE: LitI4 1
  loc_B5D0B3: EqI4
  loc_B5D0B4: FFreeAd var_88 = ""
  loc_B5D0BB: BranchF loc_B5D1D0
  loc_B5D0BE: FLdRfVar var_A0
  loc_B5D0C1: FLdRfVar var_F4
  loc_B5D0C4: LitVarStr var_F0, "CodiFifu"
  loc_B5D0C9: PopAdLdVar
  loc_B5D0CA: FLdRfVar var_BC
  loc_B5D0CD: FLdRfVar var_90
  loc_B5D0D0: FLdRfVar var_88
  loc_B5D0D3: ImpAdLdRf MemVar_C3D6E8
  loc_B5D0D6: NewIfNullPr bscFinalidad
  loc_B5D0D9: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D0DE: FLdPr var_88
  loc_B5D0E1: from_stack_1v = clsbase.RsFrmGet()
  loc_B5D0E6: FLdPr var_90
  loc_B5D0E9:  = Me.Fields
  loc_B5D0EE: FLdPr var_BC
  loc_B5D0F1: from_stack_2 = Me.Item(from_stack_1)
  loc_B5D0F6: FLdPr var_F4
  loc_B5D0F9:  = Me.Value
  loc_B5D0FE: FLdPr Me
  loc_B5D101: MemLdRfVar from_stack_1.global_148
  loc_B5D104: NewIfNullRf
  loc_B5D108: FLdRfVar var_A0
  loc_B5D10B: CStrVarTmp
  loc_B5D10C: FStStrNoPop var_A4
  loc_B5D10F: ImpAdLdI2 MemVar_C3D064
  loc_B5D112: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5D117: FStStrNoPop var_A8
  loc_B5D11A: FLdPr Me
  loc_B5D11D: MemStStrCopy
  loc_B5D121: FFreeStr var_A4 = ""
  loc_B5D128: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D133: FFree1Var var_A0 = ""
  loc_B5D136: FLdRfVar var_A4
  loc_B5D139: FLdPr Me
  loc_B5D13C: MemLdRfVar from_stack_1.global_148
  loc_B5D13F: NewIfNullPr tblfinalidad
  loc_B5D142: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5D147: FLdZeroAd var_A4
  loc_B5D14A: CVarStr var_A0
  loc_B5D14D: PopAdLdVar
  loc_B5D14E: FLdPr Me
  loc_B5D151: VCallAd Control_ID_CodiFifuMsk
  loc_B5D154: FStAdFunc var_88
  loc_B5D157: FLdPr var_88
  loc_B5D15A: LateIdSt
  loc_B5D15F: FFree1Ad var_88
  loc_B5D162: FFree1Var var_A0 = ""
  loc_B5D165: FLdRfVar var_A4
  loc_B5D168: FLdPr Me
  loc_B5D16B: MemLdRfVar from_stack_1.global_148
  loc_B5D16E: NewIfNullPr tblfinalidad
  loc_B5D171: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5D176: ILdRf var_A4
  loc_B5D179: FLdPr Me
  loc_B5D17C: VCallAd Control_ID_DetaFifuLbl
  loc_B5D17F: FStAdFunc var_88
  loc_B5D182: FLdPr var_88
  loc_B5D185: Me.Caption = from_stack_1
  loc_B5D18A: FFree1Str var_A4
  loc_B5D18D: FFree1Ad var_88
  loc_B5D190: FLdPr Me
  loc_B5D193: VCallAd Control_ID_CodiFifuMsk
  loc_B5D196: FStAdFunc var_F4
  loc_B5D199: FLdPr Me
  loc_B5D19C: VCallAd Control_ID_DetaFifuLbl
  loc_B5D19F: FStAdFunc var_BC
  loc_B5D1A2: FLdRfVar var_BC
  loc_B5D1A5: FLdZeroAd var_F4
  loc_B5D1A8: FStAdFuncNoPop
  loc_B5D1AB: CastAd
  loc_B5D1AE: FStAdFunc var_90
  loc_B5D1B1: FLdRfVar var_90
  loc_B5D1B4: FLdPr Me
  loc_B5D1B7: MemLdRfVar from_stack_1.global_64
  loc_B5D1BA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5D1BF: IStI2 KeyCode
  loc_B5D1C2: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D1CD: Branch loc_B5D421
  loc_B5D1D0: FLdRfVar var_E0
  loc_B5D1D3: FLdRfVar var_90
  loc_B5D1D6: FLdRfVar var_88
  loc_B5D1D9: ImpAdLdRf MemVar_C3D6E8
  loc_B5D1DC: NewIfNullPr bscFinalidad
  loc_B5D1DF: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D1E4: FLdPr var_88
  loc_B5D1E7: from_stack_1v = clsbase.RsFrmGet()
  loc_B5D1EC: FLdPr var_90
  loc_B5D1EF:  = Me.RecordCount
  loc_B5D1F4: ILdRf var_E0
  loc_B5D1F7: LitI4 1
  loc_B5D1FC: GtI4
  loc_B5D1FD: FFreeAd var_88 = ""
  loc_B5D204: BranchF loc_B5D3A3
  loc_B5D207: LitVar_Missing var_104
  loc_B5D20A: PopAdLdVar
  loc_B5D20B: LitVarI4
  loc_B5D213: PopAdLdVar
  loc_B5D214: ImpAdLdRf MemVar_C3D6E8
  loc_B5D217: NewIfNullPr bscFinalidad
  loc_B5D21A: bscFinalidad.Show from_stack_1, from_stack_2
  loc_B5D21F: FLdRfVar var_E0
  loc_B5D222: FLdRfVar var_88
  loc_B5D225: ImpAdLdRf MemVar_C3D6E8
  loc_B5D228: NewIfNullPr bscFinalidad
  loc_B5D22B: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D230: FLdPr var_88
  loc_B5D233: from_stack_1 = clsbase.RecordCount
  loc_B5D238: ILdRf var_E0
  loc_B5D23B: LitI4 0
  loc_B5D240: GtI4
  loc_B5D241: FFree1Ad var_88
  loc_B5D244: BranchF loc_B5D359
  loc_B5D247: FLdRfVar var_A0
  loc_B5D24A: FLdRfVar var_F4
  loc_B5D24D: LitVarStr var_F0, "CodiFifu"
  loc_B5D252: PopAdLdVar
  loc_B5D253: FLdRfVar var_BC
  loc_B5D256: FLdRfVar var_90
  loc_B5D259: FLdRfVar var_88
  loc_B5D25C: ImpAdLdRf MemVar_C3D6E8
  loc_B5D25F: NewIfNullPr bscFinalidad
  loc_B5D262: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D267: FLdPr var_88
  loc_B5D26A: from_stack_1v = clsbase.RsFrmGet()
  loc_B5D26F: FLdPr var_90
  loc_B5D272:  = Me.Fields
  loc_B5D277: FLdPr var_BC
  loc_B5D27A: from_stack_2 = Me.Item(from_stack_1)
  loc_B5D27F: FLdPr var_F4
  loc_B5D282:  = Me.Value
  loc_B5D287: FLdPr Me
  loc_B5D28A: MemLdRfVar from_stack_1.global_148
  loc_B5D28D: NewIfNullRf
  loc_B5D291: FLdRfVar var_A0
  loc_B5D294: CStrVarTmp
  loc_B5D295: FStStrNoPop var_A4
  loc_B5D298: ImpAdLdI2 MemVar_C3D064
  loc_B5D29B: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5D2A0: FStStrNoPop var_A8
  loc_B5D2A3: FLdPr Me
  loc_B5D2A6: MemStStrCopy
  loc_B5D2AA: FFreeStr var_A4 = ""
  loc_B5D2B1: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D2BC: FFree1Var var_A0 = ""
  loc_B5D2BF: FLdRfVar var_A4
  loc_B5D2C2: FLdPr Me
  loc_B5D2C5: MemLdRfVar from_stack_1.global_148
  loc_B5D2C8: NewIfNullPr tblfinalidad
  loc_B5D2CB: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5D2D0: FLdZeroAd var_A4
  loc_B5D2D3: CVarStr var_A0
  loc_B5D2D6: PopAdLdVar
  loc_B5D2D7: FLdPr Me
  loc_B5D2DA: VCallAd Control_ID_CodiFifuMsk
  loc_B5D2DD: FStAdFunc var_88
  loc_B5D2E0: FLdPr var_88
  loc_B5D2E3: LateIdSt
  loc_B5D2E8: FFree1Ad var_88
  loc_B5D2EB: FFree1Var var_A0 = ""
  loc_B5D2EE: FLdRfVar var_A4
  loc_B5D2F1: FLdPr Me
  loc_B5D2F4: MemLdRfVar from_stack_1.global_148
  loc_B5D2F7: NewIfNullPr tblfinalidad
  loc_B5D2FA: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5D2FF: ILdRf var_A4
  loc_B5D302: FLdPr Me
  loc_B5D305: VCallAd Control_ID_DetaFifuLbl
  loc_B5D308: FStAdFunc var_88
  loc_B5D30B: FLdPr var_88
  loc_B5D30E: Me.Caption = from_stack_1
  loc_B5D313: FFree1Str var_A4
  loc_B5D316: FFree1Ad var_88
  loc_B5D319: FLdPr Me
  loc_B5D31C: VCallAd Control_ID_CodiFifuMsk
  loc_B5D31F: FStAdFunc var_F4
  loc_B5D322: FLdPr Me
  loc_B5D325: VCallAd Control_ID_DetaFifuLbl
  loc_B5D328: FStAdFunc var_BC
  loc_B5D32B: FLdRfVar var_BC
  loc_B5D32E: FLdZeroAd var_F4
  loc_B5D331: FStAdFuncNoPop
  loc_B5D334: CastAd
  loc_B5D337: FStAdFunc var_90
  loc_B5D33A: FLdRfVar var_90
  loc_B5D33D: FLdPr Me
  loc_B5D340: MemLdRfVar from_stack_1.global_64
  loc_B5D343: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5D348: IStI2 KeyCode
  loc_B5D34B: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D356: Branch loc_B5D3A0
  loc_B5D359: LitStr "La Finalidad NO EXISTE. Verique..."
  loc_B5D35C: FLdPr Me
  loc_B5D35F: MemStStrCopy
  loc_B5D363: FLdPr Me
  loc_B5D366: VCallAd Control_ID_CodiFifuMsk
  loc_B5D369: FStAdFunc var_F4
  loc_B5D36C: FLdPr Me
  loc_B5D36F: VCallAd Control_ID_DetaFifuLbl
  loc_B5D372: FStAdFunc var_BC
  loc_B5D375: FLdRfVar var_BC
  loc_B5D378: FLdZeroAd var_F4
  loc_B5D37B: FStAdFuncNoPop
  loc_B5D37E: CastAd
  loc_B5D381: FStAdFunc var_90
  loc_B5D384: FLdRfVar var_90
  loc_B5D387: FLdPr Me
  loc_B5D38A: MemLdRfVar from_stack_1.global_64
  loc_B5D38D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5D392: IStI2 KeyCode
  loc_B5D395: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D3A0: Branch loc_B5D421
  loc_B5D3A3: FLdRfVar var_E0
  loc_B5D3A6: FLdRfVar var_90
  loc_B5D3A9: FLdRfVar var_88
  loc_B5D3AC: ImpAdLdRf MemVar_C3D6E8
  loc_B5D3AF: NewIfNullPr bscFinalidad
  loc_B5D3B2: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D3B7: FLdPr var_88
  loc_B5D3BA: from_stack_1v = clsbase.RsFrmGet()
  loc_B5D3BF: FLdPr var_90
  loc_B5D3C2:  = Me.RecordCount
  loc_B5D3C7: ILdRf var_E0
  loc_B5D3CA: LitI4 1
  loc_B5D3CF: LtI4
  loc_B5D3D0: FFreeAd var_88 = ""
  loc_B5D3D7: BranchF loc_B5D421
  loc_B5D3DA: LitStr "La Finalidad NO EXISTE. Verique..."
  loc_B5D3DD: FLdPr Me
  loc_B5D3E0: MemStStrCopy
  loc_B5D3E4: FLdPr Me
  loc_B5D3E7: VCallAd Control_ID_CodiFifuMsk
  loc_B5D3EA: FStAdFunc var_F4
  loc_B5D3ED: FLdPr Me
  loc_B5D3F0: VCallAd Control_ID_DetaFifuLbl
  loc_B5D3F3: FStAdFunc var_BC
  loc_B5D3F6: FLdRfVar var_BC
  loc_B5D3F9: FLdZeroAd var_F4
  loc_B5D3FC: FStAdFuncNoPop
  loc_B5D3FF: CastAd
  loc_B5D402: FStAdFunc var_90
  loc_B5D405: FLdRfVar var_90
  loc_B5D408: FLdPr Me
  loc_B5D40B: MemLdRfVar from_stack_1.global_64
  loc_B5D40E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5D413: IStI2 KeyCode
  loc_B5D416: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D421: Branch loc_B5D5D3
  loc_B5D424: LitNothing
  loc_B5D426: CastAd
  loc_B5D429: FStAdFuncNoPop
  loc_B5D42C: ImpAdLdRf MemVar_C3D6E8
  loc_B5D42F: NewIfNullPr bscFinalidad
  loc_B5D432: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_B5D437: FFree1Ad var_88
  loc_B5D43A: LitVar_Missing var_104
  loc_B5D43D: PopAdLdVar
  loc_B5D43E: LitVarI4
  loc_B5D446: PopAdLdVar
  loc_B5D447: ImpAdLdRf MemVar_C3D6E8
  loc_B5D44A: NewIfNullPr bscFinalidad
  loc_B5D44D: bscFinalidad.Show from_stack_1, from_stack_2
  loc_B5D452: FLdRfVar var_E0
  loc_B5D455: FLdRfVar var_88
  loc_B5D458: ImpAdLdRf MemVar_C3D6E8
  loc_B5D45B: NewIfNullPr bscFinalidad
  loc_B5D45E: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D463: FLdPr var_88
  loc_B5D466: from_stack_1 = clsbase.RecordCount
  loc_B5D46B: ILdRf var_E0
  loc_B5D46E: LitI4 0
  loc_B5D473: GtI4
  loc_B5D474: FFree1Ad var_88
  loc_B5D477: BranchF loc_B5D58C
  loc_B5D47A: FLdRfVar var_A0
  loc_B5D47D: FLdRfVar var_F4
  loc_B5D480: LitVarStr var_F0, "CodiFifu"
  loc_B5D485: PopAdLdVar
  loc_B5D486: FLdRfVar var_BC
  loc_B5D489: FLdRfVar var_90
  loc_B5D48C: FLdRfVar var_88
  loc_B5D48F: ImpAdLdRf MemVar_C3D6E8
  loc_B5D492: NewIfNullPr bscFinalidad
  loc_B5D495: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B5D49A: FLdPr var_88
  loc_B5D49D: from_stack_1v = clsbase.RsFrmGet()
  loc_B5D4A2: FLdPr var_90
  loc_B5D4A5:  = Me.Fields
  loc_B5D4AA: FLdPr var_BC
  loc_B5D4AD: from_stack_2 = Me.Item(from_stack_1)
  loc_B5D4B2: FLdPr var_F4
  loc_B5D4B5:  = Me.Value
  loc_B5D4BA: FLdPr Me
  loc_B5D4BD: MemLdRfVar from_stack_1.global_148
  loc_B5D4C0: NewIfNullRf
  loc_B5D4C4: FLdRfVar var_A0
  loc_B5D4C7: CStrVarTmp
  loc_B5D4C8: FStStrNoPop var_A4
  loc_B5D4CB: ImpAdLdI2 MemVar_C3D064
  loc_B5D4CE: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5D4D3: FStStrNoPop var_A8
  loc_B5D4D6: FLdPr Me
  loc_B5D4D9: MemStStrCopy
  loc_B5D4DD: FFreeStr var_A4 = ""
  loc_B5D4E4: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D4EF: FFree1Var var_A0 = ""
  loc_B5D4F2: FLdRfVar var_A4
  loc_B5D4F5: FLdPr Me
  loc_B5D4F8: MemLdRfVar from_stack_1.global_148
  loc_B5D4FB: NewIfNullPr tblfinalidad
  loc_B5D4FE: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5D503: FLdZeroAd var_A4
  loc_B5D506: CVarStr var_A0
  loc_B5D509: PopAdLdVar
  loc_B5D50A: FLdPr Me
  loc_B5D50D: VCallAd Control_ID_CodiFifuMsk
  loc_B5D510: FStAdFunc var_88
  loc_B5D513: FLdPr var_88
  loc_B5D516: LateIdSt
  loc_B5D51B: FFree1Ad var_88
  loc_B5D51E: FFree1Var var_A0 = ""
  loc_B5D521: FLdRfVar var_A4
  loc_B5D524: FLdPr Me
  loc_B5D527: MemLdRfVar from_stack_1.global_148
  loc_B5D52A: NewIfNullPr tblfinalidad
  loc_B5D52D: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5D532: ILdRf var_A4
  loc_B5D535: FLdPr Me
  loc_B5D538: VCallAd Control_ID_DetaFifuLbl
  loc_B5D53B: FStAdFunc var_88
  loc_B5D53E: FLdPr var_88
  loc_B5D541: Me.Caption = from_stack_1
  loc_B5D546: FFree1Str var_A4
  loc_B5D549: FFree1Ad var_88
  loc_B5D54C: FLdPr Me
  loc_B5D54F: VCallAd Control_ID_CodiFifuMsk
  loc_B5D552: FStAdFunc var_F4
  loc_B5D555: FLdPr Me
  loc_B5D558: VCallAd Control_ID_DetaFifuLbl
  loc_B5D55B: FStAdFunc var_BC
  loc_B5D55E: FLdRfVar var_BC
  loc_B5D561: FLdZeroAd var_F4
  loc_B5D564: FStAdFuncNoPop
  loc_B5D567: CastAd
  loc_B5D56A: FStAdFunc var_90
  loc_B5D56D: FLdRfVar var_90
  loc_B5D570: FLdPr Me
  loc_B5D573: MemLdRfVar from_stack_1.global_64
  loc_B5D576: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5D57B: IStI2 KeyCode
  loc_B5D57E: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D589: Branch loc_B5D5D3
  loc_B5D58C: LitStr "La Finalidad NO EXISTE. Verifique..."
  loc_B5D58F: FLdPr Me
  loc_B5D592: MemStStrCopy
  loc_B5D596: FLdPr Me
  loc_B5D599: VCallAd Control_ID_CodiFifuMsk
  loc_B5D59C: FStAdFunc var_F4
  loc_B5D59F: FLdPr Me
  loc_B5D5A2: VCallAd Control_ID_DetaFifuLbl
  loc_B5D5A5: FStAdFunc var_BC
  loc_B5D5A8: FLdRfVar var_BC
  loc_B5D5AB: FLdZeroAd var_F4
  loc_B5D5AE: FStAdFuncNoPop
  loc_B5D5B1: CastAd
  loc_B5D5B4: FStAdFunc var_90
  loc_B5D5B7: FLdRfVar var_90
  loc_B5D5BA: FLdPr Me
  loc_B5D5BD: MemLdRfVar from_stack_1.global_64
  loc_B5D5C0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5D5C5: IStI2 KeyCode
  loc_B5D5C8: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5D5D3: ILdI2 KeyCode
  loc_B5D5D6: NotI4
  loc_B5D5D7: BranchF loc_B5D608
  loc_B5D5DA: FLdRfVar var_A4
  loc_B5D5DD: FLdPr Me
  loc_B5D5E0: MemLdRfVar from_stack_1.global_148
  loc_B5D5E3: NewIfNullPr tblfinalidad
  loc_B5D5E6: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5D5EB: ILdRf var_A4
  loc_B5D5EE: FLdPr Me
  loc_B5D5F1: VCallAd Control_ID_DetaFifuLbl
  loc_B5D5F4: FStAdFunc var_88
  loc_B5D5F7: FLdPr var_88
  loc_B5D5FA: Me.Caption = from_stack_1
  loc_B5D5FF: FFree1Str var_A4
  loc_B5D602: FFree1Ad var_88
  loc_B5D605: Branch loc_B5D622
  loc_B5D608: LitVarStr var_F0, vbNullString
  loc_B5D60D: PopAdLdVar
  loc_B5D60E: FLdPr Me
  loc_B5D611: VCallAd Control_ID_CodiFifuMsk
  loc_B5D614: FStAdFunc var_88
  loc_B5D617: FLdPr var_88
  loc_B5D61A: LateIdSt
  loc_B5D61F: FFree1Ad var_88
  loc_B5D622: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_KeyPress(KeyAscii As Integer) '9AE514
  'Data Table: 500268
  loc_9AE474: FLdPr Me
  loc_9AE477: VCallAd Control_ID_CodiFifuMsk
  loc_9AE47A: FStAdFunc var_88
  loc_9AE47D: FLdPr var_88
  loc_9AE480: LateIdLdVar var_98 DispID_22 0
  loc_9AE487: PopAd
  loc_9AE489: LitI4 0
  loc_9AE48E: LitI4 -1
  loc_9AE493: LitI4 1
  loc_9AE498: LitStr vbNullString
  loc_9AE49B: LitStr "."
  loc_9AE49E: FLdRfVar var_98
  loc_9AE4A1: CStrVarTmp
  loc_9AE4A2: FStStrNoPop var_9C
  loc_9AE4A5: ImpAdCallI2 Replace(, , , , , )
  loc_9AE4AA: FStStrNoPop var_A0
  loc_9AE4AD: FnLenStr
  loc_9AE4AE: LitI2_Byte 6
  loc_9AE4B0: CI2UI1
  loc_9AE4B2: LitI2_Byte 1
  loc_9AE4B4: SubI2
  loc_9AE4B5: CI4UI1
  loc_9AE4B6: GtI4
  loc_9AE4B7: FFreeStr var_9C = ""
  loc_9AE4BE: FFree1Ad var_88
  loc_9AE4C1: FFree1Var var_98 = ""
  loc_9AE4C4: BranchF loc_9AE512
  loc_9AE4C7: FLdPr Me
  loc_9AE4CA: VCallAd Control_ID_CodiFifuMsk
  loc_9AE4CD: FStAdFunc var_88
  loc_9AE4D0: FLdRfVar var_88
  loc_9AE4D3: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9AE4D8: FFree1Ad var_88
  loc_9AE4DB: BranchF loc_9AE512
  loc_9AE4DE: ILdI2 KeyAscii
  loc_9AE4E1: CI4UI1
  loc_9AE4E2: LitI4 8
  loc_9AE4E7: NeI4
  loc_9AE4E8: FLdPr Me
  loc_9AE4EB: VCallAd Control_ID_CodiFifuMsk
  loc_9AE4EE: FStAdFunc var_88
  loc_9AE4F1: FLdPr var_88
  loc_9AE4F4: LateIdLdVar var_98 DispID_17 0
  loc_9AE4FB: CI4Var
  loc_9AE4FD: LitI4 0
  loc_9AE502: EqI4
  loc_9AE503: AndI4
  loc_9AE504: FFree1Ad var_88
  loc_9AE507: FFree1Var var_98 = ""
  loc_9AE50A: BranchF loc_9AE512
  loc_9AE50D: LitI2_Byte 0
  loc_9AE50F: IStI2 KeyAscii
  loc_9AE512: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A207C0
  'Data Table: 500268
  loc_A20620: ILdI2 Shift
  loc_A20623: CI4UI1
  loc_A20624: LitI4 2
  loc_A20629: EqI4
  loc_A2062A: ILdI2 KeyCode
  loc_A2062D: CI4UI1
  loc_A2062E: LitI4 &H42
  loc_A20633: EqI4
  loc_A20634: AndI4
  loc_A20635: BranchF loc_A207BC
  loc_A20638: FLdPr Me
  loc_A2063B: VCallAd Control_ID_CodiPartMsk
  loc_A2063E: FStAdFunc var_88
  loc_A20641: FLdPr var_88
  loc_A20644: LateIdLdVar var_98 DispID_22 0
  loc_A2064B: CStrVarTmp
  loc_A2064C: FStStrNoPop var_9C
  loc_A2064F: ImpAdLdRf MemVar_C3D6E8
  loc_A20652: NewIfNullPr bscFinalidad
  loc_A20655: Call bscFinalidad.sCodiPartPut(from_stack_1v)
  loc_A2065A: FFree1Str var_9C
  loc_A2065D: FFree1Ad var_88
  loc_A20660: FFree1Var var_98 = ""
  loc_A20663: FLdPr Me
  loc_A20666: VCallAd Control_ID_
  loc_A20669: FStAdFunc var_88
  loc_A2066C: FLdPr var_88
  loc_A2066F: LateIdLdVar var_98 DispID_22 0
  loc_A20676: CStrVarTmp
  loc_A20677: FStStrNoPop var_9C
  loc_A2067A: ImpAdLdRf MemVar_C3D6E8
  loc_A2067D: NewIfNullPr bscFinalidad
  loc_A20680: Call bscFinalidad.sCodiOrgaPut(from_stack_1v)
  loc_A20685: FFree1Str var_9C
  loc_A20688: FFree1Ad var_88
  loc_A2068B: FFree1Var var_98 = ""
  loc_A2068E: LitNothing
  loc_A20690: CastAd
  loc_A20693: FStAdFuncNoPop
  loc_A20696: ImpAdLdRf MemVar_C3D6E8
  loc_A20699: NewIfNullPr bscFinalidad
  loc_A2069C: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_A206A1: FFree1Ad var_88
  loc_A206A4: LitVar_Missing var_BC
  loc_A206A7: PopAdLdVar
  loc_A206A8: LitVarI4
  loc_A206B0: PopAdLdVar
  loc_A206B1: ImpAdLdRf MemVar_C3D6E8
  loc_A206B4: NewIfNullPr bscFinalidad
  loc_A206B7: bscFinalidad.Show from_stack_1, from_stack_2
  loc_A206BC: FLdRfVar var_C0
  loc_A206BF: FLdRfVar var_88
  loc_A206C2: ImpAdLdRf MemVar_C3D6E8
  loc_A206C5: NewIfNullPr bscFinalidad
  loc_A206C8: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A206CD: FLdPr var_88
  loc_A206D0: from_stack_1 = clsbase.RecordCount
  loc_A206D5: ILdRf var_C0
  loc_A206D8: LitI4 0
  loc_A206DD: GtI4
  loc_A206DE: FFree1Ad var_88
  loc_A206E1: BranchF loc_A207BC
  loc_A206E4: FLdRfVar var_98
  loc_A206E7: FLdRfVar var_CC
  loc_A206EA: LitVarStr var_AC, "CodiFifu"
  loc_A206EF: PopAdLdVar
  loc_A206F0: FLdRfVar var_C8
  loc_A206F3: FLdRfVar var_C4
  loc_A206F6: FLdRfVar var_88
  loc_A206F9: ImpAdLdRf MemVar_C3D6E8
  loc_A206FC: NewIfNullPr bscFinalidad
  loc_A206FF: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A20704: FLdPr var_88
  loc_A20707: from_stack_1v = clsbase.RsFrmGet()
  loc_A2070C: FLdPr var_C4
  loc_A2070F:  = Me.Fields
  loc_A20714: FLdPr var_C8
  loc_A20717: from_stack_2 = Me.Item(from_stack_1)
  loc_A2071C: FLdPr var_CC
  loc_A2071F:  = Me.Value
  loc_A20724: FLdRfVar var_98
  loc_A20727: CStrVarTmp
  loc_A20728: CVarStr var_DC
  loc_A2072B: PopAdLdVar
  loc_A2072C: FLdPr Me
  loc_A2072F: VCallAd Control_ID_CodiFifuMsk
  loc_A20732: FStAdFunc var_E0
  loc_A20735: FLdPr var_E0
  loc_A20738: LateIdSt
  loc_A2073D: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A2074A: FFreeVar var_98 = ""
  loc_A20751: FLdRfVar var_98
  loc_A20754: FLdRfVar var_CC
  loc_A20757: LitVarStr var_AC, "DetaFifu"
  loc_A2075C: PopAdLdVar
  loc_A2075D: FLdRfVar var_C8
  loc_A20760: FLdRfVar var_C4
  loc_A20763: FLdRfVar var_88
  loc_A20766: ImpAdLdRf MemVar_C3D6E8
  loc_A20769: NewIfNullPr bscFinalidad
  loc_A2076C: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A20771: FLdPr var_88
  loc_A20774: from_stack_1v = clsbase.RsFrmGet()
  loc_A20779: FLdPr var_C4
  loc_A2077C:  = Me.Fields
  loc_A20781: FLdPr var_C8
  loc_A20784: from_stack_2 = Me.Item(from_stack_1)
  loc_A20789: FLdPr var_CC
  loc_A2078C:  = Me.Value
  loc_A20791: FLdRfVar var_98
  loc_A20794: CStrVarTmp
  loc_A20795: FStStrNoPop var_9C
  loc_A20798: FLdPr Me
  loc_A2079B: VCallAd Control_ID_DetaFifuLbl
  loc_A2079E: FStAdFunc var_E0
  loc_A207A1: FLdPr var_E0
  loc_A207A4: Me.Caption = from_stack_1
  loc_A207A9: FFree1Str var_9C
  loc_A207AC: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A207B9: FFree1Var var_98 = ""
  loc_A207BC: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_GotFocus() '94CA28
  'Data Table: 500268
  loc_94CA14: FLdPr Me
  loc_94CA17: VCallAd Control_ID_ImunImpuTxt
  loc_94CA1A: CVarAd
  loc_94CA1E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CA23: FFree1Var var_94 = ""
  loc_94CA26: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_KeyPress(KeyAscii As Integer) '97FA98
  'Data Table: 500268
  loc_97FA64: LitStr "1234567890,."
  loc_97FA67: FStStrCopy var_88
  loc_97FA6A: FLdRfVar var_88
  loc_97FA6D: ILdRf KeyAscii
  loc_97FA70: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97FA75: IStI2 KeyAscii
  loc_97FA78: FFree1Str var_88
  loc_97FA7B: ILdI2 KeyAscii
  loc_97FA7E: LitStr "."
  loc_97FA81: ImpAdCallI2 Asc()
  loc_97FA86: EqI2
  loc_97FA87: BranchF loc_97FA95
  loc_97FA8A: LitStr ","
  loc_97FA8D: ImpAdCallI2 Asc()
  loc_97FA92: IStI2 KeyAscii
  loc_97FA95: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_Validate(Cancel As Boolean) '9FD8EC
  'Data Table: 500268
  loc_9FD7AC: FLdRfVar var_8A
  loc_9FD7AF: FLdPr Me
  loc_9FD7B2: VCallAd Control_ID_cmdCancelar
  loc_9FD7B5: FStAdFunc var_88
  loc_9FD7B8: FLdPr var_88
  loc_9FD7BB:  = Me.Value
  loc_9FD7C0: FLdI2 var_8A
  loc_9FD7C3: NotI4
  loc_9FD7C4: FLdRfVar var_92
  loc_9FD7C7: FLdPr Me
  loc_9FD7CA: VCallAd Control_ID_ImunImpuTxt
  loc_9FD7CD: FStAdFunc var_90
  loc_9FD7D0: FLdPr var_90
  loc_9FD7D3:  = Me.Enabled
  loc_9FD7D8: FLdI2 var_92
  loc_9FD7DB: AndI4
  loc_9FD7DC: FFreeAd var_88 = ""
  loc_9FD7E3: BranchF loc_9FD8EB
  loc_9FD7E6: FLdRfVar var_98
  loc_9FD7E9: FLdPr Me
  loc_9FD7EC: VCallAd Control_ID_ImunImpuTxt
  loc_9FD7EF: FStAdFunc var_88
  loc_9FD7F2: FLdPr var_88
  loc_9FD7F5:  = Me.Text
  loc_9FD7FA: FLdRfVar var_9C
  loc_9FD7FD: FLdPr Me
  loc_9FD800: MemLdUI1 global_60
  loc_9FD804: FLdPr Me
  loc_9FD807: MemLdRfVar from_stack_1.global_140
  loc_9FD80A: NewIfNullRf
  loc_9FD80E: ILdRf var_98
  loc_9FD811: FLdPr Me
  loc_9FD814: MemLdRfVar from_stack_1.global_52
  loc_9FD817: NewIfNullPr clsimputacion
  loc_9FD81A: from_stack_4v = clsimputacion.ValidaImunImpuPreventiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9FD81F: ILdRf var_9C
  loc_9FD822: FLdPr Me
  loc_9FD825: MemStStrCopy
  loc_9FD829: FFreeStr var_98 = ""
  loc_9FD830: FFree1Ad var_88
  loc_9FD833: FLdPr Me
  loc_9FD836: VCallAd Control_ID_ImunImpuTxt
  loc_9FD839: FStAdFunc var_A4
  loc_9FD83C: LitNothing
  loc_9FD83E: CastAd
  loc_9FD841: FStAdFunc var_A0
  loc_9FD844: FLdRfVar var_A0
  loc_9FD847: FLdZeroAd var_A4
  loc_9FD84A: FStAdFuncNoPop
  loc_9FD84D: CastAd
  loc_9FD850: FStAdFunc var_90
  loc_9FD853: FLdRfVar var_90
  loc_9FD856: FLdPr Me
  loc_9FD859: MemLdRfVar from_stack_1.global_64
  loc_9FD85C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FD861: IStI2 Cancel
  loc_9FD864: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9FD86F: ILdI2 Cancel
  loc_9FD872: NotI4
  loc_9FD873: BranchF loc_9FD8EB
  loc_9FD876: FLdRfVar var_98
  loc_9FD879: FLdPr Me
  loc_9FD87C: VCallAd Control_ID_CantImpuTxt
  loc_9FD87F: FStAdFunc var_88
  loc_9FD882: FLdPr var_88
  loc_9FD885:  = Me.Text
  loc_9FD88A: FLdRfVar var_9C
  loc_9FD88D: FLdPr Me
  loc_9FD890: VCallAd Control_ID_ImunImpuTxt
  loc_9FD893: FStAdFunc var_90
  loc_9FD896: FLdPr var_90
  loc_9FD899:  = Me.Text
  loc_9FD89E: LitI4 2
  loc_9FD8A3: ILdRf var_98
  loc_9FD8A6: CR8Str
  loc_9FD8A8: ILdRf var_9C
  loc_9FD8AB: CR8Str
  loc_9FD8AD: MulR8
  loc_9FD8AE: CVarR8
  loc_9FD8B2: FLdRfVar var_D4
  loc_9FD8B5: ImpAdCallFPR4  = Round(, )
  loc_9FD8BA: FLdRfVar var_D4
  loc_9FD8BD: CStrVarVal var_D8
  loc_9FD8C1: FLdPr Me
  loc_9FD8C4: VCallAd Control_ID_ImpoImpuTxt
  loc_9FD8C7: FStAdFunc var_A0
  loc_9FD8CA: FLdPr var_A0
  loc_9FD8CD: Me.Text = from_stack_1
  loc_9FD8D2: FFreeStr var_98 = "": var_9C = ""
  loc_9FD8DB: FFreeAd var_88 = "": var_90 = ""
  loc_9FD8E4: FFreeVar var_C4 = ""
  loc_9FD8EB: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_GotFocus() '94C710
  'Data Table: 500268
  loc_94C6FC: FLdPr Me
  loc_94C6FF: VCallAd Control_ID_DetaImpuTxt
  loc_94C702: CVarAd
  loc_94C706: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C70B: FFree1Var var_94 = ""
  loc_94C70E: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_KeyPress(KeyAscii As Integer) '98A800
  'Data Table: 500268
  loc_98A7C4: LitStr "Municipalidad de Guaymallén"
  loc_98A7C7: LitStr "Municipalidad de La Paz"
  loc_98A7CA: EqStr
  loc_98A7CC: BranchF loc_98A7FF
  loc_98A7CF: ILdI2 KeyAscii
  loc_98A7D2: CI4UI1
  loc_98A7D3: FLdRfVar var_94
  loc_98A7D6: ImpAdCallFPR4  = Chr()
  loc_98A7DB: FLdRfVar var_94
  loc_98A7DE: FLdRfVar var_A4
  loc_98A7E1: ImpAdCallFPR4  = Ucase()
  loc_98A7E6: FLdRfVar var_A4
  loc_98A7E9: CStrVarVal var_A8
  loc_98A7ED: ImpAdCallI2 Asc()
  loc_98A7F2: IStI2 KeyAscii
  loc_98A7F5: FFree1Str var_A8
  loc_98A7F8: FFreeVar var_94 = ""
  loc_98A7FF: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_Validate(Cancel As Boolean) '9BF094
  'Data Table: 500268
  loc_9BEFD8: FLdRfVar var_8A
  loc_9BEFDB: FLdPr Me
  loc_9BEFDE: VCallAd Control_ID_cmdCancelar
  loc_9BEFE1: FStAdFunc var_88
  loc_9BEFE4: FLdPr var_88
  loc_9BEFE7:  = Me.Value
  loc_9BEFEC: FLdI2 var_8A
  loc_9BEFEF: NotI4
  loc_9BEFF0: FLdRfVar var_92
  loc_9BEFF3: FLdPr Me
  loc_9BEFF6: VCallAd Control_ID_DetaImpuTxt
  loc_9BEFF9: FStAdFunc var_90
  loc_9BEFFC: FLdPr var_90
  loc_9BEFFF:  = Me.Enabled
  loc_9BF004: FLdI2 var_92
  loc_9BF007: AndI4
  loc_9BF008: FFreeAd var_88 = ""
  loc_9BF00F: BranchF loc_9BF090
  loc_9BF012: FLdRfVar var_98
  loc_9BF015: FLdPr Me
  loc_9BF018: VCallAd Control_ID_DetaImpuTxt
  loc_9BF01B: FStAdFunc var_88
  loc_9BF01E: FLdPr var_88
  loc_9BF021:  = Me.Text
  loc_9BF026: LitI2_Byte 0
  loc_9BF028: PopTmpLdAd2 var_9A
  loc_9BF02B: LitI2_Byte 0
  loc_9BF02D: PopTmpLdAd2 var_92
  loc_9BF030: LitI2_Byte 0
  loc_9BF032: PopTmpLdAd2 var_8A
  loc_9BF035: ILdRf var_98
  loc_9BF038: LitStr "Detalle"
  loc_9BF03B: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BF040: FStStrNoPop var_A0
  loc_9BF043: FLdPr Me
  loc_9BF046: MemStStrCopy
  loc_9BF04A: FFreeStr var_98 = ""
  loc_9BF051: FFree1Ad var_88
  loc_9BF054: FLdPr Me
  loc_9BF057: VCallAd Control_ID_DetaImpuTxt
  loc_9BF05A: FStAdFunc var_A8
  loc_9BF05D: LitNothing
  loc_9BF05F: CastAd
  loc_9BF062: FStAdFunc var_A4
  loc_9BF065: FLdRfVar var_A4
  loc_9BF068: FLdZeroAd var_A8
  loc_9BF06B: FStAdFuncNoPop
  loc_9BF06E: CastAd
  loc_9BF071: FStAdFunc var_90
  loc_9BF074: FLdRfVar var_90
  loc_9BF077: FLdPr Me
  loc_9BF07A: MemLdRfVar from_stack_1.global_64
  loc_9BF07D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BF082: IStI2 Cancel
  loc_9BF085: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BF090: ExitProcHresult
End Sub

Private Sub cboSeleccion_Click() 'BE3CE4
  'Data Table: 500268
  loc_BE2434: ILdRf Me
  loc_BE2437: CastAd
  loc_BE243A: FStAdFunc var_88
  loc_BE243D: FLdRfVar var_88
  loc_BE2440: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_BE2445: FFree1Ad var_88
  loc_BE2448: FLdRfVar var_94
  loc_BE244B: FLdRfVar var_8A
  loc_BE244E: FLdPr Me
  loc_BE2451: VCallAd Control_ID_cboSeleccion
  loc_BE2454: FStAdFunc var_88
  loc_BE2457: FLdPr var_88
  loc_BE245A:  = Me.ListIndex
  loc_BE245F: FLdI2 var_8A
  loc_BE2462: FLdPr Me
  loc_BE2465: VCallAd Control_ID_cboSeleccion
  loc_BE2468: FStAdFunc var_90
  loc_BE246B: FLdPr var_90
  loc_BE246E:  = Me.ItemData
  loc_BE2473: ILdRf var_94
  loc_BE2476: FStR4 var_98
  loc_BE2479: FFreeAd var_88 = ""
  loc_BE2480: ILdRf var_98
  loc_BE2483: LitI4 1
  loc_BE2488: EqI4
  loc_BE2489: BranchF loc_BE260E
  loc_BE248C: LitI4 0
  loc_BE2491: LitI4 &HB
  loc_BE2496: FLdRfVar var_9C
  loc_BE2499: Redim
  loc_BE24A3: FLdPr Me
  loc_BE24A6: VCallAd Control_ID_cboSeleccion
  loc_BE24A9: CVarAd
  loc_BE24AD: ParmAry1St
  loc_BE24B3: FLdPr Me
  loc_BE24B6: VCallAd Control_ID_ExorImpuMsk
  loc_BE24B9: CVarAd
  loc_BE24BD: ParmAry1St
  loc_BE24C3: FLdPr Me
  loc_BE24C6: VCallAd Control_ID_CodiInsuMsk
  loc_BE24C9: CVarAd
  loc_BE24CD: ParmAry1St
  loc_BE24D3: FLdPr Me
  loc_BE24D6: VCallAd Control_ID_CodiPartMsk
  loc_BE24D9: CVarAd
  loc_BE24DD: ParmAry1St
  loc_BE24E3: FLdPr Me
  loc_BE24E6: VCallAd Control_ID_CodiOrgaMsk
  loc_BE24E9: CVarAd
  loc_BE24ED: ParmAry1St
  loc_BE24F3: FLdPr Me
  loc_BE24F6: VCallAd Control_ID_CodiUngaTxt
  loc_BE24F9: CVarAd
  loc_BE24FD: ParmAry1St
  loc_BE2503: FLdPr Me
  loc_BE2506: VCallAd Control_ID_CodiFifuMsk
  loc_BE2509: CVarAd
  loc_BE250D: ParmAry1St
  loc_BE2513: FLdPr Me
  loc_BE2516: VCallAd Control_ID_FechImpuMsk
  loc_BE2519: CVarAd
  loc_BE251D: ParmAry1St
  loc_BE2523: FLdPr Me
  loc_BE2526: VCallAd Control_ID_CantImpuTxt
  loc_BE2529: CVarAd
  loc_BE252D: ParmAry1St
  loc_BE2533: FLdPr Me
  loc_BE2536: VCallAd Control_ID_ImunImpuTxt
  loc_BE2539: CVarAd
  loc_BE253D: ParmAry1St
  loc_BE2543: FLdPr Me
  loc_BE2546: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2549: CVarAd
  loc_BE254D: ParmAry1St
  loc_BE2553: FLdPr Me
  loc_BE2556: VCallAd Control_ID_DetaImpuTxt
  loc_BE2559: CVarAd
  loc_BE255D: ParmAry1St
  loc_BE2563: FLdRfVar var_9C
  loc_BE2566: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE256B: FLdRfVar var_9C
  loc_BE256E: Erase
  loc_BE256F: FLdRfVar var_8A
  loc_BE2572: FLdPr Me
  loc_BE2575: VCallAd Control_ID_CantImpuTxt
  loc_BE2578: FStAdFunc var_88
  loc_BE257B: FLdPr var_88
  loc_BE257E:  = Me.Enabled
  loc_BE2583: FLdI2 var_8A
  loc_BE2586: FFree1Ad var_88
  loc_BE2589: BranchF loc_BE25A3
  loc_BE258C: LitStr "1"
  loc_BE258F: FLdPr Me
  loc_BE2592: VCallAd Control_ID_CantImpuTxt
  loc_BE2595: FStAdFunc var_88
  loc_BE2598: FLdPr var_88
  loc_BE259B: Me.Text = from_stack_1
  loc_BE25A0: FFree1Ad var_88
  loc_BE25A3: FLdRfVar var_8A
  loc_BE25A6: FLdPr Me
  loc_BE25A9: VCallAd Control_ID_ImunImpuTxt
  loc_BE25AC: FStAdFunc var_88
  loc_BE25AF: FLdPr var_88
  loc_BE25B2:  = Me.Enabled
  loc_BE25B7: FLdI2 var_8A
  loc_BE25BA: FFree1Ad var_88
  loc_BE25BD: BranchF loc_BE25D7
  loc_BE25C0: LitStr "0"
  loc_BE25C3: FLdPr Me
  loc_BE25C6: VCallAd Control_ID_ImunImpuTxt
  loc_BE25C9: FStAdFunc var_88
  loc_BE25CC: FLdPr var_88
  loc_BE25CF: Me.Text = from_stack_1
  loc_BE25D4: FFree1Ad var_88
  loc_BE25D7: FLdRfVar var_8A
  loc_BE25DA: FLdPr Me
  loc_BE25DD: VCallAd Control_ID_ImpoImpuTxt
  loc_BE25E0: FStAdFunc var_88
  loc_BE25E3: FLdPr var_88
  loc_BE25E6:  = Me.Enabled
  loc_BE25EB: FLdI2 var_8A
  loc_BE25EE: FFree1Ad var_88
  loc_BE25F1: BranchF loc_BE260B
  loc_BE25F4: LitStr "0"
  loc_BE25F7: FLdPr Me
  loc_BE25FA: VCallAd Control_ID_ImpoImpuTxt
  loc_BE25FD: FStAdFunc var_88
  loc_BE2600: FLdPr var_88
  loc_BE2603: Me.Text = from_stack_1
  loc_BE2608: FFree1Ad var_88
  loc_BE260B: Branch loc_BE3CE3
  loc_BE260E: ILdRf var_98
  loc_BE2611: LitI4 2
  loc_BE2616: EqI4
  loc_BE2617: BranchF loc_BE2820
  loc_BE261A: LitI4 0
  loc_BE261F: LitI4 &HD
  loc_BE2624: FLdRfVar var_9C
  loc_BE2627: Redim
  loc_BE2631: FLdPr Me
  loc_BE2634: VCallAd Control_ID_cboSeleccion
  loc_BE2637: CVarAd
  loc_BE263B: ParmAry1St
  loc_BE2641: FLdPr Me
  loc_BE2644: VCallAd Control_ID_ExorImpuMsk
  loc_BE2647: CVarAd
  loc_BE264B: ParmAry1St
  loc_BE2651: FLdPr Me
  loc_BE2654: VCallAd Control_ID_CodiInsuMsk
  loc_BE2657: CVarAd
  loc_BE265B: ParmAry1St
  loc_BE2661: FLdPr Me
  loc_BE2664: VCallAd Control_ID_CodiPartMsk
  loc_BE2667: CVarAd
  loc_BE266B: ParmAry1St
  loc_BE2671: FLdPr Me
  loc_BE2674: VCallAd Control_ID_CodiOrgaMsk
  loc_BE2677: CVarAd
  loc_BE267B: ParmAry1St
  loc_BE2681: FLdPr Me
  loc_BE2684: VCallAd Control_ID_CodiUngaTxt
  loc_BE2687: CVarAd
  loc_BE268B: ParmAry1St
  loc_BE2691: FLdPr Me
  loc_BE2694: VCallAd Control_ID_CodiFifuMsk
  loc_BE2697: CVarAd
  loc_BE269B: ParmAry1St
  loc_BE26A1: FLdPr Me
  loc_BE26A4: VCallAd Control_ID_FechImpuMsk
  loc_BE26A7: CVarAd
  loc_BE26AB: ParmAry1St
  loc_BE26B1: FLdPr Me
  loc_BE26B4: VCallAd Control_ID_CantImpuTxt
  loc_BE26B7: CVarAd
  loc_BE26BB: ParmAry1St
  loc_BE26C1: FLdPr Me
  loc_BE26C4: VCallAd Control_ID_ImunImpuTxt
  loc_BE26C7: CVarAd
  loc_BE26CB: ParmAry1St
  loc_BE26D1: FLdPr Me
  loc_BE26D4: VCallAd Control_ID_ImpoImpuTxt
  loc_BE26D7: CVarAd
  loc_BE26DB: ParmAry1St
  loc_BE26E1: FLdPr Me
  loc_BE26E4: VCallAd Control_ID_DetaImpuTxt
  loc_BE26E7: CVarAd
  loc_BE26EB: ParmAry1St
  loc_BE26F1: FLdPr Me
  loc_BE26F4: VCallAd Control_ID_CucuPersTxt
  loc_BE26F7: CVarAd
  loc_BE26FB: ParmAry1St
  loc_BE2701: FLdPr Me
  loc_BE2704: VCallAd Control_ID_chkRepetirProveedor
  loc_BE2707: CVarAd
  loc_BE270B: ParmAry1St
  loc_BE2711: FLdRfVar var_9C
  loc_BE2714: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE2719: FLdRfVar var_9C
  loc_BE271C: Erase
  loc_BE271D: FLdRfVar var_8A
  loc_BE2720: FLdPr Me
  loc_BE2723: VCallAd Control_ID_chkRepetirProveedor
  loc_BE2726: FStAdFunc var_88
  loc_BE2729: FLdPr var_88
  loc_BE272C:  = Me.Value
  loc_BE2731: FLdI2 var_8A
  loc_BE2734: CI4UI1
  loc_BE2735: LitI4 1
  loc_BE273A: EqI4
  loc_BE273B: FFree1Ad var_88
  loc_BE273E: BranchF loc_BE2781
  loc_BE2741: LitI4 1
  loc_BE2746: FLdPr Me
  loc_BE2749: MemLdRfVar from_stack_1.global_80
  loc_BE274C: Ary1LdI4
  loc_BE274D: FLdPr Me
  loc_BE2750: VCallAd Control_ID_CucuPersTxt
  loc_BE2753: FStAdFunc var_88
  loc_BE2756: FLdPr var_88
  loc_BE2759: Me.Text = from_stack_1
  loc_BE275E: FFree1Ad var_88
  loc_BE2761: LitI4 2
  loc_BE2766: FLdPr Me
  loc_BE2769: MemLdRfVar from_stack_1.global_80
  loc_BE276C: Ary1LdI4
  loc_BE276D: FLdPr Me
  loc_BE2770: VCallAd Control_ID_DetaProvLbl
  loc_BE2773: FStAdFunc var_88
  loc_BE2776: FLdPr var_88
  loc_BE2779: Me.Caption = from_stack_1
  loc_BE277E: FFree1Ad var_88
  loc_BE2781: FLdRfVar var_8A
  loc_BE2784: FLdPr Me
  loc_BE2787: VCallAd Control_ID_CantImpuTxt
  loc_BE278A: FStAdFunc var_88
  loc_BE278D: FLdPr var_88
  loc_BE2790:  = Me.Enabled
  loc_BE2795: FLdI2 var_8A
  loc_BE2798: FFree1Ad var_88
  loc_BE279B: BranchF loc_BE27B5
  loc_BE279E: LitStr "1"
  loc_BE27A1: FLdPr Me
  loc_BE27A4: VCallAd Control_ID_CantImpuTxt
  loc_BE27A7: FStAdFunc var_88
  loc_BE27AA: FLdPr var_88
  loc_BE27AD: Me.Text = from_stack_1
  loc_BE27B2: FFree1Ad var_88
  loc_BE27B5: FLdRfVar var_8A
  loc_BE27B8: FLdPr Me
  loc_BE27BB: VCallAd Control_ID_ImunImpuTxt
  loc_BE27BE: FStAdFunc var_88
  loc_BE27C1: FLdPr var_88
  loc_BE27C4:  = Me.Enabled
  loc_BE27C9: FLdI2 var_8A
  loc_BE27CC: FFree1Ad var_88
  loc_BE27CF: BranchF loc_BE27E9
  loc_BE27D2: LitStr "0"
  loc_BE27D5: FLdPr Me
  loc_BE27D8: VCallAd Control_ID_ImunImpuTxt
  loc_BE27DB: FStAdFunc var_88
  loc_BE27DE: FLdPr var_88
  loc_BE27E1: Me.Text = from_stack_1
  loc_BE27E6: FFree1Ad var_88
  loc_BE27E9: FLdRfVar var_8A
  loc_BE27EC: FLdPr Me
  loc_BE27EF: VCallAd Control_ID_ImpoImpuTxt
  loc_BE27F2: FStAdFunc var_88
  loc_BE27F5: FLdPr var_88
  loc_BE27F8:  = Me.Enabled
  loc_BE27FD: FLdI2 var_8A
  loc_BE2800: FFree1Ad var_88
  loc_BE2803: BranchF loc_BE281D
  loc_BE2806: LitStr "0"
  loc_BE2809: FLdPr Me
  loc_BE280C: VCallAd Control_ID_ImpoImpuTxt
  loc_BE280F: FStAdFunc var_88
  loc_BE2812: FLdPr var_88
  loc_BE2815: Me.Text = from_stack_1
  loc_BE281A: FFree1Ad var_88
  loc_BE281D: Branch loc_BE3CE3
  loc_BE2820: ILdRf var_98
  loc_BE2823: LitI4 &H13
  loc_BE2828: EqI4
  loc_BE2829: BranchF loc_BE294E
  loc_BE282C: LitI4 0
  loc_BE2831: LitI4 5
  loc_BE2836: FLdRfVar var_9C
  loc_BE2839: Redim
  loc_BE2843: FLdPr Me
  loc_BE2846: VCallAd Control_ID_cboSeleccion
  loc_BE2849: CVarAd
  loc_BE284D: ParmAry1St
  loc_BE2853: FLdPr Me
  loc_BE2856: VCallAd Control_ID_FechImpuMsk
  loc_BE2859: CVarAd
  loc_BE285D: ParmAry1St
  loc_BE2863: FLdPr Me
  loc_BE2866: VCallAd Control_ID_CantImpuTxt
  loc_BE2869: CVarAd
  loc_BE286D: ParmAry1St
  loc_BE2873: FLdPr Me
  loc_BE2876: VCallAd Control_ID_ImunImpuTxt
  loc_BE2879: CVarAd
  loc_BE287D: ParmAry1St
  loc_BE2883: FLdPr Me
  loc_BE2886: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2889: CVarAd
  loc_BE288D: ParmAry1St
  loc_BE2893: FLdPr Me
  loc_BE2896: VCallAd Control_ID_DetaImpuTxt
  loc_BE2899: CVarAd
  loc_BE289D: ParmAry1St
  loc_BE28A3: FLdRfVar var_9C
  loc_BE28A6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE28AB: FLdRfVar var_9C
  loc_BE28AE: Erase
  loc_BE28AF: FLdRfVar var_8A
  loc_BE28B2: FLdPr Me
  loc_BE28B5: VCallAd Control_ID_CantImpuTxt
  loc_BE28B8: FStAdFunc var_88
  loc_BE28BB: FLdPr var_88
  loc_BE28BE:  = Me.Enabled
  loc_BE28C3: FLdI2 var_8A
  loc_BE28C6: FFree1Ad var_88
  loc_BE28C9: BranchF loc_BE28E3
  loc_BE28CC: LitStr "1"
  loc_BE28CF: FLdPr Me
  loc_BE28D2: VCallAd Control_ID_CantImpuTxt
  loc_BE28D5: FStAdFunc var_88
  loc_BE28D8: FLdPr var_88
  loc_BE28DB: Me.Text = from_stack_1
  loc_BE28E0: FFree1Ad var_88
  loc_BE28E3: FLdRfVar var_8A
  loc_BE28E6: FLdPr Me
  loc_BE28E9: VCallAd Control_ID_ImunImpuTxt
  loc_BE28EC: FStAdFunc var_88
  loc_BE28EF: FLdPr var_88
  loc_BE28F2:  = Me.Enabled
  loc_BE28F7: FLdI2 var_8A
  loc_BE28FA: FFree1Ad var_88
  loc_BE28FD: BranchF loc_BE2917
  loc_BE2900: LitStr "0"
  loc_BE2903: FLdPr Me
  loc_BE2906: VCallAd Control_ID_ImunImpuTxt
  loc_BE2909: FStAdFunc var_88
  loc_BE290C: FLdPr var_88
  loc_BE290F: Me.Text = from_stack_1
  loc_BE2914: FFree1Ad var_88
  loc_BE2917: FLdRfVar var_8A
  loc_BE291A: FLdPr Me
  loc_BE291D: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2920: FStAdFunc var_88
  loc_BE2923: FLdPr var_88
  loc_BE2926:  = Me.Enabled
  loc_BE292B: FLdI2 var_8A
  loc_BE292E: FFree1Ad var_88
  loc_BE2931: BranchF loc_BE294B
  loc_BE2934: LitStr "0"
  loc_BE2937: FLdPr Me
  loc_BE293A: VCallAd Control_ID_ImpoImpuTxt
  loc_BE293D: FStAdFunc var_88
  loc_BE2940: FLdPr var_88
  loc_BE2943: Me.Text = from_stack_1
  loc_BE2948: FFree1Ad var_88
  loc_BE294B: Branch loc_BE3CE3
  loc_BE294E: ILdRf var_98
  loc_BE2951: LitI4 3
  loc_BE2956: EqI4
  loc_BE2957: BranchF loc_BE2CA2
  loc_BE295A: LitI4 0
  loc_BE295F: LitI4 &H15
  loc_BE2964: FLdRfVar var_9C
  loc_BE2967: Redim
  loc_BE2971: FLdPr Me
  loc_BE2974: VCallAd Control_ID_cboSeleccion
  loc_BE2977: CVarAd
  loc_BE297B: ParmAry1St
  loc_BE2981: FLdPr Me
  loc_BE2984: VCallAd Control_ID_ExorImpuMsk
  loc_BE2987: CVarAd
  loc_BE298B: ParmAry1St
  loc_BE2991: FLdPr Me
  loc_BE2994: VCallAd Control_ID_CodiInsuMsk
  loc_BE2997: CVarAd
  loc_BE299B: ParmAry1St
  loc_BE29A1: FLdPr Me
  loc_BE29A4: VCallAd Control_ID_CodiPartMsk
  loc_BE29A7: CVarAd
  loc_BE29AB: ParmAry1St
  loc_BE29B1: FLdPr Me
  loc_BE29B4: VCallAd Control_ID_CodiOrgaMsk
  loc_BE29B7: CVarAd
  loc_BE29BB: ParmAry1St
  loc_BE29C1: FLdPr Me
  loc_BE29C4: VCallAd Control_ID_CodiUngaTxt
  loc_BE29C7: CVarAd
  loc_BE29CB: ParmAry1St
  loc_BE29D1: FLdPr Me
  loc_BE29D4: VCallAd Control_ID_CodiFifuMsk
  loc_BE29D7: CVarAd
  loc_BE29DB: ParmAry1St
  loc_BE29E1: FLdPr Me
  loc_BE29E4: VCallAd Control_ID_FechImpuMsk
  loc_BE29E7: CVarAd
  loc_BE29EB: ParmAry1St
  loc_BE29F1: FLdPr Me
  loc_BE29F4: VCallAd Control_ID_CantImpuTxt
  loc_BE29F7: CVarAd
  loc_BE29FB: ParmAry1St
  loc_BE2A01: FLdPr Me
  loc_BE2A04: VCallAd Control_ID_ImunImpuTxt
  loc_BE2A07: CVarAd
  loc_BE2A0B: ParmAry1St
  loc_BE2A11: FLdPr Me
  loc_BE2A14: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2A17: CVarAd
  loc_BE2A1B: ParmAry1St
  loc_BE2A21: FLdPr Me
  loc_BE2A24: VCallAd Control_ID_DetaImpuTxt
  loc_BE2A27: CVarAd
  loc_BE2A2B: ParmAry1St
  loc_BE2A31: FLdPr Me
  loc_BE2A34: VCallAd Control_ID_CucuPersTxt
  loc_BE2A37: CVarAd
  loc_BE2A3B: ParmAry1St
  loc_BE2A41: FLdPr Me
  loc_BE2A44: VCallAd Control_ID_ExpeImpuTxt
  loc_BE2A47: CVarAd
  loc_BE2A4B: ParmAry1St
  loc_BE2A51: FLdPr Me
  loc_BE2A54: VCallAd Control_ID_TifaDeveCbo
  loc_BE2A57: CVarAd
  loc_BE2A5B: ParmAry1St
  loc_BE2A61: FLdPr Me
  loc_BE2A64: VCallAd Control_ID_SufaDeveTxt
  loc_BE2A67: CVarAd
  loc_BE2A6B: ParmAry1St
  loc_BE2A71: FLdPr Me
  loc_BE2A74: VCallAd Control_ID_NufaDeveTxt
  loc_BE2A77: CVarAd
  loc_BE2A7B: ParmAry1St
  loc_BE2A81: FLdPr Me
  loc_BE2A84: VCallAd Control_ID_FefaDeveMsk
  loc_BE2A87: CVarAd
  loc_BE2A8B: ParmAry1St
  loc_BE2A91: FLdPr Me
  loc_BE2A94: VCallAd Control_ID_FechDeveMsk
  loc_BE2A97: CVarAd
  loc_BE2A9B: ParmAry1St
  loc_BE2AA1: FLdPr Me
  loc_BE2AA4: VCallAd Control_ID_chkRepetirProveedor
  loc_BE2AA7: CVarAd
  loc_BE2AAB: ParmAry1St
  loc_BE2AB1: FLdPr Me
  loc_BE2AB4: VCallAd Control_ID_chkRepetirFactura
  loc_BE2AB7: CVarAd
  loc_BE2ABB: ParmAry1St
  loc_BE2AC1: FLdPr Me
  loc_BE2AC4: VCallAd Control_ID_chkRepetirExpePago
  loc_BE2AC7: CVarAd
  loc_BE2ACB: ParmAry1St
  loc_BE2AD1: FLdRfVar var_9C
  loc_BE2AD4: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE2AD9: FLdRfVar var_9C
  loc_BE2ADC: Erase
  loc_BE2ADD: FLdRfVar var_8A
  loc_BE2AE0: FLdPr Me
  loc_BE2AE3: VCallAd Control_ID_chkRepetirProveedor
  loc_BE2AE6: FStAdFunc var_88
  loc_BE2AE9: FLdPr var_88
  loc_BE2AEC:  = Me.Value
  loc_BE2AF1: FLdI2 var_8A
  loc_BE2AF4: CI4UI1
  loc_BE2AF5: LitI4 1
  loc_BE2AFA: EqI4
  loc_BE2AFB: FFree1Ad var_88
  loc_BE2AFE: BranchF loc_BE2B41
  loc_BE2B01: LitI4 1
  loc_BE2B06: FLdPr Me
  loc_BE2B09: MemLdRfVar from_stack_1.global_80
  loc_BE2B0C: Ary1LdI4
  loc_BE2B0D: FLdPr Me
  loc_BE2B10: VCallAd Control_ID_CucuPersTxt
  loc_BE2B13: FStAdFunc var_88
  loc_BE2B16: FLdPr var_88
  loc_BE2B19: Me.Text = from_stack_1
  loc_BE2B1E: FFree1Ad var_88
  loc_BE2B21: LitI4 2
  loc_BE2B26: FLdPr Me
  loc_BE2B29: MemLdRfVar from_stack_1.global_80
  loc_BE2B2C: Ary1LdI4
  loc_BE2B2D: FLdPr Me
  loc_BE2B30: VCallAd Control_ID_DetaProvLbl
  loc_BE2B33: FStAdFunc var_88
  loc_BE2B36: FLdPr var_88
  loc_BE2B39: Me.Caption = from_stack_1
  loc_BE2B3E: FFree1Ad var_88
  loc_BE2B41: FLdRfVar var_8A
  loc_BE2B44: FLdPr Me
  loc_BE2B47: VCallAd Control_ID_chkRepetirFactura
  loc_BE2B4A: FStAdFunc var_88
  loc_BE2B4D: FLdPr var_88
  loc_BE2B50:  = Me.Value
  loc_BE2B55: FLdI2 var_8A
  loc_BE2B58: CI4UI1
  loc_BE2B59: LitI4 1
  loc_BE2B5E: EqI4
  loc_BE2B5F: FFree1Ad var_88
  loc_BE2B62: BranchF loc_BE2BC5
  loc_BE2B65: LitI4 1
  loc_BE2B6A: FLdPr Me
  loc_BE2B6D: MemLdRfVar from_stack_1.global_108
  loc_BE2B70: Ary1LdI4
  loc_BE2B71: FLdPr Me
  loc_BE2B74: VCallAd Control_ID_TifaDeveCbo
  loc_BE2B77: FStAdFunc var_88
  loc_BE2B7A: FLdPr var_88
  loc_BE2B7D: Me.Text = from_stack_1
  loc_BE2B82: FFree1Ad var_88
  loc_BE2B85: LitI4 2
  loc_BE2B8A: FLdPr Me
  loc_BE2B8D: MemLdRfVar from_stack_1.global_108
  loc_BE2B90: Ary1LdI4
  loc_BE2B91: FLdPr Me
  loc_BE2B94: VCallAd Control_ID_SufaDeveTxt
  loc_BE2B97: FStAdFunc var_88
  loc_BE2B9A: FLdPr var_88
  loc_BE2B9D: Me.Text = from_stack_1
  loc_BE2BA2: FFree1Ad var_88
  loc_BE2BA5: LitI4 3
  loc_BE2BAA: FLdPr Me
  loc_BE2BAD: MemLdRfVar from_stack_1.global_108
  loc_BE2BB0: Ary1LdI4
  loc_BE2BB1: FLdPr Me
  loc_BE2BB4: VCallAd Control_ID_NufaDeveTxt
  loc_BE2BB7: FStAdFunc var_88
  loc_BE2BBA: FLdPr var_88
  loc_BE2BBD: Me.Text = from_stack_1
  loc_BE2BC2: FFree1Ad var_88
  loc_BE2BC5: FLdRfVar var_8A
  loc_BE2BC8: FLdPr Me
  loc_BE2BCB: VCallAd Control_ID_chkRepetirExpePago
  loc_BE2BCE: FStAdFunc var_88
  loc_BE2BD1: FLdPr var_88
  loc_BE2BD4:  = Me.Value
  loc_BE2BD9: FLdI2 var_8A
  loc_BE2BDC: CI4UI1
  loc_BE2BDD: LitI4 1
  loc_BE2BE2: EqI4
  loc_BE2BE3: FFree1Ad var_88
  loc_BE2BE6: BranchF loc_BE2C03
  loc_BE2BE9: FLdPr Me
  loc_BE2BEC: MemLdStr global_132
  loc_BE2BEF: FLdPr Me
  loc_BE2BF2: VCallAd Control_ID_ExpeImpuTxt
  loc_BE2BF5: FStAdFunc var_88
  loc_BE2BF8: FLdPr var_88
  loc_BE2BFB: Me.Text = from_stack_1
  loc_BE2C00: FFree1Ad var_88
  loc_BE2C03: FLdRfVar var_8A
  loc_BE2C06: FLdPr Me
  loc_BE2C09: VCallAd Control_ID_CantImpuTxt
  loc_BE2C0C: FStAdFunc var_88
  loc_BE2C0F: FLdPr var_88
  loc_BE2C12:  = Me.Enabled
  loc_BE2C17: FLdI2 var_8A
  loc_BE2C1A: FFree1Ad var_88
  loc_BE2C1D: BranchF loc_BE2C37
  loc_BE2C20: LitStr "1"
  loc_BE2C23: FLdPr Me
  loc_BE2C26: VCallAd Control_ID_CantImpuTxt
  loc_BE2C29: FStAdFunc var_88
  loc_BE2C2C: FLdPr var_88
  loc_BE2C2F: Me.Text = from_stack_1
  loc_BE2C34: FFree1Ad var_88
  loc_BE2C37: FLdRfVar var_8A
  loc_BE2C3A: FLdPr Me
  loc_BE2C3D: VCallAd Control_ID_ImunImpuTxt
  loc_BE2C40: FStAdFunc var_88
  loc_BE2C43: FLdPr var_88
  loc_BE2C46:  = Me.Enabled
  loc_BE2C4B: FLdI2 var_8A
  loc_BE2C4E: FFree1Ad var_88
  loc_BE2C51: BranchF loc_BE2C6B
  loc_BE2C54: LitStr "0"
  loc_BE2C57: FLdPr Me
  loc_BE2C5A: VCallAd Control_ID_ImunImpuTxt
  loc_BE2C5D: FStAdFunc var_88
  loc_BE2C60: FLdPr var_88
  loc_BE2C63: Me.Text = from_stack_1
  loc_BE2C68: FFree1Ad var_88
  loc_BE2C6B: FLdRfVar var_8A
  loc_BE2C6E: FLdPr Me
  loc_BE2C71: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2C74: FStAdFunc var_88
  loc_BE2C77: FLdPr var_88
  loc_BE2C7A:  = Me.Enabled
  loc_BE2C7F: FLdI2 var_8A
  loc_BE2C82: FFree1Ad var_88
  loc_BE2C85: BranchF loc_BE2C9F
  loc_BE2C88: LitStr "0"
  loc_BE2C8B: FLdPr Me
  loc_BE2C8E: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2C91: FStAdFunc var_88
  loc_BE2C94: FLdPr var_88
  loc_BE2C97: Me.Text = from_stack_1
  loc_BE2C9C: FFree1Ad var_88
  loc_BE2C9F: Branch loc_BE3CE3
  loc_BE2CA2: ILdRf var_98
  loc_BE2CA5: LitI4 4
  loc_BE2CAA: EqI4
  loc_BE2CAB: BranchF loc_BE2DD0
  loc_BE2CAE: LitI4 0
  loc_BE2CB3: LitI4 5
  loc_BE2CB8: FLdRfVar var_9C
  loc_BE2CBB: Redim
  loc_BE2CC5: FLdPr Me
  loc_BE2CC8: VCallAd Control_ID_cboSeleccion
  loc_BE2CCB: CVarAd
  loc_BE2CCF: ParmAry1St
  loc_BE2CD5: FLdPr Me
  loc_BE2CD8: VCallAd Control_ID_FechImpuMsk
  loc_BE2CDB: CVarAd
  loc_BE2CDF: ParmAry1St
  loc_BE2CE5: FLdPr Me
  loc_BE2CE8: VCallAd Control_ID_CantImpuTxt
  loc_BE2CEB: CVarAd
  loc_BE2CEF: ParmAry1St
  loc_BE2CF5: FLdPr Me
  loc_BE2CF8: VCallAd Control_ID_ImunImpuTxt
  loc_BE2CFB: CVarAd
  loc_BE2CFF: ParmAry1St
  loc_BE2D05: FLdPr Me
  loc_BE2D08: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2D0B: CVarAd
  loc_BE2D0F: ParmAry1St
  loc_BE2D15: FLdPr Me
  loc_BE2D18: VCallAd Control_ID_DetaImpuTxt
  loc_BE2D1B: CVarAd
  loc_BE2D1F: ParmAry1St
  loc_BE2D25: FLdRfVar var_9C
  loc_BE2D28: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE2D2D: FLdRfVar var_9C
  loc_BE2D30: Erase
  loc_BE2D31: FLdRfVar var_8A
  loc_BE2D34: FLdPr Me
  loc_BE2D37: VCallAd Control_ID_CantImpuTxt
  loc_BE2D3A: FStAdFunc var_88
  loc_BE2D3D: FLdPr var_88
  loc_BE2D40:  = Me.Enabled
  loc_BE2D45: FLdI2 var_8A
  loc_BE2D48: FFree1Ad var_88
  loc_BE2D4B: BranchF loc_BE2D65
  loc_BE2D4E: LitStr "1"
  loc_BE2D51: FLdPr Me
  loc_BE2D54: VCallAd Control_ID_CantImpuTxt
  loc_BE2D57: FStAdFunc var_88
  loc_BE2D5A: FLdPr var_88
  loc_BE2D5D: Me.Text = from_stack_1
  loc_BE2D62: FFree1Ad var_88
  loc_BE2D65: FLdRfVar var_8A
  loc_BE2D68: FLdPr Me
  loc_BE2D6B: VCallAd Control_ID_ImunImpuTxt
  loc_BE2D6E: FStAdFunc var_88
  loc_BE2D71: FLdPr var_88
  loc_BE2D74:  = Me.Enabled
  loc_BE2D79: FLdI2 var_8A
  loc_BE2D7C: FFree1Ad var_88
  loc_BE2D7F: BranchF loc_BE2D99
  loc_BE2D82: LitStr "0"
  loc_BE2D85: FLdPr Me
  loc_BE2D88: VCallAd Control_ID_ImunImpuTxt
  loc_BE2D8B: FStAdFunc var_88
  loc_BE2D8E: FLdPr var_88
  loc_BE2D91: Me.Text = from_stack_1
  loc_BE2D96: FFree1Ad var_88
  loc_BE2D99: FLdRfVar var_8A
  loc_BE2D9C: FLdPr Me
  loc_BE2D9F: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2DA2: FStAdFunc var_88
  loc_BE2DA5: FLdPr var_88
  loc_BE2DA8:  = Me.Enabled
  loc_BE2DAD: FLdI2 var_8A
  loc_BE2DB0: FFree1Ad var_88
  loc_BE2DB3: BranchF loc_BE2DCD
  loc_BE2DB6: LitStr "0"
  loc_BE2DB9: FLdPr Me
  loc_BE2DBC: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2DBF: FStAdFunc var_88
  loc_BE2DC2: FLdPr var_88
  loc_BE2DC5: Me.Text = from_stack_1
  loc_BE2DCA: FFree1Ad var_88
  loc_BE2DCD: Branch loc_BE3CE3
  loc_BE2DD0: ILdRf var_98
  loc_BE2DD3: LitI4 5
  loc_BE2DD8: EqI4
  loc_BE2DD9: BranchF loc_BE2EE6
  loc_BE2DDC: LitI4 0
  loc_BE2DE1: LitI4 7
  loc_BE2DE6: FLdRfVar var_9C
  loc_BE2DE9: Redim
  loc_BE2DF3: FLdPr Me
  loc_BE2DF6: VCallAd Control_ID_cboSeleccion
  loc_BE2DF9: CVarAd
  loc_BE2DFD: ParmAry1St
  loc_BE2E03: FLdPr Me
  loc_BE2E06: VCallAd Control_ID_FechImpuMsk
  loc_BE2E09: CVarAd
  loc_BE2E0D: ParmAry1St
  loc_BE2E13: FLdPr Me
  loc_BE2E16: VCallAd Control_ID_CantImpuTxt
  loc_BE2E19: CVarAd
  loc_BE2E1D: ParmAry1St
  loc_BE2E23: FLdPr Me
  loc_BE2E26: VCallAd Control_ID_ImunImpuTxt
  loc_BE2E29: CVarAd
  loc_BE2E2D: ParmAry1St
  loc_BE2E33: FLdPr Me
  loc_BE2E36: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2E39: CVarAd
  loc_BE2E3D: ParmAry1St
  loc_BE2E43: FLdPr Me
  loc_BE2E46: VCallAd Control_ID_DetaImpuTxt
  loc_BE2E49: CVarAd
  loc_BE2E4D: ParmAry1St
  loc_BE2E53: FLdPr Me
  loc_BE2E56: VCallAd Control_ID_CucuPersTxt
  loc_BE2E59: CVarAd
  loc_BE2E5D: ParmAry1St
  loc_BE2E63: FLdPr Me
  loc_BE2E66: VCallAd Control_ID_chkRepetirProveedor
  loc_BE2E69: CVarAd
  loc_BE2E6D: ParmAry1St
  loc_BE2E73: FLdRfVar var_9C
  loc_BE2E76: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE2E7B: FLdRfVar var_9C
  loc_BE2E7E: Erase
  loc_BE2E7F: FLdRfVar var_8A
  loc_BE2E82: FLdPr Me
  loc_BE2E85: VCallAd Control_ID_chkRepetirProveedor
  loc_BE2E88: FStAdFunc var_88
  loc_BE2E8B: FLdPr var_88
  loc_BE2E8E:  = Me.Value
  loc_BE2E93: FLdI2 var_8A
  loc_BE2E96: CI4UI1
  loc_BE2E97: LitI4 1
  loc_BE2E9C: EqI4
  loc_BE2E9D: FFree1Ad var_88
  loc_BE2EA0: BranchF loc_BE2EE3
  loc_BE2EA3: LitI4 1
  loc_BE2EA8: FLdPr Me
  loc_BE2EAB: MemLdRfVar from_stack_1.global_80
  loc_BE2EAE: Ary1LdI4
  loc_BE2EAF: FLdPr Me
  loc_BE2EB2: VCallAd Control_ID_CucuPersTxt
  loc_BE2EB5: FStAdFunc var_88
  loc_BE2EB8: FLdPr var_88
  loc_BE2EBB: Me.Text = from_stack_1
  loc_BE2EC0: FFree1Ad var_88
  loc_BE2EC3: LitI4 2
  loc_BE2EC8: FLdPr Me
  loc_BE2ECB: MemLdRfVar from_stack_1.global_80
  loc_BE2ECE: Ary1LdI4
  loc_BE2ECF: FLdPr Me
  loc_BE2ED2: VCallAd Control_ID_DetaProvLbl
  loc_BE2ED5: FStAdFunc var_88
  loc_BE2ED8: FLdPr var_88
  loc_BE2EDB: Me.Caption = from_stack_1
  loc_BE2EE0: FFree1Ad var_88
  loc_BE2EE3: Branch loc_BE3CE3
  loc_BE2EE6: ILdRf var_98
  loc_BE2EE9: LitI4 6
  loc_BE2EEE: EqI4
  loc_BE2EEF: BranchF loc_BE314E
  loc_BE2EF2: LitI4 0
  loc_BE2EF7: LitI4 &H10
  loc_BE2EFC: FLdRfVar var_9C
  loc_BE2EFF: Redim
  loc_BE2F09: FLdPr Me
  loc_BE2F0C: VCallAd Control_ID_cboSeleccion
  loc_BE2F0F: CVarAd
  loc_BE2F13: ParmAry1St
  loc_BE2F19: FLdPr Me
  loc_BE2F1C: VCallAd Control_ID_ExpeImpuTxt
  loc_BE2F1F: CVarAd
  loc_BE2F23: ParmAry1St
  loc_BE2F29: FLdPr Me
  loc_BE2F2C: VCallAd Control_ID_FechImpuMsk
  loc_BE2F2F: CVarAd
  loc_BE2F33: ParmAry1St
  loc_BE2F39: FLdPr Me
  loc_BE2F3C: VCallAd Control_ID_CantImpuTxt
  loc_BE2F3F: CVarAd
  loc_BE2F43: ParmAry1St
  loc_BE2F49: FLdPr Me
  loc_BE2F4C: VCallAd Control_ID_ImunImpuTxt
  loc_BE2F4F: CVarAd
  loc_BE2F53: ParmAry1St
  loc_BE2F59: FLdPr Me
  loc_BE2F5C: VCallAd Control_ID_ImpoImpuTxt
  loc_BE2F5F: CVarAd
  loc_BE2F63: ParmAry1St
  loc_BE2F69: FLdPr Me
  loc_BE2F6C: VCallAd Control_ID_DetaImpuTxt
  loc_BE2F6F: CVarAd
  loc_BE2F73: ParmAry1St
  loc_BE2F79: FLdPr Me
  loc_BE2F7C: VCallAd Control_ID_CucuPersTxt
  loc_BE2F7F: CVarAd
  loc_BE2F83: ParmAry1St
  loc_BE2F89: FLdPr Me
  loc_BE2F8C: VCallAd Control_ID_ExpeImpuTxt
  loc_BE2F8F: CVarAd
  loc_BE2F93: ParmAry1St
  loc_BE2F99: FLdPr Me
  loc_BE2F9C: VCallAd Control_ID_TifaDeveCbo
  loc_BE2F9F: CVarAd
  loc_BE2FA3: ParmAry1St
  loc_BE2FA9: FLdPr Me
  loc_BE2FAC: VCallAd Control_ID_SufaDeveTxt
  loc_BE2FAF: CVarAd
  loc_BE2FB3: ParmAry1St
  loc_BE2FB9: FLdPr Me
  loc_BE2FBC: VCallAd Control_ID_NufaDeveTxt
  loc_BE2FBF: CVarAd
  loc_BE2FC3: ParmAry1St
  loc_BE2FC9: FLdPr Me
  loc_BE2FCC: VCallAd Control_ID_FefaDeveMsk
  loc_BE2FCF: CVarAd
  loc_BE2FD3: ParmAry1St
  loc_BE2FD9: FLdPr Me
  loc_BE2FDC: VCallAd Control_ID_FechDeveMsk
  loc_BE2FDF: CVarAd
  loc_BE2FE3: ParmAry1St
  loc_BE2FE9: FLdPr Me
  loc_BE2FEC: VCallAd Control_ID_chkRepetirProveedor
  loc_BE2FEF: CVarAd
  loc_BE2FF3: ParmAry1St
  loc_BE2FF9: FLdPr Me
  loc_BE2FFC: VCallAd Control_ID_chkRepetirFactura
  loc_BE2FFF: CVarAd
  loc_BE3003: ParmAry1St
  loc_BE3009: FLdPr Me
  loc_BE300C: VCallAd Control_ID_chkRepetirExpePago
  loc_BE300F: CVarAd
  loc_BE3013: ParmAry1St
  loc_BE3019: FLdRfVar var_9C
  loc_BE301C: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3021: FLdRfVar var_9C
  loc_BE3024: Erase
  loc_BE3025: FLdRfVar var_8A
  loc_BE3028: FLdPr Me
  loc_BE302B: VCallAd Control_ID_chkRepetirProveedor
  loc_BE302E: FStAdFunc var_88
  loc_BE3031: FLdPr var_88
  loc_BE3034:  = Me.Value
  loc_BE3039: FLdI2 var_8A
  loc_BE303C: CI4UI1
  loc_BE303D: LitI4 1
  loc_BE3042: EqI4
  loc_BE3043: FFree1Ad var_88
  loc_BE3046: BranchF loc_BE3089
  loc_BE3049: LitI4 1
  loc_BE304E: FLdPr Me
  loc_BE3051: MemLdRfVar from_stack_1.global_80
  loc_BE3054: Ary1LdI4
  loc_BE3055: FLdPr Me
  loc_BE3058: VCallAd Control_ID_CucuPersTxt
  loc_BE305B: FStAdFunc var_88
  loc_BE305E: FLdPr var_88
  loc_BE3061: Me.Text = from_stack_1
  loc_BE3066: FFree1Ad var_88
  loc_BE3069: LitI4 2
  loc_BE306E: FLdPr Me
  loc_BE3071: MemLdRfVar from_stack_1.global_80
  loc_BE3074: Ary1LdI4
  loc_BE3075: FLdPr Me
  loc_BE3078: VCallAd Control_ID_DetaProvLbl
  loc_BE307B: FStAdFunc var_88
  loc_BE307E: FLdPr var_88
  loc_BE3081: Me.Caption = from_stack_1
  loc_BE3086: FFree1Ad var_88
  loc_BE3089: FLdRfVar var_8A
  loc_BE308C: FLdPr Me
  loc_BE308F: VCallAd Control_ID_chkRepetirFactura
  loc_BE3092: FStAdFunc var_88
  loc_BE3095: FLdPr var_88
  loc_BE3098:  = Me.Value
  loc_BE309D: FLdI2 var_8A
  loc_BE30A0: CI4UI1
  loc_BE30A1: LitI4 1
  loc_BE30A6: EqI4
  loc_BE30A7: FFree1Ad var_88
  loc_BE30AA: BranchF loc_BE310D
  loc_BE30AD: LitI4 1
  loc_BE30B2: FLdPr Me
  loc_BE30B5: MemLdRfVar from_stack_1.global_108
  loc_BE30B8: Ary1LdI4
  loc_BE30B9: FLdPr Me
  loc_BE30BC: VCallAd Control_ID_TifaDeveCbo
  loc_BE30BF: FStAdFunc var_88
  loc_BE30C2: FLdPr var_88
  loc_BE30C5: Me.Text = from_stack_1
  loc_BE30CA: FFree1Ad var_88
  loc_BE30CD: LitI4 2
  loc_BE30D2: FLdPr Me
  loc_BE30D5: MemLdRfVar from_stack_1.global_108
  loc_BE30D8: Ary1LdI4
  loc_BE30D9: FLdPr Me
  loc_BE30DC: VCallAd Control_ID_SufaDeveTxt
  loc_BE30DF: FStAdFunc var_88
  loc_BE30E2: FLdPr var_88
  loc_BE30E5: Me.Text = from_stack_1
  loc_BE30EA: FFree1Ad var_88
  loc_BE30ED: LitI4 3
  loc_BE30F2: FLdPr Me
  loc_BE30F5: MemLdRfVar from_stack_1.global_108
  loc_BE30F8: Ary1LdI4
  loc_BE30F9: FLdPr Me
  loc_BE30FC: VCallAd Control_ID_NufaDeveTxt
  loc_BE30FF: FStAdFunc var_88
  loc_BE3102: FLdPr var_88
  loc_BE3105: Me.Text = from_stack_1
  loc_BE310A: FFree1Ad var_88
  loc_BE310D: FLdRfVar var_8A
  loc_BE3110: FLdPr Me
  loc_BE3113: VCallAd Control_ID_chkRepetirExpePago
  loc_BE3116: FStAdFunc var_88
  loc_BE3119: FLdPr var_88
  loc_BE311C:  = Me.Value
  loc_BE3121: FLdI2 var_8A
  loc_BE3124: CI4UI1
  loc_BE3125: LitI4 1
  loc_BE312A: EqI4
  loc_BE312B: FFree1Ad var_88
  loc_BE312E: BranchF loc_BE314B
  loc_BE3131: FLdPr Me
  loc_BE3134: MemLdStr global_132
  loc_BE3137: FLdPr Me
  loc_BE313A: VCallAd Control_ID_ExpeImpuTxt
  loc_BE313D: FStAdFunc var_88
  loc_BE3140: FLdPr var_88
  loc_BE3143: Me.Text = from_stack_1
  loc_BE3148: FFree1Ad var_88
  loc_BE314B: Branch loc_BE3CE3
  loc_BE314E: ILdRf var_98
  loc_BE3151: LitI4 7
  loc_BE3156: EqI4
  loc_BE3157: BranchF loc_BE3312
  loc_BE315A: LitI4 0
  loc_BE315F: LitI4 &HC
  loc_BE3164: FLdRfVar var_9C
  loc_BE3167: Redim
  loc_BE3171: FLdPr Me
  loc_BE3174: VCallAd Control_ID_cboSeleccion
  loc_BE3177: CVarAd
  loc_BE317B: ParmAry1St
  loc_BE3181: FLdPr Me
  loc_BE3184: VCallAd Control_ID_ExpeImpuTxt
  loc_BE3187: CVarAd
  loc_BE318B: ParmAry1St
  loc_BE3191: FLdPr Me
  loc_BE3194: VCallAd Control_ID_FechDeveMsk
  loc_BE3197: CVarAd
  loc_BE319B: ParmAry1St
  loc_BE31A1: FLdPr Me
  loc_BE31A4: VCallAd Control_ID_FefaDeveMsk
  loc_BE31A7: CVarAd
  loc_BE31AB: ParmAry1St
  loc_BE31B1: FLdPr Me
  loc_BE31B4: VCallAd Control_ID_CantImpuTxt
  loc_BE31B7: CVarAd
  loc_BE31BB: ParmAry1St
  loc_BE31C1: FLdPr Me
  loc_BE31C4: VCallAd Control_ID_ImunImpuTxt
  loc_BE31C7: CVarAd
  loc_BE31CB: ParmAry1St
  loc_BE31D1: FLdPr Me
  loc_BE31D4: VCallAd Control_ID_ImpoImpuTxt
  loc_BE31D7: CVarAd
  loc_BE31DB: ParmAry1St
  loc_BE31E1: FLdPr Me
  loc_BE31E4: VCallAd Control_ID_DetaImpuTxt
  loc_BE31E7: CVarAd
  loc_BE31EB: ParmAry1St
  loc_BE31F1: FLdPr Me
  loc_BE31F4: VCallAd Control_ID_TifaDeveCbo
  loc_BE31F7: CVarAd
  loc_BE31FB: ParmAry1St
  loc_BE3201: FLdPr Me
  loc_BE3204: VCallAd Control_ID_SufaDeveTxt
  loc_BE3207: CVarAd
  loc_BE320B: ParmAry1St
  loc_BE3211: FLdPr Me
  loc_BE3214: VCallAd Control_ID_NufaDeveTxt
  loc_BE3217: CVarAd
  loc_BE321B: ParmAry1St
  loc_BE3221: FLdPr Me
  loc_BE3224: VCallAd Control_ID_chkRepetirFactura
  loc_BE3227: CVarAd
  loc_BE322B: ParmAry1St
  loc_BE3231: FLdPr Me
  loc_BE3234: VCallAd Control_ID_chkRepetirExpePago
  loc_BE3237: CVarAd
  loc_BE323B: ParmAry1St
  loc_BE3241: FLdRfVar var_9C
  loc_BE3244: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3249: FLdRfVar var_9C
  loc_BE324C: Erase
  loc_BE324D: FLdRfVar var_8A
  loc_BE3250: FLdPr Me
  loc_BE3253: VCallAd Control_ID_chkRepetirFactura
  loc_BE3256: FStAdFunc var_88
  loc_BE3259: FLdPr var_88
  loc_BE325C:  = Me.Value
  loc_BE3261: FLdI2 var_8A
  loc_BE3264: CI4UI1
  loc_BE3265: LitI4 1
  loc_BE326A: EqI4
  loc_BE326B: FFree1Ad var_88
  loc_BE326E: BranchF loc_BE32D1
  loc_BE3271: LitI4 1
  loc_BE3276: FLdPr Me
  loc_BE3279: MemLdRfVar from_stack_1.global_108
  loc_BE327C: Ary1LdI4
  loc_BE327D: FLdPr Me
  loc_BE3280: VCallAd Control_ID_TifaDeveCbo
  loc_BE3283: FStAdFunc var_88
  loc_BE3286: FLdPr var_88
  loc_BE3289: Me.Text = from_stack_1
  loc_BE328E: FFree1Ad var_88
  loc_BE3291: LitI4 2
  loc_BE3296: FLdPr Me
  loc_BE3299: MemLdRfVar from_stack_1.global_108
  loc_BE329C: Ary1LdI4
  loc_BE329D: FLdPr Me
  loc_BE32A0: VCallAd Control_ID_SufaDeveTxt
  loc_BE32A3: FStAdFunc var_88
  loc_BE32A6: FLdPr var_88
  loc_BE32A9: Me.Text = from_stack_1
  loc_BE32AE: FFree1Ad var_88
  loc_BE32B1: LitI4 3
  loc_BE32B6: FLdPr Me
  loc_BE32B9: MemLdRfVar from_stack_1.global_108
  loc_BE32BC: Ary1LdI4
  loc_BE32BD: FLdPr Me
  loc_BE32C0: VCallAd Control_ID_NufaDeveTxt
  loc_BE32C3: FStAdFunc var_88
  loc_BE32C6: FLdPr var_88
  loc_BE32C9: Me.Text = from_stack_1
  loc_BE32CE: FFree1Ad var_88
  loc_BE32D1: FLdRfVar var_8A
  loc_BE32D4: FLdPr Me
  loc_BE32D7: VCallAd Control_ID_chkRepetirExpePago
  loc_BE32DA: FStAdFunc var_88
  loc_BE32DD: FLdPr var_88
  loc_BE32E0:  = Me.Value
  loc_BE32E5: FLdI2 var_8A
  loc_BE32E8: CI4UI1
  loc_BE32E9: LitI4 1
  loc_BE32EE: EqI4
  loc_BE32EF: FFree1Ad var_88
  loc_BE32F2: BranchF loc_BE330F
  loc_BE32F5: FLdPr Me
  loc_BE32F8: MemLdStr global_132
  loc_BE32FB: FLdPr Me
  loc_BE32FE: VCallAd Control_ID_ExpeImpuTxt
  loc_BE3301: FStAdFunc var_88
  loc_BE3304: FLdPr var_88
  loc_BE3307: Me.Text = from_stack_1
  loc_BE330C: FFree1Ad var_88
  loc_BE330F: Branch loc_BE3CE3
  loc_BE3312: ILdRf var_98
  loc_BE3315: LitI4 8
  loc_BE331A: EqI4
  loc_BE331B: BranchF loc_BE34DC
  loc_BE331E: LitI4 0
  loc_BE3323: LitI4 2
  loc_BE3328: FLdRfVar var_9C
  loc_BE332B: Redim
  loc_BE3335: FLdPr Me
  loc_BE3338: VCallAd Control_ID_cboSeleccion
  loc_BE333B: CVarAd
  loc_BE333F: ParmAry1St
  loc_BE3345: FLdPr Me
  loc_BE3348: VCallAd Control_ID_FechImpuMsk
  loc_BE334B: CVarAd
  loc_BE334F: ParmAry1St
  loc_BE3355: FLdPr Me
  loc_BE3358: VCallAd Control_ID_DetaImpuTxt
  loc_BE335B: CVarAd
  loc_BE335F: ParmAry1St
  loc_BE3365: FLdRfVar var_9C
  loc_BE3368: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE336D: FLdRfVar var_9C
  loc_BE3370: Erase
  loc_BE3371: FLdRfVar var_AC
  loc_BE3374: FLdRfVar var_210
  loc_BE3377: LitVarStr var_20C, "Cuenta"
  loc_BE337C: PopAdLdVar
  loc_BE337D: FLdRfVar var_90
  loc_BE3380: FLdRfVar var_88
  loc_BE3383: FLdPr Me
  loc_BE3386: MemLdRfVar from_stack_1.global_52
  loc_BE3389: NewIfNullPr clsimputacion
  loc_BE338C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BE3391: FLdPr var_88
  loc_BE3394:  = Me.Fields
  loc_BE3399: FLdPr var_90
  loc_BE339C: from_stack_2 = Me.Item(from_stack_1)
  loc_BE33A1: FLdPr var_210
  loc_BE33A4:  = Me.Value
  loc_BE33A9: FLdRfVar var_AC
  loc_BE33AC: FnCIntVar
  loc_BE33AE: LitI2_Byte 1
  loc_BE33B0: EqI2
  loc_BE33B1: FLdRfVar var_218
  loc_BE33B4: FLdPr Me
  loc_BE33B7: VCallAd Control_ID_CodiNopeLbl
  loc_BE33BA: FStAdFunc var_214
  loc_BE33BD: FLdPr var_214
  loc_BE33C0:  = Me.Caption
  loc_BE33C5: ILdRf var_218
  loc_BE33C8: LitStr "0"
  loc_BE33CB: EqStr
  loc_BE33CD: AndI4
  loc_BE33CE: FFree1Str var_218
  loc_BE33D1: FFreeAd var_88 = "": var_90 = "": var_210 = ""
  loc_BE33DC: FFree1Var var_AC = ""
  loc_BE33DF: BranchF loc_BE3468
  loc_BE33E2: LitI4 0
  loc_BE33E7: LitI4 5
  loc_BE33EC: FLdRfVar var_9C
  loc_BE33EF: Redim
  loc_BE33F9: FLdPr Me
  loc_BE33FC: VCallAd Control_ID_ExorImpuMsk
  loc_BE33FF: CVarAd
  loc_BE3403: ParmAry1St
  loc_BE3409: FLdPr Me
  loc_BE340C: VCallAd Control_ID_CodiUngaTxt
  loc_BE340F: CVarAd
  loc_BE3413: ParmAry1St
  loc_BE3419: FLdPr Me
  loc_BE341C: VCallAd Control_ID_CodiOrgaMsk
  loc_BE341F: CVarAd
  loc_BE3423: ParmAry1St
  loc_BE3429: FLdPr Me
  loc_BE342C: VCallAd Control_ID_CodiInsuMsk
  loc_BE342F: CVarAd
  loc_BE3433: ParmAry1St
  loc_BE3439: FLdPr Me
  loc_BE343C: VCallAd Control_ID_CodiPartMsk
  loc_BE343F: CVarAd
  loc_BE3443: ParmAry1St
  loc_BE3449: FLdPr Me
  loc_BE344C: VCallAd Control_ID_CodiFifuMsk
  loc_BE344F: CVarAd
  loc_BE3453: ParmAry1St
  loc_BE3459: FLdRfVar var_9C
  loc_BE345C: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3461: FLdRfVar var_9C
  loc_BE3464: Erase
  loc_BE3465: Branch loc_BE34D9
  loc_BE3468: FLdRfVar var_AC
  loc_BE346B: FLdRfVar var_210
  loc_BE346E: LitVarStr var_20C, "Cuenta"
  loc_BE3473: PopAdLdVar
  loc_BE3474: FLdRfVar var_90
  loc_BE3477: FLdRfVar var_88
  loc_BE347A: FLdPr Me
  loc_BE347D: MemLdRfVar from_stack_1.global_52
  loc_BE3480: NewIfNullPr clsimputacion
  loc_BE3483: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BE3488: FLdPr var_88
  loc_BE348B:  = Me.Fields
  loc_BE3490: FLdPr var_90
  loc_BE3493: from_stack_2 = Me.Item(from_stack_1)
  loc_BE3498: FLdPr var_210
  loc_BE349B:  = Me.Value
  loc_BE34A0: FLdRfVar var_AC
  loc_BE34A3: FnCIntVar
  loc_BE34A5: LitI2_Byte 1
  loc_BE34A7: EqI2
  loc_BE34A8: FLdRfVar var_218
  loc_BE34AB: FLdPr Me
  loc_BE34AE: VCallAd Control_ID_CodiNopeLbl
  loc_BE34B1: FStAdFunc var_214
  loc_BE34B4: FLdPr var_214
  loc_BE34B7:  = Me.Caption
  loc_BE34BC: ILdRf var_218
  loc_BE34BF: LitStr "0"
  loc_BE34C2: NeStr
  loc_BE34C4: AndI4
  loc_BE34C5: FFree1Str var_218
  loc_BE34C8: FFreeAd var_88 = "": var_90 = "": var_210 = ""
  loc_BE34D3: FFree1Var var_AC = ""
  loc_BE34D6: BranchF loc_BE34D9
  loc_BE34D9: Branch loc_BE3CE3
  loc_BE34DC: ILdRf var_98
  loc_BE34DF: LitI4 9
  loc_BE34E4: EqI4
  loc_BE34E5: BranchF loc_BE35C2
  loc_BE34E8: LitI4 0
  loc_BE34ED: LitI4 4
  loc_BE34F2: FLdRfVar var_9C
  loc_BE34F5: Redim
  loc_BE34FF: FLdPr Me
  loc_BE3502: VCallAd Control_ID_cboSeleccion
  loc_BE3505: CVarAd
  loc_BE3509: ParmAry1St
  loc_BE350F: FLdPr Me
  loc_BE3512: VCallAd Control_ID_FechImpuMsk
  loc_BE3515: CVarAd
  loc_BE3519: ParmAry1St
  loc_BE351F: FLdPr Me
  loc_BE3522: VCallAd Control_ID_DetaImpuTxt
  loc_BE3525: CVarAd
  loc_BE3529: ParmAry1St
  loc_BE352F: FLdPr Me
  loc_BE3532: VCallAd Control_ID_CucuPersTxt
  loc_BE3535: CVarAd
  loc_BE3539: ParmAry1St
  loc_BE353F: FLdPr Me
  loc_BE3542: VCallAd Control_ID_chkRepetirProveedor
  loc_BE3545: CVarAd
  loc_BE3549: ParmAry1St
  loc_BE354F: FLdRfVar var_9C
  loc_BE3552: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3557: FLdRfVar var_9C
  loc_BE355A: Erase
  loc_BE355B: FLdRfVar var_8A
  loc_BE355E: FLdPr Me
  loc_BE3561: VCallAd Control_ID_chkRepetirProveedor
  loc_BE3564: FStAdFunc var_88
  loc_BE3567: FLdPr var_88
  loc_BE356A:  = Me.Value
  loc_BE356F: FLdI2 var_8A
  loc_BE3572: CI4UI1
  loc_BE3573: LitI4 1
  loc_BE3578: EqI4
  loc_BE3579: FFree1Ad var_88
  loc_BE357C: BranchF loc_BE35BF
  loc_BE357F: LitI4 1
  loc_BE3584: FLdPr Me
  loc_BE3587: MemLdRfVar from_stack_1.global_80
  loc_BE358A: Ary1LdI4
  loc_BE358B: FLdPr Me
  loc_BE358E: VCallAd Control_ID_CucuPersTxt
  loc_BE3591: FStAdFunc var_88
  loc_BE3594: FLdPr var_88
  loc_BE3597: Me.Text = from_stack_1
  loc_BE359C: FFree1Ad var_88
  loc_BE359F: LitI4 2
  loc_BE35A4: FLdPr Me
  loc_BE35A7: MemLdRfVar from_stack_1.global_80
  loc_BE35AA: Ary1LdI4
  loc_BE35AB: FLdPr Me
  loc_BE35AE: VCallAd Control_ID_DetaProvLbl
  loc_BE35B1: FStAdFunc var_88
  loc_BE35B4: FLdPr var_88
  loc_BE35B7: Me.Caption = from_stack_1
  loc_BE35BC: FFree1Ad var_88
  loc_BE35BF: Branch loc_BE3CE3
  loc_BE35C2: ILdRf var_98
  loc_BE35C5: LitI4 &HA
  loc_BE35CA: EqI4
  loc_BE35CB: BranchF loc_BE37C4
  loc_BE35CE: LitI4 0
  loc_BE35D3: LitI4 9
  loc_BE35D8: FLdRfVar var_9C
  loc_BE35DB: Redim
  loc_BE35E5: FLdPr Me
  loc_BE35E8: VCallAd Control_ID_cboSeleccion
  loc_BE35EB: CVarAd
  loc_BE35EF: ParmAry1St
  loc_BE35F5: FLdPr Me
  loc_BE35F8: VCallAd Control_ID_ExpeImpuTxt
  loc_BE35FB: CVarAd
  loc_BE35FF: ParmAry1St
  loc_BE3605: FLdPr Me
  loc_BE3608: VCallAd Control_ID_FechDeveMsk
  loc_BE360B: CVarAd
  loc_BE360F: ParmAry1St
  loc_BE3615: FLdPr Me
  loc_BE3618: VCallAd Control_ID_FefaDeveMsk
  loc_BE361B: CVarAd
  loc_BE361F: ParmAry1St
  loc_BE3625: FLdPr Me
  loc_BE3628: VCallAd Control_ID_DetaImpuTxt
  loc_BE362B: CVarAd
  loc_BE362F: ParmAry1St
  loc_BE3635: FLdPr Me
  loc_BE3638: VCallAd Control_ID_TifaDeveCbo
  loc_BE363B: CVarAd
  loc_BE363F: ParmAry1St
  loc_BE3645: FLdPr Me
  loc_BE3648: VCallAd Control_ID_SufaDeveTxt
  loc_BE364B: CVarAd
  loc_BE364F: ParmAry1St
  loc_BE3655: FLdPr Me
  loc_BE3658: VCallAd Control_ID_NufaDeveTxt
  loc_BE365B: CVarAd
  loc_BE365F: ParmAry1St
  loc_BE3665: FLdPr Me
  loc_BE3668: VCallAd Control_ID_chkRepetirFactura
  loc_BE366B: CVarAd
  loc_BE366F: ParmAry1St
  loc_BE3675: FLdPr Me
  loc_BE3678: VCallAd Control_ID_chkRepetirExpePago
  loc_BE367B: CVarAd
  loc_BE367F: ParmAry1St
  loc_BE3685: FLdRfVar var_9C
  loc_BE3688: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE368D: FLdRfVar var_9C
  loc_BE3690: Erase
  loc_BE3691: FLdRfVar var_8A
  loc_BE3694: FLdPr Me
  loc_BE3697: VCallAd Control_ID_chkRepetirFactura
  loc_BE369A: FStAdFunc var_88
  loc_BE369D: FLdPr var_88
  loc_BE36A0:  = Me.Value
  loc_BE36A5: FLdI2 var_8A
  loc_BE36A8: CI4UI1
  loc_BE36A9: LitI4 1
  loc_BE36AE: EqI4
  loc_BE36AF: FFree1Ad var_88
  loc_BE36B2: BranchF loc_BE3715
  loc_BE36B5: LitI4 1
  loc_BE36BA: FLdPr Me
  loc_BE36BD: MemLdRfVar from_stack_1.global_108
  loc_BE36C0: Ary1LdI4
  loc_BE36C1: FLdPr Me
  loc_BE36C4: VCallAd Control_ID_TifaDeveCbo
  loc_BE36C7: FStAdFunc var_88
  loc_BE36CA: FLdPr var_88
  loc_BE36CD: Me.Text = from_stack_1
  loc_BE36D2: FFree1Ad var_88
  loc_BE36D5: LitI4 2
  loc_BE36DA: FLdPr Me
  loc_BE36DD: MemLdRfVar from_stack_1.global_108
  loc_BE36E0: Ary1LdI4
  loc_BE36E1: FLdPr Me
  loc_BE36E4: VCallAd Control_ID_SufaDeveTxt
  loc_BE36E7: FStAdFunc var_88
  loc_BE36EA: FLdPr var_88
  loc_BE36ED: Me.Text = from_stack_1
  loc_BE36F2: FFree1Ad var_88
  loc_BE36F5: LitI4 3
  loc_BE36FA: FLdPr Me
  loc_BE36FD: MemLdRfVar from_stack_1.global_108
  loc_BE3700: Ary1LdI4
  loc_BE3701: FLdPr Me
  loc_BE3704: VCallAd Control_ID_NufaDeveTxt
  loc_BE3707: FStAdFunc var_88
  loc_BE370A: FLdPr var_88
  loc_BE370D: Me.Text = from_stack_1
  loc_BE3712: FFree1Ad var_88
  loc_BE3715: FLdRfVar var_8A
  loc_BE3718: FLdPr Me
  loc_BE371B: VCallAd Control_ID_chkRepetirExpePago
  loc_BE371E: FStAdFunc var_88
  loc_BE3721: FLdPr var_88
  loc_BE3724:  = Me.Value
  loc_BE3729: FLdI2 var_8A
  loc_BE372C: CI4UI1
  loc_BE372D: LitI4 1
  loc_BE3732: EqI4
  loc_BE3733: FFree1Ad var_88
  loc_BE3736: BranchF loc_BE3753
  loc_BE3739: FLdPr Me
  loc_BE373C: MemLdStr global_132
  loc_BE373F: FLdPr Me
  loc_BE3742: VCallAd Control_ID_ExpeImpuTxt
  loc_BE3745: FStAdFunc var_88
  loc_BE3748: FLdPr var_88
  loc_BE374B: Me.Text = from_stack_1
  loc_BE3750: FFree1Ad var_88
  loc_BE3753: FLdPr Me
  loc_BE3756: VCallAd Control_ID_FechDeveMsk
  loc_BE3759: FStAdFunc var_88
  loc_BE375C: FLdPr var_88
  loc_BE375F: LateIdLdVar var_AC DispID_15 0
  loc_BE3766: CStrVarTmp
  loc_BE3767: CVarStr var_BC
  loc_BE376A: PopAdLdVar
  loc_BE376B: FLdPr Me
  loc_BE376E: VCallAd Control_ID_FechDeveMsk
  loc_BE3771: FStAdFunc var_90
  loc_BE3774: FLdPr var_90
  loc_BE3777: LateIdSt
  loc_BE377C: FFreeAd var_88 = ""
  loc_BE3783: FFreeVar var_AC = ""
  loc_BE378A: FLdPr Me
  loc_BE378D: VCallAd Control_ID_FefaDeveMsk
  loc_BE3790: FStAdFunc var_88
  loc_BE3793: FLdPr var_88
  loc_BE3796: LateIdLdVar var_AC DispID_15 0
  loc_BE379D: CStrVarTmp
  loc_BE379E: CVarStr var_BC
  loc_BE37A1: PopAdLdVar
  loc_BE37A2: FLdPr Me
  loc_BE37A5: VCallAd Control_ID_FefaDeveMsk
  loc_BE37A8: FStAdFunc var_90
  loc_BE37AB: FLdPr var_90
  loc_BE37AE: LateIdSt
  loc_BE37B3: FFreeAd var_88 = ""
  loc_BE37BA: FFreeVar var_AC = ""
  loc_BE37C1: Branch loc_BE3CE3
  loc_BE37C4: ILdRf var_98
  loc_BE37C7: LitI4 &H11
  loc_BE37CC: EqI4
  loc_BE37CD: BranchF loc_BE3856
  loc_BE37D0: LitI4 0
  loc_BE37D5: LitI4 5
  loc_BE37DA: FLdRfVar var_9C
  loc_BE37DD: Redim
  loc_BE37E7: FLdPr Me
  loc_BE37EA: VCallAd Control_ID_cboSeleccion
  loc_BE37ED: CVarAd
  loc_BE37F1: ParmAry1St
  loc_BE37F7: FLdPr Me
  loc_BE37FA: VCallAd Control_ID_FechImpuMsk
  loc_BE37FD: CVarAd
  loc_BE3801: ParmAry1St
  loc_BE3807: FLdPr Me
  loc_BE380A: VCallAd Control_ID_CantImpuTxt
  loc_BE380D: CVarAd
  loc_BE3811: ParmAry1St
  loc_BE3817: FLdPr Me
  loc_BE381A: VCallAd Control_ID_ImunImpuTxt
  loc_BE381D: CVarAd
  loc_BE3821: ParmAry1St
  loc_BE3827: FLdPr Me
  loc_BE382A: VCallAd Control_ID_ImpoImpuTxt
  loc_BE382D: CVarAd
  loc_BE3831: ParmAry1St
  loc_BE3837: FLdPr Me
  loc_BE383A: VCallAd Control_ID_DetaImpuTxt
  loc_BE383D: CVarAd
  loc_BE3841: ParmAry1St
  loc_BE3847: FLdRfVar var_9C
  loc_BE384A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE384F: FLdRfVar var_9C
  loc_BE3852: Erase
  loc_BE3853: Branch loc_BE3CE3
  loc_BE3856: ILdRf var_98
  loc_BE3859: LitI4 &H12
  loc_BE385E: EqI4
  loc_BE385F: BranchF loc_BE38E8
  loc_BE3862: LitI4 0
  loc_BE3867: LitI4 5
  loc_BE386C: FLdRfVar var_9C
  loc_BE386F: Redim
  loc_BE3879: FLdPr Me
  loc_BE387C: VCallAd Control_ID_cboSeleccion
  loc_BE387F: CVarAd
  loc_BE3883: ParmAry1St
  loc_BE3889: FLdPr Me
  loc_BE388C: VCallAd Control_ID_FechDeveMsk
  loc_BE388F: CVarAd
  loc_BE3893: ParmAry1St
  loc_BE3899: FLdPr Me
  loc_BE389C: VCallAd Control_ID_CantImpuTxt
  loc_BE389F: CVarAd
  loc_BE38A3: ParmAry1St
  loc_BE38A9: FLdPr Me
  loc_BE38AC: VCallAd Control_ID_ImunImpuTxt
  loc_BE38AF: CVarAd
  loc_BE38B3: ParmAry1St
  loc_BE38B9: FLdPr Me
  loc_BE38BC: VCallAd Control_ID_ImpoImpuTxt
  loc_BE38BF: CVarAd
  loc_BE38C3: ParmAry1St
  loc_BE38C9: FLdPr Me
  loc_BE38CC: VCallAd Control_ID_DetaImpuTxt
  loc_BE38CF: CVarAd
  loc_BE38D3: ParmAry1St
  loc_BE38D9: FLdRfVar var_9C
  loc_BE38DC: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE38E1: FLdRfVar var_9C
  loc_BE38E4: Erase
  loc_BE38E5: Branch loc_BE3CE3
  loc_BE38E8: ILdRf var_98
  loc_BE38EB: LitI4 &H13
  loc_BE38F0: EqI4
  loc_BE38F1: BranchF loc_BE397A
  loc_BE38F4: LitI4 0
  loc_BE38F9: LitI4 5
  loc_BE38FE: FLdRfVar var_9C
  loc_BE3901: Redim
  loc_BE390B: FLdPr Me
  loc_BE390E: VCallAd Control_ID_cboSeleccion
  loc_BE3911: CVarAd
  loc_BE3915: ParmAry1St
  loc_BE391B: FLdPr Me
  loc_BE391E: VCallAd Control_ID_FechDeveMsk
  loc_BE3921: CVarAd
  loc_BE3925: ParmAry1St
  loc_BE392B: FLdPr Me
  loc_BE392E: VCallAd Control_ID_CantImpuTxt
  loc_BE3931: CVarAd
  loc_BE3935: ParmAry1St
  loc_BE393B: FLdPr Me
  loc_BE393E: VCallAd Control_ID_ImunImpuTxt
  loc_BE3941: CVarAd
  loc_BE3945: ParmAry1St
  loc_BE394B: FLdPr Me
  loc_BE394E: VCallAd Control_ID_ImpoImpuTxt
  loc_BE3951: CVarAd
  loc_BE3955: ParmAry1St
  loc_BE395B: FLdPr Me
  loc_BE395E: VCallAd Control_ID_DetaImpuTxt
  loc_BE3961: CVarAd
  loc_BE3965: ParmAry1St
  loc_BE396B: FLdRfVar var_9C
  loc_BE396E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3973: FLdRfVar var_9C
  loc_BE3976: Erase
  loc_BE3977: Branch loc_BE3CE3
  loc_BE397A: ILdRf var_98
  loc_BE397D: LitI4 &HB
  loc_BE3982: EqI4
  loc_BE3983: BranchF loc_BE3A0C
  loc_BE3986: LitI4 0
  loc_BE398B: LitI4 5
  loc_BE3990: FLdRfVar var_9C
  loc_BE3993: Redim
  loc_BE399D: FLdPr Me
  loc_BE39A0: VCallAd Control_ID_cboSeleccion
  loc_BE39A3: CVarAd
  loc_BE39A7: ParmAry1St
  loc_BE39AD: FLdPr Me
  loc_BE39B0: VCallAd Control_ID_FechImpuMsk
  loc_BE39B3: CVarAd
  loc_BE39B7: ParmAry1St
  loc_BE39BD: FLdPr Me
  loc_BE39C0: VCallAd Control_ID_CantImpuTxt
  loc_BE39C3: CVarAd
  loc_BE39C7: ParmAry1St
  loc_BE39CD: FLdPr Me
  loc_BE39D0: VCallAd Control_ID_ImunImpuTxt
  loc_BE39D3: CVarAd
  loc_BE39D7: ParmAry1St
  loc_BE39DD: FLdPr Me
  loc_BE39E0: VCallAd Control_ID_ImpoImpuTxt
  loc_BE39E3: CVarAd
  loc_BE39E7: ParmAry1St
  loc_BE39ED: FLdPr Me
  loc_BE39F0: VCallAd Control_ID_DetaImpuTxt
  loc_BE39F3: CVarAd
  loc_BE39F7: ParmAry1St
  loc_BE39FD: FLdRfVar var_9C
  loc_BE3A00: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3A05: FLdRfVar var_9C
  loc_BE3A08: Erase
  loc_BE3A09: Branch loc_BE3CE3
  loc_BE3A0C: ILdRf var_98
  loc_BE3A0F: LitI4 &HC
  loc_BE3A14: EqI4
  loc_BE3A15: BranchF loc_BE3A9E
  loc_BE3A18: LitI4 0
  loc_BE3A1D: LitI4 5
  loc_BE3A22: FLdRfVar var_9C
  loc_BE3A25: Redim
  loc_BE3A2F: FLdPr Me
  loc_BE3A32: VCallAd Control_ID_cboSeleccion
  loc_BE3A35: CVarAd
  loc_BE3A39: ParmAry1St
  loc_BE3A3F: FLdPr Me
  loc_BE3A42: VCallAd Control_ID_FechImpuMsk
  loc_BE3A45: CVarAd
  loc_BE3A49: ParmAry1St
  loc_BE3A4F: FLdPr Me
  loc_BE3A52: VCallAd Control_ID_CantImpuTxt
  loc_BE3A55: CVarAd
  loc_BE3A59: ParmAry1St
  loc_BE3A5F: FLdPr Me
  loc_BE3A62: VCallAd Control_ID_ImunImpuTxt
  loc_BE3A65: CVarAd
  loc_BE3A69: ParmAry1St
  loc_BE3A6F: FLdPr Me
  loc_BE3A72: VCallAd Control_ID_ImpoImpuTxt
  loc_BE3A75: CVarAd
  loc_BE3A79: ParmAry1St
  loc_BE3A7F: FLdPr Me
  loc_BE3A82: VCallAd Control_ID_DetaImpuTxt
  loc_BE3A85: CVarAd
  loc_BE3A89: ParmAry1St
  loc_BE3A8F: FLdRfVar var_9C
  loc_BE3A92: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3A97: FLdRfVar var_9C
  loc_BE3A9A: Erase
  loc_BE3A9B: Branch loc_BE3CE3
  loc_BE3A9E: ILdRf var_98
  loc_BE3AA1: LitI4 &HD
  loc_BE3AA6: EqI4
  loc_BE3AA7: BranchF loc_BE3B30
  loc_BE3AAA: LitI4 0
  loc_BE3AAF: LitI4 5
  loc_BE3AB4: FLdRfVar var_9C
  loc_BE3AB7: Redim
  loc_BE3AC1: FLdPr Me
  loc_BE3AC4: VCallAd Control_ID_cboSeleccion
  loc_BE3AC7: CVarAd
  loc_BE3ACB: ParmAry1St
  loc_BE3AD1: FLdPr Me
  loc_BE3AD4: VCallAd Control_ID_FechDeveMsk
  loc_BE3AD7: CVarAd
  loc_BE3ADB: ParmAry1St
  loc_BE3AE1: FLdPr Me
  loc_BE3AE4: VCallAd Control_ID_CantImpuTxt
  loc_BE3AE7: CVarAd
  loc_BE3AEB: ParmAry1St
  loc_BE3AF1: FLdPr Me
  loc_BE3AF4: VCallAd Control_ID_ImunImpuTxt
  loc_BE3AF7: CVarAd
  loc_BE3AFB: ParmAry1St
  loc_BE3B01: FLdPr Me
  loc_BE3B04: VCallAd Control_ID_ImpoImpuTxt
  loc_BE3B07: CVarAd
  loc_BE3B0B: ParmAry1St
  loc_BE3B11: FLdPr Me
  loc_BE3B14: VCallAd Control_ID_DetaImpuTxt
  loc_BE3B17: CVarAd
  loc_BE3B1B: ParmAry1St
  loc_BE3B21: FLdRfVar var_9C
  loc_BE3B24: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3B29: FLdRfVar var_9C
  loc_BE3B2C: Erase
  loc_BE3B2D: Branch loc_BE3CE3
  loc_BE3B30: ILdRf var_98
  loc_BE3B33: LitI4 &HE
  loc_BE3B38: EqI4
  loc_BE3B39: BranchF loc_BE3BC2
  loc_BE3B3C: LitI4 0
  loc_BE3B41: LitI4 5
  loc_BE3B46: FLdRfVar var_9C
  loc_BE3B49: Redim
  loc_BE3B53: FLdPr Me
  loc_BE3B56: VCallAd Control_ID_cboSeleccion
  loc_BE3B59: CVarAd
  loc_BE3B5D: ParmAry1St
  loc_BE3B63: FLdPr Me
  loc_BE3B66: VCallAd Control_ID_FechImpuMsk
  loc_BE3B69: CVarAd
  loc_BE3B6D: ParmAry1St
  loc_BE3B73: FLdPr Me
  loc_BE3B76: VCallAd Control_ID_CantImpuTxt
  loc_BE3B79: CVarAd
  loc_BE3B7D: ParmAry1St
  loc_BE3B83: FLdPr Me
  loc_BE3B86: VCallAd Control_ID_ImunImpuTxt
  loc_BE3B89: CVarAd
  loc_BE3B8D: ParmAry1St
  loc_BE3B93: FLdPr Me
  loc_BE3B96: VCallAd Control_ID_ImpoImpuTxt
  loc_BE3B99: CVarAd
  loc_BE3B9D: ParmAry1St
  loc_BE3BA3: FLdPr Me
  loc_BE3BA6: VCallAd Control_ID_DetaImpuTxt
  loc_BE3BA9: CVarAd
  loc_BE3BAD: ParmAry1St
  loc_BE3BB3: FLdRfVar var_9C
  loc_BE3BB6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3BBB: FLdRfVar var_9C
  loc_BE3BBE: Erase
  loc_BE3BBF: Branch loc_BE3CE3
  loc_BE3BC2: ILdRf var_98
  loc_BE3BC5: LitI4 &HF
  loc_BE3BCA: EqI4
  loc_BE3BCB: BranchF loc_BE3C54
  loc_BE3BCE: LitI4 0
  loc_BE3BD3: LitI4 5
  loc_BE3BD8: FLdRfVar var_9C
  loc_BE3BDB: Redim
  loc_BE3BE5: FLdPr Me
  loc_BE3BE8: VCallAd Control_ID_cboSeleccion
  loc_BE3BEB: CVarAd
  loc_BE3BEF: ParmAry1St
  loc_BE3BF5: FLdPr Me
  loc_BE3BF8: VCallAd Control_ID_FechDeveMsk
  loc_BE3BFB: CVarAd
  loc_BE3BFF: ParmAry1St
  loc_BE3C05: FLdPr Me
  loc_BE3C08: VCallAd Control_ID_CantImpuTxt
  loc_BE3C0B: CVarAd
  loc_BE3C0F: ParmAry1St
  loc_BE3C15: FLdPr Me
  loc_BE3C18: VCallAd Control_ID_ImunImpuTxt
  loc_BE3C1B: CVarAd
  loc_BE3C1F: ParmAry1St
  loc_BE3C25: FLdPr Me
  loc_BE3C28: VCallAd Control_ID_ImpoImpuTxt
  loc_BE3C2B: CVarAd
  loc_BE3C2F: ParmAry1St
  loc_BE3C35: FLdPr Me
  loc_BE3C38: VCallAd Control_ID_DetaImpuTxt
  loc_BE3C3B: CVarAd
  loc_BE3C3F: ParmAry1St
  loc_BE3C45: FLdRfVar var_9C
  loc_BE3C48: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3C4D: FLdRfVar var_9C
  loc_BE3C50: Erase
  loc_BE3C51: Branch loc_BE3CE3
  loc_BE3C54: ILdRf var_98
  loc_BE3C57: LitI4 &H10
  loc_BE3C5C: EqI4
  loc_BE3C5D: BranchF loc_BE3CE3
  loc_BE3C60: LitI4 0
  loc_BE3C65: LitI4 5
  loc_BE3C6A: FLdRfVar var_9C
  loc_BE3C6D: Redim
  loc_BE3C77: FLdPr Me
  loc_BE3C7A: VCallAd Control_ID_cboSeleccion
  loc_BE3C7D: CVarAd
  loc_BE3C81: ParmAry1St
  loc_BE3C87: FLdPr Me
  loc_BE3C8A: VCallAd Control_ID_FechDeveMsk
  loc_BE3C8D: CVarAd
  loc_BE3C91: ParmAry1St
  loc_BE3C97: FLdPr Me
  loc_BE3C9A: VCallAd Control_ID_CantImpuTxt
  loc_BE3C9D: CVarAd
  loc_BE3CA1: ParmAry1St
  loc_BE3CA7: FLdPr Me
  loc_BE3CAA: VCallAd Control_ID_ImunImpuTxt
  loc_BE3CAD: CVarAd
  loc_BE3CB1: ParmAry1St
  loc_BE3CB7: FLdPr Me
  loc_BE3CBA: VCallAd Control_ID_ImpoImpuTxt
  loc_BE3CBD: CVarAd
  loc_BE3CC1: ParmAry1St
  loc_BE3CC7: FLdPr Me
  loc_BE3CCA: VCallAd Control_ID_DetaImpuTxt
  loc_BE3CCD: CVarAd
  loc_BE3CD1: ParmAry1St
  loc_BE3CD7: FLdRfVar var_9C
  loc_BE3CDA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BE3CDF: FLdRfVar var_9C
  loc_BE3CE2: Erase
  loc_BE3CE3: ExitProcHresult
End Sub

Private Sub cboSeleccion_GotFocus() 'B8670C
  'Data Table: 500268
  loc_B8596C: FLdRfVar var_94
  loc_B8596F: FLdRfVar var_8A
  loc_B85972: FLdPr Me
  loc_B85975: VCallAd Control_ID_cboSeleccion
  loc_B85978: FStAdFunc var_88
  loc_B8597B: FLdPr var_88
  loc_B8597E:  = Me.ListIndex
  loc_B85983: FLdI2 var_8A
  loc_B85986: FLdPr Me
  loc_B85989: VCallAd Control_ID_cboSeleccion
  loc_B8598C: FStAdFunc var_90
  loc_B8598F: FLdPr var_90
  loc_B85992:  = Me.ItemData
  loc_B85997: ILdRf var_94
  loc_B8599A: FStR4 var_98
  loc_B8599D: FFreeAd var_88 = ""
  loc_B859A4: ILdRf var_98
  loc_B859A7: LitI4 1
  loc_B859AC: EqI4
  loc_B859AD: BranchF loc_B85A4F
  loc_B859B0: FLdRfVar var_8A
  loc_B859B3: FLdPr Me
  loc_B859B6: VCallAd Control_ID_CantImpuTxt
  loc_B859B9: FStAdFunc var_88
  loc_B859BC: FLdPr var_88
  loc_B859BF:  = Me.Enabled
  loc_B859C4: FLdI2 var_8A
  loc_B859C7: FFree1Ad var_88
  loc_B859CA: BranchF loc_B859E4
  loc_B859CD: LitStr "1"
  loc_B859D0: FLdPr Me
  loc_B859D3: VCallAd Control_ID_CantImpuTxt
  loc_B859D6: FStAdFunc var_88
  loc_B859D9: FLdPr var_88
  loc_B859DC: Me.Text = from_stack_1
  loc_B859E1: FFree1Ad var_88
  loc_B859E4: FLdRfVar var_8A
  loc_B859E7: FLdPr Me
  loc_B859EA: VCallAd Control_ID_ImunImpuTxt
  loc_B859ED: FStAdFunc var_88
  loc_B859F0: FLdPr var_88
  loc_B859F3:  = Me.Enabled
  loc_B859F8: FLdI2 var_8A
  loc_B859FB: FFree1Ad var_88
  loc_B859FE: BranchF loc_B85A18
  loc_B85A01: LitStr "0"
  loc_B85A04: FLdPr Me
  loc_B85A07: VCallAd Control_ID_ImunImpuTxt
  loc_B85A0A: FStAdFunc var_88
  loc_B85A0D: FLdPr var_88
  loc_B85A10: Me.Text = from_stack_1
  loc_B85A15: FFree1Ad var_88
  loc_B85A18: FLdRfVar var_8A
  loc_B85A1B: FLdPr Me
  loc_B85A1E: VCallAd Control_ID_ImpoImpuTxt
  loc_B85A21: FStAdFunc var_88
  loc_B85A24: FLdPr var_88
  loc_B85A27:  = Me.Enabled
  loc_B85A2C: FLdI2 var_8A
  loc_B85A2F: FFree1Ad var_88
  loc_B85A32: BranchF loc_B85A4C
  loc_B85A35: LitStr "0"
  loc_B85A38: FLdPr Me
  loc_B85A3B: VCallAd Control_ID_ImpoImpuTxt
  loc_B85A3E: FStAdFunc var_88
  loc_B85A41: FLdPr var_88
  loc_B85A44: Me.Text = from_stack_1
  loc_B85A49: FFree1Ad var_88
  loc_B85A4C: Branch loc_B8670A
  loc_B85A4F: ILdRf var_98
  loc_B85A52: LitI4 2
  loc_B85A57: EqI4
  loc_B85A58: BranchF loc_B85AFA
  loc_B85A5B: FLdRfVar var_8A
  loc_B85A5E: FLdPr Me
  loc_B85A61: VCallAd Control_ID_CantImpuTxt
  loc_B85A64: FStAdFunc var_88
  loc_B85A67: FLdPr var_88
  loc_B85A6A:  = Me.Enabled
  loc_B85A6F: FLdI2 var_8A
  loc_B85A72: FFree1Ad var_88
  loc_B85A75: BranchF loc_B85A8F
  loc_B85A78: LitStr "1"
  loc_B85A7B: FLdPr Me
  loc_B85A7E: VCallAd Control_ID_CantImpuTxt
  loc_B85A81: FStAdFunc var_88
  loc_B85A84: FLdPr var_88
  loc_B85A87: Me.Text = from_stack_1
  loc_B85A8C: FFree1Ad var_88
  loc_B85A8F: FLdRfVar var_8A
  loc_B85A92: FLdPr Me
  loc_B85A95: VCallAd Control_ID_ImunImpuTxt
  loc_B85A98: FStAdFunc var_88
  loc_B85A9B: FLdPr var_88
  loc_B85A9E:  = Me.Enabled
  loc_B85AA3: FLdI2 var_8A
  loc_B85AA6: FFree1Ad var_88
  loc_B85AA9: BranchF loc_B85AC3
  loc_B85AAC: LitStr "0"
  loc_B85AAF: FLdPr Me
  loc_B85AB2: VCallAd Control_ID_ImunImpuTxt
  loc_B85AB5: FStAdFunc var_88
  loc_B85AB8: FLdPr var_88
  loc_B85ABB: Me.Text = from_stack_1
  loc_B85AC0: FFree1Ad var_88
  loc_B85AC3: FLdRfVar var_8A
  loc_B85AC6: FLdPr Me
  loc_B85AC9: VCallAd Control_ID_ImpoImpuTxt
  loc_B85ACC: FStAdFunc var_88
  loc_B85ACF: FLdPr var_88
  loc_B85AD2:  = Me.Enabled
  loc_B85AD7: FLdI2 var_8A
  loc_B85ADA: FFree1Ad var_88
  loc_B85ADD: BranchF loc_B85AF7
  loc_B85AE0: LitStr "0"
  loc_B85AE3: FLdPr Me
  loc_B85AE6: VCallAd Control_ID_ImpoImpuTxt
  loc_B85AE9: FStAdFunc var_88
  loc_B85AEC: FLdPr var_88
  loc_B85AEF: Me.Text = from_stack_1
  loc_B85AF4: FFree1Ad var_88
  loc_B85AF7: Branch loc_B8670A
  loc_B85AFA: ILdRf var_98
  loc_B85AFD: LitI4 &H13
  loc_B85B02: EqI4
  loc_B85B03: BranchF loc_B85BA5
  loc_B85B06: FLdRfVar var_8A
  loc_B85B09: FLdPr Me
  loc_B85B0C: VCallAd Control_ID_CantImpuTxt
  loc_B85B0F: FStAdFunc var_88
  loc_B85B12: FLdPr var_88
  loc_B85B15:  = Me.Enabled
  loc_B85B1A: FLdI2 var_8A
  loc_B85B1D: FFree1Ad var_88
  loc_B85B20: BranchF loc_B85B3A
  loc_B85B23: LitStr "1"
  loc_B85B26: FLdPr Me
  loc_B85B29: VCallAd Control_ID_CantImpuTxt
  loc_B85B2C: FStAdFunc var_88
  loc_B85B2F: FLdPr var_88
  loc_B85B32: Me.Text = from_stack_1
  loc_B85B37: FFree1Ad var_88
  loc_B85B3A: FLdRfVar var_8A
  loc_B85B3D: FLdPr Me
  loc_B85B40: VCallAd Control_ID_ImunImpuTxt
  loc_B85B43: FStAdFunc var_88
  loc_B85B46: FLdPr var_88
  loc_B85B49:  = Me.Enabled
  loc_B85B4E: FLdI2 var_8A
  loc_B85B51: FFree1Ad var_88
  loc_B85B54: BranchF loc_B85B6E
  loc_B85B57: LitStr "0"
  loc_B85B5A: FLdPr Me
  loc_B85B5D: VCallAd Control_ID_ImunImpuTxt
  loc_B85B60: FStAdFunc var_88
  loc_B85B63: FLdPr var_88
  loc_B85B66: Me.Text = from_stack_1
  loc_B85B6B: FFree1Ad var_88
  loc_B85B6E: FLdRfVar var_8A
  loc_B85B71: FLdPr Me
  loc_B85B74: VCallAd Control_ID_ImpoImpuTxt
  loc_B85B77: FStAdFunc var_88
  loc_B85B7A: FLdPr var_88
  loc_B85B7D:  = Me.Enabled
  loc_B85B82: FLdI2 var_8A
  loc_B85B85: FFree1Ad var_88
  loc_B85B88: BranchF loc_B85BA2
  loc_B85B8B: LitStr "0"
  loc_B85B8E: FLdPr Me
  loc_B85B91: VCallAd Control_ID_ImpoImpuTxt
  loc_B85B94: FStAdFunc var_88
  loc_B85B97: FLdPr var_88
  loc_B85B9A: Me.Text = from_stack_1
  loc_B85B9F: FFree1Ad var_88
  loc_B85BA2: Branch loc_B8670A
  loc_B85BA5: ILdRf var_98
  loc_B85BA8: LitI4 3
  loc_B85BAD: EqI4
  loc_B85BAE: BranchF loc_B85CA5
  loc_B85BB1: FLdPr Me
  loc_B85BB4: VCallAd Control_ID_FefaDeveMsk
  loc_B85BB7: FStAdFunc var_88
  loc_B85BBA: FLdPr var_88
  loc_B85BBD: LateIdLdVar var_A8 DispID_13 -32767
  loc_B85BC4: CBoolVar
  loc_B85BC6: FFree1Ad var_88
  loc_B85BC9: FFree1Var var_A8 = ""
  loc_B85BCC: BranchF loc_B85C06
  loc_B85BCF: FLdPr Me
  loc_B85BD2: VCallAd Control_ID_FechDeveMsk
  loc_B85BD5: FStAdFunc var_88
  loc_B85BD8: FLdPr var_88
  loc_B85BDB: LateIdLdVar var_A8 DispID_22 0
  loc_B85BE2: CStrVarTmp
  loc_B85BE3: CVarStr var_B8
  loc_B85BE6: PopAdLdVar
  loc_B85BE7: FLdPr Me
  loc_B85BEA: VCallAd Control_ID_FefaDeveMsk
  loc_B85BED: FStAdFunc var_90
  loc_B85BF0: FLdPr var_90
  loc_B85BF3: LateIdSt
  loc_B85BF8: FFreeAd var_88 = ""
  loc_B85BFF: FFreeVar var_A8 = ""
  loc_B85C06: FLdRfVar var_8A
  loc_B85C09: FLdPr Me
  loc_B85C0C: VCallAd Control_ID_CantImpuTxt
  loc_B85C0F: FStAdFunc var_88
  loc_B85C12: FLdPr var_88
  loc_B85C15:  = Me.Enabled
  loc_B85C1A: FLdI2 var_8A
  loc_B85C1D: FFree1Ad var_88
  loc_B85C20: BranchF loc_B85C3A
  loc_B85C23: LitStr "1"
  loc_B85C26: FLdPr Me
  loc_B85C29: VCallAd Control_ID_CantImpuTxt
  loc_B85C2C: FStAdFunc var_88
  loc_B85C2F: FLdPr var_88
  loc_B85C32: Me.Text = from_stack_1
  loc_B85C37: FFree1Ad var_88
  loc_B85C3A: FLdRfVar var_8A
  loc_B85C3D: FLdPr Me
  loc_B85C40: VCallAd Control_ID_ImunImpuTxt
  loc_B85C43: FStAdFunc var_88
  loc_B85C46: FLdPr var_88
  loc_B85C49:  = Me.Enabled
  loc_B85C4E: FLdI2 var_8A
  loc_B85C51: FFree1Ad var_88
  loc_B85C54: BranchF loc_B85C6E
  loc_B85C57: LitStr "0"
  loc_B85C5A: FLdPr Me
  loc_B85C5D: VCallAd Control_ID_ImunImpuTxt
  loc_B85C60: FStAdFunc var_88
  loc_B85C63: FLdPr var_88
  loc_B85C66: Me.Text = from_stack_1
  loc_B85C6B: FFree1Ad var_88
  loc_B85C6E: FLdRfVar var_8A
  loc_B85C71: FLdPr Me
  loc_B85C74: VCallAd Control_ID_ImpoImpuTxt
  loc_B85C77: FStAdFunc var_88
  loc_B85C7A: FLdPr var_88
  loc_B85C7D:  = Me.Enabled
  loc_B85C82: FLdI2 var_8A
  loc_B85C85: FFree1Ad var_88
  loc_B85C88: BranchF loc_B85CA2
  loc_B85C8B: LitStr "0"
  loc_B85C8E: FLdPr Me
  loc_B85C91: VCallAd Control_ID_ImpoImpuTxt
  loc_B85C94: FStAdFunc var_88
  loc_B85C97: FLdPr var_88
  loc_B85C9A: Me.Text = from_stack_1
  loc_B85C9F: FFree1Ad var_88
  loc_B85CA2: Branch loc_B8670A
  loc_B85CA5: ILdRf var_98
  loc_B85CA8: LitI4 4
  loc_B85CAD: EqI4
  loc_B85CAE: BranchF loc_B85D50
  loc_B85CB1: FLdRfVar var_8A
  loc_B85CB4: FLdPr Me
  loc_B85CB7: VCallAd Control_ID_CantImpuTxt
  loc_B85CBA: FStAdFunc var_88
  loc_B85CBD: FLdPr var_88
  loc_B85CC0:  = Me.Enabled
  loc_B85CC5: FLdI2 var_8A
  loc_B85CC8: FFree1Ad var_88
  loc_B85CCB: BranchF loc_B85CE5
  loc_B85CCE: LitStr "1"
  loc_B85CD1: FLdPr Me
  loc_B85CD4: VCallAd Control_ID_CantImpuTxt
  loc_B85CD7: FStAdFunc var_88
  loc_B85CDA: FLdPr var_88
  loc_B85CDD: Me.Text = from_stack_1
  loc_B85CE2: FFree1Ad var_88
  loc_B85CE5: FLdRfVar var_8A
  loc_B85CE8: FLdPr Me
  loc_B85CEB: VCallAd Control_ID_ImunImpuTxt
  loc_B85CEE: FStAdFunc var_88
  loc_B85CF1: FLdPr var_88
  loc_B85CF4:  = Me.Enabled
  loc_B85CF9: FLdI2 var_8A
  loc_B85CFC: FFree1Ad var_88
  loc_B85CFF: BranchF loc_B85D19
  loc_B85D02: LitStr "0"
  loc_B85D05: FLdPr Me
  loc_B85D08: VCallAd Control_ID_ImunImpuTxt
  loc_B85D0B: FStAdFunc var_88
  loc_B85D0E: FLdPr var_88
  loc_B85D11: Me.Text = from_stack_1
  loc_B85D16: FFree1Ad var_88
  loc_B85D19: FLdRfVar var_8A
  loc_B85D1C: FLdPr Me
  loc_B85D1F: VCallAd Control_ID_ImpoImpuTxt
  loc_B85D22: FStAdFunc var_88
  loc_B85D25: FLdPr var_88
  loc_B85D28:  = Me.Enabled
  loc_B85D2D: FLdI2 var_8A
  loc_B85D30: FFree1Ad var_88
  loc_B85D33: BranchF loc_B85D4D
  loc_B85D36: LitStr "0"
  loc_B85D39: FLdPr Me
  loc_B85D3C: VCallAd Control_ID_ImpoImpuTxt
  loc_B85D3F: FStAdFunc var_88
  loc_B85D42: FLdPr var_88
  loc_B85D45: Me.Text = from_stack_1
  loc_B85D4A: FFree1Ad var_88
  loc_B85D4D: Branch loc_B8670A
  loc_B85D50: ILdRf var_98
  loc_B85D53: LitI4 5
  loc_B85D58: EqI4
  loc_B85D59: BranchF loc_B85ED9
  loc_B85D5C: FLdRfVar var_8A
  loc_B85D5F: FLdPr Me
  loc_B85D62: VCallAd Control_ID_CantImpuTxt
  loc_B85D65: FStAdFunc var_88
  loc_B85D68: FLdPr var_88
  loc_B85D6B:  = Me.Enabled
  loc_B85D70: FLdI2 var_8A
  loc_B85D73: FFree1Ad var_88
  loc_B85D76: BranchF loc_B85DDA
  loc_B85D79: FLdRfVar var_A8
  loc_B85D7C: FLdRfVar var_CC
  loc_B85D7F: LitVarStr var_C8, "CantImpu"
  loc_B85D84: PopAdLdVar
  loc_B85D85: FLdRfVar var_90
  loc_B85D88: FLdRfVar var_88
  loc_B85D8B: FLdPr Me
  loc_B85D8E: MemLdRfVar from_stack_1.global_52
  loc_B85D91: NewIfNullPr clsimputacion
  loc_B85D94: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B85D99: FLdPr var_88
  loc_B85D9C:  = Me.Fields
  loc_B85DA1: FLdPr var_90
  loc_B85DA4: from_stack_2 = Me.Item(from_stack_1)
  loc_B85DA9: FLdPr var_CC
  loc_B85DAC:  = Me.Value
  loc_B85DB1: FLdRfVar var_A8
  loc_B85DB4: CStrVarTmp
  loc_B85DB5: FStStrNoPop var_D0
  loc_B85DB8: FLdPr Me
  loc_B85DBB: VCallAd Control_ID_CantImpuTxt
  loc_B85DBE: FStAdFunc var_D4
  loc_B85DC1: FLdPr var_D4
  loc_B85DC4: Me.Text = from_stack_1
  loc_B85DC9: FFree1Str var_D0
  loc_B85DCC: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B85DD7: FFree1Var var_A8 = ""
  loc_B85DDA: FLdRfVar var_8A
  loc_B85DDD: FLdPr Me
  loc_B85DE0: VCallAd Control_ID_ImunImpuTxt
  loc_B85DE3: FStAdFunc var_88
  loc_B85DE6: FLdPr var_88
  loc_B85DE9:  = Me.Enabled
  loc_B85DEE: FLdI2 var_8A
  loc_B85DF1: FFree1Ad var_88
  loc_B85DF4: BranchF loc_B85E58
  loc_B85DF7: FLdRfVar var_A8
  loc_B85DFA: FLdRfVar var_CC
  loc_B85DFD: LitVarStr var_C8, "ImunImpu"
  loc_B85E02: PopAdLdVar
  loc_B85E03: FLdRfVar var_90
  loc_B85E06: FLdRfVar var_88
  loc_B85E09: FLdPr Me
  loc_B85E0C: MemLdRfVar from_stack_1.global_52
  loc_B85E0F: NewIfNullPr clsimputacion
  loc_B85E12: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B85E17: FLdPr var_88
  loc_B85E1A:  = Me.Fields
  loc_B85E1F: FLdPr var_90
  loc_B85E22: from_stack_2 = Me.Item(from_stack_1)
  loc_B85E27: FLdPr var_CC
  loc_B85E2A:  = Me.Value
  loc_B85E2F: FLdRfVar var_A8
  loc_B85E32: CStrVarTmp
  loc_B85E33: FStStrNoPop var_D0
  loc_B85E36: FLdPr Me
  loc_B85E39: VCallAd Control_ID_ImunImpuTxt
  loc_B85E3C: FStAdFunc var_D4
  loc_B85E3F: FLdPr var_D4
  loc_B85E42: Me.Text = from_stack_1
  loc_B85E47: FFree1Str var_D0
  loc_B85E4A: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B85E55: FFree1Var var_A8 = ""
  loc_B85E58: FLdRfVar var_8A
  loc_B85E5B: FLdPr Me
  loc_B85E5E: VCallAd Control_ID_ImpoImpuTxt
  loc_B85E61: FStAdFunc var_88
  loc_B85E64: FLdPr var_88
  loc_B85E67:  = Me.Enabled
  loc_B85E6C: FLdI2 var_8A
  loc_B85E6F: FFree1Ad var_88
  loc_B85E72: BranchF loc_B85ED6
  loc_B85E75: FLdRfVar var_A8
  loc_B85E78: FLdRfVar var_CC
  loc_B85E7B: LitVarStr var_C8, "ImpoImpu"
  loc_B85E80: PopAdLdVar
  loc_B85E81: FLdRfVar var_90
  loc_B85E84: FLdRfVar var_88
  loc_B85E87: FLdPr Me
  loc_B85E8A: MemLdRfVar from_stack_1.global_52
  loc_B85E8D: NewIfNullPr clsimputacion
  loc_B85E90: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B85E95: FLdPr var_88
  loc_B85E98:  = Me.Fields
  loc_B85E9D: FLdPr var_90
  loc_B85EA0: from_stack_2 = Me.Item(from_stack_1)
  loc_B85EA5: FLdPr var_CC
  loc_B85EA8:  = Me.Value
  loc_B85EAD: FLdRfVar var_A8
  loc_B85EB0: CStrVarTmp
  loc_B85EB1: FStStrNoPop var_D0
  loc_B85EB4: FLdPr Me
  loc_B85EB7: VCallAd Control_ID_ImpoImpuTxt
  loc_B85EBA: FStAdFunc var_D4
  loc_B85EBD: FLdPr var_D4
  loc_B85EC0: Me.Text = from_stack_1
  loc_B85EC5: FFree1Str var_D0
  loc_B85EC8: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B85ED3: FFree1Var var_A8 = ""
  loc_B85ED6: Branch loc_B8670A
  loc_B85ED9: ILdRf var_98
  loc_B85EDC: LitI4 6
  loc_B85EE1: EqI4
  loc_B85EE2: BranchF loc_B86062
  loc_B85EE5: FLdRfVar var_8A
  loc_B85EE8: FLdPr Me
  loc_B85EEB: VCallAd Control_ID_CantImpuTxt
  loc_B85EEE: FStAdFunc var_88
  loc_B85EF1: FLdPr var_88
  loc_B85EF4:  = Me.Enabled
  loc_B85EF9: FLdI2 var_8A
  loc_B85EFC: FFree1Ad var_88
  loc_B85EFF: BranchF loc_B85F63
  loc_B85F02: FLdRfVar var_A8
  loc_B85F05: FLdRfVar var_CC
  loc_B85F08: LitVarStr var_C8, "CantImpu"
  loc_B85F0D: PopAdLdVar
  loc_B85F0E: FLdRfVar var_90
  loc_B85F11: FLdRfVar var_88
  loc_B85F14: FLdPr Me
  loc_B85F17: MemLdRfVar from_stack_1.global_52
  loc_B85F1A: NewIfNullPr clsimputacion
  loc_B85F1D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B85F22: FLdPr var_88
  loc_B85F25:  = Me.Fields
  loc_B85F2A: FLdPr var_90
  loc_B85F2D: from_stack_2 = Me.Item(from_stack_1)
  loc_B85F32: FLdPr var_CC
  loc_B85F35:  = Me.Value
  loc_B85F3A: FLdRfVar var_A8
  loc_B85F3D: CStrVarTmp
  loc_B85F3E: FStStrNoPop var_D0
  loc_B85F41: FLdPr Me
  loc_B85F44: VCallAd Control_ID_CantImpuTxt
  loc_B85F47: FStAdFunc var_D4
  loc_B85F4A: FLdPr var_D4
  loc_B85F4D: Me.Text = from_stack_1
  loc_B85F52: FFree1Str var_D0
  loc_B85F55: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B85F60: FFree1Var var_A8 = ""
  loc_B85F63: FLdRfVar var_8A
  loc_B85F66: FLdPr Me
  loc_B85F69: VCallAd Control_ID_ImunImpuTxt
  loc_B85F6C: FStAdFunc var_88
  loc_B85F6F: FLdPr var_88
  loc_B85F72:  = Me.Enabled
  loc_B85F77: FLdI2 var_8A
  loc_B85F7A: FFree1Ad var_88
  loc_B85F7D: BranchF loc_B85FE1
  loc_B85F80: FLdRfVar var_A8
  loc_B85F83: FLdRfVar var_CC
  loc_B85F86: LitVarStr var_C8, "ImunImpu"
  loc_B85F8B: PopAdLdVar
  loc_B85F8C: FLdRfVar var_90
  loc_B85F8F: FLdRfVar var_88
  loc_B85F92: FLdPr Me
  loc_B85F95: MemLdRfVar from_stack_1.global_52
  loc_B85F98: NewIfNullPr clsimputacion
  loc_B85F9B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B85FA0: FLdPr var_88
  loc_B85FA3:  = Me.Fields
  loc_B85FA8: FLdPr var_90
  loc_B85FAB: from_stack_2 = Me.Item(from_stack_1)
  loc_B85FB0: FLdPr var_CC
  loc_B85FB3:  = Me.Value
  loc_B85FB8: FLdRfVar var_A8
  loc_B85FBB: CStrVarTmp
  loc_B85FBC: FStStrNoPop var_D0
  loc_B85FBF: FLdPr Me
  loc_B85FC2: VCallAd Control_ID_ImunImpuTxt
  loc_B85FC5: FStAdFunc var_D4
  loc_B85FC8: FLdPr var_D4
  loc_B85FCB: Me.Text = from_stack_1
  loc_B85FD0: FFree1Str var_D0
  loc_B85FD3: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B85FDE: FFree1Var var_A8 = ""
  loc_B85FE1: FLdRfVar var_8A
  loc_B85FE4: FLdPr Me
  loc_B85FE7: VCallAd Control_ID_ImpoImpuTxt
  loc_B85FEA: FStAdFunc var_88
  loc_B85FED: FLdPr var_88
  loc_B85FF0:  = Me.Enabled
  loc_B85FF5: FLdI2 var_8A
  loc_B85FF8: FFree1Ad var_88
  loc_B85FFB: BranchF loc_B8605F
  loc_B85FFE: FLdRfVar var_A8
  loc_B86001: FLdRfVar var_CC
  loc_B86004: LitVarStr var_C8, "ImpoImpu"
  loc_B86009: PopAdLdVar
  loc_B8600A: FLdRfVar var_90
  loc_B8600D: FLdRfVar var_88
  loc_B86010: FLdPr Me
  loc_B86013: MemLdRfVar from_stack_1.global_52
  loc_B86016: NewIfNullPr clsimputacion
  loc_B86019: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B8601E: FLdPr var_88
  loc_B86021:  = Me.Fields
  loc_B86026: FLdPr var_90
  loc_B86029: from_stack_2 = Me.Item(from_stack_1)
  loc_B8602E: FLdPr var_CC
  loc_B86031:  = Me.Value
  loc_B86036: FLdRfVar var_A8
  loc_B86039: CStrVarTmp
  loc_B8603A: FStStrNoPop var_D0
  loc_B8603D: FLdPr Me
  loc_B86040: VCallAd Control_ID_ImpoImpuTxt
  loc_B86043: FStAdFunc var_D4
  loc_B86046: FLdPr var_D4
  loc_B86049: Me.Text = from_stack_1
  loc_B8604E: FFree1Str var_D0
  loc_B86051: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B8605C: FFree1Var var_A8 = ""
  loc_B8605F: Branch loc_B8670A
  loc_B86062: ILdRf var_98
  loc_B86065: LitI4 7
  loc_B8606A: EqI4
  loc_B8606B: BranchF loc_B861EB
  loc_B8606E: FLdRfVar var_8A
  loc_B86071: FLdPr Me
  loc_B86074: VCallAd Control_ID_CantImpuTxt
  loc_B86077: FStAdFunc var_88
  loc_B8607A: FLdPr var_88
  loc_B8607D:  = Me.Enabled
  loc_B86082: FLdI2 var_8A
  loc_B86085: FFree1Ad var_88
  loc_B86088: BranchF loc_B860EC
  loc_B8608B: FLdRfVar var_A8
  loc_B8608E: FLdRfVar var_CC
  loc_B86091: LitVarStr var_C8, "CantImpu"
  loc_B86096: PopAdLdVar
  loc_B86097: FLdRfVar var_90
  loc_B8609A: FLdRfVar var_88
  loc_B8609D: FLdPr Me
  loc_B860A0: MemLdRfVar from_stack_1.global_52
  loc_B860A3: NewIfNullPr clsimputacion
  loc_B860A6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B860AB: FLdPr var_88
  loc_B860AE:  = Me.Fields
  loc_B860B3: FLdPr var_90
  loc_B860B6: from_stack_2 = Me.Item(from_stack_1)
  loc_B860BB: FLdPr var_CC
  loc_B860BE:  = Me.Value
  loc_B860C3: FLdRfVar var_A8
  loc_B860C6: CStrVarTmp
  loc_B860C7: FStStrNoPop var_D0
  loc_B860CA: FLdPr Me
  loc_B860CD: VCallAd Control_ID_CantImpuTxt
  loc_B860D0: FStAdFunc var_D4
  loc_B860D3: FLdPr var_D4
  loc_B860D6: Me.Text = from_stack_1
  loc_B860DB: FFree1Str var_D0
  loc_B860DE: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B860E9: FFree1Var var_A8 = ""
  loc_B860EC: FLdRfVar var_8A
  loc_B860EF: FLdPr Me
  loc_B860F2: VCallAd Control_ID_ImunImpuTxt
  loc_B860F5: FStAdFunc var_88
  loc_B860F8: FLdPr var_88
  loc_B860FB:  = Me.Enabled
  loc_B86100: FLdI2 var_8A
  loc_B86103: FFree1Ad var_88
  loc_B86106: BranchF loc_B8616A
  loc_B86109: FLdRfVar var_A8
  loc_B8610C: FLdRfVar var_CC
  loc_B8610F: LitVarStr var_C8, "ImunImpu"
  loc_B86114: PopAdLdVar
  loc_B86115: FLdRfVar var_90
  loc_B86118: FLdRfVar var_88
  loc_B8611B: FLdPr Me
  loc_B8611E: MemLdRfVar from_stack_1.global_52
  loc_B86121: NewIfNullPr clsimputacion
  loc_B86124: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B86129: FLdPr var_88
  loc_B8612C:  = Me.Fields
  loc_B86131: FLdPr var_90
  loc_B86134: from_stack_2 = Me.Item(from_stack_1)
  loc_B86139: FLdPr var_CC
  loc_B8613C:  = Me.Value
  loc_B86141: FLdRfVar var_A8
  loc_B86144: CStrVarTmp
  loc_B86145: FStStrNoPop var_D0
  loc_B86148: FLdPr Me
  loc_B8614B: VCallAd Control_ID_ImunImpuTxt
  loc_B8614E: FStAdFunc var_D4
  loc_B86151: FLdPr var_D4
  loc_B86154: Me.Text = from_stack_1
  loc_B86159: FFree1Str var_D0
  loc_B8615C: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B86167: FFree1Var var_A8 = ""
  loc_B8616A: FLdRfVar var_8A
  loc_B8616D: FLdPr Me
  loc_B86170: VCallAd Control_ID_ImpoImpuTxt
  loc_B86173: FStAdFunc var_88
  loc_B86176: FLdPr var_88
  loc_B86179:  = Me.Enabled
  loc_B8617E: FLdI2 var_8A
  loc_B86181: FFree1Ad var_88
  loc_B86184: BranchF loc_B861E8
  loc_B86187: FLdRfVar var_A8
  loc_B8618A: FLdRfVar var_CC
  loc_B8618D: LitVarStr var_C8, "ImpoImpu"
  loc_B86192: PopAdLdVar
  loc_B86193: FLdRfVar var_90
  loc_B86196: FLdRfVar var_88
  loc_B86199: FLdPr Me
  loc_B8619C: MemLdRfVar from_stack_1.global_52
  loc_B8619F: NewIfNullPr clsimputacion
  loc_B861A2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B861A7: FLdPr var_88
  loc_B861AA:  = Me.Fields
  loc_B861AF: FLdPr var_90
  loc_B861B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B861B7: FLdPr var_CC
  loc_B861BA:  = Me.Value
  loc_B861BF: FLdRfVar var_A8
  loc_B861C2: CStrVarTmp
  loc_B861C3: FStStrNoPop var_D0
  loc_B861C6: FLdPr Me
  loc_B861C9: VCallAd Control_ID_ImpoImpuTxt
  loc_B861CC: FStAdFunc var_D4
  loc_B861CF: FLdPr var_D4
  loc_B861D2: Me.Text = from_stack_1
  loc_B861D7: FFree1Str var_D0
  loc_B861DA: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B861E5: FFree1Var var_A8 = ""
  loc_B861E8: Branch loc_B8670A
  loc_B861EB: ILdRf var_98
  loc_B861EE: LitI4 8
  loc_B861F3: EqI4
  loc_B861F4: BranchF loc_B861FA
  loc_B861F7: Branch loc_B8670A
  loc_B861FA: ILdRf var_98
  loc_B861FD: LitI4 9
  loc_B86202: EqI4
  loc_B86203: BranchF loc_B86209
  loc_B86206: Branch loc_B8670A
  loc_B86209: ILdRf var_98
  loc_B8620C: LitI4 &HA
  loc_B86211: EqI4
  loc_B86212: BranchF loc_B86218
  loc_B86215: Branch loc_B8670A
  loc_B86218: ILdRf var_98
  loc_B8621B: LitI4 &H11
  loc_B86220: EqI4
  loc_B86221: BranchF loc_B86227
  loc_B86224: Branch loc_B8670A
  loc_B86227: ILdRf var_98
  loc_B8622A: LitI4 &H12
  loc_B8622F: EqI4
  loc_B86230: BranchF loc_B86236
  loc_B86233: Branch loc_B8670A
  loc_B86236: ILdRf var_98
  loc_B86239: LitI4 &H13
  loc_B8623E: EqI4
  loc_B8623F: BranchF loc_B86245
  loc_B86242: Branch loc_B8670A
  loc_B86245: ILdRf var_98
  loc_B86248: LitI4 &HB
  loc_B8624D: EqI4
  loc_B8624E: BranchF loc_B863CE
  loc_B86251: FLdRfVar var_8A
  loc_B86254: FLdPr Me
  loc_B86257: VCallAd Control_ID_CantImpuTxt
  loc_B8625A: FStAdFunc var_88
  loc_B8625D: FLdPr var_88
  loc_B86260:  = Me.Enabled
  loc_B86265: FLdI2 var_8A
  loc_B86268: FFree1Ad var_88
  loc_B8626B: BranchF loc_B862CF
  loc_B8626E: FLdRfVar var_A8
  loc_B86271: FLdRfVar var_CC
  loc_B86274: LitVarStr var_C8, "CantImpu"
  loc_B86279: PopAdLdVar
  loc_B8627A: FLdRfVar var_90
  loc_B8627D: FLdRfVar var_88
  loc_B86280: FLdPr Me
  loc_B86283: MemLdRfVar from_stack_1.global_52
  loc_B86286: NewIfNullPr clsimputacion
  loc_B86289: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B8628E: FLdPr var_88
  loc_B86291:  = Me.Fields
  loc_B86296: FLdPr var_90
  loc_B86299: from_stack_2 = Me.Item(from_stack_1)
  loc_B8629E: FLdPr var_CC
  loc_B862A1:  = Me.Value
  loc_B862A6: FLdRfVar var_A8
  loc_B862A9: CStrVarTmp
  loc_B862AA: FStStrNoPop var_D0
  loc_B862AD: FLdPr Me
  loc_B862B0: VCallAd Control_ID_CantImpuTxt
  loc_B862B3: FStAdFunc var_D4
  loc_B862B6: FLdPr var_D4
  loc_B862B9: Me.Text = from_stack_1
  loc_B862BE: FFree1Str var_D0
  loc_B862C1: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B862CC: FFree1Var var_A8 = ""
  loc_B862CF: FLdRfVar var_8A
  loc_B862D2: FLdPr Me
  loc_B862D5: VCallAd Control_ID_ImunImpuTxt
  loc_B862D8: FStAdFunc var_88
  loc_B862DB: FLdPr var_88
  loc_B862DE:  = Me.Enabled
  loc_B862E3: FLdI2 var_8A
  loc_B862E6: FFree1Ad var_88
  loc_B862E9: BranchF loc_B8634D
  loc_B862EC: FLdRfVar var_A8
  loc_B862EF: FLdRfVar var_CC
  loc_B862F2: LitVarStr var_C8, "ImunImpu"
  loc_B862F7: PopAdLdVar
  loc_B862F8: FLdRfVar var_90
  loc_B862FB: FLdRfVar var_88
  loc_B862FE: FLdPr Me
  loc_B86301: MemLdRfVar from_stack_1.global_52
  loc_B86304: NewIfNullPr clsimputacion
  loc_B86307: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B8630C: FLdPr var_88
  loc_B8630F:  = Me.Fields
  loc_B86314: FLdPr var_90
  loc_B86317: from_stack_2 = Me.Item(from_stack_1)
  loc_B8631C: FLdPr var_CC
  loc_B8631F:  = Me.Value
  loc_B86324: FLdRfVar var_A8
  loc_B86327: CStrVarTmp
  loc_B86328: FStStrNoPop var_D0
  loc_B8632B: FLdPr Me
  loc_B8632E: VCallAd Control_ID_ImunImpuTxt
  loc_B86331: FStAdFunc var_D4
  loc_B86334: FLdPr var_D4
  loc_B86337: Me.Text = from_stack_1
  loc_B8633C: FFree1Str var_D0
  loc_B8633F: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B8634A: FFree1Var var_A8 = ""
  loc_B8634D: FLdRfVar var_8A
  loc_B86350: FLdPr Me
  loc_B86353: VCallAd Control_ID_ImpoImpuTxt
  loc_B86356: FStAdFunc var_88
  loc_B86359: FLdPr var_88
  loc_B8635C:  = Me.Enabled
  loc_B86361: FLdI2 var_8A
  loc_B86364: FFree1Ad var_88
  loc_B86367: BranchF loc_B863CB
  loc_B8636A: FLdRfVar var_A8
  loc_B8636D: FLdRfVar var_CC
  loc_B86370: LitVarStr var_C8, "ImpoImpu"
  loc_B86375: PopAdLdVar
  loc_B86376: FLdRfVar var_90
  loc_B86379: FLdRfVar var_88
  loc_B8637C: FLdPr Me
  loc_B8637F: MemLdRfVar from_stack_1.global_52
  loc_B86382: NewIfNullPr clsimputacion
  loc_B86385: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B8638A: FLdPr var_88
  loc_B8638D:  = Me.Fields
  loc_B86392: FLdPr var_90
  loc_B86395: from_stack_2 = Me.Item(from_stack_1)
  loc_B8639A: FLdPr var_CC
  loc_B8639D:  = Me.Value
  loc_B863A2: FLdRfVar var_A8
  loc_B863A5: CStrVarTmp
  loc_B863A6: FStStrNoPop var_D0
  loc_B863A9: FLdPr Me
  loc_B863AC: VCallAd Control_ID_ImpoImpuTxt
  loc_B863AF: FStAdFunc var_D4
  loc_B863B2: FLdPr var_D4
  loc_B863B5: Me.Text = from_stack_1
  loc_B863BA: FFree1Str var_D0
  loc_B863BD: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B863C8: FFree1Var var_A8 = ""
  loc_B863CB: Branch loc_B8670A
  loc_B863CE: ILdRf var_98
  loc_B863D1: LitI4 &HC
  loc_B863D6: EqI4
  loc_B863D7: BranchF loc_B86557
  loc_B863DA: FLdRfVar var_8A
  loc_B863DD: FLdPr Me
  loc_B863E0: VCallAd Control_ID_CantImpuTxt
  loc_B863E3: FStAdFunc var_88
  loc_B863E6: FLdPr var_88
  loc_B863E9:  = Me.Enabled
  loc_B863EE: FLdI2 var_8A
  loc_B863F1: FFree1Ad var_88
  loc_B863F4: BranchF loc_B86458
  loc_B863F7: FLdRfVar var_A8
  loc_B863FA: FLdRfVar var_CC
  loc_B863FD: LitVarStr var_C8, "CantImpu"
  loc_B86402: PopAdLdVar
  loc_B86403: FLdRfVar var_90
  loc_B86406: FLdRfVar var_88
  loc_B86409: FLdPr Me
  loc_B8640C: MemLdRfVar from_stack_1.global_52
  loc_B8640F: NewIfNullPr clsimputacion
  loc_B86412: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B86417: FLdPr var_88
  loc_B8641A:  = Me.Fields
  loc_B8641F: FLdPr var_90
  loc_B86422: from_stack_2 = Me.Item(from_stack_1)
  loc_B86427: FLdPr var_CC
  loc_B8642A:  = Me.Value
  loc_B8642F: FLdRfVar var_A8
  loc_B86432: CStrVarTmp
  loc_B86433: FStStrNoPop var_D0
  loc_B86436: FLdPr Me
  loc_B86439: VCallAd Control_ID_CantImpuTxt
  loc_B8643C: FStAdFunc var_D4
  loc_B8643F: FLdPr var_D4
  loc_B86442: Me.Text = from_stack_1
  loc_B86447: FFree1Str var_D0
  loc_B8644A: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B86455: FFree1Var var_A8 = ""
  loc_B86458: FLdRfVar var_8A
  loc_B8645B: FLdPr Me
  loc_B8645E: VCallAd Control_ID_ImunImpuTxt
  loc_B86461: FStAdFunc var_88
  loc_B86464: FLdPr var_88
  loc_B86467:  = Me.Enabled
  loc_B8646C: FLdI2 var_8A
  loc_B8646F: FFree1Ad var_88
  loc_B86472: BranchF loc_B864D6
  loc_B86475: FLdRfVar var_A8
  loc_B86478: FLdRfVar var_CC
  loc_B8647B: LitVarStr var_C8, "ImunImpu"
  loc_B86480: PopAdLdVar
  loc_B86481: FLdRfVar var_90
  loc_B86484: FLdRfVar var_88
  loc_B86487: FLdPr Me
  loc_B8648A: MemLdRfVar from_stack_1.global_52
  loc_B8648D: NewIfNullPr clsimputacion
  loc_B86490: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B86495: FLdPr var_88
  loc_B86498:  = Me.Fields
  loc_B8649D: FLdPr var_90
  loc_B864A0: from_stack_2 = Me.Item(from_stack_1)
  loc_B864A5: FLdPr var_CC
  loc_B864A8:  = Me.Value
  loc_B864AD: FLdRfVar var_A8
  loc_B864B0: CStrVarTmp
  loc_B864B1: FStStrNoPop var_D0
  loc_B864B4: FLdPr Me
  loc_B864B7: VCallAd Control_ID_ImunImpuTxt
  loc_B864BA: FStAdFunc var_D4
  loc_B864BD: FLdPr var_D4
  loc_B864C0: Me.Text = from_stack_1
  loc_B864C5: FFree1Str var_D0
  loc_B864C8: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B864D3: FFree1Var var_A8 = ""
  loc_B864D6: FLdRfVar var_8A
  loc_B864D9: FLdPr Me
  loc_B864DC: VCallAd Control_ID_ImpoImpuTxt
  loc_B864DF: FStAdFunc var_88
  loc_B864E2: FLdPr var_88
  loc_B864E5:  = Me.Enabled
  loc_B864EA: FLdI2 var_8A
  loc_B864ED: FFree1Ad var_88
  loc_B864F0: BranchF loc_B86554
  loc_B864F3: FLdRfVar var_A8
  loc_B864F6: FLdRfVar var_CC
  loc_B864F9: LitVarStr var_C8, "ImpoImpu"
  loc_B864FE: PopAdLdVar
  loc_B864FF: FLdRfVar var_90
  loc_B86502: FLdRfVar var_88
  loc_B86505: FLdPr Me
  loc_B86508: MemLdRfVar from_stack_1.global_52
  loc_B8650B: NewIfNullPr clsimputacion
  loc_B8650E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B86513: FLdPr var_88
  loc_B86516:  = Me.Fields
  loc_B8651B: FLdPr var_90
  loc_B8651E: from_stack_2 = Me.Item(from_stack_1)
  loc_B86523: FLdPr var_CC
  loc_B86526:  = Me.Value
  loc_B8652B: FLdRfVar var_A8
  loc_B8652E: CStrVarTmp
  loc_B8652F: FStStrNoPop var_D0
  loc_B86532: FLdPr Me
  loc_B86535: VCallAd Control_ID_ImpoImpuTxt
  loc_B86538: FStAdFunc var_D4
  loc_B8653B: FLdPr var_D4
  loc_B8653E: Me.Text = from_stack_1
  loc_B86543: FFree1Str var_D0
  loc_B86546: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B86551: FFree1Var var_A8 = ""
  loc_B86554: Branch loc_B8670A
  loc_B86557: ILdRf var_98
  loc_B8655A: LitI4 &HD
  loc_B8655F: EqI4
  loc_B86560: BranchF loc_B866E0
  loc_B86563: FLdRfVar var_8A
  loc_B86566: FLdPr Me
  loc_B86569: VCallAd Control_ID_CantImpuTxt
  loc_B8656C: FStAdFunc var_88
  loc_B8656F: FLdPr var_88
  loc_B86572:  = Me.Enabled
  loc_B86577: FLdI2 var_8A
  loc_B8657A: FFree1Ad var_88
  loc_B8657D: BranchF loc_B865E1
  loc_B86580: FLdRfVar var_A8
  loc_B86583: FLdRfVar var_CC
  loc_B86586: LitVarStr var_C8, "CantImpu"
  loc_B8658B: PopAdLdVar
  loc_B8658C: FLdRfVar var_90
  loc_B8658F: FLdRfVar var_88
  loc_B86592: FLdPr Me
  loc_B86595: MemLdRfVar from_stack_1.global_52
  loc_B86598: NewIfNullPr clsimputacion
  loc_B8659B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B865A0: FLdPr var_88
  loc_B865A3:  = Me.Fields
  loc_B865A8: FLdPr var_90
  loc_B865AB: from_stack_2 = Me.Item(from_stack_1)
  loc_B865B0: FLdPr var_CC
  loc_B865B3:  = Me.Value
  loc_B865B8: FLdRfVar var_A8
  loc_B865BB: CStrVarTmp
  loc_B865BC: FStStrNoPop var_D0
  loc_B865BF: FLdPr Me
  loc_B865C2: VCallAd Control_ID_CantImpuTxt
  loc_B865C5: FStAdFunc var_D4
  loc_B865C8: FLdPr var_D4
  loc_B865CB: Me.Text = from_stack_1
  loc_B865D0: FFree1Str var_D0
  loc_B865D3: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B865DE: FFree1Var var_A8 = ""
  loc_B865E1: FLdRfVar var_8A
  loc_B865E4: FLdPr Me
  loc_B865E7: VCallAd Control_ID_ImunImpuTxt
  loc_B865EA: FStAdFunc var_88
  loc_B865ED: FLdPr var_88
  loc_B865F0:  = Me.Enabled
  loc_B865F5: FLdI2 var_8A
  loc_B865F8: FFree1Ad var_88
  loc_B865FB: BranchF loc_B8665F
  loc_B865FE: FLdRfVar var_A8
  loc_B86601: FLdRfVar var_CC
  loc_B86604: LitVarStr var_C8, "ImunImpu"
  loc_B86609: PopAdLdVar
  loc_B8660A: FLdRfVar var_90
  loc_B8660D: FLdRfVar var_88
  loc_B86610: FLdPr Me
  loc_B86613: MemLdRfVar from_stack_1.global_52
  loc_B86616: NewIfNullPr clsimputacion
  loc_B86619: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B8661E: FLdPr var_88
  loc_B86621:  = Me.Fields
  loc_B86626: FLdPr var_90
  loc_B86629: from_stack_2 = Me.Item(from_stack_1)
  loc_B8662E: FLdPr var_CC
  loc_B86631:  = Me.Value
  loc_B86636: FLdRfVar var_A8
  loc_B86639: CStrVarTmp
  loc_B8663A: FStStrNoPop var_D0
  loc_B8663D: FLdPr Me
  loc_B86640: VCallAd Control_ID_ImunImpuTxt
  loc_B86643: FStAdFunc var_D4
  loc_B86646: FLdPr var_D4
  loc_B86649: Me.Text = from_stack_1
  loc_B8664E: FFree1Str var_D0
  loc_B86651: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B8665C: FFree1Var var_A8 = ""
  loc_B8665F: FLdRfVar var_8A
  loc_B86662: FLdPr Me
  loc_B86665: VCallAd Control_ID_ImpoImpuTxt
  loc_B86668: FStAdFunc var_88
  loc_B8666B: FLdPr var_88
  loc_B8666E:  = Me.Enabled
  loc_B86673: FLdI2 var_8A
  loc_B86676: FFree1Ad var_88
  loc_B86679: BranchF loc_B866DD
  loc_B8667C: FLdRfVar var_A8
  loc_B8667F: FLdRfVar var_CC
  loc_B86682: LitVarStr var_C8, "ImpoImpu"
  loc_B86687: PopAdLdVar
  loc_B86688: FLdRfVar var_90
  loc_B8668B: FLdRfVar var_88
  loc_B8668E: FLdPr Me
  loc_B86691: MemLdRfVar from_stack_1.global_52
  loc_B86694: NewIfNullPr clsimputacion
  loc_B86697: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B8669C: FLdPr var_88
  loc_B8669F:  = Me.Fields
  loc_B866A4: FLdPr var_90
  loc_B866A7: from_stack_2 = Me.Item(from_stack_1)
  loc_B866AC: FLdPr var_CC
  loc_B866AF:  = Me.Value
  loc_B866B4: FLdRfVar var_A8
  loc_B866B7: CStrVarTmp
  loc_B866B8: FStStrNoPop var_D0
  loc_B866BB: FLdPr Me
  loc_B866BE: VCallAd Control_ID_ImpoImpuTxt
  loc_B866C1: FStAdFunc var_D4
  loc_B866C4: FLdPr var_D4
  loc_B866C7: Me.Text = from_stack_1
  loc_B866CC: FFree1Str var_D0
  loc_B866CF: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B866DA: FFree1Var var_A8 = ""
  loc_B866DD: Branch loc_B8670A
  loc_B866E0: ILdRf var_98
  loc_B866E3: LitI4 &HE
  loc_B866E8: EqI4
  loc_B866E9: BranchF loc_B866EF
  loc_B866EC: Branch loc_B8670A
  loc_B866EF: ILdRf var_98
  loc_B866F2: LitI4 &HF
  loc_B866F7: EqI4
  loc_B866F8: BranchF loc_B866FE
  loc_B866FB: Branch loc_B8670A
  loc_B866FE: ILdRf var_98
  loc_B86701: LitI4 &H10
  loc_B86706: EqI4
  loc_B86707: BranchF loc_B8670A
  loc_B8670A: ExitProcHresult
End Sub

Private Sub FefaDeveMsk_UnknownEvent_0 'AC50AC
  'Data Table: 500268
  loc_AC4ABC: FLdRfVar var_98
  loc_AC4ABF: FLdPr Me
  loc_AC4AC2: VCallAd Control_ID_CodiNopeLbl
  loc_AC4AC5: FStAdFunc var_94
  loc_AC4AC8: FLdPr var_94
  loc_AC4ACB:  = Me.Caption
  loc_AC4AD0: FLdRfVar var_A0
  loc_AC4AD3: FLdPr Me
  loc_AC4AD6: VCallAd Control_ID_CodiNopeLbl
  loc_AC4AD9: FStAdFunc var_9C
  loc_AC4ADC: FLdPr var_9C
  loc_AC4ADF:  = Me.Caption
  loc_AC4AE4: FLdZeroAd var_A0
  loc_AC4AE7: CVarStr var_E0
  loc_AC4AEA: LitVarI2 var_D0, 0
  loc_AC4AEF: ILdRf var_98
  loc_AC4AF2: LitStr vbNullString
  loc_AC4AF5: EqStr
  loc_AC4AF7: CVarBoolI2 var_B0
  loc_AC4AFB: FLdRfVar var_F0
  loc_AC4AFE: ImpAdCallFPR4  = IIf(, , )
  loc_AC4B03: FLdRfVar var_F0
  loc_AC4B06: CI2Var
  loc_AC4B07: FStI2 var_86
  loc_AC4B0A: FFree1Str var_98
  loc_AC4B0D: FFreeAd var_94 = ""
  loc_AC4B14: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AC4B1F: FLdRfVar var_98
  loc_AC4B22: FLdPr Me
  loc_AC4B25: VCallAd Control_ID_ItemLbl
  loc_AC4B28: FStAdFunc var_94
  loc_AC4B2B: FLdPr var_94
  loc_AC4B2E:  = Me.Caption
  loc_AC4B33: FLdRfVar var_A0
  loc_AC4B36: FLdPr Me
  loc_AC4B39: VCallAd Control_ID_ItemLbl
  loc_AC4B3C: FStAdFunc var_9C
  loc_AC4B3F: FLdPr var_9C
  loc_AC4B42:  = Me.Caption
  loc_AC4B47: FLdZeroAd var_A0
  loc_AC4B4A: CVarStr var_E0
  loc_AC4B4D: LitVarI2 var_D0, 0
  loc_AC4B52: ILdRf var_98
  loc_AC4B55: LitStr vbNullString
  loc_AC4B58: EqStr
  loc_AC4B5A: CVarBoolI2 var_B0
  loc_AC4B5E: FLdRfVar var_F0
  loc_AC4B61: ImpAdCallFPR4  = IIf(, , )
  loc_AC4B66: FLdRfVar var_F0
  loc_AC4B69: CI2Var
  loc_AC4B6A: FStI2 var_88
  loc_AC4B6D: FFree1Str var_98
  loc_AC4B70: FFreeAd var_94 = ""
  loc_AC4B77: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AC4B82: FLdRfVar var_98
  loc_AC4B85: FLdPr Me
  loc_AC4B88: VCallAd Control_ID_AlternLbl
  loc_AC4B8B: FStAdFunc var_94
  loc_AC4B8E: FLdPr var_94
  loc_AC4B91:  = Me.Caption
  loc_AC4B96: FLdRfVar var_A0
  loc_AC4B99: FLdPr Me
  loc_AC4B9C: VCallAd Control_ID_AlternLbl
  loc_AC4B9F: FStAdFunc var_9C
  loc_AC4BA2: FLdPr var_9C
  loc_AC4BA5:  = Me.Caption
  loc_AC4BAA: FLdZeroAd var_A0
  loc_AC4BAD: CVarStr var_E0
  loc_AC4BB0: LitVarI2 var_D0, 0
  loc_AC4BB5: ILdRf var_98
  loc_AC4BB8: LitStr vbNullString
  loc_AC4BBB: EqStr
  loc_AC4BBD: CVarBoolI2 var_B0
  loc_AC4BC1: FLdRfVar var_F0
  loc_AC4BC4: ImpAdCallFPR4  = IIf(, , )
  loc_AC4BC9: FLdRfVar var_F0
  loc_AC4BCC: CI2Var
  loc_AC4BCD: FStI2 var_8A
  loc_AC4BD0: FFree1Str var_98
  loc_AC4BD3: FFreeAd var_94 = ""
  loc_AC4BDA: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AC4BE5: FLdRfVar var_98
  loc_AC4BE8: FLdPr Me
  loc_AC4BEB: VCallAd Control_ID_CodiOrcoLbl
  loc_AC4BEE: FStAdFunc var_94
  loc_AC4BF1: FLdPr var_94
  loc_AC4BF4:  = Me.Caption
  loc_AC4BF9: FLdRfVar var_A0
  loc_AC4BFC: FLdPr Me
  loc_AC4BFF: VCallAd Control_ID_CodiOrcoLbl
  loc_AC4C02: FStAdFunc var_9C
  loc_AC4C05: FLdPr var_9C
  loc_AC4C08:  = Me.Caption
  loc_AC4C0D: FLdZeroAd var_A0
  loc_AC4C10: CVarStr var_E0
  loc_AC4C13: LitVarI2 var_D0, 0
  loc_AC4C18: ILdRf var_98
  loc_AC4C1B: LitStr vbNullString
  loc_AC4C1E: EqStr
  loc_AC4C20: CVarBoolI2 var_B0
  loc_AC4C24: FLdRfVar var_F0
  loc_AC4C27: ImpAdCallFPR4  = IIf(, , )
  loc_AC4C2C: FLdRfVar var_F0
  loc_AC4C2F: CI2Var
  loc_AC4C30: FStI2 var_8C
  loc_AC4C33: FFree1Str var_98
  loc_AC4C36: FFreeAd var_94 = ""
  loc_AC4C3D: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AC4C48: FLdRfVar var_98
  loc_AC4C4B: FLdPr Me
  loc_AC4C4E: VCallAd Control_ID_CodiReceLbl
  loc_AC4C51: FStAdFunc var_94
  loc_AC4C54: FLdPr var_94
  loc_AC4C57:  = Me.Caption
  loc_AC4C5C: FLdRfVar var_A0
  loc_AC4C5F: FLdPr Me
  loc_AC4C62: VCallAd Control_ID_CodiReceLbl
  loc_AC4C65: FStAdFunc var_9C
  loc_AC4C68: FLdPr var_9C
  loc_AC4C6B:  = Me.Caption
  loc_AC4C70: FLdZeroAd var_A0
  loc_AC4C73: CVarStr var_E0
  loc_AC4C76: LitVarI2 var_D0, 0
  loc_AC4C7B: ILdRf var_98
  loc_AC4C7E: LitStr vbNullString
  loc_AC4C81: EqStr
  loc_AC4C83: CVarBoolI2 var_B0
  loc_AC4C87: FLdRfVar var_F0
  loc_AC4C8A: ImpAdCallFPR4  = IIf(, , )
  loc_AC4C8F: FLdRfVar var_F0
  loc_AC4C92: CI2Var
  loc_AC4C93: FStI2 var_8E
  loc_AC4C96: FFree1Str var_98
  loc_AC4C99: FFreeAd var_94 = ""
  loc_AC4CA0: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AC4CAB: FLdPr Me
  loc_AC4CAE: VCallAd Control_ID_ExorImpuMsk
  loc_AC4CB1: FStAdFunc var_94
  loc_AC4CB4: FLdPr var_94
  loc_AC4CB7: LateIdLdVar var_D0 DispID_15 0
  loc_AC4CBE: PopAd
  loc_AC4CC0: FLdPr Me
  loc_AC4CC3: VCallAd Control_ID_CodiPartMsk
  loc_AC4CC6: FStAdFunc var_9C
  loc_AC4CC9: FLdPr var_9C
  loc_AC4CCC: LateIdLdVar var_E0 DispID_22 0
  loc_AC4CD3: PopAd
  loc_AC4CD5: FLdPr Me
  loc_AC4CD8: VCallAd Control_ID_CodiOrgaMsk
  loc_AC4CDB: FStAdFunc var_F4
  loc_AC4CDE: FLdPr var_F4
  loc_AC4CE1: LateIdLdVar var_F0 DispID_22 0
  loc_AC4CE8: PopAd
  loc_AC4CEA: FLdRfVar var_FC
  loc_AC4CED: FLdRfVar var_F0
  loc_AC4CF0: CStrVarTmp
  loc_AC4CF1: FStStrNoPop var_F8
  loc_AC4CF4: FLdRfVar var_E0
  loc_AC4CF7: CStrVarTmp
  loc_AC4CF8: FStStrNoPop var_A0
  loc_AC4CFB: FLdI2 var_8E
  loc_AC4CFE: FLdI2 var_8C
  loc_AC4D01: FLdI2 var_8A
  loc_AC4D04: FLdI2 var_88
  loc_AC4D07: FLdI2 var_86
  loc_AC4D0A: CI4UI1
  loc_AC4D0B: FLdRfVar var_D0
  loc_AC4D0E: CStrVarTmp
  loc_AC4D0F: FStStrNoPop var_98
  loc_AC4D12: LitI2_Byte 5
  loc_AC4D14: ImpAdLdI2 MemVar_C3D064
  loc_AC4D17: FLdPr Me
  loc_AC4D1A: MemLdRfVar from_stack_1.global_52
  loc_AC4D1D: NewIfNullPr clsimputacion
  loc_AC4D20: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_AC4D25: FLdZeroAd var_FC
  loc_AC4D28: CVarStr var_10C
  loc_AC4D2B: PopAdLdVar
  loc_AC4D2C: FLdPr Me
  loc_AC4D2F: VCallAd Control_ID_FefaDeveMsk
  loc_AC4D32: FStAdFunc var_110
  loc_AC4D35: FLdPr var_110
  loc_AC4D38: LateIdSt
  loc_AC4D3D: FFreeStr var_98 = "": var_A0 = ""
  loc_AC4D46: FFreeAd var_94 = "": var_9C = "": var_F4 = ""
  loc_AC4D51: FFreeVar var_D0 = "": var_E0 = "": var_F0 = ""
  loc_AC4D5C: FLdPr Me
  loc_AC4D5F: VCallAd Control_ID_FefaDeveMsk
  loc_AC4D62: FStAdFunc var_94
  loc_AC4D65: FLdPr var_94
  loc_AC4D68: LateIdLdVar var_D0 DispID_11 -32767
  loc_AC4D6F: CStrVarTmp
  loc_AC4D70: CVarStr var_E0
  loc_AC4D73: PopAdLdVar
  loc_AC4D74: FLdPr Me
  loc_AC4D77: VCallAd Control_ID_FefaDeveMsk
  loc_AC4D7A: FStAdFunc var_9C
  loc_AC4D7D: FLdPr var_9C
  loc_AC4D80: LateIdSt
  loc_AC4D85: FFreeAd var_94 = ""
  loc_AC4D8C: FFreeVar var_D0 = ""
  loc_AC4D93: FLdPr Me
  loc_AC4D96: MemLdI2 global_190
  loc_AC4D99: BranchF loc_AC4E60
  loc_AC4D9C: FLdPr Me
  loc_AC4D9F: VCallAd Control_ID_FefaDeveMsk
  loc_AC4DA2: FStAdFunc var_9C
  loc_AC4DA5: FLdPr var_9C
  loc_AC4DA8: LateIdLdVar var_E0 DispID_11 -32767
  loc_AC4DAF: PopAd
  loc_AC4DB1: FLdPr Me
  loc_AC4DB4: VCallAd Control_ID_FechDeveMsk
  loc_AC4DB7: FStAdFunc var_94
  loc_AC4DBA: FLdPr var_94
  loc_AC4DBD: LateIdLdVar var_D0 DispID_15 0
  loc_AC4DC4: CStrVarTmp
  loc_AC4DC5: FStStrNoPop var_98
  loc_AC4DC8: CDateStr
  loc_AC4DCA: FLdRfVar var_E0
  loc_AC4DCD: CStrVarTmp
  loc_AC4DCE: FStStrNoPop var_A0
  loc_AC4DD1: CDateStr
  loc_AC4DD3: GtR4
  loc_AC4DD4: FFreeStr var_98 = ""
  loc_AC4DDB: FFreeAd var_94 = ""
  loc_AC4DE2: FFreeVar var_D0 = ""
  loc_AC4DE9: BranchF loc_AC4E26
  loc_AC4DEC: FLdPr Me
  loc_AC4DEF: VCallAd Control_ID_FechDeveMsk
  loc_AC4DF2: FStAdFunc var_94
  loc_AC4DF5: FLdPr var_94
  loc_AC4DF8: LateIdLdVar var_D0 DispID_15 0
  loc_AC4DFF: CStrVarTmp
  loc_AC4E00: CVarStr var_E0
  loc_AC4E03: PopAdLdVar
  loc_AC4E04: FLdPr Me
  loc_AC4E07: VCallAd Control_ID_FefaDeveMsk
  loc_AC4E0A: FStAdFunc var_9C
  loc_AC4E0D: FLdPr var_9C
  loc_AC4E10: LateIdSt
  loc_AC4E15: FFreeAd var_94 = ""
  loc_AC4E1C: FFreeVar var_D0 = ""
  loc_AC4E23: Branch loc_AC4E5D
  loc_AC4E26: FLdPr Me
  loc_AC4E29: VCallAd Control_ID_FefaDeveMsk
  loc_AC4E2C: FStAdFunc var_94
  loc_AC4E2F: FLdPr var_94
  loc_AC4E32: LateIdLdVar var_D0 DispID_11 -32767
  loc_AC4E39: CStrVarTmp
  loc_AC4E3A: CVarStr var_E0
  loc_AC4E3D: PopAdLdVar
  loc_AC4E3E: FLdPr Me
  loc_AC4E41: VCallAd Control_ID_FefaDeveMsk
  loc_AC4E44: FStAdFunc var_9C
  loc_AC4E47: FLdPr var_9C
  loc_AC4E4A: LateIdSt
  loc_AC4E4F: FFreeAd var_94 = ""
  loc_AC4E56: FFreeVar var_D0 = ""
  loc_AC4E5D: Branch loc_AC4F6F
  loc_AC4E60: FLdPr Me
  loc_AC4E63: VCallAd Control_ID_FechDeveMsk
  loc_AC4E66: FStAdFunc var_94
  loc_AC4E69: FLdPr var_94
  loc_AC4E6C: LateIdLdVar var_D0 DispID_11 -32767
  loc_AC4E73: CStrVarTmp
  loc_AC4E74: CVarStr var_E0
  loc_AC4E77: ImpAdCallI2 IsDate()
  loc_AC4E7C: FLdPr Me
  loc_AC4E7F: VCallAd Control_ID_FefaDeveMsk
  loc_AC4E82: FStAdFunc var_9C
  loc_AC4E85: FLdPr var_9C
  loc_AC4E88: LateIdLdVar var_F0 DispID_11 -32767
  loc_AC4E8F: CStrVarTmp
  loc_AC4E90: CVarStr var_10C
  loc_AC4E93: ImpAdCallI2 IsDate()
  loc_AC4E98: AndI4
  loc_AC4E99: FFreeAd var_94 = ""
  loc_AC4EA0: FFreeVar var_D0 = "": var_E0 = "": var_F0 = ""
  loc_AC4EAB: BranchF loc_AC4F6F
  loc_AC4EAE: FLdPr Me
  loc_AC4EB1: VCallAd Control_ID_FefaDeveMsk
  loc_AC4EB4: FStAdFunc var_9C
  loc_AC4EB7: FLdPr var_9C
  loc_AC4EBA: LateIdLdVar var_E0 DispID_11 -32767
  loc_AC4EC1: PopAd
  loc_AC4EC3: FLdPr Me
  loc_AC4EC6: VCallAd Control_ID_FechDeveMsk
  loc_AC4EC9: FStAdFunc var_94
  loc_AC4ECC: FLdPr var_94
  loc_AC4ECF: LateIdLdVar var_D0 DispID_15 0
  loc_AC4ED6: CStrVarTmp
  loc_AC4ED7: FStStrNoPop var_98
  loc_AC4EDA: CDateStr
  loc_AC4EDC: FLdRfVar var_E0
  loc_AC4EDF: CStrVarTmp
  loc_AC4EE0: FStStrNoPop var_A0
  loc_AC4EE3: CDateStr
  loc_AC4EE5: GtR4
  loc_AC4EE6: FFreeStr var_98 = ""
  loc_AC4EED: FFreeAd var_94 = ""
  loc_AC4EF4: FFreeVar var_D0 = ""
  loc_AC4EFB: BranchF loc_AC4F38
  loc_AC4EFE: FLdPr Me
  loc_AC4F01: VCallAd Control_ID_FechDeveMsk
  loc_AC4F04: FStAdFunc var_94
  loc_AC4F07: FLdPr var_94
  loc_AC4F0A: LateIdLdVar var_D0 DispID_15 0
  loc_AC4F11: CStrVarTmp
  loc_AC4F12: CVarStr var_E0
  loc_AC4F15: PopAdLdVar
  loc_AC4F16: FLdPr Me
  loc_AC4F19: VCallAd Control_ID_FefaDeveMsk
  loc_AC4F1C: FStAdFunc var_9C
  loc_AC4F1F: FLdPr var_9C
  loc_AC4F22: LateIdSt
  loc_AC4F27: FFreeAd var_94 = ""
  loc_AC4F2E: FFreeVar var_D0 = ""
  loc_AC4F35: Branch loc_AC4F6F
  loc_AC4F38: FLdPr Me
  loc_AC4F3B: VCallAd Control_ID_FefaDeveMsk
  loc_AC4F3E: FStAdFunc var_94
  loc_AC4F41: FLdPr var_94
  loc_AC4F44: LateIdLdVar var_D0 DispID_11 -32767
  loc_AC4F4B: CStrVarTmp
  loc_AC4F4C: CVarStr var_E0
  loc_AC4F4F: PopAdLdVar
  loc_AC4F50: FLdPr Me
  loc_AC4F53: VCallAd Control_ID_FefaDeveMsk
  loc_AC4F56: FStAdFunc var_9C
  loc_AC4F59: FLdPr var_9C
  loc_AC4F5C: LateIdSt
  loc_AC4F61: FFreeAd var_94 = ""
  loc_AC4F68: FFreeVar var_D0 = ""
  loc_AC4F6F: FLdPr Me
  loc_AC4F72: VCallAd Control_ID_FechDeveMsk
  loc_AC4F75: FStAdFunc var_94
  loc_AC4F78: FLdPr var_94
  loc_AC4F7B: LateIdLdVar var_D0 DispID_15 0
  loc_AC4F82: CStrVarTmp
  loc_AC4F83: CVarStr var_E0
  loc_AC4F86: ImpAdCallI2 IsDate()
  loc_AC4F8B: FLdPr Me
  loc_AC4F8E: VCallAd Control_ID_FefaDeveMsk
  loc_AC4F91: FStAdFunc var_9C
  loc_AC4F94: FLdPr var_9C
  loc_AC4F97: LateIdLdVar var_F0 DispID_15 0
  loc_AC4F9E: CStrVarTmp
  loc_AC4F9F: CVarStr var_10C
  loc_AC4FA2: ImpAdCallI2 IsDate()
  loc_AC4FA7: AndI4
  loc_AC4FA8: FFreeAd var_94 = ""
  loc_AC4FAF: FFreeVar var_D0 = "": var_E0 = "": var_F0 = ""
  loc_AC4FBA: BranchF loc_AC5098
  loc_AC4FBD: FLdPr Me
  loc_AC4FC0: VCallAd Control_ID_FefaDeveMsk
  loc_AC4FC3: FStAdFunc var_F4
  loc_AC4FC6: FLdPr var_F4
  loc_AC4FC9: LateIdLdVar var_F0 DispID_15 0
  loc_AC4FD0: PopAd
  loc_AC4FD2: FLdPr Me
  loc_AC4FD5: VCallAd Control_ID_FechDeveMsk
  loc_AC4FD8: FStAdFunc var_94
  loc_AC4FDB: FLdPr var_94
  loc_AC4FDE: LateIdLdVar var_D0 DispID_13 -32767
  loc_AC4FE5: CBoolVar
  loc_AC4FE7: LitI2_Byte &HFF
  loc_AC4FE9: EqI2
  loc_AC4FEA: FLdPr Me
  loc_AC4FED: VCallAd Control_ID_FechDeveMsk
  loc_AC4FF0: FStAdFunc var_9C
  loc_AC4FF3: FLdPr var_9C
  loc_AC4FF6: LateIdLdVar var_E0 DispID_15 0
  loc_AC4FFD: CStrVarTmp
  loc_AC4FFE: FStStrNoPop var_98
  loc_AC5001: CDateStr
  loc_AC5003: FLdRfVar var_F0
  loc_AC5006: CStrVarTmp
  loc_AC5007: FStStrNoPop var_A0
  loc_AC500A: CDateStr
  loc_AC500C: LtR8
  loc_AC500D: AndI4
  loc_AC500E: FFreeStr var_98 = ""
  loc_AC5015: FFreeAd var_94 = "": var_9C = ""
  loc_AC501E: FFreeVar var_D0 = "": var_E0 = ""
  loc_AC5027: BranchF loc_AC5098
  loc_AC502A: FLdPr Me
  loc_AC502D: VCallAd Control_ID_FechDeveMsk
  loc_AC5030: FStAdFunc var_94
  loc_AC5033: FLdPr var_94
  loc_AC5036: LateIdLdVar var_D0 DispID_15 0
  loc_AC503D: CStrVarTmp
  loc_AC503E: CVarStr var_E0
  loc_AC5041: PopAdLdVar
  loc_AC5042: FLdPr Me
  loc_AC5045: VCallAd Control_ID_FefaDeveMsk
  loc_AC5048: FStAdFunc var_9C
  loc_AC504B: FLdPr var_9C
  loc_AC504E: LateIdSt
  loc_AC5053: FFreeAd var_94 = ""
  loc_AC505A: FFreeVar var_D0 = ""
  loc_AC5061: FLdPr Me
  loc_AC5064: VCallAd Control_ID_FefaDeveMsk
  loc_AC5067: FStAdFunc var_94
  loc_AC506A: FLdPr var_94
  loc_AC506D: LateIdLdVar var_D0 DispID_11 -32767
  loc_AC5074: CStrVarTmp
  loc_AC5075: CVarStr var_E0
  loc_AC5078: PopAdLdVar
  loc_AC5079: FLdPr Me
  loc_AC507C: VCallAd Control_ID_FefaDeveMsk
  loc_AC507F: FStAdFunc var_9C
  loc_AC5082: FLdPr var_9C
  loc_AC5085: LateIdSt
  loc_AC508A: FFreeAd var_94 = ""
  loc_AC5091: FFreeVar var_D0 = ""
  loc_AC5098: FLdPr Me
  loc_AC509B: VCallAd Control_ID_FefaDeveMsk
  loc_AC509E: CVarAd
  loc_AC50A2: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_AC50A7: FFree1Var var_D0 = ""
  loc_AC50AA: ExitProcHresult
End Sub

Private Function FefaDeveMsk_UnknownEvent_8(arg_C) 'A7C6A0
  'Data Table: 500268
  loc_A7C2C0: FLdRfVar var_8A
  loc_A7C2C3: FLdPr Me
  loc_A7C2C6: VCallAd Control_ID_cmdCancelar
  loc_A7C2C9: FStAdFunc var_88
  loc_A7C2CC: FLdPr var_88
  loc_A7C2CF:  = Me.Value
  loc_A7C2D4: FLdI2 var_8A
  loc_A7C2D7: NotI4
  loc_A7C2D8: FLdPr Me
  loc_A7C2DB: VCallAd Control_ID_FefaDeveMsk
  loc_A7C2DE: FStAdFunc var_90
  loc_A7C2E1: FLdPr var_90
  loc_A7C2E4: LateIdLdVar var_A0 DispID_13 -32767
  loc_A7C2EB: CBoolVar
  loc_A7C2ED: AndI4
  loc_A7C2EE: FFreeAd var_88 = ""
  loc_A7C2F5: FFree1Var var_A0 = ""
  loc_A7C2F8: BranchF loc_A7C69C
  loc_A7C2FB: FLdPr Me
  loc_A7C2FE: VCallAd Control_ID_FefaDeveMsk
  loc_A7C301: FStAdFunc var_88
  loc_A7C304: FLdPr var_88
  loc_A7C307: LateIdLdVar var_A0 DispID_15 0
  loc_A7C30E: PopAd
  loc_A7C310: FLdPr Me
  loc_A7C313: VCallAd Control_ID_FefaDeveMsk
  loc_A7C316: FStAdFunc var_90
  loc_A7C319: FLdPr var_90
  loc_A7C31C: LateIdLdVar var_B0 DispID_11 -32767
  loc_A7C323: PopAd
  loc_A7C325: FLdPr Me
  loc_A7C328: VCallAd Control_ID_FefaDeveMsk
  loc_A7C32B: FStAdFunc var_C4
  loc_A7C32E: LitI2_Byte &HFF
  loc_A7C330: PopTmpLdAd2 var_8A
  loc_A7C333: FLdZeroAd var_C4
  loc_A7C336: FStAdFunc var_BC
  loc_A7C339: FLdRfVar var_BC
  loc_A7C33C: FLdRfVar var_B0
  loc_A7C33F: CStrVarTmp
  loc_A7C340: FStStrNoPop var_B8
  loc_A7C343: LitI2_Byte 0
  loc_A7C345: LitI2_Byte &HFF
  loc_A7C347: FLdRfVar var_A0
  loc_A7C34A: CStrVarTmp
  loc_A7C34B: FStStrNoPop var_B4
  loc_A7C34E: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A7C353: FStStrNoPop var_C0
  loc_A7C356: FLdPr Me
  loc_A7C359: MemStStrCopy
  loc_A7C35D: FFreeStr var_B4 = "": var_B8 = ""
  loc_A7C366: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_A7C371: FFreeVar var_A0 = ""
  loc_A7C378: LitStr "Municipalidad de Guaymallén"
  loc_A7C37B: LitStr "Municipalidad de Maipú"
  loc_A7C37E: EqStr
  loc_A7C380: FLdRfVar var_C8
  loc_A7C383: FLdRfVar var_8A
  loc_A7C386: FLdPr Me
  loc_A7C389: VCallAd Control_ID_cboSeleccion
  loc_A7C38C: FStAdFunc var_88
  loc_A7C38F: FLdPr var_88
  loc_A7C392:  = Me.ListIndex
  loc_A7C397: FLdI2 var_8A
  loc_A7C39A: FLdPr Me
  loc_A7C39D: VCallAd Control_ID_cboSeleccion
  loc_A7C3A0: FStAdFunc var_90
  loc_A7C3A3: FLdPr var_90
  loc_A7C3A6:  = Me.ItemData
  loc_A7C3AB: ILdRf var_C8
  loc_A7C3AE: LitI4 7
  loc_A7C3B3: EqI4
  loc_A7C3B4: AndI4
  loc_A7C3B5: FFreeAd var_88 = ""
  loc_A7C3BC: BranchF loc_A7C3C9
  loc_A7C3BF: LitStr vbNullString
  loc_A7C3C2: FLdPr Me
  loc_A7C3C5: MemStStrCopy
  loc_A7C3C9: FLdPr Me
  loc_A7C3CC: MemLdStr global_64
  loc_A7C3CF: LitStr vbNullString
  loc_A7C3D2: NeStr
  loc_A7C3D4: BranchF loc_A7C4E7
  loc_A7C3D7: LitStr "Fecha factura: "
  loc_A7C3DA: FLdPr Me
  loc_A7C3DD: MemLdStr global_64
  loc_A7C3E0: ConcatStr
  loc_A7C3E1: FStStrNoPop var_B4
  loc_A7C3E4: FLdPr Me
  loc_A7C3E7: MemStStrCopy
  loc_A7C3EB: FFree1Str var_B4
  loc_A7C3EE: LitStr "Municipalidad de Guaymallén"
  loc_A7C3F1: LitStr "Municipalidad de Maipú"
  loc_A7C3F4: EqStr
  loc_A7C3F6: ImpAdLdI4 MemVar_C3D03C
  loc_A7C3F9: LitStr "root"
  loc_A7C3FC: EqStr
  loc_A7C3FE: ImpAdLdI4 MemVar_C3D03C
  loc_A7C401: LitStr "Nati"
  loc_A7C404: EqStr
  loc_A7C406: OrI4
  loc_A7C407: ImpAdLdI4 MemVar_C3D03C
  loc_A7C40A: LitStr "Gaechiar"
  loc_A7C40D: EqStr
  loc_A7C40F: OrI4
  loc_A7C410: AndI4
  loc_A7C411: BranchF loc_A7C4A4
  loc_A7C414: FLdRfVar var_C8
  loc_A7C417: FLdRfVar var_8A
  loc_A7C41A: FLdPr Me
  loc_A7C41D: VCallAd Control_ID_cboSeleccion
  loc_A7C420: FStAdFunc var_88
  loc_A7C423: FLdPr var_88
  loc_A7C426:  = Me.ListIndex
  loc_A7C42B: FLdI2 var_8A
  loc_A7C42E: FLdPr Me
  loc_A7C431: VCallAd Control_ID_cboSeleccion
  loc_A7C434: FStAdFunc var_90
  loc_A7C437: FLdPr var_90
  loc_A7C43A:  = Me.ItemData
  loc_A7C43F: ILdRf var_C8
  loc_A7C442: LitI4 3
  loc_A7C447: EqI4
  loc_A7C448: FFreeAd var_88 = ""
  loc_A7C44F: BranchF loc_A7C4A4
  loc_A7C452: FLdPr Me
  loc_A7C455: VCallAd Control_ID_FechImpuMsk
  loc_A7C458: FStAdFunc var_88
  loc_A7C45B: FLdPr var_88
  loc_A7C45E: LateIdLdVar var_A0 DispID_15 0
  loc_A7C465: CStrVarTmp
  loc_A7C466: FStStrNoPop var_B4
  loc_A7C469: FLdPr Me
  loc_A7C46C: VCallAd Control_ID_FechDeveMsk
  loc_A7C46F: FStAdFunc var_90
  loc_A7C472: FLdPr var_90
  loc_A7C475: LateIdLdVar var_B0 DispID_15 0
  loc_A7C47C: CStrVarTmp
  loc_A7C47D: FStStrNoPop var_B8
  loc_A7C480: EqStr
  loc_A7C482: FFreeStr var_B4 = ""
  loc_A7C489: FFreeAd var_88 = ""
  loc_A7C490: FFreeVar var_A0 = ""
  loc_A7C497: BranchF loc_A7C4A4
  loc_A7C49A: LitStr vbNullString
  loc_A7C49D: FLdPr Me
  loc_A7C4A0: MemStStrCopy
  loc_A7C4A4: FLdPr Me
  loc_A7C4A7: VCallAd Control_ID_FefaDeveMsk
  loc_A7C4AA: FStAdFunc var_C4
  loc_A7C4AD: LitNothing
  loc_A7C4AF: CastAd
  loc_A7C4B2: FStAdFunc var_BC
  loc_A7C4B5: FLdRfVar var_BC
  loc_A7C4B8: FLdZeroAd var_C4
  loc_A7C4BB: FStAdFuncNoPop
  loc_A7C4BE: CastAd
  loc_A7C4C1: FStAdFunc var_90
  loc_A7C4C4: FLdRfVar var_90
  loc_A7C4C7: FLdPr Me
  loc_A7C4CA: MemLdRfVar from_stack_1.global_64
  loc_A7C4CD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7C4D2: IStI2 arg_C
  loc_A7C4D5: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_A7C4E0: ILdI2 arg_C
  loc_A7C4E3: BranchF loc_A7C4E7
  loc_A7C4E6: ExitProcHresult
  loc_A7C4E7: FLdPr Me
  loc_A7C4EA: VCallAd Control_ID_FefaDeveMsk
  loc_A7C4ED: FStAdFunc var_88
  loc_A7C4F0: FLdPr var_88
  loc_A7C4F3: LateIdLdVar var_A0 DispID_15 0
  loc_A7C4FA: CStrVarTmp
  loc_A7C4FB: CVarStr var_B0
  loc_A7C4FE: ImpAdCallI2 IsDate()
  loc_A7C503: FLdPr Me
  loc_A7C506: VCallAd Control_ID_FechDeveMsk
  loc_A7C509: FStAdFunc var_90
  loc_A7C50C: FLdPr var_90
  loc_A7C50F: LateIdLdVar var_D8 DispID_15 0
  loc_A7C516: CStrVarTmp
  loc_A7C517: CVarStr var_E8
  loc_A7C51A: ImpAdCallI2 IsDate()
  loc_A7C51F: AndI4
  loc_A7C520: FFreeAd var_88 = ""
  loc_A7C527: FFreeVar var_A0 = "": var_B0 = "": var_D8 = ""
  loc_A7C532: BranchF loc_A7C5CB
  loc_A7C535: FLdPr Me
  loc_A7C538: VCallAd Control_ID_FechDeveMsk
  loc_A7C53B: FStAdFunc var_90
  loc_A7C53E: FLdPr var_90
  loc_A7C541: LateIdLdVar var_B0 DispID_15 0
  loc_A7C548: PopAd
  loc_A7C54A: FLdPr Me
  loc_A7C54D: VCallAd Control_ID_FefaDeveMsk
  loc_A7C550: FStAdFunc var_88
  loc_A7C553: FLdPr var_88
  loc_A7C556: LateIdLdVar var_A0 DispID_15 0
  loc_A7C55D: CStrVarTmp
  loc_A7C55E: FStStrNoPop var_B4
  loc_A7C561: CDateStr
  loc_A7C563: FLdRfVar var_B0
  loc_A7C566: CStrVarTmp
  loc_A7C567: FStStrNoPop var_B8
  loc_A7C56A: CDateStr
  loc_A7C56C: GtR4
  loc_A7C56D: FFreeStr var_B4 = ""
  loc_A7C574: FFreeAd var_88 = ""
  loc_A7C57B: FFreeVar var_A0 = ""
  loc_A7C582: BranchF loc_A7C58F
  loc_A7C585: LitStr "La Fecha de factura es posterior a la Fecha Devengada. Verifique..."
  loc_A7C588: FLdPr Me
  loc_A7C58B: MemStStrCopy
  loc_A7C58F: FLdPr Me
  loc_A7C592: VCallAd Control_ID_FefaDeveMsk
  loc_A7C595: FStAdFunc var_C4
  loc_A7C598: LitNothing
  loc_A7C59A: CastAd
  loc_A7C59D: FStAdFunc var_BC
  loc_A7C5A0: FLdRfVar var_BC
  loc_A7C5A3: FLdZeroAd var_C4
  loc_A7C5A6: FStAdFuncNoPop
  loc_A7C5A9: CastAd
  loc_A7C5AC: FStAdFunc var_90
  loc_A7C5AF: FLdRfVar var_90
  loc_A7C5B2: FLdPr Me
  loc_A7C5B5: MemLdRfVar from_stack_1.global_64
  loc_A7C5B8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7C5BD: IStI2 arg_C
  loc_A7C5C0: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_A7C5CB: LitStr "Municipalidad de Guaymallén"
  loc_A7C5CE: LitStr "Municipalidad de Maipú"
  loc_A7C5D1: EqStr
  loc_A7C5D3: ImpAdLdI4 MemVar_C3D03C
  loc_A7C5D6: LitStr "root"
  loc_A7C5D9: EqStr
  loc_A7C5DB: ImpAdLdI4 MemVar_C3D03C
  loc_A7C5DE: LitStr "Nati"
  loc_A7C5E1: EqStr
  loc_A7C5E3: OrI4
  loc_A7C5E4: ImpAdLdI4 MemVar_C3D03C
  loc_A7C5E7: LitStr "Gaechiar"
  loc_A7C5EA: EqStr
  loc_A7C5EC: OrI4
  loc_A7C5ED: AndI4
  loc_A7C5EE: BranchF loc_A7C69C
  loc_A7C5F1: FLdRfVar var_C8
  loc_A7C5F4: FLdRfVar var_8A
  loc_A7C5F7: FLdPr Me
  loc_A7C5FA: VCallAd Control_ID_cboSeleccion
  loc_A7C5FD: FStAdFunc var_88
  loc_A7C600: FLdPr var_88
  loc_A7C603:  = Me.ListIndex
  loc_A7C608: FLdI2 var_8A
  loc_A7C60B: FLdPr Me
  loc_A7C60E: VCallAd Control_ID_cboSeleccion
  loc_A7C611: FStAdFunc var_90
  loc_A7C614: FLdPr var_90
  loc_A7C617:  = Me.ItemData
  loc_A7C61C: ILdRf var_C8
  loc_A7C61F: LitI4 3
  loc_A7C624: EqI4
  loc_A7C625: FFreeAd var_88 = ""
  loc_A7C62C: BranchF loc_A7C69C
  loc_A7C62F: FLdPr Me
  loc_A7C632: VCallAd Control_ID_FechImpuMsk
  loc_A7C635: FStAdFunc var_88
  loc_A7C638: FLdPr var_88
  loc_A7C63B: LateIdLdVar var_A0 DispID_15 0
  loc_A7C642: CStrVarTmp
  loc_A7C643: FStStrNoPop var_B4
  loc_A7C646: FLdPr Me
  loc_A7C649: VCallAd Control_ID_FechDeveMsk
  loc_A7C64C: FStAdFunc var_90
  loc_A7C64F: FLdPr var_90
  loc_A7C652: LateIdLdVar var_B0 DispID_15 0
  loc_A7C659: CStrVarTmp
  loc_A7C65A: FStStrNoPop var_B8
  loc_A7C65D: EqStr
  loc_A7C65F: FFreeStr var_B4 = ""
  loc_A7C666: FFreeAd var_88 = ""
  loc_A7C66D: FFreeVar var_A0 = ""
  loc_A7C674: BranchF loc_A7C69C
  loc_A7C677: FLdPr Me
  loc_A7C67A: MemLdStr global_64
  loc_A7C67D: LitStr vbNullString
  loc_A7C680: NeStr
  loc_A7C682: BranchF loc_A7C69C
  loc_A7C685: LitStr "Advertencia: "
  loc_A7C688: FLdPr Me
  loc_A7C68B: MemLdStr global_64
  loc_A7C68E: ConcatStr
  loc_A7C68F: FStStrNoPop var_B4
  loc_A7C692: FLdPr Me
  loc_A7C695: MemStStrCopy
  loc_A7C699: FFree1Str var_B4
  loc_A7C69C: ExitProcHresult
  loc_A7C69D: ImpAdLdFPR4 MemVar_518860
End Function

Private Sub FefaDeveMsk_KeyPress(KeyAscii As Integer) '98A8F8
  'Data Table: 500268
  loc_98A8B4: ILdI2 KeyAscii
  loc_98A8B7: CI4UI1
  loc_98A8B8: LitI4 &H20
  loc_98A8BD: EqI4
  loc_98A8BE: BranchF loc_98A8F4
  loc_98A8C1: LitVar_Missing var_A4
  loc_98A8C4: PopAdLdVar
  loc_98A8C5: LitVarI4
  loc_98A8CD: PopAdLdVar
  loc_98A8CE: ImpAdLdRf MemVar_C3D9A8
  loc_98A8D1: NewIfNullPr frmCalendario
  loc_98A8D4: frmCalendario.Show from_stack_1, from_stack_2
  loc_98A8D9: ImpAdLdRf MemVar_C3D038
  loc_98A8DC: CDargRef
  loc_98A8E0: FLdPr Me
  loc_98A8E3: VCallAd Control_ID_FefaDeveMsk
  loc_98A8E6: FStAdFunc var_A8
  loc_98A8E9: FLdPr var_A8
  loc_98A8EC: LateIdSt
  loc_98A8F1: FFree1Ad var_A8
  loc_98A8F4: ExitProcHresult
  loc_98A8F5: FLdRfVar arg_15
End Sub

Private Sub CodiUngaTxt_GotFocus() '99332C
  'Data Table: 500268
  loc_9932DC: FLdRfVar var_8C
  loc_9932DF: FLdPr Me
  loc_9932E2: VCallAd Control_ID_CodiUngaTxt
  loc_9932E5: FStAdFunc var_88
  loc_9932E8: FLdPr var_88
  loc_9932EB:  = Me.Text
  loc_9932F0: ILdRf var_8C
  loc_9932F3: LitStr vbNullString
  loc_9932F6: EqStr
  loc_9932F8: FFree1Str var_8C
  loc_9932FB: FFree1Ad var_88
  loc_9932FE: BranchF loc_993318
  loc_993301: LitStr "1"
  loc_993304: FLdPr Me
  loc_993307: VCallAd Control_ID_CodiUngaTxt
  loc_99330A: FStAdFunc var_88
  loc_99330D: FLdPr var_88
  loc_993310: Me.Text = from_stack_1
  loc_993315: FFree1Ad var_88
  loc_993318: FLdPr Me
  loc_99331B: VCallAd Control_ID_CodiUngaTxt
  loc_99331E: CVarAd
  loc_993322: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_993327: FFree1Var var_9C = ""
  loc_99332A: ExitProcHresult
End Sub

Private Sub CodiUngaTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A01D98
  'Data Table: 500268
  loc_A01C44: ILdI2 Shift
  loc_A01C47: CI4UI1
  loc_A01C48: LitI4 2
  loc_A01C4D: EqI4
  loc_A01C4E: ILdI2 KeyCode
  loc_A01C51: CI4UI1
  loc_A01C52: LitI4 &H42
  loc_A01C57: EqI4
  loc_A01C58: AndI4
  loc_A01C59: BranchF loc_A01D95
  loc_A01C5C: LitI2_Byte 0
  loc_A01C5E: ImpAdLdRf MemVar_C3D7D8
  loc_A01C61: NewIfNullPr bscUnidadGasto
  loc_A01C64: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_A01C69: LitNothing
  loc_A01C6B: CastAd
  loc_A01C6E: FStAdFuncNoPop
  loc_A01C71: ImpAdLdRf MemVar_C3D7D8
  loc_A01C74: NewIfNullPr bscUnidadGasto
  loc_A01C77: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_A01C7C: FFree1Ad var_88
  loc_A01C7F: LitVar_Missing var_A8
  loc_A01C82: PopAdLdVar
  loc_A01C83: LitVarI4
  loc_A01C8B: PopAdLdVar
  loc_A01C8C: ImpAdLdRf MemVar_C3D7D8
  loc_A01C8F: NewIfNullPr bscUnidadGasto
  loc_A01C92: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_A01C97: FLdRfVar var_AC
  loc_A01C9A: FLdRfVar var_88
  loc_A01C9D: ImpAdLdRf MemVar_C3D7D8
  loc_A01CA0: NewIfNullPr bscUnidadGasto
  loc_A01CA3: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A01CA8: FLdPr var_88
  loc_A01CAB: from_stack_1 = clsbase.RecordCount
  loc_A01CB0: ILdRf var_AC
  loc_A01CB3: LitI4 0
  loc_A01CB8: GtI4
  loc_A01CB9: FFree1Ad var_88
  loc_A01CBC: BranchF loc_A01D95
  loc_A01CBF: FLdRfVar var_C8
  loc_A01CC2: FLdRfVar var_B8
  loc_A01CC5: LitVarStr var_98, "CodiUnga"
  loc_A01CCA: PopAdLdVar
  loc_A01CCB: FLdRfVar var_B4
  loc_A01CCE: FLdRfVar var_B0
  loc_A01CD1: FLdRfVar var_88
  loc_A01CD4: ImpAdLdRf MemVar_C3D7D8
  loc_A01CD7: NewIfNullPr bscUnidadGasto
  loc_A01CDA: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A01CDF: FLdPr var_88
  loc_A01CE2: from_stack_1v = clsbase.RsFrmGet()
  loc_A01CE7: FLdPr var_B0
  loc_A01CEA:  = Me.Fields
  loc_A01CEF: FLdPr var_B4
  loc_A01CF2: from_stack_2 = Me.Item(from_stack_1)
  loc_A01CF7: FLdPr var_B8
  loc_A01CFA:  = Me.Value
  loc_A01CFF: FLdRfVar var_C8
  loc_A01D02: CStrVarTmp
  loc_A01D03: FStStrNoPop var_CC
  loc_A01D06: FLdPr Me
  loc_A01D09: VCallAd Control_ID_CodiUngaTxt
  loc_A01D0C: FStAdFunc var_D0
  loc_A01D0F: FLdPr var_D0
  loc_A01D12: Me.Text = from_stack_1
  loc_A01D17: FFree1Str var_CC
  loc_A01D1A: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A01D27: FFree1Var var_C8 = ""
  loc_A01D2A: FLdRfVar var_C8
  loc_A01D2D: FLdRfVar var_B8
  loc_A01D30: LitVarStr var_98, "DetaUnga"
  loc_A01D35: PopAdLdVar
  loc_A01D36: FLdRfVar var_B4
  loc_A01D39: FLdRfVar var_B0
  loc_A01D3C: FLdRfVar var_88
  loc_A01D3F: ImpAdLdRf MemVar_C3D7D8
  loc_A01D42: NewIfNullPr bscUnidadGasto
  loc_A01D45: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A01D4A: FLdPr var_88
  loc_A01D4D: from_stack_1v = clsbase.RsFrmGet()
  loc_A01D52: FLdPr var_B0
  loc_A01D55:  = Me.Fields
  loc_A01D5A: FLdPr var_B4
  loc_A01D5D: from_stack_2 = Me.Item(from_stack_1)
  loc_A01D62: FLdPr var_B8
  loc_A01D65:  = Me.Value
  loc_A01D6A: FLdRfVar var_C8
  loc_A01D6D: CStrVarTmp
  loc_A01D6E: FStStrNoPop var_CC
  loc_A01D71: FLdPr Me
  loc_A01D74: VCallAd Control_ID_DetaUngaLbl
  loc_A01D77: FStAdFunc var_D0
  loc_A01D7A: FLdPr var_D0
  loc_A01D7D: Me.Caption = from_stack_1
  loc_A01D82: FFree1Str var_CC
  loc_A01D85: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A01D92: FFree1Var var_C8 = ""
  loc_A01D95: ExitProcHresult
  loc_A01D96: ImpAdLdFPR4 MemVar_0
End Sub

Private Sub CodiUngaTxt_Validate(Cancel As Boolean) 'B12984
  'Data Table: 500268
  loc_B12108: FLdRfVar var_8A
  loc_B1210B: FLdPr Me
  loc_B1210E: VCallAd Control_ID_cmdCancelar
  loc_B12111: FStAdFunc var_88
  loc_B12114: FLdPr var_88
  loc_B12117:  = Me.Value
  loc_B1211C: FLdI2 var_8A
  loc_B1211F: NotI4
  loc_B12120: FLdRfVar var_92
  loc_B12123: FLdPr Me
  loc_B12126: VCallAd Control_ID_CodiUngaTxt
  loc_B12129: FStAdFunc var_90
  loc_B1212C: FLdPr var_90
  loc_B1212F:  = Me.Enabled
  loc_B12134: FLdI2 var_92
  loc_B12137: AndI4
  loc_B12138: FFreeAd var_88 = ""
  loc_B1213F: BranchF loc_B12980
  loc_B12142: FLdRfVar var_98
  loc_B12145: FLdPr Me
  loc_B12148: VCallAd Control_ID_CodiUngaTxt
  loc_B1214B: FStAdFunc var_88
  loc_B1214E: FLdPr var_88
  loc_B12151:  = Me.Text
  loc_B12156: ILdRf var_98
  loc_B12159: ImpAdCallI2 Trim$()
  loc_B1215E: FStStrNoPop var_9C
  loc_B12161: LitStr vbNullString
  loc_B12164: NeStr
  loc_B12166: FFreeStr var_98 = ""
  loc_B1216D: FFree1Ad var_88
  loc_B12170: BranchF loc_B127B5
  loc_B12173: FLdPr Me
  loc_B12176: VCallAd Control_ID_CodiUngaTxt
  loc_B12179: FStAdFunc var_88
  loc_B1217C: FLdRfVar var_88
  loc_B1217F: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B12184: FFree1Ad var_88
  loc_B12187: BranchF loc_B1239F
  loc_B1218A: LitStr " AND ug.CodiUnga = '"
  loc_B1218D: FLdRfVar var_98
  loc_B12190: FLdPr Me
  loc_B12193: VCallAd Control_ID_CodiUngaTxt
  loc_B12196: FStAdFunc var_88
  loc_B12199: FLdPr var_88
  loc_B1219C:  = Me.Text
  loc_B121A1: ILdRf var_98
  loc_B121A4: ConcatStr
  loc_B121A5: FStStrNoPop var_9C
  loc_B121A8: LitStr "'"
  loc_B121AB: ConcatStr
  loc_B121AC: FStStrNoPop var_A0
  loc_B121AF: ImpAdLdRf MemVar_C3D7D8
  loc_B121B2: NewIfNullPr bscUnidadGasto
  loc_B121B5: Call bscUnidadGasto.Constructor(from_stack_1v)
  loc_B121BA: FFreeStr var_98 = "": var_9C = ""
  loc_B121C3: FFree1Ad var_88
  loc_B121C6: FLdRfVar var_A4
  loc_B121C9: FLdRfVar var_90
  loc_B121CC: FLdRfVar var_88
  loc_B121CF: ImpAdLdRf MemVar_C3D7D8
  loc_B121D2: NewIfNullPr bscUnidadGasto
  loc_B121D5: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B121DA: FLdPr var_88
  loc_B121DD: from_stack_1v = clsbase.RsFrmGet()
  loc_B121E2: FLdPr var_90
  loc_B121E5:  = Me.RecordCount
  loc_B121EA: ILdRf var_A4
  loc_B121ED: LitI4 1
  loc_B121F2: EqI4
  loc_B121F3: FFreeAd var_88 = ""
  loc_B121FA: BranchF loc_B1231E
  loc_B121FD: FLdRfVar var_CC
  loc_B12200: FLdRfVar var_BC
  loc_B12203: LitVarStr var_B8, "CodiUnga"
  loc_B12208: PopAdLdVar
  loc_B12209: FLdRfVar var_A8
  loc_B1220C: FLdRfVar var_90
  loc_B1220F: FLdRfVar var_88
  loc_B12212: ImpAdLdRf MemVar_C3D7D8
  loc_B12215: NewIfNullPr bscUnidadGasto
  loc_B12218: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B1221D: FLdPr var_88
  loc_B12220: from_stack_1v = clsbase.RsFrmGet()
  loc_B12225: FLdPr var_90
  loc_B12228:  = Me.Fields
  loc_B1222D: FLdPr var_A8
  loc_B12230: from_stack_2 = Me.Item(from_stack_1)
  loc_B12235: FLdPr var_BC
  loc_B12238:  = Me.Value
  loc_B1223D: FLdPr Me
  loc_B12240: MemLdRfVar from_stack_1.global_156
  loc_B12243: NewIfNullRf
  loc_B12247: FLdRfVar var_CC
  loc_B1224A: CStrVarTmp
  loc_B1224B: FStStrNoPop var_9C
  loc_B1224E: ImpAdLdI2 MemVar_C3D064
  loc_B12251: CStrUI1
  loc_B12253: FStStrNoPop var_98
  loc_B12256: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B1225B: FStStrNoPop var_A0
  loc_B1225E: FLdPr Me
  loc_B12261: MemStStrCopy
  loc_B12265: FFreeStr var_98 = "": var_9C = ""
  loc_B1226E: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B12279: FFree1Var var_CC = ""
  loc_B1227C: FLdRfVar var_98
  loc_B1227F: FLdPr Me
  loc_B12282: MemLdRfVar from_stack_1.global_156
  loc_B12285: NewIfNullPr tblunidadgasto
  loc_B12288: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B1228D: ILdRf var_98
  loc_B12290: FLdPr Me
  loc_B12293: VCallAd Control_ID_CodiUngaTxt
  loc_B12296: FStAdFunc var_88
  loc_B12299: FLdPr var_88
  loc_B1229C: Me.Text = from_stack_1
  loc_B122A1: FFree1Str var_98
  loc_B122A4: FFree1Ad var_88
  loc_B122A7: FLdRfVar var_98
  loc_B122AA: FLdPr Me
  loc_B122AD: MemLdRfVar from_stack_1.global_156
  loc_B122B0: NewIfNullPr tblunidadgasto
  loc_B122B3: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B122B8: ILdRf var_98
  loc_B122BB: FLdPr Me
  loc_B122BE: VCallAd Control_ID_DetaUngaLbl
  loc_B122C1: FStAdFunc var_88
  loc_B122C4: FLdPr var_88
  loc_B122C7: Me.Caption = from_stack_1
  loc_B122CC: FFree1Str var_98
  loc_B122CF: FFree1Ad var_88
  loc_B122D2: FLdPr Me
  loc_B122D5: VCallAd Control_ID_CodiUngaTxt
  loc_B122D8: FStAdFunc var_BC
  loc_B122DB: FLdPr Me
  loc_B122DE: VCallAd Control_ID_DetaUngaLbl
  loc_B122E1: FStAdFunc var_A8
  loc_B122E4: FLdRfVar var_A8
  loc_B122E7: FLdZeroAd var_BC
  loc_B122EA: FStAdFuncNoPop
  loc_B122ED: CastAd
  loc_B122F0: FStAdFunc var_90
  loc_B122F3: FLdRfVar var_90
  loc_B122F6: FLdPr Me
  loc_B122F9: MemLdRfVar from_stack_1.global_64
  loc_B122FC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B12301: IStI2 Cancel
  loc_B12304: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B1230F: ILdI2 Cancel
  loc_B12312: NotI4
  loc_B12313: BranchF loc_B1231B
  loc_B12316: Call Proc_135_78_AD6490()
  loc_B1231B: Branch loc_B1239C
  loc_B1231E: FLdRfVar var_A4
  loc_B12321: FLdRfVar var_90
  loc_B12324: FLdRfVar var_88
  loc_B12327: ImpAdLdRf MemVar_C3D7D8
  loc_B1232A: NewIfNullPr bscUnidadGasto
  loc_B1232D: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B12332: FLdPr var_88
  loc_B12335: from_stack_1v = clsbase.RsFrmGet()
  loc_B1233A: FLdPr var_90
  loc_B1233D:  = Me.RecordCount
  loc_B12342: ILdRf var_A4
  loc_B12345: LitI4 1
  loc_B1234A: LtI4
  loc_B1234B: FFreeAd var_88 = ""
  loc_B12352: BranchF loc_B1239C
  loc_B12355: LitStr "La Unidad de Gasto NO EXISTE. Verifique..."
  loc_B12358: FLdPr Me
  loc_B1235B: MemStStrCopy
  loc_B1235F: FLdPr Me
  loc_B12362: VCallAd Control_ID_CodiUngaTxt
  loc_B12365: FStAdFunc var_BC
  loc_B12368: FLdPr Me
  loc_B1236B: VCallAd Control_ID_DetaUngaLbl
  loc_B1236E: FStAdFunc var_A8
  loc_B12371: FLdRfVar var_A8
  loc_B12374: FLdZeroAd var_BC
  loc_B12377: FStAdFuncNoPop
  loc_B1237A: CastAd
  loc_B1237D: FStAdFunc var_90
  loc_B12380: FLdRfVar var_90
  loc_B12383: FLdPr Me
  loc_B12386: MemLdRfVar from_stack_1.global_64
  loc_B12389: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B1238E: IStI2 Cancel
  loc_B12391: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B1239C: Branch loc_B127B2
  loc_B1239F: FLdRfVar var_98
  loc_B123A2: FLdPr Me
  loc_B123A5: VCallAd Control_ID_CodiUngaTxt
  loc_B123A8: FStAdFunc var_88
  loc_B123AB: FLdPr var_88
  loc_B123AE:  = Me.Text
  loc_B123B3: LitStr " AND DetaUnga LIKE '" & Chr(37)
  loc_B123B6: LitI4 0
  loc_B123BB: LitI4 -1
  loc_B123C0: LitI4 1
  loc_B123C5: LitStr Chr(37)
  loc_B123C8: LitStr " "
  loc_B123CB: ILdRf var_98
  loc_B123CE: ImpAdCallI2 Replace(, , , , , )
  loc_B123D3: FStStrNoPop var_9C
  loc_B123D6: ConcatStr
  loc_B123D7: FStStrNoPop var_A0
  loc_B123DA: LitStr Chr(37) & "'"
  loc_B123DD: ConcatStr
  loc_B123DE: FStStrNoPop var_D0
  loc_B123E1: ImpAdLdRf MemVar_C3D7D8
  loc_B123E4: NewIfNullPr bscUnidadGasto
  loc_B123E7: Call bscUnidadGasto.Constructor(from_stack_1v)
  loc_B123EC: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_B123F7: FFree1Ad var_88
  loc_B123FA: FLdRfVar var_A4
  loc_B123FD: FLdRfVar var_90
  loc_B12400: FLdRfVar var_88
  loc_B12403: ImpAdLdRf MemVar_C3D7D8
  loc_B12406: NewIfNullPr bscUnidadGasto
  loc_B12409: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B1240E: FLdPr var_88
  loc_B12411: from_stack_1v = clsbase.RsFrmGet()
  loc_B12416: FLdPr var_90
  loc_B12419:  = Me.RecordCount
  loc_B1241E: ILdRf var_A4
  loc_B12421: LitI4 1
  loc_B12426: EqI4
  loc_B12427: FFreeAd var_88 = ""
  loc_B1242E: BranchF loc_B12552
  loc_B12431: FLdRfVar var_CC
  loc_B12434: FLdRfVar var_BC
  loc_B12437: LitVarStr var_B8, "CodiUnga"
  loc_B1243C: PopAdLdVar
  loc_B1243D: FLdRfVar var_A8
  loc_B12440: FLdRfVar var_90
  loc_B12443: FLdRfVar var_88
  loc_B12446: ImpAdLdRf MemVar_C3D7D8
  loc_B12449: NewIfNullPr bscUnidadGasto
  loc_B1244C: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B12451: FLdPr var_88
  loc_B12454: from_stack_1v = clsbase.RsFrmGet()
  loc_B12459: FLdPr var_90
  loc_B1245C:  = Me.Fields
  loc_B12461: FLdPr var_A8
  loc_B12464: from_stack_2 = Me.Item(from_stack_1)
  loc_B12469: FLdPr var_BC
  loc_B1246C:  = Me.Value
  loc_B12471: FLdPr Me
  loc_B12474: MemLdRfVar from_stack_1.global_156
  loc_B12477: NewIfNullRf
  loc_B1247B: FLdRfVar var_CC
  loc_B1247E: CStrVarTmp
  loc_B1247F: FStStrNoPop var_9C
  loc_B12482: ImpAdLdI2 MemVar_C3D064
  loc_B12485: CStrUI1
  loc_B12487: FStStrNoPop var_98
  loc_B1248A: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B1248F: FStStrNoPop var_A0
  loc_B12492: FLdPr Me
  loc_B12495: MemStStrCopy
  loc_B12499: FFreeStr var_98 = "": var_9C = ""
  loc_B124A2: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B124AD: FFree1Var var_CC = ""
  loc_B124B0: FLdRfVar var_98
  loc_B124B3: FLdPr Me
  loc_B124B6: MemLdRfVar from_stack_1.global_156
  loc_B124B9: NewIfNullPr tblunidadgasto
  loc_B124BC: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B124C1: ILdRf var_98
  loc_B124C4: FLdPr Me
  loc_B124C7: VCallAd Control_ID_CodiUngaTxt
  loc_B124CA: FStAdFunc var_88
  loc_B124CD: FLdPr var_88
  loc_B124D0: Me.Text = from_stack_1
  loc_B124D5: FFree1Str var_98
  loc_B124D8: FFree1Ad var_88
  loc_B124DB: FLdRfVar var_98
  loc_B124DE: FLdPr Me
  loc_B124E1: MemLdRfVar from_stack_1.global_156
  loc_B124E4: NewIfNullPr tblunidadgasto
  loc_B124E7: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B124EC: ILdRf var_98
  loc_B124EF: FLdPr Me
  loc_B124F2: VCallAd Control_ID_DetaUngaLbl
  loc_B124F5: FStAdFunc var_88
  loc_B124F8: FLdPr var_88
  loc_B124FB: Me.Caption = from_stack_1
  loc_B12500: FFree1Str var_98
  loc_B12503: FFree1Ad var_88
  loc_B12506: FLdPr Me
  loc_B12509: VCallAd Control_ID_CodiUngaTxt
  loc_B1250C: FStAdFunc var_BC
  loc_B1250F: FLdPr Me
  loc_B12512: VCallAd Control_ID_DetaUngaLbl
  loc_B12515: FStAdFunc var_A8
  loc_B12518: FLdRfVar var_A8
  loc_B1251B: FLdZeroAd var_BC
  loc_B1251E: FStAdFuncNoPop
  loc_B12521: CastAd
  loc_B12524: FStAdFunc var_90
  loc_B12527: FLdRfVar var_90
  loc_B1252A: FLdPr Me
  loc_B1252D: MemLdRfVar from_stack_1.global_64
  loc_B12530: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B12535: IStI2 Cancel
  loc_B12538: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B12543: ILdI2 Cancel
  loc_B12546: NotI4
  loc_B12547: BranchF loc_B1254F
  loc_B1254A: Call Proc_135_78_AD6490()
  loc_B1254F: Branch loc_B127B2
  loc_B12552: FLdRfVar var_A4
  loc_B12555: FLdRfVar var_90
  loc_B12558: FLdRfVar var_88
  loc_B1255B: ImpAdLdRf MemVar_C3D7D8
  loc_B1255E: NewIfNullPr bscUnidadGasto
  loc_B12561: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B12566: FLdPr var_88
  loc_B12569: from_stack_1v = clsbase.RsFrmGet()
  loc_B1256E: FLdPr var_90
  loc_B12571:  = Me.RecordCount
  loc_B12576: ILdRf var_A4
  loc_B12579: LitI4 1
  loc_B1257E: GtI4
  loc_B1257F: FFreeAd var_88 = ""
  loc_B12586: BranchF loc_B12734
  loc_B12589: LitVar_Missing var_E0
  loc_B1258C: PopAdLdVar
  loc_B1258D: LitVarI4
  loc_B12595: PopAdLdVar
  loc_B12596: ImpAdLdRf MemVar_C3D7D8
  loc_B12599: NewIfNullPr bscUnidadGasto
  loc_B1259C: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_B125A1: FLdRfVar var_A4
  loc_B125A4: FLdRfVar var_88
  loc_B125A7: ImpAdLdRf MemVar_C3D7D8
  loc_B125AA: NewIfNullPr bscUnidadGasto
  loc_B125AD: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B125B2: FLdPr var_88
  loc_B125B5: from_stack_1 = clsbase.RecordCount
  loc_B125BA: ILdRf var_A4
  loc_B125BD: LitI4 0
  loc_B125C2: GtI4
  loc_B125C3: FFree1Ad var_88
  loc_B125C6: BranchF loc_B126EA
  loc_B125C9: FLdRfVar var_CC
  loc_B125CC: FLdRfVar var_BC
  loc_B125CF: LitVarStr var_B8, "CodiUnga"
  loc_B125D4: PopAdLdVar
  loc_B125D5: FLdRfVar var_A8
  loc_B125D8: FLdRfVar var_90
  loc_B125DB: FLdRfVar var_88
  loc_B125DE: ImpAdLdRf MemVar_C3D7D8
  loc_B125E1: NewIfNullPr bscUnidadGasto
  loc_B125E4: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B125E9: FLdPr var_88
  loc_B125EC: from_stack_1v = clsbase.RsFrmGet()
  loc_B125F1: FLdPr var_90
  loc_B125F4:  = Me.Fields
  loc_B125F9: FLdPr var_A8
  loc_B125FC: from_stack_2 = Me.Item(from_stack_1)
  loc_B12601: FLdPr var_BC
  loc_B12604:  = Me.Value
  loc_B12609: FLdPr Me
  loc_B1260C: MemLdRfVar from_stack_1.global_156
  loc_B1260F: NewIfNullRf
  loc_B12613: FLdRfVar var_CC
  loc_B12616: CStrVarTmp
  loc_B12617: FStStrNoPop var_9C
  loc_B1261A: ImpAdLdI2 MemVar_C3D064
  loc_B1261D: CStrUI1
  loc_B1261F: FStStrNoPop var_98
  loc_B12622: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B12627: FStStrNoPop var_A0
  loc_B1262A: FLdPr Me
  loc_B1262D: MemStStrCopy
  loc_B12631: FFreeStr var_98 = "": var_9C = ""
  loc_B1263A: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B12645: FFree1Var var_CC = ""
  loc_B12648: FLdRfVar var_98
  loc_B1264B: FLdPr Me
  loc_B1264E: MemLdRfVar from_stack_1.global_156
  loc_B12651: NewIfNullPr tblunidadgasto
  loc_B12654: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B12659: ILdRf var_98
  loc_B1265C: FLdPr Me
  loc_B1265F: VCallAd Control_ID_CodiUngaTxt
  loc_B12662: FStAdFunc var_88
  loc_B12665: FLdPr var_88
  loc_B12668: Me.Text = from_stack_1
  loc_B1266D: FFree1Str var_98
  loc_B12670: FFree1Ad var_88
  loc_B12673: FLdRfVar var_98
  loc_B12676: FLdPr Me
  loc_B12679: MemLdRfVar from_stack_1.global_156
  loc_B1267C: NewIfNullPr tblunidadgasto
  loc_B1267F: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B12684: ILdRf var_98
  loc_B12687: FLdPr Me
  loc_B1268A: VCallAd Control_ID_DetaUngaLbl
  loc_B1268D: FStAdFunc var_88
  loc_B12690: FLdPr var_88
  loc_B12693: Me.Caption = from_stack_1
  loc_B12698: FFree1Str var_98
  loc_B1269B: FFree1Ad var_88
  loc_B1269E: FLdPr Me
  loc_B126A1: VCallAd Control_ID_CodiUngaTxt
  loc_B126A4: FStAdFunc var_BC
  loc_B126A7: FLdPr Me
  loc_B126AA: VCallAd Control_ID_DetaUngaLbl
  loc_B126AD: FStAdFunc var_A8
  loc_B126B0: FLdRfVar var_A8
  loc_B126B3: FLdZeroAd var_BC
  loc_B126B6: FStAdFuncNoPop
  loc_B126B9: CastAd
  loc_B126BC: FStAdFunc var_90
  loc_B126BF: FLdRfVar var_90
  loc_B126C2: FLdPr Me
  loc_B126C5: MemLdRfVar from_stack_1.global_64
  loc_B126C8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B126CD: IStI2 Cancel
  loc_B126D0: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B126DB: ILdI2 Cancel
  loc_B126DE: NotI4
  loc_B126DF: BranchF loc_B126E7
  loc_B126E2: Call Proc_135_78_AD6490()
  loc_B126E7: Branch loc_B12731
  loc_B126EA: LitStr "La Unidad de Gasto NO EXISTE. Verique..."
  loc_B126ED: FLdPr Me
  loc_B126F0: MemStStrCopy
  loc_B126F4: FLdPr Me
  loc_B126F7: VCallAd Control_ID_CodiUngaTxt
  loc_B126FA: FStAdFunc var_BC
  loc_B126FD: FLdPr Me
  loc_B12700: VCallAd Control_ID_DetaUngaLbl
  loc_B12703: FStAdFunc var_A8
  loc_B12706: FLdRfVar var_A8
  loc_B12709: FLdZeroAd var_BC
  loc_B1270C: FStAdFuncNoPop
  loc_B1270F: CastAd
  loc_B12712: FStAdFunc var_90
  loc_B12715: FLdRfVar var_90
  loc_B12718: FLdPr Me
  loc_B1271B: MemLdRfVar from_stack_1.global_64
  loc_B1271E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B12723: IStI2 Cancel
  loc_B12726: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B12731: Branch loc_B127B2
  loc_B12734: FLdRfVar var_A4
  loc_B12737: FLdRfVar var_90
  loc_B1273A: FLdRfVar var_88
  loc_B1273D: ImpAdLdRf MemVar_C3D7D8
  loc_B12740: NewIfNullPr bscUnidadGasto
  loc_B12743: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B12748: FLdPr var_88
  loc_B1274B: from_stack_1v = clsbase.RsFrmGet()
  loc_B12750: FLdPr var_90
  loc_B12753:  = Me.RecordCount
  loc_B12758: ILdRf var_A4
  loc_B1275B: LitI4 1
  loc_B12760: LtI4
  loc_B12761: FFreeAd var_88 = ""
  loc_B12768: BranchF loc_B127B2
  loc_B1276B: LitStr "La Unidad El Proveedor NO EXISTE. Verique..."
  loc_B1276E: FLdPr Me
  loc_B12771: MemStStrCopy
  loc_B12775: FLdPr Me
  loc_B12778: VCallAd Control_ID_CodiUngaTxt
  loc_B1277B: FStAdFunc var_BC
  loc_B1277E: FLdPr Me
  loc_B12781: VCallAd Control_ID_DetaUngaLbl
  loc_B12784: FStAdFunc var_A8
  loc_B12787: FLdRfVar var_A8
  loc_B1278A: FLdZeroAd var_BC
  loc_B1278D: FStAdFuncNoPop
  loc_B12790: CastAd
  loc_B12793: FStAdFunc var_90
  loc_B12796: FLdRfVar var_90
  loc_B12799: FLdPr Me
  loc_B1279C: MemLdRfVar from_stack_1.global_64
  loc_B1279F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B127A4: IStI2 Cancel
  loc_B127A7: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B127B2: Branch loc_B12980
  loc_B127B5: LitI2_Byte 0
  loc_B127B7: ImpAdLdRf MemVar_C3D7D8
  loc_B127BA: NewIfNullPr bscUnidadGasto
  loc_B127BD: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_B127C2: LitNothing
  loc_B127C4: CastAd
  loc_B127C7: FStAdFuncNoPop
  loc_B127CA: ImpAdLdRf MemVar_C3D7D8
  loc_B127CD: NewIfNullPr bscUnidadGasto
  loc_B127D0: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_B127D5: FFree1Ad var_88
  loc_B127D8: LitVar_Missing var_E0
  loc_B127DB: PopAdLdVar
  loc_B127DC: LitVarI4
  loc_B127E4: PopAdLdVar
  loc_B127E5: ImpAdLdRf MemVar_C3D7D8
  loc_B127E8: NewIfNullPr bscUnidadGasto
  loc_B127EB: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_B127F0: FLdRfVar var_A4
  loc_B127F3: FLdRfVar var_88
  loc_B127F6: ImpAdLdRf MemVar_C3D7D8
  loc_B127F9: NewIfNullPr bscUnidadGasto
  loc_B127FC: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B12801: FLdPr var_88
  loc_B12804: from_stack_1 = clsbase.RecordCount
  loc_B12809: ILdRf var_A4
  loc_B1280C: LitI4 0
  loc_B12811: GtI4
  loc_B12812: FFree1Ad var_88
  loc_B12815: BranchF loc_B12939
  loc_B12818: FLdRfVar var_CC
  loc_B1281B: FLdRfVar var_BC
  loc_B1281E: LitVarStr var_B8, "CodiUnga"
  loc_B12823: PopAdLdVar
  loc_B12824: FLdRfVar var_A8
  loc_B12827: FLdRfVar var_90
  loc_B1282A: FLdRfVar var_88
  loc_B1282D: ImpAdLdRf MemVar_C3D7D8
  loc_B12830: NewIfNullPr bscUnidadGasto
  loc_B12833: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B12838: FLdPr var_88
  loc_B1283B: from_stack_1v = clsbase.RsFrmGet()
  loc_B12840: FLdPr var_90
  loc_B12843:  = Me.Fields
  loc_B12848: FLdPr var_A8
  loc_B1284B: from_stack_2 = Me.Item(from_stack_1)
  loc_B12850: FLdPr var_BC
  loc_B12853:  = Me.Value
  loc_B12858: FLdPr Me
  loc_B1285B: MemLdRfVar from_stack_1.global_156
  loc_B1285E: NewIfNullRf
  loc_B12862: FLdRfVar var_CC
  loc_B12865: CStrVarTmp
  loc_B12866: FStStrNoPop var_9C
  loc_B12869: ImpAdLdI2 MemVar_C3D064
  loc_B1286C: CStrUI1
  loc_B1286E: FStStrNoPop var_98
  loc_B12871: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B12876: FStStrNoPop var_A0
  loc_B12879: FLdPr Me
  loc_B1287C: MemStStrCopy
  loc_B12880: FFreeStr var_98 = "": var_9C = ""
  loc_B12889: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B12894: FFree1Var var_CC = ""
  loc_B12897: FLdRfVar var_98
  loc_B1289A: FLdPr Me
  loc_B1289D: MemLdRfVar from_stack_1.global_156
  loc_B128A0: NewIfNullPr tblunidadgasto
  loc_B128A3: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B128A8: ILdRf var_98
  loc_B128AB: FLdPr Me
  loc_B128AE: VCallAd Control_ID_CodiUngaTxt
  loc_B128B1: FStAdFunc var_88
  loc_B128B4: FLdPr var_88
  loc_B128B7: Me.Text = from_stack_1
  loc_B128BC: FFree1Str var_98
  loc_B128BF: FFree1Ad var_88
  loc_B128C2: FLdRfVar var_98
  loc_B128C5: FLdPr Me
  loc_B128C8: MemLdRfVar from_stack_1.global_156
  loc_B128CB: NewIfNullPr tblunidadgasto
  loc_B128CE: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B128D3: ILdRf var_98
  loc_B128D6: FLdPr Me
  loc_B128D9: VCallAd Control_ID_DetaUngaLbl
  loc_B128DC: FStAdFunc var_88
  loc_B128DF: FLdPr var_88
  loc_B128E2: Me.Caption = from_stack_1
  loc_B128E7: FFree1Str var_98
  loc_B128EA: FFree1Ad var_88
  loc_B128ED: FLdPr Me
  loc_B128F0: VCallAd Control_ID_CodiUngaTxt
  loc_B128F3: FStAdFunc var_BC
  loc_B128F6: FLdPr Me
  loc_B128F9: VCallAd Control_ID_DetaUngaLbl
  loc_B128FC: FStAdFunc var_A8
  loc_B128FF: FLdRfVar var_A8
  loc_B12902: FLdZeroAd var_BC
  loc_B12905: FStAdFuncNoPop
  loc_B12908: CastAd
  loc_B1290B: FStAdFunc var_90
  loc_B1290E: FLdRfVar var_90
  loc_B12911: FLdPr Me
  loc_B12914: MemLdRfVar from_stack_1.global_64
  loc_B12917: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B1291C: IStI2 Cancel
  loc_B1291F: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B1292A: ILdI2 Cancel
  loc_B1292D: NotI4
  loc_B1292E: BranchF loc_B12936
  loc_B12931: Call Proc_135_78_AD6490()
  loc_B12936: Branch loc_B12980
  loc_B12939: LitStr "La Unidad de Gasto NO EXISTE. Verifique..."
  loc_B1293C: FLdPr Me
  loc_B1293F: MemStStrCopy
  loc_B12943: FLdPr Me
  loc_B12946: VCallAd Control_ID_CodiUngaTxt
  loc_B12949: FStAdFunc var_BC
  loc_B1294C: FLdPr Me
  loc_B1294F: VCallAd Control_ID_DetaUngaLbl
  loc_B12952: FStAdFunc var_A8
  loc_B12955: FLdRfVar var_A8
  loc_B12958: FLdZeroAd var_BC
  loc_B1295B: FStAdFuncNoPop
  loc_B1295E: CastAd
  loc_B12961: FStAdFunc var_90
  loc_B12964: FLdRfVar var_90
  loc_B12967: FLdPr Me
  loc_B1296A: MemLdRfVar from_stack_1.global_64
  loc_B1296D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B12972: IStI2 Cancel
  loc_B12975: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B12980: ExitProcHresult
End Sub

Private Sub FechDeveMsk_UnknownEvent_0 'AEB9DC
  'Data Table: 500268
  loc_AEB2CC: FLdRfVar var_98
  loc_AEB2CF: FLdPr Me
  loc_AEB2D2: VCallAd Control_ID_CodiNopeLbl
  loc_AEB2D5: FStAdFunc var_94
  loc_AEB2D8: FLdPr var_94
  loc_AEB2DB:  = Me.Caption
  loc_AEB2E0: FLdRfVar var_A0
  loc_AEB2E3: FLdPr Me
  loc_AEB2E6: VCallAd Control_ID_CodiNopeLbl
  loc_AEB2E9: FStAdFunc var_9C
  loc_AEB2EC: FLdPr var_9C
  loc_AEB2EF:  = Me.Caption
  loc_AEB2F4: FLdZeroAd var_A0
  loc_AEB2F7: CVarStr var_E0
  loc_AEB2FA: LitVarI2 var_D0, 0
  loc_AEB2FF: ILdRf var_98
  loc_AEB302: LitStr vbNullString
  loc_AEB305: EqStr
  loc_AEB307: CVarBoolI2 var_B0
  loc_AEB30B: FLdRfVar var_F0
  loc_AEB30E: ImpAdCallFPR4  = IIf(, , )
  loc_AEB313: FLdRfVar var_F0
  loc_AEB316: CI2Var
  loc_AEB317: FStI2 var_86
  loc_AEB31A: FFree1Str var_98
  loc_AEB31D: FFreeAd var_94 = ""
  loc_AEB324: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AEB32F: FLdRfVar var_98
  loc_AEB332: FLdPr Me
  loc_AEB335: VCallAd Control_ID_ItemLbl
  loc_AEB338: FStAdFunc var_94
  loc_AEB33B: FLdPr var_94
  loc_AEB33E:  = Me.Caption
  loc_AEB343: FLdRfVar var_A0
  loc_AEB346: FLdPr Me
  loc_AEB349: VCallAd Control_ID_ItemLbl
  loc_AEB34C: FStAdFunc var_9C
  loc_AEB34F: FLdPr var_9C
  loc_AEB352:  = Me.Caption
  loc_AEB357: FLdZeroAd var_A0
  loc_AEB35A: CVarStr var_E0
  loc_AEB35D: LitVarI2 var_D0, 0
  loc_AEB362: ILdRf var_98
  loc_AEB365: LitStr vbNullString
  loc_AEB368: EqStr
  loc_AEB36A: CVarBoolI2 var_B0
  loc_AEB36E: FLdRfVar var_F0
  loc_AEB371: ImpAdCallFPR4  = IIf(, , )
  loc_AEB376: FLdRfVar var_F0
  loc_AEB379: CI2Var
  loc_AEB37A: FStI2 var_88
  loc_AEB37D: FFree1Str var_98
  loc_AEB380: FFreeAd var_94 = ""
  loc_AEB387: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AEB392: FLdRfVar var_98
  loc_AEB395: FLdPr Me
  loc_AEB398: VCallAd Control_ID_AlternLbl
  loc_AEB39B: FStAdFunc var_94
  loc_AEB39E: FLdPr var_94
  loc_AEB3A1:  = Me.Caption
  loc_AEB3A6: FLdRfVar var_A0
  loc_AEB3A9: FLdPr Me
  loc_AEB3AC: VCallAd Control_ID_AlternLbl
  loc_AEB3AF: FStAdFunc var_9C
  loc_AEB3B2: FLdPr var_9C
  loc_AEB3B5:  = Me.Caption
  loc_AEB3BA: FLdZeroAd var_A0
  loc_AEB3BD: CVarStr var_E0
  loc_AEB3C0: LitVarI2 var_D0, 0
  loc_AEB3C5: ILdRf var_98
  loc_AEB3C8: LitStr vbNullString
  loc_AEB3CB: EqStr
  loc_AEB3CD: CVarBoolI2 var_B0
  loc_AEB3D1: FLdRfVar var_F0
  loc_AEB3D4: ImpAdCallFPR4  = IIf(, , )
  loc_AEB3D9: FLdRfVar var_F0
  loc_AEB3DC: CI2Var
  loc_AEB3DD: FStI2 var_8A
  loc_AEB3E0: FFree1Str var_98
  loc_AEB3E3: FFreeAd var_94 = ""
  loc_AEB3EA: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AEB3F5: FLdRfVar var_98
  loc_AEB3F8: FLdPr Me
  loc_AEB3FB: VCallAd Control_ID_CodiOrcoLbl
  loc_AEB3FE: FStAdFunc var_94
  loc_AEB401: FLdPr var_94
  loc_AEB404:  = Me.Caption
  loc_AEB409: FLdRfVar var_A0
  loc_AEB40C: FLdPr Me
  loc_AEB40F: VCallAd Control_ID_CodiOrcoLbl
  loc_AEB412: FStAdFunc var_9C
  loc_AEB415: FLdPr var_9C
  loc_AEB418:  = Me.Caption
  loc_AEB41D: FLdZeroAd var_A0
  loc_AEB420: CVarStr var_E0
  loc_AEB423: LitVarI2 var_D0, 0
  loc_AEB428: ILdRf var_98
  loc_AEB42B: LitStr vbNullString
  loc_AEB42E: EqStr
  loc_AEB430: CVarBoolI2 var_B0
  loc_AEB434: FLdRfVar var_F0
  loc_AEB437: ImpAdCallFPR4  = IIf(, , )
  loc_AEB43C: FLdRfVar var_F0
  loc_AEB43F: CI2Var
  loc_AEB440: FStI2 var_8C
  loc_AEB443: FFree1Str var_98
  loc_AEB446: FFreeAd var_94 = ""
  loc_AEB44D: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AEB458: FLdRfVar var_98
  loc_AEB45B: FLdPr Me
  loc_AEB45E: VCallAd Control_ID_CodiReceLbl
  loc_AEB461: FStAdFunc var_94
  loc_AEB464: FLdPr var_94
  loc_AEB467:  = Me.Caption
  loc_AEB46C: FLdRfVar var_A0
  loc_AEB46F: FLdPr Me
  loc_AEB472: VCallAd Control_ID_CodiReceLbl
  loc_AEB475: FStAdFunc var_9C
  loc_AEB478: FLdPr var_9C
  loc_AEB47B:  = Me.Caption
  loc_AEB480: FLdZeroAd var_A0
  loc_AEB483: CVarStr var_E0
  loc_AEB486: LitVarI2 var_D0, 0
  loc_AEB48B: ILdRf var_98
  loc_AEB48E: LitStr vbNullString
  loc_AEB491: EqStr
  loc_AEB493: CVarBoolI2 var_B0
  loc_AEB497: FLdRfVar var_F0
  loc_AEB49A: ImpAdCallFPR4  = IIf(, , )
  loc_AEB49F: FLdRfVar var_F0
  loc_AEB4A2: CI2Var
  loc_AEB4A3: FStI2 var_8E
  loc_AEB4A6: FFree1Str var_98
  loc_AEB4A9: FFreeAd var_94 = ""
  loc_AEB4B0: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AEB4BB: FLdRfVar var_F2
  loc_AEB4BE: FLdPr Me
  loc_AEB4C1: VCallAd Control_ID_cboSeleccion
  loc_AEB4C4: FStAdFunc var_94
  loc_AEB4C7: FLdPr var_94
  loc_AEB4CA:  = Me.ListIndex
  loc_AEB4CF: FLdRfVar var_F8
  loc_AEB4D2: FLdI2 var_F2
  loc_AEB4D5: FLdPr Me
  loc_AEB4D8: VCallAd Control_ID_cboSeleccion
  loc_AEB4DB: FStAdFunc var_9C
  loc_AEB4DE: FLdPr var_9C
  loc_AEB4E1:  = Me.ItemData
  loc_AEB4E6: FLdPr Me
  loc_AEB4E9: VCallAd Control_ID_ExorImpuMsk
  loc_AEB4EC: FStAdFunc var_FC
  loc_AEB4EF: FLdPr var_FC
  loc_AEB4F2: LateIdLdVar var_D0 DispID_15 0
  loc_AEB4F9: PopAd
  loc_AEB4FB: FLdPr Me
  loc_AEB4FE: VCallAd Control_ID_CodiPartMsk
  loc_AEB501: FStAdFunc var_100
  loc_AEB504: FLdPr var_100
  loc_AEB507: LateIdLdVar var_E0 DispID_22 0
  loc_AEB50E: PopAd
  loc_AEB510: FLdPr Me
  loc_AEB513: VCallAd Control_ID_CodiOrgaMsk
  loc_AEB516: FStAdFunc var_104
  loc_AEB519: FLdPr var_104
  loc_AEB51C: LateIdLdVar var_F0 DispID_22 0
  loc_AEB523: PopAd
  loc_AEB525: FLdRfVar var_10C
  loc_AEB528: FLdRfVar var_F0
  loc_AEB52B: CStrVarTmp
  loc_AEB52C: FStStrNoPop var_108
  loc_AEB52F: FLdRfVar var_E0
  loc_AEB532: CStrVarTmp
  loc_AEB533: FStStrNoPop var_A0
  loc_AEB536: FLdI2 var_8E
  loc_AEB539: FLdI2 var_8C
  loc_AEB53C: FLdI2 var_8A
  loc_AEB53F: FLdI2 var_88
  loc_AEB542: FLdI2 var_86
  loc_AEB545: CI4UI1
  loc_AEB546: FLdRfVar var_D0
  loc_AEB549: CStrVarTmp
  loc_AEB54A: FStStrNoPop var_98
  loc_AEB54D: ILdRf var_F8
  loc_AEB550: CI2I4
  loc_AEB551: ImpAdLdI2 MemVar_C3D064
  loc_AEB554: FLdPr Me
  loc_AEB557: MemLdRfVar from_stack_1.global_52
  loc_AEB55A: NewIfNullPr clsimputacion
  loc_AEB55D: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_AEB562: FLdZeroAd var_10C
  loc_AEB565: CVarStr var_11C
  loc_AEB568: PopAdLdVar
  loc_AEB569: FLdPr Me
  loc_AEB56C: VCallAd Control_ID_FechDeveMsk
  loc_AEB56F: FStAdFunc var_120
  loc_AEB572: FLdPr var_120
  loc_AEB575: LateIdSt
  loc_AEB57A: FFreeStr var_98 = "": var_A0 = ""
  loc_AEB583: FFreeAd var_94 = "": var_9C = "": var_FC = "": var_100 = "": var_104 = ""
  loc_AEB592: FFreeVar var_D0 = "": var_E0 = "": var_F0 = ""
  loc_AEB59D: FLdPr Me
  loc_AEB5A0: VCallAd Control_ID_FechDeveMsk
  loc_AEB5A3: FStAdFunc var_94
  loc_AEB5A6: FLdPr var_94
  loc_AEB5A9: LateIdLdVar var_D0 DispID_11 -32767
  loc_AEB5B0: CStrVarTmp
  loc_AEB5B1: CVarStr var_E0
  loc_AEB5B4: PopAdLdVar
  loc_AEB5B5: FLdPr Me
  loc_AEB5B8: VCallAd Control_ID_FechDeveMsk
  loc_AEB5BB: FStAdFunc var_9C
  loc_AEB5BE: FLdPr var_9C
  loc_AEB5C1: LateIdSt
  loc_AEB5C6: FFreeAd var_94 = ""
  loc_AEB5CD: FFreeVar var_D0 = ""
  loc_AEB5D4: FLdPr Me
  loc_AEB5D7: MemLdI2 global_190
  loc_AEB5DA: NotI4
  loc_AEB5DB: BranchF loc_AEB694
  loc_AEB5DE: FLdPr Me
  loc_AEB5E1: MemLdI2 global_188
  loc_AEB5E4: BranchF loc_AEB671
  loc_AEB5E7: FLdPr Me
  loc_AEB5EA: VCallAd Control_ID_FechDeveMsk
  loc_AEB5ED: FStAdFunc var_9C
  loc_AEB5F0: FLdPr var_9C
  loc_AEB5F3: LateIdLdVar var_E0 DispID_11 -32767
  loc_AEB5FA: PopAd
  loc_AEB5FC: FLdPr Me
  loc_AEB5FF: VCallAd Control_ID_FechImpuMsk
  loc_AEB602: FStAdFunc var_94
  loc_AEB605: FLdPr var_94
  loc_AEB608: LateIdLdVar var_D0 DispID_15 0
  loc_AEB60F: CStrVarTmp
  loc_AEB610: FStStrNoPop var_98
  loc_AEB613: CDateStr
  loc_AEB615: FLdRfVar var_E0
  loc_AEB618: CStrVarTmp
  loc_AEB619: FStStrNoPop var_A0
  loc_AEB61C: CDateStr
  loc_AEB61E: GtR4
  loc_AEB61F: FFreeStr var_98 = ""
  loc_AEB626: FFreeAd var_94 = ""
  loc_AEB62D: FFreeVar var_D0 = ""
  loc_AEB634: BranchF loc_AEB66E
  loc_AEB637: FLdPr Me
  loc_AEB63A: VCallAd Control_ID_FechImpuMsk
  loc_AEB63D: FStAdFunc var_94
  loc_AEB640: FLdPr var_94
  loc_AEB643: LateIdLdVar var_D0 DispID_15 0
  loc_AEB64A: CStrVarTmp
  loc_AEB64B: CVarStr var_E0
  loc_AEB64E: PopAdLdVar
  loc_AEB64F: FLdPr Me
  loc_AEB652: VCallAd Control_ID_FechDeveMsk
  loc_AEB655: FStAdFunc var_9C
  loc_AEB658: FLdPr var_9C
  loc_AEB65B: LateIdSt
  loc_AEB660: FFreeAd var_94 = ""
  loc_AEB667: FFreeVar var_D0 = ""
  loc_AEB66E: Branch loc_AEB691
  loc_AEB671: ImpAdLdFPR8 MemVar_C3D04C
  loc_AEB674: CStrDate
  loc_AEB676: CVarStr var_D0
  loc_AEB679: PopAdLdVar
  loc_AEB67A: FLdPr Me
  loc_AEB67D: VCallAd Control_ID_FechDeveMsk
  loc_AEB680: FStAdFunc var_94
  loc_AEB683: FLdPr var_94
  loc_AEB686: LateIdSt
  loc_AEB68B: FFree1Ad var_94
  loc_AEB68E: FFree1Var var_D0 = ""
  loc_AEB691: Branch loc_AEB694
  loc_AEB694: FLdPr Me
  loc_AEB697: VCallAd Control_ID_ExorImpuMsk
  loc_AEB69A: FStAdFunc var_94
  loc_AEB69D: FLdPr var_94
  loc_AEB6A0: LateIdLdVar var_D0 DispID_15 0
  loc_AEB6A7: PopAd
  loc_AEB6A9: FLdPr Me
  loc_AEB6AC: VCallAd Control_ID_CodiPartMsk
  loc_AEB6AF: FStAdFunc var_9C
  loc_AEB6B2: FLdPr var_9C
  loc_AEB6B5: LateIdLdVar var_E0 DispID_22 0
  loc_AEB6BC: PopAd
  loc_AEB6BE: FLdPr Me
  loc_AEB6C1: VCallAd Control_ID_CodiOrgaMsk
  loc_AEB6C4: FStAdFunc var_FC
  loc_AEB6C7: FLdPr var_FC
  loc_AEB6CA: LateIdLdVar var_F0 DispID_22 0
  loc_AEB6D1: PopAd
  loc_AEB6D3: FLdRfVar var_10C
  loc_AEB6D6: FLdRfVar var_F0
  loc_AEB6D9: CStrVarTmp
  loc_AEB6DA: FStStrNoPop var_108
  loc_AEB6DD: FLdRfVar var_E0
  loc_AEB6E0: CStrVarTmp
  loc_AEB6E1: FStStrNoPop var_A0
  loc_AEB6E4: FLdI2 var_8E
  loc_AEB6E7: FLdI2 var_8C
  loc_AEB6EA: FLdI2 var_8A
  loc_AEB6ED: FLdI2 var_88
  loc_AEB6F0: FLdI2 var_86
  loc_AEB6F3: CI4UI1
  loc_AEB6F4: FLdRfVar var_D0
  loc_AEB6F7: CStrVarTmp
  loc_AEB6F8: FStStrNoPop var_98
  loc_AEB6FB: LitI2_Byte 5
  loc_AEB6FD: ImpAdLdI2 MemVar_C3D064
  loc_AEB700: FLdPr Me
  loc_AEB703: MemLdRfVar from_stack_1.global_52
  loc_AEB706: NewIfNullPr clsimputacion
  loc_AEB709: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_AEB70E: FLdZeroAd var_10C
  loc_AEB711: CVarStr var_11C
  loc_AEB714: PopAdLdVar
  loc_AEB715: FLdPr Me
  loc_AEB718: VCallAd Control_ID_FefaDeveMsk
  loc_AEB71B: FStAdFunc var_100
  loc_AEB71E: FLdPr var_100
  loc_AEB721: LateIdSt
  loc_AEB726: FFreeStr var_98 = "": var_A0 = ""
  loc_AEB72F: FFreeAd var_94 = "": var_9C = "": var_FC = ""
  loc_AEB73A: FFreeVar var_D0 = "": var_E0 = "": var_F0 = ""
  loc_AEB745: FLdPr Me
  loc_AEB748: VCallAd Control_ID_FefaDeveMsk
  loc_AEB74B: FStAdFunc var_94
  loc_AEB74E: FLdPr var_94
  loc_AEB751: LateIdLdVar var_D0 DispID_11 -32767
  loc_AEB758: CStrVarTmp
  loc_AEB759: CVarStr var_E0
  loc_AEB75C: PopAdLdVar
  loc_AEB75D: FLdPr Me
  loc_AEB760: VCallAd Control_ID_FefaDeveMsk
  loc_AEB763: FStAdFunc var_9C
  loc_AEB766: FLdPr var_9C
  loc_AEB769: LateIdSt
  loc_AEB76E: FFreeAd var_94 = ""
  loc_AEB775: FFreeVar var_D0 = ""
  loc_AEB77C: FLdPr Me
  loc_AEB77F: VCallAd Control_ID_FechImpuMsk
  loc_AEB782: FStAdFunc var_94
  loc_AEB785: FLdPr var_94
  loc_AEB788: LateIdLdVar var_D0 DispID_13 -32767
  loc_AEB78F: CBoolVar
  loc_AEB791: LitI2_Byte &HFF
  loc_AEB793: EqI2
  loc_AEB794: FFree1Ad var_94
  loc_AEB797: FFree1Var var_D0 = ""
  loc_AEB79A: BranchF loc_AEB8F8
  loc_AEB79D: FLdPr Me
  loc_AEB7A0: VCallAd Control_ID_FechDeveMsk
  loc_AEB7A3: FStAdFunc var_94
  loc_AEB7A6: FLdPr var_94
  loc_AEB7A9: LateIdLdVar var_D0 DispID_15 0
  loc_AEB7B0: CStrVarTmp
  loc_AEB7B1: CVarStr var_E0
  loc_AEB7B4: ImpAdCallI2 IsDate()
  loc_AEB7B9: FFree1Ad var_94
  loc_AEB7BC: FFreeVar var_D0 = ""
  loc_AEB7C3: BranchF loc_AEB8F5
  loc_AEB7C6: FLdPr Me
  loc_AEB7C9: VCallAd Control_ID_FechDeveMsk
  loc_AEB7CC: FStAdFunc var_9C
  loc_AEB7CF: FLdPr var_9C
  loc_AEB7D2: LateIdLdVar var_E0 DispID_15 0
  loc_AEB7D9: PopAd
  loc_AEB7DB: FLdPr Me
  loc_AEB7DE: VCallAd Control_ID_FefaDeveMsk
  loc_AEB7E1: FStAdFunc var_94
  loc_AEB7E4: FLdPr var_94
  loc_AEB7E7: LateIdLdVar var_D0 DispID_11 -32767
  loc_AEB7EE: CStrVarTmp
  loc_AEB7EF: FStStrNoPop var_98
  loc_AEB7F2: CDateStr
  loc_AEB7F4: FLdRfVar var_E0
  loc_AEB7F7: CStrVarTmp
  loc_AEB7F8: FStStrNoPop var_A0
  loc_AEB7FB: CDateStr
  loc_AEB7FD: GtR4
  loc_AEB7FE: FFreeStr var_98 = ""
  loc_AEB805: FFreeAd var_94 = ""
  loc_AEB80C: FFreeVar var_D0 = ""
  loc_AEB813: BranchF loc_AEB8F2
  loc_AEB816: FLdPr Me
  loc_AEB819: VCallAd Control_ID_FechImpuMsk
  loc_AEB81C: FStAdFunc var_94
  loc_AEB81F: FLdPr var_94
  loc_AEB822: LateIdLdVar var_D0 DispID_15 0
  loc_AEB829: CStrVarTmp
  loc_AEB82A: CVarStr var_E0
  loc_AEB82D: PopAdLdVar
  loc_AEB82E: FLdPr Me
  loc_AEB831: VCallAd Control_ID_FechDeveMsk
  loc_AEB834: FStAdFunc var_9C
  loc_AEB837: FLdPr var_9C
  loc_AEB83A: LateIdSt
  loc_AEB83F: FFreeAd var_94 = ""
  loc_AEB846: FFreeVar var_D0 = ""
  loc_AEB84D: FLdPr Me
  loc_AEB850: VCallAd Control_ID_FechDeveMsk
  loc_AEB853: FStAdFunc var_94
  loc_AEB856: FLdPr var_94
  loc_AEB859: LateIdLdVar var_D0 DispID_11 -32767
  loc_AEB860: CStrVarTmp
  loc_AEB861: CVarStr var_E0
  loc_AEB864: PopAdLdVar
  loc_AEB865: FLdPr Me
  loc_AEB868: VCallAd Control_ID_FechDeveMsk
  loc_AEB86B: FStAdFunc var_9C
  loc_AEB86E: FLdPr var_9C
  loc_AEB871: LateIdSt
  loc_AEB876: FFreeAd var_94 = ""
  loc_AEB87D: FFreeVar var_D0 = ""
  loc_AEB884: FLdPr Me
  loc_AEB887: VCallAd Control_ID_FechImpuMsk
  loc_AEB88A: FStAdFunc var_94
  loc_AEB88D: FLdPr var_94
  loc_AEB890: LateIdLdVar var_D0 DispID_15 0
  loc_AEB897: CStrVarTmp
  loc_AEB898: CVarStr var_E0
  loc_AEB89B: PopAdLdVar
  loc_AEB89C: FLdPr Me
  loc_AEB89F: VCallAd Control_ID_FefaDeveMsk
  loc_AEB8A2: FStAdFunc var_9C
  loc_AEB8A5: FLdPr var_9C
  loc_AEB8A8: LateIdSt
  loc_AEB8AD: FFreeAd var_94 = ""
  loc_AEB8B4: FFreeVar var_D0 = ""
  loc_AEB8BB: FLdPr Me
  loc_AEB8BE: VCallAd Control_ID_FefaDeveMsk
  loc_AEB8C1: FStAdFunc var_94
  loc_AEB8C4: FLdPr var_94
  loc_AEB8C7: LateIdLdVar var_D0 DispID_11 -32767
  loc_AEB8CE: CStrVarTmp
  loc_AEB8CF: CVarStr var_E0
  loc_AEB8D2: PopAdLdVar
  loc_AEB8D3: FLdPr Me
  loc_AEB8D6: VCallAd Control_ID_FefaDeveMsk
  loc_AEB8D9: FStAdFunc var_9C
  loc_AEB8DC: FLdPr var_9C
  loc_AEB8DF: LateIdSt
  loc_AEB8E4: FFreeAd var_94 = ""
  loc_AEB8EB: FFreeVar var_D0 = ""
  loc_AEB8F2: Branch loc_AEB8F5
  loc_AEB8F5: Branch loc_AEB99D
  loc_AEB8F8: FLdPr Me
  loc_AEB8FB: VCallAd Control_ID_FefaDeveMsk
  loc_AEB8FE: FStAdFunc var_94
  loc_AEB901: FLdPr var_94
  loc_AEB904: LateIdLdVar var_D0 DispID_11 -32767
  loc_AEB90B: CStrVarTmp
  loc_AEB90C: CVarStr var_E0
  loc_AEB90F: PopAdLdVar
  loc_AEB910: FLdPr Me
  loc_AEB913: VCallAd Control_ID_FechImpuMsk
  loc_AEB916: FStAdFunc var_9C
  loc_AEB919: FLdPr var_9C
  loc_AEB91C: LateIdSt
  loc_AEB921: FFreeAd var_94 = ""
  loc_AEB928: FFreeVar var_D0 = ""
  loc_AEB92F: FLdPr Me
  loc_AEB932: VCallAd Control_ID_FechImpuMsk
  loc_AEB935: FStAdFunc var_94
  loc_AEB938: FLdPr var_94
  loc_AEB93B: LateIdLdVar var_D0 DispID_11 -32767
  loc_AEB942: CStrVarTmp
  loc_AEB943: CVarStr var_E0
  loc_AEB946: PopAdLdVar
  loc_AEB947: FLdPr Me
  loc_AEB94A: VCallAd Control_ID_FechImpuMsk
  loc_AEB94D: FStAdFunc var_9C
  loc_AEB950: FLdPr var_9C
  loc_AEB953: LateIdSt
  loc_AEB958: FFreeAd var_94 = ""
  loc_AEB95F: FFreeVar var_D0 = ""
  loc_AEB966: FLdPr Me
  loc_AEB969: VCallAd Control_ID_FechImpuMsk
  loc_AEB96C: FStAdFunc var_94
  loc_AEB96F: FLdPr var_94
  loc_AEB972: LateIdLdVar var_D0 DispID_11 -32767
  loc_AEB979: CStrVarTmp
  loc_AEB97A: CVarStr var_E0
  loc_AEB97D: PopAdLdVar
  loc_AEB97E: FLdPr Me
  loc_AEB981: VCallAd Control_ID_FechImpuMsk
  loc_AEB984: FStAdFunc var_9C
  loc_AEB987: FLdPr var_9C
  loc_AEB98A: LateIdSt
  loc_AEB98F: FFreeAd var_94 = ""
  loc_AEB996: FFreeVar var_D0 = ""
  loc_AEB99D: FLdPr Me
  loc_AEB9A0: MemLdI2 global_188
  loc_AEB9A3: BranchF loc_AEB9A9
  loc_AEB9A6: Branch loc_AEB9C8
  loc_AEB9A9: LitStr "Municipalidad de Guaymallén"
  loc_AEB9AC: FStStrCopy var_124
  loc_AEB9AF: ILdRf var_124
  loc_AEB9B2: LitStr "Municipalidad de ..."
  loc_AEB9B5: EqStr
  loc_AEB9B7: BranchT loc_AEB9C5
  loc_AEB9BA: ILdRf var_124
  loc_AEB9BD: LitStr "Municipalidad de ..."
  loc_AEB9C0: EqStr
  loc_AEB9C2: BranchF loc_AEB9C8
  loc_AEB9C5: Branch loc_AEB9C8
  loc_AEB9C8: FLdPr Me
  loc_AEB9CB: VCallAd Control_ID_FechDeveMsk
  loc_AEB9CE: CVarAd
  loc_AEB9D2: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_AEB9D7: FFree1Var var_D0 = ""
  loc_AEB9DA: ExitProcHresult
End Sub

Private Sub FechDeveMsk_UnknownEvent_8 'A5D0C4
  'Data Table: 500268
  loc_A5CDC8: FLdRfVar var_8A
  loc_A5CDCB: FLdPr Me
  loc_A5CDCE: VCallAd Control_ID_cmdCancelar
  loc_A5CDD1: FStAdFunc var_88
  loc_A5CDD4: FLdPr var_88
  loc_A5CDD7:  = Me.Value
  loc_A5CDDC: FLdI2 var_8A
  loc_A5CDDF: NotI4
  loc_A5CDE0: FLdPr Me
  loc_A5CDE3: VCallAd Control_ID_FechDeveMsk
  loc_A5CDE6: FStAdFunc var_90
  loc_A5CDE9: FLdPr var_90
  loc_A5CDEC: LateIdLdVar var_A0 DispID_13 -32767
  loc_A5CDF3: CBoolVar
  loc_A5CDF5: AndI4
  loc_A5CDF6: FFreeAd var_88 = ""
  loc_A5CDFD: FFree1Var var_A0 = ""
  loc_A5CE00: BranchF loc_A5CFD5
  loc_A5CE03: FLdPr Me
  loc_A5CE06: VCallAd Control_ID_FechDeveMsk
  loc_A5CE09: FStAdFunc var_88
  loc_A5CE0C: FLdPr var_88
  loc_A5CE0F: LateIdLdVar var_A0 DispID_15 0
  loc_A5CE16: PopAd
  loc_A5CE18: FLdPr Me
  loc_A5CE1B: VCallAd Control_ID_FechDeveMsk
  loc_A5CE1E: FStAdFunc var_AC
  loc_A5CE21: LitI2_Byte &HFF
  loc_A5CE23: PopTmpLdAd2 var_8A
  loc_A5CE26: FLdZeroAd var_AC
  loc_A5CE29: FStAdFunc var_90
  loc_A5CE2C: FLdRfVar var_90
  loc_A5CE2F: LitStr vbNullString
  loc_A5CE32: LitI2_Byte &HFF
  loc_A5CE34: LitI2_Byte &HFF
  loc_A5CE36: FLdRfVar var_A0
  loc_A5CE39: CStrVarTmp
  loc_A5CE3A: FStStrNoPop var_A4
  loc_A5CE3D: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A5CE42: FStStrNoPop var_A8
  loc_A5CE45: FLdPr Me
  loc_A5CE48: MemStStrCopy
  loc_A5CE4C: FFreeStr var_A4 = ""
  loc_A5CE53: FFreeAd var_88 = "": var_90 = ""
  loc_A5CE5C: FFree1Var var_A0 = ""
  loc_A5CE5F: FLdPr Me
  loc_A5CE62: MemLdStr global_64
  loc_A5CE65: LitStr vbNullString
  loc_A5CE68: NeStr
  loc_A5CE6A: BranchF loc_A5CEC7
  loc_A5CE6D: LitStr "Fecha devengado: "
  loc_A5CE70: FLdPr Me
  loc_A5CE73: MemLdStr global_64
  loc_A5CE76: ConcatStr
  loc_A5CE77: FStStrNoPop var_A4
  loc_A5CE7A: FLdPr Me
  loc_A5CE7D: MemStStrCopy
  loc_A5CE81: FFree1Str var_A4
  loc_A5CE84: FLdPr Me
  loc_A5CE87: VCallAd Control_ID_FechDeveMsk
  loc_A5CE8A: FStAdFunc var_B0
  loc_A5CE8D: LitNothing
  loc_A5CE8F: CastAd
  loc_A5CE92: FStAdFunc var_AC
  loc_A5CE95: FLdRfVar var_AC
  loc_A5CE98: FLdZeroAd var_B0
  loc_A5CE9B: FStAdFuncNoPop
  loc_A5CE9E: CastAd
  loc_A5CEA1: FStAdFunc var_90
  loc_A5CEA4: FLdRfVar var_90
  loc_A5CEA7: FLdPr Me
  loc_A5CEAA: MemLdRfVar from_stack_1.global_64
  loc_A5CEAD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A5CEB2: IStI2 Cancel
  loc_A5CEB5: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A5CEC0: ILdI2 Cancel
  loc_A5CEC3: BranchF loc_A5CEC7
  loc_A5CEC6: ExitProcHresult
  loc_A5CEC7: FLdPr Me
  loc_A5CECA: VCallAd Control_ID_FechDeveMsk
  loc_A5CECD: FStAdFunc var_88
  loc_A5CED0: FLdPr var_88
  loc_A5CED3: LateIdLdVar var_A0 DispID_11 -32767
  loc_A5CEDA: CStrVarTmp
  loc_A5CEDB: CVarStr var_C0
  loc_A5CEDE: ImpAdCallI2 IsDate()
  loc_A5CEE3: FFree1Ad var_88
  loc_A5CEE6: FFreeVar var_A0 = ""
  loc_A5CEED: BranchF loc_A5CF6D
  loc_A5CEF0: FLdPr Me
  loc_A5CEF3: VCallAd Control_ID_FechDeveMsk
  loc_A5CEF6: FStAdFunc var_88
  loc_A5CEF9: FLdPr var_88
  loc_A5CEFC: LateIdLdVar var_A0 DispID_15 0
  loc_A5CF03: PopAd
  loc_A5CF05: FLdPr Me
  loc_A5CF08: VCallAd Control_ID_FechDeveMsk
  loc_A5CF0B: FStAdFunc var_90
  loc_A5CF0E: FLdPr var_90
  loc_A5CF11: LateIdLdVar var_C0 DispID_11 -32767
  loc_A5CF18: PopAd
  loc_A5CF1A: FLdPr Me
  loc_A5CF1D: VCallAd Control_ID_FechDeveMsk
  loc_A5CF20: FStAdFunc var_B0
  loc_A5CF23: LitI2_Byte &HFF
  loc_A5CF25: PopTmpLdAd2 var_8A
  loc_A5CF28: FLdZeroAd var_B0
  loc_A5CF2B: FStAdFunc var_AC
  loc_A5CF2E: FLdRfVar var_AC
  loc_A5CF31: FLdRfVar var_C0
  loc_A5CF34: CStrVarTmp
  loc_A5CF35: FStStrNoPop var_A8
  loc_A5CF38: LitI2_Byte &HFF
  loc_A5CF3A: LitI2_Byte &HFF
  loc_A5CF3C: FLdRfVar var_A0
  loc_A5CF3F: CStrVarTmp
  loc_A5CF40: FStStrNoPop var_A4
  loc_A5CF43: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A5CF48: FStStrNoPop var_C4
  loc_A5CF4B: FLdPr Me
  loc_A5CF4E: MemStStrCopy
  loc_A5CF52: FFreeStr var_A4 = "": var_A8 = ""
  loc_A5CF5B: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A5CF66: FFreeVar var_A0 = ""
  loc_A5CF6D: FLdPr Me
  loc_A5CF70: MemLdStr global_64
  loc_A5CF73: LitStr vbNullString
  loc_A5CF76: NeStr
  loc_A5CF78: BranchF loc_A5CFD5
  loc_A5CF7B: LitStr "Fecha devengado: "
  loc_A5CF7E: FLdPr Me
  loc_A5CF81: MemLdStr global_64
  loc_A5CF84: ConcatStr
  loc_A5CF85: FStStrNoPop var_A4
  loc_A5CF88: FLdPr Me
  loc_A5CF8B: MemStStrCopy
  loc_A5CF8F: FFree1Str var_A4
  loc_A5CF92: FLdPr Me
  loc_A5CF95: VCallAd Control_ID_FechDeveMsk
  loc_A5CF98: FStAdFunc var_B0
  loc_A5CF9B: LitNothing
  loc_A5CF9D: CastAd
  loc_A5CFA0: FStAdFunc var_AC
  loc_A5CFA3: FLdRfVar var_AC
  loc_A5CFA6: FLdZeroAd var_B0
  loc_A5CFA9: FStAdFuncNoPop
  loc_A5CFAC: CastAd
  loc_A5CFAF: FStAdFunc var_90
  loc_A5CFB2: FLdRfVar var_90
  loc_A5CFB5: FLdPr Me
  loc_A5CFB8: MemLdRfVar from_stack_1.global_64
  loc_A5CFBB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A5CFC0: IStI2 Cancel
  loc_A5CFC3: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A5CFCE: ILdI2 Cancel
  loc_A5CFD1: BranchF loc_A5CFD5
  loc_A5CFD4: ExitProcHresult
  loc_A5CFD5: FLdRfVar var_8A
  loc_A5CFD8: FLdPr Me
  loc_A5CFDB: VCallAd Control_ID_cmdCancelar
  loc_A5CFDE: FStAdFunc var_88
  loc_A5CFE1: FLdPr var_88
  loc_A5CFE4:  = Me.Value
  loc_A5CFE9: FLdI2 var_8A
  loc_A5CFEC: NotI4
  loc_A5CFED: FLdPr Me
  loc_A5CFF0: VCallAd Control_ID_FechImpuMsk
  loc_A5CFF3: FStAdFunc var_90
  loc_A5CFF6: FLdPr var_90
  loc_A5CFF9: LateIdLdVar var_A0 DispID_13 -32767
  loc_A5D000: CBoolVar
  loc_A5D002: LitI2_Byte 0
  loc_A5D004: EqI2
  loc_A5D005: AndI4
  loc_A5D006: FLdPr Me
  loc_A5D009: MemLdUI1 global_60
  loc_A5D00D: LitI2_Byte 3
  loc_A5D00F: EqI2
  loc_A5D010: AndI4
  loc_A5D011: FFreeAd var_88 = ""
  loc_A5D018: FFree1Var var_A0 = ""
  loc_A5D01B: BranchF loc_A5D0C3
  loc_A5D01E: FLdPr Me
  loc_A5D021: VCallAd Control_ID_FechDeveMsk
  loc_A5D024: FStAdFunc var_88
  loc_A5D027: FLdPr var_88
  loc_A5D02A: LateIdLdVar var_A0 DispID_15 0
  loc_A5D031: CStrVarTmp
  loc_A5D032: CVarStr var_C0
  loc_A5D035: PopAdLdVar
  loc_A5D036: FLdPr Me
  loc_A5D039: VCallAd Control_ID_FechImpuMsk
  loc_A5D03C: FStAdFunc var_90
  loc_A5D03F: FLdPr var_90
  loc_A5D042: LateIdSt
  loc_A5D047: FFreeAd var_88 = ""
  loc_A5D04E: FFreeVar var_A0 = ""
  loc_A5D055: FLdPr Me
  loc_A5D058: VCallAd Control_ID_FechImpuMsk
  loc_A5D05B: FStAdFunc var_88
  loc_A5D05E: FLdPr var_88
  loc_A5D061: LateIdLdVar var_A0 DispID_11 -32767
  loc_A5D068: CStrVarTmp
  loc_A5D069: CVarStr var_C0
  loc_A5D06C: PopAdLdVar
  loc_A5D06D: FLdPr Me
  loc_A5D070: VCallAd Control_ID_FechImpuMsk
  loc_A5D073: FStAdFunc var_90
  loc_A5D076: FLdPr var_90
  loc_A5D079: LateIdSt
  loc_A5D07E: FFreeAd var_88 = ""
  loc_A5D085: FFreeVar var_A0 = ""
  loc_A5D08C: FLdPr Me
  loc_A5D08F: VCallAd Control_ID_FechImpuMsk
  loc_A5D092: FStAdFunc var_88
  loc_A5D095: FLdPr var_88
  loc_A5D098: LateIdLdVar var_A0 DispID_11 -32767
  loc_A5D09F: CStrVarTmp
  loc_A5D0A0: CVarStr var_C0
  loc_A5D0A3: PopAdLdVar
  loc_A5D0A4: FLdPr Me
  loc_A5D0A7: VCallAd Control_ID_FechImpuMsk
  loc_A5D0AA: FStAdFunc var_90
  loc_A5D0AD: FLdPr var_90
  loc_A5D0B0: LateIdSt
  loc_A5D0B5: FFreeAd var_88 = ""
  loc_A5D0BC: FFreeVar var_A0 = ""
  loc_A5D0C3: ExitProcHresult
End Sub

Private Sub FechDeveMsk_KeyPress(KeyAscii As Integer) '98F334
  'Data Table: 500268
  loc_98F2E8: ILdI2 KeyAscii
  loc_98F2EB: CI4UI1
  loc_98F2EC: LitI4 &H20
  loc_98F2F1: EqI4
  loc_98F2F2: BranchF loc_98F328
  loc_98F2F5: LitVar_Missing var_A4
  loc_98F2F8: PopAdLdVar
  loc_98F2F9: LitVarI4
  loc_98F301: PopAdLdVar
  loc_98F302: ImpAdLdRf MemVar_C3D9A8
  loc_98F305: NewIfNullPr frmCalendario
  loc_98F308: frmCalendario.Show from_stack_1, from_stack_2
  loc_98F30D: ImpAdLdRf MemVar_C3D038
  loc_98F310: CDargRef
  loc_98F314: FLdPr Me
  loc_98F317: VCallAd Control_ID_FechDeveMsk
  loc_98F31A: FStAdFunc var_A8
  loc_98F31D: FLdPr var_A8
  loc_98F320: LateIdSt
  loc_98F325: FFree1Ad var_A8
  loc_98F328: LitI2_Byte &HFF
  loc_98F32A: FLdPr Me
  loc_98F32D: MemStI2 global_190
  loc_98F330: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '94C3F8
  'Data Table: 500268
  loc_94C3E4: FLdPr Me
  loc_94C3E7: VCallAd Control_ID_CucuPersTxt
  loc_94C3EA: CVarAd
  loc_94C3EE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C3F3: FFree1Var var_94 = ""
  loc_94C3F6: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0D070
  'Data Table: 500268
  loc_A0CF0C: ILdI2 Shift
  loc_A0CF0F: CI4UI1
  loc_A0CF10: LitI4 2
  loc_A0CF15: EqI4
  loc_A0CF16: ILdI2 KeyCode
  loc_A0CF19: CI4UI1
  loc_A0CF1A: LitI4 &H42
  loc_A0CF1F: EqI4
  loc_A0CF20: AndI4
  loc_A0CF21: BranchF loc_A0D06C
  loc_A0CF24: LitI2_Byte 0
  loc_A0CF26: ImpAdLdRf MemVar_C3D74C
  loc_A0CF29: NewIfNullPr bscProveedor
  loc_A0CF2C: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0CF31: LitNothing
  loc_A0CF33: CastAd
  loc_A0CF36: FStAdFuncNoPop
  loc_A0CF39: FLdRfVar var_88
  loc_A0CF3C: ImpAdLdRf MemVar_C3D74C
  loc_A0CF3F: NewIfNullPr bscProveedor
  loc_A0CF42: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0CF47: FLdPr var_88
  loc_A0CF4A: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0CF4F: FFreeAd var_8C = ""
  loc_A0CF56: LitVar_Missing var_AC
  loc_A0CF59: PopAdLdVar
  loc_A0CF5A: LitVarI4
  loc_A0CF62: PopAdLdVar
  loc_A0CF63: ImpAdLdRf MemVar_C3D74C
  loc_A0CF66: NewIfNullPr bscProveedor
  loc_A0CF69: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0CF6E: FLdRfVar var_B0
  loc_A0CF71: FLdRfVar var_88
  loc_A0CF74: ImpAdLdRf MemVar_C3D74C
  loc_A0CF77: NewIfNullPr bscProveedor
  loc_A0CF7A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0CF7F: FLdPr var_88
  loc_A0CF82: from_stack_1 = clsbase.RecordCount
  loc_A0CF87: ILdRf var_B0
  loc_A0CF8A: LitI4 0
  loc_A0CF8F: GtI4
  loc_A0CF90: FFree1Ad var_88
  loc_A0CF93: BranchF loc_A0D06C
  loc_A0CF96: FLdRfVar var_C8
  loc_A0CF99: FLdRfVar var_B8
  loc_A0CF9C: LitVarStr var_9C, "CucuPers"
  loc_A0CFA1: PopAdLdVar
  loc_A0CFA2: FLdRfVar var_B4
  loc_A0CFA5: FLdRfVar var_8C
  loc_A0CFA8: FLdRfVar var_88
  loc_A0CFAB: ImpAdLdRf MemVar_C3D74C
  loc_A0CFAE: NewIfNullPr bscProveedor
  loc_A0CFB1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0CFB6: FLdPr var_88
  loc_A0CFB9: from_stack_1v = clsbase.RsFrmGet()
  loc_A0CFBE: FLdPr var_8C
  loc_A0CFC1:  = Me.Fields
  loc_A0CFC6: FLdPr var_B4
  loc_A0CFC9: from_stack_2 = Me.Item(from_stack_1)
  loc_A0CFCE: FLdPr var_B8
  loc_A0CFD1:  = Me.Value
  loc_A0CFD6: FLdRfVar var_C8
  loc_A0CFD9: CStrVarTmp
  loc_A0CFDA: FStStrNoPop var_CC
  loc_A0CFDD: FLdPr Me
  loc_A0CFE0: VCallAd Control_ID_CucuPersTxt
  loc_A0CFE3: FStAdFunc var_D0
  loc_A0CFE6: FLdPr var_D0
  loc_A0CFE9: Me.Text = from_stack_1
  loc_A0CFEE: FFree1Str var_CC
  loc_A0CFF1: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0CFFE: FFree1Var var_C8 = ""
  loc_A0D001: FLdRfVar var_C8
  loc_A0D004: FLdRfVar var_B8
  loc_A0D007: LitVarStr var_9C, "DetaProv"
  loc_A0D00C: PopAdLdVar
  loc_A0D00D: FLdRfVar var_B4
  loc_A0D010: FLdRfVar var_8C
  loc_A0D013: FLdRfVar var_88
  loc_A0D016: ImpAdLdRf MemVar_C3D74C
  loc_A0D019: NewIfNullPr bscProveedor
  loc_A0D01C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D021: FLdPr var_88
  loc_A0D024: from_stack_1v = clsbase.RsFrmGet()
  loc_A0D029: FLdPr var_8C
  loc_A0D02C:  = Me.Fields
  loc_A0D031: FLdPr var_B4
  loc_A0D034: from_stack_2 = Me.Item(from_stack_1)
  loc_A0D039: FLdPr var_B8
  loc_A0D03C:  = Me.Value
  loc_A0D041: FLdRfVar var_C8
  loc_A0D044: CStrVarTmp
  loc_A0D045: FStStrNoPop var_CC
  loc_A0D048: FLdPr Me
  loc_A0D04B: VCallAd Control_ID_DetaProvLbl
  loc_A0D04E: FStAdFunc var_D0
  loc_A0D051: FLdPr var_D0
  loc_A0D054: Me.Caption = from_stack_1
  loc_A0D059: FFree1Str var_CC
  loc_A0D05C: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0D069: FFree1Var var_C8 = ""
  loc_A0D06C: ExitProcHresult
  loc_A0D06D: FFree1Ad arg_0
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B8BDB0
  'Data Table: 500268
  loc_B8AF60: FLdRfVar var_8A
  loc_B8AF63: FLdPr Me
  loc_B8AF66: VCallAd Control_ID_cmdCancelar
  loc_B8AF69: FStAdFunc var_88
  loc_B8AF6C: FLdPr var_88
  loc_B8AF6F:  = Me.Value
  loc_B8AF74: FLdI2 var_8A
  loc_B8AF77: NotI4
  loc_B8AF78: FLdRfVar var_92
  loc_B8AF7B: FLdPr Me
  loc_B8AF7E: VCallAd Control_ID_CucuPersTxt
  loc_B8AF81: FStAdFunc var_90
  loc_B8AF84: FLdPr var_90
  loc_B8AF87:  = Me.Enabled
  loc_B8AF8C: FLdI2 var_92
  loc_B8AF8F: AndI4
  loc_B8AF90: FFreeAd var_88 = ""
  loc_B8AF97: BranchF loc_B8BB41
  loc_B8AF9A: FLdRfVar var_98
  loc_B8AF9D: FLdPr Me
  loc_B8AFA0: VCallAd Control_ID_CucuPersTxt
  loc_B8AFA3: FStAdFunc var_88
  loc_B8AFA6: FLdPr var_88
  loc_B8AFA9:  = Me.Text
  loc_B8AFAE: ILdRf var_98
  loc_B8AFB1: ImpAdCallI2 Trim$()
  loc_B8AFB6: FStStrNoPop var_9C
  loc_B8AFB9: LitStr vbNullString
  loc_B8AFBC: NeStr
  loc_B8AFBE: FFreeStr var_98 = ""
  loc_B8AFC5: FFree1Ad var_88
  loc_B8AFC8: BranchF loc_B8B8DA
  loc_B8AFCB: FLdPr Me
  loc_B8AFCE: VCallAd Control_ID_CucuPersTxt
  loc_B8AFD1: FStAdFunc var_88
  loc_B8AFD4: FLdRfVar var_88
  loc_B8AFD7: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B8AFDC: FFree1Ad var_88
  loc_B8AFDF: BranchF loc_B8B429
  loc_B8AFE2: FLdRfVar var_98
  loc_B8AFE5: FLdPr Me
  loc_B8AFE8: VCallAd Control_ID_CucuPersTxt
  loc_B8AFEB: FStAdFunc var_88
  loc_B8AFEE: FLdPr var_88
  loc_B8AFF1:  = Me.Text
  loc_B8AFF6: LitVarStr var_FC, " AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_B8AFFB: FLdRfVar var_9C
  loc_B8AFFE: FLdPr Me
  loc_B8B001: VCallAd Control_ID_CucuPersTxt
  loc_B8B004: FStAdFunc var_90
  loc_B8B007: FLdPr var_90
  loc_B8B00A:  = Me.Text
  loc_B8B00F: FLdZeroAd var_9C
  loc_B8B012: CVarStr var_DC
  loc_B8B015: LitVarStr var_BC, vbNullString
  loc_B8B01A: FStVarCopyObj var_CC
  loc_B8B01D: FLdRfVar var_CC
  loc_B8B020: ILdRf var_98
  loc_B8B023: LitStr "0"
  loc_B8B026: EqStr
  loc_B8B028: CVarBoolI2 var_AC
  loc_B8B02C: FLdRfVar var_EC
  loc_B8B02F: ImpAdCallFPR4  = IIf(, , )
  loc_B8B034: FLdRfVar var_EC
  loc_B8B037: ConcatVar var_10C
  loc_B8B03B: LitVarStr var_11C, Chr(37) & "'"
  loc_B8B040: ConcatVar var_12C
  loc_B8B044: CStrVarVal var_130
  loc_B8B048: ImpAdLdRf MemVar_C3D74C
  loc_B8B04B: NewIfNullPr bscProveedor
  loc_B8B04E: Call bscProveedor.Constructor(from_stack_1v)
  loc_B8B053: FFreeStr var_98 = ""
  loc_B8B05A: FFreeAd var_88 = ""
  loc_B8B061: FFreeVar var_AC = "": var_CC = "": var_DC = "": var_EC = "": var_10C = ""
  loc_B8B070: FLdRfVar var_134
  loc_B8B073: FLdRfVar var_90
  loc_B8B076: FLdRfVar var_88
  loc_B8B079: ImpAdLdRf MemVar_C3D74C
  loc_B8B07C: NewIfNullPr bscProveedor
  loc_B8B07F: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B084: FLdPr var_88
  loc_B8B087: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B08C: FLdPr var_90
  loc_B8B08F:  = Me.RecordCount
  loc_B8B094: ILdRf var_134
  loc_B8B097: LitI4 1
  loc_B8B09C: EqI4
  loc_B8B09D: FFreeAd var_88 = ""
  loc_B8B0A4: BranchF loc_B8B1C7
  loc_B8B0A7: FLdRfVar var_CC
  loc_B8B0AA: FLdRfVar var_13C
  loc_B8B0AD: LitVarStr var_AC, "CucuPers"
  loc_B8B0B2: PopAdLdVar
  loc_B8B0B3: FLdRfVar var_138
  loc_B8B0B6: FLdRfVar var_90
  loc_B8B0B9: FLdRfVar var_88
  loc_B8B0BC: ImpAdLdRf MemVar_C3D74C
  loc_B8B0BF: NewIfNullPr bscProveedor
  loc_B8B0C2: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B0C7: FLdPr var_88
  loc_B8B0CA: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B0CF: FLdPr var_90
  loc_B8B0D2:  = Me.Fields
  loc_B8B0D7: FLdPr var_138
  loc_B8B0DA: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B0DF: FLdPr var_13C
  loc_B8B0E2:  = Me.Value
  loc_B8B0E7: FLdRfVar var_CC
  loc_B8B0EA: CStrVarTmp
  loc_B8B0EB: FStStrNoPop var_98
  loc_B8B0EE: FLdPr Me
  loc_B8B0F1: VCallAd Control_ID_CucuPersTxt
  loc_B8B0F4: FStAdFunc var_140
  loc_B8B0F7: FLdPr var_140
  loc_B8B0FA: Me.Text = from_stack_1
  loc_B8B0FF: FFree1Str var_98
  loc_B8B102: FFreeAd var_88 = "": var_90 = "": var_138 = "": var_13C = ""
  loc_B8B10F: FFree1Var var_CC = ""
  loc_B8B112: FLdRfVar var_CC
  loc_B8B115: FLdRfVar var_13C
  loc_B8B118: LitVarStr var_AC, "DetaProv"
  loc_B8B11D: PopAdLdVar
  loc_B8B11E: FLdRfVar var_138
  loc_B8B121: FLdRfVar var_90
  loc_B8B124: FLdRfVar var_88
  loc_B8B127: ImpAdLdRf MemVar_C3D74C
  loc_B8B12A: NewIfNullPr bscProveedor
  loc_B8B12D: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B132: FLdPr var_88
  loc_B8B135: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B13A: FLdPr var_90
  loc_B8B13D:  = Me.Fields
  loc_B8B142: FLdPr var_138
  loc_B8B145: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B14A: FLdPr var_13C
  loc_B8B14D:  = Me.Value
  loc_B8B152: FLdRfVar var_CC
  loc_B8B155: CStrVarTmp
  loc_B8B156: FStStrNoPop var_98
  loc_B8B159: FLdPr Me
  loc_B8B15C: VCallAd Control_ID_DetaProvLbl
  loc_B8B15F: FStAdFunc var_140
  loc_B8B162: FLdPr var_140
  loc_B8B165: Me.Caption = from_stack_1
  loc_B8B16A: FFree1Str var_98
  loc_B8B16D: FFreeAd var_88 = "": var_90 = "": var_138 = "": var_13C = ""
  loc_B8B17A: FFree1Var var_CC = ""
  loc_B8B17D: LitStr vbNullString
  loc_B8B180: FLdPr Me
  loc_B8B183: MemStStrCopy
  loc_B8B187: FLdPr Me
  loc_B8B18A: VCallAd Control_ID_CucuPersTxt
  loc_B8B18D: FStAdFunc var_13C
  loc_B8B190: FLdPr Me
  loc_B8B193: VCallAd Control_ID_DetaProvLbl
  loc_B8B196: FStAdFunc var_138
  loc_B8B199: FLdRfVar var_138
  loc_B8B19C: FLdZeroAd var_13C
  loc_B8B19F: FStAdFuncNoPop
  loc_B8B1A2: CastAd
  loc_B8B1A5: FStAdFunc var_90
  loc_B8B1A8: FLdRfVar var_90
  loc_B8B1AB: FLdPr Me
  loc_B8B1AE: MemLdRfVar from_stack_1.global_64
  loc_B8B1B1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8B1B6: IStI2 Cancel
  loc_B8B1B9: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8B1C4: Branch loc_B8B426
  loc_B8B1C7: FLdRfVar var_134
  loc_B8B1CA: FLdRfVar var_90
  loc_B8B1CD: FLdRfVar var_88
  loc_B8B1D0: ImpAdLdRf MemVar_C3D74C
  loc_B8B1D3: NewIfNullPr bscProveedor
  loc_B8B1D6: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B1DB: FLdPr var_88
  loc_B8B1DE: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B1E3: FLdPr var_90
  loc_B8B1E6:  = Me.RecordCount
  loc_B8B1EB: ILdRf var_134
  loc_B8B1EE: LitI4 1
  loc_B8B1F3: GtI4
  loc_B8B1F4: FFreeAd var_88 = ""
  loc_B8B1FB: BranchF loc_B8B3A8
  loc_B8B1FE: LitVar_Missing var_BC
  loc_B8B201: PopAdLdVar
  loc_B8B202: LitVarI4
  loc_B8B20A: PopAdLdVar
  loc_B8B20B: ImpAdLdRf MemVar_C3D74C
  loc_B8B20E: NewIfNullPr bscProveedor
  loc_B8B211: bscProveedor.Show from_stack_1, from_stack_2
  loc_B8B216: FLdRfVar var_134
  loc_B8B219: FLdRfVar var_88
  loc_B8B21C: ImpAdLdRf MemVar_C3D74C
  loc_B8B21F: NewIfNullPr bscProveedor
  loc_B8B222: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B227: FLdPr var_88
  loc_B8B22A: from_stack_1 = clsbase.RecordCount
  loc_B8B22F: ILdRf var_134
  loc_B8B232: LitI4 0
  loc_B8B237: GtI4
  loc_B8B238: FFree1Ad var_88
  loc_B8B23B: BranchF loc_B8B35E
  loc_B8B23E: FLdRfVar var_CC
  loc_B8B241: FLdRfVar var_13C
  loc_B8B244: LitVarStr var_AC, "CucuPers"
  loc_B8B249: PopAdLdVar
  loc_B8B24A: FLdRfVar var_138
  loc_B8B24D: FLdRfVar var_90
  loc_B8B250: FLdRfVar var_88
  loc_B8B253: ImpAdLdRf MemVar_C3D74C
  loc_B8B256: NewIfNullPr bscProveedor
  loc_B8B259: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B25E: FLdPr var_88
  loc_B8B261: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B266: FLdPr var_90
  loc_B8B269:  = Me.Fields
  loc_B8B26E: FLdPr var_138
  loc_B8B271: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B276: FLdPr var_13C
  loc_B8B279:  = Me.Value
  loc_B8B27E: FLdRfVar var_CC
  loc_B8B281: CStrVarTmp
  loc_B8B282: FStStrNoPop var_98
  loc_B8B285: FLdPr Me
  loc_B8B288: VCallAd Control_ID_CucuPersTxt
  loc_B8B28B: FStAdFunc var_140
  loc_B8B28E: FLdPr var_140
  loc_B8B291: Me.Text = from_stack_1
  loc_B8B296: FFree1Str var_98
  loc_B8B299: FFreeAd var_88 = "": var_90 = "": var_138 = "": var_13C = ""
  loc_B8B2A6: FFree1Var var_CC = ""
  loc_B8B2A9: FLdRfVar var_CC
  loc_B8B2AC: FLdRfVar var_13C
  loc_B8B2AF: LitVarStr var_AC, "DetaProv"
  loc_B8B2B4: PopAdLdVar
  loc_B8B2B5: FLdRfVar var_138
  loc_B8B2B8: FLdRfVar var_90
  loc_B8B2BB: FLdRfVar var_88
  loc_B8B2BE: ImpAdLdRf MemVar_C3D74C
  loc_B8B2C1: NewIfNullPr bscProveedor
  loc_B8B2C4: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B2C9: FLdPr var_88
  loc_B8B2CC: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B2D1: FLdPr var_90
  loc_B8B2D4:  = Me.Fields
  loc_B8B2D9: FLdPr var_138
  loc_B8B2DC: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B2E1: FLdPr var_13C
  loc_B8B2E4:  = Me.Value
  loc_B8B2E9: FLdRfVar var_CC
  loc_B8B2EC: CStrVarTmp
  loc_B8B2ED: FStStrNoPop var_98
  loc_B8B2F0: FLdPr Me
  loc_B8B2F3: VCallAd Control_ID_DetaProvLbl
  loc_B8B2F6: FStAdFunc var_140
  loc_B8B2F9: FLdPr var_140
  loc_B8B2FC: Me.Caption = from_stack_1
  loc_B8B301: FFree1Str var_98
  loc_B8B304: FFreeAd var_88 = "": var_90 = "": var_138 = "": var_13C = ""
  loc_B8B311: FFree1Var var_CC = ""
  loc_B8B314: LitStr vbNullString
  loc_B8B317: FLdPr Me
  loc_B8B31A: MemStStrCopy
  loc_B8B31E: FLdPr Me
  loc_B8B321: VCallAd Control_ID_CucuPersTxt
  loc_B8B324: FStAdFunc var_13C
  loc_B8B327: FLdPr Me
  loc_B8B32A: VCallAd Control_ID_DetaProvLbl
  loc_B8B32D: FStAdFunc var_138
  loc_B8B330: FLdRfVar var_138
  loc_B8B333: FLdZeroAd var_13C
  loc_B8B336: FStAdFuncNoPop
  loc_B8B339: CastAd
  loc_B8B33C: FStAdFunc var_90
  loc_B8B33F: FLdRfVar var_90
  loc_B8B342: FLdPr Me
  loc_B8B345: MemLdRfVar from_stack_1.global_64
  loc_B8B348: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8B34D: IStI2 Cancel
  loc_B8B350: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8B35B: Branch loc_B8B3A5
  loc_B8B35E: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B8B361: FLdPr Me
  loc_B8B364: MemStStrCopy
  loc_B8B368: FLdPr Me
  loc_B8B36B: VCallAd Control_ID_CucuPersTxt
  loc_B8B36E: FStAdFunc var_13C
  loc_B8B371: FLdPr Me
  loc_B8B374: VCallAd Control_ID_DetaProvLbl
  loc_B8B377: FStAdFunc var_138
  loc_B8B37A: FLdRfVar var_138
  loc_B8B37D: FLdZeroAd var_13C
  loc_B8B380: FStAdFuncNoPop
  loc_B8B383: CastAd
  loc_B8B386: FStAdFunc var_90
  loc_B8B389: FLdRfVar var_90
  loc_B8B38C: FLdPr Me
  loc_B8B38F: MemLdRfVar from_stack_1.global_64
  loc_B8B392: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8B397: IStI2 Cancel
  loc_B8B39A: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8B3A5: Branch loc_B8B426
  loc_B8B3A8: FLdRfVar var_134
  loc_B8B3AB: FLdRfVar var_90
  loc_B8B3AE: FLdRfVar var_88
  loc_B8B3B1: ImpAdLdRf MemVar_C3D74C
  loc_B8B3B4: NewIfNullPr bscProveedor
  loc_B8B3B7: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B3BC: FLdPr var_88
  loc_B8B3BF: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B3C4: FLdPr var_90
  loc_B8B3C7:  = Me.RecordCount
  loc_B8B3CC: ILdRf var_134
  loc_B8B3CF: LitI4 1
  loc_B8B3D4: LtI4
  loc_B8B3D5: FFreeAd var_88 = ""
  loc_B8B3DC: BranchF loc_B8B426
  loc_B8B3DF: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B8B3E2: FLdPr Me
  loc_B8B3E5: MemStStrCopy
  loc_B8B3E9: FLdPr Me
  loc_B8B3EC: VCallAd Control_ID_CucuPersTxt
  loc_B8B3EF: FStAdFunc var_13C
  loc_B8B3F2: FLdPr Me
  loc_B8B3F5: VCallAd Control_ID_DetaProvLbl
  loc_B8B3F8: FStAdFunc var_138
  loc_B8B3FB: FLdRfVar var_138
  loc_B8B3FE: FLdZeroAd var_13C
  loc_B8B401: FStAdFuncNoPop
  loc_B8B404: CastAd
  loc_B8B407: FStAdFunc var_90
  loc_B8B40A: FLdRfVar var_90
  loc_B8B40D: FLdPr Me
  loc_B8B410: MemLdRfVar from_stack_1.global_64
  loc_B8B413: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8B418: IStI2 Cancel
  loc_B8B41B: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8B426: Branch loc_B8B83A
  loc_B8B429: FLdRfVar var_98
  loc_B8B42C: FLdPr Me
  loc_B8B42F: VCallAd Control_ID_CucuPersTxt
  loc_B8B432: FStAdFunc var_88
  loc_B8B435: FLdPr var_88
  loc_B8B438:  = Me.Text
  loc_B8B43D: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B8B440: LitI4 0
  loc_B8B445: LitI4 -1
  loc_B8B44A: LitI4 1
  loc_B8B44F: LitStr Chr(37)
  loc_B8B452: LitStr " "
  loc_B8B455: ILdRf var_98
  loc_B8B458: ImpAdCallI2 Replace(, , , , , )
  loc_B8B45D: FStStrNoPop var_9C
  loc_B8B460: ConcatStr
  loc_B8B461: FStStrNoPop var_130
  loc_B8B464: LitStr Chr(37) & "'"
  loc_B8B467: ConcatStr
  loc_B8B468: FStStrNoPop var_144
  loc_B8B46B: ImpAdLdRf MemVar_C3D74C
  loc_B8B46E: NewIfNullPr bscProveedor
  loc_B8B471: Call bscProveedor.Constructor(from_stack_1v)
  loc_B8B476: FFreeStr var_98 = "": var_9C = "": var_130 = ""
  loc_B8B481: FFree1Ad var_88
  loc_B8B484: FLdRfVar var_134
  loc_B8B487: FLdRfVar var_90
  loc_B8B48A: FLdRfVar var_88
  loc_B8B48D: ImpAdLdRf MemVar_C3D74C
  loc_B8B490: NewIfNullPr bscProveedor
  loc_B8B493: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B498: FLdPr var_88
  loc_B8B49B: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B4A0: FLdPr var_90
  loc_B8B4A3:  = Me.RecordCount
  loc_B8B4A8: ILdRf var_134
  loc_B8B4AB: LitI4 1
  loc_B8B4B0: EqI4
  loc_B8B4B1: FFreeAd var_88 = ""
  loc_B8B4B8: BranchF loc_B8B5DB
  loc_B8B4BB: FLdRfVar var_CC
  loc_B8B4BE: FLdRfVar var_13C
  loc_B8B4C1: LitVarStr var_AC, "CucuPers"
  loc_B8B4C6: PopAdLdVar
  loc_B8B4C7: FLdRfVar var_138
  loc_B8B4CA: FLdRfVar var_90
  loc_B8B4CD: FLdRfVar var_88
  loc_B8B4D0: ImpAdLdRf MemVar_C3D74C
  loc_B8B4D3: NewIfNullPr bscProveedor
  loc_B8B4D6: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B4DB: FLdPr var_88
  loc_B8B4DE: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B4E3: FLdPr var_90
  loc_B8B4E6:  = Me.Fields
  loc_B8B4EB: FLdPr var_138
  loc_B8B4EE: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B4F3: FLdPr var_13C
  loc_B8B4F6:  = Me.Value
  loc_B8B4FB: FLdRfVar var_CC
  loc_B8B4FE: CStrVarTmp
  loc_B8B4FF: FStStrNoPop var_98
  loc_B8B502: FLdPr Me
  loc_B8B505: VCallAd Control_ID_CucuPersTxt
  loc_B8B508: FStAdFunc var_140
  loc_B8B50B: FLdPr var_140
  loc_B8B50E: Me.Text = from_stack_1
  loc_B8B513: FFree1Str var_98
  loc_B8B516: FFreeAd var_88 = "": var_90 = "": var_138 = "": var_13C = ""
  loc_B8B523: FFree1Var var_CC = ""
  loc_B8B526: FLdRfVar var_CC
  loc_B8B529: FLdRfVar var_13C
  loc_B8B52C: LitVarStr var_AC, "DetaProv"
  loc_B8B531: PopAdLdVar
  loc_B8B532: FLdRfVar var_138
  loc_B8B535: FLdRfVar var_90
  loc_B8B538: FLdRfVar var_88
  loc_B8B53B: ImpAdLdRf MemVar_C3D74C
  loc_B8B53E: NewIfNullPr bscProveedor
  loc_B8B541: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B546: FLdPr var_88
  loc_B8B549: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B54E: FLdPr var_90
  loc_B8B551:  = Me.Fields
  loc_B8B556: FLdPr var_138
  loc_B8B559: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B55E: FLdPr var_13C
  loc_B8B561:  = Me.Value
  loc_B8B566: FLdRfVar var_CC
  loc_B8B569: CStrVarTmp
  loc_B8B56A: FStStrNoPop var_98
  loc_B8B56D: FLdPr Me
  loc_B8B570: VCallAd Control_ID_DetaProvLbl
  loc_B8B573: FStAdFunc var_140
  loc_B8B576: FLdPr var_140
  loc_B8B579: Me.Caption = from_stack_1
  loc_B8B57E: FFree1Str var_98
  loc_B8B581: FFreeAd var_88 = "": var_90 = "": var_138 = "": var_13C = ""
  loc_B8B58E: FFree1Var var_CC = ""
  loc_B8B591: LitStr vbNullString
  loc_B8B594: FLdPr Me
  loc_B8B597: MemStStrCopy
  loc_B8B59B: FLdPr Me
  loc_B8B59E: VCallAd Control_ID_CucuPersTxt
  loc_B8B5A1: FStAdFunc var_13C
  loc_B8B5A4: FLdPr Me
  loc_B8B5A7: VCallAd Control_ID_DetaProvLbl
  loc_B8B5AA: FStAdFunc var_138
  loc_B8B5AD: FLdRfVar var_138
  loc_B8B5B0: FLdZeroAd var_13C
  loc_B8B5B3: FStAdFuncNoPop
  loc_B8B5B6: CastAd
  loc_B8B5B9: FStAdFunc var_90
  loc_B8B5BC: FLdRfVar var_90
  loc_B8B5BF: FLdPr Me
  loc_B8B5C2: MemLdRfVar from_stack_1.global_64
  loc_B8B5C5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8B5CA: IStI2 Cancel
  loc_B8B5CD: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8B5D8: Branch loc_B8B83A
  loc_B8B5DB: FLdRfVar var_134
  loc_B8B5DE: FLdRfVar var_90
  loc_B8B5E1: FLdRfVar var_88
  loc_B8B5E4: ImpAdLdRf MemVar_C3D74C
  loc_B8B5E7: NewIfNullPr bscProveedor
  loc_B8B5EA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B5EF: FLdPr var_88
  loc_B8B5F2: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B5F7: FLdPr var_90
  loc_B8B5FA:  = Me.RecordCount
  loc_B8B5FF: ILdRf var_134
  loc_B8B602: LitI4 1
  loc_B8B607: GtI4
  loc_B8B608: FFreeAd var_88 = ""
  loc_B8B60F: BranchF loc_B8B7BC
  loc_B8B612: LitVar_Missing var_BC
  loc_B8B615: PopAdLdVar
  loc_B8B616: LitVarI4
  loc_B8B61E: PopAdLdVar
  loc_B8B61F: ImpAdLdRf MemVar_C3D74C
  loc_B8B622: NewIfNullPr bscProveedor
  loc_B8B625: bscProveedor.Show from_stack_1, from_stack_2
  loc_B8B62A: FLdRfVar var_134
  loc_B8B62D: FLdRfVar var_88
  loc_B8B630: ImpAdLdRf MemVar_C3D74C
  loc_B8B633: NewIfNullPr bscProveedor
  loc_B8B636: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B63B: FLdPr var_88
  loc_B8B63E: from_stack_1 = clsbase.RecordCount
  loc_B8B643: ILdRf var_134
  loc_B8B646: LitI4 0
  loc_B8B64B: GtI4
  loc_B8B64C: FFree1Ad var_88
  loc_B8B64F: BranchF loc_B8B772
  loc_B8B652: FLdRfVar var_CC
  loc_B8B655: FLdRfVar var_13C
  loc_B8B658: LitVarStr var_AC, "CucuPers"
  loc_B8B65D: PopAdLdVar
  loc_B8B65E: FLdRfVar var_138
  loc_B8B661: FLdRfVar var_90
  loc_B8B664: FLdRfVar var_88
  loc_B8B667: ImpAdLdRf MemVar_C3D74C
  loc_B8B66A: NewIfNullPr bscProveedor
  loc_B8B66D: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B672: FLdPr var_88
  loc_B8B675: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B67A: FLdPr var_90
  loc_B8B67D:  = Me.Fields
  loc_B8B682: FLdPr var_138
  loc_B8B685: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B68A: FLdPr var_13C
  loc_B8B68D:  = Me.Value
  loc_B8B692: FLdRfVar var_CC
  loc_B8B695: CStrVarTmp
  loc_B8B696: FStStrNoPop var_98
  loc_B8B699: FLdPr Me
  loc_B8B69C: VCallAd Control_ID_CucuPersTxt
  loc_B8B69F: FStAdFunc var_140
  loc_B8B6A2: FLdPr var_140
  loc_B8B6A5: Me.Text = from_stack_1
  loc_B8B6AA: FFree1Str var_98
  loc_B8B6AD: FFreeAd var_88 = "": var_90 = "": var_138 = "": var_13C = ""
  loc_B8B6BA: FFree1Var var_CC = ""
  loc_B8B6BD: FLdRfVar var_CC
  loc_B8B6C0: FLdRfVar var_13C
  loc_B8B6C3: LitVarStr var_AC, "DetaProv"
  loc_B8B6C8: PopAdLdVar
  loc_B8B6C9: FLdRfVar var_138
  loc_B8B6CC: FLdRfVar var_90
  loc_B8B6CF: FLdRfVar var_88
  loc_B8B6D2: ImpAdLdRf MemVar_C3D74C
  loc_B8B6D5: NewIfNullPr bscProveedor
  loc_B8B6D8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B6DD: FLdPr var_88
  loc_B8B6E0: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B6E5: FLdPr var_90
  loc_B8B6E8:  = Me.Fields
  loc_B8B6ED: FLdPr var_138
  loc_B8B6F0: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B6F5: FLdPr var_13C
  loc_B8B6F8:  = Me.Value
  loc_B8B6FD: FLdRfVar var_CC
  loc_B8B700: CStrVarTmp
  loc_B8B701: FStStrNoPop var_98
  loc_B8B704: FLdPr Me
  loc_B8B707: VCallAd Control_ID_DetaProvLbl
  loc_B8B70A: FStAdFunc var_140
  loc_B8B70D: FLdPr var_140
  loc_B8B710: Me.Caption = from_stack_1
  loc_B8B715: FFree1Str var_98
  loc_B8B718: FFreeAd var_88 = "": var_90 = "": var_138 = "": var_13C = ""
  loc_B8B725: FFree1Var var_CC = ""
  loc_B8B728: LitStr vbNullString
  loc_B8B72B: FLdPr Me
  loc_B8B72E: MemStStrCopy
  loc_B8B732: FLdPr Me
  loc_B8B735: VCallAd Control_ID_CucuPersTxt
  loc_B8B738: FStAdFunc var_13C
  loc_B8B73B: FLdPr Me
  loc_B8B73E: VCallAd Control_ID_DetaProvLbl
  loc_B8B741: FStAdFunc var_138
  loc_B8B744: FLdRfVar var_138
  loc_B8B747: FLdZeroAd var_13C
  loc_B8B74A: FStAdFuncNoPop
  loc_B8B74D: CastAd
  loc_B8B750: FStAdFunc var_90
  loc_B8B753: FLdRfVar var_90
  loc_B8B756: FLdPr Me
  loc_B8B759: MemLdRfVar from_stack_1.global_64
  loc_B8B75C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8B761: IStI2 Cancel
  loc_B8B764: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8B76F: Branch loc_B8B7B9
  loc_B8B772: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B8B775: FLdPr Me
  loc_B8B778: MemStStrCopy
  loc_B8B77C: FLdPr Me
  loc_B8B77F: VCallAd Control_ID_CucuPersTxt
  loc_B8B782: FStAdFunc var_13C
  loc_B8B785: FLdPr Me
  loc_B8B788: VCallAd Control_ID_DetaProvLbl
  loc_B8B78B: FStAdFunc var_138
  loc_B8B78E: FLdRfVar var_138
  loc_B8B791: FLdZeroAd var_13C
  loc_B8B794: FStAdFuncNoPop
  loc_B8B797: CastAd
  loc_B8B79A: FStAdFunc var_90
  loc_B8B79D: FLdRfVar var_90
  loc_B8B7A0: FLdPr Me
  loc_B8B7A3: MemLdRfVar from_stack_1.global_64
  loc_B8B7A6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8B7AB: IStI2 Cancel
  loc_B8B7AE: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8B7B9: Branch loc_B8B83A
  loc_B8B7BC: FLdRfVar var_134
  loc_B8B7BF: FLdRfVar var_90
  loc_B8B7C2: FLdRfVar var_88
  loc_B8B7C5: ImpAdLdRf MemVar_C3D74C
  loc_B8B7C8: NewIfNullPr bscProveedor
  loc_B8B7CB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B7D0: FLdPr var_88
  loc_B8B7D3: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B7D8: FLdPr var_90
  loc_B8B7DB:  = Me.RecordCount
  loc_B8B7E0: ILdRf var_134
  loc_B8B7E3: LitI4 1
  loc_B8B7E8: LtI4
  loc_B8B7E9: FFreeAd var_88 = ""
  loc_B8B7F0: BranchF loc_B8B83A
  loc_B8B7F3: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B8B7F6: FLdPr Me
  loc_B8B7F9: MemStStrCopy
  loc_B8B7FD: FLdPr Me
  loc_B8B800: VCallAd Control_ID_CucuPersTxt
  loc_B8B803: FStAdFunc var_13C
  loc_B8B806: FLdPr Me
  loc_B8B809: VCallAd Control_ID_DetaProvLbl
  loc_B8B80C: FStAdFunc var_138
  loc_B8B80F: FLdRfVar var_138
  loc_B8B812: FLdZeroAd var_13C
  loc_B8B815: FStAdFuncNoPop
  loc_B8B818: CastAd
  loc_B8B81B: FStAdFunc var_90
  loc_B8B81E: FLdRfVar var_90
  loc_B8B821: FLdPr Me
  loc_B8B824: MemLdRfVar from_stack_1.global_64
  loc_B8B827: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8B82C: IStI2 Cancel
  loc_B8B82F: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8B83A: FLdRfVar var_134
  loc_B8B83D: FLdRfVar var_88
  loc_B8B840: ImpAdLdRf MemVar_C3D74C
  loc_B8B843: NewIfNullPr bscProveedor
  loc_B8B846: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B84B: FLdPr var_88
  loc_B8B84E: from_stack_1 = clsbase.RecordCount
  loc_B8B853: ILdRf var_134
  loc_B8B856: LitI4 0
  loc_B8B85B: GtI4
  loc_B8B85C: FFree1Ad var_88
  loc_B8B85F: BranchF loc_B8B8D7
  loc_B8B862: FLdRfVar var_CC
  loc_B8B865: FLdRfVar var_13C
  loc_B8B868: LitVarStr var_AC, "CucuPers"
  loc_B8B86D: PopAdLdVar
  loc_B8B86E: FLdRfVar var_138
  loc_B8B871: FLdRfVar var_90
  loc_B8B874: FLdRfVar var_88
  loc_B8B877: ImpAdLdRf MemVar_C3D74C
  loc_B8B87A: NewIfNullPr bscProveedor
  loc_B8B87D: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B882: FLdPr var_88
  loc_B8B885: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B88A: FLdPr var_90
  loc_B8B88D:  = Me.Fields
  loc_B8B892: FLdPr var_138
  loc_B8B895: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B89A: FLdPr var_13C
  loc_B8B89D:  = Me.Value
  loc_B8B8A2: FLdPr Me
  loc_B8B8A5: MemLdRfVar from_stack_1.global_160
  loc_B8B8A8: NewIfNullRf
  loc_B8B8AC: FLdRfVar var_CC
  loc_B8B8AF: CStrVarTmp
  loc_B8B8B0: FStStrNoPop var_98
  loc_B8B8B3: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_B8B8B8: FStStrNoPop var_9C
  loc_B8B8BB: FLdPr Me
  loc_B8B8BE: MemStStrCopy
  loc_B8B8C2: FFreeStr var_98 = ""
  loc_B8B8C9: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8B8D4: FFree1Var var_CC = ""
  loc_B8B8D7: Branch loc_B8BA9E
  loc_B8B8DA: LitI2_Byte 0
  loc_B8B8DC: ImpAdLdRf MemVar_C3D74C
  loc_B8B8DF: NewIfNullPr bscProveedor
  loc_B8B8E2: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B8B8E7: LitNothing
  loc_B8B8E9: CastAd
  loc_B8B8EC: FStAdFuncNoPop
  loc_B8B8EF: FLdRfVar var_88
  loc_B8B8F2: ImpAdLdRf MemVar_C3D74C
  loc_B8B8F5: NewIfNullPr bscProveedor
  loc_B8B8F8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B8FD: FLdPr var_88
  loc_B8B900: Call clsbase.RsFrmSet(from_stack_1v)
  loc_B8B905: FFreeAd var_90 = ""
  loc_B8B90C: LitVar_Missing var_BC
  loc_B8B90F: PopAdLdVar
  loc_B8B910: LitVarI4
  loc_B8B918: PopAdLdVar
  loc_B8B919: ImpAdLdRf MemVar_C3D74C
  loc_B8B91C: NewIfNullPr bscProveedor
  loc_B8B91F: bscProveedor.Show from_stack_1, from_stack_2
  loc_B8B924: FLdRfVar var_134
  loc_B8B927: FLdRfVar var_88
  loc_B8B92A: ImpAdLdRf MemVar_C3D74C
  loc_B8B92D: NewIfNullPr bscProveedor
  loc_B8B930: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B935: FLdPr var_88
  loc_B8B938: from_stack_1 = clsbase.RecordCount
  loc_B8B93D: ILdRf var_134
  loc_B8B940: LitI4 0
  loc_B8B945: GtI4
  loc_B8B946: FFree1Ad var_88
  loc_B8B949: BranchF loc_B8BA57
  loc_B8B94C: FLdRfVar var_CC
  loc_B8B94F: FLdRfVar var_13C
  loc_B8B952: LitVarStr var_AC, "CucuPers"
  loc_B8B957: PopAdLdVar
  loc_B8B958: FLdRfVar var_138
  loc_B8B95B: FLdRfVar var_90
  loc_B8B95E: FLdRfVar var_88
  loc_B8B961: ImpAdLdRf MemVar_C3D74C
  loc_B8B964: NewIfNullPr bscProveedor
  loc_B8B967: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B8B96C: FLdPr var_88
  loc_B8B96F: from_stack_1v = clsbase.RsFrmGet()
  loc_B8B974: FLdPr var_90
  loc_B8B977:  = Me.Fields
  loc_B8B97C: FLdPr var_138
  loc_B8B97F: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B984: FLdPr var_13C
  loc_B8B987:  = Me.Value
  loc_B8B98C: FLdPr Me
  loc_B8B98F: MemLdRfVar from_stack_1.global_160
  loc_B8B992: NewIfNullRf
  loc_B8B996: FLdRfVar var_CC
  loc_B8B999: CStrVarTmp
  loc_B8B99A: FStStrNoPop var_98
  loc_B8B99D: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_B8B9A2: FStStrNoPop var_9C
  loc_B8B9A5: FLdPr Me
  loc_B8B9A8: MemStStrCopy
  loc_B8B9AC: FFreeStr var_98 = ""
  loc_B8B9B3: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8B9BE: FFree1Var var_CC = ""
  loc_B8B9C1: FLdRfVar var_98
  loc_B8B9C4: FLdPr Me
  loc_B8B9C7: MemLdRfVar from_stack_1.global_160
  loc_B8B9CA: NewIfNullPr tblproveedor
  loc_B8B9CD: from_stack_1v = tblproveedor.CucuPersGet()
  loc_B8B9D2: ILdRf var_98
  loc_B8B9D5: FLdPr Me
  loc_B8B9D8: VCallAd Control_ID_CucuPersTxt
  loc_B8B9DB: FStAdFunc var_88
  loc_B8B9DE: FLdPr var_88
  loc_B8B9E1: Me.Text = from_stack_1
  loc_B8B9E6: FFree1Str var_98
  loc_B8B9E9: FFree1Ad var_88
  loc_B8B9EC: FLdRfVar var_98
  loc_B8B9EF: FLdPr Me
  loc_B8B9F2: MemLdRfVar from_stack_1.global_160
  loc_B8B9F5: NewIfNullPr tblproveedor
  loc_B8B9F8: from_stack_1v = tblproveedor.DetaProvGet()
  loc_B8B9FD: ILdRf var_98
  loc_B8BA00: FLdPr Me
  loc_B8BA03: VCallAd Control_ID_DetaProvLbl
  loc_B8BA06: FStAdFunc var_88
  loc_B8BA09: FLdPr var_88
  loc_B8BA0C: Me.Caption = from_stack_1
  loc_B8BA11: FFree1Str var_98
  loc_B8BA14: FFree1Ad var_88
  loc_B8BA17: FLdPr Me
  loc_B8BA1A: VCallAd Control_ID_CucuPersTxt
  loc_B8BA1D: FStAdFunc var_13C
  loc_B8BA20: FLdPr Me
  loc_B8BA23: VCallAd Control_ID_DetaProvLbl
  loc_B8BA26: FStAdFunc var_138
  loc_B8BA29: FLdRfVar var_138
  loc_B8BA2C: FLdZeroAd var_13C
  loc_B8BA2F: FStAdFuncNoPop
  loc_B8BA32: CastAd
  loc_B8BA35: FStAdFunc var_90
  loc_B8BA38: FLdRfVar var_90
  loc_B8BA3B: FLdPr Me
  loc_B8BA3E: MemLdRfVar from_stack_1.global_64
  loc_B8BA41: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8BA46: IStI2 Cancel
  loc_B8BA49: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8BA54: Branch loc_B8BA9E
  loc_B8BA57: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B8BA5A: FLdPr Me
  loc_B8BA5D: MemStStrCopy
  loc_B8BA61: FLdPr Me
  loc_B8BA64: VCallAd Control_ID_CucuPersTxt
  loc_B8BA67: FStAdFunc var_13C
  loc_B8BA6A: FLdPr Me
  loc_B8BA6D: VCallAd Control_ID_DetaProvLbl
  loc_B8BA70: FStAdFunc var_138
  loc_B8BA73: FLdRfVar var_138
  loc_B8BA76: FLdZeroAd var_13C
  loc_B8BA79: FStAdFuncNoPop
  loc_B8BA7C: CastAd
  loc_B8BA7F: FStAdFunc var_90
  loc_B8BA82: FLdRfVar var_90
  loc_B8BA85: FLdPr Me
  loc_B8BA88: MemLdRfVar from_stack_1.global_64
  loc_B8BA8B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8BA90: IStI2 Cancel
  loc_B8BA93: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8BA9E: FLdRfVar var_8A
  loc_B8BAA1: FLdPr Me
  loc_B8BAA4: VCallAd Control_ID_chkRepetirExpePago
  loc_B8BAA7: FStAdFunc var_88
  loc_B8BAAA: FLdPr var_88
  loc_B8BAAD:  = Me.Value
  loc_B8BAB2: FLdI2 var_8A
  loc_B8BAB5: CI4UI1
  loc_B8BAB6: LitI4 1
  loc_B8BABB: EqI4
  loc_B8BABC: FFree1Ad var_88
  loc_B8BABF: BranchF loc_B8BAC5
  loc_B8BAC2: Branch loc_B8BB41
  loc_B8BAC5: FLdRfVar var_98
  loc_B8BAC8: FLdPr Me
  loc_B8BACB: VCallAd Control_ID_CucuPersTxt
  loc_B8BACE: FStAdFunc var_88
  loc_B8BAD1: FLdPr var_88
  loc_B8BAD4:  = Me.Text
  loc_B8BAD9: FLdPr Me
  loc_B8BADC: VCallAd Control_ID_ExorImpuMsk
  loc_B8BADF: FStAdFunc var_90
  loc_B8BAE2: FLdPr var_90
  loc_B8BAE5: LateIdLdVar var_CC DispID_15 0
  loc_B8BAEC: PopAd
  loc_B8BAEE: FLdRfVar var_9C
  loc_B8BAF1: FLdPr Me
  loc_B8BAF4: VCallAd Control_ID_ExpeImpuTxt
  loc_B8BAF7: FStAdFunc var_138
  loc_B8BAFA: FLdPr var_138
  loc_B8BAFD:  = Me.Text
  loc_B8BB02: ILdRf var_9C
  loc_B8BB05: FLdRfVar var_CC
  loc_B8BB08: CStrVarTmp
  loc_B8BB09: FStStrNoPop var_130
  loc_B8BB0C: ILdRf var_98
  loc_B8BB0F: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_B8BB14: FStStrNoPop var_144
  loc_B8BB17: FLdPr Me
  loc_B8BB1A: VCallAd Control_ID_ExpeImpuTxt
  loc_B8BB1D: FStAdFunc var_13C
  loc_B8BB20: FLdPr var_13C
  loc_B8BB23: Me.Text = from_stack_1
  loc_B8BB28: FFreeStr var_98 = "": var_130 = "": var_9C = ""
  loc_B8BB33: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8BB3E: FFree1Var var_CC = ""
  loc_B8BB41: LitStr "Municipalidad de Guaymallén"
  loc_B8BB44: LitStr "Municipalidad de San Carlos"
  loc_B8BB47: EqStr
  loc_B8BB49: FLdRfVar var_8A
  loc_B8BB4C: FLdPr Me
  loc_B8BB4F: VCallAd Control_ID_cmdCancelar
  loc_B8BB52: FStAdFunc var_88
  loc_B8BB55: FLdPr var_88
  loc_B8BB58:  = Me.Value
  loc_B8BB5D: FLdI2 var_8A
  loc_B8BB60: NotI4
  loc_B8BB61: AndI4
  loc_B8BB62: FLdRfVar var_98
  loc_B8BB65: FLdPr Me
  loc_B8BB68: VCallAd Control_ID_CucuPersTxt
  loc_B8BB6B: FStAdFunc var_90
  loc_B8BB6E: FLdPr var_90
  loc_B8BB71:  = Me.Text
  loc_B8BB76: ILdRf var_98
  loc_B8BB79: ImpAdCallI2 Trim$()
  loc_B8BB7E: FStStrNoPop var_9C
  loc_B8BB81: LitStr vbNullString
  loc_B8BB84: NeStr
  loc_B8BB86: AndI4
  loc_B8BB87: FLdPr Me
  loc_B8BB8A: VCallAd Control_ID_FechDeveMsk
  loc_B8BB8D: FStAdFunc var_138
  loc_B8BB90: FLdPr var_138
  loc_B8BB93: LateIdLdVar var_CC DispID_22 0
  loc_B8BB9A: CStrVarTmp
  loc_B8BB9B: FStStrNoPop var_130
  loc_B8BB9E: LitStr vbNullString
  loc_B8BBA1: NeStr
  loc_B8BBA3: AndI4
  loc_B8BBA4: FFreeStr var_98 = "": var_9C = ""
  loc_B8BBAD: FFreeAd var_88 = "": var_90 = ""
  loc_B8BBB6: FFree1Var var_CC = ""
  loc_B8BBB9: BranchF loc_B8BC4D
  loc_B8BBBC: FLdPr Me
  loc_B8BBBF: VCallAd Control_ID_FechDeveMsk
  loc_B8BBC2: FStAdFunc var_88
  loc_B8BBC5: FLdPr var_88
  loc_B8BBC8: LateIdLdVar var_CC DispID_15 0
  loc_B8BBCF: PopAd
  loc_B8BBD1: FLdRfVar var_98
  loc_B8BBD4: FLdPr Me
  loc_B8BBD7: MemLdRfVar from_stack_1.global_160
  loc_B8BBDA: NewIfNullPr tblproveedor
  loc_B8BBDD: from_stack_1v = tblproveedor.CucuPersGet()
  loc_B8BBE2: ILdRf var_98
  loc_B8BBE5: FLdRfVar var_CC
  loc_B8BBE8: CStrVarTmp
  loc_B8BBE9: FStStrNoPop var_9C
  loc_B8BBEC: CDateStr
  loc_B8BBEE: PopFPR8
  loc_B8BBEF: ImpAdLdI2 MemVar_C3D064
  loc_B8BBF2: ImpAdCallI2 Proc_283_2_9B94CC(, , , )
  loc_B8BBF7: FStStrNoPop var_130
  loc_B8BBFA: FLdPr Me
  loc_B8BBFD: MemStStrCopy
  loc_B8BC01: FFreeStr var_9C = "": var_98 = ""
  loc_B8BC0A: FFree1Ad var_88
  loc_B8BC0D: FFree1Var var_CC = ""
  loc_B8BC10: FLdPr Me
  loc_B8BC13: VCallAd Control_ID_CucuPersTxt
  loc_B8BC16: FStAdFunc var_13C
  loc_B8BC19: FLdPr Me
  loc_B8BC1C: VCallAd Control_ID_DetaProvLbl
  loc_B8BC1F: FStAdFunc var_138
  loc_B8BC22: FLdRfVar var_138
  loc_B8BC25: FLdZeroAd var_13C
  loc_B8BC28: FStAdFuncNoPop
  loc_B8BC2B: CastAd
  loc_B8BC2E: FStAdFunc var_90
  loc_B8BC31: FLdRfVar var_90
  loc_B8BC34: FLdPr Me
  loc_B8BC37: MemLdRfVar from_stack_1.global_64
  loc_B8BC3A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8BC3F: IStI2 Cancel
  loc_B8BC42: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8BC4D: LitStr "Municipalidad de Guaymallén"
  loc_B8BC50: LitStr "Municipalidad de Malargüe"
  loc_B8BC53: EqStr
  loc_B8BC55: FLdRfVar var_8A
  loc_B8BC58: FLdPr Me
  loc_B8BC5B: VCallAd Control_ID_cmdCancelar
  loc_B8BC5E: FStAdFunc var_88
  loc_B8BC61: FLdPr var_88
  loc_B8BC64:  = Me.Value
  loc_B8BC69: FLdI2 var_8A
  loc_B8BC6C: NotI4
  loc_B8BC6D: AndI4
  loc_B8BC6E: FLdRfVar var_98
  loc_B8BC71: FLdPr Me
  loc_B8BC74: VCallAd Control_ID_CucuPersTxt
  loc_B8BC77: FStAdFunc var_90
  loc_B8BC7A: FLdPr var_90
  loc_B8BC7D:  = Me.Text
  loc_B8BC82: ILdRf var_98
  loc_B8BC85: ImpAdCallI2 Trim$()
  loc_B8BC8A: FStStrNoPop var_9C
  loc_B8BC8D: LitStr vbNullString
  loc_B8BC90: NeStr
  loc_B8BC92: AndI4
  loc_B8BC93: FLdPr Me
  loc_B8BC96: VCallAd Control_ID_CodiPartMsk
  loc_B8BC99: FStAdFunc var_138
  loc_B8BC9C: FLdPr var_138
  loc_B8BC9F: LateIdLdVar var_CC DispID_22 0
  loc_B8BCA6: CStrVarTmp
  loc_B8BCA7: FStStrNoPop var_130
  loc_B8BCAA: LitStr vbNullString
  loc_B8BCAD: NeStr
  loc_B8BCAF: AndI4
  loc_B8BCB0: FLdPr Me
  loc_B8BCB3: VCallAd Control_ID_ExorImpuMsk
  loc_B8BCB6: FStAdFunc var_13C
  loc_B8BCB9: FLdPr var_13C
  loc_B8BCBC: LateIdLdVar var_DC DispID_22 0
  loc_B8BCC3: CStrVarTmp
  loc_B8BCC4: FStStrNoPop var_144
  loc_B8BCC7: LitStr vbNullString
  loc_B8BCCA: NeStr
  loc_B8BCCC: AndI4
  loc_B8BCCD: FFreeStr var_98 = "": var_9C = "": var_130 = ""
  loc_B8BCD8: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8BCE3: FFreeVar var_CC = ""
  loc_B8BCEA: BranchF loc_B8BDAD
  loc_B8BCED: FLdPr Me
  loc_B8BCF0: VCallAd Control_ID_CodiPartMsk
  loc_B8BCF3: FStAdFunc var_88
  loc_B8BCF6: FLdPr var_88
  loc_B8BCF9: LateIdLdVar var_CC DispID_22 0
  loc_B8BD00: PopAd
  loc_B8BD02: FLdRfVar var_98
  loc_B8BD05: FLdPr Me
  loc_B8BD08: MemLdRfVar from_stack_1.global_160
  loc_B8BD0B: NewIfNullPr tblproveedor
  loc_B8BD0E: from_stack_1v = tblproveedor.CucuPersGet()
  loc_B8BD13: FLdPr Me
  loc_B8BD16: VCallAd Control_ID_ExorImpuMsk
  loc_B8BD19: FStAdFunc var_90
  loc_B8BD1C: FLdPr var_90
  loc_B8BD1F: LateIdLdVar var_DC DispID_22 0
  loc_B8BD26: PopAd
  loc_B8BD28: FLdRfVar var_144
  loc_B8BD2B: FLdRfVar var_DC
  loc_B8BD2E: CStrVarTmp
  loc_B8BD2F: FStStrNoPop var_130
  loc_B8BD32: ILdRf var_98
  loc_B8BD35: FLdRfVar var_CC
  loc_B8BD38: CStrVarTmp
  loc_B8BD39: FStStrNoPop var_9C
  loc_B8BD3C: ImpAdLdI2 MemVar_C3D064
  loc_B8BD3F: FLdPr Me
  loc_B8BD42: MemLdRfVar from_stack_1.global_52
  loc_B8BD45: NewIfNullPr clsimputacion
  loc_B8BD48: from_stack_5v = clsimputacion.ValidaPartida43(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B8BD4D: ILdRf var_144
  loc_B8BD50: FLdPr Me
  loc_B8BD53: MemStStrCopy
  loc_B8BD57: FFreeStr var_9C = "": var_98 = "": var_130 = ""
  loc_B8BD62: FFreeAd var_88 = ""
  loc_B8BD69: FFreeVar var_CC = ""
  loc_B8BD70: FLdPr Me
  loc_B8BD73: VCallAd Control_ID_CucuPersTxt
  loc_B8BD76: FStAdFunc var_13C
  loc_B8BD79: FLdPr Me
  loc_B8BD7C: VCallAd Control_ID_DetaProvLbl
  loc_B8BD7F: FStAdFunc var_138
  loc_B8BD82: FLdRfVar var_138
  loc_B8BD85: FLdZeroAd var_13C
  loc_B8BD88: FStAdFuncNoPop
  loc_B8BD8B: CastAd
  loc_B8BD8E: FStAdFunc var_90
  loc_B8BD91: FLdRfVar var_90
  loc_B8BD94: FLdPr Me
  loc_B8BD97: MemLdRfVar from_stack_1.global_64
  loc_B8BD9A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8BD9F: IStI2 Cancel
  loc_B8BDA2: FFreeAd var_88 = "": var_90 = "": var_138 = ""
  loc_B8BDAD: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9A7184
  'Data Table: 500268
  loc_9A70F4: LitVarStr var_94, vbNullString
  loc_9A70F9: PopAdLdVar
  loc_9A70FA: FLdPr Me
  loc_9A70FD: VCallAd Control_ID_FiltroMsk
  loc_9A7100: FStAdFunc var_A8
  loc_9A7103: FLdPr var_A8
  loc_9A7106: LateIdSt
  loc_9A710B: FFree1Ad var_A8
  loc_9A710E: FLdRfVar var_AA
  loc_9A7111: FLdPr Me
  loc_9A7114: VCallAd Control_ID_FiltroCbo
  loc_9A7117: FStAdFunc var_A8
  loc_9A711A: FLdPr var_A8
  loc_9A711D:  = Me.ListIndex
  loc_9A7122: FLdI2 var_AA
  loc_9A7125: FStI2 var_AC
  loc_9A7128: FFree1Ad var_A8
  loc_9A712B: FLdI2 var_AC
  loc_9A712E: LitI2_Byte 0
  loc_9A7130: EqI2
  loc_9A7131: BranchF loc_9A7182
  loc_9A7134: LitVarStr var_94, "&"
  loc_9A7139: PopAdLdVar
  loc_9A713A: FLdPr Me
  loc_9A713D: VCallAd Control_ID_FiltroMsk
  loc_9A7140: FStAdFunc var_A8
  loc_9A7143: FLdPr var_A8
  loc_9A7146: LateIdSt
  loc_9A714B: FFree1Ad var_A8
  loc_9A714E: LitVarStr var_94, vbNullString
  loc_9A7153: PopAdLdVar
  loc_9A7154: FLdPr Me
  loc_9A7157: VCallAd Control_ID_FiltroMsk
  loc_9A715A: FStAdFunc var_A8
  loc_9A715D: FLdPr var_A8
  loc_9A7160: LateIdSt
  loc_9A7165: FFree1Ad var_A8
  loc_9A7168: LitStr "ExorImpu"
  loc_9A716B: FStStrCopy var_B0
  loc_9A716E: FLdRfVar var_B0
  loc_9A7171: FLdPr Me
  loc_9A7174: MemLdRfVar from_stack_1.global_52
  loc_9A7177: NewIfNullPr clsimputacion
  loc_9A717A: Call clsimputacion.Sort(from_stack_1v)
  loc_9A717F: FFree1Str var_B0
  loc_9A7182: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'C32928
  'Data Table: 500268
  loc_C2A5B8: ILdRf Button
  loc_C2A5BB: FStAd var_88 
  loc_C2A5BF: FLdRfVar var_90
  loc_C2A5C2: FLdPr var_88
  loc_C2A5C5:  = Me.Key
  loc_C2A5CA: FLdZeroAd var_90
  loc_C2A5CD: FStStr var_94
  loc_C2A5D0: ILdRf var_94
  loc_C2A5D3: LitStr "btnCrear"
  loc_C2A5D6: EqStr
  loc_C2A5D8: BranchF loc_C2AD32
  loc_C2A5DB: LitI2_Byte 0
  loc_C2A5DD: FLdPr Me
  loc_C2A5E0: MemStI2 global_188
  loc_C2A5E3: LitI2_Byte 0
  loc_C2A5E5: FLdPr Me
  loc_C2A5E8: MemStI2 global_190
  loc_C2A5EB: FLdRfVar var_9A
  loc_C2A5EE: FLdPr Me
  loc_C2A5F1: VCallAd Control_ID_chkRepetirExpePago
  loc_C2A5F4: FStAdFunc var_98
  loc_C2A5F7: FLdPr var_98
  loc_C2A5FA:  = Me.Visible
  loc_C2A5FF: FLdI2 var_9A
  loc_C2A602: FFree1Ad var_98
  loc_C2A605: BranchF loc_C2A63B
  loc_C2A608: LitStr "Municipalidad de Guaymallén"
  loc_C2A60B: LitStr "Municipalidad de Tunuyán"
  loc_C2A60E: EqStr
  loc_C2A610: BranchF loc_C2A630
  loc_C2A613: LitI4 0
  loc_C2A618: CI2I4
  loc_C2A619: FLdPr Me
  loc_C2A61C: VCallAd Control_ID_chkRepetirExpePago
  loc_C2A61F: FStAdFunc var_98
  loc_C2A622: FLdPr var_98
  loc_C2A625: Me.Value = from_stack_1
  loc_C2A62A: FFree1Ad var_98
  loc_C2A62D: Branch loc_C2A63B
  loc_C2A630: LitStr "Municipalidad de Guaymallén"
  loc_C2A633: LitStr "Municipalidad de Maipú"
  loc_C2A636: EqStr
  loc_C2A638: BranchF loc_C2A63B
  loc_C2A63B: FLdPr Me
  loc_C2A63E: VCallAd Control_ID_cboSeleccion
  loc_C2A641: FStAdFunc var_98
  loc_C2A644: FLdPr var_98
  loc_C2A647: Me.Clear
  loc_C2A64C: FFree1Ad var_98
  loc_C2A64F: FLdRfVar var_A0
  loc_C2A652: FLdPr Me
  loc_C2A655: MemLdRfVar from_stack_1.global_52
  loc_C2A658: NewIfNullPr clsimputacion
  loc_C2A65B: from_stack_1 = clsimputacion.RecordCount
  loc_C2A660: ILdRf var_A0
  loc_C2A663: LitI4 0
  loc_C2A668: GtI4
  loc_C2A669: BranchF loc_C2AB7E
  loc_C2A66C: FLdRfVar var_C8
  loc_C2A66F: FLdRfVar var_B8
  loc_C2A672: LitVarStr var_B4, "PrevImpu"
  loc_C2A677: PopAdLdVar
  loc_C2A678: FLdRfVar var_A4
  loc_C2A67B: FLdRfVar var_98
  loc_C2A67E: FLdPr Me
  loc_C2A681: MemLdRfVar from_stack_1.global_52
  loc_C2A684: NewIfNullPr clsimputacion
  loc_C2A687: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2A68C: FLdPr var_98
  loc_C2A68F:  = Me.Fields
  loc_C2A694: FLdPr var_A4
  loc_C2A697: from_stack_2 = Me.Item(from_stack_1)
  loc_C2A69C: FLdPr var_B8
  loc_C2A69F:  = Me.Value
  loc_C2A6A4: FLdRfVar var_C8
  loc_C2A6A7: LitVarStr var_D8, "0"
  loc_C2A6AC: HardType
  loc_C2A6AD: NeVarBool
  loc_C2A6AF: FFreeAd var_98 = "": var_A4 = ""
  loc_C2A6B8: FFree1Var var_C8 = ""
  loc_C2A6BB: BranchF loc_C2A84C
  loc_C2A6BE: LitVar_Missing var_B4
  loc_C2A6C1: PopAdLdVar
  loc_C2A6C2: LitStr "Definitiva y Devengado"
  loc_C2A6C5: FLdPr Me
  loc_C2A6C8: VCallAd Control_ID_cboSeleccion
  loc_C2A6CB: FStAdFunc var_98
  loc_C2A6CE: FLdPr var_98
  loc_C2A6D1: Me.AddItem from_stack_1, from_stack_2
  loc_C2A6D6: FFree1Ad var_98
  loc_C2A6D9: LitI4 6
  loc_C2A6DE: FLdRfVar var_9A
  loc_C2A6E1: FLdPr Me
  loc_C2A6E4: VCallAd Control_ID_cboSeleccion
  loc_C2A6E7: FStAdFunc var_98
  loc_C2A6EA: FLdPr var_98
  loc_C2A6ED:  = Me.NewIndex
  loc_C2A6F2: FLdI2 var_9A
  loc_C2A6F5: FLdPr Me
  loc_C2A6F8: VCallAd Control_ID_cboSeleccion
  loc_C2A6FB: FStAdFunc var_A4
  loc_C2A6FE: FLdPr var_A4
  loc_C2A701: Me.ItemData = from_stack_1
  loc_C2A706: FFreeAd var_98 = ""
  loc_C2A70D: LitVar_Missing var_B4
  loc_C2A710: PopAdLdVar
  loc_C2A711: LitStr "Definitiva"
  loc_C2A714: FLdPr Me
  loc_C2A717: VCallAd Control_ID_cboSeleccion
  loc_C2A71A: FStAdFunc var_98
  loc_C2A71D: FLdPr var_98
  loc_C2A720: Me.AddItem from_stack_1, from_stack_2
  loc_C2A725: FFree1Ad var_98
  loc_C2A728: LitI4 5
  loc_C2A72D: FLdRfVar var_9A
  loc_C2A730: FLdPr Me
  loc_C2A733: VCallAd Control_ID_cboSeleccion
  loc_C2A736: FStAdFunc var_98
  loc_C2A739: FLdPr var_98
  loc_C2A73C:  = Me.NewIndex
  loc_C2A741: FLdI2 var_9A
  loc_C2A744: FLdPr Me
  loc_C2A747: VCallAd Control_ID_cboSeleccion
  loc_C2A74A: FStAdFunc var_A4
  loc_C2A74D: FLdPr var_A4
  loc_C2A750: Me.ItemData = from_stack_1
  loc_C2A755: FFreeAd var_98 = ""
  loc_C2A75C: LitVar_Missing var_B4
  loc_C2A75F: PopAdLdVar
  loc_C2A760: LitStr "Preventiva (Ajuste +)"
  loc_C2A763: FLdPr Me
  loc_C2A766: VCallAd Control_ID_cboSeleccion
  loc_C2A769: FStAdFunc var_98
  loc_C2A76C: FLdPr var_98
  loc_C2A76F: Me.AddItem from_stack_1, from_stack_2
  loc_C2A774: FFree1Ad var_98
  loc_C2A777: LitI4 4
  loc_C2A77C: FLdRfVar var_9A
  loc_C2A77F: FLdPr Me
  loc_C2A782: VCallAd Control_ID_cboSeleccion
  loc_C2A785: FStAdFunc var_98
  loc_C2A788: FLdPr var_98
  loc_C2A78B:  = Me.NewIndex
  loc_C2A790: FLdI2 var_9A
  loc_C2A793: FLdPr Me
  loc_C2A796: VCallAd Control_ID_cboSeleccion
  loc_C2A799: FStAdFunc var_A4
  loc_C2A79C: FLdPr var_A4
  loc_C2A79F: Me.ItemData = from_stack_1
  loc_C2A7A4: FFreeAd var_98 = ""
  loc_C2A7AB: LitVar_Missing var_B4
  loc_C2A7AE: PopAdLdVar
  loc_C2A7AF: LitStr "Preventiva"
  loc_C2A7B2: FLdPr Me
  loc_C2A7B5: VCallAd Control_ID_cboSeleccion
  loc_C2A7B8: FStAdFunc var_98
  loc_C2A7BB: FLdPr var_98
  loc_C2A7BE: Me.AddItem from_stack_1, from_stack_2
  loc_C2A7C3: FFree1Ad var_98
  loc_C2A7C6: LitI4 1
  loc_C2A7CB: FLdRfVar var_9A
  loc_C2A7CE: FLdPr Me
  loc_C2A7D1: VCallAd Control_ID_cboSeleccion
  loc_C2A7D4: FStAdFunc var_98
  loc_C2A7D7: FLdPr var_98
  loc_C2A7DA:  = Me.NewIndex
  loc_C2A7DF: FLdI2 var_9A
  loc_C2A7E2: FLdPr Me
  loc_C2A7E5: VCallAd Control_ID_cboSeleccion
  loc_C2A7E8: FStAdFunc var_A4
  loc_C2A7EB: FLdPr var_A4
  loc_C2A7EE: Me.ItemData = from_stack_1
  loc_C2A7F3: FFreeAd var_98 = ""
  loc_C2A7FA: LitVar_Missing var_B4
  loc_C2A7FD: PopAdLdVar
  loc_C2A7FE: LitStr "Preventiva, Definitiva y Devengado"
  loc_C2A801: FLdPr Me
  loc_C2A804: VCallAd Control_ID_cboSeleccion
  loc_C2A807: FStAdFunc var_98
  loc_C2A80A: FLdPr var_98
  loc_C2A80D: Me.AddItem from_stack_1, from_stack_2
  loc_C2A812: FFree1Ad var_98
  loc_C2A815: LitI4 3
  loc_C2A81A: FLdRfVar var_9A
  loc_C2A81D: FLdPr Me
  loc_C2A820: VCallAd Control_ID_cboSeleccion
  loc_C2A823: FStAdFunc var_98
  loc_C2A826: FLdPr var_98
  loc_C2A829:  = Me.NewIndex
  loc_C2A82E: FLdI2 var_9A
  loc_C2A831: FLdPr Me
  loc_C2A834: VCallAd Control_ID_cboSeleccion
  loc_C2A837: FStAdFunc var_A4
  loc_C2A83A: FLdPr var_A4
  loc_C2A83D: Me.ItemData = from_stack_1
  loc_C2A842: FFreeAd var_98 = ""
  loc_C2A849: Branch loc_C2AB7B
  loc_C2A84C: FLdRfVar var_C8
  loc_C2A84F: FLdRfVar var_B8
  loc_C2A852: LitVarStr var_B4, "DefiImpu"
  loc_C2A857: PopAdLdVar
  loc_C2A858: FLdRfVar var_A4
  loc_C2A85B: FLdRfVar var_98
  loc_C2A85E: FLdPr Me
  loc_C2A861: MemLdRfVar from_stack_1.global_52
  loc_C2A864: NewIfNullPr clsimputacion
  loc_C2A867: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2A86C: FLdPr var_98
  loc_C2A86F:  = Me.Fields
  loc_C2A874: FLdPr var_A4
  loc_C2A877: from_stack_2 = Me.Item(from_stack_1)
  loc_C2A87C: FLdPr var_B8
  loc_C2A87F:  = Me.Value
  loc_C2A884: FLdRfVar var_C8
  loc_C2A887: LitVarStr var_D8, "0"
  loc_C2A88C: HardType
  loc_C2A88D: NeVarBool
  loc_C2A88F: FFreeAd var_98 = "": var_A4 = ""
  loc_C2A898: FFree1Var var_C8 = ""
  loc_C2A89B: BranchF loc_C2AA3C
  loc_C2A89E: FLdRfVar var_C8
  loc_C2A8A1: FLdRfVar var_B8
  loc_C2A8A4: LitVarStr var_B4, "ReapDefi"
  loc_C2A8A9: PopAdLdVar
  loc_C2A8AA: FLdRfVar var_A4
  loc_C2A8AD: FLdRfVar var_98
  loc_C2A8B0: FLdPr Me
  loc_C2A8B3: MemLdRfVar from_stack_1.global_52
  loc_C2A8B6: NewIfNullPr clsimputacion
  loc_C2A8B9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2A8BE: FLdPr var_98
  loc_C2A8C1:  = Me.Fields
  loc_C2A8C6: FLdPr var_A4
  loc_C2A8C9: from_stack_2 = Me.Item(from_stack_1)
  loc_C2A8CE: FLdPr var_B8
  loc_C2A8D1:  = Me.Value
  loc_C2A8D6: FLdRfVar var_C8
  loc_C2A8D9: LitVarStr var_D8, "1"
  loc_C2A8DE: HardType
  loc_C2A8DF: EqVarBool
  loc_C2A8E1: FFreeAd var_98 = "": var_A4 = ""
  loc_C2A8EA: FFree1Var var_C8 = ""
  loc_C2A8ED: BranchF loc_C2A8FD
  loc_C2A8F0: LitI4 0
  loc_C2A8F5: LitStr "Advertencia: La Definitiva esta reapropiada ..."
  loc_C2A8F8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2A8FD: LitVar_Missing var_B4
  loc_C2A900: PopAdLdVar
  loc_C2A901: LitStr "Devengado"
  loc_C2A904: FLdPr Me
  loc_C2A907: VCallAd Control_ID_cboSeleccion
  loc_C2A90A: FStAdFunc var_98
  loc_C2A90D: FLdPr var_98
  loc_C2A910: Me.AddItem from_stack_1, from_stack_2
  loc_C2A915: FFree1Ad var_98
  loc_C2A918: LitI4 7
  loc_C2A91D: FLdRfVar var_9A
  loc_C2A920: FLdPr Me
  loc_C2A923: VCallAd Control_ID_cboSeleccion
  loc_C2A926: FStAdFunc var_98
  loc_C2A929: FLdPr var_98
  loc_C2A92C:  = Me.NewIndex
  loc_C2A931: FLdI2 var_9A
  loc_C2A934: FLdPr Me
  loc_C2A937: VCallAd Control_ID_cboSeleccion
  loc_C2A93A: FStAdFunc var_A4
  loc_C2A93D: FLdPr var_A4
  loc_C2A940: Me.ItemData = from_stack_1
  loc_C2A945: FFreeAd var_98 = ""
  loc_C2A94C: LitVar_Missing var_B4
  loc_C2A94F: PopAdLdVar
  loc_C2A950: LitStr "Preventiva y Definitiva (Ajuste +)"
  loc_C2A953: FLdPr Me
  loc_C2A956: VCallAd Control_ID_cboSeleccion
  loc_C2A959: FStAdFunc var_98
  loc_C2A95C: FLdPr var_98
  loc_C2A95F: Me.AddItem from_stack_1, from_stack_2
  loc_C2A964: FFree1Ad var_98
  loc_C2A967: LitI4 &H13
  loc_C2A96C: FLdRfVar var_9A
  loc_C2A96F: FLdPr Me
  loc_C2A972: VCallAd Control_ID_cboSeleccion
  loc_C2A975: FStAdFunc var_98
  loc_C2A978: FLdPr var_98
  loc_C2A97B:  = Me.NewIndex
  loc_C2A980: FLdI2 var_9A
  loc_C2A983: FLdPr Me
  loc_C2A986: VCallAd Control_ID_cboSeleccion
  loc_C2A989: FStAdFunc var_A4
  loc_C2A98C: FLdPr var_A4
  loc_C2A98F: Me.ItemData = from_stack_1
  loc_C2A994: FFreeAd var_98 = ""
  loc_C2A99B: LitVar_Missing var_B4
  loc_C2A99E: PopAdLdVar
  loc_C2A99F: LitStr "Preventiva y Definitiva"
  loc_C2A9A2: FLdPr Me
  loc_C2A9A5: VCallAd Control_ID_cboSeleccion
  loc_C2A9A8: FStAdFunc var_98
  loc_C2A9AB: FLdPr var_98
  loc_C2A9AE: Me.AddItem from_stack_1, from_stack_2
  loc_C2A9B3: FFree1Ad var_98
  loc_C2A9B6: LitI4 2
  loc_C2A9BB: FLdRfVar var_9A
  loc_C2A9BE: FLdPr Me
  loc_C2A9C1: VCallAd Control_ID_cboSeleccion
  loc_C2A9C4: FStAdFunc var_98
  loc_C2A9C7: FLdPr var_98
  loc_C2A9CA:  = Me.NewIndex
  loc_C2A9CF: FLdI2 var_9A
  loc_C2A9D2: FLdPr Me
  loc_C2A9D5: VCallAd Control_ID_cboSeleccion
  loc_C2A9D8: FStAdFunc var_A4
  loc_C2A9DB: FLdPr var_A4
  loc_C2A9DE: Me.ItemData = from_stack_1
  loc_C2A9E3: FFreeAd var_98 = ""
  loc_C2A9EA: LitVar_Missing var_B4
  loc_C2A9ED: PopAdLdVar
  loc_C2A9EE: LitStr "Preventiva, Definitiva y Devengado"
  loc_C2A9F1: FLdPr Me
  loc_C2A9F4: VCallAd Control_ID_cboSeleccion
  loc_C2A9F7: FStAdFunc var_98
  loc_C2A9FA: FLdPr var_98
  loc_C2A9FD: Me.AddItem from_stack_1, from_stack_2
  loc_C2AA02: FFree1Ad var_98
  loc_C2AA05: LitI4 3
  loc_C2AA0A: FLdRfVar var_9A
  loc_C2AA0D: FLdPr Me
  loc_C2AA10: VCallAd Control_ID_cboSeleccion
  loc_C2AA13: FStAdFunc var_98
  loc_C2AA16: FLdPr var_98
  loc_C2AA19:  = Me.NewIndex
  loc_C2AA1E: FLdI2 var_9A
  loc_C2AA21: FLdPr Me
  loc_C2AA24: VCallAd Control_ID_cboSeleccion
  loc_C2AA27: FStAdFunc var_A4
  loc_C2AA2A: FLdPr var_A4
  loc_C2AA2D: Me.ItemData = from_stack_1
  loc_C2AA32: FFreeAd var_98 = ""
  loc_C2AA39: Branch loc_C2AB7B
  loc_C2AA3C: FLdRfVar var_C8
  loc_C2AA3F: FLdRfVar var_B8
  loc_C2AA42: LitVarStr var_B4, "DeveImpu"
  loc_C2AA47: PopAdLdVar
  loc_C2AA48: FLdRfVar var_A4
  loc_C2AA4B: FLdRfVar var_98
  loc_C2AA4E: FLdPr Me
  loc_C2AA51: MemLdRfVar from_stack_1.global_52
  loc_C2AA54: NewIfNullPr clsimputacion
  loc_C2AA57: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2AA5C: FLdPr var_98
  loc_C2AA5F:  = Me.Fields
  loc_C2AA64: FLdPr var_A4
  loc_C2AA67: from_stack_2 = Me.Item(from_stack_1)
  loc_C2AA6C: FLdPr var_B8
  loc_C2AA6F:  = Me.Value
  loc_C2AA74: FLdRfVar var_C8
  loc_C2AA77: LitVarStr var_D8, "0"
  loc_C2AA7C: HardType
  loc_C2AA7D: NeVarBool
  loc_C2AA7F: FFreeAd var_98 = "": var_A4 = ""
  loc_C2AA88: FFree1Var var_C8 = ""
  loc_C2AA8B: BranchF loc_C2AB7B
  loc_C2AA8E: LitVar_Missing var_B4
  loc_C2AA91: PopAdLdVar
  loc_C2AA92: LitStr "Preventiva, Definitiva y Devengado"
  loc_C2AA95: FLdPr Me
  loc_C2AA98: VCallAd Control_ID_cboSeleccion
  loc_C2AA9B: FStAdFunc var_98
  loc_C2AA9E: FLdPr var_98
  loc_C2AAA1: Me.AddItem from_stack_1, from_stack_2
  loc_C2AAA6: FFree1Ad var_98
  loc_C2AAA9: LitI4 3
  loc_C2AAAE: FLdRfVar var_9A
  loc_C2AAB1: FLdPr Me
  loc_C2AAB4: VCallAd Control_ID_cboSeleccion
  loc_C2AAB7: FStAdFunc var_98
  loc_C2AABA: FLdPr var_98
  loc_C2AABD:  = Me.NewIndex
  loc_C2AAC2: FLdI2 var_9A
  loc_C2AAC5: FLdPr Me
  loc_C2AAC8: VCallAd Control_ID_cboSeleccion
  loc_C2AACB: FStAdFunc var_A4
  loc_C2AACE: FLdPr var_A4
  loc_C2AAD1: Me.ItemData = from_stack_1
  loc_C2AAD6: FFreeAd var_98 = ""
  loc_C2AADD: LitVar_Missing var_B4
  loc_C2AAE0: PopAdLdVar
  loc_C2AAE1: LitStr "Preventiva y Definitiva"
  loc_C2AAE4: FLdPr Me
  loc_C2AAE7: VCallAd Control_ID_cboSeleccion
  loc_C2AAEA: FStAdFunc var_98
  loc_C2AAED: FLdPr var_98
  loc_C2AAF0: Me.AddItem from_stack_1, from_stack_2
  loc_C2AAF5: FFree1Ad var_98
  loc_C2AAF8: LitI4 2
  loc_C2AAFD: FLdRfVar var_9A
  loc_C2AB00: FLdPr Me
  loc_C2AB03: VCallAd Control_ID_cboSeleccion
  loc_C2AB06: FStAdFunc var_98
  loc_C2AB09: FLdPr var_98
  loc_C2AB0C:  = Me.NewIndex
  loc_C2AB11: FLdI2 var_9A
  loc_C2AB14: FLdPr Me
  loc_C2AB17: VCallAd Control_ID_cboSeleccion
  loc_C2AB1A: FStAdFunc var_A4
  loc_C2AB1D: FLdPr var_A4
  loc_C2AB20: Me.ItemData = from_stack_1
  loc_C2AB25: FFreeAd var_98 = ""
  loc_C2AB2C: LitVar_Missing var_B4
  loc_C2AB2F: PopAdLdVar
  loc_C2AB30: LitStr "Preventiva"
  loc_C2AB33: FLdPr Me
  loc_C2AB36: VCallAd Control_ID_cboSeleccion
  loc_C2AB39: FStAdFunc var_98
  loc_C2AB3C: FLdPr var_98
  loc_C2AB3F: Me.AddItem from_stack_1, from_stack_2
  loc_C2AB44: FFree1Ad var_98
  loc_C2AB47: LitI4 1
  loc_C2AB4C: FLdRfVar var_9A
  loc_C2AB4F: FLdPr Me
  loc_C2AB52: VCallAd Control_ID_cboSeleccion
  loc_C2AB55: FStAdFunc var_98
  loc_C2AB58: FLdPr var_98
  loc_C2AB5B:  = Me.NewIndex
  loc_C2AB60: FLdI2 var_9A
  loc_C2AB63: FLdPr Me
  loc_C2AB66: VCallAd Control_ID_cboSeleccion
  loc_C2AB69: FStAdFunc var_A4
  loc_C2AB6C: FLdPr var_A4
  loc_C2AB6F: Me.ItemData = from_stack_1
  loc_C2AB74: FFreeAd var_98 = ""
  loc_C2AB7B: Branch loc_C2AC6B
  loc_C2AB7E: LitVar_Missing var_B4
  loc_C2AB81: PopAdLdVar
  loc_C2AB82: LitStr "Preventiva"
  loc_C2AB85: FLdPr Me
  loc_C2AB88: VCallAd Control_ID_cboSeleccion
  loc_C2AB8B: FStAdFunc var_98
  loc_C2AB8E: FLdPr var_98
  loc_C2AB91: Me.AddItem from_stack_1, from_stack_2
  loc_C2AB96: FFree1Ad var_98
  loc_C2AB99: LitI4 1
  loc_C2AB9E: FLdRfVar var_9A
  loc_C2ABA1: FLdPr Me
  loc_C2ABA4: VCallAd Control_ID_cboSeleccion
  loc_C2ABA7: FStAdFunc var_98
  loc_C2ABAA: FLdPr var_98
  loc_C2ABAD:  = Me.NewIndex
  loc_C2ABB2: FLdI2 var_9A
  loc_C2ABB5: FLdPr Me
  loc_C2ABB8: VCallAd Control_ID_cboSeleccion
  loc_C2ABBB: FStAdFunc var_A4
  loc_C2ABBE: FLdPr var_A4
  loc_C2ABC1: Me.ItemData = from_stack_1
  loc_C2ABC6: FFreeAd var_98 = ""
  loc_C2ABCD: LitVar_Missing var_B4
  loc_C2ABD0: PopAdLdVar
  loc_C2ABD1: LitStr "Preventiva y Definitiva"
  loc_C2ABD4: FLdPr Me
  loc_C2ABD7: VCallAd Control_ID_cboSeleccion
  loc_C2ABDA: FStAdFunc var_98
  loc_C2ABDD: FLdPr var_98
  loc_C2ABE0: Me.AddItem from_stack_1, from_stack_2
  loc_C2ABE5: FFree1Ad var_98
  loc_C2ABE8: LitI4 2
  loc_C2ABED: FLdRfVar var_9A
  loc_C2ABF0: FLdPr Me
  loc_C2ABF3: VCallAd Control_ID_cboSeleccion
  loc_C2ABF6: FStAdFunc var_98
  loc_C2ABF9: FLdPr var_98
  loc_C2ABFC:  = Me.NewIndex
  loc_C2AC01: FLdI2 var_9A
  loc_C2AC04: FLdPr Me
  loc_C2AC07: VCallAd Control_ID_cboSeleccion
  loc_C2AC0A: FStAdFunc var_A4
  loc_C2AC0D: FLdPr var_A4
  loc_C2AC10: Me.ItemData = from_stack_1
  loc_C2AC15: FFreeAd var_98 = ""
  loc_C2AC1C: LitVar_Missing var_B4
  loc_C2AC1F: PopAdLdVar
  loc_C2AC20: LitStr "Preventiva, Definitiva y Devengado"
  loc_C2AC23: FLdPr Me
  loc_C2AC26: VCallAd Control_ID_cboSeleccion
  loc_C2AC29: FStAdFunc var_98
  loc_C2AC2C: FLdPr var_98
  loc_C2AC2F: Me.AddItem from_stack_1, from_stack_2
  loc_C2AC34: FFree1Ad var_98
  loc_C2AC37: LitI4 3
  loc_C2AC3C: FLdRfVar var_9A
  loc_C2AC3F: FLdPr Me
  loc_C2AC42: VCallAd Control_ID_cboSeleccion
  loc_C2AC45: FStAdFunc var_98
  loc_C2AC48: FLdPr var_98
  loc_C2AC4B:  = Me.NewIndex
  loc_C2AC50: FLdI2 var_9A
  loc_C2AC53: FLdPr Me
  loc_C2AC56: VCallAd Control_ID_cboSeleccion
  loc_C2AC59: FStAdFunc var_A4
  loc_C2AC5C: FLdPr var_A4
  loc_C2AC5F: Me.ItemData = from_stack_1
  loc_C2AC64: FFreeAd var_98 = ""
  loc_C2AC6B: FLdRfVar var_9A
  loc_C2AC6E: FLdPr Me
  loc_C2AC71: VCallAd Control_ID_cboSeleccion
  loc_C2AC74: FStAdFunc var_98
  loc_C2AC77: FLdPr var_98
  loc_C2AC7A:  = Me.ListCount
  loc_C2AC7F: FLdI2 var_9A
  loc_C2AC82: LitI2_Byte 0
  loc_C2AC84: GtI2
  loc_C2AC85: FFree1Ad var_98
  loc_C2AC88: BranchF loc_C2AD2F
  loc_C2AC8B: LitI2_Byte &HFF
  loc_C2AC8D: FLdPr Me
  loc_C2AC90: VCallAd Control_ID_cboSeleccion
  loc_C2AC93: FStAdFunc var_98
  loc_C2AC96: FLdPr var_98
  loc_C2AC99: Me.Enabled = from_stack_1b
  loc_C2AC9E: FFree1Ad var_98
  loc_C2ACA1: LitI2_Byte 1
  loc_C2ACA3: FLdPr Me
  loc_C2ACA6: MemStUI1
  loc_C2ACAA: ILdRf Me
  loc_C2ACAD: CastAd
  loc_C2ACB0: FStAdFunc var_98
  loc_C2ACB3: FLdRfVar var_98
  loc_C2ACB6: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C2ACBB: FFree1Ad var_98
  loc_C2ACBE: LitI2_Byte 0
  loc_C2ACC0: FLdPr Me
  loc_C2ACC3: VCallAd Control_ID_cboSeleccion
  loc_C2ACC6: FStAdFunc var_98
  loc_C2ACC9: FLdPr var_98
  loc_C2ACCC: Me.ListIndex = from_stack_1
  loc_C2ACD1: FFree1Ad var_98
  loc_C2ACD4: FLdPr Me
  loc_C2ACD7: VCallAd Control_ID_cboSeleccion
  loc_C2ACDA: FStAdFunc var_98
  loc_C2ACDD: FLdPr var_98
  loc_C2ACE0: Me.SetFocus
  loc_C2ACE5: FFree1Ad var_98
  loc_C2ACE8: ILdRf Me
  loc_C2ACEB: CastAd
  loc_C2ACEE: FStAdFunc var_98
  loc_C2ACF1: FLdRfVar var_98
  loc_C2ACF4: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C2ACF9: FFree1Ad var_98
  loc_C2ACFC: LitI4 0
  loc_C2AD01: LitI4 0
  loc_C2AD06: FLdRfVar var_EC
  loc_C2AD09: Redim
  loc_C2AD13: FLdPr Me
  loc_C2AD16: VCallAd Control_ID_dgdABMS
  loc_C2AD19: CVarAd
  loc_C2AD1D: ParmAry1St
  loc_C2AD23: FLdRfVar var_EC
  loc_C2AD26: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C2AD2B: FLdRfVar var_EC
  loc_C2AD2E: Erase
  loc_C2AD2F: Branch loc_C3291F
  loc_C2AD32: ILdRf var_94
  loc_C2AD35: LitStr "btnModificar"
  loc_C2AD38: EqStr
  loc_C2AD3A: BranchF loc_C2B58B
  loc_C2AD3D: FLdPr Me
  loc_C2AD40: VCallAd Control_ID_cboSeleccion
  loc_C2AD43: FStAdFunc var_98
  loc_C2AD46: FLdPr var_98
  loc_C2AD49: Me.Clear
  loc_C2AD4E: FFree1Ad var_98
  loc_C2AD51: FLdRfVar var_A0
  loc_C2AD54: FLdPr Me
  loc_C2AD57: MemLdRfVar from_stack_1.global_52
  loc_C2AD5A: NewIfNullPr clsimputacion
  loc_C2AD5D: from_stack_1 = clsimputacion.RecordCount
  loc_C2AD62: ILdRf var_A0
  loc_C2AD65: LitI4 0
  loc_C2AD6A: GtI4
  loc_C2AD6B: BranchF loc_C2B588
  loc_C2AD6E: FLdRfVar var_C8
  loc_C2AD71: FLdRfVar var_B8
  loc_C2AD74: LitVarStr var_B4, "PrevImpu"
  loc_C2AD79: PopAdLdVar
  loc_C2AD7A: FLdRfVar var_A4
  loc_C2AD7D: FLdRfVar var_98
  loc_C2AD80: FLdPr Me
  loc_C2AD83: MemLdRfVar from_stack_1.global_52
  loc_C2AD86: NewIfNullPr clsimputacion
  loc_C2AD89: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2AD8E: FLdPr var_98
  loc_C2AD91:  = Me.Fields
  loc_C2AD96: FLdPr var_A4
  loc_C2AD99: from_stack_2 = Me.Item(from_stack_1)
  loc_C2AD9E: FLdPr var_B8
  loc_C2ADA1:  = Me.Value
  loc_C2ADA6: FLdRfVar var_C8
  loc_C2ADA9: LitVarStr var_D8, "0"
  loc_C2ADAE: HardType
  loc_C2ADAF: NeVarBool
  loc_C2ADB1: FFreeAd var_98 = "": var_A4 = ""
  loc_C2ADBA: FFree1Var var_C8 = ""
  loc_C2ADBD: BranchF loc_C2AFC8
  loc_C2ADC0: FLdRfVar var_C8
  loc_C2ADC3: FLdRfVar var_B8
  loc_C2ADC6: LitVarStr var_B4, "PeriInfo"
  loc_C2ADCB: PopAdLdVar
  loc_C2ADCC: FLdRfVar var_A4
  loc_C2ADCF: FLdRfVar var_98
  loc_C2ADD2: FLdPr Me
  loc_C2ADD5: MemLdRfVar from_stack_1.global_52
  loc_C2ADD8: NewIfNullPr clsimputacion
  loc_C2ADDB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2ADE0: FLdPr var_98
  loc_C2ADE3:  = Me.Fields
  loc_C2ADE8: FLdPr var_A4
  loc_C2ADEB: from_stack_2 = Me.Item(from_stack_1)
  loc_C2ADF0: FLdPr var_B8
  loc_C2ADF3:  = Me.Value
  loc_C2ADF8: FLdRfVar var_E8
  loc_C2ADFB: FLdRfVar var_F8
  loc_C2ADFE: LitVarStr var_D8, "IdImpu"
  loc_C2AE03: PopAdLdVar
  loc_C2AE04: FLdRfVar var_F4
  loc_C2AE07: FLdRfVar var_F0
  loc_C2AE0A: FLdPr Me
  loc_C2AE0D: MemLdRfVar from_stack_1.global_52
  loc_C2AE10: NewIfNullPr clsimputacion
  loc_C2AE13: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2AE18: FLdPr var_F0
  loc_C2AE1B:  = Me.Fields
  loc_C2AE20: FLdPr var_F4
  loc_C2AE23: from_stack_2 = Me.Item(from_stack_1)
  loc_C2AE28: FLdPr var_F8
  loc_C2AE2B:  = Me.Value
  loc_C2AE30: FLdRfVar var_124
  loc_C2AE33: FLdRfVar var_114
  loc_C2AE36: LitVarStr var_110, "Cuenta"
  loc_C2AE3B: PopAdLdVar
  loc_C2AE3C: FLdRfVar var_100
  loc_C2AE3F: FLdRfVar var_FC
  loc_C2AE42: FLdPr Me
  loc_C2AE45: MemLdRfVar from_stack_1.global_52
  loc_C2AE48: NewIfNullPr clsimputacion
  loc_C2AE4B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2AE50: FLdPr var_FC
  loc_C2AE53:  = Me.Fields
  loc_C2AE58: FLdPr var_100
  loc_C2AE5B: from_stack_2 = Me.Item(from_stack_1)
  loc_C2AE60: FLdPr var_114
  loc_C2AE63:  = Me.Value
  loc_C2AE68: FLdRfVar var_90
  loc_C2AE6B: FLdRfVar var_124
  loc_C2AE6E: CI2Var
  loc_C2AE6F: FLdRfVar var_E8
  loc_C2AE72: CI4Var
  loc_C2AE74: FLdRfVar var_C8
  loc_C2AE77: CI2Var
  loc_C2AE78: FLdPr Me
  loc_C2AE7B: MemLdRfVar from_stack_1.global_52
  loc_C2AE7E: NewIfNullPr clsimputacion
  loc_C2AE81: from_stack_4v = clsimputacion.ValidaModificarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C2AE86: ILdRf var_90
  loc_C2AE89: FLdPr Me
  loc_C2AE8C: MemStStrCopy
  loc_C2AE90: FFree1Str var_90
  loc_C2AE93: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_B8 = "": var_F8 = ""
  loc_C2AEA8: FFreeVar var_C8 = "": var_E8 = ""
  loc_C2AEB1: FLdPr Me
  loc_C2AEB4: MemLdStr global_64
  loc_C2AEB7: LitStr vbNullString
  loc_C2AEBA: NeStr
  loc_C2AEBC: BranchF loc_C2AED2
  loc_C2AEBF: LitI4 0
  loc_C2AEC4: FLdPr Me
  loc_C2AEC7: MemLdStr global_64
  loc_C2AECA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2AECF: Branch loc_C2AFC5
  loc_C2AED2: LitVar_Missing var_B4
  loc_C2AED5: PopAdLdVar
  loc_C2AED6: LitStr "Preventiva (modificar)"
  loc_C2AED9: FLdPr Me
  loc_C2AEDC: VCallAd Control_ID_cboSeleccion
  loc_C2AEDF: FStAdFunc var_98
  loc_C2AEE2: FLdPr var_98
  loc_C2AEE5: Me.AddItem from_stack_1, from_stack_2
  loc_C2AEEA: FFree1Ad var_98
  loc_C2AEED: LitI4 8
  loc_C2AEF2: FLdRfVar var_9A
  loc_C2AEF5: FLdPr Me
  loc_C2AEF8: VCallAd Control_ID_cboSeleccion
  loc_C2AEFB: FStAdFunc var_98
  loc_C2AEFE: FLdPr var_98
  loc_C2AF01:  = Me.NewIndex
  loc_C2AF06: FLdI2 var_9A
  loc_C2AF09: FLdPr Me
  loc_C2AF0C: VCallAd Control_ID_cboSeleccion
  loc_C2AF0F: FStAdFunc var_A4
  loc_C2AF12: FLdPr var_A4
  loc_C2AF15: Me.ItemData = from_stack_1
  loc_C2AF1A: FFreeAd var_98 = ""
  loc_C2AF21: LitI2_Byte &HFF
  loc_C2AF23: FLdPr Me
  loc_C2AF26: VCallAd Control_ID_cboSeleccion
  loc_C2AF29: FStAdFunc var_98
  loc_C2AF2C: FLdPr var_98
  loc_C2AF2F: Me.Enabled = from_stack_1b
  loc_C2AF34: FFree1Ad var_98
  loc_C2AF37: LitI2_Byte 2
  loc_C2AF39: FLdPr Me
  loc_C2AF3C: MemStUI1
  loc_C2AF40: LitI2_Byte 0
  loc_C2AF42: FLdPr Me
  loc_C2AF45: VCallAd Control_ID_cboSeleccion
  loc_C2AF48: FStAdFunc var_98
  loc_C2AF4B: FLdPr var_98
  loc_C2AF4E: Me.ListIndex = from_stack_1
  loc_C2AF53: FFree1Ad var_98
  loc_C2AF56: FLdPr Me
  loc_C2AF59: VCallAd Control_ID_cboSeleccion
  loc_C2AF5C: FStAdFunc var_98
  loc_C2AF5F: FLdPr var_98
  loc_C2AF62: Me.SetFocus
  loc_C2AF67: FFree1Ad var_98
  loc_C2AF6A: ILdRf Me
  loc_C2AF6D: CastAd
  loc_C2AF70: FStAdFunc var_98
  loc_C2AF73: FLdRfVar var_98
  loc_C2AF76: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C2AF7B: FFree1Ad var_98
  loc_C2AF7E: LitI4 0
  loc_C2AF83: LitI4 0
  loc_C2AF88: FLdRfVar var_EC
  loc_C2AF8B: Redim
  loc_C2AF95: FLdPr Me
  loc_C2AF98: VCallAd Control_ID_dgdABMS
  loc_C2AF9B: CVarAd
  loc_C2AF9F: ParmAry1St
  loc_C2AFA5: FLdRfVar var_EC
  loc_C2AFA8: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C2AFAD: FLdRfVar var_EC
  loc_C2AFB0: Erase
  loc_C2AFB1: ILdRf Me
  loc_C2AFB4: CastAd
  loc_C2AFB7: FStAdFunc var_98
  loc_C2AFBA: FLdRfVar var_98
  loc_C2AFBD: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C2AFC2: FFree1Ad var_98
  loc_C2AFC5: Branch loc_C2B588
  loc_C2AFC8: FLdRfVar var_C8
  loc_C2AFCB: FLdRfVar var_B8
  loc_C2AFCE: LitVarStr var_B4, "DefiImpu"
  loc_C2AFD3: PopAdLdVar
  loc_C2AFD4: FLdRfVar var_A4
  loc_C2AFD7: FLdRfVar var_98
  loc_C2AFDA: FLdPr Me
  loc_C2AFDD: MemLdRfVar from_stack_1.global_52
  loc_C2AFE0: NewIfNullPr clsimputacion
  loc_C2AFE3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2AFE8: FLdPr var_98
  loc_C2AFEB:  = Me.Fields
  loc_C2AFF0: FLdPr var_A4
  loc_C2AFF3: from_stack_2 = Me.Item(from_stack_1)
  loc_C2AFF8: FLdPr var_B8
  loc_C2AFFB:  = Me.Value
  loc_C2B000: FLdRfVar var_C8
  loc_C2B003: LitVarStr var_D8, "0"
  loc_C2B008: HardType
  loc_C2B009: NeVarBool
  loc_C2B00B: FFreeAd var_98 = "": var_A4 = ""
  loc_C2B014: FFree1Var var_C8 = ""
  loc_C2B017: BranchF loc_C2B271
  loc_C2B01A: FLdRfVar var_C8
  loc_C2B01D: FLdRfVar var_B8
  loc_C2B020: LitVarStr var_B4, "PeriInfo"
  loc_C2B025: PopAdLdVar
  loc_C2B026: FLdRfVar var_A4
  loc_C2B029: FLdRfVar var_98
  loc_C2B02C: FLdPr Me
  loc_C2B02F: MemLdRfVar from_stack_1.global_52
  loc_C2B032: NewIfNullPr clsimputacion
  loc_C2B035: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B03A: FLdPr var_98
  loc_C2B03D:  = Me.Fields
  loc_C2B042: FLdPr var_A4
  loc_C2B045: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B04A: FLdPr var_B8
  loc_C2B04D:  = Me.Value
  loc_C2B052: FLdRfVar var_E8
  loc_C2B055: FLdRfVar var_F8
  loc_C2B058: LitVarStr var_D8, "IdImpu"
  loc_C2B05D: PopAdLdVar
  loc_C2B05E: FLdRfVar var_F4
  loc_C2B061: FLdRfVar var_F0
  loc_C2B064: FLdPr Me
  loc_C2B067: MemLdRfVar from_stack_1.global_52
  loc_C2B06A: NewIfNullPr clsimputacion
  loc_C2B06D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B072: FLdPr var_F0
  loc_C2B075:  = Me.Fields
  loc_C2B07A: FLdPr var_F4
  loc_C2B07D: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B082: FLdPr var_F8
  loc_C2B085:  = Me.Value
  loc_C2B08A: FLdRfVar var_124
  loc_C2B08D: FLdRfVar var_114
  loc_C2B090: LitVarStr var_110, "Cuenta"
  loc_C2B095: PopAdLdVar
  loc_C2B096: FLdRfVar var_100
  loc_C2B099: FLdRfVar var_FC
  loc_C2B09C: FLdPr Me
  loc_C2B09F: MemLdRfVar from_stack_1.global_52
  loc_C2B0A2: NewIfNullPr clsimputacion
  loc_C2B0A5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B0AA: FLdPr var_FC
  loc_C2B0AD:  = Me.Fields
  loc_C2B0B2: FLdPr var_100
  loc_C2B0B5: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B0BA: FLdPr var_114
  loc_C2B0BD:  = Me.Value
  loc_C2B0C2: FLdRfVar var_90
  loc_C2B0C5: FLdRfVar var_124
  loc_C2B0C8: CI2Var
  loc_C2B0C9: FLdRfVar var_E8
  loc_C2B0CC: CI4Var
  loc_C2B0CE: FLdRfVar var_C8
  loc_C2B0D1: CI2Var
  loc_C2B0D2: FLdPr Me
  loc_C2B0D5: MemLdRfVar from_stack_1.global_52
  loc_C2B0D8: NewIfNullPr clsimputacion
  loc_C2B0DB: from_stack_4v = clsimputacion.ValidaModificarDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C2B0E0: ILdRf var_90
  loc_C2B0E3: FLdPr Me
  loc_C2B0E6: MemStStrCopy
  loc_C2B0EA: FFree1Str var_90
  loc_C2B0ED: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_B8 = "": var_F8 = ""
  loc_C2B102: FFreeVar var_C8 = "": var_E8 = ""
  loc_C2B10B: FLdPr Me
  loc_C2B10E: MemLdStr global_64
  loc_C2B111: LitStr vbNullString
  loc_C2B114: NeStr
  loc_C2B116: BranchF loc_C2B12C
  loc_C2B119: LitI4 0
  loc_C2B11E: FLdPr Me
  loc_C2B121: MemLdStr global_64
  loc_C2B124: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2B129: Branch loc_C2B26E
  loc_C2B12C: LitVar_Missing var_B4
  loc_C2B12F: PopAdLdVar
  loc_C2B130: LitStr "Definitiva (modificar)"
  loc_C2B133: FLdPr Me
  loc_C2B136: VCallAd Control_ID_cboSeleccion
  loc_C2B139: FStAdFunc var_98
  loc_C2B13C: FLdPr var_98
  loc_C2B13F: Me.AddItem from_stack_1, from_stack_2
  loc_C2B144: FFree1Ad var_98
  loc_C2B147: LitI4 9
  loc_C2B14C: FLdRfVar var_9A
  loc_C2B14F: FLdPr Me
  loc_C2B152: VCallAd Control_ID_cboSeleccion
  loc_C2B155: FStAdFunc var_98
  loc_C2B158: FLdPr var_98
  loc_C2B15B:  = Me.NewIndex
  loc_C2B160: FLdI2 var_9A
  loc_C2B163: FLdPr Me
  loc_C2B166: VCallAd Control_ID_cboSeleccion
  loc_C2B169: FStAdFunc var_A4
  loc_C2B16C: FLdPr var_A4
  loc_C2B16F: Me.ItemData = from_stack_1
  loc_C2B174: FFreeAd var_98 = ""
  loc_C2B17B: LitVar_Missing var_B4
  loc_C2B17E: PopAdLdVar
  loc_C2B17F: LitStr "Definitiva y Preventiva (modificar)"
  loc_C2B182: FLdPr Me
  loc_C2B185: VCallAd Control_ID_cboSeleccion
  loc_C2B188: FStAdFunc var_98
  loc_C2B18B: FLdPr var_98
  loc_C2B18E: Me.AddItem from_stack_1, from_stack_2
  loc_C2B193: FFree1Ad var_98
  loc_C2B196: LitI4 &H11
  loc_C2B19B: FLdRfVar var_9A
  loc_C2B19E: FLdPr Me
  loc_C2B1A1: VCallAd Control_ID_cboSeleccion
  loc_C2B1A4: FStAdFunc var_98
  loc_C2B1A7: FLdPr var_98
  loc_C2B1AA:  = Me.NewIndex
  loc_C2B1AF: FLdI2 var_9A
  loc_C2B1B2: FLdPr Me
  loc_C2B1B5: VCallAd Control_ID_cboSeleccion
  loc_C2B1B8: FStAdFunc var_A4
  loc_C2B1BB: FLdPr var_A4
  loc_C2B1BE: Me.ItemData = from_stack_1
  loc_C2B1C3: FFreeAd var_98 = ""
  loc_C2B1CA: LitI2_Byte &HFF
  loc_C2B1CC: FLdPr Me
  loc_C2B1CF: VCallAd Control_ID_cboSeleccion
  loc_C2B1D2: FStAdFunc var_98
  loc_C2B1D5: FLdPr var_98
  loc_C2B1D8: Me.Enabled = from_stack_1b
  loc_C2B1DD: FFree1Ad var_98
  loc_C2B1E0: LitI2_Byte 2
  loc_C2B1E2: FLdPr Me
  loc_C2B1E5: MemStUI1
  loc_C2B1E9: LitI2_Byte 0
  loc_C2B1EB: FLdPr Me
  loc_C2B1EE: VCallAd Control_ID_cboSeleccion
  loc_C2B1F1: FStAdFunc var_98
  loc_C2B1F4: FLdPr var_98
  loc_C2B1F7: Me.ListIndex = from_stack_1
  loc_C2B1FC: FFree1Ad var_98
  loc_C2B1FF: FLdPr Me
  loc_C2B202: VCallAd Control_ID_cboSeleccion
  loc_C2B205: FStAdFunc var_98
  loc_C2B208: FLdPr var_98
  loc_C2B20B: Me.SetFocus
  loc_C2B210: FFree1Ad var_98
  loc_C2B213: ILdRf Me
  loc_C2B216: CastAd
  loc_C2B219: FStAdFunc var_98
  loc_C2B21C: FLdRfVar var_98
  loc_C2B21F: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C2B224: FFree1Ad var_98
  loc_C2B227: LitI4 0
  loc_C2B22C: LitI4 0
  loc_C2B231: FLdRfVar var_EC
  loc_C2B234: Redim
  loc_C2B23E: FLdPr Me
  loc_C2B241: VCallAd Control_ID_dgdABMS
  loc_C2B244: CVarAd
  loc_C2B248: ParmAry1St
  loc_C2B24E: FLdRfVar var_EC
  loc_C2B251: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C2B256: FLdRfVar var_EC
  loc_C2B259: Erase
  loc_C2B25A: ILdRf Me
  loc_C2B25D: CastAd
  loc_C2B260: FStAdFunc var_98
  loc_C2B263: FLdRfVar var_98
  loc_C2B266: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C2B26B: FFree1Ad var_98
  loc_C2B26E: Branch loc_C2B588
  loc_C2B271: FLdRfVar var_C8
  loc_C2B274: FLdRfVar var_B8
  loc_C2B277: LitVarStr var_B4, "DeveImpu"
  loc_C2B27C: PopAdLdVar
  loc_C2B27D: FLdRfVar var_A4
  loc_C2B280: FLdRfVar var_98
  loc_C2B283: FLdPr Me
  loc_C2B286: MemLdRfVar from_stack_1.global_52
  loc_C2B289: NewIfNullPr clsimputacion
  loc_C2B28C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B291: FLdPr var_98
  loc_C2B294:  = Me.Fields
  loc_C2B299: FLdPr var_A4
  loc_C2B29C: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B2A1: FLdPr var_B8
  loc_C2B2A4:  = Me.Value
  loc_C2B2A9: FLdRfVar var_C8
  loc_C2B2AC: LitVarStr var_D8, "0"
  loc_C2B2B1: HardType
  loc_C2B2B2: NeVarBool
  loc_C2B2B4: FFreeAd var_98 = "": var_A4 = ""
  loc_C2B2BD: FFree1Var var_C8 = ""
  loc_C2B2C0: BranchF loc_C2B588
  loc_C2B2C3: FLdRfVar var_C8
  loc_C2B2C6: FLdRfVar var_B8
  loc_C2B2C9: LitVarStr var_B4, "PeriInfo"
  loc_C2B2CE: PopAdLdVar
  loc_C2B2CF: FLdRfVar var_A4
  loc_C2B2D2: FLdRfVar var_98
  loc_C2B2D5: FLdPr Me
  loc_C2B2D8: MemLdRfVar from_stack_1.global_52
  loc_C2B2DB: NewIfNullPr clsimputacion
  loc_C2B2DE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B2E3: FLdPr var_98
  loc_C2B2E6:  = Me.Fields
  loc_C2B2EB: FLdPr var_A4
  loc_C2B2EE: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B2F3: FLdPr var_B8
  loc_C2B2F6:  = Me.Value
  loc_C2B2FB: FLdRfVar var_E8
  loc_C2B2FE: FLdRfVar var_F8
  loc_C2B301: LitVarStr var_D8, "IdImpu"
  loc_C2B306: PopAdLdVar
  loc_C2B307: FLdRfVar var_F4
  loc_C2B30A: FLdRfVar var_F0
  loc_C2B30D: FLdPr Me
  loc_C2B310: MemLdRfVar from_stack_1.global_52
  loc_C2B313: NewIfNullPr clsimputacion
  loc_C2B316: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B31B: FLdPr var_F0
  loc_C2B31E:  = Me.Fields
  loc_C2B323: FLdPr var_F4
  loc_C2B326: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B32B: FLdPr var_F8
  loc_C2B32E:  = Me.Value
  loc_C2B333: FLdRfVar var_124
  loc_C2B336: FLdRfVar var_114
  loc_C2B339: LitVarStr var_110, "Cuenta"
  loc_C2B33E: PopAdLdVar
  loc_C2B33F: FLdRfVar var_100
  loc_C2B342: FLdRfVar var_FC
  loc_C2B345: FLdPr Me
  loc_C2B348: MemLdRfVar from_stack_1.global_52
  loc_C2B34B: NewIfNullPr clsimputacion
  loc_C2B34E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B353: FLdPr var_FC
  loc_C2B356:  = Me.Fields
  loc_C2B35B: FLdPr var_100
  loc_C2B35E: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B363: FLdPr var_114
  loc_C2B366:  = Me.Value
  loc_C2B36B: FLdRfVar var_90
  loc_C2B36E: FLdRfVar var_124
  loc_C2B371: CI2Var
  loc_C2B372: FLdRfVar var_E8
  loc_C2B375: CI4Var
  loc_C2B377: FLdRfVar var_C8
  loc_C2B37A: CI2Var
  loc_C2B37B: FLdPr Me
  loc_C2B37E: MemLdRfVar from_stack_1.global_52
  loc_C2B381: NewIfNullPr clsimputacion
  loc_C2B384: from_stack_4v = clsimputacion.ValidaModificarDevengado(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C2B389: ILdRf var_90
  loc_C2B38C: FLdPr Me
  loc_C2B38F: MemStStrCopy
  loc_C2B393: FFree1Str var_90
  loc_C2B396: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_B8 = "": var_F8 = ""
  loc_C2B3AB: FFreeVar var_C8 = "": var_E8 = ""
  loc_C2B3B4: FLdPr Me
  loc_C2B3B7: VCallAd Control_ID_tlbABMS
  loc_C2B3BA: FStAdFunc var_F0
  loc_C2B3BD: LitNothing
  loc_C2B3BF: CastAd
  loc_C2B3C2: FStAdFunc var_B8
  loc_C2B3C5: FLdRfVar var_B8
  loc_C2B3C8: FLdZeroAd var_F0
  loc_C2B3CB: FStAdFuncNoPop
  loc_C2B3CE: CastAd
  loc_C2B3D1: FStAdFunc var_A4
  loc_C2B3D4: FLdRfVar var_A4
  loc_C2B3D7: FLdPr Me
  loc_C2B3DA: MemLdRfVar from_stack_1.global_64
  loc_C2B3DD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_C2B3E2: FStI2 var_8A
  loc_C2B3E5: FFreeAd var_98 = "": var_A4 = "": var_B8 = ""
  loc_C2B3F0: FLdI2 var_8A
  loc_C2B3F3: NotI4
  loc_C2B3F4: BranchF loc_C2B588
  loc_C2B3F7: LitVar_Missing var_B4
  loc_C2B3FA: PopAdLdVar
  loc_C2B3FB: LitStr "Devengado (modificar)"
  loc_C2B3FE: FLdPr Me
  loc_C2B401: VCallAd Control_ID_cboSeleccion
  loc_C2B404: FStAdFunc var_98
  loc_C2B407: FLdPr var_98
  loc_C2B40A: Me.AddItem from_stack_1, from_stack_2
  loc_C2B40F: FFree1Ad var_98
  loc_C2B412: LitI4 &HA
  loc_C2B417: FLdRfVar var_9A
  loc_C2B41A: FLdPr Me
  loc_C2B41D: VCallAd Control_ID_cboSeleccion
  loc_C2B420: FStAdFunc var_98
  loc_C2B423: FLdPr var_98
  loc_C2B426:  = Me.NewIndex
  loc_C2B42B: FLdI2 var_9A
  loc_C2B42E: FLdPr Me
  loc_C2B431: VCallAd Control_ID_cboSeleccion
  loc_C2B434: FStAdFunc var_A4
  loc_C2B437: FLdPr var_A4
  loc_C2B43A: Me.ItemData = from_stack_1
  loc_C2B43F: FFreeAd var_98 = ""
  loc_C2B446: LitVar_Missing var_B4
  loc_C2B449: PopAdLdVar
  loc_C2B44A: LitStr "Devengado y Definitiva (modificar)"
  loc_C2B44D: FLdPr Me
  loc_C2B450: VCallAd Control_ID_cboSeleccion
  loc_C2B453: FStAdFunc var_98
  loc_C2B456: FLdPr var_98
  loc_C2B459: Me.AddItem from_stack_1, from_stack_2
  loc_C2B45E: FFree1Ad var_98
  loc_C2B461: LitI4 &H12
  loc_C2B466: FLdRfVar var_9A
  loc_C2B469: FLdPr Me
  loc_C2B46C: VCallAd Control_ID_cboSeleccion
  loc_C2B46F: FStAdFunc var_98
  loc_C2B472: FLdPr var_98
  loc_C2B475:  = Me.NewIndex
  loc_C2B47A: FLdI2 var_9A
  loc_C2B47D: FLdPr Me
  loc_C2B480: VCallAd Control_ID_cboSeleccion
  loc_C2B483: FStAdFunc var_A4
  loc_C2B486: FLdPr var_A4
  loc_C2B489: Me.ItemData = from_stack_1
  loc_C2B48E: FFreeAd var_98 = ""
  loc_C2B495: LitVar_Missing var_B4
  loc_C2B498: PopAdLdVar
  loc_C2B499: LitStr "Devengado, Definitiva y Preventiva (modificar)"
  loc_C2B49C: FLdPr Me
  loc_C2B49F: VCallAd Control_ID_cboSeleccion
  loc_C2B4A2: FStAdFunc var_98
  loc_C2B4A5: FLdPr var_98
  loc_C2B4A8: Me.AddItem from_stack_1, from_stack_2
  loc_C2B4AD: FFree1Ad var_98
  loc_C2B4B0: LitI4 &H13
  loc_C2B4B5: FLdRfVar var_9A
  loc_C2B4B8: FLdPr Me
  loc_C2B4BB: VCallAd Control_ID_cboSeleccion
  loc_C2B4BE: FStAdFunc var_98
  loc_C2B4C1: FLdPr var_98
  loc_C2B4C4:  = Me.NewIndex
  loc_C2B4C9: FLdI2 var_9A
  loc_C2B4CC: FLdPr Me
  loc_C2B4CF: VCallAd Control_ID_cboSeleccion
  loc_C2B4D2: FStAdFunc var_A4
  loc_C2B4D5: FLdPr var_A4
  loc_C2B4D8: Me.ItemData = from_stack_1
  loc_C2B4DD: FFreeAd var_98 = ""
  loc_C2B4E4: LitI2_Byte &HFF
  loc_C2B4E6: FLdPr Me
  loc_C2B4E9: VCallAd Control_ID_cboSeleccion
  loc_C2B4EC: FStAdFunc var_98
  loc_C2B4EF: FLdPr var_98
  loc_C2B4F2: Me.Enabled = from_stack_1b
  loc_C2B4F7: FFree1Ad var_98
  loc_C2B4FA: LitI2_Byte 2
  loc_C2B4FC: FLdPr Me
  loc_C2B4FF: MemStUI1
  loc_C2B503: LitI2_Byte 0
  loc_C2B505: FLdPr Me
  loc_C2B508: VCallAd Control_ID_cboSeleccion
  loc_C2B50B: FStAdFunc var_98
  loc_C2B50E: FLdPr var_98
  loc_C2B511: Me.ListIndex = from_stack_1
  loc_C2B516: FFree1Ad var_98
  loc_C2B519: FLdPr Me
  loc_C2B51C: VCallAd Control_ID_cboSeleccion
  loc_C2B51F: FStAdFunc var_98
  loc_C2B522: FLdPr var_98
  loc_C2B525: Me.SetFocus
  loc_C2B52A: FFree1Ad var_98
  loc_C2B52D: ILdRf Me
  loc_C2B530: CastAd
  loc_C2B533: FStAdFunc var_98
  loc_C2B536: FLdRfVar var_98
  loc_C2B539: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C2B53E: FFree1Ad var_98
  loc_C2B541: LitI4 0
  loc_C2B546: LitI4 0
  loc_C2B54B: FLdRfVar var_EC
  loc_C2B54E: Redim
  loc_C2B558: FLdPr Me
  loc_C2B55B: VCallAd Control_ID_dgdABMS
  loc_C2B55E: CVarAd
  loc_C2B562: ParmAry1St
  loc_C2B568: FLdRfVar var_EC
  loc_C2B56B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C2B570: FLdRfVar var_EC
  loc_C2B573: Erase
  loc_C2B574: ILdRf Me
  loc_C2B577: CastAd
  loc_C2B57A: FStAdFunc var_98
  loc_C2B57D: FLdRfVar var_98
  loc_C2B580: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C2B585: FFree1Ad var_98
  loc_C2B588: Branch loc_C3291F
  loc_C2B58B: ILdRf var_94
  loc_C2B58E: LitStr "btnEliminar"
  loc_C2B591: EqStr
  loc_C2B593: BranchF loc_C2C3CC
  loc_C2B596: FLdPr Me
  loc_C2B599: VCallAd Control_ID_cboSeleccion
  loc_C2B59C: FStAdFunc var_98
  loc_C2B59F: FLdPr var_98
  loc_C2B5A2: Me.Clear
  loc_C2B5A7: FFree1Ad var_98
  loc_C2B5AA: FLdRfVar var_A0
  loc_C2B5AD: FLdPr Me
  loc_C2B5B0: MemLdRfVar from_stack_1.global_52
  loc_C2B5B3: NewIfNullPr clsimputacion
  loc_C2B5B6: from_stack_1 = clsimputacion.RecordCount
  loc_C2B5BB: ILdRf var_A0
  loc_C2B5BE: LitI4 0
  loc_C2B5C3: GtI4
  loc_C2B5C4: BranchF loc_C2C3BC
  loc_C2B5C7: FLdRfVar var_C8
  loc_C2B5CA: FLdRfVar var_B8
  loc_C2B5CD: LitVarStr var_B4, "PrevImpu"
  loc_C2B5D2: PopAdLdVar
  loc_C2B5D3: FLdRfVar var_A4
  loc_C2B5D6: FLdRfVar var_98
  loc_C2B5D9: FLdPr Me
  loc_C2B5DC: MemLdRfVar from_stack_1.global_52
  loc_C2B5DF: NewIfNullPr clsimputacion
  loc_C2B5E2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B5E7: FLdPr var_98
  loc_C2B5EA:  = Me.Fields
  loc_C2B5EF: FLdPr var_A4
  loc_C2B5F2: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B5F7: FLdPr var_B8
  loc_C2B5FA:  = Me.Value
  loc_C2B5FF: FLdRfVar var_C8
  loc_C2B602: LitVarStr var_D8, "0"
  loc_C2B607: HardType
  loc_C2B608: NeVarBool
  loc_C2B60A: FFreeAd var_98 = "": var_A4 = ""
  loc_C2B613: FFree1Var var_C8 = ""
  loc_C2B616: BranchF loc_C2B9F1
  loc_C2B619: FLdRfVar var_C8
  loc_C2B61C: FLdRfVar var_B8
  loc_C2B61F: LitVarStr var_B4, "PeriInfo"
  loc_C2B624: PopAdLdVar
  loc_C2B625: FLdRfVar var_A4
  loc_C2B628: FLdRfVar var_98
  loc_C2B62B: FLdPr Me
  loc_C2B62E: MemLdRfVar from_stack_1.global_52
  loc_C2B631: NewIfNullPr clsimputacion
  loc_C2B634: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B639: FLdPr var_98
  loc_C2B63C:  = Me.Fields
  loc_C2B641: FLdPr var_A4
  loc_C2B644: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B649: FLdPr var_B8
  loc_C2B64C:  = Me.Value
  loc_C2B651: FLdRfVar var_E8
  loc_C2B654: FLdRfVar var_F8
  loc_C2B657: LitVarStr var_D8, "IdImpu"
  loc_C2B65C: PopAdLdVar
  loc_C2B65D: FLdRfVar var_F4
  loc_C2B660: FLdRfVar var_F0
  loc_C2B663: FLdPr Me
  loc_C2B666: MemLdRfVar from_stack_1.global_52
  loc_C2B669: NewIfNullPr clsimputacion
  loc_C2B66C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B671: FLdPr var_F0
  loc_C2B674:  = Me.Fields
  loc_C2B679: FLdPr var_F4
  loc_C2B67C: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B681: FLdPr var_F8
  loc_C2B684:  = Me.Value
  loc_C2B689: FLdRfVar var_124
  loc_C2B68C: FLdRfVar var_114
  loc_C2B68F: LitVarStr var_110, "Cuenta"
  loc_C2B694: PopAdLdVar
  loc_C2B695: FLdRfVar var_100
  loc_C2B698: FLdRfVar var_FC
  loc_C2B69B: FLdPr Me
  loc_C2B69E: MemLdRfVar from_stack_1.global_52
  loc_C2B6A1: NewIfNullPr clsimputacion
  loc_C2B6A4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B6A9: FLdPr var_FC
  loc_C2B6AC:  = Me.Fields
  loc_C2B6B1: FLdPr var_100
  loc_C2B6B4: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B6B9: FLdPr var_114
  loc_C2B6BC:  = Me.Value
  loc_C2B6C1: FLdRfVar var_90
  loc_C2B6C4: FLdRfVar var_124
  loc_C2B6C7: CI2Var
  loc_C2B6C8: FLdRfVar var_E8
  loc_C2B6CB: CI4Var
  loc_C2B6CD: FLdRfVar var_C8
  loc_C2B6D0: CI2Var
  loc_C2B6D1: FLdPr Me
  loc_C2B6D4: MemLdRfVar from_stack_1.global_52
  loc_C2B6D7: NewIfNullPr clsimputacion
  loc_C2B6DA: from_stack_4v = clsimputacion.ValidaEliminarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C2B6DF: ILdRf var_90
  loc_C2B6E2: FLdPr Me
  loc_C2B6E5: MemStStrCopy
  loc_C2B6E9: FFree1Str var_90
  loc_C2B6EC: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_B8 = "": var_F8 = ""
  loc_C2B701: FFreeVar var_C8 = "": var_E8 = ""
  loc_C2B70A: FLdPr Me
  loc_C2B70D: MemLdStr global_64
  loc_C2B710: LitStr vbNullString
  loc_C2B713: EqStr
  loc_C2B715: BranchF loc_C2B7DC
  loc_C2B718: LitI2_Byte 0
  loc_C2B71A: PopTmpLdAd2 var_126
  loc_C2B71D: LitI2_Byte &HFF
  loc_C2B71F: PopTmpLdAd2 var_9A
  loc_C2B722: LitStr "¿Desea ELIMINAR la Imputación Preventiva?"
  loc_C2B725: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2B72A: CI4UI1
  loc_C2B72B: LitI4 6
  loc_C2B730: EqI4
  loc_C2B731: BranchF loc_C2B7D9
  loc_C2B734: FLdRfVar var_C8
  loc_C2B737: FLdRfVar var_B8
  loc_C2B73A: LitVarStr var_B4, "PeriInfo"
  loc_C2B73F: PopAdLdVar
  loc_C2B740: FLdRfVar var_A4
  loc_C2B743: FLdRfVar var_98
  loc_C2B746: FLdPr Me
  loc_C2B749: MemLdRfVar from_stack_1.global_52
  loc_C2B74C: NewIfNullPr clsimputacion
  loc_C2B74F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B754: FLdPr var_98
  loc_C2B757:  = Me.Fields
  loc_C2B75C: FLdPr var_A4
  loc_C2B75F: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B764: FLdPr var_B8
  loc_C2B767:  = Me.Value
  loc_C2B76C: FLdRfVar var_E8
  loc_C2B76F: FLdRfVar var_F8
  loc_C2B772: LitVarStr var_D8, "IdImpu"
  loc_C2B777: PopAdLdVar
  loc_C2B778: FLdRfVar var_F4
  loc_C2B77B: FLdRfVar var_F0
  loc_C2B77E: FLdPr Me
  loc_C2B781: MemLdRfVar from_stack_1.global_52
  loc_C2B784: NewIfNullPr clsimputacion
  loc_C2B787: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B78C: FLdPr var_F0
  loc_C2B78F:  = Me.Fields
  loc_C2B794: FLdPr var_F4
  loc_C2B797: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B79C: FLdPr var_F8
  loc_C2B79F:  = Me.Value
  loc_C2B7A4: FLdRfVar var_E8
  loc_C2B7A7: CI4Var
  loc_C2B7A9: FLdRfVar var_C8
  loc_C2B7AC: CI2Var
  loc_C2B7AD: FLdPr Me
  loc_C2B7B0: MemLdRfVar from_stack_1.global_52
  loc_C2B7B3: NewIfNullPr clsimputacion
  loc_C2B7B6: Call clsimputacion.EliminarPreventiva(from_stack_1v, from_stack_2v)
  loc_C2B7BB: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_B8 = ""
  loc_C2B7CA: FFreeVar var_C8 = ""
  loc_C2B7D1: Call Proc_135_79_ADA1D4()
  loc_C2B7D6: Branch loc_C32920
  loc_C2B7D9: Branch loc_C2B7EC
  loc_C2B7DC: LitI4 0
  loc_C2B7E1: FLdPr Me
  loc_C2B7E4: MemLdStr global_64
  loc_C2B7E7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2B7EC: FLdRfVar var_C8
  loc_C2B7EF: FLdRfVar var_B8
  loc_C2B7F2: LitVarStr var_B4, "IdImpu"
  loc_C2B7F7: PopAdLdVar
  loc_C2B7F8: FLdRfVar var_A4
  loc_C2B7FB: FLdRfVar var_98
  loc_C2B7FE: FLdPr Me
  loc_C2B801: MemLdRfVar from_stack_1.global_52
  loc_C2B804: NewIfNullPr clsimputacion
  loc_C2B807: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B80C: FLdPr var_98
  loc_C2B80F:  = Me.Fields
  loc_C2B814: FLdPr var_A4
  loc_C2B817: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B81C: FLdPr var_B8
  loc_C2B81F:  = Me.Value
  loc_C2B824: FLdRfVar var_E8
  loc_C2B827: FLdRfVar var_F8
  loc_C2B82A: LitVarStr var_D8, "Cuenta"
  loc_C2B82F: PopAdLdVar
  loc_C2B830: FLdRfVar var_F4
  loc_C2B833: FLdRfVar var_F0
  loc_C2B836: FLdPr Me
  loc_C2B839: MemLdRfVar from_stack_1.global_52
  loc_C2B83C: NewIfNullPr clsimputacion
  loc_C2B83F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2B844: FLdPr var_F0
  loc_C2B847:  = Me.Fields
  loc_C2B84C: FLdPr var_F4
  loc_C2B84F: from_stack_2 = Me.Item(from_stack_1)
  loc_C2B854: FLdPr var_F8
  loc_C2B857:  = Me.Value
  loc_C2B85C: FLdRfVar var_90
  loc_C2B85F: FLdRfVar var_E8
  loc_C2B862: CI2Var
  loc_C2B863: FLdRfVar var_C8
  loc_C2B866: CI4Var
  loc_C2B868: ImpAdLdI2 MemVar_C3D064
  loc_C2B86B: FLdPr Me
  loc_C2B86E: MemLdRfVar from_stack_1.global_52
  loc_C2B871: NewIfNullPr clsimputacion
  loc_C2B874: from_stack_4v = clsimputacion.ValidaDesafectarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C2B879: ILdRf var_90
  loc_C2B87C: FLdPr Me
  loc_C2B87F: MemStStrCopy
  loc_C2B883: FFree1Str var_90
  loc_C2B886: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_B8 = ""
  loc_C2B895: FFreeVar var_C8 = ""
  loc_C2B89C: FLdPr Me
  loc_C2B89F: VCallAd Control_ID_tlbABMS
  loc_C2B8A2: FStAdFunc var_F0
  loc_C2B8A5: LitNothing
  loc_C2B8A7: CastAd
  loc_C2B8AA: FStAdFunc var_B8
  loc_C2B8AD: FLdRfVar var_B8
  loc_C2B8B0: FLdZeroAd var_F0
  loc_C2B8B3: FStAdFuncNoPop
  loc_C2B8B6: CastAd
  loc_C2B8B9: FStAdFunc var_A4
  loc_C2B8BC: FLdRfVar var_A4
  loc_C2B8BF: FLdPr Me
  loc_C2B8C2: MemLdRfVar from_stack_1.global_64
  loc_C2B8C5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_C2B8CA: FStI2 var_8A
  loc_C2B8CD: FFreeAd var_98 = "": var_A4 = "": var_B8 = ""
  loc_C2B8D8: FLdI2 var_8A
  loc_C2B8DB: NotI4
  loc_C2B8DC: BranchF loc_C2B9EE
  loc_C2B8DF: LitI2_Byte 0
  loc_C2B8E1: PopTmpLdAd2 var_126
  loc_C2B8E4: LitI2_Byte &HFF
  loc_C2B8E6: PopTmpLdAd2 var_9A
  loc_C2B8E9: LitStr "¿DESAFECTA la Preventiva?"
  loc_C2B8EC: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2B8F1: CI4UI1
  loc_C2B8F2: LitI4 6
  loc_C2B8F7: EqI4
  loc_C2B8F8: BranchF loc_C2B9EE
  loc_C2B8FB: LitVar_Missing var_B4
  loc_C2B8FE: PopAdLdVar
  loc_C2B8FF: LitStr "Preventiva (desafectar)"
  loc_C2B902: FLdPr Me
  loc_C2B905: VCallAd Control_ID_cboSeleccion
  loc_C2B908: FStAdFunc var_98
  loc_C2B90B: FLdPr var_98
  loc_C2B90E: Me.AddItem from_stack_1, from_stack_2
  loc_C2B913: FFree1Ad var_98
  loc_C2B916: LitI4 &HB
  loc_C2B91B: FLdRfVar var_9A
  loc_C2B91E: FLdPr Me
  loc_C2B921: VCallAd Control_ID_cboSeleccion
  loc_C2B924: FStAdFunc var_98
  loc_C2B927: FLdPr var_98
  loc_C2B92A:  = Me.NewIndex
  loc_C2B92F: FLdI2 var_9A
  loc_C2B932: FLdPr Me
  loc_C2B935: VCallAd Control_ID_cboSeleccion
  loc_C2B938: FStAdFunc var_A4
  loc_C2B93B: FLdPr var_A4
  loc_C2B93E: Me.ItemData = from_stack_1
  loc_C2B943: FFreeAd var_98 = ""
  loc_C2B94A: LitI2_Byte &HFF
  loc_C2B94C: FLdPr Me
  loc_C2B94F: VCallAd Control_ID_cboSeleccion
  loc_C2B952: FStAdFunc var_98
  loc_C2B955: FLdPr var_98
  loc_C2B958: Me.Enabled = from_stack_1b
  loc_C2B95D: FFree1Ad var_98
  loc_C2B960: LitI2_Byte 3
  loc_C2B962: FLdPr Me
  loc_C2B965: MemStUI1
  loc_C2B969: LitI2_Byte 0
  loc_C2B96B: FLdPr Me
  loc_C2B96E: VCallAd Control_ID_cboSeleccion
  loc_C2B971: FStAdFunc var_98
  loc_C2B974: FLdPr var_98
  loc_C2B977: Me.ListIndex = from_stack_1
  loc_C2B97C: FFree1Ad var_98
  loc_C2B97F: FLdPr Me
  loc_C2B982: VCallAd Control_ID_cboSeleccion
  loc_C2B985: FStAdFunc var_98
  loc_C2B988: FLdPr var_98
  loc_C2B98B: Me.SetFocus
  loc_C2B990: FFree1Ad var_98
  loc_C2B993: ILdRf Me
  loc_C2B996: CastAd
  loc_C2B999: FStAdFunc var_98
  loc_C2B99C: FLdRfVar var_98
  loc_C2B99F: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C2B9A4: FFree1Ad var_98
  loc_C2B9A7: LitI4 0
  loc_C2B9AC: LitI4 0
  loc_C2B9B1: FLdRfVar var_EC
  loc_C2B9B4: Redim
  loc_C2B9BE: FLdPr Me
  loc_C2B9C1: VCallAd Control_ID_dgdABMS
  loc_C2B9C4: CVarAd
  loc_C2B9C8: ParmAry1St
  loc_C2B9CE: FLdRfVar var_EC
  loc_C2B9D1: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C2B9D6: FLdRfVar var_EC
  loc_C2B9D9: Erase
  loc_C2B9DA: ILdRf Me
  loc_C2B9DD: CastAd
  loc_C2B9E0: FStAdFunc var_98
  loc_C2B9E3: FLdRfVar var_98
  loc_C2B9E6: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C2B9EB: FFree1Ad var_98
  loc_C2B9EE: Branch loc_C2C3B9
  loc_C2B9F1: FLdRfVar var_C8
  loc_C2B9F4: FLdRfVar var_B8
  loc_C2B9F7: LitVarStr var_B4, "DefiImpu"
  loc_C2B9FC: PopAdLdVar
  loc_C2B9FD: FLdRfVar var_A4
  loc_C2BA00: FLdRfVar var_98
  loc_C2BA03: FLdPr Me
  loc_C2BA06: MemLdRfVar from_stack_1.global_52
  loc_C2BA09: NewIfNullPr clsimputacion
  loc_C2BA0C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BA11: FLdPr var_98
  loc_C2BA14:  = Me.Fields
  loc_C2BA19: FLdPr var_A4
  loc_C2BA1C: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BA21: FLdPr var_B8
  loc_C2BA24:  = Me.Value
  loc_C2BA29: FLdRfVar var_C8
  loc_C2BA2C: LitVarStr var_D8, "0"
  loc_C2BA31: HardType
  loc_C2BA32: NeVarBool
  loc_C2BA34: FFreeAd var_98 = "": var_A4 = ""
  loc_C2BA3D: FFree1Var var_C8 = ""
  loc_C2BA40: BranchF loc_C2BE8C
  loc_C2BA43: FLdRfVar var_C8
  loc_C2BA46: FLdRfVar var_B8
  loc_C2BA49: LitVarStr var_B4, "PeriInfo"
  loc_C2BA4E: PopAdLdVar
  loc_C2BA4F: FLdRfVar var_A4
  loc_C2BA52: FLdRfVar var_98
  loc_C2BA55: FLdPr Me
  loc_C2BA58: MemLdRfVar from_stack_1.global_52
  loc_C2BA5B: NewIfNullPr clsimputacion
  loc_C2BA5E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BA63: FLdPr var_98
  loc_C2BA66:  = Me.Fields
  loc_C2BA6B: FLdPr var_A4
  loc_C2BA6E: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BA73: FLdPr var_B8
  loc_C2BA76:  = Me.Value
  loc_C2BA7B: FLdRfVar var_E8
  loc_C2BA7E: FLdRfVar var_F8
  loc_C2BA81: LitVarStr var_D8, "IdImpu"
  loc_C2BA86: PopAdLdVar
  loc_C2BA87: FLdRfVar var_F4
  loc_C2BA8A: FLdRfVar var_F0
  loc_C2BA8D: FLdPr Me
  loc_C2BA90: MemLdRfVar from_stack_1.global_52
  loc_C2BA93: NewIfNullPr clsimputacion
  loc_C2BA96: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BA9B: FLdPr var_F0
  loc_C2BA9E:  = Me.Fields
  loc_C2BAA3: FLdPr var_F4
  loc_C2BAA6: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BAAB: FLdPr var_F8
  loc_C2BAAE:  = Me.Value
  loc_C2BAB3: FLdRfVar var_124
  loc_C2BAB6: FLdRfVar var_114
  loc_C2BAB9: LitVarStr var_110, "Cuenta"
  loc_C2BABE: PopAdLdVar
  loc_C2BABF: FLdRfVar var_100
  loc_C2BAC2: FLdRfVar var_FC
  loc_C2BAC5: FLdPr Me
  loc_C2BAC8: MemLdRfVar from_stack_1.global_52
  loc_C2BACB: NewIfNullPr clsimputacion
  loc_C2BACE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BAD3: FLdPr var_FC
  loc_C2BAD6:  = Me.Fields
  loc_C2BADB: FLdPr var_100
  loc_C2BADE: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BAE3: FLdPr var_114
  loc_C2BAE6:  = Me.Value
  loc_C2BAEB: FLdRfVar var_90
  loc_C2BAEE: FLdRfVar var_124
  loc_C2BAF1: CI2Var
  loc_C2BAF2: FLdRfVar var_E8
  loc_C2BAF5: CI4Var
  loc_C2BAF7: FLdRfVar var_C8
  loc_C2BAFA: CI2Var
  loc_C2BAFB: FLdPr Me
  loc_C2BAFE: MemLdRfVar from_stack_1.global_52
  loc_C2BB01: NewIfNullPr clsimputacion
  loc_C2BB04: from_stack_4v = clsimputacion.ValidaEliminarDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C2BB09: ILdRf var_90
  loc_C2BB0C: FLdPr Me
  loc_C2BB0F: MemStStrCopy
  loc_C2BB13: FFree1Str var_90
  loc_C2BB16: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_B8 = "": var_F8 = ""
  loc_C2BB2B: FFreeVar var_C8 = "": var_E8 = ""
  loc_C2BB34: FLdPr Me
  loc_C2BB37: VCallAd Control_ID_tlbABMS
  loc_C2BB3A: FStAdFunc var_F0
  loc_C2BB3D: LitNothing
  loc_C2BB3F: CastAd
  loc_C2BB42: FStAdFunc var_B8
  loc_C2BB45: FLdRfVar var_B8
  loc_C2BB48: FLdZeroAd var_F0
  loc_C2BB4B: FStAdFuncNoPop
  loc_C2BB4E: CastAd
  loc_C2BB51: FStAdFunc var_A4
  loc_C2BB54: FLdRfVar var_A4
  loc_C2BB57: FLdPr Me
  loc_C2BB5A: MemLdRfVar from_stack_1.global_64
  loc_C2BB5D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_C2BB62: FStI2 var_8A
  loc_C2BB65: FFreeAd var_98 = "": var_A4 = "": var_B8 = ""
  loc_C2BB70: FLdI2 var_8A
  loc_C2BB73: NotI4
  loc_C2BB74: BranchF loc_C2BC38
  loc_C2BB77: LitI2_Byte 0
  loc_C2BB79: PopTmpLdAd2 var_126
  loc_C2BB7C: LitI2_Byte &HFF
  loc_C2BB7E: PopTmpLdAd2 var_9A
  loc_C2BB81: LitStr "¿Desea ELIMINAR la Imputación Definitiva?"
  loc_C2BB84: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2BB89: CI4UI1
  loc_C2BB8A: LitI4 6
  loc_C2BB8F: EqI4
  loc_C2BB90: BranchF loc_C2BC38
  loc_C2BB93: FLdRfVar var_C8
  loc_C2BB96: FLdRfVar var_B8
  loc_C2BB99: LitVarStr var_B4, "PeriInfo"
  loc_C2BB9E: PopAdLdVar
  loc_C2BB9F: FLdRfVar var_A4
  loc_C2BBA2: FLdRfVar var_98
  loc_C2BBA5: FLdPr Me
  loc_C2BBA8: MemLdRfVar from_stack_1.global_52
  loc_C2BBAB: NewIfNullPr clsimputacion
  loc_C2BBAE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BBB3: FLdPr var_98
  loc_C2BBB6:  = Me.Fields
  loc_C2BBBB: FLdPr var_A4
  loc_C2BBBE: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BBC3: FLdPr var_B8
  loc_C2BBC6:  = Me.Value
  loc_C2BBCB: FLdRfVar var_E8
  loc_C2BBCE: FLdRfVar var_F8
  loc_C2BBD1: LitVarStr var_D8, "IdImpu"
  loc_C2BBD6: PopAdLdVar
  loc_C2BBD7: FLdRfVar var_F4
  loc_C2BBDA: FLdRfVar var_F0
  loc_C2BBDD: FLdPr Me
  loc_C2BBE0: MemLdRfVar from_stack_1.global_52
  loc_C2BBE3: NewIfNullPr clsimputacion
  loc_C2BBE6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BBEB: FLdPr var_F0
  loc_C2BBEE:  = Me.Fields
  loc_C2BBF3: FLdPr var_F4
  loc_C2BBF6: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BBFB: FLdPr var_F8
  loc_C2BBFE:  = Me.Value
  loc_C2BC03: FLdRfVar var_E8
  loc_C2BC06: CI4Var
  loc_C2BC08: FLdRfVar var_C8
  loc_C2BC0B: CI2Var
  loc_C2BC0C: FLdPr Me
  loc_C2BC0F: MemLdRfVar from_stack_1.global_52
  loc_C2BC12: NewIfNullPr clsimputacion
  loc_C2BC15: Call clsimputacion.EliminarDefinitiva(from_stack_1v, from_stack_2v)
  loc_C2BC1A: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_B8 = ""
  loc_C2BC29: FFreeVar var_C8 = ""
  loc_C2BC30: Call Proc_135_79_ADA1D4()
  loc_C2BC35: Branch loc_C32920
  loc_C2BC38: FLdRfVar var_C8
  loc_C2BC3B: FLdRfVar var_B8
  loc_C2BC3E: LitVarStr var_B4, "IdImpu"
  loc_C2BC43: PopAdLdVar
  loc_C2BC44: FLdRfVar var_A4
  loc_C2BC47: FLdRfVar var_98
  loc_C2BC4A: FLdPr Me
  loc_C2BC4D: MemLdRfVar from_stack_1.global_52
  loc_C2BC50: NewIfNullPr clsimputacion
  loc_C2BC53: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BC58: FLdPr var_98
  loc_C2BC5B:  = Me.Fields
  loc_C2BC60: FLdPr var_A4
  loc_C2BC63: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BC68: FLdPr var_B8
  loc_C2BC6B:  = Me.Value
  loc_C2BC70: FLdRfVar var_E8
  loc_C2BC73: FLdRfVar var_F8
  loc_C2BC76: LitVarStr var_D8, "Cuenta"
  loc_C2BC7B: PopAdLdVar
  loc_C2BC7C: FLdRfVar var_F4
  loc_C2BC7F: FLdRfVar var_F0
  loc_C2BC82: FLdPr Me
  loc_C2BC85: MemLdRfVar from_stack_1.global_52
  loc_C2BC88: NewIfNullPr clsimputacion
  loc_C2BC8B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BC90: FLdPr var_F0
  loc_C2BC93:  = Me.Fields
  loc_C2BC98: FLdPr var_F4
  loc_C2BC9B: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BCA0: FLdPr var_F8
  loc_C2BCA3:  = Me.Value
  loc_C2BCA8: FLdRfVar var_90
  loc_C2BCAB: FLdRfVar var_E8
  loc_C2BCAE: CI2Var
  loc_C2BCAF: FLdRfVar var_C8
  loc_C2BCB2: CI4Var
  loc_C2BCB4: ImpAdLdI2 MemVar_C3D064
  loc_C2BCB7: FLdPr Me
  loc_C2BCBA: MemLdRfVar from_stack_1.global_52
  loc_C2BCBD: NewIfNullPr clsimputacion
  loc_C2BCC0: from_stack_4v = clsimputacion.ValidaDesafectarDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C2BCC5: ILdRf var_90
  loc_C2BCC8: FLdPr Me
  loc_C2BCCB: MemStStrCopy
  loc_C2BCCF: FFree1Str var_90
  loc_C2BCD2: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_B8 = ""
  loc_C2BCE1: FFreeVar var_C8 = ""
  loc_C2BCE8: FLdPr Me
  loc_C2BCEB: VCallAd Control_ID_tlbABMS
  loc_C2BCEE: FStAdFunc var_F0
  loc_C2BCF1: LitNothing
  loc_C2BCF3: CastAd
  loc_C2BCF6: FStAdFunc var_B8
  loc_C2BCF9: FLdRfVar var_B8
  loc_C2BCFC: FLdZeroAd var_F0
  loc_C2BCFF: FStAdFuncNoPop
  loc_C2BD02: CastAd
  loc_C2BD05: FStAdFunc var_A4
  loc_C2BD08: FLdRfVar var_A4
  loc_C2BD0B: FLdPr Me
  loc_C2BD0E: MemLdRfVar from_stack_1.global_64
  loc_C2BD11: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_C2BD16: FStI2 var_8A
  loc_C2BD19: FFreeAd var_98 = "": var_A4 = "": var_B8 = ""
  loc_C2BD24: FLdI2 var_8A
  loc_C2BD27: NotI4
  loc_C2BD28: BranchF loc_C2BE89
  loc_C2BD2B: LitI2_Byte 0
  loc_C2BD2D: PopTmpLdAd2 var_126
  loc_C2BD30: LitI2_Byte &HFF
  loc_C2BD32: PopTmpLdAd2 var_9A
  loc_C2BD35: LitStr "¿DESAFECTA el Compromiso Definitivo?"
  loc_C2BD38: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2BD3D: CI4UI1
  loc_C2BD3E: LitI4 6
  loc_C2BD43: EqI4
  loc_C2BD44: BranchF loc_C2BE89
  loc_C2BD47: LitVar_Missing var_B4
  loc_C2BD4A: PopAdLdVar
  loc_C2BD4B: LitStr "Definitiva (desafectar)"
  loc_C2BD4E: FLdPr Me
  loc_C2BD51: VCallAd Control_ID_cboSeleccion
  loc_C2BD54: FStAdFunc var_98
  loc_C2BD57: FLdPr var_98
  loc_C2BD5A: Me.AddItem from_stack_1, from_stack_2
  loc_C2BD5F: FFree1Ad var_98
  loc_C2BD62: LitI4 &HC
  loc_C2BD67: FLdRfVar var_9A
  loc_C2BD6A: FLdPr Me
  loc_C2BD6D: VCallAd Control_ID_cboSeleccion
  loc_C2BD70: FStAdFunc var_98
  loc_C2BD73: FLdPr var_98
  loc_C2BD76:  = Me.NewIndex
  loc_C2BD7B: FLdI2 var_9A
  loc_C2BD7E: FLdPr Me
  loc_C2BD81: VCallAd Control_ID_cboSeleccion
  loc_C2BD84: FStAdFunc var_A4
  loc_C2BD87: FLdPr var_A4
  loc_C2BD8A: Me.ItemData = from_stack_1
  loc_C2BD8F: FFreeAd var_98 = ""
  loc_C2BD96: LitVar_Missing var_B4
  loc_C2BD99: PopAdLdVar
  loc_C2BD9A: LitStr "Definitiva y Preventiva (desafectar)"
  loc_C2BD9D: FLdPr Me
  loc_C2BDA0: VCallAd Control_ID_cboSeleccion
  loc_C2BDA3: FStAdFunc var_98
  loc_C2BDA6: FLdPr var_98
  loc_C2BDA9: Me.AddItem from_stack_1, from_stack_2
  loc_C2BDAE: FFree1Ad var_98
  loc_C2BDB1: LitI4 &HE
  loc_C2BDB6: FLdRfVar var_9A
  loc_C2BDB9: FLdPr Me
  loc_C2BDBC: VCallAd Control_ID_cboSeleccion
  loc_C2BDBF: FStAdFunc var_98
  loc_C2BDC2: FLdPr var_98
  loc_C2BDC5:  = Me.NewIndex
  loc_C2BDCA: FLdI2 var_9A
  loc_C2BDCD: FLdPr Me
  loc_C2BDD0: VCallAd Control_ID_cboSeleccion
  loc_C2BDD3: FStAdFunc var_A4
  loc_C2BDD6: FLdPr var_A4
  loc_C2BDD9: Me.ItemData = from_stack_1
  loc_C2BDDE: FFreeAd var_98 = ""
  loc_C2BDE5: LitI2_Byte 3
  loc_C2BDE7: FLdPr Me
  loc_C2BDEA: MemStUI1
  loc_C2BDEE: LitI2_Byte 0
  loc_C2BDF0: FLdPr Me
  loc_C2BDF3: VCallAd Control_ID_cboSeleccion
  loc_C2BDF6: FStAdFunc var_98
  loc_C2BDF9: FLdPr var_98
  loc_C2BDFC: Me.ListIndex = from_stack_1
  loc_C2BE01: FFree1Ad var_98
  loc_C2BE04: LitI2_Byte &HFF
  loc_C2BE06: FLdPr Me
  loc_C2BE09: VCallAd Control_ID_cboSeleccion
  loc_C2BE0C: FStAdFunc var_98
  loc_C2BE0F: FLdPr var_98
  loc_C2BE12: Me.Enabled = from_stack_1b
  loc_C2BE17: FFree1Ad var_98
  loc_C2BE1A: FLdPr Me
  loc_C2BE1D: VCallAd Control_ID_cboSeleccion
  loc_C2BE20: FStAdFunc var_98
  loc_C2BE23: FLdPr var_98
  loc_C2BE26: Me.SetFocus
  loc_C2BE2B: FFree1Ad var_98
  loc_C2BE2E: ILdRf Me
  loc_C2BE31: CastAd
  loc_C2BE34: FStAdFunc var_98
  loc_C2BE37: FLdRfVar var_98
  loc_C2BE3A: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C2BE3F: FFree1Ad var_98
  loc_C2BE42: LitI4 0
  loc_C2BE47: LitI4 0
  loc_C2BE4C: FLdRfVar var_EC
  loc_C2BE4F: Redim
  loc_C2BE59: FLdPr Me
  loc_C2BE5C: VCallAd Control_ID_dgdABMS
  loc_C2BE5F: CVarAd
  loc_C2BE63: ParmAry1St
  loc_C2BE69: FLdRfVar var_EC
  loc_C2BE6C: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C2BE71: FLdRfVar var_EC
  loc_C2BE74: Erase
  loc_C2BE75: ILdRf Me
  loc_C2BE78: CastAd
  loc_C2BE7B: FStAdFunc var_98
  loc_C2BE7E: FLdRfVar var_98
  loc_C2BE81: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C2BE86: FFree1Ad var_98
  loc_C2BE89: Branch loc_C2C3B9
  loc_C2BE8C: FLdRfVar var_C8
  loc_C2BE8F: FLdRfVar var_B8
  loc_C2BE92: LitVarStr var_B4, "DeveImpu"
  loc_C2BE97: PopAdLdVar
  loc_C2BE98: FLdRfVar var_A4
  loc_C2BE9B: FLdRfVar var_98
  loc_C2BE9E: FLdPr Me
  loc_C2BEA1: MemLdRfVar from_stack_1.global_52
  loc_C2BEA4: NewIfNullPr clsimputacion
  loc_C2BEA7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BEAC: FLdPr var_98
  loc_C2BEAF:  = Me.Fields
  loc_C2BEB4: FLdPr var_A4
  loc_C2BEB7: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BEBC: FLdPr var_B8
  loc_C2BEBF:  = Me.Value
  loc_C2BEC4: FLdRfVar var_C8
  loc_C2BEC7: LitVarStr var_D8, "0"
  loc_C2BECC: HardType
  loc_C2BECD: NeVarBool
  loc_C2BECF: FFreeAd var_98 = "": var_A4 = ""
  loc_C2BED8: FFree1Var var_C8 = ""
  loc_C2BEDB: BranchF loc_C2C3B9
  loc_C2BEDE: FLdRfVar var_C8
  loc_C2BEE1: FLdRfVar var_B8
  loc_C2BEE4: LitVarStr var_B4, "PeriInfo"
  loc_C2BEE9: PopAdLdVar
  loc_C2BEEA: FLdRfVar var_A4
  loc_C2BEED: FLdRfVar var_98
  loc_C2BEF0: FLdPr Me
  loc_C2BEF3: MemLdRfVar from_stack_1.global_52
  loc_C2BEF6: NewIfNullPr clsimputacion
  loc_C2BEF9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BEFE: FLdPr var_98
  loc_C2BF01:  = Me.Fields
  loc_C2BF06: FLdPr var_A4
  loc_C2BF09: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BF0E: FLdPr var_B8
  loc_C2BF11:  = Me.Value
  loc_C2BF16: FLdRfVar var_E8
  loc_C2BF19: FLdRfVar var_F8
  loc_C2BF1C: LitVarStr var_D8, "IdImpu"
  loc_C2BF21: PopAdLdVar
  loc_C2BF22: FLdRfVar var_F4
  loc_C2BF25: FLdRfVar var_F0
  loc_C2BF28: FLdPr Me
  loc_C2BF2B: MemLdRfVar from_stack_1.global_52
  loc_C2BF2E: NewIfNullPr clsimputacion
  loc_C2BF31: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BF36: FLdPr var_F0
  loc_C2BF39:  = Me.Fields
  loc_C2BF3E: FLdPr var_F4
  loc_C2BF41: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BF46: FLdPr var_F8
  loc_C2BF49:  = Me.Value
  loc_C2BF4E: FLdRfVar var_124
  loc_C2BF51: FLdRfVar var_114
  loc_C2BF54: LitVarStr var_110, "Cuenta"
  loc_C2BF59: PopAdLdVar
  loc_C2BF5A: FLdRfVar var_100
  loc_C2BF5D: FLdRfVar var_FC
  loc_C2BF60: FLdPr Me
  loc_C2BF63: MemLdRfVar from_stack_1.global_52
  loc_C2BF66: NewIfNullPr clsimputacion
  loc_C2BF69: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2BF6E: FLdPr var_FC
  loc_C2BF71:  = Me.Fields
  loc_C2BF76: FLdPr var_100
  loc_C2BF79: from_stack_2 = Me.Item(from_stack_1)
  loc_C2BF7E: FLdPr var_114
  loc_C2BF81:  = Me.Value
  loc_C2BF86: FLdRfVar var_90
  loc_C2BF89: FLdRfVar var_124
  loc_C2BF8C: CI2Var
  loc_C2BF8D: FLdRfVar var_E8
  loc_C2BF90: CI4Var
  loc_C2BF92: FLdRfVar var_C8
  loc_C2BF95: CI2Var
  loc_C2BF96: FLdPr Me
  loc_C2BF99: MemLdRfVar from_stack_1.global_52
  loc_C2BF9C: NewIfNullPr clsimputacion
  loc_C2BF9F: from_stack_4v = clsimputacion.ValidaEliminarDevengado(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C2BFA4: ILdRf var_90
  loc_C2BFA7: FLdPr Me
  loc_C2BFAA: MemStStrCopy
  loc_C2BFAE: FFree1Str var_90
  loc_C2BFB1: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_B8 = "": var_F8 = ""
  loc_C2BFC6: FFreeVar var_C8 = "": var_E8 = ""
  loc_C2BFCF: FLdPr Me
  loc_C2BFD2: VCallAd Control_ID_tlbABMS
  loc_C2BFD5: FStAdFunc var_F0
  loc_C2BFD8: LitNothing
  loc_C2BFDA: CastAd
  loc_C2BFDD: FStAdFunc var_B8
  loc_C2BFE0: FLdRfVar var_B8
  loc_C2BFE3: FLdZeroAd var_F0
  loc_C2BFE6: FStAdFuncNoPop
  loc_C2BFE9: CastAd
  loc_C2BFEC: FStAdFunc var_A4
  loc_C2BFEF: FLdRfVar var_A4
  loc_C2BFF2: FLdPr Me
  loc_C2BFF5: MemLdRfVar from_stack_1.global_64
  loc_C2BFF8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_C2BFFD: FStI2 var_8A
  loc_C2C000: FFreeAd var_98 = "": var_A4 = "": var_B8 = ""
  loc_C2C00B: FLdI2 var_8A
  loc_C2C00E: NotI4
  loc_C2C00F: BranchF loc_C2C0D8
  loc_C2C012: LitI2_Byte 0
  loc_C2C014: PopTmpLdAd2 var_126
  loc_C2C017: LitI2_Byte &HFF
  loc_C2C019: PopTmpLdAd2 var_9A
  loc_C2C01C: LitStr "¿Desea ELIMINAR la Imputación Devengado?"
  loc_C2C01F: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2C024: CI4UI1
  loc_C2C025: LitI4 6
  loc_C2C02A: EqI4
  loc_C2C02B: BranchF loc_C2C0D8
  loc_C2C02E: FLdRfVar var_C8
  loc_C2C031: FLdRfVar var_B8
  loc_C2C034: LitVarStr var_B4, "PeriInfo"
  loc_C2C039: PopAdLdVar
  loc_C2C03A: FLdRfVar var_A4
  loc_C2C03D: FLdRfVar var_98
  loc_C2C040: FLdPr Me
  loc_C2C043: MemLdRfVar from_stack_1.global_52
  loc_C2C046: NewIfNullPr clsimputacion
  loc_C2C049: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2C04E: FLdPr var_98
  loc_C2C051:  = Me.Fields
  loc_C2C056: FLdPr var_A4
  loc_C2C059: from_stack_2 = Me.Item(from_stack_1)
  loc_C2C05E: FLdPr var_B8
  loc_C2C061:  = Me.Value
  loc_C2C066: FLdRfVar var_E8
  loc_C2C069: FLdRfVar var_F8
  loc_C2C06C: LitVarStr var_D8, "IdImpu"
  loc_C2C071: PopAdLdVar
  loc_C2C072: FLdRfVar var_F4
  loc_C2C075: FLdRfVar var_F0
  loc_C2C078: FLdPr Me
  loc_C2C07B: MemLdRfVar from_stack_1.global_52
  loc_C2C07E: NewIfNullPr clsimputacion
  loc_C2C081: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2C086: FLdPr var_F0
  loc_C2C089:  = Me.Fields
  loc_C2C08E: FLdPr var_F4
  loc_C2C091: from_stack_2 = Me.Item(from_stack_1)
  loc_C2C096: FLdPr var_F8
  loc_C2C099:  = Me.Value
  loc_C2C09E: FLdRfVar var_E8
  loc_C2C0A1: CStrVarTmp
  loc_C2C0A2: FStStrNoPop var_90
  loc_C2C0A5: FLdRfVar var_C8
  loc_C2C0A8: CI2Var
  loc_C2C0A9: FLdPr Me
  loc_C2C0AC: MemLdRfVar from_stack_1.global_52
  loc_C2C0AF: NewIfNullPr clsimputacion
  loc_C2C0B2: Call clsimputacion.EliminarDevengado(from_stack_1v, from_stack_2v)
  loc_C2C0B7: FFree1Str var_90
  loc_C2C0BA: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_B8 = ""
  loc_C2C0C9: FFreeVar var_C8 = ""
  loc_C2C0D0: Call Proc_135_79_ADA1D4()
  loc_C2C0D5: Branch loc_C32920
  loc_C2C0D8: FLdRfVar var_C8
  loc_C2C0DB: FLdRfVar var_B8
  loc_C2C0DE: LitVarStr var_B4, "PeriInfo"
  loc_C2C0E3: PopAdLdVar
  loc_C2C0E4: FLdRfVar var_A4
  loc_C2C0E7: FLdRfVar var_98
  loc_C2C0EA: FLdPr Me
  loc_C2C0ED: MemLdRfVar from_stack_1.global_52
  loc_C2C0F0: NewIfNullPr clsimputacion
  loc_C2C0F3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2C0F8: FLdPr var_98
  loc_C2C0FB:  = Me.Fields
  loc_C2C100: FLdPr var_A4
  loc_C2C103: from_stack_2 = Me.Item(from_stack_1)
  loc_C2C108: FLdPr var_B8
  loc_C2C10B:  = Me.Value
  loc_C2C110: FLdRfVar var_E8
  loc_C2C113: FLdRfVar var_F8
  loc_C2C116: LitVarStr var_D8, "IdImpu"
  loc_C2C11B: PopAdLdVar
  loc_C2C11C: FLdRfVar var_F4
  loc_C2C11F: FLdRfVar var_F0
  loc_C2C122: FLdPr Me
  loc_C2C125: MemLdRfVar from_stack_1.global_52
  loc_C2C128: NewIfNullPr clsimputacion
  loc_C2C12B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2C130: FLdPr var_F0
  loc_C2C133:  = Me.Fields
  loc_C2C138: FLdPr var_F4
  loc_C2C13B: from_stack_2 = Me.Item(from_stack_1)
  loc_C2C140: FLdPr var_F8
  loc_C2C143:  = Me.Value
  loc_C2C148: FLdRfVar var_124
  loc_C2C14B: FLdRfVar var_114
  loc_C2C14E: LitVarStr var_110, "Cuenta"
  loc_C2C153: PopAdLdVar
  loc_C2C154: FLdRfVar var_100
  loc_C2C157: FLdRfVar var_FC
  loc_C2C15A: FLdPr Me
  loc_C2C15D: MemLdRfVar from_stack_1.global_52
  loc_C2C160: NewIfNullPr clsimputacion
  loc_C2C163: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C2C168: FLdPr var_FC
  loc_C2C16B:  = Me.Fields
  loc_C2C170: FLdPr var_100
  loc_C2C173: from_stack_2 = Me.Item(from_stack_1)
  loc_C2C178: FLdPr var_114
  loc_C2C17B:  = Me.Value
  loc_C2C180: FLdRfVar var_90
  loc_C2C183: FLdRfVar var_124
  loc_C2C186: CI2Var
  loc_C2C187: FLdRfVar var_E8
  loc_C2C18A: CI4Var
  loc_C2C18C: FLdRfVar var_C8
  loc_C2C18F: CI2Var
  loc_C2C190: FLdPr Me
  loc_C2C193: MemLdRfVar from_stack_1.global_52
  loc_C2C196: NewIfNullPr clsimputacion
  loc_C2C199: from_stack_4v = clsimputacion.ValidaDesafectarDevengado(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C2C19E: ILdRf var_90
  loc_C2C1A1: FLdPr Me
  loc_C2C1A4: MemStStrCopy
  loc_C2C1A8: FFree1Str var_90
  loc_C2C1AB: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_B8 = "": var_F8 = ""
  loc_C2C1C0: FFreeVar var_C8 = "": var_E8 = ""
  loc_C2C1C9: FLdPr Me
  loc_C2C1CC: VCallAd Control_ID_tlbABMS
  loc_C2C1CF: FStAdFunc var_F0
  loc_C2C1D2: LitNothing
  loc_C2C1D4: CastAd
  loc_C2C1D7: FStAdFunc var_B8
  loc_C2C1DA: FLdRfVar var_B8
  loc_C2C1DD: FLdZeroAd var_F0
  loc_C2C1E0: FStAdFuncNoPop
  loc_C2C1E3: CastAd
  loc_C2C1E6: FStAdFunc var_A4
  loc_C2C1E9: FLdRfVar var_A4
  loc_C2C1EC: FLdPr Me
  loc_C2C1EF: MemLdRfVar from_stack_1.global_64
  loc_C2C1F2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_C2C1F7: FStI2 var_8A
  loc_C2C1FA: FFreeAd var_98 = "": var_A4 = "": var_B8 = ""
  loc_C2C205: FLdI2 var_8A
  loc_C2C208: NotI4
  loc_C2C209: BranchF loc_C2C3B9
  loc_C2C20C: LitI2_Byte 0
  loc_C2C20E: PopTmpLdAd2 var_126
  loc_C2C211: LitI2_Byte &HFF
  loc_C2C213: PopTmpLdAd2 var_9A
  loc_C2C216: LitStr "¿DESAFECTA el Devengado?"
  loc_C2C219: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2C21E: CI4UI1
  loc_C2C21F: LitI4 6
  loc_C2C224: EqI4
  loc_C2C225: BranchF loc_C2C3B9
  loc_C2C228: LitVar_Missing var_B4
  loc_C2C22B: PopAdLdVar
  loc_C2C22C: LitStr "Devengado (desafectar)"
  loc_C2C22F: FLdPr Me
  loc_C2C232: VCallAd Control_ID_cboSeleccion
  loc_C2C235: FStAdFunc var_98
  loc_C2C238: FLdPr var_98
  loc_C2C23B: Me.AddItem from_stack_1, from_stack_2
  loc_C2C240: FFree1Ad var_98
  loc_C2C243: LitI4 &HD
  loc_C2C248: FLdRfVar var_9A
  loc_C2C24B: FLdPr Me
  loc_C2C24E: VCallAd Control_ID_cboSeleccion
  loc_C2C251: FStAdFunc var_98
  loc_C2C254: FLdPr var_98
  loc_C2C257:  = Me.NewIndex
  loc_C2C25C: FLdI2 var_9A
  loc_C2C25F: FLdPr Me
  loc_C2C262: VCallAd Control_ID_cboSeleccion
  loc_C2C265: FStAdFunc var_A4
  loc_C2C268: FLdPr var_A4
  loc_C2C26B: Me.ItemData = from_stack_1
  loc_C2C270: FFreeAd var_98 = ""
  loc_C2C277: LitVar_Missing var_B4
  loc_C2C27A: PopAdLdVar
  loc_C2C27B: LitStr "Devengado y Definitiva (desafectar)"
  loc_C2C27E: FLdPr Me
  loc_C2C281: VCallAd Control_ID_cboSeleccion
  loc_C2C284: FStAdFunc var_98
  loc_C2C287: FLdPr var_98
  loc_C2C28A: Me.AddItem from_stack_1, from_stack_2
  loc_C2C28F: FFree1Ad var_98
  loc_C2C292: LitI4 &HF
  loc_C2C297: FLdRfVar var_9A
  loc_C2C29A: FLdPr Me
  loc_C2C29D: VCallAd Control_ID_cboSeleccion
  loc_C2C2A0: FStAdFunc var_98
  loc_C2C2A3: FLdPr var_98
  loc_C2C2A6:  = Me.NewIndex
  loc_C2C2AB: FLdI2 var_9A
  loc_C2C2AE: FLdPr Me
  loc_C2C2B1: VCallAd Control_ID_cboSeleccion
  loc_C2C2B4: FStAdFunc var_A4
  loc_C2C2B7: FLdPr var_A4
  loc_C2C2BA: Me.ItemData = from_stack_1
  loc_C2C2BF: FFreeAd var_98 = ""
  loc_C2C2C6: LitVar_Missing var_B4
  loc_C2C2C9: PopAdLdVar
  loc_C2C2CA: LitStr "Devengado, Definitiva y Preventiva (desafectar)"
  loc_C2C2CD: FLdPr Me
  loc_C2C2D0: VCallAd Control_ID_cboSeleccion
  loc_C2C2D3: FStAdFunc var_98
  loc_C2C2D6: FLdPr var_98
  loc_C2C2D9: Me.AddItem from_stack_1, from_stack_2
  loc_C2C2DE: FFree1Ad var_98
  loc_C2C2E1: LitI4 &H10
  loc_C2C2E6: FLdRfVar var_9A
  loc_C2C2E9: FLdPr Me
  loc_C2C2EC: VCallAd Control_ID_cboSeleccion
  loc_C2C2EF: FStAdFunc var_98
  loc_C2C2F2: FLdPr var_98
  loc_C2C2F5:  = Me.NewIndex
  loc_C2C2FA: FLdI2 var_9A
  loc_C2C2FD: FLdPr Me
  loc_C2C300: VCallAd Control_ID_cboSeleccion
  loc_C2C303: FStAdFunc var_A4
  loc_C2C306: FLdPr var_A4
  loc_C2C309: Me.ItemData = from_stack_1
  loc_C2C30E: FFreeAd var_98 = ""
  loc_C2C315: LitI2_Byte &HFF
  loc_C2C317: FLdPr Me
  loc_C2C31A: VCallAd Control_ID_cboSeleccion
  loc_C2C31D: FStAdFunc var_98
  loc_C2C320: FLdPr var_98
  loc_C2C323: Me.Enabled = from_stack_1b
  loc_C2C328: FFree1Ad var_98
  loc_C2C32B: LitI2_Byte 3
  loc_C2C32D: FLdPr Me
  loc_C2C330: MemStUI1
  loc_C2C334: LitI2_Byte 0
  loc_C2C336: FLdPr Me
  loc_C2C339: VCallAd Control_ID_cboSeleccion
  loc_C2C33C: FStAdFunc var_98
  loc_C2C33F: FLdPr var_98
  loc_C2C342: Me.ListIndex = from_stack_1
  loc_C2C347: FFree1Ad var_98
  loc_C2C34A: FLdPr Me
  loc_C2C34D: VCallAd Control_ID_cboSeleccion
  loc_C2C350: FStAdFunc var_98
  loc_C2C353: FLdPr var_98
  loc_C2C356: Me.SetFocus
  loc_C2C35B: FFree1Ad var_98
  loc_C2C35E: ILdRf Me
  loc_C2C361: CastAd
  loc_C2C364: FStAdFunc var_98
  loc_C2C367: FLdRfVar var_98
  loc_C2C36A: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C2C36F: FFree1Ad var_98
  loc_C2C372: LitI4 0
  loc_C2C377: LitI4 0
  loc_C2C37C: FLdRfVar var_EC
  loc_C2C37F: Redim
  loc_C2C389: FLdPr Me
  loc_C2C38C: VCallAd Control_ID_dgdABMS
  loc_C2C38F: CVarAd
  loc_C2C393: ParmAry1St
  loc_C2C399: FLdRfVar var_EC
  loc_C2C39C: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C2C3A1: FLdRfVar var_EC
  loc_C2C3A4: Erase
  loc_C2C3A5: ILdRf Me
  loc_C2C3A8: CastAd
  loc_C2C3AB: FStAdFunc var_98
  loc_C2C3AE: FLdRfVar var_98
  loc_C2C3B1: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C2C3B6: FFree1Ad var_98
  loc_C2C3B9: Branch loc_C2C3C9
  loc_C2C3BC: LitI4 0
  loc_C2C3C1: LitStr "No existe registro. Verifique..."
  loc_C2C3C4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2C3C9: Branch loc_C3291F
  loc_C2C3CC: ILdRf var_94
  loc_C2C3CF: LitStr "btnGuardar"
  loc_C2C3D2: EqStr
  loc_C2C3D4: BranchF loc_C327B9
  loc_C2C3D7: LitStr vbNullString
  loc_C2C3DA: FLdPr Me
  loc_C2C3DD: MemStStrCopy
  loc_C2C3E1: LitI2_Byte 0
  loc_C2C3E3: PopTmpLdAd2 var_9A
  loc_C2C3E6: Call ExorImpuMsk_UnknownEvent_8()
  loc_C2C3EB: FLdPr Me
  loc_C2C3EE: MemLdStr global_64
  loc_C2C3F1: LitStr vbNullString
  loc_C2C3F4: NeStr
  loc_C2C3F6: BranchF loc_C2C3FA
  loc_C2C3F9: ExitProcHresult
  loc_C2C3FA: LitI2_Byte 0
  loc_C2C3FC: PopTmpLdAd2 var_9A
  loc_C2C3FF: Call ExpeImpuTxt_Validate(from_stack_1v)
  loc_C2C404: FLdPr Me
  loc_C2C407: MemLdStr global_64
  loc_C2C40A: LitStr vbNullString
  loc_C2C40D: NeStr
  loc_C2C40F: BranchF loc_C2C413
  loc_C2C412: ExitProcHresult
  loc_C2C413: LitI2_Byte 0
  loc_C2C415: PopTmpLdAd2 var_9A
  loc_C2C418: Call CodiInsuMsk_UnknownEvent_8()
  loc_C2C41D: FLdPr Me
  loc_C2C420: MemLdStr global_64
  loc_C2C423: LitStr vbNullString
  loc_C2C426: NeStr
  loc_C2C428: BranchF loc_C2C42C
  loc_C2C42B: ExitProcHresult
  loc_C2C42C: LitI2_Byte 0
  loc_C2C42E: PopTmpLdAd2 var_9A
  loc_C2C431: Call CodiPartMsk_UnknownEvent_8()
  loc_C2C436: FLdPr Me
  loc_C2C439: MemLdStr global_64
  loc_C2C43C: LitStr vbNullString
  loc_C2C43F: NeStr
  loc_C2C441: BranchF loc_C2C445
  loc_C2C444: ExitProcHresult
  loc_C2C445: LitI2_Byte 0
  loc_C2C447: PopTmpLdAd2 var_9A
  loc_C2C44A: Call CodiOrgaMsk_UnknownEvent_8()
  loc_C2C44F: FLdPr Me
  loc_C2C452: MemLdStr global_64
  loc_C2C455: LitStr vbNullString
  loc_C2C458: NeStr
  loc_C2C45A: BranchF loc_C2C45E
  loc_C2C45D: ExitProcHresult
  loc_C2C45E: LitI2_Byte 0
  loc_C2C460: PopTmpLdAd2 var_9A
  loc_C2C463: Call CodiUngaTxt_Validate(from_stack_1v)
  loc_C2C468: FLdPr Me
  loc_C2C46B: MemLdStr global_64
  loc_C2C46E: LitStr vbNullString
  loc_C2C471: NeStr
  loc_C2C473: BranchF loc_C2C477
  loc_C2C476: ExitProcHresult
  loc_C2C477: LitI2_Byte 0
  loc_C2C479: PopTmpLdAd2 var_9A
  loc_C2C47C: Call CodiFifuMsk_UnknownEvent_8()
  loc_C2C481: FLdPr Me
  loc_C2C484: MemLdStr global_64
  loc_C2C487: LitStr vbNullString
  loc_C2C48A: NeStr
  loc_C2C48C: BranchF loc_C2C490
  loc_C2C48F: ExitProcHresult
  loc_C2C490: LitI2_Byte 0
  loc_C2C492: PopTmpLdAd2 var_9A
  loc_C2C495: Call DetaImpuTxt_Validate(from_stack_1v)
  loc_C2C49A: FLdPr Me
  loc_C2C49D: MemLdStr global_64
  loc_C2C4A0: LitStr vbNullString
  loc_C2C4A3: NeStr
  loc_C2C4A5: BranchF loc_C2C4A9
  loc_C2C4A8: ExitProcHresult
  loc_C2C4A9: LitI2_Byte 0
  loc_C2C4AB: PopTmpLdAd2 var_9A
  loc_C2C4AE: Call FechImpuMsk_UnknownEvent_8()
  loc_C2C4B3: FLdPr Me
  loc_C2C4B6: MemLdStr global_64
  loc_C2C4B9: LitStr vbNullString
  loc_C2C4BC: NeStr
  loc_C2C4BE: BranchF loc_C2C4C2
  loc_C2C4C1: ExitProcHresult
  loc_C2C4C2: LitI2_Byte 0
  loc_C2C4C4: PopTmpLdAd2 var_9A
  loc_C2C4C7: Call FechDeveMsk_UnknownEvent_8()
  loc_C2C4CC: FLdPr Me
  loc_C2C4CF: MemLdStr global_64
  loc_C2C4D2: LitStr vbNullString
  loc_C2C4D5: NeStr
  loc_C2C4D7: BranchF loc_C2C4DB
  loc_C2C4DA: ExitProcHresult
  loc_C2C4DB: LitI2_Byte 0
  loc_C2C4DD: PopTmpLdAd2 var_9A
  loc_C2C4E0: from_stack_2v = FefaDeveMsk_UnknownEvent_8(from_stack_1v)
  loc_C2C4E5: FLdPr Me
  loc_C2C4E8: MemLdStr global_64
  loc_C2C4EB: LitStr vbNullString
  loc_C2C4EE: NeStr
  loc_C2C4F0: BranchF loc_C2C4F4
  loc_C2C4F3: ExitProcHresult
  loc_C2C4F4: LitI2_Byte 0
  loc_C2C4F6: PopTmpLdAd2 var_9A
  loc_C2C4F9: Call TifaDeveCbo_Validate(from_stack_1v)
  loc_C2C4FE: FLdPr Me
  loc_C2C501: MemLdStr global_64
  loc_C2C504: LitStr vbNullString
  loc_C2C507: NeStr
  loc_C2C509: BranchF loc_C2C50D
  loc_C2C50C: ExitProcHresult
  loc_C2C50D: LitI2_Byte 0
  loc_C2C50F: PopTmpLdAd2 var_9A
  loc_C2C512: Call SufaDeveTxt_Validate(from_stack_1v)
  loc_C2C517: FLdPr Me
  loc_C2C51A: MemLdStr global_64
  loc_C2C51D: LitStr vbNullString
  loc_C2C520: NeStr
  loc_C2C522: BranchF loc_C2C526
  loc_C2C525: ExitProcHresult
  loc_C2C526: LitI2_Byte 0
  loc_C2C528: PopTmpLdAd2 var_9A
  loc_C2C52B: Call NufaDeveTxt_Validate(from_stack_1v)
  loc_C2C530: FLdPr Me
  loc_C2C533: MemLdStr global_64
  loc_C2C536: LitStr vbNullString
  loc_C2C539: NeStr
  loc_C2C53B: BranchF loc_C2C53F
  loc_C2C53E: ExitProcHresult
  loc_C2C53F: LitI2_Byte 0
  loc_C2C541: PopTmpLdAd2 var_9A
  loc_C2C544: Call CantImpuTxt_Validate(from_stack_1v)
  loc_C2C549: FLdPr Me
  loc_C2C54C: MemLdStr global_64
  loc_C2C54F: LitStr vbNullString
  loc_C2C552: NeStr
  loc_C2C554: BranchF loc_C2C558
  loc_C2C557: ExitProcHresult
  loc_C2C558: LitI2_Byte 0
  loc_C2C55A: PopTmpLdAd2 var_9A
  loc_C2C55D: Call ImunImpuTxt_Validate(from_stack_1v)
  loc_C2C562: FLdPr Me
  loc_C2C565: MemLdStr global_64
  loc_C2C568: LitStr vbNullString
  loc_C2C56B: NeStr
  loc_C2C56D: BranchF loc_C2C571
  loc_C2C570: ExitProcHresult
  loc_C2C571: LitI2_Byte 0
  loc_C2C573: PopTmpLdAd2 var_9A
  loc_C2C576: Call ImpoImpuTxt_Validate(from_stack_1v)
  loc_C2C57B: FLdPr Me
  loc_C2C57E: MemLdStr global_64
  loc_C2C581: LitStr vbNullString
  loc_C2C584: NeStr
  loc_C2C586: BranchF loc_C2C58A
  loc_C2C589: ExitProcHresult
  loc_C2C58A: LitI2_Byte 0
  loc_C2C58C: PopTmpLdAd2 var_9A
  loc_C2C58F: Call CucuPersTxt_Validate(from_stack_1v)
  loc_C2C594: FLdPr Me
  loc_C2C597: MemLdStr global_64
  loc_C2C59A: LitStr vbNullString
  loc_C2C59D: NeStr
  loc_C2C59F: BranchF loc_C2C5A3
  loc_C2C5A2: ExitProcHresult
  loc_C2C5A3: FLdRfVar var_9A
  loc_C2C5A6: FLdPr Me
  loc_C2C5A9: VCallAd Control_ID_chkRepetirProveedor
  loc_C2C5AC: FStAdFunc var_98
  loc_C2C5AF: FLdPr var_98
  loc_C2C5B2:  = Me.Value
  loc_C2C5B7: FLdI2 var_9A
  loc_C2C5BA: CI4UI1
  loc_C2C5BB: LitI4 1
  loc_C2C5C0: EqI4
  loc_C2C5C1: FFree1Ad var_98
  loc_C2C5C4: BranchF loc_C2C619
  loc_C2C5C7: FLdRfVar var_90
  loc_C2C5CA: FLdPr Me
  loc_C2C5CD: VCallAd Control_ID_CucuPersTxt
  loc_C2C5D0: FStAdFunc var_98
  loc_C2C5D3: FLdPr var_98
  loc_C2C5D6:  = Me.Text
  loc_C2C5DB: ILdRf var_90
  loc_C2C5DE: LitI4 1
  loc_C2C5E3: FLdPr Me
  loc_C2C5E6: MemLdRfVar from_stack_1.global_80
  loc_C2C5E9: Ary1StStrCopy
  loc_C2C5EA: FFree1Str var_90
  loc_C2C5ED: FFree1Ad var_98
  loc_C2C5F0: FLdRfVar var_90
  loc_C2C5F3: FLdPr Me
  loc_C2C5F6: VCallAd Control_ID_DetaProvLbl
  loc_C2C5F9: FStAdFunc var_98
  loc_C2C5FC: FLdPr var_98
  loc_C2C5FF:  = Me.Caption
  loc_C2C604: ILdRf var_90
  loc_C2C607: LitI4 2
  loc_C2C60C: FLdPr Me
  loc_C2C60F: MemLdRfVar from_stack_1.global_80
  loc_C2C612: Ary1StStrCopy
  loc_C2C613: FFree1Str var_90
  loc_C2C616: FFree1Ad var_98
  loc_C2C619: FLdRfVar var_9A
  loc_C2C61C: FLdPr Me
  loc_C2C61F: VCallAd Control_ID_chkRepetirFactura
  loc_C2C622: FStAdFunc var_98
  loc_C2C625: FLdPr var_98
  loc_C2C628:  = Me.Value
  loc_C2C62D: FLdI2 var_9A
  loc_C2C630: CI4UI1
  loc_C2C631: LitI4 1
  loc_C2C636: EqI4
  loc_C2C637: FFree1Ad var_98
  loc_C2C63A: BranchF loc_C2C6B8
  loc_C2C63D: FLdRfVar var_90
  loc_C2C640: FLdPr Me
  loc_C2C643: VCallAd Control_ID_TifaDeveCbo
  loc_C2C646: FStAdFunc var_98
  loc_C2C649: FLdPr var_98
  loc_C2C64C:  = Me.Text
  loc_C2C651: ILdRf var_90
  loc_C2C654: LitI4 1
  loc_C2C659: FLdPr Me
  loc_C2C65C: MemLdRfVar from_stack_1.global_108
  loc_C2C65F: Ary1StStrCopy
  loc_C2C660: FFree1Str var_90
  loc_C2C663: FFree1Ad var_98
  loc_C2C666: FLdRfVar var_90
  loc_C2C669: FLdPr Me
  loc_C2C66C: VCallAd Control_ID_SufaDeveTxt
  loc_C2C66F: FStAdFunc var_98
  loc_C2C672: FLdPr var_98
  loc_C2C675:  = Me.Text
  loc_C2C67A: ILdRf var_90
  loc_C2C67D: LitI4 2
  loc_C2C682: FLdPr Me
  loc_C2C685: MemLdRfVar from_stack_1.global_108
  loc_C2C688: Ary1StStrCopy
  loc_C2C689: FFree1Str var_90
  loc_C2C68C: FFree1Ad var_98
  loc_C2C68F: FLdRfVar var_90
  loc_C2C692: FLdPr Me
  loc_C2C695: VCallAd Control_ID_NufaDeveTxt
  loc_C2C698: FStAdFunc var_98
  loc_C2C69B: FLdPr var_98
  loc_C2C69E:  = Me.Text
  loc_C2C6A3: ILdRf var_90
  loc_C2C6A6: LitI4 3
  loc_C2C6AB: FLdPr Me
  loc_C2C6AE: MemLdRfVar from_stack_1.global_108
  loc_C2C6B1: Ary1StStrCopy
  loc_C2C6B2: FFree1Str var_90
  loc_C2C6B5: FFree1Ad var_98
  loc_C2C6B8: FLdRfVar var_9A
  loc_C2C6BB: FLdPr Me
  loc_C2C6BE: VCallAd Control_ID_chkRepetirExpePago
  loc_C2C6C1: FStAdFunc var_98
  loc_C2C6C4: FLdPr var_98
  loc_C2C6C7:  = Me.Value
  loc_C2C6CC: FLdI2 var_9A
  loc_C2C6CF: CI4UI1
  loc_C2C6D0: LitI4 1
  loc_C2C6D5: EqI4
  loc_C2C6D6: FFree1Ad var_98
  loc_C2C6D9: BranchF loc_C2C700
  loc_C2C6DC: FLdRfVar var_90
  loc_C2C6DF: FLdPr Me
  loc_C2C6E2: VCallAd Control_ID_ExpeImpuTxt
  loc_C2C6E5: FStAdFunc var_98
  loc_C2C6E8: FLdPr var_98
  loc_C2C6EB:  = Me.Text
  loc_C2C6F0: ILdRf var_90
  loc_C2C6F3: FLdPr Me
  loc_C2C6F6: MemStStrCopy
  loc_C2C6FA: FFree1Str var_90
  loc_C2C6FD: FFree1Ad var_98
  loc_C2C700: FLdPr Me
  loc_C2C703: MemLdUI1 global_60
  loc_C2C707: FStUI1 var_128
  loc_C2C70B: FLdUI1
  loc_C2C70F: LitI2_Byte 1
  loc_C2C711: EqI2
  loc_C2C712: BranchF loc_C2FF69
  loc_C2C715: FLdRfVar var_A0
  loc_C2C718: FLdRfVar var_9A
  loc_C2C71B: FLdPr Me
  loc_C2C71E: VCallAd Control_ID_cboSeleccion
  loc_C2C721: FStAdFunc var_98
  loc_C2C724: FLdPr var_98
  loc_C2C727:  = Me.ListIndex
  loc_C2C72C: FLdI2 var_9A
  loc_C2C72F: FLdPr Me
  loc_C2C732: VCallAd Control_ID_cboSeleccion
  loc_C2C735: FStAdFunc var_A4
  loc_C2C738: FLdPr var_A4
  loc_C2C73B:  = Me.ItemData
  loc_C2C740: ILdRf var_A0
  loc_C2C743: FStR4 var_12C
  loc_C2C746: FFreeAd var_98 = ""
  loc_C2C74D: ILdRf var_12C
  loc_C2C750: LitI4 1
  loc_C2C755: EqI4
  loc_C2C756: BranchF loc_C2C919
  loc_C2C759: FLdPr Me
  loc_C2C75C: VCallAd Control_ID_CodiPartMsk
  loc_C2C75F: FStAdFunc var_98
  loc_C2C762: FLdPr var_98
  loc_C2C765: LateIdLdVar var_C8 DispID_22 0
  loc_C2C76C: PopAd
  loc_C2C76E: FLdPr Me
  loc_C2C771: VCallAd Control_ID_CodiOrgaMsk
  loc_C2C774: FStAdFunc var_A4
  loc_C2C777: FLdPr var_A4
  loc_C2C77A: LateIdLdVar var_E8 DispID_22 0
  loc_C2C781: PopAd
  loc_C2C783: FLdRfVar var_90
  loc_C2C786: FLdPr Me
  loc_C2C789: VCallAd Control_ID_CodiUngaTxt
  loc_C2C78C: FStAdFunc var_B8
  loc_C2C78F: FLdPr var_B8
  loc_C2C792:  = Me.Text
  loc_C2C797: FLdPr Me
  loc_C2C79A: VCallAd Control_ID_CodiInsuMsk
  loc_C2C79D: FStAdFunc var_F0
  loc_C2C7A0: FLdPr var_F0
  loc_C2C7A3: LateIdLdVar var_124 DispID_22 0
  loc_C2C7AA: PopAd
  loc_C2C7AC: FLdPr Me
  loc_C2C7AF: VCallAd Control_ID_CodiFifuMsk
  loc_C2C7B2: FStAdFunc var_F4
  loc_C2C7B5: FLdPr var_F4
  loc_C2C7B8: LateIdLdVar var_13C DispID_22 0
  loc_C2C7BF: PopAd
  loc_C2C7C1: FLdPr Me
  loc_C2C7C4: VCallAd Control_ID_FechImpuMsk
  loc_C2C7C7: FStAdFunc var_F8
  loc_C2C7CA: FLdPr var_F8
  loc_C2C7CD: LateIdLdVar var_14C DispID_15 0
  loc_C2C7D4: PopAd
  loc_C2C7D6: FLdPr Me
  loc_C2C7D9: VCallAd Control_ID_ExorImpuMsk
  loc_C2C7DC: FStAdFunc var_FC
  loc_C2C7DF: FLdPr var_FC
  loc_C2C7E2: LateIdLdVar var_15C DispID_15 0
  loc_C2C7E9: CStrVarTmp
  loc_C2C7EA: FStStrNoPop var_160
  loc_C2C7ED: ImpAdCallI2 Trim$()
  loc_C2C7F2: FStStr var_194
  loc_C2C7F5: FLdRfVar var_164
  loc_C2C7F8: FLdPr Me
  loc_C2C7FB: VCallAd Control_ID_CantImpuTxt
  loc_C2C7FE: FStAdFunc var_100
  loc_C2C801: FLdPr var_100
  loc_C2C804:  = Me.Text
  loc_C2C809: FLdRfVar var_168
  loc_C2C80C: FLdPr Me
  loc_C2C80F: VCallAd Control_ID_ImunImpuTxt
  loc_C2C812: FStAdFunc var_114
  loc_C2C815: FLdPr var_114
  loc_C2C818:  = Me.Text
  loc_C2C81D: FLdRfVar var_170
  loc_C2C820: FLdPr Me
  loc_C2C823: VCallAd Control_ID_ImpoImpuTxt
  loc_C2C826: FStAdFunc var_16C
  loc_C2C829: FLdPr var_16C
  loc_C2C82C:  = Me.Text
  loc_C2C831: FLdRfVar var_190
  loc_C2C834: FLdPr Me
  loc_C2C837: VCallAd Control_ID_DetaImpuTxt
  loc_C2C83A: FStAdFunc var_18C
  loc_C2C83D: FLdPr var_18C
  loc_C2C840:  = Me.Text
  loc_C2C845: FLdRfVar var_A0
  loc_C2C848: LitI2_Byte 0
  loc_C2C84A: LitI2_Byte 0
  loc_C2C84C: LitI2_Byte 0
  loc_C2C84E: LitI4 0
  loc_C2C853: LitI2_Byte 0
  loc_C2C855: LitI4 0
  loc_C2C85A: ILdRf var_190
  loc_C2C85D: ILdRf var_170
  loc_C2C860: CR8Str
  loc_C2C862: PopFPR8
  loc_C2C863: ILdRf var_168
  loc_C2C866: CR8Str
  loc_C2C868: PopFPR8
  loc_C2C869: ILdRf var_164
  loc_C2C86C: CR8Str
  loc_C2C86E: PopFPR8
  loc_C2C86F: FLdZeroAd var_194
  loc_C2C872: FStStrNoPop var_188
  loc_C2C875: FLdRfVar var_14C
  loc_C2C878: CStrVarTmp
  loc_C2C879: FStStrNoPop var_184
  loc_C2C87C: FLdRfVar var_13C
  loc_C2C87F: CStrVarTmp
  loc_C2C880: FStStrNoPop var_180
  loc_C2C883: FLdRfVar var_124
  loc_C2C886: CStrVarTmp
  loc_C2C887: FStStrNoPop var_17C
  loc_C2C88A: CI4Str
  loc_C2C88B: ILdRf var_90
  loc_C2C88E: CI2Str
  loc_C2C890: FLdRfVar var_E8
  loc_C2C893: CStrVarTmp
  loc_C2C894: FStStrNoPop var_178
  loc_C2C897: FLdRfVar var_C8
  loc_C2C89A: CStrVarTmp
  loc_C2C89B: FStStrNoPop var_174
  loc_C2C89E: FLdPr Me
  loc_C2C8A1: MemLdRfVar from_stack_1.global_52
  loc_C2C8A4: NewIfNullPr clsimputacion
  loc_C2C8A7: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2C8AC: ILdRf var_A0
  loc_C2C8AF: FLdPr Me
  loc_C2C8B2: MemStI4 global_68
  loc_C2C8B5: FFreeStr var_160 = "": var_174 = "": var_178 = "": var_90 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_164 = "": var_168 = "": var_170 = "": var_190 = ""
  loc_C2C8D2: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = ""
  loc_C2C8EB: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = ""
  loc_C2C8FA: FLdPr Me
  loc_C2C8FD: MemLdStr global_68
  loc_C2C900: LitI4 0
  loc_C2C905: EqI4
  loc_C2C906: BranchF loc_C2C916
  loc_C2C909: LitI4 0
  loc_C2C90E: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2C911: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2C916: Branch loc_C2FF01
  loc_C2C919: ILdRf var_12C
  loc_C2C91C: LitI4 2
  loc_C2C921: EqI4
  loc_C2C922: BranchF loc_C2CECC
  loc_C2C925: FLdPr Me
  loc_C2C928: VCallAd Control_ID_CodiPartMsk
  loc_C2C92B: FStAdFunc var_98
  loc_C2C92E: FLdPr var_98
  loc_C2C931: LateIdLdVar var_C8 DispID_22 0
  loc_C2C938: PopAd
  loc_C2C93A: FLdPr Me
  loc_C2C93D: VCallAd Control_ID_CodiOrgaMsk
  loc_C2C940: FStAdFunc var_A4
  loc_C2C943: FLdPr var_A4
  loc_C2C946: LateIdLdVar var_E8 DispID_22 0
  loc_C2C94D: PopAd
  loc_C2C94F: FLdRfVar var_90
  loc_C2C952: FLdPr Me
  loc_C2C955: VCallAd Control_ID_CodiUngaTxt
  loc_C2C958: FStAdFunc var_B8
  loc_C2C95B: FLdPr var_B8
  loc_C2C95E:  = Me.Text
  loc_C2C963: FLdPr Me
  loc_C2C966: VCallAd Control_ID_CodiInsuMsk
  loc_C2C969: FStAdFunc var_F0
  loc_C2C96C: FLdPr var_F0
  loc_C2C96F: LateIdLdVar var_124 DispID_22 0
  loc_C2C976: PopAd
  loc_C2C978: FLdPr Me
  loc_C2C97B: VCallAd Control_ID_CodiFifuMsk
  loc_C2C97E: FStAdFunc var_F4
  loc_C2C981: FLdPr var_F4
  loc_C2C984: LateIdLdVar var_13C DispID_22 0
  loc_C2C98B: PopAd
  loc_C2C98D: FLdPr Me
  loc_C2C990: VCallAd Control_ID_FechImpuMsk
  loc_C2C993: FStAdFunc var_F8
  loc_C2C996: FLdPr var_F8
  loc_C2C999: LateIdLdVar var_14C DispID_15 0
  loc_C2C9A0: PopAd
  loc_C2C9A2: FLdPr Me
  loc_C2C9A5: VCallAd Control_ID_ExorImpuMsk
  loc_C2C9A8: FStAdFunc var_FC
  loc_C2C9AB: FLdPr var_FC
  loc_C2C9AE: LateIdLdVar var_15C DispID_15 0
  loc_C2C9B5: CStrVarTmp
  loc_C2C9B6: FStStrNoPop var_160
  loc_C2C9B9: ImpAdCallI2 Trim$()
  loc_C2C9BE: FStStr var_224
  loc_C2C9C1: FLdRfVar var_164
  loc_C2C9C4: FLdPr Me
  loc_C2C9C7: VCallAd Control_ID_CantImpuTxt
  loc_C2C9CA: FStAdFunc var_100
  loc_C2C9CD: FLdPr var_100
  loc_C2C9D0:  = Me.Text
  loc_C2C9D5: FLdRfVar var_168
  loc_C2C9D8: FLdPr Me
  loc_C2C9DB: VCallAd Control_ID_ImunImpuTxt
  loc_C2C9DE: FStAdFunc var_114
  loc_C2C9E1: FLdPr var_114
  loc_C2C9E4:  = Me.Text
  loc_C2C9E9: FLdRfVar var_170
  loc_C2C9EC: FLdPr Me
  loc_C2C9EF: VCallAd Control_ID_ImpoImpuTxt
  loc_C2C9F2: FStAdFunc var_16C
  loc_C2C9F5: FLdPr var_16C
  loc_C2C9F8:  = Me.Text
  loc_C2C9FD: FLdRfVar var_220
  loc_C2CA00: FLdPr Me
  loc_C2CA03: VCallAd Control_ID_DetaImpuTxt
  loc_C2CA06: FStAdFunc var_21C
  loc_C2CA09: FLdPr var_21C
  loc_C2CA0C:  = Me.Text
  loc_C2CA11: FLdRfVar var_174
  loc_C2CA14: FLdPr Me
  loc_C2CA17: VCallAd Control_ID_CodiNopeLbl
  loc_C2CA1A: FStAdFunc var_18C
  loc_C2CA1D: FLdPr var_18C
  loc_C2CA20:  = Me.Caption
  loc_C2CA25: FLdRfVar var_178
  loc_C2CA28: FLdPr Me
  loc_C2CA2B: VCallAd Control_ID_CodiNopeLbl
  loc_C2CA2E: FStAdFunc var_198
  loc_C2CA31: FLdPr var_198
  loc_C2CA34:  = Me.Caption
  loc_C2CA39: FLdZeroAd var_178
  loc_C2CA3C: CVarStr var_1B8
  loc_C2CA3F: LitVarI2 var_1A8, 0
  loc_C2CA44: ILdRf var_174
  loc_C2CA47: LitStr vbNullString
  loc_C2CA4A: EqStr
  loc_C2CA4C: CVarBoolI2 var_B4
  loc_C2CA50: FLdRfVar var_1C8
  loc_C2CA53: ImpAdCallFPR4  = IIf(, , )
  loc_C2CA58: FLdRfVar var_17C
  loc_C2CA5B: FLdPr Me
  loc_C2CA5E: VCallAd Control_ID_ItemLbl
  loc_C2CA61: FStAdFunc var_1CC
  loc_C2CA64: FLdPr var_1CC
  loc_C2CA67:  = Me.Caption
  loc_C2CA6C: FLdRfVar var_180
  loc_C2CA6F: FLdPr Me
  loc_C2CA72: VCallAd Control_ID_ItemLbl
  loc_C2CA75: FStAdFunc var_1D0
  loc_C2CA78: FLdPr var_1D0
  loc_C2CA7B:  = Me.Caption
  loc_C2CA80: FLdZeroAd var_180
  loc_C2CA83: CVarStr var_200
  loc_C2CA86: LitVarI2 var_1F0, 0
  loc_C2CA8B: ILdRf var_17C
  loc_C2CA8E: LitStr vbNullString
  loc_C2CA91: EqStr
  loc_C2CA93: CVarBoolI2 var_110
  loc_C2CA97: FLdRfVar var_210
  loc_C2CA9A: ImpAdCallFPR4  = IIf(, , )
  loc_C2CA9F: FLdRfVar var_A0
  loc_C2CAA2: LitI2_Byte 0
  loc_C2CAA4: LitI2_Byte 0
  loc_C2CAA6: LitI2_Byte 0
  loc_C2CAA8: LitI4 0
  loc_C2CAAD: FLdRfVar var_210
  loc_C2CAB0: CI2Var
  loc_C2CAB1: FLdRfVar var_1C8
  loc_C2CAB4: CI4Var
  loc_C2CAB6: ILdRf var_220
  loc_C2CAB9: ILdRf var_170
  loc_C2CABC: CR8Str
  loc_C2CABE: PopFPR8
  loc_C2CABF: ILdRf var_168
  loc_C2CAC2: CR8Str
  loc_C2CAC4: PopFPR8
  loc_C2CAC5: ILdRf var_164
  loc_C2CAC8: CR8Str
  loc_C2CACA: PopFPR8
  loc_C2CACB: FLdZeroAd var_224
  loc_C2CACE: FStStrNoPop var_218
  loc_C2CAD1: FLdRfVar var_14C
  loc_C2CAD4: CStrVarTmp
  loc_C2CAD5: FStStrNoPop var_214
  loc_C2CAD8: FLdRfVar var_13C
  loc_C2CADB: CStrVarTmp
  loc_C2CADC: FStStrNoPop var_194
  loc_C2CADF: FLdRfVar var_124
  loc_C2CAE2: CStrVarTmp
  loc_C2CAE3: FStStrNoPop var_190
  loc_C2CAE6: CI4Str
  loc_C2CAE7: ILdRf var_90
  loc_C2CAEA: CI2Str
  loc_C2CAEC: FLdRfVar var_E8
  loc_C2CAEF: CStrVarTmp
  loc_C2CAF0: FStStrNoPop var_188
  loc_C2CAF3: FLdRfVar var_C8
  loc_C2CAF6: CStrVarTmp
  loc_C2CAF7: FStStrNoPop var_184
  loc_C2CAFA: FLdPr Me
  loc_C2CAFD: MemLdRfVar from_stack_1.global_52
  loc_C2CB00: NewIfNullPr clsimputacion
  loc_C2CB03: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2CB08: ILdRf var_A0
  loc_C2CB0B: FLdPr Me
  loc_C2CB0E: MemStI4 global_68
  loc_C2CB11: FFreeStr var_160 = "": var_174 = "": var_17C = "": var_184 = "": var_188 = "": var_90 = "": var_190 = "": var_194 = "": var_214 = "": var_218 = "": var_164 = "": var_168 = "": var_170 = "": var_220 = ""
  loc_C2CB32: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = ""
  loc_C2CB53: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_1C8 = ""
  loc_C2CB72: FLdPr Me
  loc_C2CB75: MemLdStr global_68
  loc_C2CB78: LitI4 0
  loc_C2CB7D: EqI4
  loc_C2CB7E: BranchF loc_C2CB91
  loc_C2CB81: LitI4 0
  loc_C2CB86: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2CB89: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2CB8E: Branch loc_C2CEC9
  loc_C2CB91: FLdPr Me
  loc_C2CB94: VCallAd Control_ID_CodiPartMsk
  loc_C2CB97: FStAdFunc var_98
  loc_C2CB9A: FLdPr var_98
  loc_C2CB9D: LateIdLdVar var_C8 DispID_22 0
  loc_C2CBA4: PopAd
  loc_C2CBA6: FLdPr Me
  loc_C2CBA9: VCallAd Control_ID_CodiOrgaMsk
  loc_C2CBAC: FStAdFunc var_A4
  loc_C2CBAF: FLdPr var_A4
  loc_C2CBB2: LateIdLdVar var_E8 DispID_22 0
  loc_C2CBB9: PopAd
  loc_C2CBBB: FLdRfVar var_90
  loc_C2CBBE: FLdPr Me
  loc_C2CBC1: VCallAd Control_ID_CodiUngaTxt
  loc_C2CBC4: FStAdFunc var_B8
  loc_C2CBC7: FLdPr var_B8
  loc_C2CBCA:  = Me.Text
  loc_C2CBCF: FLdPr Me
  loc_C2CBD2: VCallAd Control_ID_CodiInsuMsk
  loc_C2CBD5: FStAdFunc var_F0
  loc_C2CBD8: FLdPr var_F0
  loc_C2CBDB: LateIdLdVar var_124 DispID_22 0
  loc_C2CBE2: PopAd
  loc_C2CBE4: FLdPr Me
  loc_C2CBE7: VCallAd Control_ID_CodiFifuMsk
  loc_C2CBEA: FStAdFunc var_F4
  loc_C2CBED: FLdPr var_F4
  loc_C2CBF0: LateIdLdVar var_13C DispID_22 0
  loc_C2CBF7: PopAd
  loc_C2CBF9: FLdPr Me
  loc_C2CBFC: VCallAd Control_ID_FechImpuMsk
  loc_C2CBFF: FStAdFunc var_F8
  loc_C2CC02: FLdPr var_F8
  loc_C2CC05: LateIdLdVar var_14C DispID_15 0
  loc_C2CC0C: PopAd
  loc_C2CC0E: FLdPr Me
  loc_C2CC11: VCallAd Control_ID_ExorImpuMsk
  loc_C2CC14: FStAdFunc var_FC
  loc_C2CC17: FLdPr var_FC
  loc_C2CC1A: LateIdLdVar var_15C DispID_15 0
  loc_C2CC21: CStrVarTmp
  loc_C2CC22: FStStrNoPop var_160
  loc_C2CC25: ImpAdCallI2 Trim$()
  loc_C2CC2A: FStStr var_2EC
  loc_C2CC2D: FLdRfVar var_164
  loc_C2CC30: FLdPr Me
  loc_C2CC33: VCallAd Control_ID_CantImpuTxt
  loc_C2CC36: FStAdFunc var_100
  loc_C2CC39: FLdPr var_100
  loc_C2CC3C:  = Me.Text
  loc_C2CC41: FLdRfVar var_168
  loc_C2CC44: FLdPr Me
  loc_C2CC47: VCallAd Control_ID_ImunImpuTxt
  loc_C2CC4A: FStAdFunc var_114
  loc_C2CC4D: FLdPr var_114
  loc_C2CC50:  = Me.Text
  loc_C2CC55: FLdRfVar var_170
  loc_C2CC58: FLdPr Me
  loc_C2CC5B: VCallAd Control_ID_ImpoImpuTxt
  loc_C2CC5E: FStAdFunc var_16C
  loc_C2CC61: FLdPr var_16C
  loc_C2CC64:  = Me.Text
  loc_C2CC69: FLdRfVar var_174
  loc_C2CC6C: FLdPr Me
  loc_C2CC6F: VCallAd Control_ID_DetaImpuTxt
  loc_C2CC72: FStAdFunc var_18C
  loc_C2CC75: FLdPr var_18C
  loc_C2CC78:  = Me.Text
  loc_C2CC7D: FLdRfVar var_178
  loc_C2CC80: FLdPr Me
  loc_C2CC83: VCallAd Control_ID_CodiNopeLbl
  loc_C2CC86: FStAdFunc var_198
  loc_C2CC89: FLdPr var_198
  loc_C2CC8C:  = Me.Caption
  loc_C2CC91: FLdRfVar var_17C
  loc_C2CC94: FLdPr Me
  loc_C2CC97: VCallAd Control_ID_CodiNopeLbl
  loc_C2CC9A: FStAdFunc var_1CC
  loc_C2CC9D: FLdPr var_1CC
  loc_C2CCA0:  = Me.Caption
  loc_C2CCA5: FLdZeroAd var_17C
  loc_C2CCA8: CVarStr var_1B8
  loc_C2CCAB: LitVarI2 var_1A8, 0
  loc_C2CCB0: ILdRf var_178
  loc_C2CCB3: LitStr vbNullString
  loc_C2CCB6: EqStr
  loc_C2CCB8: CVarBoolI2 var_B4
  loc_C2CCBC: FLdRfVar var_1C8
  loc_C2CCBF: ImpAdCallFPR4  = IIf(, , )
  loc_C2CCC4: FLdRfVar var_180
  loc_C2CCC7: FLdPr Me
  loc_C2CCCA: VCallAd Control_ID_CodiOrcoLbl
  loc_C2CCCD: FStAdFunc var_1D0
  loc_C2CCD0: FLdPr var_1D0
  loc_C2CCD3:  = Me.Caption
  loc_C2CCD8: FLdRfVar var_184
  loc_C2CCDB: FLdPr Me
  loc_C2CCDE: VCallAd Control_ID_CodiOrcoLbl
  loc_C2CCE1: FStAdFunc var_21C
  loc_C2CCE4: FLdPr var_21C
  loc_C2CCE7:  = Me.Caption
  loc_C2CCEC: FLdZeroAd var_184
  loc_C2CCEF: CVarStr var_200
  loc_C2CCF2: LitVarI2 var_1F0, 0
  loc_C2CCF7: ILdRf var_180
  loc_C2CCFA: LitStr vbNullString
  loc_C2CCFD: EqStr
  loc_C2CCFF: CVarBoolI2 var_110
  loc_C2CD03: FLdRfVar var_210
  loc_C2CD06: ImpAdCallFPR4  = IIf(, , )
  loc_C2CD0B: FLdRfVar var_188
  loc_C2CD0E: FLdPr Me
  loc_C2CD11: VCallAd Control_ID_ItemLbl
  loc_C2CD14: FStAdFunc var_228
  loc_C2CD17: FLdPr var_228
  loc_C2CD1A:  = Me.Caption
  loc_C2CD1F: FLdRfVar var_190
  loc_C2CD22: FLdPr Me
  loc_C2CD25: VCallAd Control_ID_ItemLbl
  loc_C2CD28: FStAdFunc var_22C
  loc_C2CD2B: FLdPr var_22C
  loc_C2CD2E:  = Me.Caption
  loc_C2CD33: FLdZeroAd var_190
  loc_C2CD36: CVarStr var_26C
  loc_C2CD39: LitVarI2 var_25C, 0
  loc_C2CD3E: ILdRf var_188
  loc_C2CD41: LitStr vbNullString
  loc_C2CD44: EqStr
  loc_C2CD46: CVarBoolI2 var_23C
  loc_C2CD4A: FLdRfVar var_27C
  loc_C2CD4D: ImpAdCallFPR4  = IIf(, , )
  loc_C2CD52: FLdRfVar var_194
  loc_C2CD55: FLdPr Me
  loc_C2CD58: VCallAd Control_ID_AlternLbl
  loc_C2CD5B: FStAdFunc var_280
  loc_C2CD5E: FLdPr var_280
  loc_C2CD61:  = Me.Caption
  loc_C2CD66: FLdRfVar var_214
  loc_C2CD69: FLdPr Me
  loc_C2CD6C: VCallAd Control_ID_AlternLbl
  loc_C2CD6F: FStAdFunc var_284
  loc_C2CD72: FLdPr var_284
  loc_C2CD75:  = Me.Caption
  loc_C2CD7A: FLdZeroAd var_214
  loc_C2CD7D: CVarStr var_2C4
  loc_C2CD80: LitVarI2 var_2B4, 0
  loc_C2CD85: ILdRf var_194
  loc_C2CD88: LitStr vbNullString
  loc_C2CD8B: EqStr
  loc_C2CD8D: CVarBoolI2 var_294
  loc_C2CD91: FLdRfVar var_2D4
  loc_C2CD94: ImpAdCallFPR4  = IIf(, , )
  loc_C2CD99: FLdRfVar var_218
  loc_C2CD9C: FLdPr Me
  loc_C2CD9F: VCallAd Control_ID_CucuPersTxt
  loc_C2CDA2: FStAdFunc var_2D8
  loc_C2CDA5: FLdPr var_2D8
  loc_C2CDA8:  = Me.Text
  loc_C2CDAD: FLdRfVar var_A0
  loc_C2CDB0: LitI2_Byte 0
  loc_C2CDB2: LitI2_Byte 0
  loc_C2CDB4: LitI2_Byte 0
  loc_C2CDB6: LitI4 0
  loc_C2CDBB: ILdRf var_218
  loc_C2CDBE: FLdRfVar var_2D4
  loc_C2CDC1: CUI1Var
  loc_C2CDC3: FLdRfVar var_27C
  loc_C2CDC6: CI2Var
  loc_C2CDC7: FLdRfVar var_210
  loc_C2CDCA: CI4Var
  loc_C2CDCC: FLdRfVar var_1C8
  loc_C2CDCF: CI4Var
  loc_C2CDD1: ILdRf var_174
  loc_C2CDD4: ILdRf var_170
  loc_C2CDD7: CR8Str
  loc_C2CDD9: PopFPR8
  loc_C2CDDA: ILdRf var_168
  loc_C2CDDD: CR8Str
  loc_C2CDDF: PopFPR8
  loc_C2CDE0: ILdRf var_164
  loc_C2CDE3: CR8Str
  loc_C2CDE5: PopFPR8
  loc_C2CDE6: FLdZeroAd var_2EC
  loc_C2CDE9: FStStrNoPop var_2E8
  loc_C2CDEC: FLdRfVar var_14C
  loc_C2CDEF: CStrVarTmp
  loc_C2CDF0: FStStrNoPop var_2E4
  loc_C2CDF3: FLdRfVar var_13C
  loc_C2CDF6: CStrVarTmp
  loc_C2CDF7: FStStrNoPop var_2E0
  loc_C2CDFA: FLdRfVar var_124
  loc_C2CDFD: CStrVarTmp
  loc_C2CDFE: FStStrNoPop var_2DC
  loc_C2CE01: CI4Str
  loc_C2CE02: ILdRf var_90
  loc_C2CE05: CI2Str
  loc_C2CE07: FLdRfVar var_E8
  loc_C2CE0A: CStrVarTmp
  loc_C2CE0B: FStStrNoPop var_224
  loc_C2CE0E: FLdRfVar var_C8
  loc_C2CE11: CStrVarTmp
  loc_C2CE12: FStStrNoPop var_220
  loc_C2CE15: FLdPr Me
  loc_C2CE18: MemLdRfVar from_stack_1.global_52
  loc_C2CE1B: NewIfNullPr clsimputacion
  loc_C2CE1E: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2CE23: ILdRf var_A0
  loc_C2CE26: FLdPr Me
  loc_C2CE29: MemStI4 global_68
  loc_C2CE2C: FFreeStr var_160 = "": var_178 = "": var_180 = "": var_188 = "": var_194 = "": var_220 = "": var_224 = "": var_90 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2E8 = "": var_164 = "": var_168 = "": var_170 = "": var_174 = "": var_218 = ""
  loc_C2CE53: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = ""
  loc_C2CE7E: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_23C = "": var_25C = "": var_26C = "": var_294 = "": var_2B4 = "": var_2C4 = "": var_1C8 = "": var_210 = "": var_27C = ""
  loc_C2CEAD: FLdPr Me
  loc_C2CEB0: MemLdStr global_68
  loc_C2CEB3: LitI4 0
  loc_C2CEB8: EqI4
  loc_C2CEB9: BranchF loc_C2CEC9
  loc_C2CEBC: LitI4 0
  loc_C2CEC1: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2CEC4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2CEC9: Branch loc_C2FF01
  loc_C2CECC: ILdRf var_12C
  loc_C2CECF: LitI4 &H13
  loc_C2CED4: EqI4
  loc_C2CED5: BranchF loc_C2D47F
  loc_C2CED8: FLdPr Me
  loc_C2CEDB: VCallAd Control_ID_CodiPartMsk
  loc_C2CEDE: FStAdFunc var_98
  loc_C2CEE1: FLdPr var_98
  loc_C2CEE4: LateIdLdVar var_C8 DispID_22 0
  loc_C2CEEB: PopAd
  loc_C2CEED: FLdPr Me
  loc_C2CEF0: VCallAd Control_ID_CodiOrgaMsk
  loc_C2CEF3: FStAdFunc var_A4
  loc_C2CEF6: FLdPr var_A4
  loc_C2CEF9: LateIdLdVar var_E8 DispID_22 0
  loc_C2CF00: PopAd
  loc_C2CF02: FLdRfVar var_90
  loc_C2CF05: FLdPr Me
  loc_C2CF08: VCallAd Control_ID_CodiUngaTxt
  loc_C2CF0B: FStAdFunc var_B8
  loc_C2CF0E: FLdPr var_B8
  loc_C2CF11:  = Me.Text
  loc_C2CF16: FLdPr Me
  loc_C2CF19: VCallAd Control_ID_CodiInsuMsk
  loc_C2CF1C: FStAdFunc var_F0
  loc_C2CF1F: FLdPr var_F0
  loc_C2CF22: LateIdLdVar var_124 DispID_22 0
  loc_C2CF29: PopAd
  loc_C2CF2B: FLdPr Me
  loc_C2CF2E: VCallAd Control_ID_CodiFifuMsk
  loc_C2CF31: FStAdFunc var_F4
  loc_C2CF34: FLdPr var_F4
  loc_C2CF37: LateIdLdVar var_13C DispID_22 0
  loc_C2CF3E: PopAd
  loc_C2CF40: FLdPr Me
  loc_C2CF43: VCallAd Control_ID_FechImpuMsk
  loc_C2CF46: FStAdFunc var_F8
  loc_C2CF49: FLdPr var_F8
  loc_C2CF4C: LateIdLdVar var_14C DispID_15 0
  loc_C2CF53: PopAd
  loc_C2CF55: FLdPr Me
  loc_C2CF58: VCallAd Control_ID_ExorImpuMsk
  loc_C2CF5B: FStAdFunc var_FC
  loc_C2CF5E: FLdPr var_FC
  loc_C2CF61: LateIdLdVar var_15C DispID_15 0
  loc_C2CF68: CStrVarTmp
  loc_C2CF69: FStStrNoPop var_160
  loc_C2CF6C: ImpAdCallI2 Trim$()
  loc_C2CF71: FStStr var_224
  loc_C2CF74: FLdRfVar var_164
  loc_C2CF77: FLdPr Me
  loc_C2CF7A: VCallAd Control_ID_CantImpuTxt
  loc_C2CF7D: FStAdFunc var_100
  loc_C2CF80: FLdPr var_100
  loc_C2CF83:  = Me.Text
  loc_C2CF88: FLdRfVar var_168
  loc_C2CF8B: FLdPr Me
  loc_C2CF8E: VCallAd Control_ID_ImunImpuTxt
  loc_C2CF91: FStAdFunc var_114
  loc_C2CF94: FLdPr var_114
  loc_C2CF97:  = Me.Text
  loc_C2CF9C: FLdRfVar var_170
  loc_C2CF9F: FLdPr Me
  loc_C2CFA2: VCallAd Control_ID_ImpoImpuTxt
  loc_C2CFA5: FStAdFunc var_16C
  loc_C2CFA8: FLdPr var_16C
  loc_C2CFAB:  = Me.Text
  loc_C2CFB0: FLdRfVar var_220
  loc_C2CFB3: FLdPr Me
  loc_C2CFB6: VCallAd Control_ID_DetaImpuTxt
  loc_C2CFB9: FStAdFunc var_21C
  loc_C2CFBC: FLdPr var_21C
  loc_C2CFBF:  = Me.Text
  loc_C2CFC4: FLdRfVar var_174
  loc_C2CFC7: FLdPr Me
  loc_C2CFCA: VCallAd Control_ID_CodiNopeLbl
  loc_C2CFCD: FStAdFunc var_18C
  loc_C2CFD0: FLdPr var_18C
  loc_C2CFD3:  = Me.Caption
  loc_C2CFD8: FLdRfVar var_178
  loc_C2CFDB: FLdPr Me
  loc_C2CFDE: VCallAd Control_ID_CodiNopeLbl
  loc_C2CFE1: FStAdFunc var_198
  loc_C2CFE4: FLdPr var_198
  loc_C2CFE7:  = Me.Caption
  loc_C2CFEC: FLdZeroAd var_178
  loc_C2CFEF: CVarStr var_1B8
  loc_C2CFF2: LitVarI2 var_1A8, 0
  loc_C2CFF7: ILdRf var_174
  loc_C2CFFA: LitStr vbNullString
  loc_C2CFFD: EqStr
  loc_C2CFFF: CVarBoolI2 var_B4
  loc_C2D003: FLdRfVar var_1C8
  loc_C2D006: ImpAdCallFPR4  = IIf(, , )
  loc_C2D00B: FLdRfVar var_17C
  loc_C2D00E: FLdPr Me
  loc_C2D011: VCallAd Control_ID_ItemLbl
  loc_C2D014: FStAdFunc var_1CC
  loc_C2D017: FLdPr var_1CC
  loc_C2D01A:  = Me.Caption
  loc_C2D01F: FLdRfVar var_180
  loc_C2D022: FLdPr Me
  loc_C2D025: VCallAd Control_ID_ItemLbl
  loc_C2D028: FStAdFunc var_1D0
  loc_C2D02B: FLdPr var_1D0
  loc_C2D02E:  = Me.Caption
  loc_C2D033: FLdZeroAd var_180
  loc_C2D036: CVarStr var_200
  loc_C2D039: LitVarI2 var_1F0, 0
  loc_C2D03E: ILdRf var_17C
  loc_C2D041: LitStr vbNullString
  loc_C2D044: EqStr
  loc_C2D046: CVarBoolI2 var_110
  loc_C2D04A: FLdRfVar var_210
  loc_C2D04D: ImpAdCallFPR4  = IIf(, , )
  loc_C2D052: FLdRfVar var_A0
  loc_C2D055: LitI2_Byte 0
  loc_C2D057: LitI2_Byte 0
  loc_C2D059: LitI2_Byte 0
  loc_C2D05B: LitI4 0
  loc_C2D060: FLdRfVar var_210
  loc_C2D063: CI2Var
  loc_C2D064: FLdRfVar var_1C8
  loc_C2D067: CI4Var
  loc_C2D069: ILdRf var_220
  loc_C2D06C: ILdRf var_170
  loc_C2D06F: CR8Str
  loc_C2D071: PopFPR8
  loc_C2D072: ILdRf var_168
  loc_C2D075: CR8Str
  loc_C2D077: PopFPR8
  loc_C2D078: ILdRf var_164
  loc_C2D07B: CR8Str
  loc_C2D07D: PopFPR8
  loc_C2D07E: FLdZeroAd var_224
  loc_C2D081: FStStrNoPop var_218
  loc_C2D084: FLdRfVar var_14C
  loc_C2D087: CStrVarTmp
  loc_C2D088: FStStrNoPop var_214
  loc_C2D08B: FLdRfVar var_13C
  loc_C2D08E: CStrVarTmp
  loc_C2D08F: FStStrNoPop var_194
  loc_C2D092: FLdRfVar var_124
  loc_C2D095: CStrVarTmp
  loc_C2D096: FStStrNoPop var_190
  loc_C2D099: CI4Str
  loc_C2D09A: ILdRf var_90
  loc_C2D09D: CI2Str
  loc_C2D09F: FLdRfVar var_E8
  loc_C2D0A2: CStrVarTmp
  loc_C2D0A3: FStStrNoPop var_188
  loc_C2D0A6: FLdRfVar var_C8
  loc_C2D0A9: CStrVarTmp
  loc_C2D0AA: FStStrNoPop var_184
  loc_C2D0AD: FLdPr Me
  loc_C2D0B0: MemLdRfVar from_stack_1.global_52
  loc_C2D0B3: NewIfNullPr clsimputacion
  loc_C2D0B6: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2D0BB: ILdRf var_A0
  loc_C2D0BE: FLdPr Me
  loc_C2D0C1: MemStI4 global_68
  loc_C2D0C4: FFreeStr var_160 = "": var_174 = "": var_17C = "": var_184 = "": var_188 = "": var_90 = "": var_190 = "": var_194 = "": var_214 = "": var_218 = "": var_164 = "": var_168 = "": var_170 = "": var_220 = ""
  loc_C2D0E5: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = ""
  loc_C2D106: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_1C8 = ""
  loc_C2D125: FLdPr Me
  loc_C2D128: MemLdStr global_68
  loc_C2D12B: LitI4 0
  loc_C2D130: EqI4
  loc_C2D131: BranchF loc_C2D144
  loc_C2D134: LitI4 0
  loc_C2D139: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2D13C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2D141: Branch loc_C2D47C
  loc_C2D144: FLdPr Me
  loc_C2D147: VCallAd Control_ID_CodiPartMsk
  loc_C2D14A: FStAdFunc var_98
  loc_C2D14D: FLdPr var_98
  loc_C2D150: LateIdLdVar var_C8 DispID_22 0
  loc_C2D157: PopAd
  loc_C2D159: FLdPr Me
  loc_C2D15C: VCallAd Control_ID_CodiOrgaMsk
  loc_C2D15F: FStAdFunc var_A4
  loc_C2D162: FLdPr var_A4
  loc_C2D165: LateIdLdVar var_E8 DispID_22 0
  loc_C2D16C: PopAd
  loc_C2D16E: FLdRfVar var_90
  loc_C2D171: FLdPr Me
  loc_C2D174: VCallAd Control_ID_CodiUngaTxt
  loc_C2D177: FStAdFunc var_B8
  loc_C2D17A: FLdPr var_B8
  loc_C2D17D:  = Me.Text
  loc_C2D182: FLdPr Me
  loc_C2D185: VCallAd Control_ID_CodiInsuMsk
  loc_C2D188: FStAdFunc var_F0
  loc_C2D18B: FLdPr var_F0
  loc_C2D18E: LateIdLdVar var_124 DispID_22 0
  loc_C2D195: PopAd
  loc_C2D197: FLdPr Me
  loc_C2D19A: VCallAd Control_ID_CodiFifuMsk
  loc_C2D19D: FStAdFunc var_F4
  loc_C2D1A0: FLdPr var_F4
  loc_C2D1A3: LateIdLdVar var_13C DispID_22 0
  loc_C2D1AA: PopAd
  loc_C2D1AC: FLdPr Me
  loc_C2D1AF: VCallAd Control_ID_FechImpuMsk
  loc_C2D1B2: FStAdFunc var_F8
  loc_C2D1B5: FLdPr var_F8
  loc_C2D1B8: LateIdLdVar var_14C DispID_15 0
  loc_C2D1BF: PopAd
  loc_C2D1C1: FLdPr Me
  loc_C2D1C4: VCallAd Control_ID_ExorImpuMsk
  loc_C2D1C7: FStAdFunc var_FC
  loc_C2D1CA: FLdPr var_FC
  loc_C2D1CD: LateIdLdVar var_15C DispID_15 0
  loc_C2D1D4: CStrVarTmp
  loc_C2D1D5: FStStrNoPop var_160
  loc_C2D1D8: ImpAdCallI2 Trim$()
  loc_C2D1DD: FStStr var_2EC
  loc_C2D1E0: FLdRfVar var_164
  loc_C2D1E3: FLdPr Me
  loc_C2D1E6: VCallAd Control_ID_CantImpuTxt
  loc_C2D1E9: FStAdFunc var_100
  loc_C2D1EC: FLdPr var_100
  loc_C2D1EF:  = Me.Text
  loc_C2D1F4: FLdRfVar var_168
  loc_C2D1F7: FLdPr Me
  loc_C2D1FA: VCallAd Control_ID_ImunImpuTxt
  loc_C2D1FD: FStAdFunc var_114
  loc_C2D200: FLdPr var_114
  loc_C2D203:  = Me.Text
  loc_C2D208: FLdRfVar var_170
  loc_C2D20B: FLdPr Me
  loc_C2D20E: VCallAd Control_ID_ImpoImpuTxt
  loc_C2D211: FStAdFunc var_16C
  loc_C2D214: FLdPr var_16C
  loc_C2D217:  = Me.Text
  loc_C2D21C: FLdRfVar var_174
  loc_C2D21F: FLdPr Me
  loc_C2D222: VCallAd Control_ID_DetaImpuTxt
  loc_C2D225: FStAdFunc var_18C
  loc_C2D228: FLdPr var_18C
  loc_C2D22B:  = Me.Text
  loc_C2D230: FLdRfVar var_178
  loc_C2D233: FLdPr Me
  loc_C2D236: VCallAd Control_ID_CodiNopeLbl
  loc_C2D239: FStAdFunc var_198
  loc_C2D23C: FLdPr var_198
  loc_C2D23F:  = Me.Caption
  loc_C2D244: FLdRfVar var_17C
  loc_C2D247: FLdPr Me
  loc_C2D24A: VCallAd Control_ID_CodiNopeLbl
  loc_C2D24D: FStAdFunc var_1CC
  loc_C2D250: FLdPr var_1CC
  loc_C2D253:  = Me.Caption
  loc_C2D258: FLdZeroAd var_17C
  loc_C2D25B: CVarStr var_1B8
  loc_C2D25E: LitVarI2 var_1A8, 0
  loc_C2D263: ILdRf var_178
  loc_C2D266: LitStr vbNullString
  loc_C2D269: EqStr
  loc_C2D26B: CVarBoolI2 var_B4
  loc_C2D26F: FLdRfVar var_1C8
  loc_C2D272: ImpAdCallFPR4  = IIf(, , )
  loc_C2D277: FLdRfVar var_180
  loc_C2D27A: FLdPr Me
  loc_C2D27D: VCallAd Control_ID_CodiOrcoLbl
  loc_C2D280: FStAdFunc var_1D0
  loc_C2D283: FLdPr var_1D0
  loc_C2D286:  = Me.Caption
  loc_C2D28B: FLdRfVar var_184
  loc_C2D28E: FLdPr Me
  loc_C2D291: VCallAd Control_ID_CodiOrcoLbl
  loc_C2D294: FStAdFunc var_21C
  loc_C2D297: FLdPr var_21C
  loc_C2D29A:  = Me.Caption
  loc_C2D29F: FLdZeroAd var_184
  loc_C2D2A2: CVarStr var_200
  loc_C2D2A5: LitVarI2 var_1F0, 0
  loc_C2D2AA: ILdRf var_180
  loc_C2D2AD: LitStr vbNullString
  loc_C2D2B0: EqStr
  loc_C2D2B2: CVarBoolI2 var_110
  loc_C2D2B6: FLdRfVar var_210
  loc_C2D2B9: ImpAdCallFPR4  = IIf(, , )
  loc_C2D2BE: FLdRfVar var_188
  loc_C2D2C1: FLdPr Me
  loc_C2D2C4: VCallAd Control_ID_ItemLbl
  loc_C2D2C7: FStAdFunc var_228
  loc_C2D2CA: FLdPr var_228
  loc_C2D2CD:  = Me.Caption
  loc_C2D2D2: FLdRfVar var_190
  loc_C2D2D5: FLdPr Me
  loc_C2D2D8: VCallAd Control_ID_ItemLbl
  loc_C2D2DB: FStAdFunc var_22C
  loc_C2D2DE: FLdPr var_22C
  loc_C2D2E1:  = Me.Caption
  loc_C2D2E6: FLdZeroAd var_190
  loc_C2D2E9: CVarStr var_26C
  loc_C2D2EC: LitVarI2 var_25C, 0
  loc_C2D2F1: ILdRf var_188
  loc_C2D2F4: LitStr vbNullString
  loc_C2D2F7: EqStr
  loc_C2D2F9: CVarBoolI2 var_23C
  loc_C2D2FD: FLdRfVar var_27C
  loc_C2D300: ImpAdCallFPR4  = IIf(, , )
  loc_C2D305: FLdRfVar var_194
  loc_C2D308: FLdPr Me
  loc_C2D30B: VCallAd Control_ID_AlternLbl
  loc_C2D30E: FStAdFunc var_280
  loc_C2D311: FLdPr var_280
  loc_C2D314:  = Me.Caption
  loc_C2D319: FLdRfVar var_214
  loc_C2D31C: FLdPr Me
  loc_C2D31F: VCallAd Control_ID_AlternLbl
  loc_C2D322: FStAdFunc var_284
  loc_C2D325: FLdPr var_284
  loc_C2D328:  = Me.Caption
  loc_C2D32D: FLdZeroAd var_214
  loc_C2D330: CVarStr var_2C4
  loc_C2D333: LitVarI2 var_2B4, 0
  loc_C2D338: ILdRf var_194
  loc_C2D33B: LitStr vbNullString
  loc_C2D33E: EqStr
  loc_C2D340: CVarBoolI2 var_294
  loc_C2D344: FLdRfVar var_2D4
  loc_C2D347: ImpAdCallFPR4  = IIf(, , )
  loc_C2D34C: FLdRfVar var_218
  loc_C2D34F: FLdPr Me
  loc_C2D352: VCallAd Control_ID_CucuPersTxt
  loc_C2D355: FStAdFunc var_2D8
  loc_C2D358: FLdPr var_2D8
  loc_C2D35B:  = Me.Text
  loc_C2D360: FLdRfVar var_A0
  loc_C2D363: LitI2_Byte 0
  loc_C2D365: LitI2_Byte 0
  loc_C2D367: LitI2_Byte 0
  loc_C2D369: LitI4 0
  loc_C2D36E: ILdRf var_218
  loc_C2D371: FLdRfVar var_2D4
  loc_C2D374: CUI1Var
  loc_C2D376: FLdRfVar var_27C
  loc_C2D379: CI2Var
  loc_C2D37A: FLdRfVar var_210
  loc_C2D37D: CI4Var
  loc_C2D37F: FLdRfVar var_1C8
  loc_C2D382: CI4Var
  loc_C2D384: ILdRf var_174
  loc_C2D387: ILdRf var_170
  loc_C2D38A: CR8Str
  loc_C2D38C: PopFPR8
  loc_C2D38D: ILdRf var_168
  loc_C2D390: CR8Str
  loc_C2D392: PopFPR8
  loc_C2D393: ILdRf var_164
  loc_C2D396: CR8Str
  loc_C2D398: PopFPR8
  loc_C2D399: FLdZeroAd var_2EC
  loc_C2D39C: FStStrNoPop var_2E8
  loc_C2D39F: FLdRfVar var_14C
  loc_C2D3A2: CStrVarTmp
  loc_C2D3A3: FStStrNoPop var_2E4
  loc_C2D3A6: FLdRfVar var_13C
  loc_C2D3A9: CStrVarTmp
  loc_C2D3AA: FStStrNoPop var_2E0
  loc_C2D3AD: FLdRfVar var_124
  loc_C2D3B0: CStrVarTmp
  loc_C2D3B1: FStStrNoPop var_2DC
  loc_C2D3B4: CI4Str
  loc_C2D3B5: ILdRf var_90
  loc_C2D3B8: CI2Str
  loc_C2D3BA: FLdRfVar var_E8
  loc_C2D3BD: CStrVarTmp
  loc_C2D3BE: FStStrNoPop var_224
  loc_C2D3C1: FLdRfVar var_C8
  loc_C2D3C4: CStrVarTmp
  loc_C2D3C5: FStStrNoPop var_220
  loc_C2D3C8: FLdPr Me
  loc_C2D3CB: MemLdRfVar from_stack_1.global_52
  loc_C2D3CE: NewIfNullPr clsimputacion
  loc_C2D3D1: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2D3D6: ILdRf var_A0
  loc_C2D3D9: FLdPr Me
  loc_C2D3DC: MemStI4 global_68
  loc_C2D3DF: FFreeStr var_160 = "": var_178 = "": var_180 = "": var_188 = "": var_194 = "": var_220 = "": var_224 = "": var_90 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2E8 = "": var_164 = "": var_168 = "": var_170 = "": var_174 = "": var_218 = ""
  loc_C2D406: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = ""
  loc_C2D431: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_23C = "": var_25C = "": var_26C = "": var_294 = "": var_2B4 = "": var_2C4 = "": var_1C8 = "": var_210 = "": var_27C = ""
  loc_C2D460: FLdPr Me
  loc_C2D463: MemLdStr global_68
  loc_C2D466: LitI4 0
  loc_C2D46B: EqI4
  loc_C2D46C: BranchF loc_C2D47C
  loc_C2D46F: LitI4 0
  loc_C2D474: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2D477: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2D47C: Branch loc_C2FF01
  loc_C2D47F: ILdRf var_12C
  loc_C2D482: LitI4 3
  loc_C2D487: EqI4
  loc_C2D488: BranchF loc_C2DEC4
  loc_C2D48B: FLdPr Me
  loc_C2D48E: VCallAd Control_ID_CodiPartMsk
  loc_C2D491: FStAdFunc var_98
  loc_C2D494: FLdPr var_98
  loc_C2D497: LateIdLdVar var_C8 DispID_22 0
  loc_C2D49E: PopAd
  loc_C2D4A0: FLdPr Me
  loc_C2D4A3: VCallAd Control_ID_CodiOrgaMsk
  loc_C2D4A6: FStAdFunc var_A4
  loc_C2D4A9: FLdPr var_A4
  loc_C2D4AC: LateIdLdVar var_E8 DispID_22 0
  loc_C2D4B3: PopAd
  loc_C2D4B5: FLdRfVar var_90
  loc_C2D4B8: FLdPr Me
  loc_C2D4BB: VCallAd Control_ID_CodiUngaTxt
  loc_C2D4BE: FStAdFunc var_B8
  loc_C2D4C1: FLdPr var_B8
  loc_C2D4C4:  = Me.Text
  loc_C2D4C9: FLdPr Me
  loc_C2D4CC: VCallAd Control_ID_CodiInsuMsk
  loc_C2D4CF: FStAdFunc var_F0
  loc_C2D4D2: FLdPr var_F0
  loc_C2D4D5: LateIdLdVar var_124 DispID_22 0
  loc_C2D4DC: PopAd
  loc_C2D4DE: FLdPr Me
  loc_C2D4E1: VCallAd Control_ID_CodiFifuMsk
  loc_C2D4E4: FStAdFunc var_F4
  loc_C2D4E7: FLdPr var_F4
  loc_C2D4EA: LateIdLdVar var_13C DispID_22 0
  loc_C2D4F1: PopAd
  loc_C2D4F3: FLdPr Me
  loc_C2D4F6: VCallAd Control_ID_FechImpuMsk
  loc_C2D4F9: FStAdFunc var_F8
  loc_C2D4FC: FLdPr var_F8
  loc_C2D4FF: LateIdLdVar var_14C DispID_15 0
  loc_C2D506: PopAd
  loc_C2D508: FLdPr Me
  loc_C2D50B: VCallAd Control_ID_ExorImpuMsk
  loc_C2D50E: FStAdFunc var_FC
  loc_C2D511: FLdPr var_FC
  loc_C2D514: LateIdLdVar var_15C DispID_15 0
  loc_C2D51B: CStrVarTmp
  loc_C2D51C: FStStrNoPop var_160
  loc_C2D51F: ImpAdCallI2 Trim$()
  loc_C2D524: FStStr var_224
  loc_C2D527: FLdRfVar var_164
  loc_C2D52A: FLdPr Me
  loc_C2D52D: VCallAd Control_ID_CantImpuTxt
  loc_C2D530: FStAdFunc var_100
  loc_C2D533: FLdPr var_100
  loc_C2D536:  = Me.Text
  loc_C2D53B: FLdRfVar var_168
  loc_C2D53E: FLdPr Me
  loc_C2D541: VCallAd Control_ID_ImunImpuTxt
  loc_C2D544: FStAdFunc var_114
  loc_C2D547: FLdPr var_114
  loc_C2D54A:  = Me.Text
  loc_C2D54F: FLdRfVar var_170
  loc_C2D552: FLdPr Me
  loc_C2D555: VCallAd Control_ID_ImpoImpuTxt
  loc_C2D558: FStAdFunc var_16C
  loc_C2D55B: FLdPr var_16C
  loc_C2D55E:  = Me.Text
  loc_C2D563: FLdRfVar var_220
  loc_C2D566: FLdPr Me
  loc_C2D569: VCallAd Control_ID_DetaImpuTxt
  loc_C2D56C: FStAdFunc var_21C
  loc_C2D56F: FLdPr var_21C
  loc_C2D572:  = Me.Text
  loc_C2D577: FLdRfVar var_174
  loc_C2D57A: FLdPr Me
  loc_C2D57D: VCallAd Control_ID_CodiNopeLbl
  loc_C2D580: FStAdFunc var_18C
  loc_C2D583: FLdPr var_18C
  loc_C2D586:  = Me.Caption
  loc_C2D58B: FLdRfVar var_178
  loc_C2D58E: FLdPr Me
  loc_C2D591: VCallAd Control_ID_CodiNopeLbl
  loc_C2D594: FStAdFunc var_198
  loc_C2D597: FLdPr var_198
  loc_C2D59A:  = Me.Caption
  loc_C2D59F: FLdZeroAd var_178
  loc_C2D5A2: CVarStr var_1B8
  loc_C2D5A5: LitVarI2 var_1A8, 0
  loc_C2D5AA: ILdRf var_174
  loc_C2D5AD: LitStr vbNullString
  loc_C2D5B0: EqStr
  loc_C2D5B2: CVarBoolI2 var_B4
  loc_C2D5B6: FLdRfVar var_1C8
  loc_C2D5B9: ImpAdCallFPR4  = IIf(, , )
  loc_C2D5BE: FLdRfVar var_17C
  loc_C2D5C1: FLdPr Me
  loc_C2D5C4: VCallAd Control_ID_ItemLbl
  loc_C2D5C7: FStAdFunc var_1CC
  loc_C2D5CA: FLdPr var_1CC
  loc_C2D5CD:  = Me.Caption
  loc_C2D5D2: FLdRfVar var_180
  loc_C2D5D5: FLdPr Me
  loc_C2D5D8: VCallAd Control_ID_ItemLbl
  loc_C2D5DB: FStAdFunc var_1D0
  loc_C2D5DE: FLdPr var_1D0
  loc_C2D5E1:  = Me.Caption
  loc_C2D5E6: FLdZeroAd var_180
  loc_C2D5E9: CVarStr var_200
  loc_C2D5EC: LitVarI2 var_1F0, 0
  loc_C2D5F1: ILdRf var_17C
  loc_C2D5F4: LitStr vbNullString
  loc_C2D5F7: EqStr
  loc_C2D5F9: CVarBoolI2 var_110
  loc_C2D5FD: FLdRfVar var_210
  loc_C2D600: ImpAdCallFPR4  = IIf(, , )
  loc_C2D605: FLdRfVar var_A0
  loc_C2D608: LitI2_Byte 0
  loc_C2D60A: LitI2_Byte 0
  loc_C2D60C: LitI2_Byte 0
  loc_C2D60E: LitI4 0
  loc_C2D613: FLdRfVar var_210
  loc_C2D616: CI2Var
  loc_C2D617: FLdRfVar var_1C8
  loc_C2D61A: CI4Var
  loc_C2D61C: ILdRf var_220
  loc_C2D61F: ILdRf var_170
  loc_C2D622: CR8Str
  loc_C2D624: PopFPR8
  loc_C2D625: ILdRf var_168
  loc_C2D628: CR8Str
  loc_C2D62A: PopFPR8
  loc_C2D62B: ILdRf var_164
  loc_C2D62E: CR8Str
  loc_C2D630: PopFPR8
  loc_C2D631: FLdZeroAd var_224
  loc_C2D634: FStStrNoPop var_218
  loc_C2D637: FLdRfVar var_14C
  loc_C2D63A: CStrVarTmp
  loc_C2D63B: FStStrNoPop var_214
  loc_C2D63E: FLdRfVar var_13C
  loc_C2D641: CStrVarTmp
  loc_C2D642: FStStrNoPop var_194
  loc_C2D645: FLdRfVar var_124
  loc_C2D648: CStrVarTmp
  loc_C2D649: FStStrNoPop var_190
  loc_C2D64C: CI4Str
  loc_C2D64D: ILdRf var_90
  loc_C2D650: CI2Str
  loc_C2D652: FLdRfVar var_E8
  loc_C2D655: CStrVarTmp
  loc_C2D656: FStStrNoPop var_188
  loc_C2D659: FLdRfVar var_C8
  loc_C2D65C: CStrVarTmp
  loc_C2D65D: FStStrNoPop var_184
  loc_C2D660: FLdPr Me
  loc_C2D663: MemLdRfVar from_stack_1.global_52
  loc_C2D666: NewIfNullPr clsimputacion
  loc_C2D669: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2D66E: ILdRf var_A0
  loc_C2D671: FLdPr Me
  loc_C2D674: MemStI4 global_68
  loc_C2D677: FFreeStr var_160 = "": var_174 = "": var_17C = "": var_184 = "": var_188 = "": var_90 = "": var_190 = "": var_194 = "": var_214 = "": var_218 = "": var_164 = "": var_168 = "": var_170 = "": var_220 = ""
  loc_C2D698: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = ""
  loc_C2D6B9: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_1C8 = ""
  loc_C2D6D8: FLdPr Me
  loc_C2D6DB: MemLdStr global_68
  loc_C2D6DE: LitI4 0
  loc_C2D6E3: EqI4
  loc_C2D6E4: BranchF loc_C2D6F7
  loc_C2D6E7: LitI4 0
  loc_C2D6EC: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2D6EF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2D6F4: Branch loc_C2DEC1
  loc_C2D6F7: FLdPr Me
  loc_C2D6FA: VCallAd Control_ID_CodiPartMsk
  loc_C2D6FD: FStAdFunc var_98
  loc_C2D700: FLdPr var_98
  loc_C2D703: LateIdLdVar var_C8 DispID_22 0
  loc_C2D70A: PopAd
  loc_C2D70C: FLdPr Me
  loc_C2D70F: VCallAd Control_ID_CodiOrgaMsk
  loc_C2D712: FStAdFunc var_A4
  loc_C2D715: FLdPr var_A4
  loc_C2D718: LateIdLdVar var_E8 DispID_22 0
  loc_C2D71F: PopAd
  loc_C2D721: FLdRfVar var_90
  loc_C2D724: FLdPr Me
  loc_C2D727: VCallAd Control_ID_CodiUngaTxt
  loc_C2D72A: FStAdFunc var_B8
  loc_C2D72D: FLdPr var_B8
  loc_C2D730:  = Me.Text
  loc_C2D735: FLdPr Me
  loc_C2D738: VCallAd Control_ID_CodiInsuMsk
  loc_C2D73B: FStAdFunc var_F0
  loc_C2D73E: FLdPr var_F0
  loc_C2D741: LateIdLdVar var_124 DispID_22 0
  loc_C2D748: PopAd
  loc_C2D74A: FLdPr Me
  loc_C2D74D: VCallAd Control_ID_CodiFifuMsk
  loc_C2D750: FStAdFunc var_F4
  loc_C2D753: FLdPr var_F4
  loc_C2D756: LateIdLdVar var_13C DispID_22 0
  loc_C2D75D: PopAd
  loc_C2D75F: FLdPr Me
  loc_C2D762: VCallAd Control_ID_FechImpuMsk
  loc_C2D765: FStAdFunc var_F8
  loc_C2D768: FLdPr var_F8
  loc_C2D76B: LateIdLdVar var_14C DispID_15 0
  loc_C2D772: PopAd
  loc_C2D774: FLdPr Me
  loc_C2D777: VCallAd Control_ID_ExorImpuMsk
  loc_C2D77A: FStAdFunc var_FC
  loc_C2D77D: FLdPr var_FC
  loc_C2D780: LateIdLdVar var_15C DispID_15 0
  loc_C2D787: PopAd
  loc_C2D789: FLdRfVar var_160
  loc_C2D78C: FLdPr Me
  loc_C2D78F: VCallAd Control_ID_CantImpuTxt
  loc_C2D792: FStAdFunc var_100
  loc_C2D795: FLdPr var_100
  loc_C2D798:  = Me.Text
  loc_C2D79D: FLdRfVar var_164
  loc_C2D7A0: FLdPr Me
  loc_C2D7A3: VCallAd Control_ID_ImunImpuTxt
  loc_C2D7A6: FStAdFunc var_114
  loc_C2D7A9: FLdPr var_114
  loc_C2D7AC:  = Me.Text
  loc_C2D7B1: FLdRfVar var_168
  loc_C2D7B4: FLdPr Me
  loc_C2D7B7: VCallAd Control_ID_ImpoImpuTxt
  loc_C2D7BA: FStAdFunc var_16C
  loc_C2D7BD: FLdPr var_16C
  loc_C2D7C0:  = Me.Text
  loc_C2D7C5: FLdRfVar var_170
  loc_C2D7C8: FLdPr Me
  loc_C2D7CB: VCallAd Control_ID_DetaImpuTxt
  loc_C2D7CE: FStAdFunc var_18C
  loc_C2D7D1: FLdPr var_18C
  loc_C2D7D4:  = Me.Text
  loc_C2D7D9: FLdRfVar var_174
  loc_C2D7DC: FLdPr Me
  loc_C2D7DF: VCallAd Control_ID_CodiNopeLbl
  loc_C2D7E2: FStAdFunc var_198
  loc_C2D7E5: FLdPr var_198
  loc_C2D7E8:  = Me.Caption
  loc_C2D7ED: FLdRfVar var_178
  loc_C2D7F0: FLdPr Me
  loc_C2D7F3: VCallAd Control_ID_CodiNopeLbl
  loc_C2D7F6: FStAdFunc var_1CC
  loc_C2D7F9: FLdPr var_1CC
  loc_C2D7FC:  = Me.Caption
  loc_C2D801: FLdZeroAd var_178
  loc_C2D804: CVarStr var_1B8
  loc_C2D807: LitVarI2 var_1A8, 0
  loc_C2D80C: ILdRf var_174
  loc_C2D80F: LitStr vbNullString
  loc_C2D812: EqStr
  loc_C2D814: CVarBoolI2 var_B4
  loc_C2D818: FLdRfVar var_1C8
  loc_C2D81B: ImpAdCallFPR4  = IIf(, , )
  loc_C2D820: FLdRfVar var_17C
  loc_C2D823: FLdPr Me
  loc_C2D826: VCallAd Control_ID_CodiOrcoLbl
  loc_C2D829: FStAdFunc var_1D0
  loc_C2D82C: FLdPr var_1D0
  loc_C2D82F:  = Me.Caption
  loc_C2D834: FLdRfVar var_180
  loc_C2D837: FLdPr Me
  loc_C2D83A: VCallAd Control_ID_CodiOrcoLbl
  loc_C2D83D: FStAdFunc var_21C
  loc_C2D840: FLdPr var_21C
  loc_C2D843:  = Me.Caption
  loc_C2D848: FLdZeroAd var_180
  loc_C2D84B: CVarStr var_200
  loc_C2D84E: LitVarI2 var_1F0, 0
  loc_C2D853: ILdRf var_17C
  loc_C2D856: LitStr vbNullString
  loc_C2D859: EqStr
  loc_C2D85B: CVarBoolI2 var_110
  loc_C2D85F: FLdRfVar var_210
  loc_C2D862: ImpAdCallFPR4  = IIf(, , )
  loc_C2D867: FLdRfVar var_184
  loc_C2D86A: FLdPr Me
  loc_C2D86D: VCallAd Control_ID_ItemLbl
  loc_C2D870: FStAdFunc var_228
  loc_C2D873: FLdPr var_228
  loc_C2D876:  = Me.Caption
  loc_C2D87B: FLdRfVar var_188
  loc_C2D87E: FLdPr Me
  loc_C2D881: VCallAd Control_ID_ItemLbl
  loc_C2D884: FStAdFunc var_22C
  loc_C2D887: FLdPr var_22C
  loc_C2D88A:  = Me.Caption
  loc_C2D88F: FLdZeroAd var_188
  loc_C2D892: CVarStr var_26C
  loc_C2D895: LitVarI2 var_25C, 0
  loc_C2D89A: ILdRf var_184
  loc_C2D89D: LitStr vbNullString
  loc_C2D8A0: EqStr
  loc_C2D8A2: CVarBoolI2 var_23C
  loc_C2D8A6: FLdRfVar var_27C
  loc_C2D8A9: ImpAdCallFPR4  = IIf(, , )
  loc_C2D8AE: FLdRfVar var_190
  loc_C2D8B1: FLdPr Me
  loc_C2D8B4: VCallAd Control_ID_AlternLbl
  loc_C2D8B7: FStAdFunc var_280
  loc_C2D8BA: FLdPr var_280
  loc_C2D8BD:  = Me.Caption
  loc_C2D8C2: FLdRfVar var_194
  loc_C2D8C5: FLdPr Me
  loc_C2D8C8: VCallAd Control_ID_AlternLbl
  loc_C2D8CB: FStAdFunc var_284
  loc_C2D8CE: FLdPr var_284
  loc_C2D8D1:  = Me.Caption
  loc_C2D8D6: FLdZeroAd var_194
  loc_C2D8D9: CVarStr var_2C4
  loc_C2D8DC: LitVarI2 var_2B4, 0
  loc_C2D8E1: ILdRf var_190
  loc_C2D8E4: LitStr vbNullString
  loc_C2D8E7: EqStr
  loc_C2D8E9: CVarBoolI2 var_294
  loc_C2D8ED: FLdRfVar var_2D4
  loc_C2D8F0: ImpAdCallFPR4  = IIf(, , )
  loc_C2D8F5: FLdRfVar var_214
  loc_C2D8F8: FLdPr Me
  loc_C2D8FB: VCallAd Control_ID_CucuPersTxt
  loc_C2D8FE: FStAdFunc var_2D8
  loc_C2D901: FLdPr var_2D8
  loc_C2D904:  = Me.Text
  loc_C2D909: FLdRfVar var_A0
  loc_C2D90C: LitI2_Byte 0
  loc_C2D90E: LitI2_Byte 0
  loc_C2D910: LitI2_Byte 0
  loc_C2D912: LitI4 0
  loc_C2D917: ILdRf var_214
  loc_C2D91A: FLdRfVar var_2D4
  loc_C2D91D: CUI1Var
  loc_C2D91F: FLdRfVar var_27C
  loc_C2D922: CI2Var
  loc_C2D923: FLdRfVar var_210
  loc_C2D926: CI4Var
  loc_C2D928: FLdRfVar var_1C8
  loc_C2D92B: CI4Var
  loc_C2D92D: ILdRf var_170
  loc_C2D930: ILdRf var_168
  loc_C2D933: CR8Str
  loc_C2D935: PopFPR8
  loc_C2D936: ILdRf var_164
  loc_C2D939: CR8Str
  loc_C2D93B: PopFPR8
  loc_C2D93C: ILdRf var_160
  loc_C2D93F: CR8Str
  loc_C2D941: PopFPR8
  loc_C2D942: FLdRfVar var_15C
  loc_C2D945: CStrVarTmp
  loc_C2D946: FStStrNoPop var_2E4
  loc_C2D949: FLdRfVar var_14C
  loc_C2D94C: CStrVarTmp
  loc_C2D94D: FStStrNoPop var_2E0
  loc_C2D950: FLdRfVar var_13C
  loc_C2D953: CStrVarTmp
  loc_C2D954: FStStrNoPop var_2DC
  loc_C2D957: FLdRfVar var_124
  loc_C2D95A: CStrVarTmp
  loc_C2D95B: FStStrNoPop var_224
  loc_C2D95E: CI4Str
  loc_C2D95F: ILdRf var_90
  loc_C2D962: CI2Str
  loc_C2D964: FLdRfVar var_E8
  loc_C2D967: CStrVarTmp
  loc_C2D968: FStStrNoPop var_220
  loc_C2D96B: FLdRfVar var_C8
  loc_C2D96E: CStrVarTmp
  loc_C2D96F: FStStrNoPop var_218
  loc_C2D972: FLdPr Me
  loc_C2D975: MemLdRfVar from_stack_1.global_52
  loc_C2D978: NewIfNullPr clsimputacion
  loc_C2D97B: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2D980: ILdRf var_A0
  loc_C2D983: FLdPr Me
  loc_C2D986: MemStI4 global_68
  loc_C2D989: FFreeStr var_174 = "": var_17C = "": var_184 = "": var_190 = "": var_218 = "": var_220 = "": var_90 = "": var_224 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_160 = "": var_164 = "": var_168 = "": var_170 = ""
  loc_C2D9AC: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = ""
  loc_C2D9D7: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_23C = "": var_25C = "": var_26C = "": var_294 = "": var_2B4 = "": var_2C4 = "": var_1C8 = "": var_210 = "": var_27C = ""
  loc_C2DA06: FLdPr Me
  loc_C2DA09: MemLdStr global_68
  loc_C2DA0C: LitI4 0
  loc_C2DA11: EqI4
  loc_C2DA12: BranchF loc_C2DA25
  loc_C2DA15: LitI4 0
  loc_C2DA1A: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2DA1D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2DA22: Branch loc_C2DEC1
  loc_C2DA25: FLdPr Me
  loc_C2DA28: VCallAd Control_ID_CodiPartMsk
  loc_C2DA2B: FStAdFunc var_98
  loc_C2DA2E: FLdPr var_98
  loc_C2DA31: LateIdLdVar var_C8 DispID_22 0
  loc_C2DA38: PopAd
  loc_C2DA3A: FLdPr Me
  loc_C2DA3D: VCallAd Control_ID_CodiOrgaMsk
  loc_C2DA40: FStAdFunc var_A4
  loc_C2DA43: FLdPr var_A4
  loc_C2DA46: LateIdLdVar var_E8 DispID_22 0
  loc_C2DA4D: PopAd
  loc_C2DA4F: FLdRfVar var_90
  loc_C2DA52: FLdPr Me
  loc_C2DA55: VCallAd Control_ID_CodiUngaTxt
  loc_C2DA58: FStAdFunc var_B8
  loc_C2DA5B: FLdPr var_B8
  loc_C2DA5E:  = Me.Text
  loc_C2DA63: FLdPr Me
  loc_C2DA66: VCallAd Control_ID_CodiInsuMsk
  loc_C2DA69: FStAdFunc var_F0
  loc_C2DA6C: FLdPr var_F0
  loc_C2DA6F: LateIdLdVar var_124 DispID_22 0
  loc_C2DA76: PopAd
  loc_C2DA78: FLdPr Me
  loc_C2DA7B: VCallAd Control_ID_CodiFifuMsk
  loc_C2DA7E: FStAdFunc var_F4
  loc_C2DA81: FLdPr var_F4
  loc_C2DA84: LateIdLdVar var_13C DispID_22 0
  loc_C2DA8B: PopAd
  loc_C2DA8D: FLdPr Me
  loc_C2DA90: VCallAd Control_ID_FechDeveMsk
  loc_C2DA93: FStAdFunc var_F8
  loc_C2DA96: FLdPr var_F8
  loc_C2DA99: LateIdLdVar var_14C DispID_15 0
  loc_C2DAA0: PopAd
  loc_C2DAA2: FLdPr Me
  loc_C2DAA5: VCallAd Control_ID_FefaDeveMsk
  loc_C2DAA8: FStAdFunc var_FC
  loc_C2DAAB: FLdPr var_FC
  loc_C2DAAE: LateIdLdVar var_15C DispID_15 0
  loc_C2DAB5: PopAd
  loc_C2DAB7: FLdPr Me
  loc_C2DABA: VCallAd Control_ID_ExorImpuMsk
  loc_C2DABD: FStAdFunc var_100
  loc_C2DAC0: FLdPr var_100
  loc_C2DAC3: LateIdLdVar var_1A8 DispID_15 0
  loc_C2DACA: PopAd
  loc_C2DACC: FLdRfVar var_160
  loc_C2DACF: FLdPr Me
  loc_C2DAD2: VCallAd Control_ID_ExpeImpuTxt
  loc_C2DAD5: FStAdFunc var_114
  loc_C2DAD8: FLdPr var_114
  loc_C2DADB:  = Me.Text
  loc_C2DAE0: ILdRf var_160
  loc_C2DAE3: ImpAdCallI2 Trim$()
  loc_C2DAE8: FStStr var_404
  loc_C2DAEB: FLdRfVar var_164
  loc_C2DAEE: FLdPr Me
  loc_C2DAF1: VCallAd Control_ID_CantImpuTxt
  loc_C2DAF4: FStAdFunc var_16C
  loc_C2DAF7: FLdPr var_16C
  loc_C2DAFA:  = Me.Text
  loc_C2DAFF: FLdRfVar var_168
  loc_C2DB02: FLdPr Me
  loc_C2DB05: VCallAd Control_ID_ImunImpuTxt
  loc_C2DB08: FStAdFunc var_18C
  loc_C2DB0B: FLdPr var_18C
  loc_C2DB0E:  = Me.Text
  loc_C2DB13: FLdRfVar var_170
  loc_C2DB16: FLdPr Me
  loc_C2DB19: VCallAd Control_ID_ImpoImpuTxt
  loc_C2DB1C: FStAdFunc var_198
  loc_C2DB1F: FLdPr var_198
  loc_C2DB22:  = Me.Text
  loc_C2DB27: FLdRfVar var_174
  loc_C2DB2A: FLdPr Me
  loc_C2DB2D: VCallAd Control_ID_DetaImpuTxt
  loc_C2DB30: FStAdFunc var_1CC
  loc_C2DB33: FLdPr var_1CC
  loc_C2DB36:  = Me.Text
  loc_C2DB3B: FLdRfVar var_178
  loc_C2DB3E: FLdPr Me
  loc_C2DB41: VCallAd Control_ID_CodiNopeLbl
  loc_C2DB44: FStAdFunc var_1D0
  loc_C2DB47: FLdPr var_1D0
  loc_C2DB4A:  = Me.Caption
  loc_C2DB4F: FLdRfVar var_17C
  loc_C2DB52: FLdPr Me
  loc_C2DB55: VCallAd Control_ID_CodiNopeLbl
  loc_C2DB58: FStAdFunc var_21C
  loc_C2DB5B: FLdPr var_21C
  loc_C2DB5E:  = Me.Caption
  loc_C2DB63: FLdZeroAd var_17C
  loc_C2DB66: CVarStr var_1C8
  loc_C2DB69: LitVarI2 var_1B8, 0
  loc_C2DB6E: ILdRf var_178
  loc_C2DB71: LitStr vbNullString
  loc_C2DB74: EqStr
  loc_C2DB76: CVarBoolI2 var_B4
  loc_C2DB7A: FLdRfVar var_1F0
  loc_C2DB7D: ImpAdCallFPR4  = IIf(, , )
  loc_C2DB82: FLdRfVar var_180
  loc_C2DB85: FLdPr Me
  loc_C2DB88: VCallAd Control_ID_CodiOrcoLbl
  loc_C2DB8B: FStAdFunc var_228
  loc_C2DB8E: FLdPr var_228
  loc_C2DB91:  = Me.Caption
  loc_C2DB96: FLdRfVar var_184
  loc_C2DB99: FLdPr Me
  loc_C2DB9C: VCallAd Control_ID_CodiOrcoLbl
  loc_C2DB9F: FStAdFunc var_22C
  loc_C2DBA2: FLdPr var_22C
  loc_C2DBA5:  = Me.Caption
  loc_C2DBAA: FLdZeroAd var_184
  loc_C2DBAD: CVarStr var_210
  loc_C2DBB0: LitVarI2 var_200, 0
  loc_C2DBB5: ILdRf var_180
  loc_C2DBB8: LitStr vbNullString
  loc_C2DBBB: EqStr
  loc_C2DBBD: CVarBoolI2 var_110
  loc_C2DBC1: FLdRfVar var_25C
  loc_C2DBC4: ImpAdCallFPR4  = IIf(, , )
  loc_C2DBC9: FLdRfVar var_188
  loc_C2DBCC: FLdPr Me
  loc_C2DBCF: VCallAd Control_ID_CodiReceLbl
  loc_C2DBD2: FStAdFunc var_280
  loc_C2DBD5: FLdPr var_280
  loc_C2DBD8:  = Me.Caption
  loc_C2DBDD: FLdRfVar var_190
  loc_C2DBE0: FLdPr Me
  loc_C2DBE3: VCallAd Control_ID_CodiReceLbl
  loc_C2DBE6: FStAdFunc var_284
  loc_C2DBE9: FLdPr var_284
  loc_C2DBEC:  = Me.Caption
  loc_C2DBF1: FLdZeroAd var_190
  loc_C2DBF4: CVarStr var_27C
  loc_C2DBF7: LitVarI2 var_26C, 0
  loc_C2DBFC: ILdRf var_188
  loc_C2DBFF: LitStr vbNullString
  loc_C2DC02: EqStr
  loc_C2DC04: CVarBoolI2 var_23C
  loc_C2DC08: FLdRfVar var_2B4
  loc_C2DC0B: ImpAdCallFPR4  = IIf(, , )
  loc_C2DC10: FLdRfVar var_194
  loc_C2DC13: FLdPr Me
  loc_C2DC16: VCallAd Control_ID_ItemLbl
  loc_C2DC19: FStAdFunc var_2D8
  loc_C2DC1C: FLdPr var_2D8
  loc_C2DC1F:  = Me.Caption
  loc_C2DC24: FLdRfVar var_214
  loc_C2DC27: FLdPr Me
  loc_C2DC2A: VCallAd Control_ID_ItemLbl
  loc_C2DC2D: FStAdFunc var_2F0
  loc_C2DC30: FLdPr var_2F0
  loc_C2DC33:  = Me.Caption
  loc_C2DC38: FLdZeroAd var_214
  loc_C2DC3B: CVarStr var_2D4
  loc_C2DC3E: LitVarI2 var_2C4, 0
  loc_C2DC43: ILdRf var_194
  loc_C2DC46: LitStr vbNullString
  loc_C2DC49: EqStr
  loc_C2DC4B: CVarBoolI2 var_294
  loc_C2DC4F: FLdRfVar var_300
  loc_C2DC52: ImpAdCallFPR4  = IIf(, , )
  loc_C2DC57: FLdRfVar var_218
  loc_C2DC5A: FLdPr Me
  loc_C2DC5D: VCallAd Control_ID_AlternLbl
  loc_C2DC60: FStAdFunc var_304
  loc_C2DC63: FLdPr var_304
  loc_C2DC66:  = Me.Caption
  loc_C2DC6B: FLdRfVar var_220
  loc_C2DC6E: FLdPr Me
  loc_C2DC71: VCallAd Control_ID_AlternLbl
  loc_C2DC74: FStAdFunc var_308
  loc_C2DC77: FLdPr var_308
  loc_C2DC7A:  = Me.Caption
  loc_C2DC7F: FLdZeroAd var_220
  loc_C2DC82: CVarStr var_348
  loc_C2DC85: LitVarI2 var_338, 0
  loc_C2DC8A: ILdRf var_218
  loc_C2DC8D: LitStr vbNullString
  loc_C2DC90: EqStr
  loc_C2DC92: CVarBoolI2 var_318
  loc_C2DC96: FLdRfVar var_358
  loc_C2DC99: ImpAdCallFPR4  = IIf(, , )
  loc_C2DC9E: FLdRfVar var_224
  loc_C2DCA1: FLdPr Me
  loc_C2DCA4: VCallAd Control_ID_CucuPersTxt
  loc_C2DCA7: FStAdFunc var_35C
  loc_C2DCAA: FLdPr var_35C
  loc_C2DCAD:  = Me.Text
  loc_C2DCB2: FLdRfVar var_2DC
  loc_C2DCB5: FLdPr Me
  loc_C2DCB8: VCallAd Control_ID_TifaDeveCbo
  loc_C2DCBB: FStAdFunc var_360
  loc_C2DCBE: FLdPr var_360
  loc_C2DCC1:  = Me.Text
  loc_C2DCC6: FLdRfVar var_2E0
  loc_C2DCC9: FLdPr Me
  loc_C2DCCC: VCallAd Control_ID_SufaDeveTxt
  loc_C2DCCF: FStAdFunc var_364
  loc_C2DCD2: FLdPr var_364
  loc_C2DCD5:  = Me.Text
  loc_C2DCDA: LitI4 1
  loc_C2DCDF: LitI4 1
  loc_C2DCE4: LitVarStr var_384, "0000"
  loc_C2DCE9: FStVarCopyObj var_394
  loc_C2DCEC: FLdRfVar var_394
  loc_C2DCEF: FLdZeroAd var_2E0
  loc_C2DCF2: CVarStr var_374
  loc_C2DCF5: ImpAdCallI2 Format$(, )
  loc_C2DCFA: FStStr var_408
  loc_C2DCFD: FLdRfVar var_2E8
  loc_C2DD00: FLdPr Me
  loc_C2DD03: VCallAd Control_ID_NufaDeveTxt
  loc_C2DD06: FStAdFunc var_398
  loc_C2DD09: FLdPr var_398
  loc_C2DD0C:  = Me.Text
  loc_C2DD11: LitI4 1
  loc_C2DD16: LitI4 1
  loc_C2DD1B: LitVarStr var_3B8, "00000000"
  loc_C2DD20: FStVarCopyObj var_3C8
  loc_C2DD23: FLdRfVar var_3C8
  loc_C2DD26: FLdZeroAd var_2E8
  loc_C2DD29: CVarStr var_3A8
  loc_C2DD2C: ImpAdCallI2 Format$(, )
  loc_C2DD31: FStStr var_40C
  loc_C2DD34: FLdRfVar var_A0
  loc_C2DD37: LitI2_Byte 0
  loc_C2DD39: LitI2_Byte 0
  loc_C2DD3B: LitI2_Byte 0
  loc_C2DD3D: LitStr vbNullString
  loc_C2DD40: LitI4 0
  loc_C2DD45: ILdRf var_2DC
  loc_C2DD48: FLdZeroAd var_408
  loc_C2DD4B: FStStrNoPop var_2E4
  loc_C2DD4E: ConcatStr
  loc_C2DD4F: FStStrNoPop var_2EC
  loc_C2DD52: FLdZeroAd var_40C
  loc_C2DD55: FStStrNoPop var_3CC
  loc_C2DD58: ConcatStr
  loc_C2DD59: FStStrNoPop var_400
  loc_C2DD5C: ILdRf var_224
  loc_C2DD5F: FLdRfVar var_358
  loc_C2DD62: CStrVarVal var_3FC
  loc_C2DD66: FLdRfVar var_300
  loc_C2DD69: CStrVarVal var_3F8
  loc_C2DD6D: FLdRfVar var_2B4
  loc_C2DD70: CI2Var
  loc_C2DD71: FLdRfVar var_25C
  loc_C2DD74: CStrVarVal var_3F4
  loc_C2DD78: FLdRfVar var_1F0
  loc_C2DD7B: CStrVarVal var_3F0
  loc_C2DD7F: ILdRf var_174
  loc_C2DD82: ILdRf var_170
  loc_C2DD85: CR8Str
  loc_C2DD87: PopFPR8
  loc_C2DD88: ILdRf var_168
  loc_C2DD8B: CR8Str
  loc_C2DD8D: PopFPR8
  loc_C2DD8E: ILdRf var_164
  loc_C2DD91: CR8Str
  loc_C2DD93: PopFPR8
  loc_C2DD94: FLdZeroAd var_404
  loc_C2DD97: FStStrNoPop var_3EC
  loc_C2DD9A: FLdRfVar var_1A8
  loc_C2DD9D: CStrVarTmp
  loc_C2DD9E: FStStrNoPop var_3E8
  loc_C2DDA1: FLdRfVar var_15C
  loc_C2DDA4: CStrVarTmp
  loc_C2DDA5: FStStrNoPop var_3E4
  loc_C2DDA8: FLdRfVar var_14C
  loc_C2DDAB: CStrVarTmp
  loc_C2DDAC: FStStrNoPop var_3E0
  loc_C2DDAF: FLdRfVar var_13C
  loc_C2DDB2: CStrVarTmp
  loc_C2DDB3: FStStrNoPop var_3DC
  loc_C2DDB6: FLdRfVar var_124
  loc_C2DDB9: CStrVarTmp
  loc_C2DDBA: FStStrNoPop var_3D8
  loc_C2DDBD: CI4Str
  loc_C2DDBE: ILdRf var_90
  loc_C2DDC1: CI2Str
  loc_C2DDC3: FLdRfVar var_E8
  loc_C2DDC6: CStrVarTmp
  loc_C2DDC7: FStStrNoPop var_3D4
  loc_C2DDCA: FLdRfVar var_C8
  loc_C2DDCD: CStrVarTmp
  loc_C2DDCE: FStStrNoPop var_3D0
  loc_C2DDD1: FLdPr Me
  loc_C2DDD4: MemLdRfVar from_stack_1.global_52
  loc_C2DDD7: NewIfNullPr clsimputacion
  loc_C2DDDA: from_stack_16v = clsimputacion.AddNewDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2DDDF: ILdRf var_A0
  loc_C2DDE2: FLdPr Me
  loc_C2DDE5: MemStI4 global_68
  loc_C2DDE8: FFreeStr var_408 = "": var_40C = "": var_160 = "": var_178 = "": var_180 = "": var_188 = "": var_194 = "": var_218 = "": var_2DC = "": var_2E4 = "": var_2EC = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_90 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_3E4 = "": var_3E8 = "": var_3EC = "": var_164 = "": var_168 = "": var_170 = "": var_174 = "": var_3F0 = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_224 = "": var_400 = ""
  loc_C2DE2B: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = "": var_364 = ""
  loc_C2DE64: FFreeVar var_358 = "": var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_B4 = "": var_1B8 = "": var_1C8 = "": var_110 = "": var_200 = "": var_210 = "": var_23C = "": var_26C = "": var_27C = "": var_294 = "": var_2C4 = "": var_2D4 = "": var_318 = "": var_338 = "": var_348 = "": var_374 = "": var_394 = "": var_3A8 = "": var_3C8 = "": var_1F0 = "": var_25C = "": var_2B4 = ""
  loc_C2DEA5: FLdPr Me
  loc_C2DEA8: MemLdStr global_68
  loc_C2DEAB: LitI4 0
  loc_C2DEB0: EqI4
  loc_C2DEB1: BranchF loc_C2DEC1
  loc_C2DEB4: LitI4 0
  loc_C2DEB9: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2DEBC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2DEC1: Branch loc_C2FF01
  loc_C2DEC4: ILdRf var_12C
  loc_C2DEC7: LitI4 4
  loc_C2DECC: EqI4
  loc_C2DECD: BranchF loc_C2E12F
  loc_C2DED0: FLdPr Me
  loc_C2DED3: VCallAd Control_ID_CodiPartMsk
  loc_C2DED6: FStAdFunc var_98
  loc_C2DED9: FLdPr var_98
  loc_C2DEDC: LateIdLdVar var_C8 DispID_22 0
  loc_C2DEE3: PopAd
  loc_C2DEE5: FLdPr Me
  loc_C2DEE8: VCallAd Control_ID_CodiOrgaMsk
  loc_C2DEEB: FStAdFunc var_A4
  loc_C2DEEE: FLdPr var_A4
  loc_C2DEF1: LateIdLdVar var_E8 DispID_22 0
  loc_C2DEF8: PopAd
  loc_C2DEFA: FLdRfVar var_90
  loc_C2DEFD: FLdPr Me
  loc_C2DF00: VCallAd Control_ID_CodiUngaTxt
  loc_C2DF03: FStAdFunc var_B8
  loc_C2DF06: FLdPr var_B8
  loc_C2DF09:  = Me.Text
  loc_C2DF0E: FLdPr Me
  loc_C2DF11: VCallAd Control_ID_CodiInsuMsk
  loc_C2DF14: FStAdFunc var_F0
  loc_C2DF17: FLdPr var_F0
  loc_C2DF1A: LateIdLdVar var_124 DispID_22 0
  loc_C2DF21: PopAd
  loc_C2DF23: FLdPr Me
  loc_C2DF26: VCallAd Control_ID_CodiFifuMsk
  loc_C2DF29: FStAdFunc var_F4
  loc_C2DF2C: FLdPr var_F4
  loc_C2DF2F: LateIdLdVar var_13C DispID_22 0
  loc_C2DF36: PopAd
  loc_C2DF38: FLdPr Me
  loc_C2DF3B: VCallAd Control_ID_FechImpuMsk
  loc_C2DF3E: FStAdFunc var_F8
  loc_C2DF41: FLdPr var_F8
  loc_C2DF44: LateIdLdVar var_14C DispID_15 0
  loc_C2DF4B: PopAd
  loc_C2DF4D: FLdPr Me
  loc_C2DF50: VCallAd Control_ID_ExorImpuMsk
  loc_C2DF53: FStAdFunc var_FC
  loc_C2DF56: FLdPr var_FC
  loc_C2DF59: LateIdLdVar var_15C DispID_15 0
  loc_C2DF60: PopAd
  loc_C2DF62: FLdRfVar var_160
  loc_C2DF65: FLdPr Me
  loc_C2DF68: VCallAd Control_ID_CantImpuTxt
  loc_C2DF6B: FStAdFunc var_100
  loc_C2DF6E: FLdPr var_100
  loc_C2DF71:  = Me.Text
  loc_C2DF76: FLdRfVar var_164
  loc_C2DF79: FLdPr Me
  loc_C2DF7C: VCallAd Control_ID_ImunImpuTxt
  loc_C2DF7F: FStAdFunc var_114
  loc_C2DF82: FLdPr var_114
  loc_C2DF85:  = Me.Text
  loc_C2DF8A: FLdRfVar var_168
  loc_C2DF8D: FLdPr Me
  loc_C2DF90: VCallAd Control_ID_ImpoImpuTxt
  loc_C2DF93: FStAdFunc var_16C
  loc_C2DF96: FLdPr var_16C
  loc_C2DF99:  = Me.Text
  loc_C2DF9E: FLdRfVar var_218
  loc_C2DFA1: FLdPr Me
  loc_C2DFA4: VCallAd Control_ID_DetaImpuTxt
  loc_C2DFA7: FStAdFunc var_21C
  loc_C2DFAA: FLdPr var_21C
  loc_C2DFAD:  = Me.Text
  loc_C2DFB2: FLdRfVar var_170
  loc_C2DFB5: FLdPr Me
  loc_C2DFB8: VCallAd Control_ID_CodiNopeLbl
  loc_C2DFBB: FStAdFunc var_18C
  loc_C2DFBE: FLdPr var_18C
  loc_C2DFC1:  = Me.Caption
  loc_C2DFC6: FLdRfVar var_174
  loc_C2DFC9: FLdPr Me
  loc_C2DFCC: VCallAd Control_ID_CodiNopeLbl
  loc_C2DFCF: FStAdFunc var_198
  loc_C2DFD2: FLdPr var_198
  loc_C2DFD5:  = Me.Caption
  loc_C2DFDA: FLdZeroAd var_174
  loc_C2DFDD: CVarStr var_1B8
  loc_C2DFE0: LitVarI2 var_1A8, 0
  loc_C2DFE5: ILdRf var_170
  loc_C2DFE8: LitStr vbNullString
  loc_C2DFEB: EqStr
  loc_C2DFED: CVarBoolI2 var_B4
  loc_C2DFF1: FLdRfVar var_1C8
  loc_C2DFF4: ImpAdCallFPR4  = IIf(, , )
  loc_C2DFF9: FLdRfVar var_178
  loc_C2DFFC: FLdPr Me
  loc_C2DFFF: VCallAd Control_ID_ItemLbl
  loc_C2E002: FStAdFunc var_1CC
  loc_C2E005: FLdPr var_1CC
  loc_C2E008:  = Me.Caption
  loc_C2E00D: FLdRfVar var_17C
  loc_C2E010: FLdPr Me
  loc_C2E013: VCallAd Control_ID_ItemLbl
  loc_C2E016: FStAdFunc var_1D0
  loc_C2E019: FLdPr var_1D0
  loc_C2E01C:  = Me.Caption
  loc_C2E021: FLdZeroAd var_17C
  loc_C2E024: CVarStr var_200
  loc_C2E027: LitVarI2 var_1F0, 0
  loc_C2E02C: ILdRf var_178
  loc_C2E02F: LitStr vbNullString
  loc_C2E032: EqStr
  loc_C2E034: CVarBoolI2 var_110
  loc_C2E038: FLdRfVar var_210
  loc_C2E03B: ImpAdCallFPR4  = IIf(, , )
  loc_C2E040: FLdRfVar var_A0
  loc_C2E043: LitI2_Byte 0
  loc_C2E045: LitI2_Byte 0
  loc_C2E047: LitI2_Byte 0
  loc_C2E049: LitI4 0
  loc_C2E04E: FLdRfVar var_210
  loc_C2E051: CI2Var
  loc_C2E052: FLdRfVar var_1C8
  loc_C2E055: CI4Var
  loc_C2E057: ILdRf var_218
  loc_C2E05A: ILdRf var_168
  loc_C2E05D: CR8Str
  loc_C2E05F: PopFPR8
  loc_C2E060: ILdRf var_164
  loc_C2E063: CR8Str
  loc_C2E065: PopFPR8
  loc_C2E066: ILdRf var_160
  loc_C2E069: CR8Str
  loc_C2E06B: PopFPR8
  loc_C2E06C: FLdRfVar var_15C
  loc_C2E06F: CStrVarTmp
  loc_C2E070: FStStrNoPop var_214
  loc_C2E073: FLdRfVar var_14C
  loc_C2E076: CStrVarTmp
  loc_C2E077: FStStrNoPop var_194
  loc_C2E07A: FLdRfVar var_13C
  loc_C2E07D: CStrVarTmp
  loc_C2E07E: FStStrNoPop var_190
  loc_C2E081: FLdRfVar var_124
  loc_C2E084: CStrVarTmp
  loc_C2E085: FStStrNoPop var_188
  loc_C2E088: CI4Str
  loc_C2E089: ILdRf var_90
  loc_C2E08C: CI2Str
  loc_C2E08E: FLdRfVar var_E8
  loc_C2E091: CStrVarTmp
  loc_C2E092: FStStrNoPop var_184
  loc_C2E095: FLdRfVar var_C8
  loc_C2E098: CStrVarTmp
  loc_C2E099: FStStrNoPop var_180
  loc_C2E09C: FLdPr Me
  loc_C2E09F: MemLdRfVar from_stack_1.global_52
  loc_C2E0A2: NewIfNullPr clsimputacion
  loc_C2E0A5: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2E0AA: ILdRf var_A0
  loc_C2E0AD: FLdPr Me
  loc_C2E0B0: MemStI4 global_68
  loc_C2E0B3: FFreeStr var_170 = "": var_178 = "": var_180 = "": var_184 = "": var_90 = "": var_188 = "": var_190 = "": var_194 = "": var_214 = "": var_160 = "": var_164 = "": var_168 = ""
  loc_C2E0D0: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = ""
  loc_C2E0F1: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_1C8 = ""
  loc_C2E110: FLdPr Me
  loc_C2E113: MemLdStr global_68
  loc_C2E116: LitI4 0
  loc_C2E11B: EqI4
  loc_C2E11C: BranchF loc_C2E12C
  loc_C2E11F: LitI4 0
  loc_C2E124: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2E127: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2E12C: Branch loc_C2FF01
  loc_C2E12F: ILdRf var_12C
  loc_C2E132: LitI4 5
  loc_C2E137: EqI4
  loc_C2E138: BranchF loc_C2E7D9
  loc_C2E13B: FLdRfVar var_160
  loc_C2E13E: FLdPr Me
  loc_C2E141: VCallAd Control_ID_SaldImpuLbl
  loc_C2E144: FStAdFunc var_A4
  loc_C2E147: FLdPr var_A4
  loc_C2E14A:  = Me.Caption
  loc_C2E14F: FLdRfVar var_90
  loc_C2E152: FLdPr Me
  loc_C2E155: VCallAd Control_ID_ImpoImpuTxt
  loc_C2E158: FStAdFunc var_98
  loc_C2E15B: FLdPr var_98
  loc_C2E15E:  = Me.Text
  loc_C2E163: ILdRf var_90
  loc_C2E166: CR8Str
  loc_C2E168: ILdRf var_160
  loc_C2E16B: CR8Str
  loc_C2E16D: LtR8
  loc_C2E16E: FFreeStr var_90 = ""
  loc_C2E175: FFreeAd var_98 = ""
  loc_C2E17C: BranchF loc_C2E4AB
  loc_C2E17F: FLdRfVar var_90
  loc_C2E182: FLdPr Me
  loc_C2E185: VCallAd Control_ID_SaldImpuLbl
  loc_C2E188: FStAdFunc var_98
  loc_C2E18B: FLdPr var_98
  loc_C2E18E:  = Me.Caption
  loc_C2E193: FLdRfVar var_160
  loc_C2E196: FLdPr Me
  loc_C2E199: VCallAd Control_ID_ImpoImpuTxt
  loc_C2E19C: FStAdFunc var_A4
  loc_C2E19F: FLdPr var_A4
  loc_C2E1A2:  = Me.Text
  loc_C2E1A7: LitI4 1
  loc_C2E1AC: LitI4 1
  loc_C2E1B1: LitVarStr var_D8, "currency"
  loc_C2E1B6: FStVarCopyObj var_E8
  loc_C2E1B9: FLdRfVar var_E8
  loc_C2E1BC: ILdRf var_90
  loc_C2E1BF: CR8Str
  loc_C2E1C1: ILdRf var_160
  loc_C2E1C4: CR8Str
  loc_C2E1C6: SubR4
  loc_C2E1C7: FnCDblR8
  loc_C2E1C9: CVarR8
  loc_C2E1CD: ImpAdCallI2 Format$(, )
  loc_C2E1D2: FStStr var_174
  loc_C2E1D5: LitI2_Byte 0
  loc_C2E1D7: PopTmpLdAd2 var_126
  loc_C2E1DA: LitI2_Byte &HFF
  loc_C2E1DC: PopTmpLdAd2 var_9A
  loc_C2E1DF: LitStr "¿Desafecta el saldo de la preventiva de "
  loc_C2E1E2: FLdZeroAd var_174
  loc_C2E1E5: FStStrNoPop var_164
  loc_C2E1E8: ConcatStr
  loc_C2E1E9: FStStrNoPop var_168
  loc_C2E1EC: LitStr " ?"
  loc_C2E1EF: ConcatStr
  loc_C2E1F0: FStStrNoPop var_170
  loc_C2E1F3: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2E1F8: CI4UI1
  loc_C2E1F9: LitI4 6
  loc_C2E1FE: EqI4
  loc_C2E1FF: FFreeStr var_90 = "": var_160 = "": var_164 = "": var_168 = "": var_170 = ""
  loc_C2E20E: FFreeAd var_98 = ""
  loc_C2E215: FFreeVar var_C8 = ""
  loc_C2E21C: BranchF loc_C2E4AB
  loc_C2E21F: FLdPr Me
  loc_C2E222: VCallAd Control_ID_CodiPartMsk
  loc_C2E225: FStAdFunc var_98
  loc_C2E228: FLdPr var_98
  loc_C2E22B: LateIdLdVar var_C8 DispID_22 0
  loc_C2E232: PopAd
  loc_C2E234: FLdPr Me
  loc_C2E237: VCallAd Control_ID_CodiOrgaMsk
  loc_C2E23A: FStAdFunc var_A4
  loc_C2E23D: FLdPr var_A4
  loc_C2E240: LateIdLdVar var_E8 DispID_22 0
  loc_C2E247: PopAd
  loc_C2E249: FLdRfVar var_90
  loc_C2E24C: FLdPr Me
  loc_C2E24F: VCallAd Control_ID_CodiUngaTxt
  loc_C2E252: FStAdFunc var_B8
  loc_C2E255: FLdPr var_B8
  loc_C2E258:  = Me.Text
  loc_C2E25D: FLdPr Me
  loc_C2E260: VCallAd Control_ID_CodiInsuMsk
  loc_C2E263: FStAdFunc var_F0
  loc_C2E266: FLdPr var_F0
  loc_C2E269: LateIdLdVar var_124 DispID_22 0
  loc_C2E270: PopAd
  loc_C2E272: FLdPr Me
  loc_C2E275: VCallAd Control_ID_CodiFifuMsk
  loc_C2E278: FStAdFunc var_F4
  loc_C2E27B: FLdPr var_F4
  loc_C2E27E: LateIdLdVar var_13C DispID_22 0
  loc_C2E285: PopAd
  loc_C2E287: FLdPr Me
  loc_C2E28A: VCallAd Control_ID_FechImpuMsk
  loc_C2E28D: FStAdFunc var_F8
  loc_C2E290: FLdPr var_F8
  loc_C2E293: LateIdLdVar var_14C DispID_15 0
  loc_C2E29A: PopAd
  loc_C2E29C: FLdPr Me
  loc_C2E29F: VCallAd Control_ID_ExorImpuMsk
  loc_C2E2A2: FStAdFunc var_FC
  loc_C2E2A5: FLdPr var_FC
  loc_C2E2A8: LateIdLdVar var_15C DispID_15 0
  loc_C2E2AF: PopAd
  loc_C2E2B1: FLdRfVar var_160
  loc_C2E2B4: FLdPr Me
  loc_C2E2B7: VCallAd Control_ID_SaldImpuLbl
  loc_C2E2BA: FStAdFunc var_100
  loc_C2E2BD: FLdPr var_100
  loc_C2E2C0:  = Me.Caption
  loc_C2E2C5: FLdRfVar var_164
  loc_C2E2C8: FLdPr Me
  loc_C2E2CB: VCallAd Control_ID_ImpoImpuTxt
  loc_C2E2CE: FStAdFunc var_114
  loc_C2E2D1: FLdPr var_114
  loc_C2E2D4:  = Me.Text
  loc_C2E2D9: FLdRfVar var_168
  loc_C2E2DC: FLdPr Me
  loc_C2E2DF: VCallAd Control_ID_SaldImpuLbl
  loc_C2E2E2: FStAdFunc var_16C
  loc_C2E2E5: FLdPr var_16C
  loc_C2E2E8:  = Me.Caption
  loc_C2E2ED: FLdRfVar var_170
  loc_C2E2F0: FLdPr Me
  loc_C2E2F3: VCallAd Control_ID_ImpoImpuTxt
  loc_C2E2F6: FStAdFunc var_18C
  loc_C2E2F9: FLdPr var_18C
  loc_C2E2FC:  = Me.Text
  loc_C2E301: FLdRfVar var_220
  loc_C2E304: FLdPr Me
  loc_C2E307: VCallAd Control_ID_DetaImpuTxt
  loc_C2E30A: FStAdFunc var_228
  loc_C2E30D: FLdPr var_228
  loc_C2E310:  = Me.Text
  loc_C2E315: FLdRfVar var_174
  loc_C2E318: FLdPr Me
  loc_C2E31B: VCallAd Control_ID_CodiNopeLbl
  loc_C2E31E: FStAdFunc var_198
  loc_C2E321: FLdPr var_198
  loc_C2E324:  = Me.Caption
  loc_C2E329: FLdRfVar var_178
  loc_C2E32C: FLdPr Me
  loc_C2E32F: VCallAd Control_ID_CodiNopeLbl
  loc_C2E332: FStAdFunc var_1CC
  loc_C2E335: FLdPr var_1CC
  loc_C2E338:  = Me.Caption
  loc_C2E33D: FLdZeroAd var_178
  loc_C2E340: CVarStr var_1B8
  loc_C2E343: LitVarI2 var_1A8, 0
  loc_C2E348: ILdRf var_174
  loc_C2E34B: LitStr vbNullString
  loc_C2E34E: EqStr
  loc_C2E350: CVarBoolI2 var_B4
  loc_C2E354: FLdRfVar var_1C8
  loc_C2E357: ImpAdCallFPR4  = IIf(, , )
  loc_C2E35C: FLdRfVar var_17C
  loc_C2E35F: FLdPr Me
  loc_C2E362: VCallAd Control_ID_ItemLbl
  loc_C2E365: FStAdFunc var_1D0
  loc_C2E368: FLdPr var_1D0
  loc_C2E36B:  = Me.Caption
  loc_C2E370: FLdRfVar var_180
  loc_C2E373: FLdPr Me
  loc_C2E376: VCallAd Control_ID_ItemLbl
  loc_C2E379: FStAdFunc var_21C
  loc_C2E37C: FLdPr var_21C
  loc_C2E37F:  = Me.Caption
  loc_C2E384: FLdZeroAd var_180
  loc_C2E387: CVarStr var_200
  loc_C2E38A: LitVarI2 var_1F0, 0
  loc_C2E38F: ILdRf var_17C
  loc_C2E392: LitStr vbNullString
  loc_C2E395: EqStr
  loc_C2E397: CVarBoolI2 var_110
  loc_C2E39B: FLdRfVar var_210
  loc_C2E39E: ImpAdCallFPR4  = IIf(, , )
  loc_C2E3A3: FLdRfVar var_A0
  loc_C2E3A6: LitI2_Byte 0
  loc_C2E3A8: LitI2_Byte 0
  loc_C2E3AA: LitI2_Byte 0
  loc_C2E3AC: LitI4 0
  loc_C2E3B1: FLdRfVar var_210
  loc_C2E3B4: CI2Var
  loc_C2E3B5: FLdRfVar var_1C8
  loc_C2E3B8: CI4Var
  loc_C2E3BA: ILdRf var_220
  loc_C2E3BD: ILdRf var_168
  loc_C2E3C0: CR8Str
  loc_C2E3C2: ILdRf var_170
  loc_C2E3C5: CR8Str
  loc_C2E3C7: SubR4
  loc_C2E3C8: FnCDblR8
  loc_C2E3CA: LitI2_Byte &HFF
  loc_C2E3CC: CR8I2
  loc_C2E3CD: MulR8
  loc_C2E3CE: PopFPR8
  loc_C2E3CF: ILdRf var_160
  loc_C2E3D2: CR8Str
  loc_C2E3D4: ILdRf var_164
  loc_C2E3D7: CR8Str
  loc_C2E3D9: SubR4
  loc_C2E3DA: FnCDblR8
  loc_C2E3DC: LitI2_Byte &HFF
  loc_C2E3DE: CR8I2
  loc_C2E3DF: MulR8
  loc_C2E3E0: PopFPR8
  loc_C2E3E1: LitStr "1"
  loc_C2E3E4: CR8Str
  loc_C2E3E6: PopFPR8
  loc_C2E3E7: FLdRfVar var_15C
  loc_C2E3EA: CStrVarTmp
  loc_C2E3EB: FStStrNoPop var_218
  loc_C2E3EE: FLdRfVar var_14C
  loc_C2E3F1: CStrVarTmp
  loc_C2E3F2: FStStrNoPop var_214
  loc_C2E3F5: FLdRfVar var_13C
  loc_C2E3F8: CStrVarTmp
  loc_C2E3F9: FStStrNoPop var_194
  loc_C2E3FC: FLdRfVar var_124
  loc_C2E3FF: CStrVarTmp
  loc_C2E400: FStStrNoPop var_190
  loc_C2E403: CI4Str
  loc_C2E404: ILdRf var_90
  loc_C2E407: CI2Str
  loc_C2E409: FLdRfVar var_E8
  loc_C2E40C: CStrVarTmp
  loc_C2E40D: FStStrNoPop var_188
  loc_C2E410: FLdRfVar var_C8
  loc_C2E413: CStrVarTmp
  loc_C2E414: FStStrNoPop var_184
  loc_C2E417: FLdPr Me
  loc_C2E41A: MemLdRfVar from_stack_1.global_52
  loc_C2E41D: NewIfNullPr clsimputacion
  loc_C2E420: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2E425: ILdRf var_A0
  loc_C2E428: FLdPr Me
  loc_C2E42B: MemStI4 global_68
  loc_C2E42E: FFreeStr var_160 = "": var_164 = "": var_168 = "": var_170 = "": var_174 = "": var_17C = "": var_184 = "": var_188 = "": var_90 = "": var_190 = "": var_194 = "": var_214 = "": var_218 = ""
  loc_C2E44D: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = ""
  loc_C2E470: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_1C8 = ""
  loc_C2E48F: FLdPr Me
  loc_C2E492: MemLdStr global_68
  loc_C2E495: LitI4 0
  loc_C2E49A: EqI4
  loc_C2E49B: BranchF loc_C2E4AB
  loc_C2E49E: LitI4 0
  loc_C2E4A3: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2E4A6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2E4AB: FLdPr Me
  loc_C2E4AE: VCallAd Control_ID_CodiPartMsk
  loc_C2E4B1: FStAdFunc var_98
  loc_C2E4B4: FLdPr var_98
  loc_C2E4B7: LateIdLdVar var_C8 DispID_22 0
  loc_C2E4BE: PopAd
  loc_C2E4C0: FLdPr Me
  loc_C2E4C3: VCallAd Control_ID_CodiOrgaMsk
  loc_C2E4C6: FStAdFunc var_A4
  loc_C2E4C9: FLdPr var_A4
  loc_C2E4CC: LateIdLdVar var_E8 DispID_22 0
  loc_C2E4D3: PopAd
  loc_C2E4D5: FLdRfVar var_90
  loc_C2E4D8: FLdPr Me
  loc_C2E4DB: VCallAd Control_ID_CodiUngaTxt
  loc_C2E4DE: FStAdFunc var_B8
  loc_C2E4E1: FLdPr var_B8
  loc_C2E4E4:  = Me.Text
  loc_C2E4E9: FLdPr Me
  loc_C2E4EC: VCallAd Control_ID_CodiInsuMsk
  loc_C2E4EF: FStAdFunc var_F0
  loc_C2E4F2: FLdPr var_F0
  loc_C2E4F5: LateIdLdVar var_124 DispID_22 0
  loc_C2E4FC: PopAd
  loc_C2E4FE: FLdPr Me
  loc_C2E501: VCallAd Control_ID_CodiFifuMsk
  loc_C2E504: FStAdFunc var_F4
  loc_C2E507: FLdPr var_F4
  loc_C2E50A: LateIdLdVar var_13C DispID_22 0
  loc_C2E511: PopAd
  loc_C2E513: FLdPr Me
  loc_C2E516: VCallAd Control_ID_FechImpuMsk
  loc_C2E519: FStAdFunc var_F8
  loc_C2E51C: FLdPr var_F8
  loc_C2E51F: LateIdLdVar var_14C DispID_15 0
  loc_C2E526: PopAd
  loc_C2E528: FLdPr Me
  loc_C2E52B: VCallAd Control_ID_ExorImpuMsk
  loc_C2E52E: FStAdFunc var_FC
  loc_C2E531: FLdPr var_FC
  loc_C2E534: LateIdLdVar var_15C DispID_15 0
  loc_C2E53B: PopAd
  loc_C2E53D: FLdRfVar var_160
  loc_C2E540: FLdPr Me
  loc_C2E543: VCallAd Control_ID_CantImpuTxt
  loc_C2E546: FStAdFunc var_100
  loc_C2E549: FLdPr var_100
  loc_C2E54C:  = Me.Text
  loc_C2E551: FLdRfVar var_164
  loc_C2E554: FLdPr Me
  loc_C2E557: VCallAd Control_ID_ImunImpuTxt
  loc_C2E55A: FStAdFunc var_114
  loc_C2E55D: FLdPr var_114
  loc_C2E560:  = Me.Text
  loc_C2E565: FLdRfVar var_168
  loc_C2E568: FLdPr Me
  loc_C2E56B: VCallAd Control_ID_ImpoImpuTxt
  loc_C2E56E: FStAdFunc var_16C
  loc_C2E571: FLdPr var_16C
  loc_C2E574:  = Me.Text
  loc_C2E579: FLdRfVar var_170
  loc_C2E57C: FLdPr Me
  loc_C2E57F: VCallAd Control_ID_DetaImpuTxt
  loc_C2E582: FStAdFunc var_18C
  loc_C2E585: FLdPr var_18C
  loc_C2E588:  = Me.Text
  loc_C2E58D: FLdRfVar var_174
  loc_C2E590: FLdPr Me
  loc_C2E593: VCallAd Control_ID_CodiNopeLbl
  loc_C2E596: FStAdFunc var_198
  loc_C2E599: FLdPr var_198
  loc_C2E59C:  = Me.Caption
  loc_C2E5A1: FLdRfVar var_178
  loc_C2E5A4: FLdPr Me
  loc_C2E5A7: VCallAd Control_ID_CodiNopeLbl
  loc_C2E5AA: FStAdFunc var_1CC
  loc_C2E5AD: FLdPr var_1CC
  loc_C2E5B0:  = Me.Caption
  loc_C2E5B5: FLdZeroAd var_178
  loc_C2E5B8: CVarStr var_1B8
  loc_C2E5BB: LitVarI2 var_1A8, 0
  loc_C2E5C0: ILdRf var_174
  loc_C2E5C3: LitStr vbNullString
  loc_C2E5C6: EqStr
  loc_C2E5C8: CVarBoolI2 var_B4
  loc_C2E5CC: FLdRfVar var_1C8
  loc_C2E5CF: ImpAdCallFPR4  = IIf(, , )
  loc_C2E5D4: FLdRfVar var_17C
  loc_C2E5D7: FLdPr Me
  loc_C2E5DA: VCallAd Control_ID_CodiOrcoLbl
  loc_C2E5DD: FStAdFunc var_1D0
  loc_C2E5E0: FLdPr var_1D0
  loc_C2E5E3:  = Me.Caption
  loc_C2E5E8: FLdRfVar var_180
  loc_C2E5EB: FLdPr Me
  loc_C2E5EE: VCallAd Control_ID_CodiOrcoLbl
  loc_C2E5F1: FStAdFunc var_21C
  loc_C2E5F4: FLdPr var_21C
  loc_C2E5F7:  = Me.Caption
  loc_C2E5FC: FLdZeroAd var_180
  loc_C2E5FF: CVarStr var_200
  loc_C2E602: LitVarI2 var_1F0, 0
  loc_C2E607: ILdRf var_17C
  loc_C2E60A: LitStr vbNullString
  loc_C2E60D: EqStr
  loc_C2E60F: CVarBoolI2 var_110
  loc_C2E613: FLdRfVar var_210
  loc_C2E616: ImpAdCallFPR4  = IIf(, , )
  loc_C2E61B: FLdRfVar var_184
  loc_C2E61E: FLdPr Me
  loc_C2E621: VCallAd Control_ID_ItemLbl
  loc_C2E624: FStAdFunc var_228
  loc_C2E627: FLdPr var_228
  loc_C2E62A:  = Me.Caption
  loc_C2E62F: FLdRfVar var_188
  loc_C2E632: FLdPr Me
  loc_C2E635: VCallAd Control_ID_ItemLbl
  loc_C2E638: FStAdFunc var_22C
  loc_C2E63B: FLdPr var_22C
  loc_C2E63E:  = Me.Caption
  loc_C2E643: FLdZeroAd var_188
  loc_C2E646: CVarStr var_26C
  loc_C2E649: LitVarI2 var_25C, 0
  loc_C2E64E: ILdRf var_184
  loc_C2E651: LitStr vbNullString
  loc_C2E654: EqStr
  loc_C2E656: CVarBoolI2 var_23C
  loc_C2E65A: FLdRfVar var_27C
  loc_C2E65D: ImpAdCallFPR4  = IIf(, , )
  loc_C2E662: FLdRfVar var_190
  loc_C2E665: FLdPr Me
  loc_C2E668: VCallAd Control_ID_AlternLbl
  loc_C2E66B: FStAdFunc var_280
  loc_C2E66E: FLdPr var_280
  loc_C2E671:  = Me.Caption
  loc_C2E676: FLdRfVar var_194
  loc_C2E679: FLdPr Me
  loc_C2E67C: VCallAd Control_ID_AlternLbl
  loc_C2E67F: FStAdFunc var_284
  loc_C2E682: FLdPr var_284
  loc_C2E685:  = Me.Caption
  loc_C2E68A: FLdZeroAd var_194
  loc_C2E68D: CVarStr var_2C4
  loc_C2E690: LitVarI2 var_2B4, 0
  loc_C2E695: ILdRf var_190
  loc_C2E698: LitStr vbNullString
  loc_C2E69B: EqStr
  loc_C2E69D: CVarBoolI2 var_294
  loc_C2E6A1: FLdRfVar var_2D4
  loc_C2E6A4: ImpAdCallFPR4  = IIf(, , )
  loc_C2E6A9: FLdRfVar var_214
  loc_C2E6AC: FLdPr Me
  loc_C2E6AF: VCallAd Control_ID_CucuPersTxt
  loc_C2E6B2: FStAdFunc var_2D8
  loc_C2E6B5: FLdPr var_2D8
  loc_C2E6B8:  = Me.Text
  loc_C2E6BD: FLdRfVar var_A0
  loc_C2E6C0: LitI2_Byte 0
  loc_C2E6C2: LitI2_Byte 0
  loc_C2E6C4: LitI2_Byte 0
  loc_C2E6C6: LitI4 0
  loc_C2E6CB: ILdRf var_214
  loc_C2E6CE: FLdRfVar var_2D4
  loc_C2E6D1: CUI1Var
  loc_C2E6D3: FLdRfVar var_27C
  loc_C2E6D6: CI2Var
  loc_C2E6D7: FLdRfVar var_210
  loc_C2E6DA: CI4Var
  loc_C2E6DC: FLdRfVar var_1C8
  loc_C2E6DF: CI4Var
  loc_C2E6E1: ILdRf var_170
  loc_C2E6E4: ILdRf var_168
  loc_C2E6E7: CR8Str
  loc_C2E6E9: PopFPR8
  loc_C2E6EA: ILdRf var_164
  loc_C2E6ED: CR8Str
  loc_C2E6EF: PopFPR8
  loc_C2E6F0: ILdRf var_160
  loc_C2E6F3: CR8Str
  loc_C2E6F5: PopFPR8
  loc_C2E6F6: FLdRfVar var_15C
  loc_C2E6F9: CStrVarTmp
  loc_C2E6FA: FStStrNoPop var_2E4
  loc_C2E6FD: FLdRfVar var_14C
  loc_C2E700: CStrVarTmp
  loc_C2E701: FStStrNoPop var_2E0
  loc_C2E704: FLdRfVar var_13C
  loc_C2E707: CStrVarTmp
  loc_C2E708: FStStrNoPop var_2DC
  loc_C2E70B: FLdRfVar var_124
  loc_C2E70E: CStrVarTmp
  loc_C2E70F: FStStrNoPop var_224
  loc_C2E712: CI4Str
  loc_C2E713: ILdRf var_90
  loc_C2E716: CI2Str
  loc_C2E718: FLdRfVar var_E8
  loc_C2E71B: CStrVarTmp
  loc_C2E71C: FStStrNoPop var_220
  loc_C2E71F: FLdRfVar var_C8
  loc_C2E722: CStrVarTmp
  loc_C2E723: FStStrNoPop var_218
  loc_C2E726: FLdPr Me
  loc_C2E729: MemLdRfVar from_stack_1.global_52
  loc_C2E72C: NewIfNullPr clsimputacion
  loc_C2E72F: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2E734: ILdRf var_A0
  loc_C2E737: FLdPr Me
  loc_C2E73A: MemStI4 global_68
  loc_C2E73D: FFreeStr var_174 = "": var_17C = "": var_184 = "": var_190 = "": var_218 = "": var_220 = "": var_90 = "": var_224 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_160 = "": var_164 = "": var_168 = "": var_170 = ""
  loc_C2E760: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = ""
  loc_C2E78B: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_23C = "": var_25C = "": var_26C = "": var_294 = "": var_2B4 = "": var_2C4 = "": var_1C8 = "": var_210 = "": var_27C = ""
  loc_C2E7BA: FLdPr Me
  loc_C2E7BD: MemLdStr global_68
  loc_C2E7C0: LitI4 0
  loc_C2E7C5: EqI4
  loc_C2E7C6: BranchF loc_C2E7D6
  loc_C2E7C9: LitI4 0
  loc_C2E7CE: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2E7D1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2E7D6: Branch loc_C2FF01
  loc_C2E7D9: ILdRf var_12C
  loc_C2E7DC: LitI4 6
  loc_C2E7E1: EqI4
  loc_C2E7E2: BranchF loc_C2F322
  loc_C2E7E5: FLdRfVar var_160
  loc_C2E7E8: FLdPr Me
  loc_C2E7EB: VCallAd Control_ID_SaldImpuLbl
  loc_C2E7EE: FStAdFunc var_A4
  loc_C2E7F1: FLdPr var_A4
  loc_C2E7F4:  = Me.Caption
  loc_C2E7F9: FLdRfVar var_90
  loc_C2E7FC: FLdPr Me
  loc_C2E7FF: VCallAd Control_ID_ImpoImpuTxt
  loc_C2E802: FStAdFunc var_98
  loc_C2E805: FLdPr var_98
  loc_C2E808:  = Me.Text
  loc_C2E80D: ILdRf var_90
  loc_C2E810: CR8Str
  loc_C2E812: ILdRf var_160
  loc_C2E815: CR8Str
  loc_C2E817: LtR8
  loc_C2E818: FFreeStr var_90 = ""
  loc_C2E81F: FFreeAd var_98 = ""
  loc_C2E826: BranchF loc_C2EB55
  loc_C2E829: FLdRfVar var_90
  loc_C2E82C: FLdPr Me
  loc_C2E82F: VCallAd Control_ID_SaldImpuLbl
  loc_C2E832: FStAdFunc var_98
  loc_C2E835: FLdPr var_98
  loc_C2E838:  = Me.Caption
  loc_C2E83D: FLdRfVar var_160
  loc_C2E840: FLdPr Me
  loc_C2E843: VCallAd Control_ID_ImpoImpuTxt
  loc_C2E846: FStAdFunc var_A4
  loc_C2E849: FLdPr var_A4
  loc_C2E84C:  = Me.Text
  loc_C2E851: LitI4 1
  loc_C2E856: LitI4 1
  loc_C2E85B: LitVarStr var_D8, "currency"
  loc_C2E860: FStVarCopyObj var_E8
  loc_C2E863: FLdRfVar var_E8
  loc_C2E866: ILdRf var_90
  loc_C2E869: CR8Str
  loc_C2E86B: ILdRf var_160
  loc_C2E86E: CR8Str
  loc_C2E870: SubR4
  loc_C2E871: FnCDblR8
  loc_C2E873: CVarR8
  loc_C2E877: ImpAdCallI2 Format$(, )
  loc_C2E87C: FStStr var_174
  loc_C2E87F: LitI2_Byte 0
  loc_C2E881: PopTmpLdAd2 var_126
  loc_C2E884: LitI2_Byte &HFF
  loc_C2E886: PopTmpLdAd2 var_9A
  loc_C2E889: LitStr "¿Desafecta el saldo de la preventiva "
  loc_C2E88C: FLdZeroAd var_174
  loc_C2E88F: FStStrNoPop var_164
  loc_C2E892: ConcatStr
  loc_C2E893: FStStrNoPop var_168
  loc_C2E896: LitStr " ?"
  loc_C2E899: ConcatStr
  loc_C2E89A: FStStrNoPop var_170
  loc_C2E89D: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2E8A2: CI4UI1
  loc_C2E8A3: LitI4 6
  loc_C2E8A8: EqI4
  loc_C2E8A9: FFreeStr var_90 = "": var_160 = "": var_164 = "": var_168 = "": var_170 = ""
  loc_C2E8B8: FFreeAd var_98 = ""
  loc_C2E8BF: FFreeVar var_C8 = ""
  loc_C2E8C6: BranchF loc_C2EB55
  loc_C2E8C9: FLdPr Me
  loc_C2E8CC: VCallAd Control_ID_CodiPartMsk
  loc_C2E8CF: FStAdFunc var_98
  loc_C2E8D2: FLdPr var_98
  loc_C2E8D5: LateIdLdVar var_C8 DispID_22 0
  loc_C2E8DC: PopAd
  loc_C2E8DE: FLdPr Me
  loc_C2E8E1: VCallAd Control_ID_CodiOrgaMsk
  loc_C2E8E4: FStAdFunc var_A4
  loc_C2E8E7: FLdPr var_A4
  loc_C2E8EA: LateIdLdVar var_E8 DispID_22 0
  loc_C2E8F1: PopAd
  loc_C2E8F3: FLdRfVar var_90
  loc_C2E8F6: FLdPr Me
  loc_C2E8F9: VCallAd Control_ID_CodiUngaTxt
  loc_C2E8FC: FStAdFunc var_B8
  loc_C2E8FF: FLdPr var_B8
  loc_C2E902:  = Me.Text
  loc_C2E907: FLdPr Me
  loc_C2E90A: VCallAd Control_ID_CodiInsuMsk
  loc_C2E90D: FStAdFunc var_F0
  loc_C2E910: FLdPr var_F0
  loc_C2E913: LateIdLdVar var_124 DispID_22 0
  loc_C2E91A: PopAd
  loc_C2E91C: FLdPr Me
  loc_C2E91F: VCallAd Control_ID_CodiFifuMsk
  loc_C2E922: FStAdFunc var_F4
  loc_C2E925: FLdPr var_F4
  loc_C2E928: LateIdLdVar var_13C DispID_22 0
  loc_C2E92F: PopAd
  loc_C2E931: FLdPr Me
  loc_C2E934: VCallAd Control_ID_FechImpuMsk
  loc_C2E937: FStAdFunc var_F8
  loc_C2E93A: FLdPr var_F8
  loc_C2E93D: LateIdLdVar var_14C DispID_15 0
  loc_C2E944: PopAd
  loc_C2E946: FLdPr Me
  loc_C2E949: VCallAd Control_ID_ExorImpuMsk
  loc_C2E94C: FStAdFunc var_FC
  loc_C2E94F: FLdPr var_FC
  loc_C2E952: LateIdLdVar var_15C DispID_15 0
  loc_C2E959: PopAd
  loc_C2E95B: FLdRfVar var_160
  loc_C2E95E: FLdPr Me
  loc_C2E961: VCallAd Control_ID_SaldImpuLbl
  loc_C2E964: FStAdFunc var_100
  loc_C2E967: FLdPr var_100
  loc_C2E96A:  = Me.Caption
  loc_C2E96F: FLdRfVar var_164
  loc_C2E972: FLdPr Me
  loc_C2E975: VCallAd Control_ID_ImpoImpuTxt
  loc_C2E978: FStAdFunc var_114
  loc_C2E97B: FLdPr var_114
  loc_C2E97E:  = Me.Text
  loc_C2E983: FLdRfVar var_168
  loc_C2E986: FLdPr Me
  loc_C2E989: VCallAd Control_ID_SaldImpuLbl
  loc_C2E98C: FStAdFunc var_16C
  loc_C2E98F: FLdPr var_16C
  loc_C2E992:  = Me.Caption
  loc_C2E997: FLdRfVar var_170
  loc_C2E99A: FLdPr Me
  loc_C2E99D: VCallAd Control_ID_ImpoImpuTxt
  loc_C2E9A0: FStAdFunc var_18C
  loc_C2E9A3: FLdPr var_18C
  loc_C2E9A6:  = Me.Text
  loc_C2E9AB: FLdRfVar var_174
  loc_C2E9AE: FLdPr Me
  loc_C2E9B1: VCallAd Control_ID_DetaImpuTxt
  loc_C2E9B4: FStAdFunc var_198
  loc_C2E9B7: FLdPr var_198
  loc_C2E9BA:  = Me.Text
  loc_C2E9BF: FLdRfVar var_178
  loc_C2E9C2: FLdPr Me
  loc_C2E9C5: VCallAd Control_ID_CodiNopeLbl
  loc_C2E9C8: FStAdFunc var_1CC
  loc_C2E9CB: FLdPr var_1CC
  loc_C2E9CE:  = Me.Caption
  loc_C2E9D3: FLdRfVar var_17C
  loc_C2E9D6: FLdPr Me
  loc_C2E9D9: VCallAd Control_ID_CodiNopeLbl
  loc_C2E9DC: FStAdFunc var_1D0
  loc_C2E9DF: FLdPr var_1D0
  loc_C2E9E2:  = Me.Caption
  loc_C2E9E7: FLdZeroAd var_17C
  loc_C2E9EA: CVarStr var_1B8
  loc_C2E9ED: LitVarI2 var_1A8, 0
  loc_C2E9F2: ILdRf var_178
  loc_C2E9F5: LitStr vbNullString
  loc_C2E9F8: EqStr
  loc_C2E9FA: CVarBoolI2 var_B4
  loc_C2E9FE: FLdRfVar var_1C8
  loc_C2EA01: ImpAdCallFPR4  = IIf(, , )
  loc_C2EA06: FLdRfVar var_180
  loc_C2EA09: FLdPr Me
  loc_C2EA0C: VCallAd Control_ID_ItemLbl
  loc_C2EA0F: FStAdFunc var_21C
  loc_C2EA12: FLdPr var_21C
  loc_C2EA15:  = Me.Caption
  loc_C2EA1A: FLdRfVar var_184
  loc_C2EA1D: FLdPr Me
  loc_C2EA20: VCallAd Control_ID_ItemLbl
  loc_C2EA23: FStAdFunc var_228
  loc_C2EA26: FLdPr var_228
  loc_C2EA29:  = Me.Caption
  loc_C2EA2E: FLdZeroAd var_184
  loc_C2EA31: CVarStr var_200
  loc_C2EA34: LitVarI2 var_1F0, 0
  loc_C2EA39: ILdRf var_180
  loc_C2EA3C: LitStr vbNullString
  loc_C2EA3F: EqStr
  loc_C2EA41: CVarBoolI2 var_110
  loc_C2EA45: FLdRfVar var_210
  loc_C2EA48: ImpAdCallFPR4  = IIf(, , )
  loc_C2EA4D: FLdRfVar var_A0
  loc_C2EA50: LitI2_Byte 0
  loc_C2EA52: LitI2_Byte 0
  loc_C2EA54: LitI2_Byte 0
  loc_C2EA56: LitI4 0
  loc_C2EA5B: FLdRfVar var_210
  loc_C2EA5E: CI2Var
  loc_C2EA5F: FLdRfVar var_1C8
  loc_C2EA62: CI4Var
  loc_C2EA64: ILdRf var_174
  loc_C2EA67: ILdRf var_168
  loc_C2EA6A: CR8Str
  loc_C2EA6C: ILdRf var_170
  loc_C2EA6F: CR8Str
  loc_C2EA71: SubR4
  loc_C2EA72: FnCDblR8
  loc_C2EA74: LitI2_Byte &HFF
  loc_C2EA76: CR8I2
  loc_C2EA77: MulR8
  loc_C2EA78: PopFPR8
  loc_C2EA79: ILdRf var_160
  loc_C2EA7C: CR8Str
  loc_C2EA7E: ILdRf var_164
  loc_C2EA81: CR8Str
  loc_C2EA83: SubR4
  loc_C2EA84: FnCDblR8
  loc_C2EA86: LitI2_Byte &HFF
  loc_C2EA88: CR8I2
  loc_C2EA89: MulR8
  loc_C2EA8A: PopFPR8
  loc_C2EA8B: LitStr "1"
  loc_C2EA8E: CR8Str
  loc_C2EA90: PopFPR8
  loc_C2EA91: FLdRfVar var_15C
  loc_C2EA94: CStrVarTmp
  loc_C2EA95: FStStrNoPop var_220
  loc_C2EA98: FLdRfVar var_14C
  loc_C2EA9B: CStrVarTmp
  loc_C2EA9C: FStStrNoPop var_218
  loc_C2EA9F: FLdRfVar var_13C
  loc_C2EAA2: CStrVarTmp
  loc_C2EAA3: FStStrNoPop var_214
  loc_C2EAA6: FLdRfVar var_124
  loc_C2EAA9: CStrVarTmp
  loc_C2EAAA: FStStrNoPop var_194
  loc_C2EAAD: CI4Str
  loc_C2EAAE: ILdRf var_90
  loc_C2EAB1: CI2Str
  loc_C2EAB3: FLdRfVar var_E8
  loc_C2EAB6: CStrVarTmp
  loc_C2EAB7: FStStrNoPop var_190
  loc_C2EABA: FLdRfVar var_C8
  loc_C2EABD: CStrVarTmp
  loc_C2EABE: FStStrNoPop var_188
  loc_C2EAC1: FLdPr Me
  loc_C2EAC4: MemLdRfVar from_stack_1.global_52
  loc_C2EAC7: NewIfNullPr clsimputacion
  loc_C2EACA: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2EACF: ILdRf var_A0
  loc_C2EAD2: FLdPr Me
  loc_C2EAD5: MemStI4 global_68
  loc_C2EAD8: FFreeStr var_160 = "": var_164 = "": var_168 = "": var_170 = "": var_178 = "": var_180 = "": var_188 = "": var_190 = "": var_90 = "": var_194 = "": var_214 = "": var_218 = "": var_220 = ""
  loc_C2EAF7: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = ""
  loc_C2EB1A: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_1C8 = ""
  loc_C2EB39: FLdPr Me
  loc_C2EB3C: MemLdStr global_68
  loc_C2EB3F: LitI4 0
  loc_C2EB44: EqI4
  loc_C2EB45: BranchF loc_C2EB55
  loc_C2EB48: LitI4 0
  loc_C2EB4D: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2EB50: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2EB55: FLdPr Me
  loc_C2EB58: VCallAd Control_ID_CodiPartMsk
  loc_C2EB5B: FStAdFunc var_98
  loc_C2EB5E: FLdPr var_98
  loc_C2EB61: LateIdLdVar var_C8 DispID_22 0
  loc_C2EB68: PopAd
  loc_C2EB6A: FLdPr Me
  loc_C2EB6D: VCallAd Control_ID_CodiOrgaMsk
  loc_C2EB70: FStAdFunc var_A4
  loc_C2EB73: FLdPr var_A4
  loc_C2EB76: LateIdLdVar var_E8 DispID_22 0
  loc_C2EB7D: PopAd
  loc_C2EB7F: FLdRfVar var_90
  loc_C2EB82: FLdPr Me
  loc_C2EB85: VCallAd Control_ID_CodiUngaTxt
  loc_C2EB88: FStAdFunc var_B8
  loc_C2EB8B: FLdPr var_B8
  loc_C2EB8E:  = Me.Text
  loc_C2EB93: FLdPr Me
  loc_C2EB96: VCallAd Control_ID_CodiInsuMsk
  loc_C2EB99: FStAdFunc var_F0
  loc_C2EB9C: FLdPr var_F0
  loc_C2EB9F: LateIdLdVar var_124 DispID_22 0
  loc_C2EBA6: PopAd
  loc_C2EBA8: FLdPr Me
  loc_C2EBAB: VCallAd Control_ID_CodiFifuMsk
  loc_C2EBAE: FStAdFunc var_F4
  loc_C2EBB1: FLdPr var_F4
  loc_C2EBB4: LateIdLdVar var_13C DispID_22 0
  loc_C2EBBB: PopAd
  loc_C2EBBD: FLdPr Me
  loc_C2EBC0: VCallAd Control_ID_FechImpuMsk
  loc_C2EBC3: FStAdFunc var_F8
  loc_C2EBC6: FLdPr var_F8
  loc_C2EBC9: LateIdLdVar var_14C DispID_15 0
  loc_C2EBD0: PopAd
  loc_C2EBD2: FLdPr Me
  loc_C2EBD5: VCallAd Control_ID_ExorImpuMsk
  loc_C2EBD8: FStAdFunc var_FC
  loc_C2EBDB: FLdPr var_FC
  loc_C2EBDE: LateIdLdVar var_15C DispID_15 0
  loc_C2EBE5: PopAd
  loc_C2EBE7: FLdRfVar var_160
  loc_C2EBEA: FLdPr Me
  loc_C2EBED: VCallAd Control_ID_CantImpuTxt
  loc_C2EBF0: FStAdFunc var_100
  loc_C2EBF3: FLdPr var_100
  loc_C2EBF6:  = Me.Text
  loc_C2EBFB: FLdRfVar var_164
  loc_C2EBFE: FLdPr Me
  loc_C2EC01: VCallAd Control_ID_ImunImpuTxt
  loc_C2EC04: FStAdFunc var_114
  loc_C2EC07: FLdPr var_114
  loc_C2EC0A:  = Me.Text
  loc_C2EC0F: FLdRfVar var_168
  loc_C2EC12: FLdPr Me
  loc_C2EC15: VCallAd Control_ID_ImpoImpuTxt
  loc_C2EC18: FStAdFunc var_16C
  loc_C2EC1B: FLdPr var_16C
  loc_C2EC1E:  = Me.Text
  loc_C2EC23: FLdRfVar var_170
  loc_C2EC26: FLdPr Me
  loc_C2EC29: VCallAd Control_ID_DetaImpuTxt
  loc_C2EC2C: FStAdFunc var_18C
  loc_C2EC2F: FLdPr var_18C
  loc_C2EC32:  = Me.Text
  loc_C2EC37: FLdRfVar var_174
  loc_C2EC3A: FLdPr Me
  loc_C2EC3D: VCallAd Control_ID_CodiNopeLbl
  loc_C2EC40: FStAdFunc var_198
  loc_C2EC43: FLdPr var_198
  loc_C2EC46:  = Me.Caption
  loc_C2EC4B: FLdRfVar var_178
  loc_C2EC4E: FLdPr Me
  loc_C2EC51: VCallAd Control_ID_CodiNopeLbl
  loc_C2EC54: FStAdFunc var_1CC
  loc_C2EC57: FLdPr var_1CC
  loc_C2EC5A:  = Me.Caption
  loc_C2EC5F: FLdZeroAd var_178
  loc_C2EC62: CVarStr var_1B8
  loc_C2EC65: LitVarI2 var_1A8, 0
  loc_C2EC6A: ILdRf var_174
  loc_C2EC6D: LitStr vbNullString
  loc_C2EC70: EqStr
  loc_C2EC72: CVarBoolI2 var_B4
  loc_C2EC76: FLdRfVar var_1C8
  loc_C2EC79: ImpAdCallFPR4  = IIf(, , )
  loc_C2EC7E: FLdRfVar var_17C
  loc_C2EC81: FLdPr Me
  loc_C2EC84: VCallAd Control_ID_CodiOrcoLbl
  loc_C2EC87: FStAdFunc var_1D0
  loc_C2EC8A: FLdPr var_1D0
  loc_C2EC8D:  = Me.Caption
  loc_C2EC92: FLdRfVar var_180
  loc_C2EC95: FLdPr Me
  loc_C2EC98: VCallAd Control_ID_CodiOrcoLbl
  loc_C2EC9B: FStAdFunc var_21C
  loc_C2EC9E: FLdPr var_21C
  loc_C2ECA1:  = Me.Caption
  loc_C2ECA6: FLdZeroAd var_180
  loc_C2ECA9: CVarStr var_200
  loc_C2ECAC: LitVarI2 var_1F0, 0
  loc_C2ECB1: ILdRf var_17C
  loc_C2ECB4: LitStr vbNullString
  loc_C2ECB7: EqStr
  loc_C2ECB9: CVarBoolI2 var_110
  loc_C2ECBD: FLdRfVar var_210
  loc_C2ECC0: ImpAdCallFPR4  = IIf(, , )
  loc_C2ECC5: FLdRfVar var_184
  loc_C2ECC8: FLdPr Me
  loc_C2ECCB: VCallAd Control_ID_ItemLbl
  loc_C2ECCE: FStAdFunc var_228
  loc_C2ECD1: FLdPr var_228
  loc_C2ECD4:  = Me.Caption
  loc_C2ECD9: FLdRfVar var_188
  loc_C2ECDC: FLdPr Me
  loc_C2ECDF: VCallAd Control_ID_ItemLbl
  loc_C2ECE2: FStAdFunc var_22C
  loc_C2ECE5: FLdPr var_22C
  loc_C2ECE8:  = Me.Caption
  loc_C2ECED: FLdZeroAd var_188
  loc_C2ECF0: CVarStr var_26C
  loc_C2ECF3: LitVarI2 var_25C, 0
  loc_C2ECF8: ILdRf var_184
  loc_C2ECFB: LitStr vbNullString
  loc_C2ECFE: EqStr
  loc_C2ED00: CVarBoolI2 var_23C
  loc_C2ED04: FLdRfVar var_27C
  loc_C2ED07: ImpAdCallFPR4  = IIf(, , )
  loc_C2ED0C: FLdRfVar var_190
  loc_C2ED0F: FLdPr Me
  loc_C2ED12: VCallAd Control_ID_AlternLbl
  loc_C2ED15: FStAdFunc var_280
  loc_C2ED18: FLdPr var_280
  loc_C2ED1B:  = Me.Caption
  loc_C2ED20: FLdRfVar var_194
  loc_C2ED23: FLdPr Me
  loc_C2ED26: VCallAd Control_ID_AlternLbl
  loc_C2ED29: FStAdFunc var_284
  loc_C2ED2C: FLdPr var_284
  loc_C2ED2F:  = Me.Caption
  loc_C2ED34: FLdZeroAd var_194
  loc_C2ED37: CVarStr var_2C4
  loc_C2ED3A: LitVarI2 var_2B4, 0
  loc_C2ED3F: ILdRf var_190
  loc_C2ED42: LitStr vbNullString
  loc_C2ED45: EqStr
  loc_C2ED47: CVarBoolI2 var_294
  loc_C2ED4B: FLdRfVar var_2D4
  loc_C2ED4E: ImpAdCallFPR4  = IIf(, , )
  loc_C2ED53: FLdRfVar var_214
  loc_C2ED56: FLdPr Me
  loc_C2ED59: VCallAd Control_ID_CucuPersTxt
  loc_C2ED5C: FStAdFunc var_2D8
  loc_C2ED5F: FLdPr var_2D8
  loc_C2ED62:  = Me.Text
  loc_C2ED67: FLdRfVar var_A0
  loc_C2ED6A: LitI2_Byte 0
  loc_C2ED6C: LitI2_Byte 0
  loc_C2ED6E: LitI2_Byte 0
  loc_C2ED70: LitI4 0
  loc_C2ED75: ILdRf var_214
  loc_C2ED78: FLdRfVar var_2D4
  loc_C2ED7B: CUI1Var
  loc_C2ED7D: FLdRfVar var_27C
  loc_C2ED80: CI2Var
  loc_C2ED81: FLdRfVar var_210
  loc_C2ED84: CI4Var
  loc_C2ED86: FLdRfVar var_1C8
  loc_C2ED89: CI4Var
  loc_C2ED8B: ILdRf var_170
  loc_C2ED8E: ILdRf var_168
  loc_C2ED91: CR8Str
  loc_C2ED93: PopFPR8
  loc_C2ED94: ILdRf var_164
  loc_C2ED97: CR8Str
  loc_C2ED99: PopFPR8
  loc_C2ED9A: ILdRf var_160
  loc_C2ED9D: CR8Str
  loc_C2ED9F: PopFPR8
  loc_C2EDA0: FLdRfVar var_15C
  loc_C2EDA3: CStrVarTmp
  loc_C2EDA4: FStStrNoPop var_2E4
  loc_C2EDA7: FLdRfVar var_14C
  loc_C2EDAA: CStrVarTmp
  loc_C2EDAB: FStStrNoPop var_2E0
  loc_C2EDAE: FLdRfVar var_13C
  loc_C2EDB1: CStrVarTmp
  loc_C2EDB2: FStStrNoPop var_2DC
  loc_C2EDB5: FLdRfVar var_124
  loc_C2EDB8: CStrVarTmp
  loc_C2EDB9: FStStrNoPop var_224
  loc_C2EDBC: CI4Str
  loc_C2EDBD: ILdRf var_90
  loc_C2EDC0: CI2Str
  loc_C2EDC2: FLdRfVar var_E8
  loc_C2EDC5: CStrVarTmp
  loc_C2EDC6: FStStrNoPop var_220
  loc_C2EDC9: FLdRfVar var_C8
  loc_C2EDCC: CStrVarTmp
  loc_C2EDCD: FStStrNoPop var_218
  loc_C2EDD0: FLdPr Me
  loc_C2EDD3: MemLdRfVar from_stack_1.global_52
  loc_C2EDD6: NewIfNullPr clsimputacion
  loc_C2EDD9: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2EDDE: ILdRf var_A0
  loc_C2EDE1: FLdPr Me
  loc_C2EDE4: MemStI4 global_68
  loc_C2EDE7: FFreeStr var_174 = "": var_17C = "": var_184 = "": var_190 = "": var_218 = "": var_220 = "": var_90 = "": var_224 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_160 = "": var_164 = "": var_168 = "": var_170 = ""
  loc_C2EE0A: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = ""
  loc_C2EE35: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_23C = "": var_25C = "": var_26C = "": var_294 = "": var_2B4 = "": var_2C4 = "": var_1C8 = "": var_210 = "": var_27C = ""
  loc_C2EE64: FLdPr Me
  loc_C2EE67: MemLdStr global_68
  loc_C2EE6A: LitI4 0
  loc_C2EE6F: EqI4
  loc_C2EE70: BranchF loc_C2EE83
  loc_C2EE73: LitI4 0
  loc_C2EE78: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2EE7B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2EE80: Branch loc_C2F31F
  loc_C2EE83: FLdPr Me
  loc_C2EE86: VCallAd Control_ID_CodiPartMsk
  loc_C2EE89: FStAdFunc var_98
  loc_C2EE8C: FLdPr var_98
  loc_C2EE8F: LateIdLdVar var_C8 DispID_22 0
  loc_C2EE96: PopAd
  loc_C2EE98: FLdPr Me
  loc_C2EE9B: VCallAd Control_ID_CodiOrgaMsk
  loc_C2EE9E: FStAdFunc var_A4
  loc_C2EEA1: FLdPr var_A4
  loc_C2EEA4: LateIdLdVar var_E8 DispID_22 0
  loc_C2EEAB: PopAd
  loc_C2EEAD: FLdRfVar var_90
  loc_C2EEB0: FLdPr Me
  loc_C2EEB3: VCallAd Control_ID_CodiUngaTxt
  loc_C2EEB6: FStAdFunc var_B8
  loc_C2EEB9: FLdPr var_B8
  loc_C2EEBC:  = Me.Text
  loc_C2EEC1: FLdPr Me
  loc_C2EEC4: VCallAd Control_ID_CodiInsuMsk
  loc_C2EEC7: FStAdFunc var_F0
  loc_C2EECA: FLdPr var_F0
  loc_C2EECD: LateIdLdVar var_124 DispID_22 0
  loc_C2EED4: PopAd
  loc_C2EED6: FLdPr Me
  loc_C2EED9: VCallAd Control_ID_CodiFifuMsk
  loc_C2EEDC: FStAdFunc var_F4
  loc_C2EEDF: FLdPr var_F4
  loc_C2EEE2: LateIdLdVar var_13C DispID_22 0
  loc_C2EEE9: PopAd
  loc_C2EEEB: FLdPr Me
  loc_C2EEEE: VCallAd Control_ID_FechDeveMsk
  loc_C2EEF1: FStAdFunc var_F8
  loc_C2EEF4: FLdPr var_F8
  loc_C2EEF7: LateIdLdVar var_14C DispID_15 0
  loc_C2EEFE: PopAd
  loc_C2EF00: FLdPr Me
  loc_C2EF03: VCallAd Control_ID_FefaDeveMsk
  loc_C2EF06: FStAdFunc var_FC
  loc_C2EF09: FLdPr var_FC
  loc_C2EF0C: LateIdLdVar var_15C DispID_15 0
  loc_C2EF13: PopAd
  loc_C2EF15: FLdPr Me
  loc_C2EF18: VCallAd Control_ID_ExorImpuMsk
  loc_C2EF1B: FStAdFunc var_100
  loc_C2EF1E: FLdPr var_100
  loc_C2EF21: LateIdLdVar var_1A8 DispID_15 0
  loc_C2EF28: PopAd
  loc_C2EF2A: FLdRfVar var_160
  loc_C2EF2D: FLdPr Me
  loc_C2EF30: VCallAd Control_ID_ExpeImpuTxt
  loc_C2EF33: FStAdFunc var_114
  loc_C2EF36: FLdPr var_114
  loc_C2EF39:  = Me.Text
  loc_C2EF3E: ILdRf var_160
  loc_C2EF41: ImpAdCallI2 Trim$()
  loc_C2EF46: FStStr var_404
  loc_C2EF49: FLdRfVar var_164
  loc_C2EF4C: FLdPr Me
  loc_C2EF4F: VCallAd Control_ID_CantImpuTxt
  loc_C2EF52: FStAdFunc var_16C
  loc_C2EF55: FLdPr var_16C
  loc_C2EF58:  = Me.Text
  loc_C2EF5D: FLdRfVar var_168
  loc_C2EF60: FLdPr Me
  loc_C2EF63: VCallAd Control_ID_ImunImpuTxt
  loc_C2EF66: FStAdFunc var_18C
  loc_C2EF69: FLdPr var_18C
  loc_C2EF6C:  = Me.Text
  loc_C2EF71: FLdRfVar var_170
  loc_C2EF74: FLdPr Me
  loc_C2EF77: VCallAd Control_ID_ImpoImpuTxt
  loc_C2EF7A: FStAdFunc var_198
  loc_C2EF7D: FLdPr var_198
  loc_C2EF80:  = Me.Text
  loc_C2EF85: FLdRfVar var_174
  loc_C2EF88: FLdPr Me
  loc_C2EF8B: VCallAd Control_ID_DetaImpuTxt
  loc_C2EF8E: FStAdFunc var_1CC
  loc_C2EF91: FLdPr var_1CC
  loc_C2EF94:  = Me.Text
  loc_C2EF99: FLdRfVar var_178
  loc_C2EF9C: FLdPr Me
  loc_C2EF9F: VCallAd Control_ID_CodiNopeLbl
  loc_C2EFA2: FStAdFunc var_1D0
  loc_C2EFA5: FLdPr var_1D0
  loc_C2EFA8:  = Me.Caption
  loc_C2EFAD: FLdRfVar var_17C
  loc_C2EFB0: FLdPr Me
  loc_C2EFB3: VCallAd Control_ID_CodiNopeLbl
  loc_C2EFB6: FStAdFunc var_21C
  loc_C2EFB9: FLdPr var_21C
  loc_C2EFBC:  = Me.Caption
  loc_C2EFC1: FLdZeroAd var_17C
  loc_C2EFC4: CVarStr var_1C8
  loc_C2EFC7: LitVarI2 var_1B8, 0
  loc_C2EFCC: ILdRf var_178
  loc_C2EFCF: LitStr vbNullString
  loc_C2EFD2: EqStr
  loc_C2EFD4: CVarBoolI2 var_B4
  loc_C2EFD8: FLdRfVar var_1F0
  loc_C2EFDB: ImpAdCallFPR4  = IIf(, , )
  loc_C2EFE0: FLdRfVar var_180
  loc_C2EFE3: FLdPr Me
  loc_C2EFE6: VCallAd Control_ID_CodiOrcoLbl
  loc_C2EFE9: FStAdFunc var_228
  loc_C2EFEC: FLdPr var_228
  loc_C2EFEF:  = Me.Caption
  loc_C2EFF4: FLdRfVar var_184
  loc_C2EFF7: FLdPr Me
  loc_C2EFFA: VCallAd Control_ID_CodiOrcoLbl
  loc_C2EFFD: FStAdFunc var_22C
  loc_C2F000: FLdPr var_22C
  loc_C2F003:  = Me.Caption
  loc_C2F008: FLdZeroAd var_184
  loc_C2F00B: CVarStr var_210
  loc_C2F00E: LitVarI2 var_200, 0
  loc_C2F013: ILdRf var_180
  loc_C2F016: LitStr vbNullString
  loc_C2F019: EqStr
  loc_C2F01B: CVarBoolI2 var_110
  loc_C2F01F: FLdRfVar var_25C
  loc_C2F022: ImpAdCallFPR4  = IIf(, , )
  loc_C2F027: FLdRfVar var_188
  loc_C2F02A: FLdPr Me
  loc_C2F02D: VCallAd Control_ID_CodiReceLbl
  loc_C2F030: FStAdFunc var_280
  loc_C2F033: FLdPr var_280
  loc_C2F036:  = Me.Caption
  loc_C2F03B: FLdRfVar var_190
  loc_C2F03E: FLdPr Me
  loc_C2F041: VCallAd Control_ID_CodiReceLbl
  loc_C2F044: FStAdFunc var_284
  loc_C2F047: FLdPr var_284
  loc_C2F04A:  = Me.Caption
  loc_C2F04F: FLdZeroAd var_190
  loc_C2F052: CVarStr var_27C
  loc_C2F055: LitVarI2 var_26C, 0
  loc_C2F05A: ILdRf var_188
  loc_C2F05D: LitStr vbNullString
  loc_C2F060: EqStr
  loc_C2F062: CVarBoolI2 var_23C
  loc_C2F066: FLdRfVar var_2B4
  loc_C2F069: ImpAdCallFPR4  = IIf(, , )
  loc_C2F06E: FLdRfVar var_194
  loc_C2F071: FLdPr Me
  loc_C2F074: VCallAd Control_ID_ItemLbl
  loc_C2F077: FStAdFunc var_2D8
  loc_C2F07A: FLdPr var_2D8
  loc_C2F07D:  = Me.Caption
  loc_C2F082: FLdRfVar var_214
  loc_C2F085: FLdPr Me
  loc_C2F088: VCallAd Control_ID_ItemLbl
  loc_C2F08B: FStAdFunc var_2F0
  loc_C2F08E: FLdPr var_2F0
  loc_C2F091:  = Me.Caption
  loc_C2F096: FLdZeroAd var_214
  loc_C2F099: CVarStr var_2D4
  loc_C2F09C: LitVarI2 var_2C4, 0
  loc_C2F0A1: ILdRf var_194
  loc_C2F0A4: LitStr vbNullString
  loc_C2F0A7: EqStr
  loc_C2F0A9: CVarBoolI2 var_294
  loc_C2F0AD: FLdRfVar var_300
  loc_C2F0B0: ImpAdCallFPR4  = IIf(, , )
  loc_C2F0B5: FLdRfVar var_218
  loc_C2F0B8: FLdPr Me
  loc_C2F0BB: VCallAd Control_ID_AlternLbl
  loc_C2F0BE: FStAdFunc var_304
  loc_C2F0C1: FLdPr var_304
  loc_C2F0C4:  = Me.Caption
  loc_C2F0C9: FLdRfVar var_220
  loc_C2F0CC: FLdPr Me
  loc_C2F0CF: VCallAd Control_ID_AlternLbl
  loc_C2F0D2: FStAdFunc var_308
  loc_C2F0D5: FLdPr var_308
  loc_C2F0D8:  = Me.Caption
  loc_C2F0DD: FLdZeroAd var_220
  loc_C2F0E0: CVarStr var_348
  loc_C2F0E3: LitVarI2 var_338, 0
  loc_C2F0E8: ILdRf var_218
  loc_C2F0EB: LitStr vbNullString
  loc_C2F0EE: EqStr
  loc_C2F0F0: CVarBoolI2 var_318
  loc_C2F0F4: FLdRfVar var_358
  loc_C2F0F7: ImpAdCallFPR4  = IIf(, , )
  loc_C2F0FC: FLdRfVar var_224
  loc_C2F0FF: FLdPr Me
  loc_C2F102: VCallAd Control_ID_CucuPersTxt
  loc_C2F105: FStAdFunc var_35C
  loc_C2F108: FLdPr var_35C
  loc_C2F10B:  = Me.Text
  loc_C2F110: FLdRfVar var_2DC
  loc_C2F113: FLdPr Me
  loc_C2F116: VCallAd Control_ID_TifaDeveCbo
  loc_C2F119: FStAdFunc var_360
  loc_C2F11C: FLdPr var_360
  loc_C2F11F:  = Me.Text
  loc_C2F124: FLdRfVar var_2E0
  loc_C2F127: FLdPr Me
  loc_C2F12A: VCallAd Control_ID_SufaDeveTxt
  loc_C2F12D: FStAdFunc var_364
  loc_C2F130: FLdPr var_364
  loc_C2F133:  = Me.Text
  loc_C2F138: LitI4 1
  loc_C2F13D: LitI4 1
  loc_C2F142: LitVarStr var_384, "0000"
  loc_C2F147: FStVarCopyObj var_394
  loc_C2F14A: FLdRfVar var_394
  loc_C2F14D: FLdZeroAd var_2E0
  loc_C2F150: CVarStr var_374
  loc_C2F153: ImpAdCallI2 Format$(, )
  loc_C2F158: FStStr var_408
  loc_C2F15B: FLdRfVar var_2E8
  loc_C2F15E: FLdPr Me
  loc_C2F161: VCallAd Control_ID_NufaDeveTxt
  loc_C2F164: FStAdFunc var_398
  loc_C2F167: FLdPr var_398
  loc_C2F16A:  = Me.Text
  loc_C2F16F: LitI4 1
  loc_C2F174: LitI4 1
  loc_C2F179: LitVarStr var_3B8, "00000000"
  loc_C2F17E: FStVarCopyObj var_3C8
  loc_C2F181: FLdRfVar var_3C8
  loc_C2F184: FLdZeroAd var_2E8
  loc_C2F187: CVarStr var_3A8
  loc_C2F18A: ImpAdCallI2 Format$(, )
  loc_C2F18F: FStStr var_40C
  loc_C2F192: FLdRfVar var_A0
  loc_C2F195: LitI2_Byte 0
  loc_C2F197: LitI2_Byte 0
  loc_C2F199: LitI2_Byte 0
  loc_C2F19B: LitStr vbNullString
  loc_C2F19E: LitI4 0
  loc_C2F1A3: ILdRf var_2DC
  loc_C2F1A6: FLdZeroAd var_408
  loc_C2F1A9: FStStrNoPop var_2E4
  loc_C2F1AC: ConcatStr
  loc_C2F1AD: FStStrNoPop var_2EC
  loc_C2F1B0: FLdZeroAd var_40C
  loc_C2F1B3: FStStrNoPop var_3CC
  loc_C2F1B6: ConcatStr
  loc_C2F1B7: FStStrNoPop var_400
  loc_C2F1BA: ILdRf var_224
  loc_C2F1BD: FLdRfVar var_358
  loc_C2F1C0: CStrVarVal var_3FC
  loc_C2F1C4: FLdRfVar var_300
  loc_C2F1C7: CStrVarVal var_3F8
  loc_C2F1CB: FLdRfVar var_2B4
  loc_C2F1CE: CI2Var
  loc_C2F1CF: FLdRfVar var_25C
  loc_C2F1D2: CStrVarVal var_3F4
  loc_C2F1D6: FLdRfVar var_1F0
  loc_C2F1D9: CStrVarVal var_3F0
  loc_C2F1DD: ILdRf var_174
  loc_C2F1E0: ILdRf var_170
  loc_C2F1E3: CR8Str
  loc_C2F1E5: PopFPR8
  loc_C2F1E6: ILdRf var_168
  loc_C2F1E9: CR8Str
  loc_C2F1EB: PopFPR8
  loc_C2F1EC: ILdRf var_164
  loc_C2F1EF: CR8Str
  loc_C2F1F1: PopFPR8
  loc_C2F1F2: FLdZeroAd var_404
  loc_C2F1F5: FStStrNoPop var_3EC
  loc_C2F1F8: FLdRfVar var_1A8
  loc_C2F1FB: CStrVarTmp
  loc_C2F1FC: FStStrNoPop var_3E8
  loc_C2F1FF: FLdRfVar var_15C
  loc_C2F202: CStrVarTmp
  loc_C2F203: FStStrNoPop var_3E4
  loc_C2F206: FLdRfVar var_14C
  loc_C2F209: CStrVarTmp
  loc_C2F20A: FStStrNoPop var_3E0
  loc_C2F20D: FLdRfVar var_13C
  loc_C2F210: CStrVarTmp
  loc_C2F211: FStStrNoPop var_3DC
  loc_C2F214: FLdRfVar var_124
  loc_C2F217: CStrVarTmp
  loc_C2F218: FStStrNoPop var_3D8
  loc_C2F21B: CI4Str
  loc_C2F21C: ILdRf var_90
  loc_C2F21F: CI2Str
  loc_C2F221: FLdRfVar var_E8
  loc_C2F224: CStrVarTmp
  loc_C2F225: FStStrNoPop var_3D4
  loc_C2F228: FLdRfVar var_C8
  loc_C2F22B: CStrVarTmp
  loc_C2F22C: FStStrNoPop var_3D0
  loc_C2F22F: FLdPr Me
  loc_C2F232: MemLdRfVar from_stack_1.global_52
  loc_C2F235: NewIfNullPr clsimputacion
  loc_C2F238: from_stack_16v = clsimputacion.AddNewDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2F23D: ILdRf var_A0
  loc_C2F240: FLdPr Me
  loc_C2F243: MemStI4 global_68
  loc_C2F246: FFreeStr var_408 = "": var_40C = "": var_160 = "": var_178 = "": var_180 = "": var_188 = "": var_194 = "": var_218 = "": var_2DC = "": var_2E4 = "": var_2EC = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_90 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_3E4 = "": var_3E8 = "": var_3EC = "": var_164 = "": var_168 = "": var_170 = "": var_174 = "": var_3F0 = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_224 = "": var_400 = ""
  loc_C2F289: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = "": var_364 = ""
  loc_C2F2C2: FFreeVar var_358 = "": var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_B4 = "": var_1B8 = "": var_1C8 = "": var_110 = "": var_200 = "": var_210 = "": var_23C = "": var_26C = "": var_27C = "": var_294 = "": var_2C4 = "": var_2D4 = "": var_318 = "": var_338 = "": var_348 = "": var_374 = "": var_394 = "": var_3A8 = "": var_3C8 = "": var_1F0 = "": var_25C = "": var_2B4 = ""
  loc_C2F303: FLdPr Me
  loc_C2F306: MemLdStr global_68
  loc_C2F309: LitI4 0
  loc_C2F30E: EqI4
  loc_C2F30F: BranchF loc_C2F31F
  loc_C2F312: LitI4 0
  loc_C2F317: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2F31A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2F31F: Branch loc_C2FF01
  loc_C2F322: ILdRf var_12C
  loc_C2F325: LitI4 7
  loc_C2F32A: EqI4
  loc_C2F32B: BranchF loc_C2FF01
  loc_C2F32E: FLdRfVar var_160
  loc_C2F331: FLdPr Me
  loc_C2F334: VCallAd Control_ID_SaldImpuLbl
  loc_C2F337: FStAdFunc var_A4
  loc_C2F33A: FLdPr var_A4
  loc_C2F33D:  = Me.Caption
  loc_C2F342: FLdRfVar var_90
  loc_C2F345: FLdPr Me
  loc_C2F348: VCallAd Control_ID_ImpoImpuTxt
  loc_C2F34B: FStAdFunc var_98
  loc_C2F34E: FLdPr var_98
  loc_C2F351:  = Me.Text
  loc_C2F356: ILdRf var_90
  loc_C2F359: CR8Str
  loc_C2F35B: ILdRf var_160
  loc_C2F35E: CR8Str
  loc_C2F360: LtR8
  loc_C2F361: FFreeStr var_90 = ""
  loc_C2F368: FFreeAd var_98 = ""
  loc_C2F36F: BranchF loc_C2FA61
  loc_C2F372: FLdRfVar var_90
  loc_C2F375: FLdPr Me
  loc_C2F378: VCallAd Control_ID_SaldImpuLbl
  loc_C2F37B: FStAdFunc var_98
  loc_C2F37E: FLdPr var_98
  loc_C2F381:  = Me.Caption
  loc_C2F386: FLdRfVar var_160
  loc_C2F389: FLdPr Me
  loc_C2F38C: VCallAd Control_ID_ImpoImpuTxt
  loc_C2F38F: FStAdFunc var_A4
  loc_C2F392: FLdPr var_A4
  loc_C2F395:  = Me.Text
  loc_C2F39A: LitI4 1
  loc_C2F39F: LitI4 1
  loc_C2F3A4: LitVarStr var_D8, "currency"
  loc_C2F3A9: FStVarCopyObj var_E8
  loc_C2F3AC: FLdRfVar var_E8
  loc_C2F3AF: ILdRf var_90
  loc_C2F3B2: CR8Str
  loc_C2F3B4: ILdRf var_160
  loc_C2F3B7: CR8Str
  loc_C2F3B9: SubR4
  loc_C2F3BA: FnCDblR8
  loc_C2F3BC: CVarR8
  loc_C2F3C0: ImpAdCallI2 Format$(, )
  loc_C2F3C5: FStStr var_174
  loc_C2F3C8: LitI2_Byte 0
  loc_C2F3CA: PopTmpLdAd2 var_126
  loc_C2F3CD: LitI2_Byte &HFF
  loc_C2F3CF: PopTmpLdAd2 var_9A
  loc_C2F3D2: LitStr "¿Desafecta el saldo de la definitiva de "
  loc_C2F3D5: FLdZeroAd var_174
  loc_C2F3D8: FStStrNoPop var_164
  loc_C2F3DB: ConcatStr
  loc_C2F3DC: FStStrNoPop var_168
  loc_C2F3DF: LitStr " ?"
  loc_C2F3E2: ConcatStr
  loc_C2F3E3: FStStrNoPop var_170
  loc_C2F3E6: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2F3EB: CI4UI1
  loc_C2F3EC: LitI4 6
  loc_C2F3F1: EqI4
  loc_C2F3F2: FFreeStr var_90 = "": var_160 = "": var_164 = "": var_168 = "": var_170 = ""
  loc_C2F401: FFreeAd var_98 = ""
  loc_C2F408: FFreeVar var_C8 = ""
  loc_C2F40F: BranchF loc_C2FA61
  loc_C2F412: FLdPr Me
  loc_C2F415: VCallAd Control_ID_CodiPartMsk
  loc_C2F418: FStAdFunc var_98
  loc_C2F41B: FLdPr var_98
  loc_C2F41E: LateIdLdVar var_C8 DispID_22 0
  loc_C2F425: PopAd
  loc_C2F427: FLdPr Me
  loc_C2F42A: VCallAd Control_ID_CodiOrgaMsk
  loc_C2F42D: FStAdFunc var_A4
  loc_C2F430: FLdPr var_A4
  loc_C2F433: LateIdLdVar var_E8 DispID_22 0
  loc_C2F43A: PopAd
  loc_C2F43C: FLdRfVar var_90
  loc_C2F43F: FLdPr Me
  loc_C2F442: VCallAd Control_ID_CodiUngaTxt
  loc_C2F445: FStAdFunc var_B8
  loc_C2F448: FLdPr var_B8
  loc_C2F44B:  = Me.Text
  loc_C2F450: FLdPr Me
  loc_C2F453: VCallAd Control_ID_CodiInsuMsk
  loc_C2F456: FStAdFunc var_F0
  loc_C2F459: FLdPr var_F0
  loc_C2F45C: LateIdLdVar var_124 DispID_22 0
  loc_C2F463: PopAd
  loc_C2F465: FLdPr Me
  loc_C2F468: VCallAd Control_ID_CodiFifuMsk
  loc_C2F46B: FStAdFunc var_F4
  loc_C2F46E: FLdPr var_F4
  loc_C2F471: LateIdLdVar var_13C DispID_22 0
  loc_C2F478: PopAd
  loc_C2F47A: FLdPr Me
  loc_C2F47D: VCallAd Control_ID_FechDeveMsk
  loc_C2F480: FStAdFunc var_F8
  loc_C2F483: FLdPr var_F8
  loc_C2F486: LateIdLdVar var_14C DispID_15 0
  loc_C2F48D: PopAd
  loc_C2F48F: FLdPr Me
  loc_C2F492: VCallAd Control_ID_ExorImpuMsk
  loc_C2F495: FStAdFunc var_FC
  loc_C2F498: FLdPr var_FC
  loc_C2F49B: LateIdLdVar var_15C DispID_15 0
  loc_C2F4A2: PopAd
  loc_C2F4A4: FLdRfVar var_160
  loc_C2F4A7: FLdPr Me
  loc_C2F4AA: VCallAd Control_ID_SaldImpuLbl
  loc_C2F4AD: FStAdFunc var_100
  loc_C2F4B0: FLdPr var_100
  loc_C2F4B3:  = Me.Caption
  loc_C2F4B8: FLdRfVar var_164
  loc_C2F4BB: FLdPr Me
  loc_C2F4BE: VCallAd Control_ID_ImpoImpuTxt
  loc_C2F4C1: FStAdFunc var_114
  loc_C2F4C4: FLdPr var_114
  loc_C2F4C7:  = Me.Text
  loc_C2F4CC: FLdRfVar var_168
  loc_C2F4CF: FLdPr Me
  loc_C2F4D2: VCallAd Control_ID_SaldImpuLbl
  loc_C2F4D5: FStAdFunc var_16C
  loc_C2F4D8: FLdPr var_16C
  loc_C2F4DB:  = Me.Caption
  loc_C2F4E0: FLdRfVar var_170
  loc_C2F4E3: FLdPr Me
  loc_C2F4E6: VCallAd Control_ID_ImpoImpuTxt
  loc_C2F4E9: FStAdFunc var_18C
  loc_C2F4EC: FLdPr var_18C
  loc_C2F4EF:  = Me.Text
  loc_C2F4F4: FLdRfVar var_174
  loc_C2F4F7: FLdPr Me
  loc_C2F4FA: VCallAd Control_ID_DetaImpuTxt
  loc_C2F4FD: FStAdFunc var_198
  loc_C2F500: FLdPr var_198
  loc_C2F503:  = Me.Text
  loc_C2F508: FLdRfVar var_178
  loc_C2F50B: FLdPr Me
  loc_C2F50E: VCallAd Control_ID_CodiNopeLbl
  loc_C2F511: FStAdFunc var_1CC
  loc_C2F514: FLdPr var_1CC
  loc_C2F517:  = Me.Caption
  loc_C2F51C: FLdRfVar var_17C
  loc_C2F51F: FLdPr Me
  loc_C2F522: VCallAd Control_ID_CodiNopeLbl
  loc_C2F525: FStAdFunc var_1D0
  loc_C2F528: FLdPr var_1D0
  loc_C2F52B:  = Me.Caption
  loc_C2F530: FLdZeroAd var_17C
  loc_C2F533: CVarStr var_1B8
  loc_C2F536: LitVarI2 var_1A8, 0
  loc_C2F53B: ILdRf var_178
  loc_C2F53E: LitStr vbNullString
  loc_C2F541: EqStr
  loc_C2F543: CVarBoolI2 var_B4
  loc_C2F547: FLdRfVar var_1C8
  loc_C2F54A: ImpAdCallFPR4  = IIf(, , )
  loc_C2F54F: FLdRfVar var_180
  loc_C2F552: FLdPr Me
  loc_C2F555: VCallAd Control_ID_CodiOrcoLbl
  loc_C2F558: FStAdFunc var_21C
  loc_C2F55B: FLdPr var_21C
  loc_C2F55E:  = Me.Caption
  loc_C2F563: FLdRfVar var_184
  loc_C2F566: FLdPr Me
  loc_C2F569: VCallAd Control_ID_CodiOrcoLbl
  loc_C2F56C: FStAdFunc var_228
  loc_C2F56F: FLdPr var_228
  loc_C2F572:  = Me.Caption
  loc_C2F577: FLdZeroAd var_184
  loc_C2F57A: CVarStr var_200
  loc_C2F57D: LitVarI2 var_1F0, 0
  loc_C2F582: ILdRf var_180
  loc_C2F585: LitStr vbNullString
  loc_C2F588: EqStr
  loc_C2F58A: CVarBoolI2 var_110
  loc_C2F58E: FLdRfVar var_210
  loc_C2F591: ImpAdCallFPR4  = IIf(, , )
  loc_C2F596: FLdRfVar var_188
  loc_C2F599: FLdPr Me
  loc_C2F59C: VCallAd Control_ID_ItemLbl
  loc_C2F59F: FStAdFunc var_22C
  loc_C2F5A2: FLdPr var_22C
  loc_C2F5A5:  = Me.Caption
  loc_C2F5AA: FLdRfVar var_190
  loc_C2F5AD: FLdPr Me
  loc_C2F5B0: VCallAd Control_ID_ItemLbl
  loc_C2F5B3: FStAdFunc var_280
  loc_C2F5B6: FLdPr var_280
  loc_C2F5B9:  = Me.Caption
  loc_C2F5BE: FLdZeroAd var_190
  loc_C2F5C1: CVarStr var_26C
  loc_C2F5C4: LitVarI2 var_25C, 0
  loc_C2F5C9: ILdRf var_188
  loc_C2F5CC: LitStr vbNullString
  loc_C2F5CF: EqStr
  loc_C2F5D1: CVarBoolI2 var_23C
  loc_C2F5D5: FLdRfVar var_27C
  loc_C2F5D8: ImpAdCallFPR4  = IIf(, , )
  loc_C2F5DD: FLdRfVar var_194
  loc_C2F5E0: FLdPr Me
  loc_C2F5E3: VCallAd Control_ID_AlternLbl
  loc_C2F5E6: FStAdFunc var_284
  loc_C2F5E9: FLdPr var_284
  loc_C2F5EC:  = Me.Caption
  loc_C2F5F1: FLdRfVar var_214
  loc_C2F5F4: FLdPr Me
  loc_C2F5F7: VCallAd Control_ID_AlternLbl
  loc_C2F5FA: FStAdFunc var_2D8
  loc_C2F5FD: FLdPr var_2D8
  loc_C2F600:  = Me.Caption
  loc_C2F605: FLdZeroAd var_214
  loc_C2F608: CVarStr var_2C4
  loc_C2F60B: LitVarI2 var_2B4, 0
  loc_C2F610: ILdRf var_194
  loc_C2F613: LitStr vbNullString
  loc_C2F616: EqStr
  loc_C2F618: CVarBoolI2 var_294
  loc_C2F61C: FLdRfVar var_2D4
  loc_C2F61F: ImpAdCallFPR4  = IIf(, , )
  loc_C2F624: FLdRfVar var_218
  loc_C2F627: FLdPr Me
  loc_C2F62A: VCallAd Control_ID_CucuPersTxt
  loc_C2F62D: FStAdFunc var_2F0
  loc_C2F630: FLdPr var_2F0
  loc_C2F633:  = Me.Text
  loc_C2F638: FLdRfVar var_A0
  loc_C2F63B: LitI2_Byte 0
  loc_C2F63D: LitI2_Byte 0
  loc_C2F63F: LitI4 0
  loc_C2F644: ILdRf var_218
  loc_C2F647: FLdRfVar var_2D4
  loc_C2F64A: CUI1Var
  loc_C2F64C: FLdRfVar var_27C
  loc_C2F64F: CI2Var
  loc_C2F650: FLdRfVar var_210
  loc_C2F653: CI4Var
  loc_C2F655: FLdRfVar var_1C8
  loc_C2F658: CI4Var
  loc_C2F65A: ILdRf var_174
  loc_C2F65D: ILdRf var_168
  loc_C2F660: CR8Str
  loc_C2F662: ILdRf var_170
  loc_C2F665: CR8Str
  loc_C2F667: SubR4
  loc_C2F668: FnCDblR8
  loc_C2F66A: PopFPR8
  loc_C2F66B: ILdRf var_160
  loc_C2F66E: CR8Str
  loc_C2F670: ILdRf var_164
  loc_C2F673: CR8Str
  loc_C2F675: SubR4
  loc_C2F676: FnCDblR8
  loc_C2F678: PopFPR8
  loc_C2F679: LitStr "1"
  loc_C2F67C: CR8Str
  loc_C2F67E: PopFPR8
  loc_C2F67F: FLdRfVar var_15C
  loc_C2F682: CStrVarTmp
  loc_C2F683: FStStrNoPop var_2E8
  loc_C2F686: FLdRfVar var_14C
  loc_C2F689: CStrVarTmp
  loc_C2F68A: FStStrNoPop var_2E4
  loc_C2F68D: FLdRfVar var_13C
  loc_C2F690: CStrVarTmp
  loc_C2F691: FStStrNoPop var_2E0
  loc_C2F694: FLdRfVar var_124
  loc_C2F697: CStrVarTmp
  loc_C2F698: FStStrNoPop var_2DC
  loc_C2F69B: CI4Str
  loc_C2F69C: ILdRf var_90
  loc_C2F69F: CI2Str
  loc_C2F6A1: FLdRfVar var_E8
  loc_C2F6A4: CStrVarTmp
  loc_C2F6A5: FStStrNoPop var_224
  loc_C2F6A8: FLdRfVar var_C8
  loc_C2F6AB: CStrVarTmp
  loc_C2F6AC: FStStrNoPop var_220
  loc_C2F6AF: FLdPr Me
  loc_C2F6B2: MemLdRfVar from_stack_1.global_52
  loc_C2F6B5: NewIfNullPr clsimputacion
  loc_C2F6B8: from_stack_16v = clsimputacion.DesafectarDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2F6BD: ILdRf var_A0
  loc_C2F6C0: FLdPr Me
  loc_C2F6C3: MemStI4 global_68
  loc_C2F6C6: FFreeStr var_160 = "": var_164 = "": var_168 = "": var_170 = "": var_178 = "": var_180 = "": var_188 = "": var_194 = "": var_220 = "": var_224 = "": var_90 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2E8 = "": var_174 = ""
  loc_C2F6EB: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_2D8 = ""
  loc_C2F718: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_23C = "": var_25C = "": var_26C = "": var_294 = "": var_2B4 = "": var_2C4 = "": var_1C8 = "": var_210 = "": var_27C = ""
  loc_C2F747: FLdPr Me
  loc_C2F74A: MemLdStr global_68
  loc_C2F74D: LitI4 0
  loc_C2F752: EqI4
  loc_C2F753: BranchF loc_C2F766
  loc_C2F756: LitI4 0
  loc_C2F75B: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2F75E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2F763: Branch loc_C2FA61
  loc_C2F766: FLdRfVar var_90
  loc_C2F769: FLdPr Me
  loc_C2F76C: VCallAd Control_ID_SaldImpuLbl
  loc_C2F76F: FStAdFunc var_98
  loc_C2F772: FLdPr var_98
  loc_C2F775:  = Me.Caption
  loc_C2F77A: LitI4 1
  loc_C2F77F: LitI4 1
  loc_C2F784: LitVarStr var_B4, "currency"
  loc_C2F789: FStVarCopyObj var_E8
  loc_C2F78C: FLdRfVar var_E8
  loc_C2F78F: FLdZeroAd var_90
  loc_C2F792: CVarStr var_C8
  loc_C2F795: ImpAdCallI2 Format$(, )
  loc_C2F79A: FStStr var_170
  loc_C2F79D: LitI2_Byte 0
  loc_C2F79F: PopTmpLdAd2 var_126
  loc_C2F7A2: LitI2_Byte &HFF
  loc_C2F7A4: PopTmpLdAd2 var_9A
  loc_C2F7A7: LitStr "¿Desafecta también el saldo de la preventiva de "
  loc_C2F7AA: FLdZeroAd var_170
  loc_C2F7AD: FStStrNoPop var_160
  loc_C2F7B0: ConcatStr
  loc_C2F7B1: FStStrNoPop var_164
  loc_C2F7B4: LitStr " ?"
  loc_C2F7B7: ConcatStr
  loc_C2F7B8: FStStrNoPop var_168
  loc_C2F7BB: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2F7C0: CI4UI1
  loc_C2F7C1: LitI4 6
  loc_C2F7C6: EqI4
  loc_C2F7C7: FFreeStr var_160 = "": var_164 = "": var_168 = ""
  loc_C2F7D2: FFree1Ad var_98
  loc_C2F7D5: FFreeVar var_C8 = ""
  loc_C2F7DC: BranchF loc_C2FA61
  loc_C2F7DF: FLdPr Me
  loc_C2F7E2: VCallAd Control_ID_CodiPartMsk
  loc_C2F7E5: FStAdFunc var_98
  loc_C2F7E8: FLdPr var_98
  loc_C2F7EB: LateIdLdVar var_C8 DispID_22 0
  loc_C2F7F2: PopAd
  loc_C2F7F4: FLdPr Me
  loc_C2F7F7: VCallAd Control_ID_CodiOrgaMsk
  loc_C2F7FA: FStAdFunc var_A4
  loc_C2F7FD: FLdPr var_A4
  loc_C2F800: LateIdLdVar var_E8 DispID_22 0
  loc_C2F807: PopAd
  loc_C2F809: FLdRfVar var_90
  loc_C2F80C: FLdPr Me
  loc_C2F80F: VCallAd Control_ID_CodiUngaTxt
  loc_C2F812: FStAdFunc var_B8
  loc_C2F815: FLdPr var_B8
  loc_C2F818:  = Me.Text
  loc_C2F81D: FLdPr Me
  loc_C2F820: VCallAd Control_ID_CodiInsuMsk
  loc_C2F823: FStAdFunc var_F0
  loc_C2F826: FLdPr var_F0
  loc_C2F829: LateIdLdVar var_124 DispID_22 0
  loc_C2F830: PopAd
  loc_C2F832: FLdPr Me
  loc_C2F835: VCallAd Control_ID_CodiFifuMsk
  loc_C2F838: FStAdFunc var_F4
  loc_C2F83B: FLdPr var_F4
  loc_C2F83E: LateIdLdVar var_13C DispID_22 0
  loc_C2F845: PopAd
  loc_C2F847: FLdPr Me
  loc_C2F84A: VCallAd Control_ID_FechDeveMsk
  loc_C2F84D: FStAdFunc var_F8
  loc_C2F850: FLdPr var_F8
  loc_C2F853: LateIdLdVar var_14C DispID_15 0
  loc_C2F85A: PopAd
  loc_C2F85C: FLdPr Me
  loc_C2F85F: VCallAd Control_ID_ExorImpuMsk
  loc_C2F862: FStAdFunc var_FC
  loc_C2F865: FLdPr var_FC
  loc_C2F868: LateIdLdVar var_15C DispID_15 0
  loc_C2F86F: PopAd
  loc_C2F871: FLdRfVar var_160
  loc_C2F874: FLdPr Me
  loc_C2F877: VCallAd Control_ID_SaldImpuLbl
  loc_C2F87A: FStAdFunc var_100
  loc_C2F87D: FLdPr var_100
  loc_C2F880:  = Me.Caption
  loc_C2F885: FLdRfVar var_164
  loc_C2F888: FLdPr Me
  loc_C2F88B: VCallAd Control_ID_ImpoImpuTxt
  loc_C2F88E: FStAdFunc var_114
  loc_C2F891: FLdPr var_114
  loc_C2F894:  = Me.Text
  loc_C2F899: FLdRfVar var_168
  loc_C2F89C: FLdPr Me
  loc_C2F89F: VCallAd Control_ID_SaldImpuLbl
  loc_C2F8A2: FStAdFunc var_16C
  loc_C2F8A5: FLdPr var_16C
  loc_C2F8A8:  = Me.Caption
  loc_C2F8AD: FLdRfVar var_170
  loc_C2F8B0: FLdPr Me
  loc_C2F8B3: VCallAd Control_ID_ImpoImpuTxt
  loc_C2F8B6: FStAdFunc var_18C
  loc_C2F8B9: FLdPr var_18C
  loc_C2F8BC:  = Me.Text
  loc_C2F8C1: FLdRfVar var_174
  loc_C2F8C4: FLdPr Me
  loc_C2F8C7: VCallAd Control_ID_DetaImpuTxt
  loc_C2F8CA: FStAdFunc var_198
  loc_C2F8CD: FLdPr var_198
  loc_C2F8D0:  = Me.Text
  loc_C2F8D5: FLdRfVar var_178
  loc_C2F8D8: FLdPr Me
  loc_C2F8DB: VCallAd Control_ID_CodiNopeLbl
  loc_C2F8DE: FStAdFunc var_1CC
  loc_C2F8E1: FLdPr var_1CC
  loc_C2F8E4:  = Me.Caption
  loc_C2F8E9: FLdRfVar var_17C
  loc_C2F8EC: FLdPr Me
  loc_C2F8EF: VCallAd Control_ID_CodiNopeLbl
  loc_C2F8F2: FStAdFunc var_1D0
  loc_C2F8F5: FLdPr var_1D0
  loc_C2F8F8:  = Me.Caption
  loc_C2F8FD: FLdZeroAd var_17C
  loc_C2F900: CVarStr var_1B8
  loc_C2F903: LitVarI2 var_1A8, 0
  loc_C2F908: ILdRf var_178
  loc_C2F90B: LitStr vbNullString
  loc_C2F90E: EqStr
  loc_C2F910: CVarBoolI2 var_B4
  loc_C2F914: FLdRfVar var_1C8
  loc_C2F917: ImpAdCallFPR4  = IIf(, , )
  loc_C2F91C: FLdRfVar var_180
  loc_C2F91F: FLdPr Me
  loc_C2F922: VCallAd Control_ID_ItemLbl
  loc_C2F925: FStAdFunc var_21C
  loc_C2F928: FLdPr var_21C
  loc_C2F92B:  = Me.Caption
  loc_C2F930: FLdRfVar var_184
  loc_C2F933: FLdPr Me
  loc_C2F936: VCallAd Control_ID_ItemLbl
  loc_C2F939: FStAdFunc var_228
  loc_C2F93C: FLdPr var_228
  loc_C2F93F:  = Me.Caption
  loc_C2F944: FLdZeroAd var_184
  loc_C2F947: CVarStr var_200
  loc_C2F94A: LitVarI2 var_1F0, 0
  loc_C2F94F: ILdRf var_180
  loc_C2F952: LitStr vbNullString
  loc_C2F955: EqStr
  loc_C2F957: CVarBoolI2 var_110
  loc_C2F95B: FLdRfVar var_210
  loc_C2F95E: ImpAdCallFPR4  = IIf(, , )
  loc_C2F963: FLdRfVar var_A0
  loc_C2F966: LitI2_Byte 0
  loc_C2F968: LitI2_Byte 0
  loc_C2F96A: LitI4 0
  loc_C2F96F: FLdRfVar var_210
  loc_C2F972: CI2Var
  loc_C2F973: FLdRfVar var_1C8
  loc_C2F976: CI4Var
  loc_C2F978: ILdRf var_174
  loc_C2F97B: ILdRf var_168
  loc_C2F97E: CR8Str
  loc_C2F980: ILdRf var_170
  loc_C2F983: CR8Str
  loc_C2F985: SubR4
  loc_C2F986: FnCDblR8
  loc_C2F988: PopFPR8
  loc_C2F989: ILdRf var_160
  loc_C2F98C: CR8Str
  loc_C2F98E: ILdRf var_164
  loc_C2F991: CR8Str
  loc_C2F993: SubR4
  loc_C2F994: FnCDblR8
  loc_C2F996: PopFPR8
  loc_C2F997: LitStr "1"
  loc_C2F99A: CR8Str
  loc_C2F99C: PopFPR8
  loc_C2F99D: FLdRfVar var_15C
  loc_C2F9A0: CStrVarTmp
  loc_C2F9A1: FStStrNoPop var_220
  loc_C2F9A4: FLdRfVar var_14C
  loc_C2F9A7: CStrVarTmp
  loc_C2F9A8: FStStrNoPop var_218
  loc_C2F9AB: FLdRfVar var_13C
  loc_C2F9AE: CStrVarTmp
  loc_C2F9AF: FStStrNoPop var_214
  loc_C2F9B2: FLdRfVar var_124
  loc_C2F9B5: CStrVarTmp
  loc_C2F9B6: FStStrNoPop var_194
  loc_C2F9B9: CI4Str
  loc_C2F9BA: ILdRf var_90
  loc_C2F9BD: CI2Str
  loc_C2F9BF: FLdRfVar var_E8
  loc_C2F9C2: CStrVarTmp
  loc_C2F9C3: FStStrNoPop var_190
  loc_C2F9C6: FLdRfVar var_C8
  loc_C2F9C9: CStrVarTmp
  loc_C2F9CA: FStStrNoPop var_188
  loc_C2F9CD: FLdPr Me
  loc_C2F9D0: MemLdRfVar from_stack_1.global_52
  loc_C2F9D3: NewIfNullPr clsimputacion
  loc_C2F9D6: from_stack_16v = clsimputacion.DesafectarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2F9DB: ILdRf var_A0
  loc_C2F9DE: FLdPr Me
  loc_C2F9E1: MemStI4 global_68
  loc_C2F9E4: FFreeStr var_160 = "": var_164 = "": var_168 = "": var_170 = "": var_178 = "": var_180 = "": var_188 = "": var_190 = "": var_90 = "": var_194 = "": var_214 = "": var_218 = "": var_220 = ""
  loc_C2FA03: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = ""
  loc_C2FA26: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_B4 = "": var_1A8 = "": var_1B8 = "": var_110 = "": var_1F0 = "": var_200 = "": var_1C8 = ""
  loc_C2FA45: FLdPr Me
  loc_C2FA48: MemLdStr global_68
  loc_C2FA4B: LitI4 0
  loc_C2FA50: EqI4
  loc_C2FA51: BranchF loc_C2FA61
  loc_C2FA54: LitI4 0
  loc_C2FA59: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2FA5C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2FA61: FLdPr Me
  loc_C2FA64: VCallAd Control_ID_CodiPartMsk
  loc_C2FA67: FStAdFunc var_98
  loc_C2FA6A: FLdPr var_98
  loc_C2FA6D: LateIdLdVar var_C8 DispID_22 0
  loc_C2FA74: PopAd
  loc_C2FA76: FLdPr Me
  loc_C2FA79: VCallAd Control_ID_CodiOrgaMsk
  loc_C2FA7C: FStAdFunc var_A4
  loc_C2FA7F: FLdPr var_A4
  loc_C2FA82: LateIdLdVar var_E8 DispID_22 0
  loc_C2FA89: PopAd
  loc_C2FA8B: FLdRfVar var_90
  loc_C2FA8E: FLdPr Me
  loc_C2FA91: VCallAd Control_ID_CodiUngaTxt
  loc_C2FA94: FStAdFunc var_B8
  loc_C2FA97: FLdPr var_B8
  loc_C2FA9A:  = Me.Text
  loc_C2FA9F: FLdPr Me
  loc_C2FAA2: VCallAd Control_ID_CodiInsuMsk
  loc_C2FAA5: FStAdFunc var_F0
  loc_C2FAA8: FLdPr var_F0
  loc_C2FAAB: LateIdLdVar var_124 DispID_22 0
  loc_C2FAB2: PopAd
  loc_C2FAB4: FLdPr Me
  loc_C2FAB7: VCallAd Control_ID_CodiFifuMsk
  loc_C2FABA: FStAdFunc var_F4
  loc_C2FABD: FLdPr var_F4
  loc_C2FAC0: LateIdLdVar var_13C DispID_22 0
  loc_C2FAC7: PopAd
  loc_C2FAC9: FLdPr Me
  loc_C2FACC: VCallAd Control_ID_FechDeveMsk
  loc_C2FACF: FStAdFunc var_F8
  loc_C2FAD2: FLdPr var_F8
  loc_C2FAD5: LateIdLdVar var_14C DispID_15 0
  loc_C2FADC: PopAd
  loc_C2FADE: FLdPr Me
  loc_C2FAE1: VCallAd Control_ID_FefaDeveMsk
  loc_C2FAE4: FStAdFunc var_FC
  loc_C2FAE7: FLdPr var_FC
  loc_C2FAEA: LateIdLdVar var_15C DispID_15 0
  loc_C2FAF1: PopAd
  loc_C2FAF3: FLdPr Me
  loc_C2FAF6: VCallAd Control_ID_ExorImpuMsk
  loc_C2FAF9: FStAdFunc var_100
  loc_C2FAFC: FLdPr var_100
  loc_C2FAFF: LateIdLdVar var_1A8 DispID_15 0
  loc_C2FB06: PopAd
  loc_C2FB08: FLdRfVar var_160
  loc_C2FB0B: FLdPr Me
  loc_C2FB0E: VCallAd Control_ID_ExpeImpuTxt
  loc_C2FB11: FStAdFunc var_114
  loc_C2FB14: FLdPr var_114
  loc_C2FB17:  = Me.Text
  loc_C2FB1C: ILdRf var_160
  loc_C2FB1F: ImpAdCallI2 Trim$()
  loc_C2FB24: FStStr var_3F8
  loc_C2FB27: FLdRfVar var_164
  loc_C2FB2A: FLdPr Me
  loc_C2FB2D: VCallAd Control_ID_CantImpuTxt
  loc_C2FB30: FStAdFunc var_16C
  loc_C2FB33: FLdPr var_16C
  loc_C2FB36:  = Me.Text
  loc_C2FB3B: FLdRfVar var_168
  loc_C2FB3E: FLdPr Me
  loc_C2FB41: VCallAd Control_ID_ImunImpuTxt
  loc_C2FB44: FStAdFunc var_18C
  loc_C2FB47: FLdPr var_18C
  loc_C2FB4A:  = Me.Text
  loc_C2FB4F: FLdRfVar var_170
  loc_C2FB52: FLdPr Me
  loc_C2FB55: VCallAd Control_ID_ImpoImpuTxt
  loc_C2FB58: FStAdFunc var_198
  loc_C2FB5B: FLdPr var_198
  loc_C2FB5E:  = Me.Text
  loc_C2FB63: FLdRfVar var_174
  loc_C2FB66: FLdPr Me
  loc_C2FB69: VCallAd Control_ID_DetaImpuTxt
  loc_C2FB6C: FStAdFunc var_1CC
  loc_C2FB6F: FLdPr var_1CC
  loc_C2FB72:  = Me.Text
  loc_C2FB77: FLdRfVar var_178
  loc_C2FB7A: FLdPr Me
  loc_C2FB7D: VCallAd Control_ID_CodiNopeLbl
  loc_C2FB80: FStAdFunc var_1D0
  loc_C2FB83: FLdPr var_1D0
  loc_C2FB86:  = Me.Caption
  loc_C2FB8B: FLdRfVar var_17C
  loc_C2FB8E: FLdPr Me
  loc_C2FB91: VCallAd Control_ID_CodiNopeLbl
  loc_C2FB94: FStAdFunc var_21C
  loc_C2FB97: FLdPr var_21C
  loc_C2FB9A:  = Me.Caption
  loc_C2FB9F: FLdZeroAd var_17C
  loc_C2FBA2: CVarStr var_1C8
  loc_C2FBA5: LitVarI2 var_1B8, 0
  loc_C2FBAA: ILdRf var_178
  loc_C2FBAD: LitStr vbNullString
  loc_C2FBB0: EqStr
  loc_C2FBB2: CVarBoolI2 var_B4
  loc_C2FBB6: FLdRfVar var_1F0
  loc_C2FBB9: ImpAdCallFPR4  = IIf(, , )
  loc_C2FBBE: FLdRfVar var_180
  loc_C2FBC1: FLdPr Me
  loc_C2FBC4: VCallAd Control_ID_CodiOrcoLbl
  loc_C2FBC7: FStAdFunc var_228
  loc_C2FBCA: FLdPr var_228
  loc_C2FBCD:  = Me.Caption
  loc_C2FBD2: FLdRfVar var_184
  loc_C2FBD5: FLdPr Me
  loc_C2FBD8: VCallAd Control_ID_CodiOrcoLbl
  loc_C2FBDB: FStAdFunc var_22C
  loc_C2FBDE: FLdPr var_22C
  loc_C2FBE1:  = Me.Caption
  loc_C2FBE6: FLdZeroAd var_184
  loc_C2FBE9: CVarStr var_210
  loc_C2FBEC: LitVarI2 var_200, 0
  loc_C2FBF1: ILdRf var_180
  loc_C2FBF4: LitStr vbNullString
  loc_C2FBF7: EqStr
  loc_C2FBF9: CVarBoolI2 var_110
  loc_C2FBFD: FLdRfVar var_25C
  loc_C2FC00: ImpAdCallFPR4  = IIf(, , )
  loc_C2FC05: FLdRfVar var_188
  loc_C2FC08: FLdPr Me
  loc_C2FC0B: VCallAd Control_ID_CodiReceLbl
  loc_C2FC0E: FStAdFunc var_280
  loc_C2FC11: FLdPr var_280
  loc_C2FC14:  = Me.Caption
  loc_C2FC19: FLdRfVar var_190
  loc_C2FC1C: FLdPr Me
  loc_C2FC1F: VCallAd Control_ID_CodiReceLbl
  loc_C2FC22: FStAdFunc var_284
  loc_C2FC25: FLdPr var_284
  loc_C2FC28:  = Me.Caption
  loc_C2FC2D: FLdZeroAd var_190
  loc_C2FC30: CVarStr var_27C
  loc_C2FC33: LitVarI2 var_26C, 0
  loc_C2FC38: ILdRf var_188
  loc_C2FC3B: LitStr vbNullString
  loc_C2FC3E: EqStr
  loc_C2FC40: CVarBoolI2 var_23C
  loc_C2FC44: FLdRfVar var_2B4
  loc_C2FC47: ImpAdCallFPR4  = IIf(, , )
  loc_C2FC4C: FLdRfVar var_194
  loc_C2FC4F: FLdPr Me
  loc_C2FC52: VCallAd Control_ID_ItemLbl
  loc_C2FC55: FStAdFunc var_2D8
  loc_C2FC58: FLdPr var_2D8
  loc_C2FC5B:  = Me.Caption
  loc_C2FC60: FLdRfVar var_214
  loc_C2FC63: FLdPr Me
  loc_C2FC66: VCallAd Control_ID_ItemLbl
  loc_C2FC69: FStAdFunc var_2F0
  loc_C2FC6C: FLdPr var_2F0
  loc_C2FC6F:  = Me.Caption
  loc_C2FC74: FLdZeroAd var_214
  loc_C2FC77: CVarStr var_2D4
  loc_C2FC7A: LitVarI2 var_2C4, 0
  loc_C2FC7F: ILdRf var_194
  loc_C2FC82: LitStr vbNullString
  loc_C2FC85: EqStr
  loc_C2FC87: CVarBoolI2 var_294
  loc_C2FC8B: FLdRfVar var_300
  loc_C2FC8E: ImpAdCallFPR4  = IIf(, , )
  loc_C2FC93: FLdRfVar var_218
  loc_C2FC96: FLdPr Me
  loc_C2FC99: VCallAd Control_ID_AlternLbl
  loc_C2FC9C: FStAdFunc var_304
  loc_C2FC9F: FLdPr var_304
  loc_C2FCA2:  = Me.Caption
  loc_C2FCA7: FLdRfVar var_220
  loc_C2FCAA: FLdPr Me
  loc_C2FCAD: VCallAd Control_ID_AlternLbl
  loc_C2FCB0: FStAdFunc var_308
  loc_C2FCB3: FLdPr var_308
  loc_C2FCB6:  = Me.Caption
  loc_C2FCBB: FLdZeroAd var_220
  loc_C2FCBE: CVarStr var_348
  loc_C2FCC1: LitVarI2 var_338, 0
  loc_C2FCC6: ILdRf var_218
  loc_C2FCC9: LitStr vbNullString
  loc_C2FCCC: EqStr
  loc_C2FCCE: CVarBoolI2 var_318
  loc_C2FCD2: FLdRfVar var_358
  loc_C2FCD5: ImpAdCallFPR4  = IIf(, , )
  loc_C2FCDA: FLdRfVar var_224
  loc_C2FCDD: FLdPr Me
  loc_C2FCE0: VCallAd Control_ID_CucuPersTxt
  loc_C2FCE3: FStAdFunc var_35C
  loc_C2FCE6: FLdPr var_35C
  loc_C2FCE9:  = Me.Text
  loc_C2FCEE: FLdRfVar var_2DC
  loc_C2FCF1: FLdPr Me
  loc_C2FCF4: VCallAd Control_ID_TifaDeveCbo
  loc_C2FCF7: FStAdFunc var_360
  loc_C2FCFA: FLdPr var_360
  loc_C2FCFD:  = Me.Text
  loc_C2FD02: FLdRfVar var_2E0
  loc_C2FD05: FLdPr Me
  loc_C2FD08: VCallAd Control_ID_SufaDeveTxt
  loc_C2FD0B: FStAdFunc var_364
  loc_C2FD0E: FLdPr var_364
  loc_C2FD11:  = Me.Text
  loc_C2FD16: LitI4 1
  loc_C2FD1B: LitI4 1
  loc_C2FD20: LitVarStr var_384, "0000"
  loc_C2FD25: FStVarCopyObj var_394
  loc_C2FD28: FLdRfVar var_394
  loc_C2FD2B: FLdZeroAd var_2E0
  loc_C2FD2E: CVarStr var_374
  loc_C2FD31: FLdRfVar var_3A8
  loc_C2FD34: ImpAdCallFPR4  = Format(, )
  loc_C2FD39: FLdRfVar var_2E4
  loc_C2FD3C: FLdPr Me
  loc_C2FD3F: VCallAd Control_ID_NufaDeveTxt
  loc_C2FD42: FStAdFunc var_398
  loc_C2FD45: FLdPr var_398
  loc_C2FD48:  = Me.Text
  loc_C2FD4D: LitI4 1
  loc_C2FD52: LitI4 1
  loc_C2FD57: LitVarStr var_3B8, "00000000"
  loc_C2FD5C: FStVarCopyObj var_43C
  loc_C2FD5F: FLdRfVar var_43C
  loc_C2FD62: FLdZeroAd var_2E4
  loc_C2FD65: CVarStr var_42C
  loc_C2FD68: ImpAdCallI2 Format$(, )
  loc_C2FD6D: FStStr var_3FC
  loc_C2FD70: FLdRfVar var_A0
  loc_C2FD73: LitI2_Byte 0
  loc_C2FD75: LitI2_Byte 0
  loc_C2FD77: LitI2_Byte 0
  loc_C2FD79: LitStr vbNullString
  loc_C2FD7C: LitI4 0
  loc_C2FD81: FLdZeroAd var_2DC
  loc_C2FD84: CVarStr var_3C8
  loc_C2FD87: FLdRfVar var_3A8
  loc_C2FD8A: ConcatVar var_41C
  loc_C2FD8E: FLdZeroAd var_3FC
  loc_C2FD91: CVarStr var_44C
  loc_C2FD94: ConcatVar var_45C
  loc_C2FD98: CStrVarVal var_3F4
  loc_C2FD9C: ILdRf var_224
  loc_C2FD9F: FLdRfVar var_358
  loc_C2FDA2: CStrVarVal var_3F0
  loc_C2FDA6: FLdRfVar var_300
  loc_C2FDA9: CStrVarVal var_3EC
  loc_C2FDAD: FLdRfVar var_2B4
  loc_C2FDB0: CI2Var
  loc_C2FDB1: FLdRfVar var_25C
  loc_C2FDB4: CStrVarVal var_3E8
  loc_C2FDB8: FLdRfVar var_1F0
  loc_C2FDBB: CStrVarVal var_3E4
  loc_C2FDBF: ILdRf var_174
  loc_C2FDC2: ILdRf var_170
  loc_C2FDC5: CR8Str
  loc_C2FDC7: PopFPR8
  loc_C2FDC8: ILdRf var_168
  loc_C2FDCB: CR8Str
  loc_C2FDCD: PopFPR8
  loc_C2FDCE: ILdRf var_164
  loc_C2FDD1: CR8Str
  loc_C2FDD3: PopFPR8
  loc_C2FDD4: FLdZeroAd var_3F8
  loc_C2FDD7: FStStrNoPop var_3E0
  loc_C2FDDA: FLdRfVar var_1A8
  loc_C2FDDD: CStrVarTmp
  loc_C2FDDE: FStStrNoPop var_3DC
  loc_C2FDE1: FLdRfVar var_15C
  loc_C2FDE4: CStrVarTmp
  loc_C2FDE5: FStStrNoPop var_3D8
  loc_C2FDE8: FLdRfVar var_14C
  loc_C2FDEB: CStrVarTmp
  loc_C2FDEC: FStStrNoPop var_3D4
  loc_C2FDEF: FLdRfVar var_13C
  loc_C2FDF2: CStrVarTmp
  loc_C2FDF3: FStStrNoPop var_3D0
  loc_C2FDF6: FLdRfVar var_124
  loc_C2FDF9: CStrVarTmp
  loc_C2FDFA: FStStrNoPop var_3CC
  loc_C2FDFD: CI4Str
  loc_C2FDFE: ILdRf var_90
  loc_C2FE01: CI2Str
  loc_C2FE03: FLdRfVar var_E8
  loc_C2FE06: CStrVarTmp
  loc_C2FE07: FStStrNoPop var_2EC
  loc_C2FE0A: FLdRfVar var_C8
  loc_C2FE0D: CStrVarTmp
  loc_C2FE0E: FStStrNoPop var_2E8
  loc_C2FE11: FLdPr Me
  loc_C2FE14: MemLdRfVar from_stack_1.global_52
  loc_C2FE17: NewIfNullPr clsimputacion
  loc_C2FE1A: from_stack_16v = clsimputacion.AddNewDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C2FE1F: ILdRf var_A0
  loc_C2FE22: FLdPr Me
  loc_C2FE25: MemStI4 global_68
  loc_C2FE28: FFreeStr var_160 = "": var_178 = "": var_180 = "": var_188 = "": var_194 = "": var_218 = "": var_2E8 = "": var_2EC = "": var_90 = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_164 = "": var_168 = "": var_170 = "": var_174 = "": var_3E4 = "": var_3E8 = "": var_3EC = "": var_3F0 = "": var_224 = "": var_3F4 = "": var_3F8 = ""
  loc_C2FE61: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = "": var_364 = ""
  loc_C2FE9A: FFreeVar var_1F0 = "": var_25C = "": var_2B4 = "": var_300 = "": var_358 = "": var_45C = "": var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_B4 = "": var_1B8 = "": var_1C8 = "": var_110 = "": var_200 = "": var_210 = "": var_23C = "": var_26C = "": var_27C = "": var_294 = "": var_2C4 = "": var_2D4 = "": var_318 = "": var_338 = "": var_348 = "": var_374 = "": var_394 = "": var_3C8 = "": var_3A8 = "": var_42C = "": var_43C = "": var_41C = ""
  loc_C2FEE5: FLdPr Me
  loc_C2FEE8: MemLdStr global_68
  loc_C2FEEB: LitI4 0
  loc_C2FEF0: EqI4
  loc_C2FEF1: BranchF loc_C2FF01
  loc_C2FEF4: LitI4 0
  loc_C2FEF9: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2FEFC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2FF01: FLdRfVar var_90
  loc_C2FF04: FLdPr Me
  loc_C2FF07: VCallAd Control_ID_ExpeImpuTxt
  loc_C2FF0A: FStAdFunc var_98
  loc_C2FF0D: FLdPr var_98
  loc_C2FF10:  = Me.Text
  loc_C2FF15: ILdRf var_90
  loc_C2FF18: FLdRfVar var_160
  loc_C2FF1B: FLdPr Me
  loc_C2FF1E: MemLdRfVar from_stack_1.global_136
  loc_C2FF21: NewIfNullPr tblimputacion
  loc_C2FF24: from_stack_1v = tblimputacion.ExpeImpuGet()
  loc_C2FF29: ILdRf var_160
  loc_C2FF2C: NeStr
  loc_C2FF2E: FFreeStr var_90 = ""
  loc_C2FF35: FFree1Ad var_98
  loc_C2FF38: BranchF loc_C2FF66
  loc_C2FF3B: FLdRfVar var_90
  loc_C2FF3E: FLdPr Me
  loc_C2FF41: MemLdRfVar from_stack_1.global_136
  loc_C2FF44: NewIfNullPr tblimputacion
  loc_C2FF47: from_stack_1v = tblimputacion.ExpeImpuGet()
  loc_C2FF4C: ILdRf var_90
  loc_C2FF4F: FLdPr Me
  loc_C2FF52: VCallAd Control_ID_ExpeImpuTxt
  loc_C2FF55: FStAdFunc var_98
  loc_C2FF58: FLdPr var_98
  loc_C2FF5B: Me.Text = from_stack_1
  loc_C2FF60: FFree1Str var_90
  loc_C2FF63: FFree1Ad var_98
  loc_C2FF66: Branch loc_C3271F
  loc_C2FF69: FLdUI1
  loc_C2FF6D: LitI2_Byte 2
  loc_C2FF6F: EqI2
  loc_C2FF70: BranchF loc_C302D6
  loc_C2FF73: FLdRfVar var_A0
  loc_C2FF76: FLdRfVar var_9A
  loc_C2FF79: FLdPr Me
  loc_C2FF7C: VCallAd Control_ID_cboSeleccion
  loc_C2FF7F: FStAdFunc var_98
  loc_C2FF82: FLdPr var_98
  loc_C2FF85:  = Me.ListIndex
  loc_C2FF8A: FLdI2 var_9A
  loc_C2FF8D: FLdPr Me
  loc_C2FF90: VCallAd Control_ID_cboSeleccion
  loc_C2FF93: FStAdFunc var_A4
  loc_C2FF96: FLdPr var_A4
  loc_C2FF99:  = Me.ItemData
  loc_C2FF9E: ILdRf var_A0
  loc_C2FFA1: FStR4 var_460
  loc_C2FFA4: FFreeAd var_98 = ""
  loc_C2FFAB: ILdRf var_460
  loc_C2FFAE: LitI4 8
  loc_C2FFB3: EqI4
  loc_C2FFB4: BranchF loc_C300AE
  loc_C2FFB7: FLdRfVar var_90
  loc_C2FFBA: FLdPr Me
  loc_C2FFBD: VCallAd Control_ID_CodiUngaTxt
  loc_C2FFC0: FStAdFunc var_98
  loc_C2FFC3: FLdPr var_98
  loc_C2FFC6:  = Me.Text
  loc_C2FFCB: FLdPr Me
  loc_C2FFCE: VCallAd Control_ID_CodiFifuMsk
  loc_C2FFD1: FStAdFunc var_A4
  loc_C2FFD4: FLdPr var_A4
  loc_C2FFD7: LateIdLdVar var_C8 DispID_22 0
  loc_C2FFDE: PopAd
  loc_C2FFE0: FLdPr Me
  loc_C2FFE3: VCallAd Control_ID_FechImpuMsk
  loc_C2FFE6: FStAdFunc var_B8
  loc_C2FFE9: FLdPr var_B8
  loc_C2FFEC: LateIdLdVar var_E8 DispID_15 0
  loc_C2FFF3: PopAd
  loc_C2FFF5: FLdRfVar var_160
  loc_C2FFF8: FLdPr Me
  loc_C2FFFB: VCallAd Control_ID_DetaImpuTxt
  loc_C2FFFE: FStAdFunc var_F0
  loc_C30001: FLdPr var_F0
  loc_C30004:  = Me.Text
  loc_C30009: FLdPr Me
  loc_C3000C: VCallAd Control_ID_CodiOrgaMsk
  loc_C3000F: FStAdFunc var_F4
  loc_C30012: FLdPr var_F4
  loc_C30015: LateIdLdVar var_124 DispID_22 0
  loc_C3001C: PopAd
  loc_C3001E: FLdPr Me
  loc_C30021: VCallAd Control_ID_CodiInsuMsk
  loc_C30024: FStAdFunc var_F8
  loc_C30027: FLdPr var_F8
  loc_C3002A: LateIdLdVar var_13C DispID_22 0
  loc_C30031: PopAd
  loc_C30033: FLdPr Me
  loc_C30036: VCallAd Control_ID_CodiPartMsk
  loc_C30039: FStAdFunc var_FC
  loc_C3003C: FLdPr var_FC
  loc_C3003F: LateIdLdVar var_14C DispID_22 0
  loc_C30046: CStrVarTmp
  loc_C30047: FStStrNoPop var_178
  loc_C3004A: FLdRfVar var_13C
  loc_C3004D: CStrVarTmp
  loc_C3004E: FStStrNoPop var_174
  loc_C30051: FLdRfVar var_124
  loc_C30054: CStrVarTmp
  loc_C30055: FStStrNoPop var_170
  loc_C30058: ILdRf var_160
  loc_C3005B: FLdRfVar var_E8
  loc_C3005E: CStrVarTmp
  loc_C3005F: FStStrNoPop var_168
  loc_C30062: FLdRfVar var_C8
  loc_C30065: CStrVarTmp
  loc_C30066: FStStrNoPop var_164
  loc_C30069: ILdRf var_90
  loc_C3006C: CI2Str
  loc_C3006E: FLdPr Me
  loc_C30071: MemLdRfVar from_stack_1.global_52
  loc_C30074: NewIfNullPr clsimputacion
  loc_C30077: Call clsimputacion.ModificarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_C3007C: FFreeStr var_90 = "": var_164 = "": var_168 = "": var_160 = "": var_170 = "": var_174 = ""
  loc_C3008D: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C3009E: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = ""
  loc_C300AB: Branch loc_C302D3
  loc_C300AE: ILdRf var_460
  loc_C300B1: LitI4 9
  loc_C300B6: EqI4
  loc_C300B7: BranchF loc_C30147
  loc_C300BA: FLdRfVar var_90
  loc_C300BD: FLdPr Me
  loc_C300C0: VCallAd Control_ID_CodiUngaTxt
  loc_C300C3: FStAdFunc var_98
  loc_C300C6: FLdPr var_98
  loc_C300C9:  = Me.Text
  loc_C300CE: FLdPr Me
  loc_C300D1: VCallAd Control_ID_FechImpuMsk
  loc_C300D4: FStAdFunc var_A4
  loc_C300D7: FLdPr var_A4
  loc_C300DA: LateIdLdVar var_C8 DispID_15 0
  loc_C300E1: PopAd
  loc_C300E3: FLdRfVar var_160
  loc_C300E6: FLdPr Me
  loc_C300E9: VCallAd Control_ID_DetaImpuTxt
  loc_C300EC: FStAdFunc var_B8
  loc_C300EF: FLdPr var_B8
  loc_C300F2:  = Me.Text
  loc_C300F7: FLdRfVar var_164
  loc_C300FA: FLdPr Me
  loc_C300FD: VCallAd Control_ID_CucuPersTxt
  loc_C30100: FStAdFunc var_F0
  loc_C30103: FLdPr var_F0
  loc_C30106:  = Me.Text
  loc_C3010B: ILdRf var_164
  loc_C3010E: ILdRf var_160
  loc_C30111: FLdRfVar var_C8
  loc_C30114: CStrVarTmp
  loc_C30115: FStStrNoPop var_168
  loc_C30118: ILdRf var_90
  loc_C3011B: CI2Str
  loc_C3011D: FLdPr Me
  loc_C30120: MemLdRfVar from_stack_1.global_52
  loc_C30123: NewIfNullPr clsimputacion
  loc_C30126: Call clsimputacion.ModificarDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C3012B: FFreeStr var_90 = "": var_168 = "": var_160 = ""
  loc_C30136: FFreeAd var_98 = "": var_A4 = "": var_B8 = ""
  loc_C30141: FFree1Var var_C8 = ""
  loc_C30144: Branch loc_C302D3
  loc_C30147: ILdRf var_460
  loc_C3014A: LitI4 &HA
  loc_C3014F: EqI4
  loc_C30150: BranchF loc_C302A9
  loc_C30153: FLdRfVar var_90
  loc_C30156: FLdPr Me
  loc_C30159: VCallAd Control_ID_CodiUngaTxt
  loc_C3015C: FStAdFunc var_98
  loc_C3015F: FLdPr var_98
  loc_C30162:  = Me.Text
  loc_C30167: FLdRfVar var_160
  loc_C3016A: FLdPr Me
  loc_C3016D: VCallAd Control_ID_ExpeImpuTxt
  loc_C30170: FStAdFunc var_A4
  loc_C30173: FLdPr var_A4
  loc_C30176:  = Me.Text
  loc_C3017B: FLdPr Me
  loc_C3017E: VCallAd Control_ID_FechDeveMsk
  loc_C30181: FStAdFunc var_B8
  loc_C30184: FLdPr var_B8
  loc_C30187: LateIdLdVar var_C8 DispID_15 0
  loc_C3018E: PopAd
  loc_C30190: FLdPr Me
  loc_C30193: VCallAd Control_ID_FefaDeveMsk
  loc_C30196: FStAdFunc var_F0
  loc_C30199: FLdPr var_F0
  loc_C3019C: LateIdLdVar var_E8 DispID_15 0
  loc_C301A3: PopAd
  loc_C301A5: FLdRfVar var_164
  loc_C301A8: FLdPr Me
  loc_C301AB: VCallAd Control_ID_DetaImpuTxt
  loc_C301AE: FStAdFunc var_F4
  loc_C301B1: FLdPr var_F4
  loc_C301B4:  = Me.Text
  loc_C301B9: FLdRfVar var_170
  loc_C301BC: FLdPr Me
  loc_C301BF: VCallAd Control_ID_SufaDeveTxt
  loc_C301C2: FStAdFunc var_FC
  loc_C301C5: FLdPr var_FC
  loc_C301C8:  = Me.Text
  loc_C301CD: FLdRfVar var_178
  loc_C301D0: FLdPr Me
  loc_C301D3: VCallAd Control_ID_NufaDeveTxt
  loc_C301D6: FStAdFunc var_100
  loc_C301D9: FLdPr var_100
  loc_C301DC:  = Me.Text
  loc_C301E1: FLdRfVar var_168
  loc_C301E4: FLdPr Me
  loc_C301E7: VCallAd Control_ID_TifaDeveCbo
  loc_C301EA: FStAdFunc var_F8
  loc_C301ED: FLdPr var_F8
  loc_C301F0:  = Me.Text
  loc_C301F5: ILdRf var_168
  loc_C301F8: LitI4 1
  loc_C301FD: LitI4 1
  loc_C30202: LitVarStr var_B4, "0000"
  loc_C30207: FStVarCopyObj var_13C
  loc_C3020A: FLdRfVar var_13C
  loc_C3020D: FLdZeroAd var_170
  loc_C30210: CVarStr var_124
  loc_C30213: ImpAdCallI2 Format$(, )
  loc_C30218: FStStrNoPop var_174
  loc_C3021B: ConcatStr
  loc_C3021C: FStStrNoPop var_17C
  loc_C3021F: LitI4 1
  loc_C30224: LitI4 1
  loc_C30229: LitVarStr var_D8, "00000000"
  loc_C3022E: FStVarCopyObj var_15C
  loc_C30231: FLdRfVar var_15C
  loc_C30234: FLdZeroAd var_178
  loc_C30237: CVarStr var_14C
  loc_C3023A: ImpAdCallI2 Format$(, )
  loc_C3023F: FStStrNoPop var_180
  loc_C30242: ConcatStr
  loc_C30243: FStStrNoPop var_190
  loc_C30246: ILdRf var_164
  loc_C30249: FLdRfVar var_E8
  loc_C3024C: CStrVarTmp
  loc_C3024D: FStStrNoPop var_188
  loc_C30250: FLdRfVar var_C8
  loc_C30253: CStrVarTmp
  loc_C30254: FStStrNoPop var_184
  loc_C30257: ILdRf var_160
  loc_C3025A: ILdRf var_90
  loc_C3025D: CI2Str
  loc_C3025F: FLdPr Me
  loc_C30262: MemLdRfVar from_stack_1.global_52
  loc_C30265: NewIfNullPr clsimputacion
  loc_C30268: Call clsimputacion.ModificarDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3026D: FFreeStr var_168 = "": var_174 = "": var_17C = "": var_180 = "": var_90 = "": var_160 = "": var_184 = "": var_188 = "": var_164 = ""
  loc_C30284: FFreeAd var_98 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C30297: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = ""
  loc_C302A6: Branch loc_C302D3
  loc_C302A9: ILdRf var_460
  loc_C302AC: LitI4 &H11
  loc_C302B1: EqI4
  loc_C302B2: BranchF loc_C302B8
  loc_C302B5: Branch loc_C302D3
  loc_C302B8: ILdRf var_460
  loc_C302BB: LitI4 &H12
  loc_C302C0: EqI4
  loc_C302C1: BranchF loc_C302C7
  loc_C302C4: Branch loc_C302D3
  loc_C302C7: ILdRf var_460
  loc_C302CA: LitI4 &H13
  loc_C302CF: EqI4
  loc_C302D0: BranchF loc_C302D3
  loc_C302D3: Branch loc_C3271F
  loc_C302D6: FLdUI1
  loc_C302DA: LitI2_Byte 3
  loc_C302DC: EqI2
  loc_C302DD: BranchF loc_C3271F
  loc_C302E0: FLdRfVar var_A0
  loc_C302E3: FLdRfVar var_9A
  loc_C302E6: FLdPr Me
  loc_C302E9: VCallAd Control_ID_cboSeleccion
  loc_C302EC: FStAdFunc var_98
  loc_C302EF: FLdPr var_98
  loc_C302F2:  = Me.ListIndex
  loc_C302F7: FLdI2 var_9A
  loc_C302FA: FLdPr Me
  loc_C302FD: VCallAd Control_ID_cboSeleccion
  loc_C30300: FStAdFunc var_A4
  loc_C30303: FLdPr var_A4
  loc_C30306:  = Me.ItemData
  loc_C3030B: ILdRf var_A0
  loc_C3030E: FStR4 var_464
  loc_C30311: FFreeAd var_98 = ""
  loc_C30318: ILdRf var_464
  loc_C3031B: LitI4 &HB
  loc_C30320: EqI4
  loc_C30321: BranchF loc_C3063C
  loc_C30324: FLdRfVar var_E8
  loc_C30327: FLdRfVar var_B8
  loc_C3032A: LitVarStr var_B4, "CodiPart"
  loc_C3032F: PopAdLdVar
  loc_C30330: FLdRfVar var_A4
  loc_C30333: FLdRfVar var_98
  loc_C30336: FLdPr Me
  loc_C30339: MemLdRfVar from_stack_1.global_52
  loc_C3033C: NewIfNullPr clsimputacion
  loc_C3033F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30344: FLdPr var_98
  loc_C30347:  = Me.Fields
  loc_C3034C: FLdPr var_A4
  loc_C3034F: from_stack_2 = Me.Item(from_stack_1)
  loc_C30354: FLdPr var_B8
  loc_C30357:  = Me.Value
  loc_C3035C: FLdRfVar var_124
  loc_C3035F: FLdRfVar var_F8
  loc_C30362: LitVarStr var_D8, "CodiOrga"
  loc_C30367: PopAdLdVar
  loc_C30368: FLdRfVar var_F4
  loc_C3036B: FLdRfVar var_F0
  loc_C3036E: FLdPr Me
  loc_C30371: MemLdRfVar from_stack_1.global_52
  loc_C30374: NewIfNullPr clsimputacion
  loc_C30377: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3037C: FLdPr var_F0
  loc_C3037F:  = Me.Fields
  loc_C30384: FLdPr var_F4
  loc_C30387: from_stack_2 = Me.Item(from_stack_1)
  loc_C3038C: FLdPr var_F8
  loc_C3038F:  = Me.Value
  loc_C30394: FLdRfVar var_13C
  loc_C30397: FLdRfVar var_114
  loc_C3039A: LitVarStr var_110, "CodiUnga"
  loc_C3039F: PopAdLdVar
  loc_C303A0: FLdRfVar var_100
  loc_C303A3: FLdRfVar var_FC
  loc_C303A6: FLdPr Me
  loc_C303A9: MemLdRfVar from_stack_1.global_52
  loc_C303AC: NewIfNullPr clsimputacion
  loc_C303AF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C303B4: FLdPr var_FC
  loc_C303B7:  = Me.Fields
  loc_C303BC: FLdPr var_100
  loc_C303BF: from_stack_2 = Me.Item(from_stack_1)
  loc_C303C4: FLdPr var_114
  loc_C303C7:  = Me.Value
  loc_C303CC: FLdRfVar var_14C
  loc_C303CF: FLdRfVar var_198
  loc_C303D2: LitVarStr var_1E0, "CodiInsu"
  loc_C303D7: PopAdLdVar
  loc_C303D8: FLdRfVar var_18C
  loc_C303DB: FLdRfVar var_16C
  loc_C303DE: FLdPr Me
  loc_C303E1: MemLdRfVar from_stack_1.global_52
  loc_C303E4: NewIfNullPr clsimputacion
  loc_C303E7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C303EC: FLdPr var_16C
  loc_C303EF:  = Me.Fields
  loc_C303F4: FLdPr var_18C
  loc_C303F7: from_stack_2 = Me.Item(from_stack_1)
  loc_C303FC: FLdPr var_198
  loc_C303FF:  = Me.Value
  loc_C30404: FLdRfVar var_15C
  loc_C30407: FLdRfVar var_21C
  loc_C3040A: LitVarStr var_23C, "CodiFifu"
  loc_C3040F: PopAdLdVar
  loc_C30410: FLdRfVar var_1D0
  loc_C30413: FLdRfVar var_1CC
  loc_C30416: FLdPr Me
  loc_C30419: MemLdRfVar from_stack_1.global_52
  loc_C3041C: NewIfNullPr clsimputacion
  loc_C3041F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30424: FLdPr var_1CC
  loc_C30427:  = Me.Fields
  loc_C3042C: FLdPr var_1D0
  loc_C3042F: from_stack_2 = Me.Item(from_stack_1)
  loc_C30434: FLdPr var_21C
  loc_C30437:  = Me.Value
  loc_C3043C: FLdPr Me
  loc_C3043F: VCallAd Control_ID_FechImpuMsk
  loc_C30442: FStAdFunc var_228
  loc_C30445: FLdPr var_228
  loc_C30448: LateIdLdVar var_C8 DispID_15 0
  loc_C3044F: PopAd
  loc_C30451: FLdRfVar var_1A8
  loc_C30454: FLdRfVar var_284
  loc_C30457: LitVarStr var_24C, "ExorImpu"
  loc_C3045C: PopAdLdVar
  loc_C3045D: FLdRfVar var_280
  loc_C30460: FLdRfVar var_22C
  loc_C30463: FLdPr Me
  loc_C30466: MemLdRfVar from_stack_1.global_52
  loc_C30469: NewIfNullPr clsimputacion
  loc_C3046C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30471: FLdPr var_22C
  loc_C30474:  = Me.Fields
  loc_C30479: FLdPr var_280
  loc_C3047C: from_stack_2 = Me.Item(from_stack_1)
  loc_C30481: FLdPr var_284
  loc_C30484:  = Me.Value
  loc_C30489: FLdRfVar var_90
  loc_C3048C: FLdPr Me
  loc_C3048F: VCallAd Control_ID_CantImpuTxt
  loc_C30492: FStAdFunc var_2D8
  loc_C30495: FLdPr var_2D8
  loc_C30498:  = Me.Text
  loc_C3049D: FLdRfVar var_160
  loc_C304A0: FLdPr Me
  loc_C304A3: VCallAd Control_ID_ImunImpuTxt
  loc_C304A6: FStAdFunc var_2F0
  loc_C304A9: FLdPr var_2F0
  loc_C304AC:  = Me.Text
  loc_C304B1: FLdRfVar var_164
  loc_C304B4: FLdPr Me
  loc_C304B7: VCallAd Control_ID_ImpoImpuTxt
  loc_C304BA: FStAdFunc var_304
  loc_C304BD: FLdPr var_304
  loc_C304C0:  = Me.Text
  loc_C304C5: FLdRfVar var_168
  loc_C304C8: FLdPr Me
  loc_C304CB: VCallAd Control_ID_DetaImpuTxt
  loc_C304CE: FStAdFunc var_308
  loc_C304D1: FLdPr var_308
  loc_C304D4:  = Me.Text
  loc_C304D9: FLdRfVar var_1B8
  loc_C304DC: FLdRfVar var_364
  loc_C304DF: LitVarStr var_294, "CodiNope"
  loc_C304E4: PopAdLdVar
  loc_C304E5: FLdRfVar var_360
  loc_C304E8: FLdRfVar var_35C
  loc_C304EB: FLdPr Me
  loc_C304EE: MemLdRfVar from_stack_1.global_52
  loc_C304F1: NewIfNullPr clsimputacion
  loc_C304F4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C304F9: FLdPr var_35C
  loc_C304FC:  = Me.Fields
  loc_C30501: FLdPr var_360
  loc_C30504: from_stack_2 = Me.Item(from_stack_1)
  loc_C30509: FLdPr var_364
  loc_C3050C:  = Me.Value
  loc_C30511: FLdRfVar var_1C8
  loc_C30514: FLdRfVar var_46C
  loc_C30517: LitVarStr var_2A4, "Item"
  loc_C3051C: PopAdLdVar
  loc_C3051D: FLdRfVar var_468
  loc_C30520: FLdRfVar var_398
  loc_C30523: FLdPr Me
  loc_C30526: MemLdRfVar from_stack_1.global_52
  loc_C30529: NewIfNullPr clsimputacion
  loc_C3052C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30531: FLdPr var_398
  loc_C30534:  = Me.Fields
  loc_C30539: FLdPr var_468
  loc_C3053C: from_stack_2 = Me.Item(from_stack_1)
  loc_C30541: FLdPr var_46C
  loc_C30544:  = Me.Value
  loc_C30549: FLdRfVar var_A0
  loc_C3054C: LitI2_Byte 0
  loc_C3054E: LitI2_Byte 0
  loc_C30550: LitI4 0
  loc_C30555: FLdRfVar var_1C8
  loc_C30558: CI2Var
  loc_C30559: FLdRfVar var_1B8
  loc_C3055C: CI4Var
  loc_C3055E: ILdRf var_168
  loc_C30561: ILdRf var_164
  loc_C30564: CR8Str
  loc_C30566: PopFPR8
  loc_C30567: ILdRf var_160
  loc_C3056A: CR8Str
  loc_C3056C: PopFPR8
  loc_C3056D: ILdRf var_90
  loc_C30570: CR8Str
  loc_C30572: PopFPR8
  loc_C30573: FLdRfVar var_1A8
  loc_C30576: CStrVarTmp
  loc_C30577: FStStrNoPop var_180
  loc_C3057A: FLdRfVar var_C8
  loc_C3057D: CStrVarTmp
  loc_C3057E: FStStrNoPop var_17C
  loc_C30581: FLdRfVar var_15C
  loc_C30584: CStrVarTmp
  loc_C30585: FStStrNoPop var_178
  loc_C30588: FLdRfVar var_14C
  loc_C3058B: CI4Var
  loc_C3058D: FLdRfVar var_13C
  loc_C30590: CI2Var
  loc_C30591: FLdRfVar var_124
  loc_C30594: CStrVarTmp
  loc_C30595: FStStrNoPop var_174
  loc_C30598: FLdRfVar var_E8
  loc_C3059B: CStrVarTmp
  loc_C3059C: FStStrNoPop var_170
  loc_C3059F: FLdPr Me
  loc_C305A2: MemLdRfVar from_stack_1.global_52
  loc_C305A5: NewIfNullPr clsimputacion
  loc_C305A8: from_stack_16v = clsimputacion.DesafectarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C305AD: ILdRf var_A0
  loc_C305B0: FLdPr Me
  loc_C305B3: MemStI4 global_68
  loc_C305B6: FFreeStr var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_90 = "": var_160 = "": var_164 = ""
  loc_C305CB: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_16C = "": var_18C = "": var_1CC = "": var_1D0 = "": var_228 = "": var_22C = "": var_280 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = "": var_398 = "": var_468 = "": var_B8 = "": var_F8 = "": var_114 = "": var_198 = "": var_21C = "": var_284 = "": var_364 = ""
  loc_C30608: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_1B8 = ""
  loc_C3061D: FLdPr Me
  loc_C30620: MemLdStr global_68
  loc_C30623: LitI4 0
  loc_C30628: EqI4
  loc_C30629: BranchF loc_C30639
  loc_C3062C: LitI4 0
  loc_C30631: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C30634: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C30639: Branch loc_C3271F
  loc_C3063C: ILdRf var_464
  loc_C3063F: LitI4 &HC
  loc_C30644: EqI4
  loc_C30645: BranchF loc_C30A33
  loc_C30648: FLdRfVar var_E8
  loc_C3064B: FLdRfVar var_B8
  loc_C3064E: LitVarStr var_B4, "CodiPart"
  loc_C30653: PopAdLdVar
  loc_C30654: FLdRfVar var_A4
  loc_C30657: FLdRfVar var_98
  loc_C3065A: FLdPr Me
  loc_C3065D: MemLdRfVar from_stack_1.global_52
  loc_C30660: NewIfNullPr clsimputacion
  loc_C30663: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30668: FLdPr var_98
  loc_C3066B:  = Me.Fields
  loc_C30670: FLdPr var_A4
  loc_C30673: from_stack_2 = Me.Item(from_stack_1)
  loc_C30678: FLdPr var_B8
  loc_C3067B:  = Me.Value
  loc_C30680: FLdRfVar var_124
  loc_C30683: FLdRfVar var_F8
  loc_C30686: LitVarStr var_D8, "CodiOrga"
  loc_C3068B: PopAdLdVar
  loc_C3068C: FLdRfVar var_F4
  loc_C3068F: FLdRfVar var_F0
  loc_C30692: FLdPr Me
  loc_C30695: MemLdRfVar from_stack_1.global_52
  loc_C30698: NewIfNullPr clsimputacion
  loc_C3069B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C306A0: FLdPr var_F0
  loc_C306A3:  = Me.Fields
  loc_C306A8: FLdPr var_F4
  loc_C306AB: from_stack_2 = Me.Item(from_stack_1)
  loc_C306B0: FLdPr var_F8
  loc_C306B3:  = Me.Value
  loc_C306B8: FLdRfVar var_13C
  loc_C306BB: FLdRfVar var_114
  loc_C306BE: LitVarStr var_110, "CodiUnga"
  loc_C306C3: PopAdLdVar
  loc_C306C4: FLdRfVar var_100
  loc_C306C7: FLdRfVar var_FC
  loc_C306CA: FLdPr Me
  loc_C306CD: MemLdRfVar from_stack_1.global_52
  loc_C306D0: NewIfNullPr clsimputacion
  loc_C306D3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C306D8: FLdPr var_FC
  loc_C306DB:  = Me.Fields
  loc_C306E0: FLdPr var_100
  loc_C306E3: from_stack_2 = Me.Item(from_stack_1)
  loc_C306E8: FLdPr var_114
  loc_C306EB:  = Me.Value
  loc_C306F0: FLdRfVar var_14C
  loc_C306F3: FLdRfVar var_198
  loc_C306F6: LitVarStr var_1E0, "CodiInsu"
  loc_C306FB: PopAdLdVar
  loc_C306FC: FLdRfVar var_18C
  loc_C306FF: FLdRfVar var_16C
  loc_C30702: FLdPr Me
  loc_C30705: MemLdRfVar from_stack_1.global_52
  loc_C30708: NewIfNullPr clsimputacion
  loc_C3070B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30710: FLdPr var_16C
  loc_C30713:  = Me.Fields
  loc_C30718: FLdPr var_18C
  loc_C3071B: from_stack_2 = Me.Item(from_stack_1)
  loc_C30720: FLdPr var_198
  loc_C30723:  = Me.Value
  loc_C30728: FLdRfVar var_15C
  loc_C3072B: FLdRfVar var_21C
  loc_C3072E: LitVarStr var_23C, "CodiFifu"
  loc_C30733: PopAdLdVar
  loc_C30734: FLdRfVar var_1D0
  loc_C30737: FLdRfVar var_1CC
  loc_C3073A: FLdPr Me
  loc_C3073D: MemLdRfVar from_stack_1.global_52
  loc_C30740: NewIfNullPr clsimputacion
  loc_C30743: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30748: FLdPr var_1CC
  loc_C3074B:  = Me.Fields
  loc_C30750: FLdPr var_1D0
  loc_C30753: from_stack_2 = Me.Item(from_stack_1)
  loc_C30758: FLdPr var_21C
  loc_C3075B:  = Me.Value
  loc_C30760: FLdPr Me
  loc_C30763: VCallAd Control_ID_FechImpuMsk
  loc_C30766: FStAdFunc var_228
  loc_C30769: FLdPr var_228
  loc_C3076C: LateIdLdVar var_C8 DispID_15 0
  loc_C30773: PopAd
  loc_C30775: FLdRfVar var_1A8
  loc_C30778: FLdRfVar var_284
  loc_C3077B: LitVarStr var_24C, "ExorImpu"
  loc_C30780: PopAdLdVar
  loc_C30781: FLdRfVar var_280
  loc_C30784: FLdRfVar var_22C
  loc_C30787: FLdPr Me
  loc_C3078A: MemLdRfVar from_stack_1.global_52
  loc_C3078D: NewIfNullPr clsimputacion
  loc_C30790: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30795: FLdPr var_22C
  loc_C30798:  = Me.Fields
  loc_C3079D: FLdPr var_280
  loc_C307A0: from_stack_2 = Me.Item(from_stack_1)
  loc_C307A5: FLdPr var_284
  loc_C307A8:  = Me.Value
  loc_C307AD: FLdRfVar var_90
  loc_C307B0: FLdPr Me
  loc_C307B3: VCallAd Control_ID_CantImpuTxt
  loc_C307B6: FStAdFunc var_2D8
  loc_C307B9: FLdPr var_2D8
  loc_C307BC:  = Me.Text
  loc_C307C1: FLdRfVar var_160
  loc_C307C4: FLdPr Me
  loc_C307C7: VCallAd Control_ID_ImunImpuTxt
  loc_C307CA: FStAdFunc var_2F0
  loc_C307CD: FLdPr var_2F0
  loc_C307D0:  = Me.Text
  loc_C307D5: FLdRfVar var_164
  loc_C307D8: FLdPr Me
  loc_C307DB: VCallAd Control_ID_ImpoImpuTxt
  loc_C307DE: FStAdFunc var_304
  loc_C307E1: FLdPr var_304
  loc_C307E4:  = Me.Text
  loc_C307E9: FLdRfVar var_168
  loc_C307EC: FLdPr Me
  loc_C307EF: VCallAd Control_ID_DetaImpuTxt
  loc_C307F2: FStAdFunc var_308
  loc_C307F5: FLdPr var_308
  loc_C307F8:  = Me.Text
  loc_C307FD: FLdRfVar var_1B8
  loc_C30800: FLdRfVar var_364
  loc_C30803: LitVarStr var_294, "CodiNope"
  loc_C30808: PopAdLdVar
  loc_C30809: FLdRfVar var_360
  loc_C3080C: FLdRfVar var_35C
  loc_C3080F: FLdPr Me
  loc_C30812: MemLdRfVar from_stack_1.global_52
  loc_C30815: NewIfNullPr clsimputacion
  loc_C30818: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3081D: FLdPr var_35C
  loc_C30820:  = Me.Fields
  loc_C30825: FLdPr var_360
  loc_C30828: from_stack_2 = Me.Item(from_stack_1)
  loc_C3082D: FLdPr var_364
  loc_C30830:  = Me.Value
  loc_C30835: FLdRfVar var_1C8
  loc_C30838: FLdRfVar var_46C
  loc_C3083B: LitVarStr var_2A4, "CodiOrco"
  loc_C30840: PopAdLdVar
  loc_C30841: FLdRfVar var_468
  loc_C30844: FLdRfVar var_398
  loc_C30847: FLdPr Me
  loc_C3084A: MemLdRfVar from_stack_1.global_52
  loc_C3084D: NewIfNullPr clsimputacion
  loc_C30850: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30855: FLdPr var_398
  loc_C30858:  = Me.Fields
  loc_C3085D: FLdPr var_468
  loc_C30860: from_stack_2 = Me.Item(from_stack_1)
  loc_C30865: FLdPr var_46C
  loc_C30868:  = Me.Value
  loc_C3086D: FLdRfVar var_1F0
  loc_C30870: FLdRfVar var_478
  loc_C30873: LitVarStr var_318, "Item"
  loc_C30878: PopAdLdVar
  loc_C30879: FLdRfVar var_474
  loc_C3087C: FLdRfVar var_470
  loc_C3087F: FLdPr Me
  loc_C30882: MemLdRfVar from_stack_1.global_52
  loc_C30885: NewIfNullPr clsimputacion
  loc_C30888: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3088D: FLdPr var_470
  loc_C30890:  = Me.Fields
  loc_C30895: FLdPr var_474
  loc_C30898: from_stack_2 = Me.Item(from_stack_1)
  loc_C3089D: FLdPr var_478
  loc_C308A0:  = Me.Value
  loc_C308A5: FLdRfVar var_200
  loc_C308A8: FLdRfVar var_484
  loc_C308AB: LitVarStr var_328, "Altern"
  loc_C308B0: PopAdLdVar
  loc_C308B1: FLdRfVar var_480
  loc_C308B4: FLdRfVar var_47C
  loc_C308B7: FLdPr Me
  loc_C308BA: MemLdRfVar from_stack_1.global_52
  loc_C308BD: NewIfNullPr clsimputacion
  loc_C308C0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C308C5: FLdPr var_47C
  loc_C308C8:  = Me.Fields
  loc_C308CD: FLdPr var_480
  loc_C308D0: from_stack_2 = Me.Item(from_stack_1)
  loc_C308D5: FLdPr var_484
  loc_C308D8:  = Me.Value
  loc_C308DD: FLdRfVar var_210
  loc_C308E0: FLdRfVar var_490
  loc_C308E3: LitVarStr var_384, "CucuPers"
  loc_C308E8: PopAdLdVar
  loc_C308E9: FLdRfVar var_48C
  loc_C308EC: FLdRfVar var_488
  loc_C308EF: FLdPr Me
  loc_C308F2: MemLdRfVar from_stack_1.global_52
  loc_C308F5: NewIfNullPr clsimputacion
  loc_C308F8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C308FD: FLdPr var_488
  loc_C30900:  = Me.Fields
  loc_C30905: FLdPr var_48C
  loc_C30908: from_stack_2 = Me.Item(from_stack_1)
  loc_C3090D: FLdPr var_490
  loc_C30910:  = Me.Value
  loc_C30915: FLdRfVar var_A0
  loc_C30918: LitI2_Byte 0
  loc_C3091A: LitI2_Byte 0
  loc_C3091C: LitI4 0
  loc_C30921: FLdRfVar var_210
  loc_C30924: CStrVarTmp
  loc_C30925: FStStrNoPop var_184
  loc_C30928: FLdRfVar var_200
  loc_C3092B: CUI1Var
  loc_C3092D: FLdRfVar var_1F0
  loc_C30930: CI2Var
  loc_C30931: FLdRfVar var_1C8
  loc_C30934: CI4Var
  loc_C30936: FLdRfVar var_1B8
  loc_C30939: CI4Var
  loc_C3093B: ILdRf var_168
  loc_C3093E: ILdRf var_164
  loc_C30941: CR8Str
  loc_C30943: PopFPR8
  loc_C30944: ILdRf var_160
  loc_C30947: CR8Str
  loc_C30949: PopFPR8
  loc_C3094A: ILdRf var_90
  loc_C3094D: CR8Str
  loc_C3094F: PopFPR8
  loc_C30950: FLdRfVar var_1A8
  loc_C30953: CStrVarTmp
  loc_C30954: FStStrNoPop var_180
  loc_C30957: FLdRfVar var_C8
  loc_C3095A: CStrVarTmp
  loc_C3095B: FStStrNoPop var_17C
  loc_C3095E: FLdRfVar var_15C
  loc_C30961: CStrVarTmp
  loc_C30962: FStStrNoPop var_178
  loc_C30965: FLdRfVar var_14C
  loc_C30968: CI4Var
  loc_C3096A: FLdRfVar var_13C
  loc_C3096D: CI2Var
  loc_C3096E: FLdRfVar var_124
  loc_C30971: CStrVarTmp
  loc_C30972: FStStrNoPop var_174
  loc_C30975: FLdRfVar var_E8
  loc_C30978: CStrVarTmp
  loc_C30979: FStStrNoPop var_170
  loc_C3097C: FLdPr Me
  loc_C3097F: MemLdRfVar from_stack_1.global_52
  loc_C30982: NewIfNullPr clsimputacion
  loc_C30985: from_stack_16v = clsimputacion.DesafectarDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C3098A: ILdRf var_A0
  loc_C3098D: FLdPr Me
  loc_C30990: MemStI4 global_68
  loc_C30993: FFreeStr var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_90 = "": var_160 = "": var_164 = "": var_168 = ""
  loc_C309AA: FFreeAd var_198 = "": var_21C = "": var_284 = "": var_364 = "": var_46C = "": var_478 = "": var_484 = "": var_490 = "": var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_16C = "": var_18C = "": var_1CC = "": var_1D0 = "": var_228 = "": var_22C = "": var_280 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = "": var_398 = "": var_468 = "": var_470 = "": var_474 = "": var_47C = "": var_480 = "": var_488 = "": var_48C = "": var_B8 = "": var_F8 = ""
  loc_C309F9: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1F0 = "": var_200 = ""
  loc_C30A14: FLdPr Me
  loc_C30A17: MemLdStr global_68
  loc_C30A1A: LitI4 0
  loc_C30A1F: EqI4
  loc_C30A20: BranchF loc_C30A30
  loc_C30A23: LitI4 0
  loc_C30A28: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C30A2B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C30A30: Branch loc_C3271F
  loc_C30A33: ILdRf var_464
  loc_C30A36: LitI4 &HD
  loc_C30A3B: EqI4
  loc_C30A3C: BranchF loc_C30DD9
  loc_C30A3F: FLdRfVar var_210
  loc_C30A42: FLdRfVar var_B8
  loc_C30A45: LitVarStr var_B4, "IdImpu"
  loc_C30A4A: PopAdLdVar
  loc_C30A4B: FLdRfVar var_A4
  loc_C30A4E: FLdRfVar var_98
  loc_C30A51: FLdPr Me
  loc_C30A54: MemLdRfVar from_stack_1.global_52
  loc_C30A57: NewIfNullPr clsimputacion
  loc_C30A5A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30A5F: FLdPr var_98
  loc_C30A62:  = Me.Fields
  loc_C30A67: FLdPr var_A4
  loc_C30A6A: from_stack_2 = Me.Item(from_stack_1)
  loc_C30A6F: FLdPr var_B8
  loc_C30A72:  = Me.Value
  loc_C30A77: FLdPr Me
  loc_C30A7A: VCallAd Control_ID_CodiPartMsk
  loc_C30A7D: FStAdFunc var_F0
  loc_C30A80: FLdPr var_F0
  loc_C30A83: LateIdLdVar var_C8 DispID_22 0
  loc_C30A8A: PopAd
  loc_C30A8C: FLdPr Me
  loc_C30A8F: VCallAd Control_ID_CodiOrgaMsk
  loc_C30A92: FStAdFunc var_F4
  loc_C30A95: FLdPr var_F4
  loc_C30A98: LateIdLdVar var_E8 DispID_22 0
  loc_C30A9F: PopAd
  loc_C30AA1: FLdRfVar var_90
  loc_C30AA4: FLdPr Me
  loc_C30AA7: VCallAd Control_ID_CodiUngaTxt
  loc_C30AAA: FStAdFunc var_F8
  loc_C30AAD: FLdPr var_F8
  loc_C30AB0:  = Me.Text
  loc_C30AB5: FLdPr Me
  loc_C30AB8: VCallAd Control_ID_CodiInsuMsk
  loc_C30ABB: FStAdFunc var_FC
  loc_C30ABE: FLdPr var_FC
  loc_C30AC1: LateIdLdVar var_124 DispID_22 0
  loc_C30AC8: PopAd
  loc_C30ACA: FLdPr Me
  loc_C30ACD: VCallAd Control_ID_CodiFifuMsk
  loc_C30AD0: FStAdFunc var_100
  loc_C30AD3: FLdPr var_100
  loc_C30AD6: LateIdLdVar var_13C DispID_22 0
  loc_C30ADD: PopAd
  loc_C30ADF: FLdPr Me
  loc_C30AE2: VCallAd Control_ID_FechDeveMsk
  loc_C30AE5: FStAdFunc var_114
  loc_C30AE8: FLdPr var_114
  loc_C30AEB: LateIdLdVar var_14C DispID_15 0
  loc_C30AF2: PopAd
  loc_C30AF4: FLdPr Me
  loc_C30AF7: VCallAd Control_ID_FefaDeveMsk
  loc_C30AFA: FStAdFunc var_16C
  loc_C30AFD: FLdPr var_16C
  loc_C30B00: LateIdLdVar var_15C DispID_15 0
  loc_C30B07: PopAd
  loc_C30B09: FLdPr Me
  loc_C30B0C: VCallAd Control_ID_ExorImpuMsk
  loc_C30B0F: FStAdFunc var_18C
  loc_C30B12: FLdPr var_18C
  loc_C30B15: LateIdLdVar var_1A8 DispID_15 0
  loc_C30B1C: PopAd
  loc_C30B1E: FLdRfVar var_160
  loc_C30B21: FLdPr Me
  loc_C30B24: VCallAd Control_ID_ExpeImpuTxt
  loc_C30B27: FStAdFunc var_198
  loc_C30B2A: FLdPr var_198
  loc_C30B2D:  = Me.Text
  loc_C30B32: ILdRf var_160
  loc_C30B35: ImpAdCallI2 Trim$()
  loc_C30B3A: FStStr var_3E0
  loc_C30B3D: FLdRfVar var_164
  loc_C30B40: FLdPr Me
  loc_C30B43: VCallAd Control_ID_CantImpuTxt
  loc_C30B46: FStAdFunc var_1CC
  loc_C30B49: FLdPr var_1CC
  loc_C30B4C:  = Me.Text
  loc_C30B51: FLdRfVar var_168
  loc_C30B54: FLdPr Me
  loc_C30B57: VCallAd Control_ID_ImunImpuTxt
  loc_C30B5A: FStAdFunc var_1D0
  loc_C30B5D: FLdPr var_1D0
  loc_C30B60:  = Me.Text
  loc_C30B65: FLdRfVar var_170
  loc_C30B68: FLdPr Me
  loc_C30B6B: VCallAd Control_ID_ImpoImpuTxt
  loc_C30B6E: FStAdFunc var_21C
  loc_C30B71: FLdPr var_21C
  loc_C30B74:  = Me.Text
  loc_C30B79: FLdRfVar var_174
  loc_C30B7C: FLdPr Me
  loc_C30B7F: VCallAd Control_ID_DetaImpuTxt
  loc_C30B82: FStAdFunc var_228
  loc_C30B85: FLdPr var_228
  loc_C30B88:  = Me.Text
  loc_C30B8D: FLdRfVar var_178
  loc_C30B90: FLdPr Me
  loc_C30B93: VCallAd Control_ID_CodiNopeLbl
  loc_C30B96: FStAdFunc var_22C
  loc_C30B99: FLdPr var_22C
  loc_C30B9C:  = Me.Caption
  loc_C30BA1: FLdRfVar var_17C
  loc_C30BA4: FLdPr Me
  loc_C30BA7: VCallAd Control_ID_CodiOrcoLbl
  loc_C30BAA: FStAdFunc var_280
  loc_C30BAD: FLdPr var_280
  loc_C30BB0:  = Me.Caption
  loc_C30BB5: FLdRfVar var_180
  loc_C30BB8: FLdPr Me
  loc_C30BBB: VCallAd Control_ID_CodiReceLbl
  loc_C30BBE: FStAdFunc var_284
  loc_C30BC1: FLdPr var_284
  loc_C30BC4:  = Me.Caption
  loc_C30BC9: FLdRfVar var_184
  loc_C30BCC: FLdPr Me
  loc_C30BCF: VCallAd Control_ID_ItemLbl
  loc_C30BD2: FStAdFunc var_2D8
  loc_C30BD5: FLdPr var_2D8
  loc_C30BD8:  = Me.Caption
  loc_C30BDD: FLdRfVar var_188
  loc_C30BE0: FLdPr Me
  loc_C30BE3: VCallAd Control_ID_AlternLbl
  loc_C30BE6: FStAdFunc var_2F0
  loc_C30BE9: FLdPr var_2F0
  loc_C30BEC:  = Me.Caption
  loc_C30BF1: FLdRfVar var_190
  loc_C30BF4: FLdPr Me
  loc_C30BF7: VCallAd Control_ID_CucuPersTxt
  loc_C30BFA: FStAdFunc var_304
  loc_C30BFD: FLdPr var_304
  loc_C30C00:  = Me.Text
  loc_C30C05: FLdRfVar var_194
  loc_C30C08: FLdPr Me
  loc_C30C0B: VCallAd Control_ID_TifaDeveCbo
  loc_C30C0E: FStAdFunc var_308
  loc_C30C11: FLdPr var_308
  loc_C30C14:  = Me.Text
  loc_C30C19: FLdRfVar var_214
  loc_C30C1C: FLdPr Me
  loc_C30C1F: VCallAd Control_ID_SufaDeveTxt
  loc_C30C22: FStAdFunc var_35C
  loc_C30C25: FLdPr var_35C
  loc_C30C28:  = Me.Text
  loc_C30C2D: LitI4 1
  loc_C30C32: LitI4 1
  loc_C30C37: LitVarStr var_D8, "0000"
  loc_C30C3C: FStVarCopyObj var_1C8
  loc_C30C3F: FLdRfVar var_1C8
  loc_C30C42: FLdZeroAd var_214
  loc_C30C45: CVarStr var_1B8
  loc_C30C48: ImpAdCallI2 Format$(, )
  loc_C30C4D: FStStr var_3E4
  loc_C30C50: FLdRfVar var_220
  loc_C30C53: FLdPr Me
  loc_C30C56: VCallAd Control_ID_NufaDeveTxt
  loc_C30C59: FStAdFunc var_360
  loc_C30C5C: FLdPr var_360
  loc_C30C5F:  = Me.Text
  loc_C30C64: LitI4 1
  loc_C30C69: LitI4 1
  loc_C30C6E: LitVarStr var_110, "00000000"
  loc_C30C73: FStVarCopyObj var_200
  loc_C30C76: FLdRfVar var_200
  loc_C30C79: FLdZeroAd var_220
  loc_C30C7C: CVarStr var_1F0
  loc_C30C7F: ImpAdCallI2 Format$(, )
  loc_C30C84: FStStr var_3E8
  loc_C30C87: FLdRfVar var_A0
  loc_C30C8A: LitI2_Byte 0
  loc_C30C8C: LitI2_Byte 0
  loc_C30C8E: LitStr vbNullString
  loc_C30C91: LitI4 0
  loc_C30C96: ILdRf var_194
  loc_C30C99: FLdZeroAd var_3E4
  loc_C30C9C: FStStrNoPop var_218
  loc_C30C9F: ConcatStr
  loc_C30CA0: FStStrNoPop var_224
  loc_C30CA3: FLdZeroAd var_3E8
  loc_C30CA6: FStStrNoPop var_2DC
  loc_C30CA9: ConcatStr
  loc_C30CAA: FStStrNoPop var_3DC
  loc_C30CAD: ILdRf var_190
  loc_C30CB0: ILdRf var_188
  loc_C30CB3: ILdRf var_184
  loc_C30CB6: ILdRf var_180
  loc_C30CB9: CI2Str
  loc_C30CBB: ILdRf var_17C
  loc_C30CBE: ILdRf var_178
  loc_C30CC1: ILdRf var_174
  loc_C30CC4: ILdRf var_170
  loc_C30CC7: CR8Str
  loc_C30CC9: PopFPR8
  loc_C30CCA: ILdRf var_168
  loc_C30CCD: CR8Str
  loc_C30CCF: PopFPR8
  loc_C30CD0: ILdRf var_164
  loc_C30CD3: CR8Str
  loc_C30CD5: PopFPR8
  loc_C30CD6: FLdZeroAd var_3E0
  loc_C30CD9: FStStrNoPop var_3D8
  loc_C30CDC: FLdRfVar var_1A8
  loc_C30CDF: CStrVarTmp
  loc_C30CE0: FStStrNoPop var_3D4
  loc_C30CE3: FLdRfVar var_15C
  loc_C30CE6: CStrVarTmp
  loc_C30CE7: FStStrNoPop var_3D0
  loc_C30CEA: FLdRfVar var_14C
  loc_C30CED: CStrVarTmp
  loc_C30CEE: FStStrNoPop var_3CC
  loc_C30CF1: FLdRfVar var_13C
  loc_C30CF4: CStrVarTmp
  loc_C30CF5: FStStrNoPop var_2EC
  loc_C30CF8: FLdRfVar var_124
  loc_C30CFB: CStrVarTmp
  loc_C30CFC: FStStrNoPop var_2E8
  loc_C30CFF: CI4Str
  loc_C30D00: ILdRf var_90
  loc_C30D03: CI2Str
  loc_C30D05: FLdRfVar var_E8
  loc_C30D08: CStrVarTmp
  loc_C30D09: FStStrNoPop var_2E4
  loc_C30D0C: FLdRfVar var_C8
  loc_C30D0F: CStrVarTmp
  loc_C30D10: FStStrNoPop var_2E0
  loc_C30D13: FLdRfVar var_210
  loc_C30D16: CI4Var
  loc_C30D18: FLdPr Me
  loc_C30D1B: MemLdRfVar from_stack_1.global_52
  loc_C30D1E: NewIfNullPr clsimputacion
  loc_C30D21: from_stack_16v = clsimputacion.DesafectarDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C30D26: ILdRf var_A0
  loc_C30D29: FLdPr Me
  loc_C30D2C: MemStI4 global_68
  loc_C30D2F: FFreeStr var_160 = "": var_194 = "": var_218 = "": var_224 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_90 = "": var_2E8 = "": var_2EC = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_164 = "": var_168 = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_190 = "": var_3DC = "": var_3E0 = "": var_3E4 = ""
  loc_C30D6A: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = ""
  loc_C30D9F: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1F0 = "": var_200 = ""
  loc_C30DBA: FLdPr Me
  loc_C30DBD: MemLdStr global_68
  loc_C30DC0: LitI4 0
  loc_C30DC5: EqI4
  loc_C30DC6: BranchF loc_C30DD6
  loc_C30DC9: LitI4 0
  loc_C30DCE: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C30DD1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C30DD6: Branch loc_C3271F
  loc_C30DD9: ILdRf var_464
  loc_C30DDC: LitI4 &HE
  loc_C30DE1: EqI4
  loc_C30DE2: BranchF loc_C314E8
  loc_C30DE5: FLdRfVar var_E8
  loc_C30DE8: FLdRfVar var_B8
  loc_C30DEB: LitVarStr var_B4, "CodiPart"
  loc_C30DF0: PopAdLdVar
  loc_C30DF1: FLdRfVar var_A4
  loc_C30DF4: FLdRfVar var_98
  loc_C30DF7: FLdPr Me
  loc_C30DFA: MemLdRfVar from_stack_1.global_52
  loc_C30DFD: NewIfNullPr clsimputacion
  loc_C30E00: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30E05: FLdPr var_98
  loc_C30E08:  = Me.Fields
  loc_C30E0D: FLdPr var_A4
  loc_C30E10: from_stack_2 = Me.Item(from_stack_1)
  loc_C30E15: FLdPr var_B8
  loc_C30E18:  = Me.Value
  loc_C30E1D: FLdRfVar var_124
  loc_C30E20: FLdRfVar var_F8
  loc_C30E23: LitVarStr var_D8, "CodiOrga"
  loc_C30E28: PopAdLdVar
  loc_C30E29: FLdRfVar var_F4
  loc_C30E2C: FLdRfVar var_F0
  loc_C30E2F: FLdPr Me
  loc_C30E32: MemLdRfVar from_stack_1.global_52
  loc_C30E35: NewIfNullPr clsimputacion
  loc_C30E38: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30E3D: FLdPr var_F0
  loc_C30E40:  = Me.Fields
  loc_C30E45: FLdPr var_F4
  loc_C30E48: from_stack_2 = Me.Item(from_stack_1)
  loc_C30E4D: FLdPr var_F8
  loc_C30E50:  = Me.Value
  loc_C30E55: FLdRfVar var_13C
  loc_C30E58: FLdRfVar var_114
  loc_C30E5B: LitVarStr var_110, "CodiUnga"
  loc_C30E60: PopAdLdVar
  loc_C30E61: FLdRfVar var_100
  loc_C30E64: FLdRfVar var_FC
  loc_C30E67: FLdPr Me
  loc_C30E6A: MemLdRfVar from_stack_1.global_52
  loc_C30E6D: NewIfNullPr clsimputacion
  loc_C30E70: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30E75: FLdPr var_FC
  loc_C30E78:  = Me.Fields
  loc_C30E7D: FLdPr var_100
  loc_C30E80: from_stack_2 = Me.Item(from_stack_1)
  loc_C30E85: FLdPr var_114
  loc_C30E88:  = Me.Value
  loc_C30E8D: FLdRfVar var_14C
  loc_C30E90: FLdRfVar var_198
  loc_C30E93: LitVarStr var_1E0, "CodiInsu"
  loc_C30E98: PopAdLdVar
  loc_C30E99: FLdRfVar var_18C
  loc_C30E9C: FLdRfVar var_16C
  loc_C30E9F: FLdPr Me
  loc_C30EA2: MemLdRfVar from_stack_1.global_52
  loc_C30EA5: NewIfNullPr clsimputacion
  loc_C30EA8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30EAD: FLdPr var_16C
  loc_C30EB0:  = Me.Fields
  loc_C30EB5: FLdPr var_18C
  loc_C30EB8: from_stack_2 = Me.Item(from_stack_1)
  loc_C30EBD: FLdPr var_198
  loc_C30EC0:  = Me.Value
  loc_C30EC5: FLdRfVar var_15C
  loc_C30EC8: FLdRfVar var_21C
  loc_C30ECB: LitVarStr var_23C, "CodiFifu"
  loc_C30ED0: PopAdLdVar
  loc_C30ED1: FLdRfVar var_1D0
  loc_C30ED4: FLdRfVar var_1CC
  loc_C30ED7: FLdPr Me
  loc_C30EDA: MemLdRfVar from_stack_1.global_52
  loc_C30EDD: NewIfNullPr clsimputacion
  loc_C30EE0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30EE5: FLdPr var_1CC
  loc_C30EE8:  = Me.Fields
  loc_C30EED: FLdPr var_1D0
  loc_C30EF0: from_stack_2 = Me.Item(from_stack_1)
  loc_C30EF5: FLdPr var_21C
  loc_C30EF8:  = Me.Value
  loc_C30EFD: FLdPr Me
  loc_C30F00: VCallAd Control_ID_FechImpuMsk
  loc_C30F03: FStAdFunc var_228
  loc_C30F06: FLdPr var_228
  loc_C30F09: LateIdLdVar var_C8 DispID_15 0
  loc_C30F10: PopAd
  loc_C30F12: FLdRfVar var_1A8
  loc_C30F15: FLdRfVar var_284
  loc_C30F18: LitVarStr var_24C, "ExorImpu"
  loc_C30F1D: PopAdLdVar
  loc_C30F1E: FLdRfVar var_280
  loc_C30F21: FLdRfVar var_22C
  loc_C30F24: FLdPr Me
  loc_C30F27: MemLdRfVar from_stack_1.global_52
  loc_C30F2A: NewIfNullPr clsimputacion
  loc_C30F2D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30F32: FLdPr var_22C
  loc_C30F35:  = Me.Fields
  loc_C30F3A: FLdPr var_280
  loc_C30F3D: from_stack_2 = Me.Item(from_stack_1)
  loc_C30F42: FLdPr var_284
  loc_C30F45:  = Me.Value
  loc_C30F4A: FLdRfVar var_90
  loc_C30F4D: FLdPr Me
  loc_C30F50: VCallAd Control_ID_CantImpuTxt
  loc_C30F53: FStAdFunc var_2D8
  loc_C30F56: FLdPr var_2D8
  loc_C30F59:  = Me.Text
  loc_C30F5E: FLdRfVar var_160
  loc_C30F61: FLdPr Me
  loc_C30F64: VCallAd Control_ID_ImunImpuTxt
  loc_C30F67: FStAdFunc var_2F0
  loc_C30F6A: FLdPr var_2F0
  loc_C30F6D:  = Me.Text
  loc_C30F72: FLdRfVar var_164
  loc_C30F75: FLdPr Me
  loc_C30F78: VCallAd Control_ID_ImpoImpuTxt
  loc_C30F7B: FStAdFunc var_304
  loc_C30F7E: FLdPr var_304
  loc_C30F81:  = Me.Text
  loc_C30F86: FLdRfVar var_168
  loc_C30F89: FLdPr Me
  loc_C30F8C: VCallAd Control_ID_DetaImpuTxt
  loc_C30F8F: FStAdFunc var_308
  loc_C30F92: FLdPr var_308
  loc_C30F95:  = Me.Text
  loc_C30F9A: FLdRfVar var_1B8
  loc_C30F9D: FLdRfVar var_364
  loc_C30FA0: LitVarStr var_294, "CodiNope"
  loc_C30FA5: PopAdLdVar
  loc_C30FA6: FLdRfVar var_360
  loc_C30FA9: FLdRfVar var_35C
  loc_C30FAC: FLdPr Me
  loc_C30FAF: MemLdRfVar from_stack_1.global_52
  loc_C30FB2: NewIfNullPr clsimputacion
  loc_C30FB5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30FBA: FLdPr var_35C
  loc_C30FBD:  = Me.Fields
  loc_C30FC2: FLdPr var_360
  loc_C30FC5: from_stack_2 = Me.Item(from_stack_1)
  loc_C30FCA: FLdPr var_364
  loc_C30FCD:  = Me.Value
  loc_C30FD2: FLdRfVar var_1C8
  loc_C30FD5: FLdRfVar var_46C
  loc_C30FD8: LitVarStr var_2A4, "CodiOrco"
  loc_C30FDD: PopAdLdVar
  loc_C30FDE: FLdRfVar var_468
  loc_C30FE1: FLdRfVar var_398
  loc_C30FE4: FLdPr Me
  loc_C30FE7: MemLdRfVar from_stack_1.global_52
  loc_C30FEA: NewIfNullPr clsimputacion
  loc_C30FED: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C30FF2: FLdPr var_398
  loc_C30FF5:  = Me.Fields
  loc_C30FFA: FLdPr var_468
  loc_C30FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_C31002: FLdPr var_46C
  loc_C31005:  = Me.Value
  loc_C3100A: FLdRfVar var_1F0
  loc_C3100D: FLdRfVar var_478
  loc_C31010: LitVarStr var_318, "Item"
  loc_C31015: PopAdLdVar
  loc_C31016: FLdRfVar var_474
  loc_C31019: FLdRfVar var_470
  loc_C3101C: FLdPr Me
  loc_C3101F: MemLdRfVar from_stack_1.global_52
  loc_C31022: NewIfNullPr clsimputacion
  loc_C31025: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3102A: FLdPr var_470
  loc_C3102D:  = Me.Fields
  loc_C31032: FLdPr var_474
  loc_C31035: from_stack_2 = Me.Item(from_stack_1)
  loc_C3103A: FLdPr var_478
  loc_C3103D:  = Me.Value
  loc_C31042: FLdRfVar var_200
  loc_C31045: FLdRfVar var_484
  loc_C31048: LitVarStr var_328, "Altern"
  loc_C3104D: PopAdLdVar
  loc_C3104E: FLdRfVar var_480
  loc_C31051: FLdRfVar var_47C
  loc_C31054: FLdPr Me
  loc_C31057: MemLdRfVar from_stack_1.global_52
  loc_C3105A: NewIfNullPr clsimputacion
  loc_C3105D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31062: FLdPr var_47C
  loc_C31065:  = Me.Fields
  loc_C3106A: FLdPr var_480
  loc_C3106D: from_stack_2 = Me.Item(from_stack_1)
  loc_C31072: FLdPr var_484
  loc_C31075:  = Me.Value
  loc_C3107A: FLdRfVar var_210
  loc_C3107D: FLdRfVar var_490
  loc_C31080: LitVarStr var_384, "CucuPers"
  loc_C31085: PopAdLdVar
  loc_C31086: FLdRfVar var_48C
  loc_C31089: FLdRfVar var_488
  loc_C3108C: FLdPr Me
  loc_C3108F: MemLdRfVar from_stack_1.global_52
  loc_C31092: NewIfNullPr clsimputacion
  loc_C31095: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3109A: FLdPr var_488
  loc_C3109D:  = Me.Fields
  loc_C310A2: FLdPr var_48C
  loc_C310A5: from_stack_2 = Me.Item(from_stack_1)
  loc_C310AA: FLdPr var_490
  loc_C310AD:  = Me.Value
  loc_C310B2: FLdRfVar var_A0
  loc_C310B5: LitI2_Byte 0
  loc_C310B7: LitI2_Byte 0
  loc_C310B9: LitI4 0
  loc_C310BE: FLdRfVar var_210
  loc_C310C1: CStrVarTmp
  loc_C310C2: FStStrNoPop var_184
  loc_C310C5: FLdRfVar var_200
  loc_C310C8: CUI1Var
  loc_C310CA: FLdRfVar var_1F0
  loc_C310CD: CI2Var
  loc_C310CE: FLdRfVar var_1C8
  loc_C310D1: CI4Var
  loc_C310D3: FLdRfVar var_1B8
  loc_C310D6: CI4Var
  loc_C310D8: ILdRf var_168
  loc_C310DB: ILdRf var_164
  loc_C310DE: CR8Str
  loc_C310E0: PopFPR8
  loc_C310E1: ILdRf var_160
  loc_C310E4: CR8Str
  loc_C310E6: PopFPR8
  loc_C310E7: ILdRf var_90
  loc_C310EA: CR8Str
  loc_C310EC: PopFPR8
  loc_C310ED: FLdRfVar var_1A8
  loc_C310F0: CStrVarTmp
  loc_C310F1: FStStrNoPop var_180
  loc_C310F4: FLdRfVar var_C8
  loc_C310F7: CStrVarTmp
  loc_C310F8: FStStrNoPop var_17C
  loc_C310FB: FLdRfVar var_15C
  loc_C310FE: CStrVarTmp
  loc_C310FF: FStStrNoPop var_178
  loc_C31102: FLdRfVar var_14C
  loc_C31105: CI4Var
  loc_C31107: FLdRfVar var_13C
  loc_C3110A: CI2Var
  loc_C3110B: FLdRfVar var_124
  loc_C3110E: CStrVarTmp
  loc_C3110F: FStStrNoPop var_174
  loc_C31112: FLdRfVar var_E8
  loc_C31115: CStrVarTmp
  loc_C31116: FStStrNoPop var_170
  loc_C31119: FLdPr Me
  loc_C3111C: MemLdRfVar from_stack_1.global_52
  loc_C3111F: NewIfNullPr clsimputacion
  loc_C31122: from_stack_16v = clsimputacion.DesafectarDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C31127: ILdRf var_A0
  loc_C3112A: FLdPr Me
  loc_C3112D: MemStI4 global_68
  loc_C31130: FFreeStr var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_90 = "": var_160 = "": var_164 = "": var_168 = ""
  loc_C31147: FFreeAd var_198 = "": var_21C = "": var_284 = "": var_364 = "": var_46C = "": var_478 = "": var_484 = "": var_490 = "": var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_16C = "": var_18C = "": var_1CC = "": var_1D0 = "": var_228 = "": var_22C = "": var_280 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = "": var_398 = "": var_468 = "": var_470 = "": var_474 = "": var_47C = "": var_480 = "": var_488 = "": var_48C = "": var_B8 = "": var_F8 = ""
  loc_C31196: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1F0 = "": var_200 = ""
  loc_C311B1: FLdPr Me
  loc_C311B4: MemLdStr global_68
  loc_C311B7: LitI4 0
  loc_C311BC: EqI4
  loc_C311BD: BranchF loc_C311D0
  loc_C311C0: LitI4 0
  loc_C311C5: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C311C8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C311CD: Branch loc_C314E5
  loc_C311D0: FLdRfVar var_E8
  loc_C311D3: FLdRfVar var_B8
  loc_C311D6: LitVarStr var_B4, "CodiPart"
  loc_C311DB: PopAdLdVar
  loc_C311DC: FLdRfVar var_A4
  loc_C311DF: FLdRfVar var_98
  loc_C311E2: FLdPr Me
  loc_C311E5: MemLdRfVar from_stack_1.global_52
  loc_C311E8: NewIfNullPr clsimputacion
  loc_C311EB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C311F0: FLdPr var_98
  loc_C311F3:  = Me.Fields
  loc_C311F8: FLdPr var_A4
  loc_C311FB: from_stack_2 = Me.Item(from_stack_1)
  loc_C31200: FLdPr var_B8
  loc_C31203:  = Me.Value
  loc_C31208: FLdRfVar var_124
  loc_C3120B: FLdRfVar var_F8
  loc_C3120E: LitVarStr var_D8, "CodiOrga"
  loc_C31213: PopAdLdVar
  loc_C31214: FLdRfVar var_F4
  loc_C31217: FLdRfVar var_F0
  loc_C3121A: FLdPr Me
  loc_C3121D: MemLdRfVar from_stack_1.global_52
  loc_C31220: NewIfNullPr clsimputacion
  loc_C31223: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31228: FLdPr var_F0
  loc_C3122B:  = Me.Fields
  loc_C31230: FLdPr var_F4
  loc_C31233: from_stack_2 = Me.Item(from_stack_1)
  loc_C31238: FLdPr var_F8
  loc_C3123B:  = Me.Value
  loc_C31240: FLdRfVar var_13C
  loc_C31243: FLdRfVar var_114
  loc_C31246: LitVarStr var_110, "CodiUnga"
  loc_C3124B: PopAdLdVar
  loc_C3124C: FLdRfVar var_100
  loc_C3124F: FLdRfVar var_FC
  loc_C31252: FLdPr Me
  loc_C31255: MemLdRfVar from_stack_1.global_52
  loc_C31258: NewIfNullPr clsimputacion
  loc_C3125B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31260: FLdPr var_FC
  loc_C31263:  = Me.Fields
  loc_C31268: FLdPr var_100
  loc_C3126B: from_stack_2 = Me.Item(from_stack_1)
  loc_C31270: FLdPr var_114
  loc_C31273:  = Me.Value
  loc_C31278: FLdRfVar var_14C
  loc_C3127B: FLdRfVar var_198
  loc_C3127E: LitVarStr var_1E0, "CodiInsu"
  loc_C31283: PopAdLdVar
  loc_C31284: FLdRfVar var_18C
  loc_C31287: FLdRfVar var_16C
  loc_C3128A: FLdPr Me
  loc_C3128D: MemLdRfVar from_stack_1.global_52
  loc_C31290: NewIfNullPr clsimputacion
  loc_C31293: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31298: FLdPr var_16C
  loc_C3129B:  = Me.Fields
  loc_C312A0: FLdPr var_18C
  loc_C312A3: from_stack_2 = Me.Item(from_stack_1)
  loc_C312A8: FLdPr var_198
  loc_C312AB:  = Me.Value
  loc_C312B0: FLdRfVar var_15C
  loc_C312B3: FLdRfVar var_21C
  loc_C312B6: LitVarStr var_23C, "CodiFifu"
  loc_C312BB: PopAdLdVar
  loc_C312BC: FLdRfVar var_1D0
  loc_C312BF: FLdRfVar var_1CC
  loc_C312C2: FLdPr Me
  loc_C312C5: MemLdRfVar from_stack_1.global_52
  loc_C312C8: NewIfNullPr clsimputacion
  loc_C312CB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C312D0: FLdPr var_1CC
  loc_C312D3:  = Me.Fields
  loc_C312D8: FLdPr var_1D0
  loc_C312DB: from_stack_2 = Me.Item(from_stack_1)
  loc_C312E0: FLdPr var_21C
  loc_C312E3:  = Me.Value
  loc_C312E8: FLdPr Me
  loc_C312EB: VCallAd Control_ID_FechImpuMsk
  loc_C312EE: FStAdFunc var_228
  loc_C312F1: FLdPr var_228
  loc_C312F4: LateIdLdVar var_C8 DispID_15 0
  loc_C312FB: PopAd
  loc_C312FD: FLdRfVar var_1A8
  loc_C31300: FLdRfVar var_284
  loc_C31303: LitVarStr var_24C, "ExorImpu"
  loc_C31308: PopAdLdVar
  loc_C31309: FLdRfVar var_280
  loc_C3130C: FLdRfVar var_22C
  loc_C3130F: FLdPr Me
  loc_C31312: MemLdRfVar from_stack_1.global_52
  loc_C31315: NewIfNullPr clsimputacion
  loc_C31318: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3131D: FLdPr var_22C
  loc_C31320:  = Me.Fields
  loc_C31325: FLdPr var_280
  loc_C31328: from_stack_2 = Me.Item(from_stack_1)
  loc_C3132D: FLdPr var_284
  loc_C31330:  = Me.Value
  loc_C31335: FLdRfVar var_90
  loc_C31338: FLdPr Me
  loc_C3133B: VCallAd Control_ID_CantImpuTxt
  loc_C3133E: FStAdFunc var_2D8
  loc_C31341: FLdPr var_2D8
  loc_C31344:  = Me.Text
  loc_C31349: FLdRfVar var_160
  loc_C3134C: FLdPr Me
  loc_C3134F: VCallAd Control_ID_ImunImpuTxt
  loc_C31352: FStAdFunc var_2F0
  loc_C31355: FLdPr var_2F0
  loc_C31358:  = Me.Text
  loc_C3135D: FLdRfVar var_164
  loc_C31360: FLdPr Me
  loc_C31363: VCallAd Control_ID_ImpoImpuTxt
  loc_C31366: FStAdFunc var_304
  loc_C31369: FLdPr var_304
  loc_C3136C:  = Me.Text
  loc_C31371: FLdRfVar var_168
  loc_C31374: FLdPr Me
  loc_C31377: VCallAd Control_ID_DetaImpuTxt
  loc_C3137A: FStAdFunc var_308
  loc_C3137D: FLdPr var_308
  loc_C31380:  = Me.Text
  loc_C31385: FLdRfVar var_1B8
  loc_C31388: FLdRfVar var_364
  loc_C3138B: LitVarStr var_294, "CodiNope"
  loc_C31390: PopAdLdVar
  loc_C31391: FLdRfVar var_360
  loc_C31394: FLdRfVar var_35C
  loc_C31397: FLdPr Me
  loc_C3139A: MemLdRfVar from_stack_1.global_52
  loc_C3139D: NewIfNullPr clsimputacion
  loc_C313A0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C313A5: FLdPr var_35C
  loc_C313A8:  = Me.Fields
  loc_C313AD: FLdPr var_360
  loc_C313B0: from_stack_2 = Me.Item(from_stack_1)
  loc_C313B5: FLdPr var_364
  loc_C313B8:  = Me.Value
  loc_C313BD: FLdRfVar var_1C8
  loc_C313C0: FLdRfVar var_46C
  loc_C313C3: LitVarStr var_2A4, "Item"
  loc_C313C8: PopAdLdVar
  loc_C313C9: FLdRfVar var_468
  loc_C313CC: FLdRfVar var_398
  loc_C313CF: FLdPr Me
  loc_C313D2: MemLdRfVar from_stack_1.global_52
  loc_C313D5: NewIfNullPr clsimputacion
  loc_C313D8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C313DD: FLdPr var_398
  loc_C313E0:  = Me.Fields
  loc_C313E5: FLdPr var_468
  loc_C313E8: from_stack_2 = Me.Item(from_stack_1)
  loc_C313ED: FLdPr var_46C
  loc_C313F0:  = Me.Value
  loc_C313F5: FLdRfVar var_A0
  loc_C313F8: LitI2_Byte 0
  loc_C313FA: LitI2_Byte 0
  loc_C313FC: LitI4 0
  loc_C31401: FLdRfVar var_1C8
  loc_C31404: CI2Var
  loc_C31405: FLdRfVar var_1B8
  loc_C31408: CI4Var
  loc_C3140A: ILdRf var_168
  loc_C3140D: ILdRf var_164
  loc_C31410: CR8Str
  loc_C31412: PopFPR8
  loc_C31413: ILdRf var_160
  loc_C31416: CR8Str
  loc_C31418: PopFPR8
  loc_C31419: ILdRf var_90
  loc_C3141C: CR8Str
  loc_C3141E: PopFPR8
  loc_C3141F: FLdRfVar var_1A8
  loc_C31422: CStrVarTmp
  loc_C31423: FStStrNoPop var_180
  loc_C31426: FLdRfVar var_C8
  loc_C31429: CStrVarTmp
  loc_C3142A: FStStrNoPop var_17C
  loc_C3142D: FLdRfVar var_15C
  loc_C31430: CStrVarTmp
  loc_C31431: FStStrNoPop var_178
  loc_C31434: FLdRfVar var_14C
  loc_C31437: CI4Var
  loc_C31439: FLdRfVar var_13C
  loc_C3143C: CI2Var
  loc_C3143D: FLdRfVar var_124
  loc_C31440: CStrVarTmp
  loc_C31441: FStStrNoPop var_174
  loc_C31444: FLdRfVar var_E8
  loc_C31447: CStrVarTmp
  loc_C31448: FStStrNoPop var_170
  loc_C3144B: FLdPr Me
  loc_C3144E: MemLdRfVar from_stack_1.global_52
  loc_C31451: NewIfNullPr clsimputacion
  loc_C31454: from_stack_16v = clsimputacion.DesafectarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C31459: ILdRf var_A0
  loc_C3145C: FLdPr Me
  loc_C3145F: MemStI4 global_68
  loc_C31462: FFreeStr var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_90 = "": var_160 = "": var_164 = ""
  loc_C31477: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_16C = "": var_18C = "": var_1CC = "": var_1D0 = "": var_228 = "": var_22C = "": var_280 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = "": var_398 = "": var_468 = "": var_B8 = "": var_F8 = "": var_114 = "": var_198 = "": var_21C = "": var_284 = "": var_364 = ""
  loc_C314B4: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_1B8 = ""
  loc_C314C9: FLdPr Me
  loc_C314CC: MemLdStr global_68
  loc_C314CF: LitI4 0
  loc_C314D4: EqI4
  loc_C314D5: BranchF loc_C314E5
  loc_C314D8: LitI4 0
  loc_C314DD: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C314E0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C314E5: Branch loc_C3271F
  loc_C314E8: ILdRf var_464
  loc_C314EB: LitI4 &HF
  loc_C314F0: EqI4
  loc_C314F1: BranchF loc_C31C79
  loc_C314F4: FLdRfVar var_210
  loc_C314F7: FLdRfVar var_B8
  loc_C314FA: LitVarStr var_B4, "IdImpu"
  loc_C314FF: PopAdLdVar
  loc_C31500: FLdRfVar var_A4
  loc_C31503: FLdRfVar var_98
  loc_C31506: FLdPr Me
  loc_C31509: MemLdRfVar from_stack_1.global_52
  loc_C3150C: NewIfNullPr clsimputacion
  loc_C3150F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31514: FLdPr var_98
  loc_C31517:  = Me.Fields
  loc_C3151C: FLdPr var_A4
  loc_C3151F: from_stack_2 = Me.Item(from_stack_1)
  loc_C31524: FLdPr var_B8
  loc_C31527:  = Me.Value
  loc_C3152C: FLdPr Me
  loc_C3152F: VCallAd Control_ID_CodiPartMsk
  loc_C31532: FStAdFunc var_F0
  loc_C31535: FLdPr var_F0
  loc_C31538: LateIdLdVar var_C8 DispID_22 0
  loc_C3153F: PopAd
  loc_C31541: FLdPr Me
  loc_C31544: VCallAd Control_ID_CodiOrgaMsk
  loc_C31547: FStAdFunc var_F4
  loc_C3154A: FLdPr var_F4
  loc_C3154D: LateIdLdVar var_E8 DispID_22 0
  loc_C31554: PopAd
  loc_C31556: FLdRfVar var_90
  loc_C31559: FLdPr Me
  loc_C3155C: VCallAd Control_ID_CodiUngaTxt
  loc_C3155F: FStAdFunc var_F8
  loc_C31562: FLdPr var_F8
  loc_C31565:  = Me.Text
  loc_C3156A: FLdPr Me
  loc_C3156D: VCallAd Control_ID_CodiInsuMsk
  loc_C31570: FStAdFunc var_FC
  loc_C31573: FLdPr var_FC
  loc_C31576: LateIdLdVar var_124 DispID_22 0
  loc_C3157D: PopAd
  loc_C3157F: FLdPr Me
  loc_C31582: VCallAd Control_ID_CodiFifuMsk
  loc_C31585: FStAdFunc var_100
  loc_C31588: FLdPr var_100
  loc_C3158B: LateIdLdVar var_13C DispID_22 0
  loc_C31592: PopAd
  loc_C31594: FLdPr Me
  loc_C31597: VCallAd Control_ID_FechDeveMsk
  loc_C3159A: FStAdFunc var_114
  loc_C3159D: FLdPr var_114
  loc_C315A0: LateIdLdVar var_14C DispID_15 0
  loc_C315A7: PopAd
  loc_C315A9: FLdPr Me
  loc_C315AC: VCallAd Control_ID_FefaDeveMsk
  loc_C315AF: FStAdFunc var_16C
  loc_C315B2: FLdPr var_16C
  loc_C315B5: LateIdLdVar var_15C DispID_15 0
  loc_C315BC: PopAd
  loc_C315BE: FLdPr Me
  loc_C315C1: VCallAd Control_ID_ExorImpuMsk
  loc_C315C4: FStAdFunc var_18C
  loc_C315C7: FLdPr var_18C
  loc_C315CA: LateIdLdVar var_1A8 DispID_15 0
  loc_C315D1: PopAd
  loc_C315D3: FLdRfVar var_160
  loc_C315D6: FLdPr Me
  loc_C315D9: VCallAd Control_ID_ExpeImpuTxt
  loc_C315DC: FStAdFunc var_198
  loc_C315DF: FLdPr var_198
  loc_C315E2:  = Me.Text
  loc_C315E7: ILdRf var_160
  loc_C315EA: ImpAdCallI2 Trim$()
  loc_C315EF: FStStr var_3E0
  loc_C315F2: FLdRfVar var_164
  loc_C315F5: FLdPr Me
  loc_C315F8: VCallAd Control_ID_CantImpuTxt
  loc_C315FB: FStAdFunc var_1CC
  loc_C315FE: FLdPr var_1CC
  loc_C31601:  = Me.Text
  loc_C31606: FLdRfVar var_168
  loc_C31609: FLdPr Me
  loc_C3160C: VCallAd Control_ID_ImunImpuTxt
  loc_C3160F: FStAdFunc var_1D0
  loc_C31612: FLdPr var_1D0
  loc_C31615:  = Me.Text
  loc_C3161A: FLdRfVar var_170
  loc_C3161D: FLdPr Me
  loc_C31620: VCallAd Control_ID_ImpoImpuTxt
  loc_C31623: FStAdFunc var_21C
  loc_C31626: FLdPr var_21C
  loc_C31629:  = Me.Text
  loc_C3162E: FLdRfVar var_174
  loc_C31631: FLdPr Me
  loc_C31634: VCallAd Control_ID_DetaImpuTxt
  loc_C31637: FStAdFunc var_228
  loc_C3163A: FLdPr var_228
  loc_C3163D:  = Me.Text
  loc_C31642: FLdRfVar var_178
  loc_C31645: FLdPr Me
  loc_C31648: VCallAd Control_ID_CodiNopeLbl
  loc_C3164B: FStAdFunc var_22C
  loc_C3164E: FLdPr var_22C
  loc_C31651:  = Me.Caption
  loc_C31656: FLdRfVar var_17C
  loc_C31659: FLdPr Me
  loc_C3165C: VCallAd Control_ID_CodiOrcoLbl
  loc_C3165F: FStAdFunc var_280
  loc_C31662: FLdPr var_280
  loc_C31665:  = Me.Caption
  loc_C3166A: FLdRfVar var_180
  loc_C3166D: FLdPr Me
  loc_C31670: VCallAd Control_ID_CodiReceLbl
  loc_C31673: FStAdFunc var_284
  loc_C31676: FLdPr var_284
  loc_C31679:  = Me.Caption
  loc_C3167E: FLdRfVar var_184
  loc_C31681: FLdPr Me
  loc_C31684: VCallAd Control_ID_ItemLbl
  loc_C31687: FStAdFunc var_2D8
  loc_C3168A: FLdPr var_2D8
  loc_C3168D:  = Me.Caption
  loc_C31692: FLdRfVar var_188
  loc_C31695: FLdPr Me
  loc_C31698: VCallAd Control_ID_AlternLbl
  loc_C3169B: FStAdFunc var_2F0
  loc_C3169E: FLdPr var_2F0
  loc_C316A1:  = Me.Caption
  loc_C316A6: FLdRfVar var_190
  loc_C316A9: FLdPr Me
  loc_C316AC: VCallAd Control_ID_CucuPersTxt
  loc_C316AF: FStAdFunc var_304
  loc_C316B2: FLdPr var_304
  loc_C316B5:  = Me.Text
  loc_C316BA: FLdRfVar var_194
  loc_C316BD: FLdPr Me
  loc_C316C0: VCallAd Control_ID_TifaDeveCbo
  loc_C316C3: FStAdFunc var_308
  loc_C316C6: FLdPr var_308
  loc_C316C9:  = Me.Text
  loc_C316CE: FLdRfVar var_214
  loc_C316D1: FLdPr Me
  loc_C316D4: VCallAd Control_ID_SufaDeveTxt
  loc_C316D7: FStAdFunc var_35C
  loc_C316DA: FLdPr var_35C
  loc_C316DD:  = Me.Text
  loc_C316E2: LitI4 1
  loc_C316E7: LitI4 1
  loc_C316EC: LitVarStr var_D8, "0000"
  loc_C316F1: FStVarCopyObj var_1C8
  loc_C316F4: FLdRfVar var_1C8
  loc_C316F7: FLdZeroAd var_214
  loc_C316FA: CVarStr var_1B8
  loc_C316FD: ImpAdCallI2 Format$(, )
  loc_C31702: FStStr var_3E4
  loc_C31705: FLdRfVar var_220
  loc_C31708: FLdPr Me
  loc_C3170B: VCallAd Control_ID_NufaDeveTxt
  loc_C3170E: FStAdFunc var_360
  loc_C31711: FLdPr var_360
  loc_C31714:  = Me.Text
  loc_C31719: LitI4 1
  loc_C3171E: LitI4 1
  loc_C31723: LitVarStr var_110, "00000000"
  loc_C31728: FStVarCopyObj var_200
  loc_C3172B: FLdRfVar var_200
  loc_C3172E: FLdZeroAd var_220
  loc_C31731: CVarStr var_1F0
  loc_C31734: ImpAdCallI2 Format$(, )
  loc_C31739: FStStr var_3E8
  loc_C3173C: FLdRfVar var_A0
  loc_C3173F: LitI2_Byte 0
  loc_C31741: LitI2_Byte 0
  loc_C31743: LitStr vbNullString
  loc_C31746: LitI4 0
  loc_C3174B: ILdRf var_194
  loc_C3174E: FLdZeroAd var_3E4
  loc_C31751: FStStrNoPop var_218
  loc_C31754: ConcatStr
  loc_C31755: FStStrNoPop var_224
  loc_C31758: FLdZeroAd var_3E8
  loc_C3175B: FStStrNoPop var_2DC
  loc_C3175E: ConcatStr
  loc_C3175F: FStStrNoPop var_3DC
  loc_C31762: ILdRf var_190
  loc_C31765: ILdRf var_188
  loc_C31768: ILdRf var_184
  loc_C3176B: ILdRf var_180
  loc_C3176E: CI2Str
  loc_C31770: ILdRf var_17C
  loc_C31773: ILdRf var_178
  loc_C31776: ILdRf var_174
  loc_C31779: ILdRf var_170
  loc_C3177C: CR8Str
  loc_C3177E: PopFPR8
  loc_C3177F: ILdRf var_168
  loc_C31782: CR8Str
  loc_C31784: PopFPR8
  loc_C31785: ILdRf var_164
  loc_C31788: CR8Str
  loc_C3178A: PopFPR8
  loc_C3178B: FLdZeroAd var_3E0
  loc_C3178E: FStStrNoPop var_3D8
  loc_C31791: FLdRfVar var_1A8
  loc_C31794: CStrVarTmp
  loc_C31795: FStStrNoPop var_3D4
  loc_C31798: FLdRfVar var_15C
  loc_C3179B: CStrVarTmp
  loc_C3179C: FStStrNoPop var_3D0
  loc_C3179F: FLdRfVar var_14C
  loc_C317A2: CStrVarTmp
  loc_C317A3: FStStrNoPop var_3CC
  loc_C317A6: FLdRfVar var_13C
  loc_C317A9: CStrVarTmp
  loc_C317AA: FStStrNoPop var_2EC
  loc_C317AD: FLdRfVar var_124
  loc_C317B0: CStrVarTmp
  loc_C317B1: FStStrNoPop var_2E8
  loc_C317B4: CI4Str
  loc_C317B5: ILdRf var_90
  loc_C317B8: CI2Str
  loc_C317BA: FLdRfVar var_E8
  loc_C317BD: CStrVarTmp
  loc_C317BE: FStStrNoPop var_2E4
  loc_C317C1: FLdRfVar var_C8
  loc_C317C4: CStrVarTmp
  loc_C317C5: FStStrNoPop var_2E0
  loc_C317C8: FLdRfVar var_210
  loc_C317CB: CI4Var
  loc_C317CD: FLdPr Me
  loc_C317D0: MemLdRfVar from_stack_1.global_52
  loc_C317D3: NewIfNullPr clsimputacion
  loc_C317D6: from_stack_16v = clsimputacion.DesafectarDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C317DB: ILdRf var_A0
  loc_C317DE: FLdPr Me
  loc_C317E1: MemStI4 global_68
  loc_C317E4: FFreeStr var_160 = "": var_194 = "": var_218 = "": var_224 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_90 = "": var_2E8 = "": var_2EC = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_164 = "": var_168 = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_190 = "": var_3DC = "": var_3E0 = "": var_3E4 = ""
  loc_C3181F: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = ""
  loc_C31854: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1F0 = "": var_200 = ""
  loc_C3186F: FLdPr Me
  loc_C31872: MemLdStr global_68
  loc_C31875: LitI4 0
  loc_C3187A: EqI4
  loc_C3187B: BranchF loc_C3188E
  loc_C3187E: LitI4 0
  loc_C31883: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C31886: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C3188B: Branch loc_C31C76
  loc_C3188E: FLdRfVar var_E8
  loc_C31891: FLdRfVar var_B8
  loc_C31894: LitVarStr var_B4, "CodiPart"
  loc_C31899: PopAdLdVar
  loc_C3189A: FLdRfVar var_A4
  loc_C3189D: FLdRfVar var_98
  loc_C318A0: FLdPr Me
  loc_C318A3: MemLdRfVar from_stack_1.global_52
  loc_C318A6: NewIfNullPr clsimputacion
  loc_C318A9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C318AE: FLdPr var_98
  loc_C318B1:  = Me.Fields
  loc_C318B6: FLdPr var_A4
  loc_C318B9: from_stack_2 = Me.Item(from_stack_1)
  loc_C318BE: FLdPr var_B8
  loc_C318C1:  = Me.Value
  loc_C318C6: FLdRfVar var_124
  loc_C318C9: FLdRfVar var_F8
  loc_C318CC: LitVarStr var_D8, "CodiOrga"
  loc_C318D1: PopAdLdVar
  loc_C318D2: FLdRfVar var_F4
  loc_C318D5: FLdRfVar var_F0
  loc_C318D8: FLdPr Me
  loc_C318DB: MemLdRfVar from_stack_1.global_52
  loc_C318DE: NewIfNullPr clsimputacion
  loc_C318E1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C318E6: FLdPr var_F0
  loc_C318E9:  = Me.Fields
  loc_C318EE: FLdPr var_F4
  loc_C318F1: from_stack_2 = Me.Item(from_stack_1)
  loc_C318F6: FLdPr var_F8
  loc_C318F9:  = Me.Value
  loc_C318FE: FLdRfVar var_13C
  loc_C31901: FLdRfVar var_114
  loc_C31904: LitVarStr var_110, "CodiUnga"
  loc_C31909: PopAdLdVar
  loc_C3190A: FLdRfVar var_100
  loc_C3190D: FLdRfVar var_FC
  loc_C31910: FLdPr Me
  loc_C31913: MemLdRfVar from_stack_1.global_52
  loc_C31916: NewIfNullPr clsimputacion
  loc_C31919: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3191E: FLdPr var_FC
  loc_C31921:  = Me.Fields
  loc_C31926: FLdPr var_100
  loc_C31929: from_stack_2 = Me.Item(from_stack_1)
  loc_C3192E: FLdPr var_114
  loc_C31931:  = Me.Value
  loc_C31936: FLdRfVar var_14C
  loc_C31939: FLdRfVar var_198
  loc_C3193C: LitVarStr var_1E0, "CodiInsu"
  loc_C31941: PopAdLdVar
  loc_C31942: FLdRfVar var_18C
  loc_C31945: FLdRfVar var_16C
  loc_C31948: FLdPr Me
  loc_C3194B: MemLdRfVar from_stack_1.global_52
  loc_C3194E: NewIfNullPr clsimputacion
  loc_C31951: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31956: FLdPr var_16C
  loc_C31959:  = Me.Fields
  loc_C3195E: FLdPr var_18C
  loc_C31961: from_stack_2 = Me.Item(from_stack_1)
  loc_C31966: FLdPr var_198
  loc_C31969:  = Me.Value
  loc_C3196E: FLdRfVar var_15C
  loc_C31971: FLdRfVar var_21C
  loc_C31974: LitVarStr var_23C, "CodiFifu"
  loc_C31979: PopAdLdVar
  loc_C3197A: FLdRfVar var_1D0
  loc_C3197D: FLdRfVar var_1CC
  loc_C31980: FLdPr Me
  loc_C31983: MemLdRfVar from_stack_1.global_52
  loc_C31986: NewIfNullPr clsimputacion
  loc_C31989: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3198E: FLdPr var_1CC
  loc_C31991:  = Me.Fields
  loc_C31996: FLdPr var_1D0
  loc_C31999: from_stack_2 = Me.Item(from_stack_1)
  loc_C3199E: FLdPr var_21C
  loc_C319A1:  = Me.Value
  loc_C319A6: FLdPr Me
  loc_C319A9: VCallAd Control_ID_FechImpuMsk
  loc_C319AC: FStAdFunc var_228
  loc_C319AF: FLdPr var_228
  loc_C319B2: LateIdLdVar var_C8 DispID_15 0
  loc_C319B9: PopAd
  loc_C319BB: FLdRfVar var_1A8
  loc_C319BE: FLdRfVar var_284
  loc_C319C1: LitVarStr var_24C, "ExorImpu"
  loc_C319C6: PopAdLdVar
  loc_C319C7: FLdRfVar var_280
  loc_C319CA: FLdRfVar var_22C
  loc_C319CD: FLdPr Me
  loc_C319D0: MemLdRfVar from_stack_1.global_52
  loc_C319D3: NewIfNullPr clsimputacion
  loc_C319D6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C319DB: FLdPr var_22C
  loc_C319DE:  = Me.Fields
  loc_C319E3: FLdPr var_280
  loc_C319E6: from_stack_2 = Me.Item(from_stack_1)
  loc_C319EB: FLdPr var_284
  loc_C319EE:  = Me.Value
  loc_C319F3: FLdRfVar var_90
  loc_C319F6: FLdPr Me
  loc_C319F9: VCallAd Control_ID_CantImpuTxt
  loc_C319FC: FStAdFunc var_2D8
  loc_C319FF: FLdPr var_2D8
  loc_C31A02:  = Me.Text
  loc_C31A07: FLdRfVar var_160
  loc_C31A0A: FLdPr Me
  loc_C31A0D: VCallAd Control_ID_ImunImpuTxt
  loc_C31A10: FStAdFunc var_2F0
  loc_C31A13: FLdPr var_2F0
  loc_C31A16:  = Me.Text
  loc_C31A1B: FLdRfVar var_164
  loc_C31A1E: FLdPr Me
  loc_C31A21: VCallAd Control_ID_ImpoImpuTxt
  loc_C31A24: FStAdFunc var_304
  loc_C31A27: FLdPr var_304
  loc_C31A2A:  = Me.Text
  loc_C31A2F: FLdRfVar var_168
  loc_C31A32: FLdPr Me
  loc_C31A35: VCallAd Control_ID_DetaImpuTxt
  loc_C31A38: FStAdFunc var_308
  loc_C31A3B: FLdPr var_308
  loc_C31A3E:  = Me.Text
  loc_C31A43: FLdRfVar var_1B8
  loc_C31A46: FLdRfVar var_364
  loc_C31A49: LitVarStr var_294, "CodiNope"
  loc_C31A4E: PopAdLdVar
  loc_C31A4F: FLdRfVar var_360
  loc_C31A52: FLdRfVar var_35C
  loc_C31A55: FLdPr Me
  loc_C31A58: MemLdRfVar from_stack_1.global_52
  loc_C31A5B: NewIfNullPr clsimputacion
  loc_C31A5E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31A63: FLdPr var_35C
  loc_C31A66:  = Me.Fields
  loc_C31A6B: FLdPr var_360
  loc_C31A6E: from_stack_2 = Me.Item(from_stack_1)
  loc_C31A73: FLdPr var_364
  loc_C31A76:  = Me.Value
  loc_C31A7B: FLdRfVar var_1C8
  loc_C31A7E: FLdRfVar var_46C
  loc_C31A81: LitVarStr var_2A4, "CodiOrco"
  loc_C31A86: PopAdLdVar
  loc_C31A87: FLdRfVar var_468
  loc_C31A8A: FLdRfVar var_398
  loc_C31A8D: FLdPr Me
  loc_C31A90: MemLdRfVar from_stack_1.global_52
  loc_C31A93: NewIfNullPr clsimputacion
  loc_C31A96: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31A9B: FLdPr var_398
  loc_C31A9E:  = Me.Fields
  loc_C31AA3: FLdPr var_468
  loc_C31AA6: from_stack_2 = Me.Item(from_stack_1)
  loc_C31AAB: FLdPr var_46C
  loc_C31AAE:  = Me.Value
  loc_C31AB3: FLdRfVar var_1F0
  loc_C31AB6: FLdRfVar var_478
  loc_C31AB9: LitVarStr var_318, "Item"
  loc_C31ABE: PopAdLdVar
  loc_C31ABF: FLdRfVar var_474
  loc_C31AC2: FLdRfVar var_470
  loc_C31AC5: FLdPr Me
  loc_C31AC8: MemLdRfVar from_stack_1.global_52
  loc_C31ACB: NewIfNullPr clsimputacion
  loc_C31ACE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31AD3: FLdPr var_470
  loc_C31AD6:  = Me.Fields
  loc_C31ADB: FLdPr var_474
  loc_C31ADE: from_stack_2 = Me.Item(from_stack_1)
  loc_C31AE3: FLdPr var_478
  loc_C31AE6:  = Me.Value
  loc_C31AEB: FLdRfVar var_200
  loc_C31AEE: FLdRfVar var_484
  loc_C31AF1: LitVarStr var_328, "Altern"
  loc_C31AF6: PopAdLdVar
  loc_C31AF7: FLdRfVar var_480
  loc_C31AFA: FLdRfVar var_47C
  loc_C31AFD: FLdPr Me
  loc_C31B00: MemLdRfVar from_stack_1.global_52
  loc_C31B03: NewIfNullPr clsimputacion
  loc_C31B06: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31B0B: FLdPr var_47C
  loc_C31B0E:  = Me.Fields
  loc_C31B13: FLdPr var_480
  loc_C31B16: from_stack_2 = Me.Item(from_stack_1)
  loc_C31B1B: FLdPr var_484
  loc_C31B1E:  = Me.Value
  loc_C31B23: FLdRfVar var_210
  loc_C31B26: FLdRfVar var_490
  loc_C31B29: LitVarStr var_384, "CucuPers"
  loc_C31B2E: PopAdLdVar
  loc_C31B2F: FLdRfVar var_48C
  loc_C31B32: FLdRfVar var_488
  loc_C31B35: FLdPr Me
  loc_C31B38: MemLdRfVar from_stack_1.global_52
  loc_C31B3B: NewIfNullPr clsimputacion
  loc_C31B3E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31B43: FLdPr var_488
  loc_C31B46:  = Me.Fields
  loc_C31B4B: FLdPr var_48C
  loc_C31B4E: from_stack_2 = Me.Item(from_stack_1)
  loc_C31B53: FLdPr var_490
  loc_C31B56:  = Me.Value
  loc_C31B5B: FLdRfVar var_A0
  loc_C31B5E: LitI2_Byte 0
  loc_C31B60: LitI2_Byte 0
  loc_C31B62: LitI4 0
  loc_C31B67: FLdRfVar var_210
  loc_C31B6A: CStrVarTmp
  loc_C31B6B: FStStrNoPop var_184
  loc_C31B6E: FLdRfVar var_200
  loc_C31B71: CUI1Var
  loc_C31B73: FLdRfVar var_1F0
  loc_C31B76: CI2Var
  loc_C31B77: FLdRfVar var_1C8
  loc_C31B7A: CI4Var
  loc_C31B7C: FLdRfVar var_1B8
  loc_C31B7F: CI4Var
  loc_C31B81: ILdRf var_168
  loc_C31B84: ILdRf var_164
  loc_C31B87: CR8Str
  loc_C31B89: PopFPR8
  loc_C31B8A: ILdRf var_160
  loc_C31B8D: CR8Str
  loc_C31B8F: PopFPR8
  loc_C31B90: ILdRf var_90
  loc_C31B93: CR8Str
  loc_C31B95: PopFPR8
  loc_C31B96: FLdRfVar var_1A8
  loc_C31B99: CStrVarTmp
  loc_C31B9A: FStStrNoPop var_180
  loc_C31B9D: FLdRfVar var_C8
  loc_C31BA0: CStrVarTmp
  loc_C31BA1: FStStrNoPop var_17C
  loc_C31BA4: FLdRfVar var_15C
  loc_C31BA7: CStrVarTmp
  loc_C31BA8: FStStrNoPop var_178
  loc_C31BAB: FLdRfVar var_14C
  loc_C31BAE: CI4Var
  loc_C31BB0: FLdRfVar var_13C
  loc_C31BB3: CI2Var
  loc_C31BB4: FLdRfVar var_124
  loc_C31BB7: CStrVarTmp
  loc_C31BB8: FStStrNoPop var_174
  loc_C31BBB: FLdRfVar var_E8
  loc_C31BBE: CStrVarTmp
  loc_C31BBF: FStStrNoPop var_170
  loc_C31BC2: FLdPr Me
  loc_C31BC5: MemLdRfVar from_stack_1.global_52
  loc_C31BC8: NewIfNullPr clsimputacion
  loc_C31BCB: from_stack_16v = clsimputacion.DesafectarDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C31BD0: ILdRf var_A0
  loc_C31BD3: FLdPr Me
  loc_C31BD6: MemStI4 global_68
  loc_C31BD9: FFreeStr var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_90 = "": var_160 = "": var_164 = "": var_168 = ""
  loc_C31BF0: FFreeAd var_198 = "": var_21C = "": var_284 = "": var_364 = "": var_46C = "": var_478 = "": var_484 = "": var_490 = "": var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_16C = "": var_18C = "": var_1CC = "": var_1D0 = "": var_228 = "": var_22C = "": var_280 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = "": var_398 = "": var_468 = "": var_470 = "": var_474 = "": var_47C = "": var_480 = "": var_488 = "": var_48C = "": var_B8 = "": var_F8 = ""
  loc_C31C3F: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1F0 = "": var_200 = ""
  loc_C31C5A: FLdPr Me
  loc_C31C5D: MemLdStr global_68
  loc_C31C60: LitI4 0
  loc_C31C65: EqI4
  loc_C31C66: BranchF loc_C31C76
  loc_C31C69: LitI4 0
  loc_C31C6E: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C31C71: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C31C76: Branch loc_C3271F
  loc_C31C79: ILdRf var_464
  loc_C31C7C: LitI4 &H10
  loc_C31C81: EqI4
  loc_C31C82: BranchF loc_C3271F
  loc_C31C85: FLdRfVar var_210
  loc_C31C88: FLdRfVar var_B8
  loc_C31C8B: LitVarStr var_B4, "IdImpu"
  loc_C31C90: PopAdLdVar
  loc_C31C91: FLdRfVar var_A4
  loc_C31C94: FLdRfVar var_98
  loc_C31C97: FLdPr Me
  loc_C31C9A: MemLdRfVar from_stack_1.global_52
  loc_C31C9D: NewIfNullPr clsimputacion
  loc_C31CA0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C31CA5: FLdPr var_98
  loc_C31CA8:  = Me.Fields
  loc_C31CAD: FLdPr var_A4
  loc_C31CB0: from_stack_2 = Me.Item(from_stack_1)
  loc_C31CB5: FLdPr var_B8
  loc_C31CB8:  = Me.Value
  loc_C31CBD: FLdPr Me
  loc_C31CC0: VCallAd Control_ID_CodiPartMsk
  loc_C31CC3: FStAdFunc var_F0
  loc_C31CC6: FLdPr var_F0
  loc_C31CC9: LateIdLdVar var_C8 DispID_22 0
  loc_C31CD0: PopAd
  loc_C31CD2: FLdPr Me
  loc_C31CD5: VCallAd Control_ID_CodiOrgaMsk
  loc_C31CD8: FStAdFunc var_F4
  loc_C31CDB: FLdPr var_F4
  loc_C31CDE: LateIdLdVar var_E8 DispID_22 0
  loc_C31CE5: PopAd
  loc_C31CE7: FLdRfVar var_90
  loc_C31CEA: FLdPr Me
  loc_C31CED: VCallAd Control_ID_CodiUngaTxt
  loc_C31CF0: FStAdFunc var_F8
  loc_C31CF3: FLdPr var_F8
  loc_C31CF6:  = Me.Text
  loc_C31CFB: FLdPr Me
  loc_C31CFE: VCallAd Control_ID_CodiInsuMsk
  loc_C31D01: FStAdFunc var_FC
  loc_C31D04: FLdPr var_FC
  loc_C31D07: LateIdLdVar var_124 DispID_22 0
  loc_C31D0E: PopAd
  loc_C31D10: FLdPr Me
  loc_C31D13: VCallAd Control_ID_CodiFifuMsk
  loc_C31D16: FStAdFunc var_100
  loc_C31D19: FLdPr var_100
  loc_C31D1C: LateIdLdVar var_13C DispID_22 0
  loc_C31D23: PopAd
  loc_C31D25: FLdPr Me
  loc_C31D28: VCallAd Control_ID_FechDeveMsk
  loc_C31D2B: FStAdFunc var_114
  loc_C31D2E: FLdPr var_114
  loc_C31D31: LateIdLdVar var_14C DispID_15 0
  loc_C31D38: PopAd
  loc_C31D3A: FLdPr Me
  loc_C31D3D: VCallAd Control_ID_FefaDeveMsk
  loc_C31D40: FStAdFunc var_16C
  loc_C31D43: FLdPr var_16C
  loc_C31D46: LateIdLdVar var_15C DispID_15 0
  loc_C31D4D: PopAd
  loc_C31D4F: FLdPr Me
  loc_C31D52: VCallAd Control_ID_ExorImpuMsk
  loc_C31D55: FStAdFunc var_18C
  loc_C31D58: FLdPr var_18C
  loc_C31D5B: LateIdLdVar var_1A8 DispID_15 0
  loc_C31D62: PopAd
  loc_C31D64: FLdRfVar var_160
  loc_C31D67: FLdPr Me
  loc_C31D6A: VCallAd Control_ID_ExpeImpuTxt
  loc_C31D6D: FStAdFunc var_198
  loc_C31D70: FLdPr var_198
  loc_C31D73:  = Me.Text
  loc_C31D78: ILdRf var_160
  loc_C31D7B: ImpAdCallI2 Trim$()
  loc_C31D80: FStStr var_3E0
  loc_C31D83: FLdRfVar var_164
  loc_C31D86: FLdPr Me
  loc_C31D89: VCallAd Control_ID_CantImpuTxt
  loc_C31D8C: FStAdFunc var_1CC
  loc_C31D8F: FLdPr var_1CC
  loc_C31D92:  = Me.Text
  loc_C31D97: FLdRfVar var_168
  loc_C31D9A: FLdPr Me
  loc_C31D9D: VCallAd Control_ID_ImunImpuTxt
  loc_C31DA0: FStAdFunc var_1D0
  loc_C31DA3: FLdPr var_1D0
  loc_C31DA6:  = Me.Text
  loc_C31DAB: FLdRfVar var_170
  loc_C31DAE: FLdPr Me
  loc_C31DB1: VCallAd Control_ID_ImpoImpuTxt
  loc_C31DB4: FStAdFunc var_21C
  loc_C31DB7: FLdPr var_21C
  loc_C31DBA:  = Me.Text
  loc_C31DBF: FLdRfVar var_174
  loc_C31DC2: FLdPr Me
  loc_C31DC5: VCallAd Control_ID_DetaImpuTxt
  loc_C31DC8: FStAdFunc var_228
  loc_C31DCB: FLdPr var_228
  loc_C31DCE:  = Me.Text
  loc_C31DD3: FLdRfVar var_178
  loc_C31DD6: FLdPr Me
  loc_C31DD9: VCallAd Control_ID_CodiNopeLbl
  loc_C31DDC: FStAdFunc var_22C
  loc_C31DDF: FLdPr var_22C
  loc_C31DE2:  = Me.Caption
  loc_C31DE7: FLdRfVar var_17C
  loc_C31DEA: FLdPr Me
  loc_C31DED: VCallAd Control_ID_CodiOrcoLbl
  loc_C31DF0: FStAdFunc var_280
  loc_C31DF3: FLdPr var_280
  loc_C31DF6:  = Me.Caption
  loc_C31DFB: FLdRfVar var_180
  loc_C31DFE: FLdPr Me
  loc_C31E01: VCallAd Control_ID_CodiReceLbl
  loc_C31E04: FStAdFunc var_284
  loc_C31E07: FLdPr var_284
  loc_C31E0A:  = Me.Caption
  loc_C31E0F: FLdRfVar var_184
  loc_C31E12: FLdPr Me
  loc_C31E15: VCallAd Control_ID_ItemLbl
  loc_C31E18: FStAdFunc var_2D8
  loc_C31E1B: FLdPr var_2D8
  loc_C31E1E:  = Me.Caption
  loc_C31E23: FLdRfVar var_188
  loc_C31E26: FLdPr Me
  loc_C31E29: VCallAd Control_ID_AlternLbl
  loc_C31E2C: FStAdFunc var_2F0
  loc_C31E2F: FLdPr var_2F0
  loc_C31E32:  = Me.Caption
  loc_C31E37: FLdRfVar var_190
  loc_C31E3A: FLdPr Me
  loc_C31E3D: VCallAd Control_ID_CucuPersTxt
  loc_C31E40: FStAdFunc var_304
  loc_C31E43: FLdPr var_304
  loc_C31E46:  = Me.Text
  loc_C31E4B: FLdRfVar var_194
  loc_C31E4E: FLdPr Me
  loc_C31E51: VCallAd Control_ID_TifaDeveCbo
  loc_C31E54: FStAdFunc var_308
  loc_C31E57: FLdPr var_308
  loc_C31E5A:  = Me.Text
  loc_C31E5F: FLdRfVar var_214
  loc_C31E62: FLdPr Me
  loc_C31E65: VCallAd Control_ID_SufaDeveTxt
  loc_C31E68: FStAdFunc var_35C
  loc_C31E6B: FLdPr var_35C
  loc_C31E6E:  = Me.Text
  loc_C31E73: LitI4 1
  loc_C31E78: LitI4 1
  loc_C31E7D: LitVarStr var_D8, "0000"
  loc_C31E82: FStVarCopyObj var_1C8
  loc_C31E85: FLdRfVar var_1C8
  loc_C31E88: FLdZeroAd var_214
  loc_C31E8B: CVarStr var_1B8
  loc_C31E8E: ImpAdCallI2 Format$(, )
  loc_C31E93: FStStr var_3E4
  loc_C31E96: FLdRfVar var_220
  loc_C31E99: FLdPr Me
  loc_C31E9C: VCallAd Control_ID_NufaDeveTxt
  loc_C31E9F: FStAdFunc var_360
  loc_C31EA2: FLdPr var_360
  loc_C31EA5:  = Me.Text
  loc_C31EAA: LitI4 1
  loc_C31EAF: LitI4 1
  loc_C31EB4: LitVarStr var_110, "00000000"
  loc_C31EB9: FStVarCopyObj var_200
  loc_C31EBC: FLdRfVar var_200
  loc_C31EBF: FLdZeroAd var_220
  loc_C31EC2: CVarStr var_1F0
  loc_C31EC5: ImpAdCallI2 Format$(, )
  loc_C31ECA: FStStr var_3E8
  loc_C31ECD: FLdRfVar var_A0
  loc_C31ED0: LitI2_Byte 0
  loc_C31ED2: LitI2_Byte 0
  loc_C31ED4: LitStr vbNullString
  loc_C31ED7: LitI4 0
  loc_C31EDC: ILdRf var_194
  loc_C31EDF: FLdZeroAd var_3E4
  loc_C31EE2: FStStrNoPop var_218
  loc_C31EE5: ConcatStr
  loc_C31EE6: FStStrNoPop var_224
  loc_C31EE9: FLdZeroAd var_3E8
  loc_C31EEC: FStStrNoPop var_2DC
  loc_C31EEF: ConcatStr
  loc_C31EF0: FStStrNoPop var_3DC
  loc_C31EF3: ILdRf var_190
  loc_C31EF6: ILdRf var_188
  loc_C31EF9: ILdRf var_184
  loc_C31EFC: ILdRf var_180
  loc_C31EFF: CI2Str
  loc_C31F01: ILdRf var_17C
  loc_C31F04: ILdRf var_178
  loc_C31F07: ILdRf var_174
  loc_C31F0A: ILdRf var_170
  loc_C31F0D: CR8Str
  loc_C31F0F: PopFPR8
  loc_C31F10: ILdRf var_168
  loc_C31F13: CR8Str
  loc_C31F15: PopFPR8
  loc_C31F16: ILdRf var_164
  loc_C31F19: CR8Str
  loc_C31F1B: PopFPR8
  loc_C31F1C: FLdZeroAd var_3E0
  loc_C31F1F: FStStrNoPop var_3D8
  loc_C31F22: FLdRfVar var_1A8
  loc_C31F25: CStrVarTmp
  loc_C31F26: FStStrNoPop var_3D4
  loc_C31F29: FLdRfVar var_15C
  loc_C31F2C: CStrVarTmp
  loc_C31F2D: FStStrNoPop var_3D0
  loc_C31F30: FLdRfVar var_14C
  loc_C31F33: CStrVarTmp
  loc_C31F34: FStStrNoPop var_3CC
  loc_C31F37: FLdRfVar var_13C
  loc_C31F3A: CStrVarTmp
  loc_C31F3B: FStStrNoPop var_2EC
  loc_C31F3E: FLdRfVar var_124
  loc_C31F41: CStrVarTmp
  loc_C31F42: FStStrNoPop var_2E8
  loc_C31F45: CI4Str
  loc_C31F46: ILdRf var_90
  loc_C31F49: CI2Str
  loc_C31F4B: FLdRfVar var_E8
  loc_C31F4E: CStrVarTmp
  loc_C31F4F: FStStrNoPop var_2E4
  loc_C31F52: FLdRfVar var_C8
  loc_C31F55: CStrVarTmp
  loc_C31F56: FStStrNoPop var_2E0
  loc_C31F59: FLdRfVar var_210
  loc_C31F5C: CI4Var
  loc_C31F5E: FLdPr Me
  loc_C31F61: MemLdRfVar from_stack_1.global_52
  loc_C31F64: NewIfNullPr clsimputacion
  loc_C31F67: from_stack_16v = clsimputacion.DesafectarDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C31F6C: ILdRf var_A0
  loc_C31F6F: FLdPr Me
  loc_C31F72: MemStI4 global_68
  loc_C31F75: FFreeStr var_160 = "": var_194 = "": var_218 = "": var_224 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_90 = "": var_2E8 = "": var_2EC = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_164 = "": var_168 = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_190 = "": var_3DC = "": var_3E0 = "": var_3E4 = ""
  loc_C31FB0: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_114 = "": var_16C = "": var_18C = "": var_198 = "": var_1CC = "": var_1D0 = "": var_21C = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = ""
  loc_C31FE5: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1F0 = "": var_200 = ""
  loc_C32000: FLdPr Me
  loc_C32003: MemLdStr global_68
  loc_C32006: LitI4 0
  loc_C3200B: EqI4
  loc_C3200C: BranchF loc_C3201F
  loc_C3200F: LitI4 0
  loc_C32014: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C32017: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C3201C: Branch loc_C3271F
  loc_C3201F: FLdRfVar var_E8
  loc_C32022: FLdRfVar var_B8
  loc_C32025: LitVarStr var_B4, "CodiPart"
  loc_C3202A: PopAdLdVar
  loc_C3202B: FLdRfVar var_A4
  loc_C3202E: FLdRfVar var_98
  loc_C32031: FLdPr Me
  loc_C32034: MemLdRfVar from_stack_1.global_52
  loc_C32037: NewIfNullPr clsimputacion
  loc_C3203A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3203F: FLdPr var_98
  loc_C32042:  = Me.Fields
  loc_C32047: FLdPr var_A4
  loc_C3204A: from_stack_2 = Me.Item(from_stack_1)
  loc_C3204F: FLdPr var_B8
  loc_C32052:  = Me.Value
  loc_C32057: FLdRfVar var_124
  loc_C3205A: FLdRfVar var_F8
  loc_C3205D: LitVarStr var_D8, "CodiOrga"
  loc_C32062: PopAdLdVar
  loc_C32063: FLdRfVar var_F4
  loc_C32066: FLdRfVar var_F0
  loc_C32069: FLdPr Me
  loc_C3206C: MemLdRfVar from_stack_1.global_52
  loc_C3206F: NewIfNullPr clsimputacion
  loc_C32072: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C32077: FLdPr var_F0
  loc_C3207A:  = Me.Fields
  loc_C3207F: FLdPr var_F4
  loc_C32082: from_stack_2 = Me.Item(from_stack_1)
  loc_C32087: FLdPr var_F8
  loc_C3208A:  = Me.Value
  loc_C3208F: FLdRfVar var_13C
  loc_C32092: FLdRfVar var_114
  loc_C32095: LitVarStr var_110, "CodiUnga"
  loc_C3209A: PopAdLdVar
  loc_C3209B: FLdRfVar var_100
  loc_C3209E: FLdRfVar var_FC
  loc_C320A1: FLdPr Me
  loc_C320A4: MemLdRfVar from_stack_1.global_52
  loc_C320A7: NewIfNullPr clsimputacion
  loc_C320AA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C320AF: FLdPr var_FC
  loc_C320B2:  = Me.Fields
  loc_C320B7: FLdPr var_100
  loc_C320BA: from_stack_2 = Me.Item(from_stack_1)
  loc_C320BF: FLdPr var_114
  loc_C320C2:  = Me.Value
  loc_C320C7: FLdRfVar var_14C
  loc_C320CA: FLdRfVar var_198
  loc_C320CD: LitVarStr var_1E0, "CodiInsu"
  loc_C320D2: PopAdLdVar
  loc_C320D3: FLdRfVar var_18C
  loc_C320D6: FLdRfVar var_16C
  loc_C320D9: FLdPr Me
  loc_C320DC: MemLdRfVar from_stack_1.global_52
  loc_C320DF: NewIfNullPr clsimputacion
  loc_C320E2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C320E7: FLdPr var_16C
  loc_C320EA:  = Me.Fields
  loc_C320EF: FLdPr var_18C
  loc_C320F2: from_stack_2 = Me.Item(from_stack_1)
  loc_C320F7: FLdPr var_198
  loc_C320FA:  = Me.Value
  loc_C320FF: FLdRfVar var_15C
  loc_C32102: FLdRfVar var_21C
  loc_C32105: LitVarStr var_23C, "CodiFifu"
  loc_C3210A: PopAdLdVar
  loc_C3210B: FLdRfVar var_1D0
  loc_C3210E: FLdRfVar var_1CC
  loc_C32111: FLdPr Me
  loc_C32114: MemLdRfVar from_stack_1.global_52
  loc_C32117: NewIfNullPr clsimputacion
  loc_C3211A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3211F: FLdPr var_1CC
  loc_C32122:  = Me.Fields
  loc_C32127: FLdPr var_1D0
  loc_C3212A: from_stack_2 = Me.Item(from_stack_1)
  loc_C3212F: FLdPr var_21C
  loc_C32132:  = Me.Value
  loc_C32137: FLdPr Me
  loc_C3213A: VCallAd Control_ID_FechImpuMsk
  loc_C3213D: FStAdFunc var_228
  loc_C32140: FLdPr var_228
  loc_C32143: LateIdLdVar var_C8 DispID_15 0
  loc_C3214A: PopAd
  loc_C3214C: FLdRfVar var_1A8
  loc_C3214F: FLdRfVar var_284
  loc_C32152: LitVarStr var_24C, "ExorImpu"
  loc_C32157: PopAdLdVar
  loc_C32158: FLdRfVar var_280
  loc_C3215B: FLdRfVar var_22C
  loc_C3215E: FLdPr Me
  loc_C32161: MemLdRfVar from_stack_1.global_52
  loc_C32164: NewIfNullPr clsimputacion
  loc_C32167: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3216C: FLdPr var_22C
  loc_C3216F:  = Me.Fields
  loc_C32174: FLdPr var_280
  loc_C32177: from_stack_2 = Me.Item(from_stack_1)
  loc_C3217C: FLdPr var_284
  loc_C3217F:  = Me.Value
  loc_C32184: FLdRfVar var_90
  loc_C32187: FLdPr Me
  loc_C3218A: VCallAd Control_ID_CantImpuTxt
  loc_C3218D: FStAdFunc var_2D8
  loc_C32190: FLdPr var_2D8
  loc_C32193:  = Me.Text
  loc_C32198: FLdRfVar var_160
  loc_C3219B: FLdPr Me
  loc_C3219E: VCallAd Control_ID_ImunImpuTxt
  loc_C321A1: FStAdFunc var_2F0
  loc_C321A4: FLdPr var_2F0
  loc_C321A7:  = Me.Text
  loc_C321AC: FLdRfVar var_164
  loc_C321AF: FLdPr Me
  loc_C321B2: VCallAd Control_ID_ImpoImpuTxt
  loc_C321B5: FStAdFunc var_304
  loc_C321B8: FLdPr var_304
  loc_C321BB:  = Me.Text
  loc_C321C0: FLdRfVar var_168
  loc_C321C3: FLdPr Me
  loc_C321C6: VCallAd Control_ID_DetaImpuTxt
  loc_C321C9: FStAdFunc var_308
  loc_C321CC: FLdPr var_308
  loc_C321CF:  = Me.Text
  loc_C321D4: FLdRfVar var_1B8
  loc_C321D7: FLdRfVar var_364
  loc_C321DA: LitVarStr var_294, "CodiNope"
  loc_C321DF: PopAdLdVar
  loc_C321E0: FLdRfVar var_360
  loc_C321E3: FLdRfVar var_35C
  loc_C321E6: FLdPr Me
  loc_C321E9: MemLdRfVar from_stack_1.global_52
  loc_C321EC: NewIfNullPr clsimputacion
  loc_C321EF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C321F4: FLdPr var_35C
  loc_C321F7:  = Me.Fields
  loc_C321FC: FLdPr var_360
  loc_C321FF: from_stack_2 = Me.Item(from_stack_1)
  loc_C32204: FLdPr var_364
  loc_C32207:  = Me.Value
  loc_C3220C: FLdRfVar var_1C8
  loc_C3220F: FLdRfVar var_46C
  loc_C32212: LitVarStr var_2A4, "CodiOrco"
  loc_C32217: PopAdLdVar
  loc_C32218: FLdRfVar var_468
  loc_C3221B: FLdRfVar var_398
  loc_C3221E: FLdPr Me
  loc_C32221: MemLdRfVar from_stack_1.global_52
  loc_C32224: NewIfNullPr clsimputacion
  loc_C32227: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3222C: FLdPr var_398
  loc_C3222F:  = Me.Fields
  loc_C32234: FLdPr var_468
  loc_C32237: from_stack_2 = Me.Item(from_stack_1)
  loc_C3223C: FLdPr var_46C
  loc_C3223F:  = Me.Value
  loc_C32244: FLdRfVar var_1F0
  loc_C32247: FLdRfVar var_478
  loc_C3224A: LitVarStr var_318, "Item"
  loc_C3224F: PopAdLdVar
  loc_C32250: FLdRfVar var_474
  loc_C32253: FLdRfVar var_470
  loc_C32256: FLdPr Me
  loc_C32259: MemLdRfVar from_stack_1.global_52
  loc_C3225C: NewIfNullPr clsimputacion
  loc_C3225F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C32264: FLdPr var_470
  loc_C32267:  = Me.Fields
  loc_C3226C: FLdPr var_474
  loc_C3226F: from_stack_2 = Me.Item(from_stack_1)
  loc_C32274: FLdPr var_478
  loc_C32277:  = Me.Value
  loc_C3227C: FLdRfVar var_200
  loc_C3227F: FLdRfVar var_484
  loc_C32282: LitVarStr var_328, "Altern"
  loc_C32287: PopAdLdVar
  loc_C32288: FLdRfVar var_480
  loc_C3228B: FLdRfVar var_47C
  loc_C3228E: FLdPr Me
  loc_C32291: MemLdRfVar from_stack_1.global_52
  loc_C32294: NewIfNullPr clsimputacion
  loc_C32297: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3229C: FLdPr var_47C
  loc_C3229F:  = Me.Fields
  loc_C322A4: FLdPr var_480
  loc_C322A7: from_stack_2 = Me.Item(from_stack_1)
  loc_C322AC: FLdPr var_484
  loc_C322AF:  = Me.Value
  loc_C322B4: FLdRfVar var_210
  loc_C322B7: FLdRfVar var_490
  loc_C322BA: LitVarStr var_384, "CucuPers"
  loc_C322BF: PopAdLdVar
  loc_C322C0: FLdRfVar var_48C
  loc_C322C3: FLdRfVar var_488
  loc_C322C6: FLdPr Me
  loc_C322C9: MemLdRfVar from_stack_1.global_52
  loc_C322CC: NewIfNullPr clsimputacion
  loc_C322CF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C322D4: FLdPr var_488
  loc_C322D7:  = Me.Fields
  loc_C322DC: FLdPr var_48C
  loc_C322DF: from_stack_2 = Me.Item(from_stack_1)
  loc_C322E4: FLdPr var_490
  loc_C322E7:  = Me.Value
  loc_C322EC: FLdRfVar var_A0
  loc_C322EF: LitI2_Byte 0
  loc_C322F1: LitI2_Byte 0
  loc_C322F3: LitI4 0
  loc_C322F8: FLdRfVar var_210
  loc_C322FB: CStrVarTmp
  loc_C322FC: FStStrNoPop var_184
  loc_C322FF: FLdRfVar var_200
  loc_C32302: CUI1Var
  loc_C32304: FLdRfVar var_1F0
  loc_C32307: CI2Var
  loc_C32308: FLdRfVar var_1C8
  loc_C3230B: CI4Var
  loc_C3230D: FLdRfVar var_1B8
  loc_C32310: CI4Var
  loc_C32312: ILdRf var_168
  loc_C32315: ILdRf var_164
  loc_C32318: CR8Str
  loc_C3231A: PopFPR8
  loc_C3231B: ILdRf var_160
  loc_C3231E: CR8Str
  loc_C32320: PopFPR8
  loc_C32321: ILdRf var_90
  loc_C32324: CR8Str
  loc_C32326: PopFPR8
  loc_C32327: FLdRfVar var_1A8
  loc_C3232A: CStrVarTmp
  loc_C3232B: FStStrNoPop var_180
  loc_C3232E: FLdRfVar var_C8
  loc_C32331: CStrVarTmp
  loc_C32332: FStStrNoPop var_17C
  loc_C32335: FLdRfVar var_15C
  loc_C32338: CStrVarTmp
  loc_C32339: FStStrNoPop var_178
  loc_C3233C: FLdRfVar var_14C
  loc_C3233F: CI4Var
  loc_C32341: FLdRfVar var_13C
  loc_C32344: CI2Var
  loc_C32345: FLdRfVar var_124
  loc_C32348: CStrVarTmp
  loc_C32349: FStStrNoPop var_174
  loc_C3234C: FLdRfVar var_E8
  loc_C3234F: CStrVarTmp
  loc_C32350: FStStrNoPop var_170
  loc_C32353: FLdPr Me
  loc_C32356: MemLdRfVar from_stack_1.global_52
  loc_C32359: NewIfNullPr clsimputacion
  loc_C3235C: from_stack_16v = clsimputacion.DesafectarDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C32361: ILdRf var_A0
  loc_C32364: FLdPr Me
  loc_C32367: MemStI4 global_68
  loc_C3236A: FFreeStr var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_90 = "": var_160 = "": var_164 = "": var_168 = ""
  loc_C32381: FFreeAd var_198 = "": var_21C = "": var_284 = "": var_364 = "": var_46C = "": var_478 = "": var_484 = "": var_490 = "": var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_16C = "": var_18C = "": var_1CC = "": var_1D0 = "": var_228 = "": var_22C = "": var_280 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = "": var_398 = "": var_468 = "": var_470 = "": var_474 = "": var_47C = "": var_480 = "": var_488 = "": var_48C = "": var_B8 = "": var_F8 = ""
  loc_C323D0: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1F0 = "": var_200 = ""
  loc_C323EB: FLdPr Me
  loc_C323EE: MemLdStr global_68
  loc_C323F1: LitI4 0
  loc_C323F6: EqI4
  loc_C323F7: BranchF loc_C3240A
  loc_C323FA: LitI4 0
  loc_C323FF: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C32402: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C32407: Branch loc_C3271F
  loc_C3240A: FLdRfVar var_E8
  loc_C3240D: FLdRfVar var_B8
  loc_C32410: LitVarStr var_B4, "CodiPart"
  loc_C32415: PopAdLdVar
  loc_C32416: FLdRfVar var_A4
  loc_C32419: FLdRfVar var_98
  loc_C3241C: FLdPr Me
  loc_C3241F: MemLdRfVar from_stack_1.global_52
  loc_C32422: NewIfNullPr clsimputacion
  loc_C32425: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3242A: FLdPr var_98
  loc_C3242D:  = Me.Fields
  loc_C32432: FLdPr var_A4
  loc_C32435: from_stack_2 = Me.Item(from_stack_1)
  loc_C3243A: FLdPr var_B8
  loc_C3243D:  = Me.Value
  loc_C32442: FLdRfVar var_124
  loc_C32445: FLdRfVar var_F8
  loc_C32448: LitVarStr var_D8, "CodiOrga"
  loc_C3244D: PopAdLdVar
  loc_C3244E: FLdRfVar var_F4
  loc_C32451: FLdRfVar var_F0
  loc_C32454: FLdPr Me
  loc_C32457: MemLdRfVar from_stack_1.global_52
  loc_C3245A: NewIfNullPr clsimputacion
  loc_C3245D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C32462: FLdPr var_F0
  loc_C32465:  = Me.Fields
  loc_C3246A: FLdPr var_F4
  loc_C3246D: from_stack_2 = Me.Item(from_stack_1)
  loc_C32472: FLdPr var_F8
  loc_C32475:  = Me.Value
  loc_C3247A: FLdRfVar var_13C
  loc_C3247D: FLdRfVar var_114
  loc_C32480: LitVarStr var_110, "CodiUnga"
  loc_C32485: PopAdLdVar
  loc_C32486: FLdRfVar var_100
  loc_C32489: FLdRfVar var_FC
  loc_C3248C: FLdPr Me
  loc_C3248F: MemLdRfVar from_stack_1.global_52
  loc_C32492: NewIfNullPr clsimputacion
  loc_C32495: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3249A: FLdPr var_FC
  loc_C3249D:  = Me.Fields
  loc_C324A2: FLdPr var_100
  loc_C324A5: from_stack_2 = Me.Item(from_stack_1)
  loc_C324AA: FLdPr var_114
  loc_C324AD:  = Me.Value
  loc_C324B2: FLdRfVar var_14C
  loc_C324B5: FLdRfVar var_198
  loc_C324B8: LitVarStr var_1E0, "CodiInsu"
  loc_C324BD: PopAdLdVar
  loc_C324BE: FLdRfVar var_18C
  loc_C324C1: FLdRfVar var_16C
  loc_C324C4: FLdPr Me
  loc_C324C7: MemLdRfVar from_stack_1.global_52
  loc_C324CA: NewIfNullPr clsimputacion
  loc_C324CD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C324D2: FLdPr var_16C
  loc_C324D5:  = Me.Fields
  loc_C324DA: FLdPr var_18C
  loc_C324DD: from_stack_2 = Me.Item(from_stack_1)
  loc_C324E2: FLdPr var_198
  loc_C324E5:  = Me.Value
  loc_C324EA: FLdRfVar var_15C
  loc_C324ED: FLdRfVar var_21C
  loc_C324F0: LitVarStr var_23C, "CodiFifu"
  loc_C324F5: PopAdLdVar
  loc_C324F6: FLdRfVar var_1D0
  loc_C324F9: FLdRfVar var_1CC
  loc_C324FC: FLdPr Me
  loc_C324FF: MemLdRfVar from_stack_1.global_52
  loc_C32502: NewIfNullPr clsimputacion
  loc_C32505: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C3250A: FLdPr var_1CC
  loc_C3250D:  = Me.Fields
  loc_C32512: FLdPr var_1D0
  loc_C32515: from_stack_2 = Me.Item(from_stack_1)
  loc_C3251A: FLdPr var_21C
  loc_C3251D:  = Me.Value
  loc_C32522: FLdPr Me
  loc_C32525: VCallAd Control_ID_FechImpuMsk
  loc_C32528: FStAdFunc var_228
  loc_C3252B: FLdPr var_228
  loc_C3252E: LateIdLdVar var_C8 DispID_15 0
  loc_C32535: PopAd
  loc_C32537: FLdRfVar var_1A8
  loc_C3253A: FLdRfVar var_284
  loc_C3253D: LitVarStr var_24C, "ExorImpu"
  loc_C32542: PopAdLdVar
  loc_C32543: FLdRfVar var_280
  loc_C32546: FLdRfVar var_22C
  loc_C32549: FLdPr Me
  loc_C3254C: MemLdRfVar from_stack_1.global_52
  loc_C3254F: NewIfNullPr clsimputacion
  loc_C32552: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C32557: FLdPr var_22C
  loc_C3255A:  = Me.Fields
  loc_C3255F: FLdPr var_280
  loc_C32562: from_stack_2 = Me.Item(from_stack_1)
  loc_C32567: FLdPr var_284
  loc_C3256A:  = Me.Value
  loc_C3256F: FLdRfVar var_90
  loc_C32572: FLdPr Me
  loc_C32575: VCallAd Control_ID_CantImpuTxt
  loc_C32578: FStAdFunc var_2D8
  loc_C3257B: FLdPr var_2D8
  loc_C3257E:  = Me.Text
  loc_C32583: FLdRfVar var_160
  loc_C32586: FLdPr Me
  loc_C32589: VCallAd Control_ID_ImunImpuTxt
  loc_C3258C: FStAdFunc var_2F0
  loc_C3258F: FLdPr var_2F0
  loc_C32592:  = Me.Text
  loc_C32597: FLdRfVar var_164
  loc_C3259A: FLdPr Me
  loc_C3259D: VCallAd Control_ID_ImpoImpuTxt
  loc_C325A0: FStAdFunc var_304
  loc_C325A3: FLdPr var_304
  loc_C325A6:  = Me.Text
  loc_C325AB: FLdRfVar var_168
  loc_C325AE: FLdPr Me
  loc_C325B1: VCallAd Control_ID_DetaImpuTxt
  loc_C325B4: FStAdFunc var_308
  loc_C325B7: FLdPr var_308
  loc_C325BA:  = Me.Text
  loc_C325BF: FLdRfVar var_1B8
  loc_C325C2: FLdRfVar var_364
  loc_C325C5: LitVarStr var_294, "CodiNope"
  loc_C325CA: PopAdLdVar
  loc_C325CB: FLdRfVar var_360
  loc_C325CE: FLdRfVar var_35C
  loc_C325D1: FLdPr Me
  loc_C325D4: MemLdRfVar from_stack_1.global_52
  loc_C325D7: NewIfNullPr clsimputacion
  loc_C325DA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C325DF: FLdPr var_35C
  loc_C325E2:  = Me.Fields
  loc_C325E7: FLdPr var_360
  loc_C325EA: from_stack_2 = Me.Item(from_stack_1)
  loc_C325EF: FLdPr var_364
  loc_C325F2:  = Me.Value
  loc_C325F7: FLdRfVar var_1C8
  loc_C325FA: FLdRfVar var_46C
  loc_C325FD: LitVarStr var_2A4, "Item"
  loc_C32602: PopAdLdVar
  loc_C32603: FLdRfVar var_468
  loc_C32606: FLdRfVar var_398
  loc_C32609: FLdPr Me
  loc_C3260C: MemLdRfVar from_stack_1.global_52
  loc_C3260F: NewIfNullPr clsimputacion
  loc_C32612: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C32617: FLdPr var_398
  loc_C3261A:  = Me.Fields
  loc_C3261F: FLdPr var_468
  loc_C32622: from_stack_2 = Me.Item(from_stack_1)
  loc_C32627: FLdPr var_46C
  loc_C3262A:  = Me.Value
  loc_C3262F: FLdRfVar var_A0
  loc_C32632: LitI2_Byte 0
  loc_C32634: LitI2_Byte 0
  loc_C32636: LitI4 0
  loc_C3263B: FLdRfVar var_1C8
  loc_C3263E: CI2Var
  loc_C3263F: FLdRfVar var_1B8
  loc_C32642: CI4Var
  loc_C32644: ILdRf var_168
  loc_C32647: ILdRf var_164
  loc_C3264A: CR8Str
  loc_C3264C: PopFPR8
  loc_C3264D: ILdRf var_160
  loc_C32650: CR8Str
  loc_C32652: PopFPR8
  loc_C32653: ILdRf var_90
  loc_C32656: CR8Str
  loc_C32658: PopFPR8
  loc_C32659: FLdRfVar var_1A8
  loc_C3265C: CStrVarTmp
  loc_C3265D: FStStrNoPop var_180
  loc_C32660: FLdRfVar var_C8
  loc_C32663: CStrVarTmp
  loc_C32664: FStStrNoPop var_17C
  loc_C32667: FLdRfVar var_15C
  loc_C3266A: CStrVarTmp
  loc_C3266B: FStStrNoPop var_178
  loc_C3266E: FLdRfVar var_14C
  loc_C32671: CI4Var
  loc_C32673: FLdRfVar var_13C
  loc_C32676: CI2Var
  loc_C32677: FLdRfVar var_124
  loc_C3267A: CStrVarTmp
  loc_C3267B: FStStrNoPop var_174
  loc_C3267E: FLdRfVar var_E8
  loc_C32681: CStrVarTmp
  loc_C32682: FStStrNoPop var_170
  loc_C32685: FLdPr Me
  loc_C32688: MemLdRfVar from_stack_1.global_52
  loc_C3268B: NewIfNullPr clsimputacion
  loc_C3268E: from_stack_16v = clsimputacion.DesafectarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C32693: ILdRf var_A0
  loc_C32696: FLdPr Me
  loc_C32699: MemStI4 global_68
  loc_C3269C: FFreeStr var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_90 = "": var_160 = "": var_164 = ""
  loc_C326B1: FFreeAd var_98 = "": var_A4 = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_16C = "": var_18C = "": var_1CC = "": var_1D0 = "": var_228 = "": var_22C = "": var_280 = "": var_2D8 = "": var_2F0 = "": var_304 = "": var_308 = "": var_35C = "": var_360 = "": var_398 = "": var_468 = "": var_B8 = "": var_F8 = "": var_114 = "": var_198 = "": var_21C = "": var_284 = "": var_364 = ""
  loc_C326EE: FFreeVar var_C8 = "": var_E8 = "": var_124 = "": var_13C = "": var_14C = "": var_15C = "": var_1A8 = "": var_1B8 = ""
  loc_C32703: FLdPr Me
  loc_C32706: MemLdStr global_68
  loc_C32709: LitI4 0
  loc_C3270E: EqI4
  loc_C3270F: BranchF loc_C3271F
  loc_C32712: LitI4 0
  loc_C32717: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C3271A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C3271F: Call Proc_135_79_ADA1D4()
  loc_C32724: FLdPr Me
  loc_C32727: MemLdStr global_68
  loc_C3272A: LitI4 0
  loc_C3272F: GtI4
  loc_C32730: BranchF loc_C327B3
  loc_C32733: LitI2_Byte &HFF
  loc_C32735: PopTmpLdAd2 var_126
  loc_C32738: LitI2_Byte 0
  loc_C3273A: PopTmpLdAd2 var_9A
  loc_C3273D: LitStr "¿Imprime el volante de imputaciones?"
  loc_C32740: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C32745: CI4UI1
  loc_C32746: LitI4 6
  loc_C3274B: EqI4
  loc_C3274C: BranchF loc_C327B3
  loc_C3274F: ImpAdLdRf MemVar_C3D9BC
  loc_C32752: NewIfNullAd
  loc_C32755: CastAd
  loc_C32758: FStAdFuncNoPop
  loc_C3275B: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_C32760: FFree1Ad var_98
  loc_C32763: FLdPr Me
  loc_C32766: VCallAd Control_ID_ExorImpuMsk
  loc_C32769: FStAdFunc var_98
  loc_C3276C: FLdPr var_98
  loc_C3276F: LateIdLdVar var_C8 DispID_15 0
  loc_C32776: CStrVarTmp
  loc_C32777: FStStrNoPop var_90
  loc_C3277A: ImpAdLdRf MemVar_C3D9BC
  loc_C3277D: NewIfNullPr rptVolantedeImputaciones
  loc_C32780: VCallAd Control_ID_cboExorImpu
  loc_C32783: FStAdFunc var_A4
  loc_C32786: FLdPr var_A4
  loc_C32789: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_C3278E: FFree1Str var_90
  loc_C32791: FFreeAd var_98 = ""
  loc_C32798: FFree1Var var_C8 = ""
  loc_C3279B: LitVar_Missing var_D8
  loc_C3279E: PopAdLdVar
  loc_C3279F: LitVarI4
  loc_C327A7: PopAdLdVar
  loc_C327A8: ImpAdLdRf MemVar_C3D9BC
  loc_C327AB: NewIfNullPr rptVolantedeImputaciones
  loc_C327AE: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_C327B3: Branch loc_C32920
  loc_C327B6: Branch loc_C3291F
  loc_C327B9: ILdRf var_94
  loc_C327BC: LitStr "btnCancelar"
  loc_C327BF: EqStr
  loc_C327C1: BranchF loc_C327CA
  loc_C327C4: Branch loc_C32920
  loc_C327C7: Branch loc_C3291F
  loc_C327CA: ILdRf var_94
  loc_C327CD: LitStr "btnPrimero"
  loc_C327D0: EqStr
  loc_C327D2: BranchF loc_C327E6
  loc_C327D5: FLdPr Me
  loc_C327D8: MemLdRfVar from_stack_1.global_52
  loc_C327DB: NewIfNullPr clsimputacion
  loc_C327DE: Call clsimputacion.MoveFirst()
  loc_C327E3: Branch loc_C3291F
  loc_C327E6: ILdRf var_94
  loc_C327E9: LitStr "btnAnterior"
  loc_C327EC: EqStr
  loc_C327EE: BranchF loc_C32802
  loc_C327F1: FLdPr Me
  loc_C327F4: MemLdRfVar from_stack_1.global_52
  loc_C327F7: NewIfNullPr clsimputacion
  loc_C327FA: Call clsimputacion.MovePrevious()
  loc_C327FF: Branch loc_C3291F
  loc_C32802: ILdRf var_94
  loc_C32805: LitStr "btnSiguiente"
  loc_C32808: EqStr
  loc_C3280A: BranchF loc_C3281E
  loc_C3280D: FLdPr Me
  loc_C32810: MemLdRfVar from_stack_1.global_52
  loc_C32813: NewIfNullPr clsimputacion
  loc_C32816: Call clsimputacion.MoveNext()
  loc_C3281B: Branch loc_C3291F
  loc_C3281E: ILdRf var_94
  loc_C32821: LitStr "btnUltimo"
  loc_C32824: EqStr
  loc_C32826: BranchF loc_C3283A
  loc_C32829: FLdPr Me
  loc_C3282C: MemLdRfVar from_stack_1.global_52
  loc_C3282F: NewIfNullPr clsimputacion
  loc_C32832: Call clsimputacion.MoveLast()
  loc_C32837: Branch loc_C3291F
  loc_C3283A: ILdRf var_94
  loc_C3283D: LitStr "btnFiltrar"
  loc_C32840: EqStr
  loc_C32842: BranchF loc_C32848
  loc_C32845: Branch loc_C3291F
  loc_C32848: ILdRf var_94
  loc_C3284B: LitStr "btnBuscar"
  loc_C3284E: EqStr
  loc_C32850: BranchF loc_C32856
  loc_C32853: Branch loc_C3291F
  loc_C32856: ILdRf var_94
  loc_C32859: LitStr "btnImprimir"
  loc_C3285C: EqStr
  loc_C3285E: BranchF loc_C328C8
  loc_C32861: ImpAdLdRf MemVar_C3D9BC
  loc_C32864: NewIfNullAd
  loc_C32867: CastAd
  loc_C3286A: FStAdFuncNoPop
  loc_C3286D: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_C32872: FFree1Ad var_98
  loc_C32875: FLdPr Me
  loc_C32878: VCallAd Control_ID_ExorImpuMsk
  loc_C3287B: FStAdFunc var_98
  loc_C3287E: FLdPr var_98
  loc_C32881: LateIdLdVar var_C8 DispID_15 0
  loc_C32888: CStrVarTmp
  loc_C32889: FStStrNoPop var_90
  loc_C3288C: ImpAdLdRf MemVar_C3D9BC
  loc_C3288F: NewIfNullPr rptVolantedeImputaciones
  loc_C32892: VCallAd Control_ID_cboExorImpu
  loc_C32895: FStAdFunc var_A4
  loc_C32898: FLdPr var_A4
  loc_C3289B: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_C328A0: FFree1Str var_90
  loc_C328A3: FFreeAd var_98 = ""
  loc_C328AA: FFree1Var var_C8 = ""
  loc_C328AD: LitVar_Missing var_D8
  loc_C328B0: PopAdLdVar
  loc_C328B1: LitVarI4
  loc_C328B9: PopAdLdVar
  loc_C328BA: ImpAdLdRf MemVar_C3D9BC
  loc_C328BD: NewIfNullPr rptVolantedeImputaciones
  loc_C328C0: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_C328C5: Branch loc_C3291F
  loc_C328C8: ILdRf var_94
  loc_C328CB: LitStr "btnAyuda"
  loc_C328CE: EqStr
  loc_C328D0: BranchF loc_C328FF
  loc_C328D3: LitVar_Missing var_13C
  loc_C328D6: LitVar_Missing var_124
  loc_C328D9: LitVar_Missing var_E8
  loc_C328DC: LitI4 0
  loc_C328E1: LitVarStr var_B4, "Opcion no disponible en esta version."
  loc_C328E6: FStVarCopyObj var_C8
  loc_C328E9: FLdRfVar var_C8
  loc_C328EC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C328F1: FFreeVar var_C8 = "": var_E8 = "": var_124 = ""
  loc_C328FC: Branch loc_C3291F
  loc_C328FF: ILdRf var_94
  loc_C32902: LitStr "btnSalir"
  loc_C32905: EqStr
  loc_C32907: BranchF loc_C3291F
  loc_C3290A: ILdRf Me
  loc_C3290D: FStAdNoPop
  loc_C32911: ImpAdLdRf MemVar_C44F9C
  loc_C32914: NewIfNullPr Me
  loc_C32917: Me.Global.Unload from_stack_1
  loc_C3291C: FFree1Ad var_98
  loc_C3291F: ExitProcHresult
  loc_C32920: Call cmdCancelar_Click()
  loc_C32925: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A373D0
  'Data Table: 500268
  loc_A371C0: LitI2_Byte 0
  loc_A371C2: CUI1I2
  loc_A371C4: FLdPr Me
  loc_A371C7: MemStUI1
  loc_A371CB: ILdRf Me
  loc_A371CE: CastAd
  loc_A371D1: FStAdFunc var_88
  loc_A371D4: FLdRfVar var_88
  loc_A371D7: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A371DC: FFree1Ad var_88
  loc_A371DF: LitI4 0
  loc_A371E4: LitI4 0
  loc_A371E9: FLdRfVar var_8C
  loc_A371EC: Redim
  loc_A371F6: FLdPr Me
  loc_A371F9: VCallAd Control_ID_dgdABMS
  loc_A371FC: CVarAd
  loc_A37200: ParmAry1St
  loc_A37206: FLdRfVar var_8C
  loc_A37209: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A3720E: FLdRfVar var_8C
  loc_A37211: Erase
  loc_A37212: FLdPr Me
  loc_A37215: MemLdRfVar from_stack_1.global_52
  loc_A37218: NewIfNullAd
  loc_A3721B: FStAd var_A0 
  loc_A3721F: FLdRfVar var_A0
  loc_A37222: CVarRef
  loc_A37227: ILdRf Me
  loc_A3722A: CastAd
  loc_A3722D: FStAdFunc var_88
  loc_A37230: FLdRfVar var_88
  loc_A37233: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A37238: ILdRf var_A0
  loc_A3723B: CastAd
  loc_A3723E: FLdPr Me
  loc_A37241: MemStAdFunc
  loc_A37245: FFreeAd var_88 = ""
  loc_A3724C: FLdRfVar var_B4
  loc_A3724F: FLdPr Me
  loc_A37252: MemLdRfVar from_stack_1.global_52
  loc_A37255: NewIfNullPr clsimputacion
  loc_A37258: from_stack_1 = clsimputacion.RecordCount
  loc_A3725D: ILdRf var_B4
  loc_A37260: LitI4 0
  loc_A37265: EqI4
  loc_A37266: BranchF loc_A372C7
  loc_A37269: ILdRf Me
  loc_A3726C: CastAd
  loc_A3726F: FStAdFunc var_88
  loc_A37272: FLdRfVar var_88
  loc_A37275: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A3727A: FFree1Ad var_88
  loc_A3727D: ILdRf Me
  loc_A37280: CastAd
  loc_A37283: FStAdFunc var_88
  loc_A37286: FLdRfVar var_88
  loc_A37289: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A3728E: FFree1Ad var_88
  loc_A37291: LitI4 0
  loc_A37296: LitI4 0
  loc_A3729B: FLdRfVar var_8C
  loc_A3729E: Redim
  loc_A372A8: FLdPr Me
  loc_A372AB: VCallAd Control_ID_dgdABMS
  loc_A372AE: CVarAd
  loc_A372B2: ParmAry1St
  loc_A372B8: FLdRfVar var_8C
  loc_A372BB: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A372C0: FLdRfVar var_8C
  loc_A372C3: Erase
  loc_A372C4: Branch loc_A372D5
  loc_A372C7: FLdPr Me
  loc_A372CA: MemLdRfVar from_stack_1.global_52
  loc_A372CD: NewIfNullPr clsimputacion
  loc_A372D0: Call clsimputacion.MoveFirst()
  loc_A372D5: ILdRf Me
  loc_A372D8: CastAd
  loc_A372DB: FStAdFunc var_88
  loc_A372DE: FLdRfVar var_88
  loc_A372E1: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A372E6: FFree1Ad var_88
  loc_A372E9: FLdPr Me
  loc_A372EC: VCallAd Control_ID_dgdABMS
  loc_A372EF: FStAdFunc var_A0
  loc_A372F2: LitI4 0
  loc_A372F7: FStStrCopy var_B8
  loc_A372FA: FLdRfVar var_B8
  loc_A372FD: FLdPr Me
  loc_A37300: MemLdStr global_72
  loc_A37303: FLdZeroAd var_A0
  loc_A37306: FStAdFunc var_88
  loc_A37309: FLdRfVar var_88
  loc_A3730C: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A37311: FFree1Str var_B8
  loc_A37314: FFreeAd var_88 = ""
  loc_A3731B: LitStr vbNullString
  loc_A3731E: FLdPr Me
  loc_A37321: VCallAd Control_ID_SaldAutoLbl
  loc_A37324: FStAdFunc var_88
  loc_A37327: FLdPr var_88
  loc_A3732A: Me.Caption = from_stack_1
  loc_A3732F: FFree1Ad var_88
  loc_A37332: LitVarStr var_B0, vbNullString
  loc_A37337: PopAdLdVar
  loc_A37338: FLdPr Me
  loc_A3733B: VCallAd Control_ID_FechImpuMsk
  loc_A3733E: FStAdFunc var_88
  loc_A37341: FLdPr var_88
  loc_A37344: LateIdSt
  loc_A37349: FFree1Ad var_88
  loc_A3734C: LitVarStr var_B0, vbNullString
  loc_A37351: PopAdLdVar
  loc_A37352: FLdPr Me
  loc_A37355: VCallAd Control_ID_FechDeveMsk
  loc_A37358: FStAdFunc var_88
  loc_A3735B: FLdPr var_88
  loc_A3735E: LateIdSt
  loc_A37363: FFree1Ad var_88
  loc_A37366: LitVarStr var_B0, vbNullString
  loc_A3736B: PopAdLdVar
  loc_A3736C: FLdPr Me
  loc_A3736F: VCallAd Control_ID_FechDeveMsk
  loc_A37372: FStAdFunc var_88
  loc_A37375: FLdPr var_88
  loc_A37378: LateIdSt
  loc_A3737D: FFree1Ad var_88
  loc_A37380: LitVarStr var_B0, vbNullString
  loc_A37385: PopAdLdVar
  loc_A37386: FLdPr Me
  loc_A37389: VCallAd Control_ID_FechDeveMsk
  loc_A3738C: FStAdFunc var_88
  loc_A3738F: FLdPr var_88
  loc_A37392: LateIdSt
  loc_A37397: FFree1Ad var_88
  loc_A3739A: LitVarStr var_B0, vbNullString
  loc_A3739F: PopAdLdVar
  loc_A373A0: FLdPr Me
  loc_A373A3: VCallAd Control_ID_FefaDeveMsk
  loc_A373A6: FStAdFunc var_88
  loc_A373A9: FLdPr var_88
  loc_A373AC: LateIdSt
  loc_A373B1: FFree1Ad var_88
  loc_A373B4: LitVarStr var_B0, vbNullString
  loc_A373B9: PopAdLdVar
  loc_A373BA: FLdPr Me
  loc_A373BD: VCallAd Control_ID_FefaDeveMsk
  loc_A373C0: FStAdFunc var_88
  loc_A373C3: FLdPr var_88
  loc_A373C6: LateIdSt
  loc_A373CB: FFree1Ad var_88
  loc_A373CE: ExitProcHresult
End Sub

Private Sub Form_Load() 'A63390
  'Data Table: 500268
  loc_A63060: LitStr "Municipalidad de Guaymallén"
  loc_A63063: LitStr "Municipalidad de Maipú"
  loc_A63066: EqStr
  loc_A63068: LitStr "Municipalidad de Guaymallén"
  loc_A6306B: LitStr "Municipalidad de General Alvear"
  loc_A6306E: EqStr
  loc_A63070: OrI4
  loc_A63071: LitStr "Municipalidad de Guaymallén"
  loc_A63074: LitStr "Municipalidad de Tunuyán"
  loc_A63077: EqStr
  loc_A63079: OrI4
  loc_A6307A: BranchF loc_A63096
  loc_A6307D: LitI2_Byte &HFF
  loc_A6307F: FLdPr Me
  loc_A63082: VCallAd Control_ID_chkRepetirExpePago
  loc_A63085: FStAdFunc var_88
  loc_A63088: FLdPr var_88
  loc_A6308B: Me.Visible = from_stack_1b
  loc_A63090: FFree1Ad var_88
  loc_A63093: Branch loc_A630AC
  loc_A63096: LitI2_Byte 0
  loc_A63098: FLdPr Me
  loc_A6309B: VCallAd Control_ID_chkRepetirExpePago
  loc_A6309E: FStAdFunc var_88
  loc_A630A1: FLdPr var_88
  loc_A630A4: Me.Visible = from_stack_1b
  loc_A630A9: FFree1Ad var_88
  loc_A630AC: LitStr "U. Ejec."
  loc_A630AF: FLdRfVar var_8C
  loc_A630B2: FLdPr Me
  loc_A630B5: VCallAd Control_ID_Label6
  loc_A630B8: FStAdFunc var_88
  loc_A630BB: FLdPr var_88
  loc_A630BE:  = Me.Caption
  loc_A630C3: ILdRf var_8C
  loc_A630C6: ConcatStr
  loc_A630C7: FStStrNoPop var_90
  loc_A630CA: FLdPr Me
  loc_A630CD: VCallAd Control_ID_Label6
  loc_A630D0: FStAdFunc var_94
  loc_A630D3: FLdPr var_94
  loc_A630D6: Me.Caption = from_stack_1
  loc_A630DB: FFreeStr var_8C = ""
  loc_A630E2: FFreeAd var_88 = ""
  loc_A630E9: LitStr "U. Ejec."
  loc_A630EC: FLdRfVar var_B8
  loc_A630EF: LitVarI2 var_B4, 3
  loc_A630F4: PopAdLdVar
  loc_A630F5: FLdPr Me
  loc_A630F8: VCallAd Control_ID_dgdABMS
  loc_A630FB: FStAdFunc var_88
  loc_A630FE: FLdPr var_88
  loc_A63101: LateIdLdVar var_A4 DispID_105 0
  loc_A63108: CastAdVar Me
  loc_A6310C: FStAdFunc var_94
  loc_A6310F: FLdPr var_94
  loc_A63112: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A63117: FLdPr var_B8
  loc_A6311A: Me.Caption = from_stack_1
  loc_A6311F: FFreeAd var_88 = "": var_94 = ""
  loc_A63128: FFree1Var var_A4 = ""
  loc_A6312B: ImpAdLdI2 MemVar_C3D064
  loc_A6312E: LitI2 2025
  loc_A63131: LeI2
  loc_A63132: BranchF loc_A63152
  loc_A63135: LitVarI4
  loc_A6313D: PopAdLdVar
  loc_A6313E: FLdPr Me
  loc_A63141: VCallAd Control_ID_dgdABMS
  loc_A63144: FStAdFunc var_88
  loc_A63147: FLdPr var_88
  loc_A6314A: LateIdSt
  loc_A6314F: FFree1Ad var_88
  loc_A63152: ImpAdLdI2 MemVar_C3D064
  loc_A63155: LitI2 2024
  loc_A63158: GeI2
  loc_A63159: BranchF loc_A63179
  loc_A6315C: LitVarStr var_B4, "###"
  loc_A63161: PopAdLdVar
  loc_A63162: FLdPr Me
  loc_A63165: VCallAd Control_ID_CodiOrgaMsk
  loc_A63168: FStAdFunc var_88
  loc_A6316B: FLdPr var_88
  loc_A6316E: LateIdSt
  loc_A63173: FFree1Ad var_88
  loc_A63176: Branch loc_A63193
  loc_A63179: LitVarStr var_B4, "######"
  loc_A6317E: PopAdLdVar
  loc_A6317F: FLdPr Me
  loc_A63182: VCallAd Control_ID_CodiOrgaMsk
  loc_A63185: FStAdFunc var_88
  loc_A63188: FLdPr var_88
  loc_A6318B: LateIdSt
  loc_A63190: FFree1Ad var_88
  loc_A63193: LitVarStr var_B4, "#.#.#.#.##.##"
  loc_A63198: PopAdLdVar
  loc_A63199: FLdPr Me
  loc_A6319C: VCallAd Control_ID_CodiPartMsk
  loc_A6319F: FStAdFunc var_88
  loc_A631A2: FLdPr var_88
  loc_A631A5: LateIdSt
  loc_A631AA: FFree1Ad var_88
  loc_A631AD: LitVarStr var_B4, "##.##.##"
  loc_A631B2: PopAdLdVar
  loc_A631B3: FLdPr Me
  loc_A631B6: VCallAd Control_ID_CodiFifuMsk
  loc_A631B9: FStAdFunc var_88
  loc_A631BC: FLdPr var_88
  loc_A631BF: LateIdSt
  loc_A631C4: FFree1Ad var_88
  loc_A631C7: LitVarStr var_B4, vbNullString
  loc_A631CC: PopAdLdVar
  loc_A631CD: FLdPr Me
  loc_A631D0: VCallAd Control_ID_ExorImpuMsk
  loc_A631D3: FStAdFunc var_88
  loc_A631D6: FLdPr var_88
  loc_A631D9: LateIdSt
  loc_A631DE: FFree1Ad var_88
  loc_A631E1: ILdRf Me
  loc_A631E4: CastAd
  loc_A631E7: FStAdFunc var_88
  loc_A631EA: FLdRfVar var_88
  loc_A631ED: ImpAdCallFPR4 Proc_261_41_999BCC()
  loc_A631F2: FFree1Ad var_88
  loc_A631F5: ILdRf Me
  loc_A631F8: CastAd
  loc_A631FB: FStAdFunc var_88
  loc_A631FE: FLdRfVar var_88
  loc_A63201: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A63206: FFree1Ad var_88
  loc_A63209: LitI2_Byte 0
  loc_A6320B: CR8I2
  loc_A6320C: PopFPR4
  loc_A6320D: FLdPr Me
  loc_A63210: Me.Left = from_stack_1s
  loc_A63215: LitI2_Byte 0
  loc_A63217: CR8I2
  loc_A63218: PopFPR4
  loc_A63219: FLdPr Me
  loc_A6321C: Me.Top = from_stack_1s
  loc_A63221: LitI2_Byte &HFF
  loc_A63223: FLdPr Me
  loc_A63226: VCallAd Control_ID_TifaDeveCbo
  loc_A63229: FStAdFunc var_88
  loc_A6322C: FLdRfVar var_88
  loc_A6322F: ImpAdCallFPR4 Proc_261_56_9A8F4C(, )
  loc_A63234: FFree1Ad var_88
  loc_A63237: LitStr vbNullString
  loc_A6323A: FLdPr Me
  loc_A6323D: MemStStrCopy
  loc_A63241: Call Proc_135_79_ADA1D4()
  loc_A63246: LitVarI2 var_B4, 0
  loc_A6324B: PopAdLdVar
  loc_A6324C: LitStr "Expediente Original"
  loc_A6324F: FLdPr Me
  loc_A63252: VCallAd Control_ID_FiltroCbo
  loc_A63255: FStAdFunc var_88
  loc_A63258: FLdPr var_88
  loc_A6325B: Me.AddItem from_stack_1, from_stack_2
  loc_A63260: FFree1Ad var_88
  loc_A63263: LitVarI2 var_B4, 1
  loc_A63268: PopAdLdVar
  loc_A63269: LitStr "Expediente de Pago"
  loc_A6326C: FLdPr Me
  loc_A6326F: VCallAd Control_ID_FiltroCbo
  loc_A63272: FStAdFunc var_88
  loc_A63275: FLdPr var_88
  loc_A63278: Me.AddItem from_stack_1, from_stack_2
  loc_A6327D: FFree1Ad var_88
  loc_A63280: LitVarI2 var_B4, 2
  loc_A63285: PopAdLdVar
  loc_A63286: LitStr "Detalle de la imputación"
  loc_A63289: FLdPr Me
  loc_A6328C: VCallAd Control_ID_FiltroCbo
  loc_A6328F: FStAdFunc var_88
  loc_A63292: FLdPr var_88
  loc_A63295: Me.AddItem from_stack_1, from_stack_2
  loc_A6329A: FFree1Ad var_88
  loc_A6329D: LitVarI2 var_B4, 3
  loc_A632A2: PopAdLdVar
  loc_A632A3: LitStr "Partida (Código)"
  loc_A632A6: FLdPr Me
  loc_A632A9: VCallAd Control_ID_FiltroCbo
  loc_A632AC: FStAdFunc var_88
  loc_A632AF: FLdPr var_88
  loc_A632B2: Me.AddItem from_stack_1, from_stack_2
  loc_A632B7: FFree1Ad var_88
  loc_A632BA: LitVarI2 var_B4, 4
  loc_A632BF: PopAdLdVar
  loc_A632C0: LitStr "U. Ejec."
  loc_A632C3: LitStr " (Código)"
  loc_A632C6: ConcatStr
  loc_A632C7: FStStrNoPop var_8C
  loc_A632CA: FLdPr Me
  loc_A632CD: VCallAd Control_ID_FiltroCbo
  loc_A632D0: FStAdFunc var_88
  loc_A632D3: FLdPr var_88
  loc_A632D6: Me.AddItem from_stack_1, from_stack_2
  loc_A632DB: FFree1Str var_8C
  loc_A632DE: FFree1Ad var_88
  loc_A632E1: LitVarI2 var_B4, 5
  loc_A632E6: PopAdLdVar
  loc_A632E7: LitStr "CUIT-CUIL"
  loc_A632EA: FLdPr Me
  loc_A632ED: VCallAd Control_ID_FiltroCbo
  loc_A632F0: FStAdFunc var_88
  loc_A632F3: FLdPr var_88
  loc_A632F6: Me.AddItem from_stack_1, from_stack_2
  loc_A632FB: FFree1Ad var_88
  loc_A632FE: LitI2_Byte 0
  loc_A63300: FLdPr Me
  loc_A63303: VCallAd Control_ID_FiltroCbo
  loc_A63306: FStAdFunc var_88
  loc_A63309: FLdPr var_88
  loc_A6330C: Me.ListIndex = from_stack_1
  loc_A63311: FFree1Ad var_88
  loc_A63314: Call cmdCancelar_Click()
  loc_A63319: LitI4 0
  loc_A6331E: LitI4 1
  loc_A63323: FLdRfVar var_CC
  loc_A63326: Redim
  loc_A63330: FLdPr Me
  loc_A63333: MemLdRfVar from_stack_1.global_52
  loc_A63336: NewIfNullAd
  loc_A63339: FStAd var_88 
  loc_A6333D: FLdRfVar var_88
  loc_A63340: CVarRef
  loc_A63345: ParmAry1St
  loc_A6334B: FLdPr Me
  loc_A6334E: VCallAd Control_ID_dgdABMS
  loc_A63351: CVarAd
  loc_A63355: ParmAry1St
  loc_A6335B: FLdRfVar var_CC
  loc_A6335E: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A63363: ILdRf var_88
  loc_A63366: CastAd
  loc_A63369: FLdPr Me
  loc_A6336C: MemStAdFunc
  loc_A63370: FLdRfVar var_CC
  loc_A63373: Erase
  loc_A63374: FFree1Ad var_88
  loc_A63377: LitVar_TRUE var_B4
  loc_A6337A: PopAdLdVar
  loc_A6337B: FLdPr Me
  loc_A6337E: VCallAd Control_ID_dgdABMS
  loc_A63381: FStAdFunc var_88
  loc_A63384: FLdPr var_88
  loc_A63387: LateIdSt
  loc_A6338C: FFree1Ad var_88
  loc_A6338F: ExitProcHresult
End Sub

Private Sub Form_Activate() '995B8C
  'Data Table: 500268
  loc_995B38: FLdRfVar var_C2
  loc_995B3B: FLdRfVar var_C0
  loc_995B3E: LitVarI2 var_B8, 1
  loc_995B43: FLdPr Me
  loc_995B46: VCallAd Control_ID_tlbABMS
  loc_995B49: FStAdFunc var_88
  loc_995B4C: FLdPr var_88
  loc_995B4F: LateIdLdVar var_98 DispID_3 0
  loc_995B56: CastAdVar Me
  loc_995B5A: FStAdFunc var_BC
  loc_995B5D: FLdPr var_BC
  loc_995B60:  = Me.Buttons.ControlDefault
  loc_995B65: FLdPr var_C0
  loc_995B68:  = Me.Enabled
  loc_995B6D: FLdI2 var_C2
  loc_995B70: FFreeAd var_88 = "": var_BC = ""
  loc_995B79: FFreeVar var_98 = ""
  loc_995B80: BranchF loc_995B88
  loc_995B83: Call Proc_135_79_ADA1D4()
  loc_995B88: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '995AF8
  'Data Table: 500268
  loc_995AA0: FLdRfVar var_88
  loc_995AA3: FLdPr Me
  loc_995AA6:  = Me.ActiveControl
  loc_995AAB: FLdPr var_88
  loc_995AAE: LateMemLdVar
  loc_995AB3: LitVarStr var_98, "DetaImpuTxt"
  loc_995AB8: HardType
  loc_995AB9: EqVar var_B8
  loc_995ABD: ILdI2 KeyAscii
  loc_995AC0: CI4UI1
  loc_995AC1: LitI4 &HD
  loc_995AC6: EqI4
  loc_995AC7: CVarBoolI2 var_C8
  loc_995ACB: AndVar var_D8
  loc_995ACF: CBoolVarNull
  loc_995AD1: FFree1Ad var_88
  loc_995AD4: FFreeVar var_A8 = ""
  loc_995ADB: BranchF loc_995AE3
  loc_995ADE: LitI2_Byte 0
  loc_995AE0: IStI2 KeyAscii
  loc_995AE3: ILdI2 KeyAscii
  loc_995AE6: CI4UI1
  loc_995AE7: LitI4 &HD
  loc_995AEC: EqI4
  loc_995AED: BranchF loc_995AF5
  loc_995AF0: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_995AF5: ExitProcHresult
  loc_995AF6: Ary1StVar
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '962250
  'Data Table: 500268
  loc_962238: ILdI2 KeyCode
  loc_96223B: ILdRf Me
  loc_96223E: CastAd
  loc_962241: FStAdFunc var_88
  loc_962244: FLdRfVar var_88
  loc_962247: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_96224C: FFree1Ad var_88
  loc_96224F: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_0 'AF7010
  'Data Table: 500268
  loc_AF68C4: FLdRfVar var_98
  loc_AF68C7: FLdPr Me
  loc_AF68CA: VCallAd Control_ID_CodiNopeLbl
  loc_AF68CD: FStAdFunc var_94
  loc_AF68D0: FLdPr var_94
  loc_AF68D3:  = Me.Caption
  loc_AF68D8: FLdRfVar var_A0
  loc_AF68DB: FLdPr Me
  loc_AF68DE: VCallAd Control_ID_CodiNopeLbl
  loc_AF68E1: FStAdFunc var_9C
  loc_AF68E4: FLdPr var_9C
  loc_AF68E7:  = Me.Caption
  loc_AF68EC: FLdZeroAd var_A0
  loc_AF68EF: CVarStr var_E0
  loc_AF68F2: LitVarI2 var_D0, 0
  loc_AF68F7: ILdRf var_98
  loc_AF68FA: LitStr vbNullString
  loc_AF68FD: EqStr
  loc_AF68FF: CVarBoolI2 var_B0
  loc_AF6903: FLdRfVar var_F0
  loc_AF6906: ImpAdCallFPR4  = IIf(, , )
  loc_AF690B: FLdRfVar var_F0
  loc_AF690E: CI2Var
  loc_AF690F: FStI2 var_86
  loc_AF6912: FFree1Str var_98
  loc_AF6915: FFreeAd var_94 = ""
  loc_AF691C: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AF6927: FLdRfVar var_98
  loc_AF692A: FLdPr Me
  loc_AF692D: VCallAd Control_ID_ItemLbl
  loc_AF6930: FStAdFunc var_94
  loc_AF6933: FLdPr var_94
  loc_AF6936:  = Me.Caption
  loc_AF693B: FLdRfVar var_A0
  loc_AF693E: FLdPr Me
  loc_AF6941: VCallAd Control_ID_ItemLbl
  loc_AF6944: FStAdFunc var_9C
  loc_AF6947: FLdPr var_9C
  loc_AF694A:  = Me.Caption
  loc_AF694F: FLdZeroAd var_A0
  loc_AF6952: CVarStr var_E0
  loc_AF6955: LitVarI2 var_D0, 0
  loc_AF695A: ILdRf var_98
  loc_AF695D: LitStr vbNullString
  loc_AF6960: EqStr
  loc_AF6962: CVarBoolI2 var_B0
  loc_AF6966: FLdRfVar var_F0
  loc_AF6969: ImpAdCallFPR4  = IIf(, , )
  loc_AF696E: FLdRfVar var_F0
  loc_AF6971: CI2Var
  loc_AF6972: FStI2 var_88
  loc_AF6975: FFree1Str var_98
  loc_AF6978: FFreeAd var_94 = ""
  loc_AF697F: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AF698A: FLdRfVar var_98
  loc_AF698D: FLdPr Me
  loc_AF6990: VCallAd Control_ID_AlternLbl
  loc_AF6993: FStAdFunc var_94
  loc_AF6996: FLdPr var_94
  loc_AF6999:  = Me.Caption
  loc_AF699E: FLdRfVar var_A0
  loc_AF69A1: FLdPr Me
  loc_AF69A4: VCallAd Control_ID_AlternLbl
  loc_AF69A7: FStAdFunc var_9C
  loc_AF69AA: FLdPr var_9C
  loc_AF69AD:  = Me.Caption
  loc_AF69B2: FLdZeroAd var_A0
  loc_AF69B5: CVarStr var_E0
  loc_AF69B8: LitVarI2 var_D0, 0
  loc_AF69BD: ILdRf var_98
  loc_AF69C0: LitStr vbNullString
  loc_AF69C3: EqStr
  loc_AF69C5: CVarBoolI2 var_B0
  loc_AF69C9: FLdRfVar var_F0
  loc_AF69CC: ImpAdCallFPR4  = IIf(, , )
  loc_AF69D1: FLdRfVar var_F0
  loc_AF69D4: CI2Var
  loc_AF69D5: FStI2 var_8A
  loc_AF69D8: FFree1Str var_98
  loc_AF69DB: FFreeAd var_94 = ""
  loc_AF69E2: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AF69ED: FLdRfVar var_98
  loc_AF69F0: FLdPr Me
  loc_AF69F3: VCallAd Control_ID_CodiOrcoLbl
  loc_AF69F6: FStAdFunc var_94
  loc_AF69F9: FLdPr var_94
  loc_AF69FC:  = Me.Caption
  loc_AF6A01: FLdRfVar var_A0
  loc_AF6A04: FLdPr Me
  loc_AF6A07: VCallAd Control_ID_CodiOrcoLbl
  loc_AF6A0A: FStAdFunc var_9C
  loc_AF6A0D: FLdPr var_9C
  loc_AF6A10:  = Me.Caption
  loc_AF6A15: FLdZeroAd var_A0
  loc_AF6A18: CVarStr var_E0
  loc_AF6A1B: LitVarI2 var_D0, 0
  loc_AF6A20: ILdRf var_98
  loc_AF6A23: LitStr vbNullString
  loc_AF6A26: EqStr
  loc_AF6A28: CVarBoolI2 var_B0
  loc_AF6A2C: FLdRfVar var_F0
  loc_AF6A2F: ImpAdCallFPR4  = IIf(, , )
  loc_AF6A34: FLdRfVar var_F0
  loc_AF6A37: CI2Var
  loc_AF6A38: FStI2 var_8C
  loc_AF6A3B: FFree1Str var_98
  loc_AF6A3E: FFreeAd var_94 = ""
  loc_AF6A45: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AF6A50: FLdRfVar var_98
  loc_AF6A53: FLdPr Me
  loc_AF6A56: VCallAd Control_ID_CodiReceLbl
  loc_AF6A59: FStAdFunc var_94
  loc_AF6A5C: FLdPr var_94
  loc_AF6A5F:  = Me.Caption
  loc_AF6A64: FLdRfVar var_A0
  loc_AF6A67: FLdPr Me
  loc_AF6A6A: VCallAd Control_ID_CodiReceLbl
  loc_AF6A6D: FStAdFunc var_9C
  loc_AF6A70: FLdPr var_9C
  loc_AF6A73:  = Me.Caption
  loc_AF6A78: FLdZeroAd var_A0
  loc_AF6A7B: CVarStr var_E0
  loc_AF6A7E: LitVarI2 var_D0, 0
  loc_AF6A83: ILdRf var_98
  loc_AF6A86: LitStr vbNullString
  loc_AF6A89: EqStr
  loc_AF6A8B: CVarBoolI2 var_B0
  loc_AF6A8F: FLdRfVar var_F0
  loc_AF6A92: ImpAdCallFPR4  = IIf(, , )
  loc_AF6A97: FLdRfVar var_F0
  loc_AF6A9A: CI2Var
  loc_AF6A9B: FStI2 var_8E
  loc_AF6A9E: FFree1Str var_98
  loc_AF6AA1: FFreeAd var_94 = ""
  loc_AF6AA8: FFreeVar var_B0 = "": var_D0 = "": var_E0 = ""
  loc_AF6AB3: FLdRfVar var_F2
  loc_AF6AB6: FLdPr Me
  loc_AF6AB9: VCallAd Control_ID_cboSeleccion
  loc_AF6ABC: FStAdFunc var_94
  loc_AF6ABF: FLdPr var_94
  loc_AF6AC2:  = Me.ListIndex
  loc_AF6AC7: FLdRfVar var_F8
  loc_AF6ACA: FLdI2 var_F2
  loc_AF6ACD: FLdPr Me
  loc_AF6AD0: VCallAd Control_ID_cboSeleccion
  loc_AF6AD3: FStAdFunc var_9C
  loc_AF6AD6: FLdPr var_9C
  loc_AF6AD9:  = Me.ItemData
  loc_AF6ADE: FLdPr Me
  loc_AF6AE1: VCallAd Control_ID_ExorImpuMsk
  loc_AF6AE4: FStAdFunc var_FC
  loc_AF6AE7: FLdPr var_FC
  loc_AF6AEA: LateIdLdVar var_D0 DispID_15 0
  loc_AF6AF1: PopAd
  loc_AF6AF3: FLdPr Me
  loc_AF6AF6: VCallAd Control_ID_CodiPartMsk
  loc_AF6AF9: FStAdFunc var_100
  loc_AF6AFC: FLdPr var_100
  loc_AF6AFF: LateIdLdVar var_E0 DispID_22 0
  loc_AF6B06: PopAd
  loc_AF6B08: FLdPr Me
  loc_AF6B0B: VCallAd Control_ID_CodiOrgaMsk
  loc_AF6B0E: FStAdFunc var_104
  loc_AF6B11: FLdPr var_104
  loc_AF6B14: LateIdLdVar var_F0 DispID_22 0
  loc_AF6B1B: PopAd
  loc_AF6B1D: FLdRfVar var_10C
  loc_AF6B20: FLdRfVar var_F0
  loc_AF6B23: CStrVarTmp
  loc_AF6B24: FStStrNoPop var_108
  loc_AF6B27: FLdRfVar var_E0
  loc_AF6B2A: CStrVarTmp
  loc_AF6B2B: FStStrNoPop var_A0
  loc_AF6B2E: FLdI2 var_8E
  loc_AF6B31: FLdI2 var_8C
  loc_AF6B34: FLdI2 var_8A
  loc_AF6B37: FLdI2 var_88
  loc_AF6B3A: FLdI2 var_86
  loc_AF6B3D: CI4UI1
  loc_AF6B3E: FLdRfVar var_D0
  loc_AF6B41: CStrVarTmp
  loc_AF6B42: FStStrNoPop var_98
  loc_AF6B45: ILdRf var_F8
  loc_AF6B48: CI2I4
  loc_AF6B49: ImpAdLdI2 MemVar_C3D064
  loc_AF6B4C: FLdPr Me
  loc_AF6B4F: MemLdRfVar from_stack_1.global_52
  loc_AF6B52: NewIfNullPr clsimputacion
  loc_AF6B55: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_AF6B5A: FLdZeroAd var_10C
  loc_AF6B5D: CVarStr var_11C
  loc_AF6B60: PopAdLdVar
  loc_AF6B61: FLdPr Me
  loc_AF6B64: VCallAd Control_ID_FechImpuMsk
  loc_AF6B67: FStAdFunc var_120
  loc_AF6B6A: FLdPr var_120
  loc_AF6B6D: LateIdSt
  loc_AF6B72: FFreeStr var_98 = "": var_A0 = ""
  loc_AF6B7B: FFreeAd var_94 = "": var_9C = "": var_FC = "": var_100 = "": var_104 = ""
  loc_AF6B8A: FFreeVar var_D0 = "": var_E0 = "": var_F0 = ""
  loc_AF6B95: LitStr "Municipalidad de Guaymallén"
  loc_AF6B98: FStStrCopy var_124
  loc_AF6B9B: ILdRf var_124
  loc_AF6B9E: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_AF6BA1: EqStr
  loc_AF6BA3: BranchF loc_AF6C95
  loc_AF6BA6: FLdPr Me
  loc_AF6BA9: VCallAd Control_ID_FechImpuMsk
  loc_AF6BAC: FStAdFunc var_94
  loc_AF6BAF: FLdPr var_94
  loc_AF6BB2: LateIdLdVar var_D0 DispID_22 0
  loc_AF6BB9: CStrVarTmp
  loc_AF6BBA: FStStrNoPop var_98
  loc_AF6BBD: LitStr vbNullString
  loc_AF6BC0: NeStr
  loc_AF6BC2: FFree1Str var_98
  loc_AF6BC5: FFree1Ad var_94
  loc_AF6BC8: FFree1Var var_D0 = ""
  loc_AF6BCB: BranchF loc_AF6C92
  loc_AF6BCE: FLdPr Me
  loc_AF6BD1: VCallAd Control_ID_FechImpuMsk
  loc_AF6BD4: FStAdFunc var_9C
  loc_AF6BD7: FLdPr var_9C
  loc_AF6BDA: LateIdLdVar var_E0 DispID_11 -32767
  loc_AF6BE1: PopAd
  loc_AF6BE3: FLdPr Me
  loc_AF6BE6: VCallAd Control_ID_FechImpuMsk
  loc_AF6BE9: FStAdFunc var_94
  loc_AF6BEC: FLdPr var_94
  loc_AF6BEF: LateIdLdVar var_D0 DispID_15 0
  loc_AF6BF6: CStrVarTmp
  loc_AF6BF7: FStStrNoPop var_98
  loc_AF6BFA: CDateStr
  loc_AF6BFC: FLdRfVar var_E0
  loc_AF6BFF: CStrVarTmp
  loc_AF6C00: FStStrNoPop var_A0
  loc_AF6C03: CDateStr
  loc_AF6C05: GtR4
  loc_AF6C06: FFreeStr var_98 = ""
  loc_AF6C0D: FFreeAd var_94 = ""
  loc_AF6C14: FFreeVar var_D0 = ""
  loc_AF6C1B: BranchF loc_AF6C8F
  loc_AF6C1E: FLdPr Me
  loc_AF6C21: VCallAd Control_ID_FechImpuMsk
  loc_AF6C24: FStAdFunc var_94
  loc_AF6C27: FLdPr var_94
  loc_AF6C2A: LateIdLdVar var_D0 DispID_15 0
  loc_AF6C31: CStrVarTmp
  loc_AF6C32: CVarStr var_E0
  loc_AF6C35: PopAdLdVar
  loc_AF6C36: FLdPr Me
  loc_AF6C39: VCallAd Control_ID_FechImpuMsk
  loc_AF6C3C: FStAdFunc var_9C
  loc_AF6C3F: FLdPr var_9C
  loc_AF6C42: LateIdSt
  loc_AF6C47: FFreeAd var_94 = ""
  loc_AF6C4E: FFreeVar var_D0 = ""
  loc_AF6C55: FLdPr Me
  loc_AF6C58: VCallAd Control_ID_FechImpuMsk
  loc_AF6C5B: FStAdFunc var_94
  loc_AF6C5E: FLdPr var_94
  loc_AF6C61: LateIdLdVar var_D0 DispID_11 -32767
  loc_AF6C68: CStrVarTmp
  loc_AF6C69: CVarStr var_E0
  loc_AF6C6C: PopAdLdVar
  loc_AF6C6D: FLdPr Me
  loc_AF6C70: VCallAd Control_ID_FechImpuMsk
  loc_AF6C73: FStAdFunc var_9C
  loc_AF6C76: FLdPr var_9C
  loc_AF6C79: LateIdSt
  loc_AF6C7E: FFreeAd var_94 = ""
  loc_AF6C85: FFreeVar var_D0 = ""
  loc_AF6C8C: Branch loc_AF6C8F
  loc_AF6C8F: Branch loc_AF6C92
  loc_AF6C92: Branch loc_AF6DB9
  loc_AF6C95: FLdPr Me
  loc_AF6C98: VCallAd Control_ID_FechImpuMsk
  loc_AF6C9B: FStAdFunc var_94
  loc_AF6C9E: FLdPr var_94
  loc_AF6CA1: LateIdLdVar var_D0 DispID_22 0
  loc_AF6CA8: CStrVarTmp
  loc_AF6CA9: FStStrNoPop var_98
  loc_AF6CAC: LitStr vbNullString
  loc_AF6CAF: NeStr
  loc_AF6CB1: FFree1Str var_98
  loc_AF6CB4: FFree1Ad var_94
  loc_AF6CB7: FFree1Var var_D0 = ""
  loc_AF6CBA: BranchF loc_AF6DB9
  loc_AF6CBD: LitI4 1
  loc_AF6CC2: FLdPr Me
  loc_AF6CC5: VCallAd Control_ID_FechImpuMsk
  loc_AF6CC8: FStAdFunc var_94
  loc_AF6CCB: FLdPr var_94
  loc_AF6CCE: LateIdLdVar var_D0 DispID_15 0
  loc_AF6CD5: CStrVarTmp
  loc_AF6CD6: FStStrNoPop var_98
  loc_AF6CD9: LitStr " "
  loc_AF6CDC: LitI4 0
  loc_AF6CE1: FnInStr4
  loc_AF6CE3: LitI4 0
  loc_AF6CE8: EqI4
  loc_AF6CE9: FFree1Str var_98
  loc_AF6CEC: FFree1Ad var_94
  loc_AF6CEF: FFree1Var var_D0 = ""
  loc_AF6CF2: BranchF loc_AF6DB6
  loc_AF6CF5: FLdPr Me
  loc_AF6CF8: VCallAd Control_ID_FechImpuMsk
  loc_AF6CFB: FStAdFunc var_9C
  loc_AF6CFE: FLdPr var_9C
  loc_AF6D01: LateIdLdVar var_E0 DispID_11 -32767
  loc_AF6D08: PopAd
  loc_AF6D0A: FLdPr Me
  loc_AF6D0D: VCallAd Control_ID_FechImpuMsk
  loc_AF6D10: FStAdFunc var_94
  loc_AF6D13: FLdPr var_94
  loc_AF6D16: LateIdLdVar var_D0 DispID_15 0
  loc_AF6D1D: CStrVarTmp
  loc_AF6D1E: FStStrNoPop var_98
  loc_AF6D21: CDateStr
  loc_AF6D23: FLdRfVar var_E0
  loc_AF6D26: CStrVarTmp
  loc_AF6D27: FStStrNoPop var_A0
  loc_AF6D2A: CDateStr
  loc_AF6D2C: GtR4
  loc_AF6D2D: FFreeStr var_98 = ""
  loc_AF6D34: FFreeAd var_94 = ""
  loc_AF6D3B: FFreeVar var_D0 = ""
  loc_AF6D42: BranchF loc_AF6DB6
  loc_AF6D45: FLdPr Me
  loc_AF6D48: VCallAd Control_ID_FechImpuMsk
  loc_AF6D4B: FStAdFunc var_94
  loc_AF6D4E: FLdPr var_94
  loc_AF6D51: LateIdLdVar var_D0 DispID_15 0
  loc_AF6D58: CStrVarTmp
  loc_AF6D59: CVarStr var_E0
  loc_AF6D5C: PopAdLdVar
  loc_AF6D5D: FLdPr Me
  loc_AF6D60: VCallAd Control_ID_FechImpuMsk
  loc_AF6D63: FStAdFunc var_9C
  loc_AF6D66: FLdPr var_9C
  loc_AF6D69: LateIdSt
  loc_AF6D6E: FFreeAd var_94 = ""
  loc_AF6D75: FFreeVar var_D0 = ""
  loc_AF6D7C: FLdPr Me
  loc_AF6D7F: VCallAd Control_ID_FechImpuMsk
  loc_AF6D82: FStAdFunc var_94
  loc_AF6D85: FLdPr var_94
  loc_AF6D88: LateIdLdVar var_D0 DispID_11 -32767
  loc_AF6D8F: CStrVarTmp
  loc_AF6D90: CVarStr var_E0
  loc_AF6D93: PopAdLdVar
  loc_AF6D94: FLdPr Me
  loc_AF6D97: VCallAd Control_ID_FechImpuMsk
  loc_AF6D9A: FStAdFunc var_9C
  loc_AF6D9D: FLdPr var_9C
  loc_AF6DA0: LateIdSt
  loc_AF6DA5: FFreeAd var_94 = ""
  loc_AF6DAC: FFreeVar var_D0 = ""
  loc_AF6DB3: Branch loc_AF6DB6
  loc_AF6DB6: Branch loc_AF6DB9
  loc_AF6DB9: FLdPr Me
  loc_AF6DBC: VCallAd Control_ID_FechImpuMsk
  loc_AF6DBF: FStAdFunc var_94
  loc_AF6DC2: FLdPr var_94
  loc_AF6DC5: LateIdLdVar var_D0 DispID_11 -32767
  loc_AF6DCC: CStrVarTmp
  loc_AF6DCD: CVarStr var_E0
  loc_AF6DD0: PopAdLdVar
  loc_AF6DD1: FLdPr Me
  loc_AF6DD4: VCallAd Control_ID_FechImpuMsk
  loc_AF6DD7: FStAdFunc var_9C
  loc_AF6DDA: FLdPr var_9C
  loc_AF6DDD: LateIdSt
  loc_AF6DE2: FFreeAd var_94 = ""
  loc_AF6DE9: FFreeVar var_D0 = ""
  loc_AF6DF0: FLdPr Me
  loc_AF6DF3: MemLdI2 global_188
  loc_AF6DF6: NotI4
  loc_AF6DF7: BranchF loc_AF6E31
  loc_AF6DFA: FLdPr Me
  loc_AF6DFD: VCallAd Control_ID_FechImpuMsk
  loc_AF6E00: FStAdFunc var_94
  loc_AF6E03: FLdPr var_94
  loc_AF6E06: LateIdLdVar var_D0 DispID_11 -32767
  loc_AF6E0D: CStrVarTmp
  loc_AF6E0E: CVarStr var_E0
  loc_AF6E11: PopAdLdVar
  loc_AF6E12: FLdPr Me
  loc_AF6E15: VCallAd Control_ID_FechImpuMsk
  loc_AF6E18: FStAdFunc var_9C
  loc_AF6E1B: FLdPr var_9C
  loc_AF6E1E: LateIdSt
  loc_AF6E23: FFreeAd var_94 = ""
  loc_AF6E2A: FFreeVar var_D0 = ""
  loc_AF6E31: FLdPr Me
  loc_AF6E34: VCallAd Control_ID_FechImpuMsk
  loc_AF6E37: FStAdFunc var_94
  loc_AF6E3A: FLdPr var_94
  loc_AF6E3D: LateIdLdVar var_D0 DispID_11 -32767
  loc_AF6E44: CStrVarTmp
  loc_AF6E45: CVarStr var_E0
  loc_AF6E48: PopAdLdVar
  loc_AF6E49: FLdPr Me
  loc_AF6E4C: VCallAd Control_ID_FefaDeveMsk
  loc_AF6E4F: FStAdFunc var_9C
  loc_AF6E52: FLdPr var_9C
  loc_AF6E55: LateIdSt
  loc_AF6E5A: FFreeAd var_94 = ""
  loc_AF6E61: FFreeVar var_D0 = ""
  loc_AF6E68: FLdPr Me
  loc_AF6E6B: VCallAd Control_ID_FefaDeveMsk
  loc_AF6E6E: FStAdFunc var_94
  loc_AF6E71: FLdPr var_94
  loc_AF6E74: LateIdLdVar var_D0 DispID_11 -32767
  loc_AF6E7B: CStrVarTmp
  loc_AF6E7C: CVarStr var_E0
  loc_AF6E7F: PopAdLdVar
  loc_AF6E80: FLdPr Me
  loc_AF6E83: VCallAd Control_ID_FefaDeveMsk
  loc_AF6E86: FStAdFunc var_9C
  loc_AF6E89: FLdPr var_9C
  loc_AF6E8C: LateIdSt
  loc_AF6E91: FFreeAd var_94 = ""
  loc_AF6E98: FFreeVar var_D0 = ""
  loc_AF6E9F: LitStr "Municipalidad de Guaymallén"
  loc_AF6EA2: FStStrCopy var_128
  loc_AF6EA5: ILdRf var_128
  loc_AF6EA8: LitStr "Municipalidad de Lavalle"
  loc_AF6EAB: EqStr
  loc_AF6EAD: BranchT loc_AF6EBB
  loc_AF6EB0: ILdRf var_128
  loc_AF6EB3: LitStr "Municipalidad de Rivadavia"
  loc_AF6EB6: EqStr
  loc_AF6EB8: BranchF loc_AF6EE3
  loc_AF6EBB: ImpAdLdRf MemVar_C3D064
  loc_AF6EBE: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_AF6EC3: CStrDate
  loc_AF6EC5: CVarStr var_D0
  loc_AF6EC8: PopAdLdVar
  loc_AF6EC9: FLdPr Me
  loc_AF6ECC: VCallAd Control_ID_FechImpuMsk
  loc_AF6ECF: FStAdFunc var_94
  loc_AF6ED2: FLdPr var_94
  loc_AF6ED5: LateIdSt
  loc_AF6EDA: FFree1Ad var_94
  loc_AF6EDD: FFree1Var var_D0 = ""
  loc_AF6EE0: Branch loc_AF6FFB
  loc_AF6EE3: ILdRf var_128
  loc_AF6EE6: LitStr "Municipalidad de Maipú"
  loc_AF6EE9: EqStr
  loc_AF6EEB: BranchF loc_AF6FC4
  loc_AF6EEE: FLdRfVar var_F8
  loc_AF6EF1: FLdRfVar var_F2
  loc_AF6EF4: FLdPr Me
  loc_AF6EF7: VCallAd Control_ID_cboSeleccion
  loc_AF6EFA: FStAdFunc var_94
  loc_AF6EFD: FLdPr var_94
  loc_AF6F00:  = Me.ListIndex
  loc_AF6F05: FLdI2 var_F2
  loc_AF6F08: FLdPr Me
  loc_AF6F0B: VCallAd Control_ID_cboSeleccion
  loc_AF6F0E: FStAdFunc var_9C
  loc_AF6F11: FLdPr var_9C
  loc_AF6F14:  = Me.ItemData
  loc_AF6F19: ILdRf var_F8
  loc_AF6F1C: FStR4 var_12C
  loc_AF6F1F: FFreeAd var_94 = ""
  loc_AF6F26: ILdRf var_12C
  loc_AF6F29: LitI4 1
  loc_AF6F2E: EqI4
  loc_AF6F2F: BranchT loc_AF6F62
  loc_AF6F32: ILdRf var_12C
  loc_AF6F35: LitI4 2
  loc_AF6F3A: EqI4
  loc_AF6F3B: BranchT loc_AF6F62
  loc_AF6F3E: ILdRf var_12C
  loc_AF6F41: LitI4 &H13
  loc_AF6F46: EqI4
  loc_AF6F47: BranchT loc_AF6F62
  loc_AF6F4A: ILdRf var_12C
  loc_AF6F4D: LitI4 3
  loc_AF6F52: EqI4
  loc_AF6F53: BranchT loc_AF6F62
  loc_AF6F56: ILdRf var_12C
  loc_AF6F59: LitI4 4
  loc_AF6F5E: EqI4
  loc_AF6F5F: BranchF loc_AF6F9C
  loc_AF6F62: FLdPr Me
  loc_AF6F65: VCallAd Control_ID_FechImpuMsk
  loc_AF6F68: FStAdFunc var_94
  loc_AF6F6B: FLdPr var_94
  loc_AF6F6E: LateIdLdVar var_D0 DispID_11 -32767
  loc_AF6F75: CStrVarTmp
  loc_AF6F76: CVarStr var_E0
  loc_AF6F79: PopAdLdVar
  loc_AF6F7A: FLdPr Me
  loc_AF6F7D: VCallAd Control_ID_FechImpuMsk
  loc_AF6F80: FStAdFunc var_9C
  loc_AF6F83: FLdPr var_9C
  loc_AF6F86: LateIdSt
  loc_AF6F8B: FFreeAd var_94 = ""
  loc_AF6F92: FFreeVar var_D0 = ""
  loc_AF6F99: Branch loc_AF6FC1
  loc_AF6F9C: ImpAdLdRf MemVar_C3D064
  loc_AF6F9F: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_AF6FA4: CStrDate
  loc_AF6FA6: CVarStr var_D0
  loc_AF6FA9: PopAdLdVar
  loc_AF6FAA: FLdPr Me
  loc_AF6FAD: VCallAd Control_ID_FechImpuMsk
  loc_AF6FB0: FStAdFunc var_94
  loc_AF6FB3: FLdPr var_94
  loc_AF6FB6: LateIdSt
  loc_AF6FBB: FFree1Ad var_94
  loc_AF6FBE: FFree1Var var_D0 = ""
  loc_AF6FC1: Branch loc_AF6FFB
  loc_AF6FC4: FLdPr Me
  loc_AF6FC7: VCallAd Control_ID_FechImpuMsk
  loc_AF6FCA: FStAdFunc var_94
  loc_AF6FCD: FLdPr var_94
  loc_AF6FD0: LateIdLdVar var_D0 DispID_11 -32767
  loc_AF6FD7: CStrVarTmp
  loc_AF6FD8: CVarStr var_E0
  loc_AF6FDB: PopAdLdVar
  loc_AF6FDC: FLdPr Me
  loc_AF6FDF: VCallAd Control_ID_FechImpuMsk
  loc_AF6FE2: FStAdFunc var_9C
  loc_AF6FE5: FLdPr var_9C
  loc_AF6FE8: LateIdSt
  loc_AF6FED: FFreeAd var_94 = ""
  loc_AF6FF4: FFreeVar var_D0 = ""
  loc_AF6FFB: FLdPr Me
  loc_AF6FFE: VCallAd Control_ID_FechImpuMsk
  loc_AF7001: CVarAd
  loc_AF7005: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_AF700A: FFree1Var var_D0 = ""
  loc_AF700D: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_8 'A6DDD0
  'Data Table: 500268
  loc_A6DA40: FLdRfVar var_8A
  loc_A6DA43: FLdPr Me
  loc_A6DA46: VCallAd Control_ID_cmdCancelar
  loc_A6DA49: FStAdFunc var_88
  loc_A6DA4C: FLdPr var_88
  loc_A6DA4F:  = Me.Value
  loc_A6DA54: FLdI2 var_8A
  loc_A6DA57: NotI4
  loc_A6DA58: FLdPr Me
  loc_A6DA5B: VCallAd Control_ID_FechImpuMsk
  loc_A6DA5E: FStAdFunc var_90
  loc_A6DA61: FLdPr var_90
  loc_A6DA64: LateIdLdVar var_A0 DispID_13 -32767
  loc_A6DA6B: CBoolVar
  loc_A6DA6D: AndI4
  loc_A6DA6E: FFreeAd var_88 = ""
  loc_A6DA75: FFree1Var var_A0 = ""
  loc_A6DA78: BranchF loc_A6DDCD
  loc_A6DA7B: FLdPr Me
  loc_A6DA7E: VCallAd Control_ID_FechImpuMsk
  loc_A6DA81: FStAdFunc var_88
  loc_A6DA84: FLdPr var_88
  loc_A6DA87: LateIdLdVar var_A0 DispID_15 0
  loc_A6DA8E: PopAd
  loc_A6DA90: FLdPr Me
  loc_A6DA93: VCallAd Control_ID_FechImpuMsk
  loc_A6DA96: FStAdFunc var_AC
  loc_A6DA99: LitI2_Byte &HFF
  loc_A6DA9B: PopTmpLdAd2 var_8A
  loc_A6DA9E: FLdZeroAd var_AC
  loc_A6DAA1: FStAdFunc var_90
  loc_A6DAA4: FLdRfVar var_90
  loc_A6DAA7: LitStr vbNullString
  loc_A6DAAA: LitI2_Byte &HFF
  loc_A6DAAC: LitI2_Byte &HFF
  loc_A6DAAE: FLdRfVar var_A0
  loc_A6DAB1: CStrVarTmp
  loc_A6DAB2: FStStrNoPop var_A4
  loc_A6DAB5: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A6DABA: FStStrNoPop var_A8
  loc_A6DABD: FLdPr Me
  loc_A6DAC0: MemStStrCopy
  loc_A6DAC4: FFreeStr var_A4 = ""
  loc_A6DACB: FFreeAd var_88 = "": var_90 = ""
  loc_A6DAD4: FFree1Var var_A0 = ""
  loc_A6DAD7: FLdPr Me
  loc_A6DADA: MemLdStr global_64
  loc_A6DADD: LitStr vbNullString
  loc_A6DAE0: NeStr
  loc_A6DAE2: BranchF loc_A6DB3F
  loc_A6DAE5: LitStr "Fecha preventiva-definitiva: "
  loc_A6DAE8: FLdPr Me
  loc_A6DAEB: MemLdStr global_64
  loc_A6DAEE: ConcatStr
  loc_A6DAEF: FStStrNoPop var_A4
  loc_A6DAF2: FLdPr Me
  loc_A6DAF5: MemStStrCopy
  loc_A6DAF9: FFree1Str var_A4
  loc_A6DAFC: FLdPr Me
  loc_A6DAFF: VCallAd Control_ID_FechImpuMsk
  loc_A6DB02: FStAdFunc var_B0
  loc_A6DB05: LitNothing
  loc_A6DB07: CastAd
  loc_A6DB0A: FStAdFunc var_AC
  loc_A6DB0D: FLdRfVar var_AC
  loc_A6DB10: FLdZeroAd var_B0
  loc_A6DB13: FStAdFuncNoPop
  loc_A6DB16: CastAd
  loc_A6DB19: FStAdFunc var_90
  loc_A6DB1C: FLdRfVar var_90
  loc_A6DB1F: FLdPr Me
  loc_A6DB22: MemLdRfVar from_stack_1.global_64
  loc_A6DB25: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A6DB2A: IStI2 KeyCode
  loc_A6DB2D: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A6DB38: ILdI2 KeyCode
  loc_A6DB3B: BranchF loc_A6DB3F
  loc_A6DB3E: ExitProcHresult
  loc_A6DB3F: FLdPr Me
  loc_A6DB42: VCallAd Control_ID_FechImpuMsk
  loc_A6DB45: FStAdFunc var_88
  loc_A6DB48: FLdPr var_88
  loc_A6DB4B: LateIdLdVar var_A0 DispID_11 -32767
  loc_A6DB52: CStrVarTmp
  loc_A6DB53: FStStrNoPop var_A4
  loc_A6DB56: LitStr vbNullString
  loc_A6DB59: EqStr
  loc_A6DB5B: FFree1Str var_A4
  loc_A6DB5E: FFree1Ad var_88
  loc_A6DB61: FFree1Var var_A0 = ""
  loc_A6DB64: BranchF loc_A6DBE4
  loc_A6DB67: FLdPr Me
  loc_A6DB6A: VCallAd Control_ID_CodiPartMsk
  loc_A6DB6D: FStAdFunc var_88
  loc_A6DB70: FLdPr var_88
  loc_A6DB73: LateIdLdVar var_A0 DispID_22 0
  loc_A6DB7A: PopAd
  loc_A6DB7C: FLdPr Me
  loc_A6DB7F: VCallAd Control_ID_CodiOrgaMsk
  loc_A6DB82: FStAdFunc var_90
  loc_A6DB85: FLdPr var_90
  loc_A6DB88: LateIdLdVar var_C0 DispID_22 0
  loc_A6DB8F: PopAd
  loc_A6DB91: FLdRfVar var_C4
  loc_A6DB94: FLdRfVar var_C0
  loc_A6DB97: CStrVarTmp
  loc_A6DB98: FStStrNoPop var_A8
  loc_A6DB9B: FLdRfVar var_A0
  loc_A6DB9E: CStrVarTmp
  loc_A6DB9F: FStStrNoPop var_A4
  loc_A6DBA2: ImpAdLdI2 MemVar_C3D064
  loc_A6DBA5: FLdPr Me
  loc_A6DBA8: MemLdRfVar from_stack_1.global_52
  loc_A6DBAB: NewIfNullPr clsimputacion
  loc_A6DBAE: from_stack_4v = clsimputacion.UltimaFechAuto(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A6DBB3: FLdZeroAd var_C4
  loc_A6DBB6: CVarStr var_D4
  loc_A6DBB9: PopAdLdVar
  loc_A6DBBA: FLdPr Me
  loc_A6DBBD: VCallAd Control_ID_FechImpuMsk
  loc_A6DBC0: FStAdFunc var_AC
  loc_A6DBC3: FLdPr var_AC
  loc_A6DBC6: LateIdSt
  loc_A6DBCB: FFreeStr var_A4 = ""
  loc_A6DBD2: FFreeAd var_88 = "": var_90 = ""
  loc_A6DBDB: FFreeVar var_A0 = "": var_C0 = ""
  loc_A6DBE4: FLdPr Me
  loc_A6DBE7: VCallAd Control_ID_FechImpuMsk
  loc_A6DBEA: FStAdFunc var_88
  loc_A6DBED: FLdPr var_88
  loc_A6DBF0: LateIdLdVar var_A0 DispID_15 0
  loc_A6DBF7: PopAd
  loc_A6DBF9: FLdPr Me
  loc_A6DBFC: VCallAd Control_ID_FechImpuMsk
  loc_A6DBFF: FStAdFunc var_90
  loc_A6DC02: FLdPr var_90
  loc_A6DC05: LateIdLdVar var_C0 DispID_11 -32767
  loc_A6DC0C: PopAd
  loc_A6DC0E: FLdPr Me
  loc_A6DC11: VCallAd Control_ID_FechImpuMsk
  loc_A6DC14: FStAdFunc var_B0
  loc_A6DC17: LitI2_Byte &HFF
  loc_A6DC19: PopTmpLdAd2 var_8A
  loc_A6DC1C: FLdZeroAd var_B0
  loc_A6DC1F: FStAdFunc var_AC
  loc_A6DC22: FLdRfVar var_AC
  loc_A6DC25: FLdRfVar var_C0
  loc_A6DC28: CStrVarTmp
  loc_A6DC29: FStStrNoPop var_A8
  loc_A6DC2C: LitI2_Byte &HFF
  loc_A6DC2E: LitI2_Byte &HFF
  loc_A6DC30: FLdRfVar var_A0
  loc_A6DC33: CStrVarTmp
  loc_A6DC34: FStStrNoPop var_A4
  loc_A6DC37: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A6DC3C: FStStrNoPop var_C4
  loc_A6DC3F: FLdPr Me
  loc_A6DC42: MemStStrCopy
  loc_A6DC46: FFreeStr var_A4 = "": var_A8 = ""
  loc_A6DC4F: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A6DC5A: FFreeVar var_A0 = ""
  loc_A6DC61: FLdPr Me
  loc_A6DC64: MemLdStr global_64
  loc_A6DC67: LitStr vbNullString
  loc_A6DC6A: NeStr
  loc_A6DC6C: BranchF loc_A6DCC9
  loc_A6DC6F: LitStr "Fecha preventiva-definitiva: "
  loc_A6DC72: FLdPr Me
  loc_A6DC75: MemLdStr global_64
  loc_A6DC78: ConcatStr
  loc_A6DC79: FStStrNoPop var_A4
  loc_A6DC7C: FLdPr Me
  loc_A6DC7F: MemStStrCopy
  loc_A6DC83: FFree1Str var_A4
  loc_A6DC86: FLdPr Me
  loc_A6DC89: VCallAd Control_ID_FechImpuMsk
  loc_A6DC8C: FStAdFunc var_B0
  loc_A6DC8F: LitNothing
  loc_A6DC91: CastAd
  loc_A6DC94: FStAdFunc var_AC
  loc_A6DC97: FLdRfVar var_AC
  loc_A6DC9A: FLdZeroAd var_B0
  loc_A6DC9D: FStAdFuncNoPop
  loc_A6DCA0: CastAd
  loc_A6DCA3: FStAdFunc var_90
  loc_A6DCA6: FLdRfVar var_90
  loc_A6DCA9: FLdPr Me
  loc_A6DCAC: MemLdRfVar from_stack_1.global_64
  loc_A6DCAF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A6DCB4: IStI2 KeyCode
  loc_A6DCB7: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A6DCC2: ILdI2 KeyCode
  loc_A6DCC5: BranchF loc_A6DCC9
  loc_A6DCC8: ExitProcHresult
  loc_A6DCC9: Call Proc_135_77_A8FC68()
  loc_A6DCCE: FLdPr Me
  loc_A6DCD1: VCallAd Control_ID_FechDeveMsk
  loc_A6DCD4: FStAdFunc var_88
  loc_A6DCD7: FLdPr var_88
  loc_A6DCDA: LateIdLdVar var_A0 DispID_13 -32767
  loc_A6DCE1: CBoolVar
  loc_A6DCE3: LitI2_Byte &HFF
  loc_A6DCE5: EqI2
  loc_A6DCE6: FLdPr Me
  loc_A6DCE9: VCallAd Control_ID_FechDeveMsk
  loc_A6DCEC: FStAdFunc var_90
  loc_A6DCEF: FLdPr var_90
  loc_A6DCF2: LateIdLdVar var_C0 DispID_22 0
  loc_A6DCF9: CStrVarTmp
  loc_A6DCFA: FStStrNoPop var_A4
  loc_A6DCFD: LitStr vbNullString
  loc_A6DD00: NeStr
  loc_A6DD02: AndI4
  loc_A6DD03: FFree1Str var_A4
  loc_A6DD06: FFreeAd var_88 = ""
  loc_A6DD0D: FFreeVar var_A0 = ""
  loc_A6DD14: BranchF loc_A6DDCD
  loc_A6DD17: FLdPr Me
  loc_A6DD1A: VCallAd Control_ID_FechImpuMsk
  loc_A6DD1D: FStAdFunc var_90
  loc_A6DD20: FLdPr var_90
  loc_A6DD23: LateIdLdVar var_C0 DispID_15 0
  loc_A6DD2A: PopAd
  loc_A6DD2C: FLdPr Me
  loc_A6DD2F: VCallAd Control_ID_FechDeveMsk
  loc_A6DD32: FStAdFunc var_88
  loc_A6DD35: FLdPr var_88
  loc_A6DD38: LateIdLdVar var_A0 DispID_15 0
  loc_A6DD3F: CStrVarTmp
  loc_A6DD40: FStStrNoPop var_A4
  loc_A6DD43: CDateStr
  loc_A6DD45: FLdRfVar var_C0
  loc_A6DD48: CStrVarTmp
  loc_A6DD49: FStStrNoPop var_A8
  loc_A6DD4C: CDateStr
  loc_A6DD4E: LtR8
  loc_A6DD4F: FFreeStr var_A4 = ""
  loc_A6DD56: FFreeAd var_88 = ""
  loc_A6DD5D: FFreeVar var_A0 = ""
  loc_A6DD64: BranchF loc_A6DDCD
  loc_A6DD67: LitStr "Fecha preventiva-definitiva es menor a la fecha Devengada. Verifique..."
  loc_A6DD6A: FLdPr Me
  loc_A6DD6D: MemStStrCopy
  loc_A6DD71: FLdPr Me
  loc_A6DD74: MemLdI2 global_188
  loc_A6DD77: BranchF loc_A6DD91
  loc_A6DD7A: LitStr "Advertencia: "
  loc_A6DD7D: FLdPr Me
  loc_A6DD80: MemLdStr global_64
  loc_A6DD83: ConcatStr
  loc_A6DD84: FStStrNoPop var_A4
  loc_A6DD87: FLdPr Me
  loc_A6DD8A: MemStStrCopy
  loc_A6DD8E: FFree1Str var_A4
  loc_A6DD91: FLdPr Me
  loc_A6DD94: VCallAd Control_ID_FechImpuMsk
  loc_A6DD97: FStAdFunc var_B0
  loc_A6DD9A: LitNothing
  loc_A6DD9C: CastAd
  loc_A6DD9F: FStAdFunc var_AC
  loc_A6DDA2: FLdRfVar var_AC
  loc_A6DDA5: FLdZeroAd var_B0
  loc_A6DDA8: FStAdFuncNoPop
  loc_A6DDAB: CastAd
  loc_A6DDAE: FStAdFunc var_90
  loc_A6DDB1: FLdRfVar var_90
  loc_A6DDB4: FLdPr Me
  loc_A6DDB7: MemLdRfVar from_stack_1.global_64
  loc_A6DDBA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A6DDBF: IStI2 KeyCode
  loc_A6DDC2: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A6DDCD: ExitProcHresult
  loc_A6DDCE: ILdRf var_F01
End Sub

Private Sub FechImpuMsk_KeyPress(KeyAscii As Integer) '98F3B4
  'Data Table: 500268
  loc_98F368: ILdI2 KeyAscii
  loc_98F36B: CI4UI1
  loc_98F36C: LitI4 &H20
  loc_98F371: EqI4
  loc_98F372: BranchF loc_98F3A8
  loc_98F375: LitVar_Missing var_A4
  loc_98F378: PopAdLdVar
  loc_98F379: LitVarI4
  loc_98F381: PopAdLdVar
  loc_98F382: ImpAdLdRf MemVar_C3D9A8
  loc_98F385: NewIfNullPr frmCalendario
  loc_98F388: frmCalendario.Show from_stack_1, from_stack_2
  loc_98F38D: ImpAdLdRf MemVar_C3D038
  loc_98F390: CDargRef
  loc_98F394: FLdPr Me
  loc_98F397: VCallAd Control_ID_FechImpuMsk
  loc_98F39A: FStAdFunc var_A8
  loc_98F39D: FLdPr var_A8
  loc_98F3A0: LateIdSt
  loc_98F3A5: FFree1Ad var_A8
  loc_98F3A8: LitI2_Byte &HFF
  loc_98F3AA: FLdPr Me
  loc_98F3AD: MemStI2 global_188
  loc_98F3B0: ExitProcHresult
  loc_98F3B1: FLdRfVar var_2BC
End Sub

Private Sub dgdABMS_UnknownEvent_0 '93FCBC
  'Data Table: 500268
  loc_93FCB8: ExitProcHresult
  loc_93FCB9: FStI2 arg_5CFF
End Sub

Private Sub dgdABMS_UnknownEvent_1 '961A00
  'Data Table: 500268
  loc_9619E8: FLdPr Me
  loc_9619EB: VCallAd Control_ID_dgdABMS
  loc_9619EE: FStAdFunc var_88
  loc_9619F1: FLdRfVar var_88
  loc_9619F4: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9619F9: FFree1Ad var_88
  loc_9619FC: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99BA84
  'Data Table: 500268
  loc_99BA28: FLdRfVar var_B4
  loc_99BA2B: FLdRfVar var_B0
  loc_99BA2E: FLdI2 ColIndex
  loc_99BA31: CVarI2 var_A8
  loc_99BA34: PopAdLdVar
  loc_99BA35: FLdPr Me
  loc_99BA38: VCallAd Control_ID_dgdABMS
  loc_99BA3B: FStAdFunc var_88
  loc_99BA3E: FLdPr var_88
  loc_99BA41: LateIdLdVar var_98 DispID_105 0
  loc_99BA48: CastAdVar Me
  loc_99BA4C: FStAdFunc var_AC
  loc_99BA4F: FLdPr var_AC
  loc_99BA52: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99BA57: FLdPr var_B0
  loc_99BA5A:  = Me.DataField
  loc_99BA5F: FLdZeroAd var_B4
  loc_99BA62: PopTmpLdAdStr
  loc_99BA66: FLdPr Me
  loc_99BA69: MemLdRfVar from_stack_1.global_52
  loc_99BA6C: NewIfNullPr clsimputacion
  loc_99BA6F: Call clsimputacion.Sort(from_stack_1v)
  loc_99BA74: FFree1Str var_B8
  loc_99BA77: FFreeAd var_88 = "": var_AC = ""
  loc_99BA80: FFree1Var var_98 = ""
  loc_99BA83: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) '9B55FC
  'Data Table: 500268
  loc_9B5558: FLdRfVar var_88
  loc_9B555B: FLdPr Me
  loc_9B555E: MemLdRfVar from_stack_1.global_52
  loc_9B5561: NewIfNullPr clsimputacion
  loc_9B5564: from_stack_1 = clsimputacion.RecordCount
  loc_9B5569: ILdRf var_88
  loc_9B556C: LitI4 0
  loc_9B5571: GtI4
  loc_9B5572: FLdRfVar var_90
  loc_9B5575: FLdPr Me
  loc_9B5578: VCallAd Control_ID_SaldImpuLbl
  loc_9B557B: FStAdFunc var_8C
  loc_9B557E: FLdPr var_8C
  loc_9B5581:  = Me.Caption
  loc_9B5586: ILdRf var_90
  loc_9B5589: LitStr vbNullString
  loc_9B558C: NeStr
  loc_9B558E: AndI4
  loc_9B558F: FFree1Str var_90
  loc_9B5592: FFree1Ad var_8C
  loc_9B5595: BranchF loc_9B55F9
  loc_9B5598: FLdRfVar var_90
  loc_9B559B: FLdPr Me
  loc_9B559E: VCallAd Control_ID_SaldImpuLbl
  loc_9B55A1: FStAdFunc var_8C
  loc_9B55A4: FLdPr var_8C
  loc_9B55A7:  = Me.Caption
  loc_9B55AC: LitVarI4
  loc_9B55B4: LitVarI2 var_C0, 255
  loc_9B55B9: ILdRf var_90
  loc_9B55BC: CR8Str
  loc_9B55BE: LitI2_Byte 0
  loc_9B55C0: CR8I2
  loc_9B55C1: LtR8
  loc_9B55C2: CVarBoolI2 var_A0
  loc_9B55C6: FLdRfVar var_F0
  loc_9B55C9: ImpAdCallFPR4  = IIf(, , )
  loc_9B55CE: FLdRfVar var_F0
  loc_9B55D1: CI4Var
  loc_9B55D3: FLdPr Me
  loc_9B55D6: VCallAd Control_ID_SaldImpuLbl
  loc_9B55D9: FStAdFunc var_F4
  loc_9B55DC: FLdPr var_F4
  loc_9B55DF: Me.ForeColor = from_stack_1
  loc_9B55E4: FFree1Str var_90
  loc_9B55E7: FFreeAd var_8C = ""
  loc_9B55EE: FFreeVar var_A0 = "": var_C0 = "": var_E0 = ""
  loc_9B55F9: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94C908
  'Data Table: 500268
  loc_94C8F4: FLdPr Me
  loc_94C8F7: VCallAd Control_ID_FiltroMsk
  loc_94C8FA: CVarAd
  loc_94C8FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C903: FFree1Var var_94 = ""
  loc_94C906: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A34058
  'Data Table: 500268
  loc_A33E50: LitStr "Expediente que comience con: "
  loc_A33E53: FLdPr Me
  loc_A33E56: VCallAd Control_ID_FiltroMsk
  loc_A33E59: FStAdFunc var_88
  loc_A33E5C: FLdPr var_88
  loc_A33E5F: LateIdLdVar var_98 DispID_22 0
  loc_A33E66: CStrVarTmp
  loc_A33E67: FStStrNoPop var_9C
  loc_A33E6A: ConcatStr
  loc_A33E6B: FStStrNoPop var_A0
  loc_A33E6E: FLdPr Me
  loc_A33E71: MemStStrCopy
  loc_A33E75: FFreeStr var_9C = ""
  loc_A33E7C: FFree1Ad var_88
  loc_A33E7F: FFree1Var var_98 = ""
  loc_A33E82: FLdPr Me
  loc_A33E85: VCallAd Control_ID_FiltroMsk
  loc_A33E88: FStAdFunc var_88
  loc_A33E8B: FLdPr var_88
  loc_A33E8E: LateIdLdVar var_98 DispID_22 0
  loc_A33E95: CStrVarTmp
  loc_A33E96: FStStrNoPop var_9C
  loc_A33E99: LitStr vbNullString
  loc_A33E9C: EqStr
  loc_A33E9E: FFree1Str var_9C
  loc_A33EA1: FFree1Ad var_88
  loc_A33EA4: FFree1Var var_98 = ""
  loc_A33EA7: BranchF loc_A33EB4
  loc_A33EAA: Call Proc_135_79_ADA1D4()
  loc_A33EAF: Call cmdCancelar_Click()
  loc_A33EB4: FLdRfVar var_A2
  loc_A33EB7: FLdPr Me
  loc_A33EBA: VCallAd Control_ID_FiltroCbo
  loc_A33EBD: FStAdFunc var_88
  loc_A33EC0: FLdPr var_88
  loc_A33EC3:  = Me.ListIndex
  loc_A33EC8: FLdI2 var_A2
  loc_A33ECB: FStI2 var_A4
  loc_A33ECE: FFree1Ad var_88
  loc_A33ED1: FLdI2 var_A4
  loc_A33ED4: LitI2_Byte 0
  loc_A33ED6: EqI2
  loc_A33ED7: BranchF loc_A33F0F
  loc_A33EDA: LitStr "Expediente ORIGINAL que comience con: "
  loc_A33EDD: FLdPr Me
  loc_A33EE0: VCallAd Control_ID_FiltroMsk
  loc_A33EE3: FStAdFunc var_88
  loc_A33EE6: FLdPr var_88
  loc_A33EE9: LateIdLdVar var_98 DispID_22 0
  loc_A33EF0: CStrVarTmp
  loc_A33EF1: FStStrNoPop var_9C
  loc_A33EF4: ConcatStr
  loc_A33EF5: FStStrNoPop var_A0
  loc_A33EF8: FLdPr Me
  loc_A33EFB: MemStStrCopy
  loc_A33EFF: FFreeStr var_9C = ""
  loc_A33F06: FFree1Ad var_88
  loc_A33F09: FFree1Var var_98 = ""
  loc_A33F0C: Branch loc_A34054
  loc_A33F0F: FLdI2 var_A4
  loc_A33F12: LitI2_Byte 1
  loc_A33F14: EqI2
  loc_A33F15: BranchF loc_A33F4D
  loc_A33F18: LitStr "Expediente DE PAGO que comience con: "
  loc_A33F1B: FLdPr Me
  loc_A33F1E: VCallAd Control_ID_FiltroMsk
  loc_A33F21: FStAdFunc var_88
  loc_A33F24: FLdPr var_88
  loc_A33F27: LateIdLdVar var_98 DispID_22 0
  loc_A33F2E: CStrVarTmp
  loc_A33F2F: FStStrNoPop var_9C
  loc_A33F32: ConcatStr
  loc_A33F33: FStStrNoPop var_A0
  loc_A33F36: FLdPr Me
  loc_A33F39: MemStStrCopy
  loc_A33F3D: FFreeStr var_9C = ""
  loc_A33F44: FFree1Ad var_88
  loc_A33F47: FFree1Var var_98 = ""
  loc_A33F4A: Branch loc_A34054
  loc_A33F4D: FLdI2 var_A4
  loc_A33F50: LitI2_Byte 2
  loc_A33F52: EqI2
  loc_A33F53: BranchF loc_A33F8B
  loc_A33F56: LitStr "DETALLE DE IMPUTACION que contiene: "
  loc_A33F59: FLdPr Me
  loc_A33F5C: VCallAd Control_ID_FiltroMsk
  loc_A33F5F: FStAdFunc var_88
  loc_A33F62: FLdPr var_88
  loc_A33F65: LateIdLdVar var_98 DispID_22 0
  loc_A33F6C: CStrVarTmp
  loc_A33F6D: FStStrNoPop var_9C
  loc_A33F70: ConcatStr
  loc_A33F71: FStStrNoPop var_A0
  loc_A33F74: FLdPr Me
  loc_A33F77: MemStStrCopy
  loc_A33F7B: FFreeStr var_9C = ""
  loc_A33F82: FFree1Ad var_88
  loc_A33F85: FFree1Var var_98 = ""
  loc_A33F88: Branch loc_A34054
  loc_A33F8B: FLdI2 var_A4
  loc_A33F8E: LitI2_Byte 3
  loc_A33F90: EqI2
  loc_A33F91: BranchF loc_A33FC9
  loc_A33F94: LitStr "CÓDIGO DE LA PARTIDA comience con: "
  loc_A33F97: FLdPr Me
  loc_A33F9A: VCallAd Control_ID_FiltroMsk
  loc_A33F9D: FStAdFunc var_88
  loc_A33FA0: FLdPr var_88
  loc_A33FA3: LateIdLdVar var_98 DispID_22 0
  loc_A33FAA: CStrVarTmp
  loc_A33FAB: FStStrNoPop var_9C
  loc_A33FAE: ConcatStr
  loc_A33FAF: FStStrNoPop var_A0
  loc_A33FB2: FLdPr Me
  loc_A33FB5: MemStStrCopy
  loc_A33FB9: FFreeStr var_9C = ""
  loc_A33FC0: FFree1Ad var_88
  loc_A33FC3: FFree1Var var_98 = ""
  loc_A33FC6: Branch loc_A34054
  loc_A33FC9: FLdI2 var_A4
  loc_A33FCC: LitI2_Byte 4
  loc_A33FCE: EqI2
  loc_A33FCF: BranchF loc_A34019
  loc_A33FD2: LitStr "CÓDIGO DEL "
  loc_A33FD5: LitStr "U. Ejec."
  loc_A33FD8: ConcatStr
  loc_A33FD9: FStStrNoPop var_9C
  loc_A33FDC: LitStr " comience con: "
  loc_A33FDF: ConcatStr
  loc_A33FE0: FStStrNoPop var_A0
  loc_A33FE3: FLdPr Me
  loc_A33FE6: VCallAd Control_ID_FiltroMsk
  loc_A33FE9: FStAdFunc var_88
  loc_A33FEC: FLdPr var_88
  loc_A33FEF: LateIdLdVar var_98 DispID_22 0
  loc_A33FF6: CStrVarTmp
  loc_A33FF7: FStStrNoPop var_A8
  loc_A33FFA: ConcatStr
  loc_A33FFB: FStStrNoPop var_AC
  loc_A33FFE: FLdPr Me
  loc_A34001: MemStStrCopy
  loc_A34005: FFreeStr var_9C = "": var_A0 = "": var_A8 = ""
  loc_A34010: FFree1Ad var_88
  loc_A34013: FFree1Var var_98 = ""
  loc_A34016: Branch loc_A34054
  loc_A34019: FLdI2 var_A4
  loc_A3401C: LitI2_Byte 5
  loc_A3401E: EqI2
  loc_A3401F: BranchF loc_A34054
  loc_A34022: LitStr "CÓDIGO DE LA FINALIDAD comience con: "
  loc_A34025: FLdPr Me
  loc_A34028: VCallAd Control_ID_FiltroMsk
  loc_A3402B: FStAdFunc var_88
  loc_A3402E: FLdPr var_88
  loc_A34031: LateIdLdVar var_98 DispID_22 0
  loc_A34038: CStrVarTmp
  loc_A34039: FStStrNoPop var_9C
  loc_A3403C: ConcatStr
  loc_A3403D: FStStrNoPop var_A0
  loc_A34040: FLdPr Me
  loc_A34043: MemStStrCopy
  loc_A34047: FFreeStr var_9C = ""
  loc_A3404E: FFree1Ad var_88
  loc_A34051: FFree1Var var_98 = ""
  loc_A34054: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '96D36C
  'Data Table: 500268
  loc_96D344: ILdI2 KeyAscii
  loc_96D347: LitI2_Byte &H27
  loc_96D349: EqI2
  loc_96D34A: BranchF loc_96D352
  loc_96D34D: LitI2_Byte 0
  loc_96D34F: IStI2 KeyAscii
  loc_96D352: ILdI2 KeyAscii
  loc_96D355: CI4UI1
  loc_96D356: LitI4 &HD
  loc_96D35B: EqI4
  loc_96D35C: BranchF loc_96D369
  loc_96D35F: Call Proc_135_79_ADA1D4()
  loc_96D364: Call cmdCancelar_Click()
  loc_96D369: ExitProcHresult
  loc_96D36A: CRec2Uni var_1000
End Sub

Private Function Proc_135_77_A8FC68() 'A8FC68
  'Data Table: 500268
  loc_A8F7FC: LitStr vbNullString
  loc_A8F7FF: FLdPr Me
  loc_A8F802: MemStStrCopy
  loc_A8F806: FLdPr Me
  loc_A8F809: VCallAd Control_ID_CodiPartMsk
  loc_A8F80C: FStAdFunc var_88
  loc_A8F80F: FLdPr var_88
  loc_A8F812: LateIdLdVar var_98 DispID_22 0
  loc_A8F819: CStrVarTmp
  loc_A8F81A: FStStrNoPop var_9C
  loc_A8F81D: LitStr vbNullString
  loc_A8F820: NeStr
  loc_A8F822: FFree1Str var_9C
  loc_A8F825: FFree1Ad var_88
  loc_A8F828: FFree1Var var_98 = ""
  loc_A8F82B: BranchF loc_A8F885
  loc_A8F82E: FLdPr Me
  loc_A8F831: VCallAd Control_ID_CodiPartMsk
  loc_A8F834: FStAdFunc var_88
  loc_A8F837: FLdPr var_88
  loc_A8F83A: LateIdLdVar var_98 DispID_22 0
  loc_A8F841: PopAd
  loc_A8F843: FLdRfVar var_9C
  loc_A8F846: FLdPr Me
  loc_A8F849:  = Me.Name
  loc_A8F84E: FLdPr Me
  loc_A8F851: MemLdRfVar from_stack_1.global_140
  loc_A8F854: NewIfNullRf
  loc_A8F858: ILdRf var_9C
  loc_A8F85B: LitI2_Byte 0
  loc_A8F85D: FLdRfVar var_98
  loc_A8F860: CStrVarTmp
  loc_A8F861: FStStrNoPop var_A0
  loc_A8F864: ImpAdLdI2 MemVar_C3D064
  loc_A8F867: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_A8F86C: FStStrNoPop var_A4
  loc_A8F86F: FLdPr Me
  loc_A8F872: MemStStrCopy
  loc_A8F876: FFreeStr var_A0 = "": var_9C = ""
  loc_A8F87F: FFree1Ad var_88
  loc_A8F882: FFree1Var var_98 = ""
  loc_A8F885: FLdPr Me
  loc_A8F888: MemLdStr global_64
  loc_A8F88B: LitStr vbNullString
  loc_A8F88E: NeStr
  loc_A8F890: BranchF loc_A8F8A4
  loc_A8F893: LitI4 0
  loc_A8F898: FLdPr Me
  loc_A8F89B: MemLdStr global_64
  loc_A8F89E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8F8A3: ExitProcHresult
  loc_A8F8A4: FLdPr Me
  loc_A8F8A7: VCallAd Control_ID_CodiOrgaMsk
  loc_A8F8AA: FStAdFunc var_88
  loc_A8F8AD: FLdPr var_88
  loc_A8F8B0: LateIdLdVar var_98 DispID_22 0
  loc_A8F8B7: CStrVarTmp
  loc_A8F8B8: FStStrNoPop var_9C
  loc_A8F8BB: LitStr vbNullString
  loc_A8F8BE: NeStr
  loc_A8F8C0: FFree1Str var_9C
  loc_A8F8C3: FFree1Ad var_88
  loc_A8F8C6: FFree1Var var_98 = ""
  loc_A8F8C9: BranchF loc_A8F921
  loc_A8F8CC: FLdPr Me
  loc_A8F8CF: VCallAd Control_ID_CodiOrgaMsk
  loc_A8F8D2: FStAdFunc var_88
  loc_A8F8D5: FLdPr var_88
  loc_A8F8D8: LateIdLdVar var_98 DispID_22 0
  loc_A8F8DF: PopAd
  loc_A8F8E1: FLdRfVar var_9C
  loc_A8F8E4: FLdPr Me
  loc_A8F8E7:  = Me.Name
  loc_A8F8EC: FLdPr Me
  loc_A8F8EF: MemLdRfVar from_stack_1.global_144
  loc_A8F8F2: NewIfNullRf
  loc_A8F8F6: ILdRf var_9C
  loc_A8F8F9: FLdRfVar var_98
  loc_A8F8FC: CStrVarTmp
  loc_A8F8FD: FStStrNoPop var_A0
  loc_A8F900: ImpAdLdI2 MemVar_C3D064
  loc_A8F903: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_A8F908: FStStrNoPop var_A4
  loc_A8F90B: FLdPr Me
  loc_A8F90E: MemStStrCopy
  loc_A8F912: FFreeStr var_A0 = "": var_9C = ""
  loc_A8F91B: FFree1Ad var_88
  loc_A8F91E: FFree1Var var_98 = ""
  loc_A8F921: FLdPr Me
  loc_A8F924: MemLdStr global_64
  loc_A8F927: LitStr vbNullString
  loc_A8F92A: NeStr
  loc_A8F92C: BranchF loc_A8F940
  loc_A8F92F: LitI4 0
  loc_A8F934: FLdPr Me
  loc_A8F937: MemLdStr global_64
  loc_A8F93A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8F93F: ExitProcHresult
  loc_A8F940: FLdPr Me
  loc_A8F943: VCallAd Control_ID_CodiFifuMsk
  loc_A8F946: FStAdFunc var_88
  loc_A8F949: FLdPr var_88
  loc_A8F94C: LateIdLdVar var_98 DispID_22 0
  loc_A8F953: CStrVarTmp
  loc_A8F954: FStStrNoPop var_9C
  loc_A8F957: LitStr vbNullString
  loc_A8F95A: NeStr
  loc_A8F95C: FFree1Str var_9C
  loc_A8F95F: FFree1Ad var_88
  loc_A8F962: FFree1Var var_98 = ""
  loc_A8F965: BranchF loc_A8F9AD
  loc_A8F968: FLdPr Me
  loc_A8F96B: VCallAd Control_ID_CodiFifuMsk
  loc_A8F96E: FStAdFunc var_88
  loc_A8F971: FLdPr var_88
  loc_A8F974: LateIdLdVar var_98 DispID_22 0
  loc_A8F97B: PopAd
  loc_A8F97D: FLdPr Me
  loc_A8F980: MemLdRfVar from_stack_1.global_148
  loc_A8F983: NewIfNullRf
  loc_A8F987: FLdRfVar var_98
  loc_A8F98A: CStrVarTmp
  loc_A8F98B: FStStrNoPop var_9C
  loc_A8F98E: ImpAdLdI2 MemVar_C3D064
  loc_A8F991: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_A8F996: FStStrNoPop var_A0
  loc_A8F999: FLdPr Me
  loc_A8F99C: MemStStrCopy
  loc_A8F9A0: FFreeStr var_9C = ""
  loc_A8F9A7: FFree1Ad var_88
  loc_A8F9AA: FFree1Var var_98 = ""
  loc_A8F9AD: FLdPr Me
  loc_A8F9B0: MemLdStr global_64
  loc_A8F9B3: LitStr vbNullString
  loc_A8F9B6: NeStr
  loc_A8F9B8: BranchF loc_A8F9CC
  loc_A8F9BB: LitI4 0
  loc_A8F9C0: FLdPr Me
  loc_A8F9C3: MemLdStr global_64
  loc_A8F9C6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8F9CB: ExitProcHresult
  loc_A8F9CC: FLdPr Me
  loc_A8F9CF: VCallAd Control_ID_FechImpuMsk
  loc_A8F9D2: FStAdFunc var_88
  loc_A8F9D5: FLdPr var_88
  loc_A8F9D8: LateIdLdVar var_98 DispID_15 0
  loc_A8F9DF: CStrVarTmp
  loc_A8F9E0: FStStrNoPop var_9C
  loc_A8F9E3: LitStr "  /  /    "
  loc_A8F9E6: NeStr
  loc_A8F9E8: FFree1Str var_9C
  loc_A8F9EB: FFree1Ad var_88
  loc_A8F9EE: FFree1Var var_98 = ""
  loc_A8F9F1: BranchF loc_A8FA68
  loc_A8F9F4: FLdPr Me
  loc_A8F9F7: VCallAd Control_ID_FechImpuMsk
  loc_A8F9FA: FStAdFunc var_88
  loc_A8F9FD: FLdPr var_88
  loc_A8FA00: LateIdLdVar var_98 DispID_15 0
  loc_A8FA07: PopAd
  loc_A8FA09: FLdPr Me
  loc_A8FA0C: VCallAd Control_ID_FechImpuMsk
  loc_A8FA0F: FStAdFunc var_A8
  loc_A8FA12: FLdPr var_A8
  loc_A8FA15: LateIdLdVar var_B8 DispID_11 -32767
  loc_A8FA1C: PopAd
  loc_A8FA1E: LitI2_Byte &HFF
  loc_A8FA20: PopTmpLdAd2 var_BE
  loc_A8FA23: LitNothing
  loc_A8FA25: CastAd
  loc_A8FA28: FStAdFunc var_BC
  loc_A8FA2B: FLdRfVar var_BC
  loc_A8FA2E: FLdRfVar var_B8
  loc_A8FA31: CStrVarTmp
  loc_A8FA32: FStStrNoPop var_A0
  loc_A8FA35: LitI2_Byte &HFF
  loc_A8FA37: LitI2_Byte &HFF
  loc_A8FA39: FLdRfVar var_98
  loc_A8FA3C: CStrVarTmp
  loc_A8FA3D: FStStrNoPop var_9C
  loc_A8FA40: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A8FA45: FStStrNoPop var_A4
  loc_A8FA48: FLdPr Me
  loc_A8FA4B: MemStStrCopy
  loc_A8FA4F: FFreeStr var_9C = "": var_A0 = ""
  loc_A8FA58: FFreeAd var_88 = "": var_A8 = ""
  loc_A8FA61: FFreeVar var_98 = ""
  loc_A8FA68: FLdPr Me
  loc_A8FA6B: MemLdStr global_64
  loc_A8FA6E: LitStr vbNullString
  loc_A8FA71: NeStr
  loc_A8FA73: BranchF loc_A8FA77
  loc_A8FA76: ExitProcHresult
  loc_A8FA77: FLdPr Me
  loc_A8FA7A: VCallAd Control_ID_FechImpuMsk
  loc_A8FA7D: FStAdFunc var_88
  loc_A8FA80: FLdPr var_88
  loc_A8FA83: LateIdLdVar var_98 DispID_15 0
  loc_A8FA8A: CStrVarTmp
  loc_A8FA8B: FStStrNoPop var_9C
  loc_A8FA8E: LitStr "  /  /    "
  loc_A8FA91: NeStr
  loc_A8FA93: FFree1Str var_9C
  loc_A8FA96: FFree1Ad var_88
  loc_A8FA99: FFree1Var var_98 = ""
  loc_A8FA9C: BranchF loc_A8FC65
  loc_A8FA9F: FLdRfVar var_C4
  loc_A8FAA2: FLdRfVar var_BE
  loc_A8FAA5: FLdPr Me
  loc_A8FAA8: VCallAd Control_ID_cboSeleccion
  loc_A8FAAB: FStAdFunc var_88
  loc_A8FAAE: FLdPr var_88
  loc_A8FAB1:  = Me.ListIndex
  loc_A8FAB6: FLdI2 var_BE
  loc_A8FAB9: FLdPr Me
  loc_A8FABC: VCallAd Control_ID_cboSeleccion
  loc_A8FABF: FStAdFunc var_A8
  loc_A8FAC2: FLdPr var_A8
  loc_A8FAC5:  = Me.ItemData
  loc_A8FACA: ILdRf var_C4
  loc_A8FACD: FStR4 var_C8
  loc_A8FAD0: FFreeAd var_88 = ""
  loc_A8FAD7: ILdRf var_C8
  loc_A8FADA: LitI4 1
  loc_A8FADF: EqI4
  loc_A8FAE0: BranchT loc_A8FB13
  loc_A8FAE3: ILdRf var_C8
  loc_A8FAE6: LitI4 2
  loc_A8FAEB: EqI4
  loc_A8FAEC: BranchT loc_A8FB13
  loc_A8FAEF: ILdRf var_C8
  loc_A8FAF2: LitI4 &H13
  loc_A8FAF7: EqI4
  loc_A8FAF8: BranchT loc_A8FB13
  loc_A8FAFB: ILdRf var_C8
  loc_A8FAFE: LitI4 3
  loc_A8FB03: EqI4
  loc_A8FB04: BranchT loc_A8FB13
  loc_A8FB07: ILdRf var_C8
  loc_A8FB0A: LitI4 4
  loc_A8FB0F: EqI4
  loc_A8FB10: BranchF loc_A8FC65
  loc_A8FB13: FLdPr Me
  loc_A8FB16: VCallAd Control_ID_FechImpuMsk
  loc_A8FB19: FStAdFunc var_88
  loc_A8FB1C: FLdPr var_88
  loc_A8FB1F: LateIdLdVar var_98 DispID_15 0
  loc_A8FB26: PopAd
  loc_A8FB28: FLdRfVar var_D0
  loc_A8FB2B: FLdRfVar var_98
  loc_A8FB2E: CStrVarTmp
  loc_A8FB2F: FStStrNoPop var_9C
  loc_A8FB32: FLdPr Me
  loc_A8FB35: MemLdRfVar from_stack_1.global_144
  loc_A8FB38: NewIfNullRf
  loc_A8FB3C: FLdPr Me
  loc_A8FB3F: MemLdRfVar from_stack_1.global_140
  loc_A8FB42: NewIfNullRf
  loc_A8FB46: FLdPr Me
  loc_A8FB49: MemLdRfVar from_stack_1.global_52
  loc_A8FB4C: NewIfNullPr clsimputacion
  loc_A8FB4F: from_stack_4v = clsimputacion.BuscaSaldAuto(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A8FB54: LitI4 1
  loc_A8FB59: LitI4 1
  loc_A8FB5E: LitVarStr var_F0, "currency"
  loc_A8FB63: FStVarCopyObj var_100
  loc_A8FB66: FLdRfVar var_100
  loc_A8FB69: FLdFPR8 var_D0
  loc_A8FB6C: CVarR8
  loc_A8FB70: ImpAdCallI2 Format$(, )
  loc_A8FB75: FStStrNoPop var_A0
  loc_A8FB78: FLdPr Me
  loc_A8FB7B: VCallAd Control_ID_SaldAutoLbl
  loc_A8FB7E: FStAdFunc var_A8
  loc_A8FB81: FLdPr var_A8
  loc_A8FB84: Me.Caption = from_stack_1
  loc_A8FB89: FFreeStr var_9C = ""
  loc_A8FB90: FFreeAd var_88 = ""
  loc_A8FB97: FFreeVar var_98 = "": var_B8 = ""
  loc_A8FBA0: FLdRfVar var_9C
  loc_A8FBA3: FLdPr Me
  loc_A8FBA6: VCallAd Control_ID_SaldAutoLbl
  loc_A8FBA9: FStAdFunc var_88
  loc_A8FBAC: FLdPr var_88
  loc_A8FBAF:  = Me.Caption
  loc_A8FBB4: LitVarI4
  loc_A8FBBC: LitVarI2 var_98, 255
  loc_A8FBC1: ILdRf var_9C
  loc_A8FBC4: CR8Str
  loc_A8FBC6: LitI2_Byte 0
  loc_A8FBC8: CR8I2
  loc_A8FBC9: LtR8
  loc_A8FBCA: CVarBoolI2 var_E0
  loc_A8FBCE: FLdRfVar var_100
  loc_A8FBD1: ImpAdCallFPR4  = IIf(, , )
  loc_A8FBD6: FLdRfVar var_100
  loc_A8FBD9: CI4Var
  loc_A8FBDB: FLdPr Me
  loc_A8FBDE: VCallAd Control_ID_SaldAutoLbl
  loc_A8FBE1: FStAdFunc var_A8
  loc_A8FBE4: FLdPr var_A8
  loc_A8FBE7: Me.ForeColor = from_stack_1
  loc_A8FBEC: FFree1Str var_9C
  loc_A8FBEF: FFreeAd var_88 = ""
  loc_A8FBF6: FFreeVar var_E0 = "": var_98 = "": var_B8 = ""
  loc_A8FC01: FLdRfVar var_9C
  loc_A8FC04: FLdPr Me
  loc_A8FC07: VCallAd Control_ID_SaldAutoLbl
  loc_A8FC0A: FStAdFunc var_88
  loc_A8FC0D: FLdPr var_88
  loc_A8FC10:  = Me.Caption
  loc_A8FC15: LitVarI4
  loc_A8FC1D: LitVarI2 var_98, 255
  loc_A8FC22: ILdRf var_9C
  loc_A8FC25: CR8Str
  loc_A8FC27: LitI2_Byte 0
  loc_A8FC29: CR8I2
  loc_A8FC2A: LtR8
  loc_A8FC2B: CVarBoolI2 var_E0
  loc_A8FC2F: FLdRfVar var_100
  loc_A8FC32: ImpAdCallFPR4  = IIf(, , )
  loc_A8FC37: FLdRfVar var_100
  loc_A8FC3A: CI4Var
  loc_A8FC3C: FLdPr Me
  loc_A8FC3F: VCallAd Control_ID_LabelSaldAuto
  loc_A8FC42: FStAdFunc var_A8
  loc_A8FC45: FLdPr var_A8
  loc_A8FC48: Me.ForeColor = from_stack_1
  loc_A8FC4D: FFree1Str var_9C
  loc_A8FC50: FFreeAd var_88 = ""
  loc_A8FC57: FFreeVar var_E0 = "": var_98 = "": var_B8 = ""
  loc_A8FC62: Branch loc_A8FC65
  loc_A8FC65: ExitProcHresult
  loc_A8FC66: MemLdPr global_-4093
End Function

Private Function Proc_135_78_AD6490() 'AD6490
  'Data Table: 500268
  loc_AD5E1C: FLdRfVar var_88
  loc_AD5E1F: FLdPr Me
  loc_AD5E22: MemLdRfVar from_stack_1.global_156
  loc_AD5E25: NewIfNullPr tblunidadgasto
  loc_AD5E28: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_AD5E2D: ILdRf var_88
  loc_AD5E30: LitStr vbNullString
  loc_AD5E33: NeStr
  loc_AD5E35: FFree1Str var_88
  loc_AD5E38: BranchF loc_AD5F51
  loc_AD5E3B: FLdPr Me
  loc_AD5E3E: VCallAd Control_ID_CodiOrgaMsk
  loc_AD5E41: FStAdFunc var_8C
  loc_AD5E44: FLdPr var_8C
  loc_AD5E47: LateIdLdVar var_9C DispID_22 0
  loc_AD5E4E: CStrVarTmp
  loc_AD5E4F: FStStrNoPop var_88
  loc_AD5E52: LitStr vbNullString
  loc_AD5E55: EqStr
  loc_AD5E57: FLdPr Me
  loc_AD5E5A: VCallAd Control_ID_CodiOrgaMsk
  loc_AD5E5D: FStAdFunc var_A0
  loc_AD5E60: FLdPr var_A0
  loc_AD5E63: LateIdLdVar var_B0 DispID_22 0
  loc_AD5E6A: CStrVarTmp
  loc_AD5E6B: FStStrNoPop var_B4
  loc_AD5E6E: LitStr vbNullString
  loc_AD5E71: NeStr
  loc_AD5E73: FLdPr Me
  loc_AD5E76: VCallAd Control_ID_CodiOrgaMsk
  loc_AD5E79: FStAdFunc var_B8
  loc_AD5E7C: FLdPr var_B8
  loc_AD5E7F: LateIdLdVar var_C8 DispID_22 0
  loc_AD5E86: CStrVarTmp
  loc_AD5E87: FStStrNoPop var_D0
  loc_AD5E8A: FLdRfVar var_CC
  loc_AD5E8D: FLdPr Me
  loc_AD5E90: MemLdRfVar from_stack_1.global_156
  loc_AD5E93: NewIfNullPr tblunidadgasto
  loc_AD5E96: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_AD5E9B: ILdRf var_CC
  loc_AD5E9E: NeStr
  loc_AD5EA0: AndI4
  loc_AD5EA1: OrI4
  loc_AD5EA2: FFreeStr var_88 = "": var_B4 = "": var_D0 = ""
  loc_AD5EAD: FFreeAd var_8C = "": var_A0 = ""
  loc_AD5EB6: FFreeVar var_9C = "": var_B0 = ""
  loc_AD5EBF: BranchF loc_AD5F1C
  loc_AD5EC2: FLdRfVar var_88
  loc_AD5EC5: FLdPr Me
  loc_AD5EC8: MemLdRfVar from_stack_1.global_156
  loc_AD5ECB: NewIfNullPr tblunidadgasto
  loc_AD5ECE: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_AD5ED3: FLdZeroAd var_88
  loc_AD5ED6: CVarStr var_9C
  loc_AD5ED9: PopAdLdVar
  loc_AD5EDA: FLdPr Me
  loc_AD5EDD: VCallAd Control_ID_CodiOrgaMsk
  loc_AD5EE0: FStAdFunc var_8C
  loc_AD5EE3: FLdPr var_8C
  loc_AD5EE6: LateIdSt
  loc_AD5EEB: FFree1Ad var_8C
  loc_AD5EEE: FFree1Var var_9C = ""
  loc_AD5EF1: FLdRfVar var_88
  loc_AD5EF4: FLdPr Me
  loc_AD5EF7: MemLdRfVar from_stack_1.global_156
  loc_AD5EFA: NewIfNullPr tblunidadgasto
  loc_AD5EFD: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_AD5F02: ILdRf var_88
  loc_AD5F05: FLdPr Me
  loc_AD5F08: VCallAd Control_ID_DetaOrgaLbl
  loc_AD5F0B: FStAdFunc var_8C
  loc_AD5F0E: FLdPr var_8C
  loc_AD5F11: Me.Caption = from_stack_1
  loc_AD5F16: FFree1Str var_88
  loc_AD5F19: FFree1Ad var_8C
  loc_AD5F1C: FLdRfVar var_88
  loc_AD5F1F: FLdPr Me
  loc_AD5F22: MemLdRfVar from_stack_1.global_156
  loc_AD5F25: NewIfNullPr tblunidadgasto
  loc_AD5F28: from_stack_1v = tblunidadgasto.PermOrgaGet()
  loc_AD5F2D: ILdRf var_88
  loc_AD5F30: CBoolStr
  loc_AD5F32: CVarBoolI2 var_E0
  loc_AD5F36: PopAdLdVar
  loc_AD5F37: FLdPr Me
  loc_AD5F3A: VCallAd Control_ID_CodiOrgaMsk
  loc_AD5F3D: FStAdFunc var_8C
  loc_AD5F40: FLdPr var_8C
  loc_AD5F43: LateIdSt
  loc_AD5F48: FFree1Str var_88
  loc_AD5F4B: FFree1Ad var_8C
  loc_AD5F4E: FFree1Var var_E0 = ""
  loc_AD5F51: FLdRfVar var_88
  loc_AD5F54: FLdPr Me
  loc_AD5F57: MemLdRfVar from_stack_1.global_156
  loc_AD5F5A: NewIfNullPr tblunidadgasto
  loc_AD5F5D: from_stack_1v = tblunidadgasto.CodiInsuGet()
  loc_AD5F62: ILdRf var_88
  loc_AD5F65: LitStr "0"
  loc_AD5F68: NeStr
  loc_AD5F6A: FFree1Str var_88
  loc_AD5F6D: BranchF loc_AD6086
  loc_AD5F70: FLdPr Me
  loc_AD5F73: VCallAd Control_ID_CodiInsuMsk
  loc_AD5F76: FStAdFunc var_8C
  loc_AD5F79: FLdPr var_8C
  loc_AD5F7C: LateIdLdVar var_9C DispID_22 0
  loc_AD5F83: CStrVarTmp
  loc_AD5F84: FStStrNoPop var_88
  loc_AD5F87: LitStr vbNullString
  loc_AD5F8A: EqStr
  loc_AD5F8C: FLdPr Me
  loc_AD5F8F: VCallAd Control_ID_CodiInsuMsk
  loc_AD5F92: FStAdFunc var_A0
  loc_AD5F95: FLdPr var_A0
  loc_AD5F98: LateIdLdVar var_B0 DispID_22 0
  loc_AD5F9F: CStrVarTmp
  loc_AD5FA0: FStStrNoPop var_B4
  loc_AD5FA3: LitStr vbNullString
  loc_AD5FA6: NeStr
  loc_AD5FA8: FLdPr Me
  loc_AD5FAB: VCallAd Control_ID_CodiInsuMsk
  loc_AD5FAE: FStAdFunc var_B8
  loc_AD5FB1: FLdPr var_B8
  loc_AD5FB4: LateIdLdVar var_C8 DispID_22 0
  loc_AD5FBB: CStrVarTmp
  loc_AD5FBC: FStStrNoPop var_D0
  loc_AD5FBF: FLdRfVar var_CC
  loc_AD5FC2: FLdPr Me
  loc_AD5FC5: MemLdRfVar from_stack_1.global_156
  loc_AD5FC8: NewIfNullPr tblunidadgasto
  loc_AD5FCB: from_stack_1v = tblunidadgasto.CodiInsuGet()
  loc_AD5FD0: ILdRf var_CC
  loc_AD5FD3: NeStr
  loc_AD5FD5: AndI4
  loc_AD5FD6: OrI4
  loc_AD5FD7: FFreeStr var_88 = "": var_B4 = "": var_D0 = ""
  loc_AD5FE2: FFreeAd var_8C = "": var_A0 = ""
  loc_AD5FEB: FFreeVar var_9C = "": var_B0 = ""
  loc_AD5FF4: BranchF loc_AD6051
  loc_AD5FF7: FLdRfVar var_88
  loc_AD5FFA: FLdPr Me
  loc_AD5FFD: MemLdRfVar from_stack_1.global_156
  loc_AD6000: NewIfNullPr tblunidadgasto
  loc_AD6003: from_stack_1v = tblunidadgasto.CodiInsuGet()
  loc_AD6008: FLdZeroAd var_88
  loc_AD600B: CVarStr var_9C
  loc_AD600E: PopAdLdVar
  loc_AD600F: FLdPr Me
  loc_AD6012: VCallAd Control_ID_CodiInsuMsk
  loc_AD6015: FStAdFunc var_8C
  loc_AD6018: FLdPr var_8C
  loc_AD601B: LateIdSt
  loc_AD6020: FFree1Ad var_8C
  loc_AD6023: FFree1Var var_9C = ""
  loc_AD6026: FLdRfVar var_88
  loc_AD6029: FLdPr Me
  loc_AD602C: MemLdRfVar from_stack_1.global_156
  loc_AD602F: NewIfNullPr tblunidadgasto
  loc_AD6032: from_stack_1v = tblunidadgasto.DetaInsuGet()
  loc_AD6037: ILdRf var_88
  loc_AD603A: FLdPr Me
  loc_AD603D: VCallAd Control_ID_DetaInsuLbl
  loc_AD6040: FStAdFunc var_8C
  loc_AD6043: FLdPr var_8C
  loc_AD6046: Me.Caption = from_stack_1
  loc_AD604B: FFree1Str var_88
  loc_AD604E: FFree1Ad var_8C
  loc_AD6051: FLdRfVar var_88
  loc_AD6054: FLdPr Me
  loc_AD6057: MemLdRfVar from_stack_1.global_156
  loc_AD605A: NewIfNullPr tblunidadgasto
  loc_AD605D: from_stack_1v = tblunidadgasto.PermInsuGet()
  loc_AD6062: ILdRf var_88
  loc_AD6065: CBoolStr
  loc_AD6067: CVarBoolI2 var_E0
  loc_AD606B: PopAdLdVar
  loc_AD606C: FLdPr Me
  loc_AD606F: VCallAd Control_ID_CodiInsuMsk
  loc_AD6072: FStAdFunc var_8C
  loc_AD6075: FLdPr var_8C
  loc_AD6078: LateIdSt
  loc_AD607D: FFree1Str var_88
  loc_AD6080: FFree1Ad var_8C
  loc_AD6083: FFree1Var var_E0 = ""
  loc_AD6086: FLdRfVar var_88
  loc_AD6089: FLdPr Me
  loc_AD608C: MemLdRfVar from_stack_1.global_156
  loc_AD608F: NewIfNullPr tblunidadgasto
  loc_AD6092: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_AD6097: ILdRf var_88
  loc_AD609A: LitStr vbNullString
  loc_AD609D: NeStr
  loc_AD609F: FFree1Str var_88
  loc_AD60A2: BranchF loc_AD61BB
  loc_AD60A5: FLdPr Me
  loc_AD60A8: VCallAd Control_ID_CodiPartMsk
  loc_AD60AB: FStAdFunc var_8C
  loc_AD60AE: FLdPr var_8C
  loc_AD60B1: LateIdLdVar var_9C DispID_22 0
  loc_AD60B8: CStrVarTmp
  loc_AD60B9: FStStrNoPop var_88
  loc_AD60BC: LitStr vbNullString
  loc_AD60BF: EqStr
  loc_AD60C1: FLdPr Me
  loc_AD60C4: VCallAd Control_ID_CodiPartMsk
  loc_AD60C7: FStAdFunc var_A0
  loc_AD60CA: FLdPr var_A0
  loc_AD60CD: LateIdLdVar var_B0 DispID_22 0
  loc_AD60D4: CStrVarTmp
  loc_AD60D5: FStStrNoPop var_B4
  loc_AD60D8: LitStr vbNullString
  loc_AD60DB: NeStr
  loc_AD60DD: FLdPr Me
  loc_AD60E0: VCallAd Control_ID_CodiPartMsk
  loc_AD60E3: FStAdFunc var_B8
  loc_AD60E6: FLdPr var_B8
  loc_AD60E9: LateIdLdVar var_C8 DispID_22 0
  loc_AD60F0: CStrVarTmp
  loc_AD60F1: FStStrNoPop var_D0
  loc_AD60F4: FLdRfVar var_CC
  loc_AD60F7: FLdPr Me
  loc_AD60FA: MemLdRfVar from_stack_1.global_156
  loc_AD60FD: NewIfNullPr tblunidadgasto
  loc_AD6100: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_AD6105: ILdRf var_CC
  loc_AD6108: NeStr
  loc_AD610A: AndI4
  loc_AD610B: OrI4
  loc_AD610C: FFreeStr var_88 = "": var_B4 = "": var_D0 = ""
  loc_AD6117: FFreeAd var_8C = "": var_A0 = ""
  loc_AD6120: FFreeVar var_9C = "": var_B0 = ""
  loc_AD6129: BranchF loc_AD6186
  loc_AD612C: FLdRfVar var_88
  loc_AD612F: FLdPr Me
  loc_AD6132: MemLdRfVar from_stack_1.global_156
  loc_AD6135: NewIfNullPr tblunidadgasto
  loc_AD6138: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_AD613D: FLdZeroAd var_88
  loc_AD6140: CVarStr var_9C
  loc_AD6143: PopAdLdVar
  loc_AD6144: FLdPr Me
  loc_AD6147: VCallAd Control_ID_CodiPartMsk
  loc_AD614A: FStAdFunc var_8C
  loc_AD614D: FLdPr var_8C
  loc_AD6150: LateIdSt
  loc_AD6155: FFree1Ad var_8C
  loc_AD6158: FFree1Var var_9C = ""
  loc_AD615B: FLdRfVar var_88
  loc_AD615E: FLdPr Me
  loc_AD6161: MemLdRfVar from_stack_1.global_156
  loc_AD6164: NewIfNullPr tblunidadgasto
  loc_AD6167: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_AD616C: ILdRf var_88
  loc_AD616F: FLdPr Me
  loc_AD6172: VCallAd Control_ID_DetaPartLbl
  loc_AD6175: FStAdFunc var_8C
  loc_AD6178: FLdPr var_8C
  loc_AD617B: Me.Caption = from_stack_1
  loc_AD6180: FFree1Str var_88
  loc_AD6183: FFree1Ad var_8C
  loc_AD6186: FLdRfVar var_88
  loc_AD6189: FLdPr Me
  loc_AD618C: MemLdRfVar from_stack_1.global_156
  loc_AD618F: NewIfNullPr tblunidadgasto
  loc_AD6192: from_stack_1v = tblunidadgasto.PermPartGet()
  loc_AD6197: ILdRf var_88
  loc_AD619A: CBoolStr
  loc_AD619C: CVarBoolI2 var_E0
  loc_AD61A0: PopAdLdVar
  loc_AD61A1: FLdPr Me
  loc_AD61A4: VCallAd Control_ID_CodiPartMsk
  loc_AD61A7: FStAdFunc var_8C
  loc_AD61AA: FLdPr var_8C
  loc_AD61AD: LateIdSt
  loc_AD61B2: FFree1Str var_88
  loc_AD61B5: FFree1Ad var_8C
  loc_AD61B8: FFree1Var var_E0 = ""
  loc_AD61BB: FLdRfVar var_88
  loc_AD61BE: FLdPr Me
  loc_AD61C1: MemLdRfVar from_stack_1.global_156
  loc_AD61C4: NewIfNullPr tblunidadgasto
  loc_AD61C7: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_AD61CC: ILdRf var_88
  loc_AD61CF: LitStr vbNullString
  loc_AD61D2: NeStr
  loc_AD61D4: FFree1Str var_88
  loc_AD61D7: BranchF loc_AD62F0
  loc_AD61DA: FLdPr Me
  loc_AD61DD: VCallAd Control_ID_CodiFifuMsk
  loc_AD61E0: FStAdFunc var_8C
  loc_AD61E3: FLdPr var_8C
  loc_AD61E6: LateIdLdVar var_9C DispID_22 0
  loc_AD61ED: CStrVarTmp
  loc_AD61EE: FStStrNoPop var_88
  loc_AD61F1: LitStr vbNullString
  loc_AD61F4: EqStr
  loc_AD61F6: FLdPr Me
  loc_AD61F9: VCallAd Control_ID_CodiFifuMsk
  loc_AD61FC: FStAdFunc var_A0
  loc_AD61FF: FLdPr var_A0
  loc_AD6202: LateIdLdVar var_B0 DispID_22 0
  loc_AD6209: CStrVarTmp
  loc_AD620A: FStStrNoPop var_B4
  loc_AD620D: LitStr vbNullString
  loc_AD6210: NeStr
  loc_AD6212: FLdPr Me
  loc_AD6215: VCallAd Control_ID_CodiFifuMsk
  loc_AD6218: FStAdFunc var_B8
  loc_AD621B: FLdPr var_B8
  loc_AD621E: LateIdLdVar var_C8 DispID_22 0
  loc_AD6225: CStrVarTmp
  loc_AD6226: FStStrNoPop var_D0
  loc_AD6229: FLdRfVar var_CC
  loc_AD622C: FLdPr Me
  loc_AD622F: MemLdRfVar from_stack_1.global_156
  loc_AD6232: NewIfNullPr tblunidadgasto
  loc_AD6235: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_AD623A: ILdRf var_CC
  loc_AD623D: NeStr
  loc_AD623F: AndI4
  loc_AD6240: OrI4
  loc_AD6241: FFreeStr var_88 = "": var_B4 = "": var_D0 = ""
  loc_AD624C: FFreeAd var_8C = "": var_A0 = ""
  loc_AD6255: FFreeVar var_9C = "": var_B0 = ""
  loc_AD625E: BranchF loc_AD62BB
  loc_AD6261: FLdRfVar var_88
  loc_AD6264: FLdPr Me
  loc_AD6267: MemLdRfVar from_stack_1.global_156
  loc_AD626A: NewIfNullPr tblunidadgasto
  loc_AD626D: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_AD6272: FLdZeroAd var_88
  loc_AD6275: CVarStr var_9C
  loc_AD6278: PopAdLdVar
  loc_AD6279: FLdPr Me
  loc_AD627C: VCallAd Control_ID_CodiFifuMsk
  loc_AD627F: FStAdFunc var_8C
  loc_AD6282: FLdPr var_8C
  loc_AD6285: LateIdSt
  loc_AD628A: FFree1Ad var_8C
  loc_AD628D: FFree1Var var_9C = ""
  loc_AD6290: FLdRfVar var_88
  loc_AD6293: FLdPr Me
  loc_AD6296: MemLdRfVar from_stack_1.global_156
  loc_AD6299: NewIfNullPr tblunidadgasto
  loc_AD629C: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_AD62A1: ILdRf var_88
  loc_AD62A4: FLdPr Me
  loc_AD62A7: VCallAd Control_ID_DetaFifuLbl
  loc_AD62AA: FStAdFunc var_8C
  loc_AD62AD: FLdPr var_8C
  loc_AD62B0: Me.Caption = from_stack_1
  loc_AD62B5: FFree1Str var_88
  loc_AD62B8: FFree1Ad var_8C
  loc_AD62BB: FLdRfVar var_88
  loc_AD62BE: FLdPr Me
  loc_AD62C1: MemLdRfVar from_stack_1.global_156
  loc_AD62C4: NewIfNullPr tblunidadgasto
  loc_AD62C7: from_stack_1v = tblunidadgasto.PermFifuGet()
  loc_AD62CC: ILdRf var_88
  loc_AD62CF: CBoolStr
  loc_AD62D1: CVarBoolI2 var_E0
  loc_AD62D5: PopAdLdVar
  loc_AD62D6: FLdPr Me
  loc_AD62D9: VCallAd Control_ID_CodiFifuMsk
  loc_AD62DC: FStAdFunc var_8C
  loc_AD62DF: FLdPr var_8C
  loc_AD62E2: LateIdSt
  loc_AD62E7: FFree1Str var_88
  loc_AD62EA: FFree1Ad var_8C
  loc_AD62ED: FFree1Var var_E0 = ""
  loc_AD62F0: FLdRfVar var_88
  loc_AD62F3: FLdPr Me
  loc_AD62F6: MemLdRfVar from_stack_1.global_156
  loc_AD62F9: NewIfNullPr tblunidadgasto
  loc_AD62FC: from_stack_1v = tblunidadgasto.CucuProvGet()
  loc_AD6301: ILdRf var_88
  loc_AD6304: LitStr "0"
  loc_AD6307: NeStr
  loc_AD6309: FFree1Str var_88
  loc_AD630C: BranchF loc_AD648E
  loc_AD630F: FLdRfVar var_88
  loc_AD6312: FLdPr Me
  loc_AD6315: VCallAd Control_ID_CucuPersTxt
  loc_AD6318: FStAdFunc var_8C
  loc_AD631B: FLdPr var_8C
  loc_AD631E:  = Me.Text
  loc_AD6323: ILdRf var_88
  loc_AD6326: LitStr vbNullString
  loc_AD6329: EqStr
  loc_AD632B: FLdRfVar var_B4
  loc_AD632E: FLdPr Me
  loc_AD6331: VCallAd Control_ID_CucuPersTxt
  loc_AD6334: FStAdFunc var_A0
  loc_AD6337: FLdPr var_A0
  loc_AD633A:  = Me.Text
  loc_AD633F: ILdRf var_B4
  loc_AD6342: LitStr vbNullString
  loc_AD6345: NeStr
  loc_AD6347: FLdRfVar var_D0
  loc_AD634A: FLdPr Me
  loc_AD634D: VCallAd Control_ID_CucuPersTxt
  loc_AD6350: FStAdFunc var_B8
  loc_AD6353: FLdPr var_B8
  loc_AD6356:  = Me.Text
  loc_AD635B: ILdRf var_D0
  loc_AD635E: FLdRfVar var_CC
  loc_AD6361: FLdPr Me
  loc_AD6364: MemLdRfVar from_stack_1.global_156
  loc_AD6367: NewIfNullPr tblunidadgasto
  loc_AD636A: from_stack_1v = tblunidadgasto.CucuProvGet()
  loc_AD636F: ILdRf var_CC
  loc_AD6372: NeStr
  loc_AD6374: AndI4
  loc_AD6375: OrI4
  loc_AD6376: FFreeStr var_88 = "": var_B4 = "": var_D0 = ""
  loc_AD6381: FFreeAd var_8C = "": var_A0 = ""
  loc_AD638A: BranchF loc_AD63E3
  loc_AD638D: FLdRfVar var_88
  loc_AD6390: FLdPr Me
  loc_AD6393: MemLdRfVar from_stack_1.global_156
  loc_AD6396: NewIfNullPr tblunidadgasto
  loc_AD6399: from_stack_1v = tblunidadgasto.CucuProvGet()
  loc_AD639E: ILdRf var_88
  loc_AD63A1: FLdPr Me
  loc_AD63A4: VCallAd Control_ID_CucuPersTxt
  loc_AD63A7: FStAdFunc var_8C
  loc_AD63AA: FLdPr var_8C
  loc_AD63AD: Me.Text = from_stack_1
  loc_AD63B2: FFree1Str var_88
  loc_AD63B5: FFree1Ad var_8C
  loc_AD63B8: FLdRfVar var_88
  loc_AD63BB: FLdPr Me
  loc_AD63BE: MemLdRfVar from_stack_1.global_156
  loc_AD63C1: NewIfNullPr tblunidadgasto
  loc_AD63C4: from_stack_1v = tblunidadgasto.DetaProvGet()
  loc_AD63C9: ILdRf var_88
  loc_AD63CC: FLdPr Me
  loc_AD63CF: VCallAd Control_ID_DetaProvLbl
  loc_AD63D2: FStAdFunc var_8C
  loc_AD63D5: FLdPr var_8C
  loc_AD63D8: Me.Caption = from_stack_1
  loc_AD63DD: FFree1Str var_88
  loc_AD63E0: FFree1Ad var_8C
  loc_AD63E3: FLdRfVar var_88
  loc_AD63E6: FLdPr Me
  loc_AD63E9: MemLdRfVar from_stack_1.global_156
  loc_AD63EC: NewIfNullPr tblunidadgasto
  loc_AD63EF: from_stack_1v = tblunidadgasto.PermProvGet()
  loc_AD63F4: ILdRf var_88
  loc_AD63F7: CBoolStr
  loc_AD63F9: FLdPr Me
  loc_AD63FC: VCallAd Control_ID_CucuPersTxt
  loc_AD63FF: FStAdFunc var_8C
  loc_AD6402: FLdPr var_8C
  loc_AD6405: Me.Enabled = from_stack_1b
  loc_AD640A: FFree1Str var_88
  loc_AD640D: FFree1Ad var_8C
  loc_AD6410: FLdRfVar var_F8
  loc_AD6413: FLdRfVar var_F2
  loc_AD6416: FLdPr Me
  loc_AD6419: VCallAd Control_ID_cboSeleccion
  loc_AD641C: FStAdFunc var_8C
  loc_AD641F: FLdPr var_8C
  loc_AD6422:  = Me.ListIndex
  loc_AD6427: FLdI2 var_F2
  loc_AD642A: FLdPr Me
  loc_AD642D: VCallAd Control_ID_cboSeleccion
  loc_AD6430: FStAdFunc var_A0
  loc_AD6433: FLdPr var_A0
  loc_AD6436:  = Me.ItemData
  loc_AD643B: ILdRf var_F8
  loc_AD643E: FStR4 var_FC
  loc_AD6441: FFreeAd var_8C = ""
  loc_AD6448: ILdRf var_FC
  loc_AD644B: LitI4 1
  loc_AD6450: EqI4
  loc_AD6451: BranchT loc_AD6478
  loc_AD6454: ILdRf var_FC
  loc_AD6457: LitI4 4
  loc_AD645C: EqI4
  loc_AD645D: BranchT loc_AD6478
  loc_AD6460: ILdRf var_FC
  loc_AD6463: LitI4 8
  loc_AD6468: EqI4
  loc_AD6469: BranchT loc_AD6478
  loc_AD646C: ILdRf var_FC
  loc_AD646F: LitI4 &HB
  loc_AD6474: EqI4
  loc_AD6475: BranchF loc_AD648E
  loc_AD6478: LitI2_Byte 0
  loc_AD647A: FLdPr Me
  loc_AD647D: VCallAd Control_ID_CucuPersTxt
  loc_AD6480: FStAdFunc var_8C
  loc_AD6483: FLdPr var_8C
  loc_AD6486: Me.Enabled = from_stack_1b
  loc_AD648B: FFree1Ad var_8C
  loc_AD648E: ExitProcHresult
End Function

Private Function Proc_135_79_ADA1D4() 'ADA1D4
  'Data Table: 500268
  loc_AD9B94: LitI4 &HB
  loc_AD9B99: CI2I4
  loc_AD9B9A: FLdPr Me
  loc_AD9B9D: Me.MousePointer = from_stack_1
  loc_AD9BA2: FLdPr Me
  loc_AD9BA5: VCallAd Control_ID_FiltroMsk
  loc_AD9BA8: FStAdFunc var_88
  loc_AD9BAB: FLdPr var_88
  loc_AD9BAE: LateIdLdVar var_98 DispID_22 0
  loc_AD9BB5: CStrVarTmp
  loc_AD9BB6: CVarStr var_A8
  loc_AD9BB9: FLdRfVar var_B8
  loc_AD9BBC: ImpAdCallFPR4  = Trim()
  loc_AD9BC1: LitVarI2 var_118, 0
  loc_AD9BC6: ImpAdLdRf MemVar_C3D064
  loc_AD9BC9: CVarRef
  loc_AD9BCE: FLdRfVar var_B8
  loc_AD9BD1: LitVarStr var_C8, vbNullString
  loc_AD9BD6: HardType
  loc_AD9BD7: NeVar var_D8
  loc_AD9BDB: FStVar var_E8
  loc_AD9BDF: FLdRfVar var_E8
  loc_AD9BE2: FLdRfVar var_128
  loc_AD9BE5: ImpAdCallFPR4  = IIf(, , )
  loc_AD9BEA: FLdPr Me
  loc_AD9BED: VCallAd Control_ID_FiltroMsk
  loc_AD9BF0: FStAdFunc var_12C
  loc_AD9BF3: FLdPr var_12C
  loc_AD9BF6: LateIdLdVar var_13C DispID_22 0
  loc_AD9BFD: CStrVarTmp
  loc_AD9BFE: CVarStr var_14C
  loc_AD9C01: FLdRfVar var_15C
  loc_AD9C04: ImpAdCallFPR4  = Trim()
  loc_AD9C09: FLdPr Me
  loc_AD9C0C: VCallAd Control_ID_FiltroCbo
  loc_AD9C0F: FStAdFunc var_164
  loc_AD9C12: FLdRfVar var_164
  loc_AD9C15: FLdRfVar var_15C
  loc_AD9C18: CStrVarVal var_160
  loc_AD9C1C: FLdRfVar var_128
  loc_AD9C1F: CI2Var
  loc_AD9C20: FLdPr Me
  loc_AD9C23: MemLdRfVar from_stack_1.global_52
  loc_AD9C26: NewIfNullPr clsimputacion
  loc_AD9C29: Call clsimputacion.FormLoadTprevTdefiTdeve(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AD9C2E: FFree1Str var_160
  loc_AD9C31: FFreeAd var_88 = "": var_12C = ""
  loc_AD9C3A: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_E8 = "": var_118 = "": var_13C = "": var_14C = "": var_128 = ""
  loc_AD9C4F: LitI2_Byte 0
  loc_AD9C51: CR8I2
  loc_AD9C52: FLdPr Me
  loc_AD9C55: MemStFPR8 global_164
  loc_AD9C58: LitI2_Byte 0
  loc_AD9C5A: CR8I2
  loc_AD9C5B: FLdPr Me
  loc_AD9C5E: MemStFPR8 global_172
  loc_AD9C61: LitI2_Byte 0
  loc_AD9C63: CR8I2
  loc_AD9C64: FLdPr Me
  loc_AD9C67: MemStFPR8 global_180
  loc_AD9C6A: FLdRfVar var_168
  loc_AD9C6D: FLdPr Me
  loc_AD9C70: MemLdRfVar from_stack_1.global_52
  loc_AD9C73: NewIfNullPr clsimputacion
  loc_AD9C76: from_stack_1 = clsimputacion.RecordCount
  loc_AD9C7B: ILdRf var_168
  loc_AD9C7E: LitI4 0
  loc_AD9C83: GtI4
  loc_AD9C84: BranchF loc_ADA1C2
  loc_AD9C87: FLdPr Me
  loc_AD9C8A: MemLdRfVar from_stack_1.global_52
  loc_AD9C8D: NewIfNullPr clsimputacion
  loc_AD9C90: Call clsimputacion.MoveFirst()
  loc_AD9C95: FLdRfVar var_16A
  loc_AD9C98: FLdPr Me
  loc_AD9C9B: MemLdRfVar from_stack_1.global_52
  loc_AD9C9E: NewIfNullPr clsimputacion
  loc_AD9CA1: from_stack_1 = clsimputacion.EOF
  loc_AD9CA6: FLdI2 var_16A
  loc_AD9CA9: NotI4
  loc_AD9CAA: BranchF loc_AD9F01
  loc_AD9CAD: FLdRfVar var_98
  loc_AD9CB0: FLdRfVar var_164
  loc_AD9CB3: LitVarStr var_C8, "PrevImpu"
  loc_AD9CB8: PopAdLdVar
  loc_AD9CB9: FLdRfVar var_12C
  loc_AD9CBC: FLdRfVar var_88
  loc_AD9CBF: FLdPr Me
  loc_AD9CC2: MemLdRfVar from_stack_1.global_52
  loc_AD9CC5: NewIfNullPr clsimputacion
  loc_AD9CC8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AD9CCD: FLdPr var_88
  loc_AD9CD0:  = Me.Fields
  loc_AD9CD5: FLdPr var_12C
  loc_AD9CD8: from_stack_2 = Me.Item(from_stack_1)
  loc_AD9CDD: FLdPr var_164
  loc_AD9CE0:  = Me.Value
  loc_AD9CE5: FLdRfVar var_178
  loc_AD9CE8: LitVarStr var_108, "PrevImpu"
  loc_AD9CED: PopAdLdVar
  loc_AD9CEE: FLdRfVar var_174
  loc_AD9CF1: FLdRfVar var_170
  loc_AD9CF4: FLdPr Me
  loc_AD9CF7: MemLdRfVar from_stack_1.global_52
  loc_AD9CFA: NewIfNullPr clsimputacion
  loc_AD9CFD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AD9D02: FLdPr var_170
  loc_AD9D05:  = Me.Fields
  loc_AD9D0A: FLdPr var_174
  loc_AD9D0D: from_stack_2 = Me.Item(from_stack_1)
  loc_AD9D12: FLdPr Me
  loc_AD9D15: MemLdFPR8 global_164
  loc_AD9D18: CVarR8
  loc_AD9D1C: LitVarI2 var_E8, 0
  loc_AD9D21: FLdZeroAd var_178
  loc_AD9D24: CVarAd
  loc_AD9D28: FLdRfVar var_98
  loc_AD9D2B: LitVarStr var_F8, "0"
  loc_AD9D30: HardType
  loc_AD9D31: NeVar var_A8
  loc_AD9D35: FStVar var_B8
  loc_AD9D39: FLdRfVar var_B8
  loc_AD9D3C: FLdRfVar var_118
  loc_AD9D3F: ImpAdCallFPR4  = IIf(, , )
  loc_AD9D44: FLdRfVar var_118
  loc_AD9D47: AddVar var_128
  loc_AD9D4B: CR4Var
  loc_AD9D4C: FLdPr Me
  loc_AD9D4F: MemStFPR8 global_164
  loc_AD9D52: FFreeAd var_88 = "": var_12C = "": var_164 = "": var_170 = ""
  loc_AD9D5F: FFreeVar var_98 = "": var_B8 = "": var_D8 = "": var_E8 = "": var_118 = ""
  loc_AD9D6E: FLdRfVar var_98
  loc_AD9D71: FLdRfVar var_164
  loc_AD9D74: LitVarStr var_C8, "DefiImpu"
  loc_AD9D79: PopAdLdVar
  loc_AD9D7A: FLdRfVar var_12C
  loc_AD9D7D: FLdRfVar var_88
  loc_AD9D80: FLdPr Me
  loc_AD9D83: MemLdRfVar from_stack_1.global_52
  loc_AD9D86: NewIfNullPr clsimputacion
  loc_AD9D89: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AD9D8E: FLdPr var_88
  loc_AD9D91:  = Me.Fields
  loc_AD9D96: FLdPr var_12C
  loc_AD9D99: from_stack_2 = Me.Item(from_stack_1)
  loc_AD9D9E: FLdPr var_164
  loc_AD9DA1:  = Me.Value
  loc_AD9DA6: FLdRfVar var_178
  loc_AD9DA9: LitVarStr var_108, "DefiImpu"
  loc_AD9DAE: PopAdLdVar
  loc_AD9DAF: FLdRfVar var_174
  loc_AD9DB2: FLdRfVar var_170
  loc_AD9DB5: FLdPr Me
  loc_AD9DB8: MemLdRfVar from_stack_1.global_52
  loc_AD9DBB: NewIfNullPr clsimputacion
  loc_AD9DBE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AD9DC3: FLdPr var_170
  loc_AD9DC6:  = Me.Fields
  loc_AD9DCB: FLdPr var_174
  loc_AD9DCE: from_stack_2 = Me.Item(from_stack_1)
  loc_AD9DD3: FLdPr Me
  loc_AD9DD6: MemLdFPR8 global_172
  loc_AD9DD9: CVarR8
  loc_AD9DDD: LitVarI2 var_E8, 0
  loc_AD9DE2: FLdZeroAd var_178
  loc_AD9DE5: CVarAd
  loc_AD9DE9: FLdRfVar var_98
  loc_AD9DEC: LitVarStr var_F8, "0"
  loc_AD9DF1: HardType
  loc_AD9DF2: NeVar var_A8
  loc_AD9DF6: FStVar var_B8
  loc_AD9DFA: FLdRfVar var_B8
  loc_AD9DFD: FLdRfVar var_118
  loc_AD9E00: ImpAdCallFPR4  = IIf(, , )
  loc_AD9E05: FLdRfVar var_118
  loc_AD9E08: AddVar var_128
  loc_AD9E0C: CR4Var
  loc_AD9E0D: FLdPr Me
  loc_AD9E10: MemStFPR8 global_172
  loc_AD9E13: FFreeAd var_88 = "": var_12C = "": var_164 = "": var_170 = ""
  loc_AD9E20: FFreeVar var_98 = "": var_B8 = "": var_D8 = "": var_E8 = "": var_118 = ""
  loc_AD9E2F: FLdRfVar var_98
  loc_AD9E32: FLdRfVar var_164
  loc_AD9E35: LitVarStr var_C8, "DeveImpu"
  loc_AD9E3A: PopAdLdVar
  loc_AD9E3B: FLdRfVar var_12C
  loc_AD9E3E: FLdRfVar var_88
  loc_AD9E41: FLdPr Me
  loc_AD9E44: MemLdRfVar from_stack_1.global_52
  loc_AD9E47: NewIfNullPr clsimputacion
  loc_AD9E4A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AD9E4F: FLdPr var_88
  loc_AD9E52:  = Me.Fields
  loc_AD9E57: FLdPr var_12C
  loc_AD9E5A: from_stack_2 = Me.Item(from_stack_1)
  loc_AD9E5F: FLdPr var_164
  loc_AD9E62:  = Me.Value
  loc_AD9E67: FLdRfVar var_178
  loc_AD9E6A: LitVarStr var_108, "DeveImpu"
  loc_AD9E6F: PopAdLdVar
  loc_AD9E70: FLdRfVar var_174
  loc_AD9E73: FLdRfVar var_170
  loc_AD9E76: FLdPr Me
  loc_AD9E79: MemLdRfVar from_stack_1.global_52
  loc_AD9E7C: NewIfNullPr clsimputacion
  loc_AD9E7F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AD9E84: FLdPr var_170
  loc_AD9E87:  = Me.Fields
  loc_AD9E8C: FLdPr var_174
  loc_AD9E8F: from_stack_2 = Me.Item(from_stack_1)
  loc_AD9E94: FLdPr Me
  loc_AD9E97: MemLdFPR8 global_180
  loc_AD9E9A: CVarR8
  loc_AD9E9E: LitVarI2 var_E8, 0
  loc_AD9EA3: FLdZeroAd var_178
  loc_AD9EA6: CVarAd
  loc_AD9EAA: FLdRfVar var_98
  loc_AD9EAD: LitVarStr var_F8, "0"
  loc_AD9EB2: HardType
  loc_AD9EB3: NeVar var_A8
  loc_AD9EB7: FStVar var_B8
  loc_AD9EBB: FLdRfVar var_B8
  loc_AD9EBE: FLdRfVar var_118
  loc_AD9EC1: ImpAdCallFPR4  = IIf(, , )
  loc_AD9EC6: FLdRfVar var_118
  loc_AD9EC9: AddVar var_128
  loc_AD9ECD: CR4Var
  loc_AD9ECE: FLdPr Me
  loc_AD9ED1: MemStFPR8 global_180
  loc_AD9ED4: FFreeAd var_88 = "": var_12C = "": var_164 = "": var_170 = ""
  loc_AD9EE1: FFreeVar var_98 = "": var_B8 = "": var_D8 = "": var_E8 = "": var_118 = ""
  loc_AD9EF0: FLdPr Me
  loc_AD9EF3: MemLdRfVar from_stack_1.global_52
  loc_AD9EF6: NewIfNullPr clsimputacion
  loc_AD9EF9: Call clsimputacion.MoveSiguiente()
  loc_AD9EFE: Branch loc_AD9C95
  loc_AD9F01: FLdPr Me
  loc_AD9F04: MemLdRfVar from_stack_1.global_52
  loc_AD9F07: NewIfNullPr clsimputacion
  loc_AD9F0A: Call clsimputacion.MoveFirst()
  loc_AD9F0F: LitStr "Tot Prev.: "
  loc_AD9F12: LitI4 1
  loc_AD9F17: LitI4 1
  loc_AD9F1C: LitVarStr var_F8, "currency"
  loc_AD9F21: FStVarCopyObj var_98
  loc_AD9F24: FLdRfVar var_98
  loc_AD9F27: FLdPr Me
  loc_AD9F2A: MemLdRfVar from_stack_1.global_164
  loc_AD9F2D: CVarRef
  loc_AD9F32: ImpAdCallI2 Format$(, )
  loc_AD9F37: FStStrNoPop var_160
  loc_AD9F3A: ConcatStr
  loc_AD9F3B: FStStrNoPop var_19C
  loc_AD9F3E: LitStr " - Tot Def.: "
  loc_AD9F41: ConcatStr
  loc_AD9F42: FStStrNoPop var_1A0
  loc_AD9F45: LitI4 1
  loc_AD9F4A: LitI4 1
  loc_AD9F4F: LitVarStr var_188, "currency"
  loc_AD9F54: FStVarCopyObj var_A8
  loc_AD9F57: FLdRfVar var_A8
  loc_AD9F5A: FLdPr Me
  loc_AD9F5D: MemLdRfVar from_stack_1.global_172
  loc_AD9F60: CVarRef
  loc_AD9F65: ImpAdCallI2 Format$(, )
  loc_AD9F6A: FStStrNoPop var_1A4
  loc_AD9F6D: ConcatStr
  loc_AD9F6E: FStStrNoPop var_1A8
  loc_AD9F71: LitStr " - Tot Dev.: "
  loc_AD9F74: ConcatStr
  loc_AD9F75: FStStrNoPop var_1BC
  loc_AD9F78: LitI4 1
  loc_AD9F7D: LitI4 1
  loc_AD9F82: LitVarStr var_1B8, "currency"
  loc_AD9F87: FStVarCopyObj var_B8
  loc_AD9F8A: FLdRfVar var_B8
  loc_AD9F8D: FLdPr Me
  loc_AD9F90: MemLdRfVar from_stack_1.global_180
  loc_AD9F93: CVarRef
  loc_AD9F98: ImpAdCallI2 Format$(, )
  loc_AD9F9D: FStStrNoPop var_1C0
  loc_AD9FA0: ConcatStr
  loc_AD9FA1: CVarStr var_D8
  loc_AD9FA4: PopAdLdVar
  loc_AD9FA5: FLdPr Me
  loc_AD9FA8: VCallAd Control_ID_dgdABMS
  loc_AD9FAB: FStAdFunc var_88
  loc_AD9FAE: FLdPr var_88
  loc_AD9FB1: LateIdSt
  loc_AD9FB6: FFreeStr var_160 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1BC = ""
  loc_AD9FC7: FFree1Ad var_88
  loc_AD9FCA: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_AD9FD5: FLdRfVar var_98
  loc_AD9FD8: FLdRfVar var_164
  loc_AD9FDB: LitVarStr var_C8, "PeriInfo"
  loc_AD9FE0: PopAdLdVar
  loc_AD9FE1: FLdRfVar var_12C
  loc_AD9FE4: FLdRfVar var_88
  loc_AD9FE7: FLdPr Me
  loc_AD9FEA: MemLdRfVar from_stack_1.global_52
  loc_AD9FED: NewIfNullPr clsimputacion
  loc_AD9FF0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AD9FF5: FLdPr var_88
  loc_AD9FF8:  = Me.Fields
  loc_AD9FFD: FLdPr var_12C
  loc_ADA000: from_stack_2 = Me.Item(from_stack_1)
  loc_ADA005: FLdPr var_164
  loc_ADA008:  = Me.Value
  loc_ADA00D: FLdRfVar var_98
  loc_ADA010: FnCStrVar
  loc_ADA012: FStStrNoPop var_160
  loc_ADA015: LitStr vbNullString
  loc_ADA018: NeStr
  loc_ADA01A: FLdRfVar var_A8
  loc_ADA01D: FLdRfVar var_178
  loc_ADA020: LitVarStr var_F8, "CodiPart"
  loc_ADA025: PopAdLdVar
  loc_ADA026: FLdRfVar var_174
  loc_ADA029: FLdRfVar var_170
  loc_ADA02C: FLdPr Me
  loc_ADA02F: MemLdRfVar from_stack_1.global_52
  loc_ADA032: NewIfNullPr clsimputacion
  loc_ADA035: from_stack_1v = clsimputacion.RsFrmGet()
  loc_ADA03A: FLdPr var_170
  loc_ADA03D:  = Me.Fields
  loc_ADA042: FLdPr var_174
  loc_ADA045: from_stack_2 = Me.Item(from_stack_1)
  loc_ADA04A: FLdPr var_178
  loc_ADA04D:  = Me.Value
  loc_ADA052: FLdRfVar var_A8
  loc_ADA055: FnCStrVar
  loc_ADA057: FStStrNoPop var_19C
  loc_ADA05A: LitStr vbNullString
  loc_ADA05D: NeStr
  loc_ADA05F: AndI4
  loc_ADA060: FLdRfVar var_B8
  loc_ADA063: FLdRfVar var_1DC
  loc_ADA066: LitVarStr var_108, "CodiOrga"
  loc_ADA06B: PopAdLdVar
  loc_ADA06C: FLdRfVar var_1D8
  loc_ADA06F: FLdRfVar var_1D4
  loc_ADA072: FLdPr Me
  loc_ADA075: MemLdRfVar from_stack_1.global_52
  loc_ADA078: NewIfNullPr clsimputacion
  loc_ADA07B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_ADA080: FLdPr var_1D4
  loc_ADA083:  = Me.Fields
  loc_ADA088: FLdPr var_1D8
  loc_ADA08B: from_stack_2 = Me.Item(from_stack_1)
  loc_ADA090: FLdPr var_1DC
  loc_ADA093:  = Me.Value
  loc_ADA098: FLdRfVar var_B8
  loc_ADA09B: FnCStrVar
  loc_ADA09D: FStStrNoPop var_1A0
  loc_ADA0A0: LitStr vbNullString
  loc_ADA0A3: NeStr
  loc_ADA0A5: AndI4
  loc_ADA0A6: FLdRfVar var_D8
  loc_ADA0A9: FLdRfVar var_1E8
  loc_ADA0AC: LitVarStr var_188, "ExorImpu"
  loc_ADA0B1: PopAdLdVar
  loc_ADA0B2: FLdRfVar var_1E4
  loc_ADA0B5: FLdRfVar var_1E0
  loc_ADA0B8: FLdPr Me
  loc_ADA0BB: MemLdRfVar from_stack_1.global_52
  loc_ADA0BE: NewIfNullPr clsimputacion
  loc_ADA0C1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_ADA0C6: FLdPr var_1E0
  loc_ADA0C9:  = Me.Fields
  loc_ADA0CE: FLdPr var_1E4
  loc_ADA0D1: from_stack_2 = Me.Item(from_stack_1)
  loc_ADA0D6: FLdPr var_1E8
  loc_ADA0D9:  = Me.Value
  loc_ADA0DE: FLdRfVar var_D8
  loc_ADA0E1: FnCStrVar
  loc_ADA0E3: FStStrNoPop var_1A4
  loc_ADA0E6: LitStr vbNullString
  loc_ADA0E9: NeStr
  loc_ADA0EB: AndI4
  loc_ADA0EC: FFreeStr var_160 = "": var_19C = "": var_1A0 = ""
  loc_ADA0F7: FFreeAd var_88 = "": var_12C = "": var_164 = "": var_170 = "": var_174 = "": var_178 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = ""
  loc_ADA112: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_ADA11D: BranchF loc_ADA1C2
  loc_ADA120: FLdRfVar var_98
  loc_ADA123: FLdRfVar var_164
  loc_ADA126: LitVarStr var_C8, "PeriInfo"
  loc_ADA12B: PopAdLdVar
  loc_ADA12C: FLdRfVar var_12C
  loc_ADA12F: FLdRfVar var_88
  loc_ADA132: FLdPr Me
  loc_ADA135: MemLdRfVar from_stack_1.global_52
  loc_ADA138: NewIfNullPr clsimputacion
  loc_ADA13B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_ADA140: FLdPr var_88
  loc_ADA143:  = Me.Fields
  loc_ADA148: FLdPr var_12C
  loc_ADA14B: from_stack_2 = Me.Item(from_stack_1)
  loc_ADA150: FLdPr var_164
  loc_ADA153:  = Me.Value
  loc_ADA158: FLdRfVar var_A8
  loc_ADA15B: FLdRfVar var_178
  loc_ADA15E: LitVarStr var_F8, "IdImpu"
  loc_ADA163: PopAdLdVar
  loc_ADA164: FLdRfVar var_174
  loc_ADA167: FLdRfVar var_170
  loc_ADA16A: FLdPr Me
  loc_ADA16D: MemLdRfVar from_stack_1.global_52
  loc_ADA170: NewIfNullPr clsimputacion
  loc_ADA173: from_stack_1v = clsimputacion.RsFrmGet()
  loc_ADA178: FLdPr var_170
  loc_ADA17B:  = Me.Fields
  loc_ADA180: FLdPr var_174
  loc_ADA183: from_stack_2 = Me.Item(from_stack_1)
  loc_ADA188: FLdPr var_178
  loc_ADA18B:  = Me.Value
  loc_ADA190: LitI2_Byte 0
  loc_ADA192: PopTmpLdAd2 var_16A
  loc_ADA195: FLdRfVar var_A8
  loc_ADA198: CI4Var
  loc_ADA19A: FLdRfVar var_98
  loc_ADA19D: CI2Var
  loc_ADA19E: FLdPr Me
  loc_ADA1A1: MemLdRfVar from_stack_1.global_52
  loc_ADA1A4: NewIfNullPr clsimputacion
  loc_ADA1A7: Call clsimputacion.Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_ADA1AC: FFreeAd var_88 = "": var_12C = "": var_170 = "": var_174 = "": var_164 = ""
  loc_ADA1BB: FFreeVar var_98 = ""
  loc_ADA1C2: LitI4 0
  loc_ADA1C7: CI2I4
  loc_ADA1C8: FLdPr Me
  loc_ADA1CB: Me.MousePointer = from_stack_1
  loc_ADA1D0: ExitProcHresult
End Function
