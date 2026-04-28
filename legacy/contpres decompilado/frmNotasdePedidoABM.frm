VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C0000C04E4C0A}#1.1#0"; "C:\Windows\SysWow64\TABCTL32.OCX"
Begin VB.Form frmNotasdePedidoABM
  Caption = "Nota de Pedido"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmNotasdePedidoABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 14385
  ClientHeight = 9435
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame FramePart
    Left = 120
    Top = 10200
    Width = 14415
    Height = 735
    TabIndex = 55
    Begin VB.Label Label7
      Caption = "Partida:"
      Left = 120
      Top = 240
      Width = 690
      Height = 240
      TabIndex = 57
      AutoSize = -1  'True
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
    Begin VB.Label DetaPartLbl
      Left = 840
      Top = 240
      Width = 13320
      Height = 360
      TabIndex = 56
      BorderStyle = 1 'Fixed Single
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
  End
  Begin VB.CommandButton CmdAgregarItem
    Caption = "+It."
    Left = 15000
    Top = 6360
    Width = 495
    Height = 375
    TabIndex = 41
  End
  Begin VB.CheckBox ChkCodiOrga
    Left = 2280
    Top = 7680
    Width = 1575
    Height = 255
    TabIndex = 35
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
  Begin VB.CheckBox ChkCodiPart
    Caption = "Partida"
    Left = 5760
    Top = 7680
    Width = 975
    Height = 255
    TabIndex = 37
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
  Begin VB.CheckBox ChkCodiInsu
    Caption = "Insumo"
    Left = 960
    Top = 7680
    Width = 975
    Height = 255
    TabIndex = 34
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
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 1
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 3
      OleObjectBlob = "frmNotasdePedidoABM.frx":08CA
    End
  End
  Begin VB.CheckBox ChkCodiFifu
    Caption = "Finalidad"
    Left = 4200
    Top = 7680
    Width = 1215
    Height = 255
    TabIndex = 36
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 14655
    Height = 1695
    TabIndex = 4
    OleObjectBlob = "frmNotasdePedidoABM.frx":0952
  End
  Begin MSFlexGridLib.MSFlexGrid ItemNotaFlex
    Left = 120
    Top = 8040
    Width = 15135
    Height = 2055
    TabIndex = 40
    OleObjectBlob = "frmNotasdePedidoABM.frx":0FA2
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmNotasdePedidoABM.frx":108E
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14385
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmNotasdePedidoABM.frx":8C0C
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 50
      TabStop = 0   'False
      Picture = "frmNotasdePedidoABM.frx":9168
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin TabDlg.SSTab SSTab
    Left = 120
    Top = 3480
    Width = 14655
    Height = 4095
    TabIndex = 5
    OleObjectBlob = "frmNotasdePedidoABM.frx":9A32
    Begin VB.TextBox DetaNope2Txt
      Left = 5520
      Top = 3600
      Width = 8895
      Height = 360
      TabIndex = 32
      MaxLength = 100
      DataField = "DetaNope2"
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
    Begin MSMask.MaskEdBox PlieNopeMsk
      Left = 10560
      Top = 1680
      Width = 1455
      Height = 375
      TabIndex = 18
      Verb = 14416
    End
    Begin MSDataGridLib.DataGrid dgdCotizacion
      Left = -74760
      Top = 720
      Width = 14175
      Height = 2655
      TabIndex = 59
      OleObjectBlob = "frmNotasdePedidoABM.frx":A51A
    End
    Begin MSMask.MaskEdBox FecoHoraMsk
      Left = 8160
      Top = 2160
      Width = 855
      Height = 375
      TabIndex = 23
      OleObjectBlob = "frmNotasdePedidoABM.frx":AEFC
      DataField = "FecoHora"
    End
    Begin VB.TextBox DienNopeTxt
      Left = 6720
      Top = 3120
      Width = 7695
      Height = 360
      TabIndex = 30
      MaxLength = 100
      DataField = "DienNope"
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
    Begin VB.CheckBox PubliNopeChk
      Caption = "¿ visible en el Portal del Proveedor ?"
      Left = 10200
      Top = 2160
      Width = 4095
      Height = 375
      TabIndex = 24
      Alignment = 1 'Right Justify
      DataField = "PubliNope"
    End
    Begin VB.TextBox DetaNopeTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 960
      Width = 11055
      Height = 615
      TabIndex = 13
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 250
      DataField = "DetaNope"
    End
    Begin VB.TextBox HoleNopeTxt
      ForeColor = &HFF0000&
      Left = -66480
      Top = 1320
      Width = 1335
      Height = 420
      TabIndex = 49
      MaxLength = 6
      DataField = "HoleNope"
    End
    Begin VB.TextBox HoliNopeTxt
      ForeColor = &HFF0000&
      Left = -66480
      Top = 840
      Width = 1335
      Height = 420
      TabIndex = 45
      MaxLength = 6
      DataField = "HoliNope"
    End
    Begin VB.TextBox BajaMotiTxt
      ForeColor = &HFF0000&
      Left = -68160
      Top = 840
      Width = 6735
      Height = 420
      TabIndex = 54
      MaxLength = 50
      DataField = "BajaMoti"
    End
    Begin MSMask.MaskEdBox ExorImpuMsk
      Left = 1800
      Top = 480
      Width = 1815
      Height = 360
      TabIndex = 7
      OleObjectBlob = "frmNotasdePedidoABM.frx":AF66
      DataField = "ExpeImpu"
    End
    Begin MSMask.MaskEdBox CodiTicoMsk
      Left = 2160
      Top = 1680
      Width = 495
      Height = 360
      TabIndex = 15
      OleObjectBlob = "frmNotasdePedidoABM.frx":AFC6
      DataField = "CodiTico"
    End
    Begin MSMask.MaskEdBox FechNopeMsk
      Left = 2160
      Top = 2160
      Width = 1335
      Height = 360
      TabIndex = 20
      OleObjectBlob = "frmNotasdePedidoABM.frx":B052
      DataField = "FechNope"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 7200
      Top = 480
      Width = 1335
      Height = 360
      TabIndex = 10
      OleObjectBlob = "frmNotasdePedidoABM.frx":B102
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox CoinNopeMsk
      Left = 4080
      Top = 480
      Width = 1815
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmNotasdePedidoABM.frx":B18A
      DataField = "CoinNope"
    End
    Begin MSMask.MaskEdBox FeliNopeMsk
      Left = -71400
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 43
      OleObjectBlob = "frmNotasdePedidoABM.frx":B1FA
      DataField = "FeliNope"
    End
    Begin MSMask.MaskEdBox FeleNopeMsk
      Left = -71400
      Top = 1320
      Width = 1335
      Height = 360
      TabIndex = 47
      OleObjectBlob = "frmNotasdePedidoABM.frx":B2AA
      DataField = "FeleNope"
    End
    Begin MSMask.MaskEdBox FeanNopeMsk
      Left = -72600
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 52
      OleObjectBlob = "frmNotasdePedidoABM.frx":B35A
      DataField = "FeanNope"
    End
    Begin MSMask.MaskEdBox IdRubroMsk
      Left = 2160
      Top = 2640
      Width = 1335
      Height = 360
      TabIndex = 26
      OleObjectBlob = "frmNotasdePedidoABM.frx":B40A
      DataField = "IdRubro"
    End
    Begin MSMask.MaskEdBox FecoNopeMsk
      Left = 6720
      Top = 2160
      Width = 1335
      Height = 360
      TabIndex = 22
      OleObjectBlob = "frmNotasdePedidoABM.frx":B492
      DataField = "FecoNope"
    End
    Begin MSMask.MaskEdBox IdUbfiMsk
      Left = 2160
      Top = 3120
      Width = 1335
      Height = 360
      TabIndex = 29
      OleObjectBlob = "frmNotasdePedidoABM.frx":B542
      DataField = "IdUbfi"
    End
    Begin VB.Label LabelDetaNope2
      Caption = "Cotiza según especificaciones técnicas adjuntas::"
      Left = 120
      Top = 3600
      Width = 5250
      Height = 300
      TabIndex = 31
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Valor del Pliego:"
      Left = 8640
      Top = 1680
      Width = 1815
      Height = 375
      TabIndex = 17
    End
    Begin VB.Label DetaUbfiLbl
      Left = 3600
      Top = 3120
      Width = 3015
      Height = 360
      TabIndex = 58
      BorderStyle = 1 'Fixed Single
      DataField = "DetaUbfi"
    End
    Begin VB.Label LabelUbfi
      Caption = "Lugar Entrega:"
      Left = 525
      Top = 3120
      Width = 1590
      Height = 300
      TabIndex = 28
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
    Begin VB.Label lblFechaAceptaCotizacion
      Caption = "Fecha acepta cotización:"
      Left = 3840
      Top = 2160
      Width = 2655
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
    Begin VB.Label DetaRubroLbl
      Left = 3600
      Top = 2640
      Width = 9375
      Height = 360
      TabIndex = 27
      BorderStyle = 1 'Fixed Single
      DataField = "DetaRubro"
    End
    Begin VB.Label Label15
      Caption = "Rubro:"
      Left = 1395
      Top = 2640
      Width = 720
      Height = 300
      TabIndex = 25
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
      Caption = ":"
      Left = 7080
      Top = 480
      Width = 60
      Height = 300
      TabIndex = 9
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
    Begin VB.Label DetaOrgaLbl
      Left = 8640
      Top = 480
      Width = 5895
      Height = 360
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
      DataField = "DetaOrga"
    End
    Begin VB.Label DetaTicoLbl
      Left = 2760
      Top = 1680
      Width = 5295
      Height = 360
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      DataField = "DetaTico"
    End
    Begin VB.Label Label6
      Caption = "Fecha:"
      Left = 1380
      Top = 2160
      Width = 735
      Height = 300
      TabIndex = 19
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
    Begin VB.Label Label13
      Caption = "Expediente:"
      Left = 480
      Top = 480
      Width = 1260
      Height = 300
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label11
      Caption = "Tipo de Compra:"
      Left = 360
      Top = 1680
      Width = 1740
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
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 990
      Top = 960
      Width = 810
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "Hora Apertura Sobre Nº 2:"
      Left = -69480
      Top = 1320
      Width = 2790
      Height = 300
      TabIndex = 48
      AutoSize = -1  'True
    End
    Begin VB.Label Label9
      Caption = "Fecha de Apertura Sobre Nº 2:"
      Left = -74880
      Top = 1320
      Width = 3270
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
    Begin VB.Label Label8
      Caption = "Hora Apertura Sobre Nº 1:"
      Left = -69480
      Top = 840
      Width = 2790
      Height = 300
      TabIndex = 44
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Fecha de Apertura Sobre Nº 1:"
      Left = -74880
      Top = 840
      Width = 3270
      Height = 300
      TabIndex = 42
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
    Begin VB.Label Label5
      Caption = "Motivo de Anulación:"
      Left = -70440
      Top = 840
      Width = 2190
      Height = 300
      TabIndex = 53
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Fecha de Anulación:"
      Left = -74880
      Top = 840
      Width = 2175
      Height = 300
      TabIndex = 51
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
  Begin VB.Label LblRepetir
    Caption = "Repetir:"
    Left = 120
    Top = 7680
    Width = 705
    Height = 240
    TabIndex = 33
    AutoSize = -1  'True
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
  Begin VB.Label TotaNopeLbl
    Left = 12720
    Top = 7650
    Width = 2415
    Height = 375
    TabIndex = 39
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
    DataFormat = 80
  End
  Begin VB.Label lblTotalNPnro
    Caption = "Total NP: "
    Left = 10080
    Top = 7680
    Width = 2340
    Height = 300
    TabIndex = 38
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "frmNotasdePedidoABM"


Private Sub FeleNopeMsk_UnknownEvent_0 '94B360
  'Data Table: 4FD0E0
  loc_94B34C: FLdPr Me
  loc_94B34F: VCallAd Control_ID_FeleNopeMsk
  loc_94B352: CVarAd
  loc_94B356: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B35B: FFree1Var var_94 = ""
  loc_94B35E: ExitProcHresult
End Sub

Private Sub FeleNopeMsk_UnknownEvent_8 '9EC614
  'Data Table: 4FD0E0
  loc_9EC4F8: FLdRfVar var_8A
  loc_9EC4FB: FLdPr Me
  loc_9EC4FE: VCallAd Control_ID_cmdCancelar
  loc_9EC501: FStAdFunc var_88
  loc_9EC504: FLdPr var_88
  loc_9EC507:  = Me.Value
  loc_9EC50C: FLdI2 var_8A
  loc_9EC50F: NotI4
  loc_9EC510: FLdPr Me
  loc_9EC513: VCallAd Control_ID_FeleNopeMsk
  loc_9EC516: FStAdFunc var_90
  loc_9EC519: FLdPr var_90
  loc_9EC51C: LateIdLdVar var_A0 DispID_13 -32767
  loc_9EC523: CBoolVar
  loc_9EC525: AndI4
  loc_9EC526: FLdPr Me
  loc_9EC529: VCallAd Control_ID_FeleNopeMsk
  loc_9EC52C: FStAdFunc var_A4
  loc_9EC52F: FLdPr var_A4
  loc_9EC532: LateIdLdVar var_B4 DispID_22 0
  loc_9EC539: CStrVarTmp
  loc_9EC53A: FStStrNoPop var_B8
  loc_9EC53D: LitStr vbNullString
  loc_9EC540: NeStr
  loc_9EC542: AndI4
  loc_9EC543: FFree1Str var_B8
  loc_9EC546: FFreeAd var_88 = "": var_90 = ""
  loc_9EC54F: FFreeVar var_A0 = ""
  loc_9EC556: BranchF loc_9EC612
  loc_9EC559: FLdPr Me
  loc_9EC55C: VCallAd Control_ID_FeleNopeMsk
  loc_9EC55F: FStAdFunc var_88
  loc_9EC562: FLdPr var_88
  loc_9EC565: LateIdLdVar var_A0 DispID_15 0
  loc_9EC56C: PopAd
  loc_9EC56E: FLdPr Me
  loc_9EC571: VCallAd Control_ID_FechNopeMsk
  loc_9EC574: FStAdFunc var_90
  loc_9EC577: FLdPr var_90
  loc_9EC57A: LateIdLdVar var_B4 DispID_15 0
  loc_9EC581: PopAd
  loc_9EC583: FLdPr Me
  loc_9EC586: VCallAd Control_ID_FeleNopeMsk
  loc_9EC589: FStAdFunc var_C4
  loc_9EC58C: LitI2_Byte 0
  loc_9EC58E: PopTmpLdAd2 var_8A
  loc_9EC591: FLdZeroAd var_C4
  loc_9EC594: FStAdFunc var_A4
  loc_9EC597: FLdRfVar var_A4
  loc_9EC59A: FLdRfVar var_B4
  loc_9EC59D: CStrVarTmp
  loc_9EC59E: FStStrNoPop var_BC
  loc_9EC5A1: LitI2_Byte 0
  loc_9EC5A3: LitI2_Byte 0
  loc_9EC5A5: FLdRfVar var_A0
  loc_9EC5A8: CStrVarTmp
  loc_9EC5A9: FStStrNoPop var_B8
  loc_9EC5AC: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9EC5B1: FStStrNoPop var_C0
  loc_9EC5B4: FLdPr Me
  loc_9EC5B7: MemStStrCopy
  loc_9EC5BB: FFreeStr var_B8 = "": var_BC = ""
  loc_9EC5C4: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9EC5CF: FFreeVar var_A0 = ""
  loc_9EC5D6: FLdPr Me
  loc_9EC5D9: VCallAd Control_ID_FeleNopeMsk
  loc_9EC5DC: FStAdFunc var_C4
  loc_9EC5DF: LitNothing
  loc_9EC5E1: CastAd
  loc_9EC5E4: FStAdFunc var_A4
  loc_9EC5E7: FLdRfVar var_A4
  loc_9EC5EA: FLdZeroAd var_C4
  loc_9EC5ED: FStAdFuncNoPop
  loc_9EC5F0: CastAd
  loc_9EC5F3: FStAdFunc var_90
  loc_9EC5F6: FLdRfVar var_90
  loc_9EC5F9: FLdPr Me
  loc_9EC5FC: MemLdRfVar from_stack_1.global_76
  loc_9EC5FF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9EC604: IStI2 KeyAscii
  loc_9EC607: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9EC612: ExitProcHresult
End Sub

Private Sub FeleNopeMsk_KeyPress(KeyAscii As Integer) '989980
  'Data Table: 4FD0E0
  loc_98993C: ILdI2 KeyAscii
  loc_98993F: CI4UI1
  loc_989940: LitI4 &H20
  loc_989945: EqI4
  loc_989946: BranchF loc_98997C
  loc_989949: LitVar_Missing var_A4
  loc_98994C: PopAdLdVar
  loc_98994D: LitVarI4
  loc_989955: PopAdLdVar
  loc_989956: ImpAdLdRf MemVar_C3D9A8
  loc_989959: NewIfNullPr frmCalendario
  loc_98995C: frmCalendario.Show from_stack_1, from_stack_2
  loc_989961: ImpAdLdRf MemVar_C3D038
  loc_989964: CDargRef
  loc_989968: FLdPr Me
  loc_98996B: VCallAd Control_ID_FeleNopeMsk
  loc_98996E: FStAdFunc var_A8
  loc_989971: FLdPr var_A8
  loc_989974: LateIdSt
  loc_989979: FFree1Ad var_A8
  loc_98997C: ExitProcHresult
End Sub

Private Sub FeliNopeMsk_UnknownEvent_0 '94D058
  'Data Table: 4FD0E0
  loc_94D044: FLdPr Me
  loc_94D047: VCallAd Control_ID_FeliNopeMsk
  loc_94D04A: CVarAd
  loc_94D04E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D053: FFree1Var var_94 = ""
  loc_94D056: ExitProcHresult
End Sub

Private Sub FeliNopeMsk_UnknownEvent_8 '9EC4A4
  'Data Table: 4FD0E0
  loc_9EC388: FLdRfVar var_8A
  loc_9EC38B: FLdPr Me
  loc_9EC38E: VCallAd Control_ID_cmdCancelar
  loc_9EC391: FStAdFunc var_88
  loc_9EC394: FLdPr var_88
  loc_9EC397:  = Me.Value
  loc_9EC39C: FLdI2 var_8A
  loc_9EC39F: NotI4
  loc_9EC3A0: FLdPr Me
  loc_9EC3A3: VCallAd Control_ID_FeliNopeMsk
  loc_9EC3A6: FStAdFunc var_90
  loc_9EC3A9: FLdPr var_90
  loc_9EC3AC: LateIdLdVar var_A0 DispID_13 -32767
  loc_9EC3B3: CBoolVar
  loc_9EC3B5: AndI4
  loc_9EC3B6: FLdPr Me
  loc_9EC3B9: VCallAd Control_ID_FeliNopeMsk
  loc_9EC3BC: FStAdFunc var_A4
  loc_9EC3BF: FLdPr var_A4
  loc_9EC3C2: LateIdLdVar var_B4 DispID_22 0
  loc_9EC3C9: CStrVarTmp
  loc_9EC3CA: FStStrNoPop var_B8
  loc_9EC3CD: LitStr vbNullString
  loc_9EC3D0: NeStr
  loc_9EC3D2: AndI4
  loc_9EC3D3: FFree1Str var_B8
  loc_9EC3D6: FFreeAd var_88 = "": var_90 = ""
  loc_9EC3DF: FFreeVar var_A0 = ""
  loc_9EC3E6: BranchF loc_9EC4A2
  loc_9EC3E9: FLdPr Me
  loc_9EC3EC: VCallAd Control_ID_FeliNopeMsk
  loc_9EC3EF: FStAdFunc var_88
  loc_9EC3F2: FLdPr var_88
  loc_9EC3F5: LateIdLdVar var_A0 DispID_15 0
  loc_9EC3FC: PopAd
  loc_9EC3FE: FLdPr Me
  loc_9EC401: VCallAd Control_ID_FechNopeMsk
  loc_9EC404: FStAdFunc var_90
  loc_9EC407: FLdPr var_90
  loc_9EC40A: LateIdLdVar var_B4 DispID_15 0
  loc_9EC411: PopAd
  loc_9EC413: FLdPr Me
  loc_9EC416: VCallAd Control_ID_FeliNopeMsk
  loc_9EC419: FStAdFunc var_C4
  loc_9EC41C: LitI2_Byte 0
  loc_9EC41E: PopTmpLdAd2 var_8A
  loc_9EC421: FLdZeroAd var_C4
  loc_9EC424: FStAdFunc var_A4
  loc_9EC427: FLdRfVar var_A4
  loc_9EC42A: FLdRfVar var_B4
  loc_9EC42D: CStrVarTmp
  loc_9EC42E: FStStrNoPop var_BC
  loc_9EC431: LitI2_Byte 0
  loc_9EC433: LitI2_Byte 0
  loc_9EC435: FLdRfVar var_A0
  loc_9EC438: CStrVarTmp
  loc_9EC439: FStStrNoPop var_B8
  loc_9EC43C: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9EC441: FStStrNoPop var_C0
  loc_9EC444: FLdPr Me
  loc_9EC447: MemStStrCopy
  loc_9EC44B: FFreeStr var_B8 = "": var_BC = ""
  loc_9EC454: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9EC45F: FFreeVar var_A0 = ""
  loc_9EC466: FLdPr Me
  loc_9EC469: VCallAd Control_ID_FeliNopeMsk
  loc_9EC46C: FStAdFunc var_C4
  loc_9EC46F: LitNothing
  loc_9EC471: CastAd
  loc_9EC474: FStAdFunc var_A4
  loc_9EC477: FLdRfVar var_A4
  loc_9EC47A: FLdZeroAd var_C4
  loc_9EC47D: FStAdFuncNoPop
  loc_9EC480: CastAd
  loc_9EC483: FStAdFunc var_90
  loc_9EC486: FLdRfVar var_90
  loc_9EC489: FLdPr Me
  loc_9EC48C: MemLdRfVar from_stack_1.global_76
  loc_9EC48F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9EC494: IStI2 KeyAscii
  loc_9EC497: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9EC4A2: ExitProcHresult
End Sub

Private Sub FeliNopeMsk_KeyPress(KeyAscii As Integer) '9899F8
  'Data Table: 4FD0E0
  loc_9899B4: ILdI2 KeyAscii
  loc_9899B7: CI4UI1
  loc_9899B8: LitI4 &H20
  loc_9899BD: EqI4
  loc_9899BE: BranchF loc_9899F4
  loc_9899C1: LitVar_Missing var_A4
  loc_9899C4: PopAdLdVar
  loc_9899C5: LitVarI4
  loc_9899CD: PopAdLdVar
  loc_9899CE: ImpAdLdRf MemVar_C3D9A8
  loc_9899D1: NewIfNullPr frmCalendario
  loc_9899D4: frmCalendario.Show from_stack_1, from_stack_2
  loc_9899D9: ImpAdLdRf MemVar_C3D038
  loc_9899DC: CDargRef
  loc_9899E0: FLdPr Me
  loc_9899E3: VCallAd Control_ID_FeliNopeMsk
  loc_9899E6: FStAdFunc var_A8
  loc_9899E9: FLdPr var_A8
  loc_9899EC: LateIdSt
  loc_9899F1: FFree1Ad var_A8
  loc_9899F4: ExitProcHresult
  loc_9899F5: GeI2
End Sub

Private Sub PlieNopeMsk_UnknownEvent_0 '94B0D8
  'Data Table: 4FD0E0
  loc_94B0C4: FLdPr Me
  loc_94B0C7: VCallAd Control_ID_PlieNopeMsk
  loc_94B0CA: CVarAd
  loc_94B0CE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B0D3: FFree1Var var_94 = ""
  loc_94B0D6: ExitProcHresult
End Sub

Private Sub PlieNopeMsk_UnknownEvent_8 '9C4328
  'Data Table: 4FD0E0
  loc_9C4264: FLdRfVar var_8A
  loc_9C4267: FLdPr Me
  loc_9C426A: VCallAd Control_ID_cmdCancelar
  loc_9C426D: FStAdFunc var_88
  loc_9C4270: FLdPr var_88
  loc_9C4273:  = Me.Value
  loc_9C4278: FLdI2 var_8A
  loc_9C427B: NotI4
  loc_9C427C: FLdPr Me
  loc_9C427F: VCallAd Control_ID_PlieNopeMsk
  loc_9C4282: FStAdFunc var_90
  loc_9C4285: FLdPr var_90
  loc_9C4288: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C428F: CBoolVar
  loc_9C4291: AndI4
  loc_9C4292: FFreeAd var_88 = ""
  loc_9C4299: FFree1Var var_A0 = ""
  loc_9C429C: BranchF loc_9C4326
  loc_9C429F: FLdPr Me
  loc_9C42A2: VCallAd Control_ID_PlieNopeMsk
  loc_9C42A5: FStAdFunc var_88
  loc_9C42A8: FLdPr var_88
  loc_9C42AB: LateIdLdVar var_A0 DispID_22 0
  loc_9C42B2: PopAd
  loc_9C42B4: LitStr "0"
  loc_9C42B7: LitI2_Byte &HFF
  loc_9C42B9: LitI2_Byte &HFF
  loc_9C42BB: LitI2_Byte 0
  loc_9C42BD: FLdRfVar var_A0
  loc_9C42C0: CStrVarTmp
  loc_9C42C1: FStStrNoPop var_A4
  loc_9C42C4: LitStr "Importe del Pliego"
  loc_9C42C7: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9C42CC: FStStrNoPop var_A8
  loc_9C42CF: FLdPr Me
  loc_9C42D2: MemStStrCopy
  loc_9C42D6: FFreeStr var_A4 = ""
  loc_9C42DD: FFree1Ad var_88
  loc_9C42E0: FFree1Var var_A0 = ""
  loc_9C42E3: FLdPr Me
  loc_9C42E6: VCallAd Control_ID_PlieNopeMsk
  loc_9C42E9: FStAdFunc var_B0
  loc_9C42EC: LitNothing
  loc_9C42EE: CastAd
  loc_9C42F1: FStAdFunc var_AC
  loc_9C42F4: FLdRfVar var_AC
  loc_9C42F7: FLdZeroAd var_B0
  loc_9C42FA: FStAdFuncNoPop
  loc_9C42FD: CastAd
  loc_9C4300: FStAdFunc var_90
  loc_9C4303: FLdRfVar var_90
  loc_9C4306: FLdPr Me
  loc_9C4309: MemLdRfVar from_stack_1.global_76
  loc_9C430C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C4311: IStI2 KeyAscii
  loc_9C4314: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9C431F: ILdI2 KeyAscii
  loc_9C4322: NotI4
  loc_9C4323: BranchF loc_9C4326
  loc_9C4326: ExitProcHresult
End Sub

Private Sub PlieNopeMsk_KeyPress(KeyAscii As Integer) '97ECC8
  'Data Table: 4FD0E0
  loc_97EC94: LitStr "1234567890,."
  loc_97EC97: FStStrCopy var_88
  loc_97EC9A: FLdRfVar var_88
  loc_97EC9D: ILdRf KeyAscii
  loc_97ECA0: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97ECA5: IStI2 KeyAscii
  loc_97ECA8: FFree1Str var_88
  loc_97ECAB: ILdI2 KeyAscii
  loc_97ECAE: LitStr "."
  loc_97ECB1: ImpAdCallI2 Asc()
  loc_97ECB6: EqI2
  loc_97ECB7: BranchF loc_97ECC5
  loc_97ECBA: LitStr ","
  loc_97ECBD: ImpAdCallI2 Asc()
  loc_97ECC2: IStI2 KeyAscii
  loc_97ECC5: ExitProcHresult
End Sub

Private Sub BajaMotiTxt_GotFocus() '94B120
  'Data Table: 4FD0E0
  loc_94B10C: FLdPr Me
  loc_94B10F: VCallAd Control_ID_BajaMotiTxt
  loc_94B112: CVarAd
  loc_94B116: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B11B: FFree1Var var_94 = ""
  loc_94B11E: ExitProcHresult
End Sub

Private Sub BajaMotiTxt_Validate(Cancel As Boolean) '9C02DC
  'Data Table: 4FD0E0
  loc_9C0220: FLdRfVar var_8A
  loc_9C0223: FLdPr Me
  loc_9C0226: VCallAd Control_ID_cmdCancelar
  loc_9C0229: FStAdFunc var_88
  loc_9C022C: FLdPr var_88
  loc_9C022F:  = Me.Value
  loc_9C0234: FLdI2 var_8A
  loc_9C0237: NotI4
  loc_9C0238: FLdRfVar var_92
  loc_9C023B: FLdPr Me
  loc_9C023E: VCallAd Control_ID_BajaMotiTxt
  loc_9C0241: FStAdFunc var_90
  loc_9C0244: FLdPr var_90
  loc_9C0247:  = Me.Enabled
  loc_9C024C: FLdI2 var_92
  loc_9C024F: AndI4
  loc_9C0250: FFreeAd var_88 = ""
  loc_9C0257: BranchF loc_9C02D8
  loc_9C025A: FLdRfVar var_98
  loc_9C025D: FLdPr Me
  loc_9C0260: VCallAd Control_ID_BajaMotiTxt
  loc_9C0263: FStAdFunc var_88
  loc_9C0266: FLdPr var_88
  loc_9C0269:  = Me.Text
  loc_9C026E: LitI2_Byte 0
  loc_9C0270: PopTmpLdAd2 var_9A
  loc_9C0273: LitI2_Byte 0
  loc_9C0275: PopTmpLdAd2 var_92
  loc_9C0278: LitI2_Byte 0
  loc_9C027A: PopTmpLdAd2 var_8A
  loc_9C027D: ILdRf var_98
  loc_9C0280: LitStr "el Motivo de la Anulacion"
  loc_9C0283: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C0288: FStStrNoPop var_A0
  loc_9C028B: FLdPr Me
  loc_9C028E: MemStStrCopy
  loc_9C0292: FFreeStr var_98 = ""
  loc_9C0299: FFree1Ad var_88
  loc_9C029C: FLdPr Me
  loc_9C029F: VCallAd Control_ID_BajaMotiTxt
  loc_9C02A2: FStAdFunc var_A8
  loc_9C02A5: LitNothing
  loc_9C02A7: CastAd
  loc_9C02AA: FStAdFunc var_A4
  loc_9C02AD: FLdRfVar var_A4
  loc_9C02B0: FLdZeroAd var_A8
  loc_9C02B3: FStAdFuncNoPop
  loc_9C02B6: CastAd
  loc_9C02B9: FStAdFunc var_90
  loc_9C02BC: FLdRfVar var_90
  loc_9C02BF: FLdPr Me
  loc_9C02C2: MemLdRfVar from_stack_1.global_76
  loc_9C02C5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C02CA: IStI2 Cancel
  loc_9C02CD: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C02D8: ExitProcHresult
  loc_9C02D9: PutRecFxStr3
End Sub

Private Sub ItemNotaFlex_UnknownEvent_0 'A51008
  'Data Table: 4FD0E0
  loc_A50D5C: FLdPr Me
  loc_A50D5F: VCallAd Control_ID_ItemNotaFlex
  loc_A50D62: FStAdFunc var_88
  loc_A50D65: FLdPr var_88
  loc_A50D68: LateIdLdVar var_98 DispID_13 -32767
  loc_A50D6F: CBoolVar
  loc_A50D71: FLdPr Me
  loc_A50D74: VCallAd Control_ID_ItemNotaFlex
  loc_A50D77: FStAdFunc var_9C
  loc_A50D7A: FLdPr var_9C
  loc_A50D7D: LateIdLdVar var_AC DispID_4 0
  loc_A50D84: CI4Var
  loc_A50D86: LitI4 1
  loc_A50D8B: GtI4
  loc_A50D8C: AndI4
  loc_A50D8D: FFreeAd var_88 = ""
  loc_A50D94: FFreeVar var_98 = ""
  loc_A50D9B: BranchF loc_A51007
  loc_A50D9E: FLdPr Me
  loc_A50DA1: VCallAd Control_ID_ItemNotaFlex
  loc_A50DA4: FStAdFunc var_88
  loc_A50DA7: FLdPr var_88
  loc_A50DAA: LateIdLdVar var_98 DispID_10 0
  loc_A50DB1: CI4Var
  loc_A50DB3: CVarI4
  loc_A50DB7: PopAdLdVar
  loc_A50DB8: LitVarI4
  loc_A50DC0: PopAdLdVar
  loc_A50DC1: FLdPr Me
  loc_A50DC4: VCallAd Control_ID_ItemNotaFlex
  loc_A50DC7: FStAdFunc var_9C
  loc_A50DCA: FLdPr var_9C
  loc_A50DCD: LateIdCallLdVar
  loc_A50DD7: CStrVarTmp
  loc_A50DD8: FStStrNoPop var_F0
  loc_A50DDB: LitStr vbNullString
  loc_A50DDE: EqStr
  loc_A50DE0: FFree1Str var_F0
  loc_A50DE3: FFreeAd var_88 = ""
  loc_A50DEA: FFreeVar var_98 = ""
  loc_A50DF1: BranchF loc_A50E55
  loc_A50DF4: FLdPr Me
  loc_A50DF7: VCallAd Control_ID_ItemNotaFlex
  loc_A50DFA: FStAdFunc var_9C
  loc_A50DFD: FLdPr var_9C
  loc_A50E00: LateIdLdVar var_AC DispID_10 0
  loc_A50E07: CI4Var
  loc_A50E09: CVarI4
  loc_A50E0D: PopAdLdVar
  loc_A50E0E: LitVarI4
  loc_A50E16: PopAdLdVar
  loc_A50E17: FLdPr Me
  loc_A50E1A: VCallAd Control_ID_CodiOrgaMsk
  loc_A50E1D: FStAdFunc var_88
  loc_A50E20: FLdPr var_88
  loc_A50E23: LateIdLdVar var_98 DispID_22 0
  loc_A50E2A: CStrVarTmp
  loc_A50E2B: CVarStr var_100
  loc_A50E2E: PopAdLdVar
  loc_A50E2F: FLdPr Me
  loc_A50E32: VCallAd Control_ID_ItemNotaFlex
  loc_A50E35: FStAdFunc var_114
  loc_A50E38: FLdPr var_114
  loc_A50E3B: LateIdCallSt
  loc_A50E43: FFreeAd var_88 = "": var_9C = ""
  loc_A50E4C: FFreeVar var_98 = "": var_AC = ""
  loc_A50E55: FLdPr Me
  loc_A50E58: VCallAd Control_ID_ItemNotaFlex
  loc_A50E5B: FStAdFunc var_88
  loc_A50E5E: FLdPr var_88
  loc_A50E61: LateIdLdVar var_98 DispID_10 0
  loc_A50E68: CI4Var
  loc_A50E6A: CVarI4
  loc_A50E6E: PopAdLdVar
  loc_A50E6F: LitVarI4
  loc_A50E77: PopAdLdVar
  loc_A50E78: FLdPr Me
  loc_A50E7B: VCallAd Control_ID_ItemNotaFlex
  loc_A50E7E: FStAdFunc var_9C
  loc_A50E81: FLdPr var_9C
  loc_A50E84: LateIdCallLdVar
  loc_A50E8E: CStrVarTmp
  loc_A50E8F: FStStrNoPop var_F0
  loc_A50E92: LitStr vbNullString
  loc_A50E95: EqStr
  loc_A50E97: FFree1Str var_F0
  loc_A50E9A: FFreeAd var_88 = ""
  loc_A50EA1: FFreeVar var_98 = ""
  loc_A50EA8: BranchF loc_A50EF2
  loc_A50EAB: FLdPr Me
  loc_A50EAE: VCallAd Control_ID_ItemNotaFlex
  loc_A50EB1: FStAdFunc var_88
  loc_A50EB4: FLdPr var_88
  loc_A50EB7: LateIdLdVar var_98 DispID_10 0
  loc_A50EBE: CI4Var
  loc_A50EC0: CVarI4
  loc_A50EC4: PopAdLdVar
  loc_A50EC5: LitVarI4
  loc_A50ECD: PopAdLdVar
  loc_A50ECE: LitVarStr var_110, "019000"
  loc_A50ED3: PopAdLdVar
  loc_A50ED4: FLdPr Me
  loc_A50ED7: VCallAd Control_ID_ItemNotaFlex
  loc_A50EDA: FStAdFunc var_9C
  loc_A50EDD: FLdPr var_9C
  loc_A50EE0: LateIdCallSt
  loc_A50EE8: FFreeAd var_88 = ""
  loc_A50EEF: FFree1Var var_98 = ""
  loc_A50EF2: LitStr "Municipalidad de Guaymallén"
  loc_A50EF5: LitStr "Municipalidad de Guaymallén"
  loc_A50EF8: EqStr
  loc_A50EFA: FLdPr Me
  loc_A50EFD: VCallAd Control_ID_CodiTicoMsk
  loc_A50F00: FStAdFunc var_88
  loc_A50F03: FLdPr var_88
  loc_A50F06: LateIdLdVar var_98 DispID_22 0
  loc_A50F0D: CStrVarTmp
  loc_A50F0E: FStStrNoPop var_F0
  loc_A50F11: LitStr "11"
  loc_A50F14: EqStr
  loc_A50F16: AndI4
  loc_A50F17: FFree1Str var_F0
  loc_A50F1A: FFree1Ad var_88
  loc_A50F1D: FFree1Var var_98 = ""
  loc_A50F20: BranchF loc_A50F6A
  loc_A50F23: FLdPr Me
  loc_A50F26: VCallAd Control_ID_ItemNotaFlex
  loc_A50F29: FStAdFunc var_88
  loc_A50F2C: FLdPr var_88
  loc_A50F2F: LateIdLdVar var_98 DispID_10 0
  loc_A50F36: CI4Var
  loc_A50F38: CVarI4
  loc_A50F3C: PopAdLdVar
  loc_A50F3D: LitVarI4
  loc_A50F45: PopAdLdVar
  loc_A50F46: LitVarStr var_110, "150000"
  loc_A50F4B: PopAdLdVar
  loc_A50F4C: FLdPr Me
  loc_A50F4F: VCallAd Control_ID_ItemNotaFlex
  loc_A50F52: FStAdFunc var_9C
  loc_A50F55: FLdPr var_9C
  loc_A50F58: LateIdCallSt
  loc_A50F60: FFreeAd var_88 = ""
  loc_A50F67: FFree1Var var_98 = ""
  loc_A50F6A: FLdPr Me
  loc_A50F6D: VCallAd Control_ID_ItemNotaFlex
  loc_A50F70: FStAdFunc var_88
  loc_A50F73: FLdPr var_88
  loc_A50F76: LateIdLdVar var_98 DispID_10 0
  loc_A50F7D: CI4Var
  loc_A50F7F: CVarI4
  loc_A50F83: PopAdLdVar
  loc_A50F84: LitVarI4
  loc_A50F8C: PopAdLdVar
  loc_A50F8D: FLdPr Me
  loc_A50F90: VCallAd Control_ID_ItemNotaFlex
  loc_A50F93: FStAdFunc var_9C
  loc_A50F96: FLdPr var_9C
  loc_A50F99: LateIdCallLdVar
  loc_A50FA3: CStrVarTmp
  loc_A50FA4: FStStrNoPop var_F0
  loc_A50FA7: LitStr vbNullString
  loc_A50FAA: EqStr
  loc_A50FAC: FFree1Str var_F0
  loc_A50FAF: FFreeAd var_88 = ""
  loc_A50FB6: FFreeVar var_98 = ""
  loc_A50FBD: BranchF loc_A51007
  loc_A50FC0: FLdPr Me
  loc_A50FC3: VCallAd Control_ID_ItemNotaFlex
  loc_A50FC6: FStAdFunc var_88
  loc_A50FC9: FLdPr var_88
  loc_A50FCC: LateIdLdVar var_98 DispID_10 0
  loc_A50FD3: CI4Var
  loc_A50FD5: CVarI4
  loc_A50FD9: PopAdLdVar
  loc_A50FDA: LitVarI4
  loc_A50FE2: PopAdLdVar
  loc_A50FE3: LitVarStr var_110, "1"
  loc_A50FE8: PopAdLdVar
  loc_A50FE9: FLdPr Me
  loc_A50FEC: VCallAd Control_ID_ItemNotaFlex
  loc_A50FEF: FStAdFunc var_9C
  loc_A50FF2: FLdPr var_9C
  loc_A50FF5: LateIdCallSt
  loc_A50FFD: FFreeAd var_88 = ""
  loc_A51004: FFree1Var var_98 = ""
  loc_A51007: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_UnknownEvent_8 'BFC290
  'Data Table: 4FD0E0
  loc_BFA1B0: FLdPr Me
  loc_BFA1B3: MemLdUI1 global_74
  loc_BFA1B7: CI2UI1
  loc_BFA1B9: LitI2_Byte 0
  loc_BFA1BB: NeI2
  loc_BFA1BC: BranchF loc_BFC28D
  loc_BFA1BF: FLdPr Me
  loc_BFA1C2: VCallAd Control_ID_ItemNotaFlex
  loc_BFA1C5: FStAdFunc var_88
  loc_BFA1C8: FLdPr var_88
  loc_BFA1CB: LateIdLdVar var_98 DispID_13 -32767
  loc_BFA1D2: CBoolVar
  loc_BFA1D4: FFree1Ad var_88
  loc_BFA1D7: FFree1Var var_98 = ""
  loc_BFA1DA: BranchF loc_BFC28D
  loc_BFA1DD: FLdPr Me
  loc_BFA1E0: VCallAd Control_ID_ItemNotaFlex
  loc_BFA1E3: FStAdFunc var_88
  loc_BFA1E6: FLdPr var_88
  loc_BFA1E9: LateIdLdVar var_98 DispID_10 0
  loc_BFA1F0: CI4Var
  loc_BFA1F2: LitI4 0
  loc_BFA1F7: GtI4
  loc_BFA1F8: FFree1Ad var_88
  loc_BFA1FB: FFree1Var var_98 = ""
  loc_BFA1FE: BranchF loc_BFC280
  loc_BFA201: FLdPr Me
  loc_BFA204: VCallAd Control_ID_ItemNotaFlex
  loc_BFA207: FStAdFunc var_88
  loc_BFA20A: FLdPr var_88
  loc_BFA20D: LateIdLdVar var_98 DispID_11 0
  loc_BFA214: CI4Var
  loc_BFA216: LitI4 1
  loc_BFA21B: EqI4
  loc_BFA21C: FLdPr Me
  loc_BFA21F: MemLdI2 global_144
  loc_BFA222: OrI4
  loc_BFA223: FFree1Ad var_88
  loc_BFA226: FFree1Var var_98 = ""
  loc_BFA229: BranchF loc_BFA489
  loc_BFA22C: FLdPr Me
  loc_BFA22F: VCallAd Control_ID_ItemNotaFlex
  loc_BFA232: FStAdFunc var_88
  loc_BFA235: FLdPr var_88
  loc_BFA238: LateIdLdVar var_98 DispID_10 0
  loc_BFA23F: CI4Var
  loc_BFA241: CVarI4
  loc_BFA245: PopAdLdVar
  loc_BFA246: LitVarI4
  loc_BFA24E: PopAdLdVar
  loc_BFA24F: FLdPr Me
  loc_BFA252: VCallAd Control_ID_ItemNotaFlex
  loc_BFA255: FStAdFunc var_DC
  loc_BFA258: FLdPr var_DC
  loc_BFA25B: LateIdCallLdVar
  loc_BFA265: PopAd
  loc_BFA267: FLdPr Me
  loc_BFA26A: MemLdRfVar from_stack_1.global_120
  loc_BFA26D: NewIfNullRf
  loc_BFA271: FLdRfVar var_EC
  loc_BFA274: CStrVarTmp
  loc_BFA275: FStStrNoPop var_F0
  loc_BFA278: ImpAdCallI2 Proc_266_5_99AB30(, )
  loc_BFA27D: FStStrNoPop var_F4
  loc_BFA280: FLdPr Me
  loc_BFA283: MemStStrCopy
  loc_BFA287: FFreeStr var_F0 = ""
  loc_BFA28E: FFreeAd var_88 = ""
  loc_BFA295: FFreeVar var_98 = ""
  loc_BFA29C: FLdPr Me
  loc_BFA29F: MemLdStr global_76
  loc_BFA2A2: LitStr vbNullString
  loc_BFA2A5: NeStr
  loc_BFA2A7: BranchF loc_BFA3C7
  loc_BFA2AA: FLdPr Me
  loc_BFA2AD: VCallAd Control_ID_ItemNotaFlex
  loc_BFA2B0: FStAdFunc var_88
  loc_BFA2B3: FLdPr var_88
  loc_BFA2B6: LateIdLdVar var_98 DispID_11 0
  loc_BFA2BD: CI4Var
  loc_BFA2BF: LitI4 1
  loc_BFA2C4: EqI4
  loc_BFA2C5: FLdPr Me
  loc_BFA2C8: MemLdI2 global_144
  loc_BFA2CB: OrI4
  loc_BFA2CC: FFree1Ad var_88
  loc_BFA2CF: FFree1Var var_98 = ""
  loc_BFA2D2: BranchF loc_BFA319
  loc_BFA2D5: LitI4 0
  loc_BFA2DA: FLdPr Me
  loc_BFA2DD: MemLdStr global_76
  loc_BFA2E0: LitStr " - Fila: "
  loc_BFA2E3: ConcatStr
  loc_BFA2E4: FStStrNoPop var_F0
  loc_BFA2E7: FLdPr Me
  loc_BFA2EA: VCallAd Control_ID_ItemNotaFlex
  loc_BFA2ED: FStAdFunc var_88
  loc_BFA2F0: FLdPr var_88
  loc_BFA2F3: LateIdLdVar var_98 DispID_10 0
  loc_BFA2FA: CI4Var
  loc_BFA2FC: CStrI4
  loc_BFA2FE: FStStrNoPop var_F4
  loc_BFA301: ConcatStr
  loc_BFA302: FStStrNoPop var_F8
  loc_BFA305: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFA30A: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFA313: FFree1Ad var_88
  loc_BFA316: FFree1Var var_98 = ""
  loc_BFA319: FLdPr Me
  loc_BFA31C: VCallAd Control_ID_ItemNotaFlex
  loc_BFA31F: FStAdFunc var_88
  loc_BFA322: FLdPr var_88
  loc_BFA325: LateIdLdVar var_98 DispID_10 0
  loc_BFA32C: CI4Var
  loc_BFA32E: CVarI4
  loc_BFA332: PopAdLdVar
  loc_BFA333: LitVarI4
  loc_BFA33B: PopAdLdVar
  loc_BFA33C: LitVarStr var_108, vbNullString
  loc_BFA341: PopAdLdVar
  loc_BFA342: FLdPr Me
  loc_BFA345: VCallAd Control_ID_ItemNotaFlex
  loc_BFA348: FStAdFunc var_DC
  loc_BFA34B: FLdPr var_DC
  loc_BFA34E: LateIdCallSt
  loc_BFA356: FFreeAd var_88 = ""
  loc_BFA35D: FFree1Var var_98 = ""
  loc_BFA360: FLdPr Me
  loc_BFA363: VCallAd Control_ID_ItemNotaFlex
  loc_BFA366: FStAdFunc var_88
  loc_BFA369: FLdPr var_88
  loc_BFA36C: LateIdLdVar var_98 DispID_10 0
  loc_BFA373: CI4Var
  loc_BFA375: CVarI4
  loc_BFA379: PopAdLdVar
  loc_BFA37A: LitVarI4
  loc_BFA382: PopAdLdVar
  loc_BFA383: LitVarStr var_108, vbNullString
  loc_BFA388: PopAdLdVar
  loc_BFA389: FLdPr Me
  loc_BFA38C: VCallAd Control_ID_ItemNotaFlex
  loc_BFA38F: FStAdFunc var_DC
  loc_BFA392: FLdPr var_DC
  loc_BFA395: LateIdCallSt
  loc_BFA39D: FFreeAd var_88 = ""
  loc_BFA3A4: FFree1Var var_98 = ""
  loc_BFA3A7: FLdPr Me
  loc_BFA3AA: VCallAd Control_ID_ItemNotaFlex
  loc_BFA3AD: FStAdFunc var_88
  loc_BFA3B0: FLdPr var_88
  loc_BFA3B3: LateIdCall
  loc_BFA3BB: FFree1Ad var_88
  loc_BFA3BE: LitI2_Byte &HFF
  loc_BFA3C0: IStI2 Cancel
  loc_BFA3C3: ExitProcHresult
  loc_BFA3C4: Branch loc_BFA489
  loc_BFA3C7: FLdPr Me
  loc_BFA3CA: VCallAd Control_ID_ItemNotaFlex
  loc_BFA3CD: FStAdFunc var_88
  loc_BFA3D0: FLdPr var_88
  loc_BFA3D3: LateIdLdVar var_98 DispID_10 0
  loc_BFA3DA: CI4Var
  loc_BFA3DC: CVarI4
  loc_BFA3E0: PopAdLdVar
  loc_BFA3E1: LitVarI4
  loc_BFA3E9: PopAdLdVar
  loc_BFA3EA: FLdPr Me
  loc_BFA3ED: VCallAd Control_ID_ItemNotaFlex
  loc_BFA3F0: FStAdFunc var_DC
  loc_BFA3F3: FLdPr var_DC
  loc_BFA3F6: LateIdCallLdVar
  loc_BFA400: PopAd
  loc_BFA402: FLdPr Me
  loc_BFA405: MemLdRfVar from_stack_1.global_120
  loc_BFA408: NewIfNullRf
  loc_BFA40C: FLdRfVar var_EC
  loc_BFA40F: CStrVarTmp
  loc_BFA410: FStStrNoPop var_F0
  loc_BFA413: ImpAdCallI2 Proc_259_15_A9A814(, )
  loc_BFA418: FFree1Str var_F0
  loc_BFA41B: FFreeAd var_88 = ""
  loc_BFA422: FFreeVar var_98 = ""
  loc_BFA429: BranchF loc_BFA489
  loc_BFA42C: FLdPr Me
  loc_BFA42F: VCallAd Control_ID_ItemNotaFlex
  loc_BFA432: FStAdFunc var_88
  loc_BFA435: FLdPr var_88
  loc_BFA438: LateIdLdVar var_98 DispID_10 0
  loc_BFA43F: CI4Var
  loc_BFA441: CVarI4
  loc_BFA445: PopAdLdVar
  loc_BFA446: LitVarI4
  loc_BFA44E: PopAdLdVar
  loc_BFA44F: FLdRfVar var_F0
  loc_BFA452: FLdPr Me
  loc_BFA455: MemLdRfVar from_stack_1.global_120
  loc_BFA458: NewIfNullPr tblinsumo
  loc_BFA45B: from_stack_1v = tblinsumo.DetaInsuGet()
  loc_BFA460: FLdZeroAd var_F0
  loc_BFA463: CVarStr var_EC
  loc_BFA466: PopAdLdVar
  loc_BFA467: FLdPr Me
  loc_BFA46A: VCallAd Control_ID_ItemNotaFlex
  loc_BFA46D: FStAdFunc var_DC
  loc_BFA470: FLdPr var_DC
  loc_BFA473: LateIdCallSt
  loc_BFA47B: FFreeAd var_88 = ""
  loc_BFA482: FFreeVar var_98 = ""
  loc_BFA489: FLdPr Me
  loc_BFA48C: VCallAd Control_ID_ItemNotaFlex
  loc_BFA48F: FStAdFunc var_88
  loc_BFA492: FLdPr var_88
  loc_BFA495: LateIdLdVar var_98 DispID_11 0
  loc_BFA49C: CI4Var
  loc_BFA49E: LitI4 3
  loc_BFA4A3: EqI4
  loc_BFA4A4: FLdPr Me
  loc_BFA4A7: MemLdI2 global_144
  loc_BFA4AA: OrI4
  loc_BFA4AB: FFree1Ad var_88
  loc_BFA4AE: FFree1Var var_98 = ""
  loc_BFA4B1: BranchF loc_BFA8B7
  loc_BFA4B4: FLdPr Me
  loc_BFA4B7: VCallAd Control_ID_ItemNotaFlex
  loc_BFA4BA: FStAdFunc var_88
  loc_BFA4BD: FLdPr var_88
  loc_BFA4C0: LateIdLdVar var_98 DispID_10 0
  loc_BFA4C7: CI4Var
  loc_BFA4C9: CVarI4
  loc_BFA4CD: PopAdLdVar
  loc_BFA4CE: LitVarI4
  loc_BFA4D6: PopAdLdVar
  loc_BFA4D7: FLdPr Me
  loc_BFA4DA: VCallAd Control_ID_ItemNotaFlex
  loc_BFA4DD: FStAdFunc var_DC
  loc_BFA4E0: FLdPr var_DC
  loc_BFA4E3: LateIdCallLdVar
  loc_BFA4ED: PopAd
  loc_BFA4EF: LitI2_Byte 0
  loc_BFA4F1: PopTmpLdAd2 var_11E
  loc_BFA4F4: LitI2_Byte 0
  loc_BFA4F6: PopTmpLdAd2 var_11C
  loc_BFA4F9: LitI2_Byte 0
  loc_BFA4FB: PopTmpLdAd2 var_11A
  loc_BFA4FE: FLdRfVar var_EC
  loc_BFA501: CStrVarTmp
  loc_BFA502: FStStrNoPop var_F0
  loc_BFA505: LitStr "Detalle Ampliado del Insumo"
  loc_BFA508: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_BFA50D: FStStrNoPop var_F4
  loc_BFA510: FLdPr Me
  loc_BFA513: MemStStrCopy
  loc_BFA517: FFreeStr var_F0 = ""
  loc_BFA51E: FFreeAd var_88 = ""
  loc_BFA525: FFreeVar var_98 = ""
  loc_BFA52C: FLdPr Me
  loc_BFA52F: MemLdStr global_76
  loc_BFA532: LitStr vbNullString
  loc_BFA535: NeStr
  loc_BFA537: BranchF loc_BFA610
  loc_BFA53A: FLdPr Me
  loc_BFA53D: VCallAd Control_ID_ItemNotaFlex
  loc_BFA540: FStAdFunc var_88
  loc_BFA543: FLdPr var_88
  loc_BFA546: LateIdLdVar var_98 DispID_11 0
  loc_BFA54D: CI4Var
  loc_BFA54F: LitI4 3
  loc_BFA554: EqI4
  loc_BFA555: FLdPr Me
  loc_BFA558: MemLdI2 global_144
  loc_BFA55B: OrI4
  loc_BFA55C: FFree1Ad var_88
  loc_BFA55F: FFree1Var var_98 = ""
  loc_BFA562: BranchF loc_BFA5A9
  loc_BFA565: LitI4 0
  loc_BFA56A: FLdPr Me
  loc_BFA56D: MemLdStr global_76
  loc_BFA570: LitStr " - Fila: "
  loc_BFA573: ConcatStr
  loc_BFA574: FStStrNoPop var_F0
  loc_BFA577: FLdPr Me
  loc_BFA57A: VCallAd Control_ID_ItemNotaFlex
  loc_BFA57D: FStAdFunc var_88
  loc_BFA580: FLdPr var_88
  loc_BFA583: LateIdLdVar var_98 DispID_10 0
  loc_BFA58A: CI4Var
  loc_BFA58C: CStrI4
  loc_BFA58E: FStStrNoPop var_F4
  loc_BFA591: ConcatStr
  loc_BFA592: FStStrNoPop var_F8
  loc_BFA595: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFA59A: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFA5A3: FFree1Ad var_88
  loc_BFA5A6: FFree1Var var_98 = ""
  loc_BFA5A9: FLdPr Me
  loc_BFA5AC: VCallAd Control_ID_ItemNotaFlex
  loc_BFA5AF: FStAdFunc var_88
  loc_BFA5B2: FLdPr var_88
  loc_BFA5B5: LateIdLdVar var_98 DispID_10 0
  loc_BFA5BC: CI4Var
  loc_BFA5BE: CVarI4
  loc_BFA5C2: PopAdLdVar
  loc_BFA5C3: LitVarI4
  loc_BFA5CB: PopAdLdVar
  loc_BFA5CC: LitVarStr var_108, vbNullString
  loc_BFA5D1: PopAdLdVar
  loc_BFA5D2: FLdPr Me
  loc_BFA5D5: VCallAd Control_ID_ItemNotaFlex
  loc_BFA5D8: FStAdFunc var_DC
  loc_BFA5DB: FLdPr var_DC
  loc_BFA5DE: LateIdCallSt
  loc_BFA5E6: FFreeAd var_88 = ""
  loc_BFA5ED: FFree1Var var_98 = ""
  loc_BFA5F0: FLdPr Me
  loc_BFA5F3: VCallAd Control_ID_ItemNotaFlex
  loc_BFA5F6: FStAdFunc var_88
  loc_BFA5F9: FLdPr var_88
  loc_BFA5FC: LateIdCall
  loc_BFA604: FFree1Ad var_88
  loc_BFA607: LitI2_Byte &HFF
  loc_BFA609: IStI2 Cancel
  loc_BFA60C: ExitProcHresult
  loc_BFA60D: Branch loc_BFA8B7
  loc_BFA610: FLdPr Me
  loc_BFA613: VCallAd Control_ID_ItemNotaFlex
  loc_BFA616: FStAdFunc var_88
  loc_BFA619: FLdPr var_88
  loc_BFA61C: LateIdLdVar var_98 DispID_10 0
  loc_BFA623: CI4Var
  loc_BFA625: CVarI4
  loc_BFA629: PopAdLdVar
  loc_BFA62A: LitVarI4
  loc_BFA632: PopAdLdVar
  loc_BFA633: FLdPr Me
  loc_BFA636: VCallAd Control_ID_ItemNotaFlex
  loc_BFA639: FStAdFunc var_DC
  loc_BFA63C: FLdPr var_DC
  loc_BFA63F: LateIdCallLdVar
  loc_BFA649: CStrVarTmp
  loc_BFA64A: FStStrNoPop var_F0
  loc_BFA64D: FnLenStr
  loc_BFA64E: LitI4 3
  loc_BFA653: LeI4
  loc_BFA654: FFree1Str var_F0
  loc_BFA657: FFreeAd var_88 = ""
  loc_BFA65E: FFreeVar var_98 = ""
  loc_BFA665: BranchF loc_BFA8B7
  loc_BFA668: LitI4 1
  loc_BFA66D: FLdPr Me
  loc_BFA670: VCallAd Control_ID_ItemNotaFlex
  loc_BFA673: FStAdFunc var_88
  loc_BFA676: FLdPr var_88
  loc_BFA679: LateIdLdVar var_98 DispID_10 0
  loc_BFA680: CI4Var
  loc_BFA682: CVarI4
  loc_BFA686: PopAdLdVar
  loc_BFA687: LitVarI4
  loc_BFA68F: PopAdLdVar
  loc_BFA690: FLdPr Me
  loc_BFA693: VCallAd Control_ID_ItemNotaFlex
  loc_BFA696: FStAdFunc var_DC
  loc_BFA699: FLdPr var_DC
  loc_BFA69C: LateIdCallLdVar
  loc_BFA6A6: CStrVarTmp
  loc_BFA6A7: FStStrNoPop var_F0
  loc_BFA6AA: LitStr " "
  loc_BFA6AD: LitI4 0
  loc_BFA6B2: FnInStr4
  loc_BFA6B4: LitI4 0
  loc_BFA6B9: GtI4
  loc_BFA6BA: FFree1Str var_F0
  loc_BFA6BD: FFreeAd var_88 = ""
  loc_BFA6C4: FFreeVar var_98 = ""
  loc_BFA6CB: BranchF loc_BFA7CB
  loc_BFA6CE: FLdPr Me
  loc_BFA6D1: VCallAd Control_ID_ItemNotaFlex
  loc_BFA6D4: FStAdFunc var_88
  loc_BFA6D7: FLdPr var_88
  loc_BFA6DA: LateIdLdVar var_98 DispID_10 0
  loc_BFA6E1: CI4Var
  loc_BFA6E3: CVarI4
  loc_BFA6E7: PopAdLdVar
  loc_BFA6E8: LitVarI4
  loc_BFA6F0: PopAdLdVar
  loc_BFA6F1: FLdPr Me
  loc_BFA6F4: VCallAd Control_ID_ItemNotaFlex
  loc_BFA6F7: FStAdFunc var_DC
  loc_BFA6FA: FLdPr var_DC
  loc_BFA6FD: LateIdCallLdVar
  loc_BFA707: PopAd
  loc_BFA709: FLdPr Me
  loc_BFA70C: VCallAd Control_ID_ItemNotaFlex
  loc_BFA70F: FStAdFunc var_18C
  loc_BFA712: FLdPr var_18C
  loc_BFA715: LateIdLdVar var_19C DispID_10 0
  loc_BFA71C: CI4Var
  loc_BFA71E: CVarI4
  loc_BFA722: PopAdLdVar
  loc_BFA723: LitVarI4
  loc_BFA72B: PopAdLdVar
  loc_BFA72C: LitI4 1
  loc_BFA731: FLdPr Me
  loc_BFA734: VCallAd Control_ID_ItemNotaFlex
  loc_BFA737: FStAdFunc var_124
  loc_BFA73A: FLdPr var_124
  loc_BFA73D: LateIdLdVar var_134 DispID_10 0
  loc_BFA744: CI4Var
  loc_BFA746: CVarI4
  loc_BFA74A: PopAdLdVar
  loc_BFA74B: LitVarI4
  loc_BFA753: PopAdLdVar
  loc_BFA754: FLdPr Me
  loc_BFA757: VCallAd Control_ID_ItemNotaFlex
  loc_BFA75A: FStAdFunc var_158
  loc_BFA75D: FLdPr var_158
  loc_BFA760: LateIdCallLdVar
  loc_BFA76A: CStrVarTmp
  loc_BFA76B: FStStrNoPop var_F0
  loc_BFA76E: LitStr " "
  loc_BFA771: LitI4 0
  loc_BFA776: FnInStr4
  loc_BFA778: FLdRfVar var_EC
  loc_BFA77B: CStrVarTmp
  loc_BFA77C: CVarStr var_178
  loc_BFA77F: FLdRfVar var_188
  loc_BFA782: ImpAdCallFPR4  = Left(, )
  loc_BFA787: FLdRfVar var_188
  loc_BFA78A: CStrVarTmp
  loc_BFA78B: CVarStr var_1EC
  loc_BFA78E: PopAdLdVar
  loc_BFA78F: FLdPr Me
  loc_BFA792: VCallAd Control_ID_ItemNotaFlex
  loc_BFA795: FStAdFunc var_200
  loc_BFA798: FLdPr var_200
  loc_BFA79B: LateIdCallSt
  loc_BFA7A3: FFree1Str var_F0
  loc_BFA7A6: FFreeAd var_88 = "": var_DC = "": var_124 = "": var_158 = "": var_18C = ""
  loc_BFA7B5: FFreeVar var_98 = "": var_EC = "": var_134 = "": var_168 = "": var_178 = "": var_19C = "": var_188 = ""
  loc_BFA7C8: Branch loc_BFA8B7
  loc_BFA7CB: FLdPr Me
  loc_BFA7CE: VCallAd Control_ID_ItemNotaFlex
  loc_BFA7D1: FStAdFunc var_88
  loc_BFA7D4: FLdPr var_88
  loc_BFA7D7: LateIdLdVar var_98 DispID_10 0
  loc_BFA7DE: CI4Var
  loc_BFA7E0: CVarI4
  loc_BFA7E4: PopAdLdVar
  loc_BFA7E5: LitVarI4
  loc_BFA7ED: PopAdLdVar
  loc_BFA7EE: FLdPr Me
  loc_BFA7F1: VCallAd Control_ID_ItemNotaFlex
  loc_BFA7F4: FStAdFunc var_DC
  loc_BFA7F7: FLdPr var_DC
  loc_BFA7FA: LateIdCallLdVar
  loc_BFA804: PopAd
  loc_BFA806: FLdPr Me
  loc_BFA809: VCallAd Control_ID_ItemNotaFlex
  loc_BFA80C: FStAdFunc var_18C
  loc_BFA80F: FLdPr var_18C
  loc_BFA812: LateIdLdVar var_19C DispID_10 0
  loc_BFA819: CI4Var
  loc_BFA81B: CVarI4
  loc_BFA81F: PopAdLdVar
  loc_BFA820: LitVarI4
  loc_BFA828: PopAdLdVar
  loc_BFA829: FLdPr Me
  loc_BFA82C: VCallAd Control_ID_ItemNotaFlex
  loc_BFA82F: FStAdFunc var_124
  loc_BFA832: FLdPr var_124
  loc_BFA835: LateIdLdVar var_134 DispID_10 0
  loc_BFA83C: CI4Var
  loc_BFA83E: CVarI4
  loc_BFA842: PopAdLdVar
  loc_BFA843: LitVarI4
  loc_BFA84B: PopAdLdVar
  loc_BFA84C: FLdPr Me
  loc_BFA84F: VCallAd Control_ID_ItemNotaFlex
  loc_BFA852: FStAdFunc var_158
  loc_BFA855: FLdPr var_158
  loc_BFA858: LateIdCallLdVar
  loc_BFA862: CStrVarTmp
  loc_BFA863: FStStrNoPop var_F0
  loc_BFA866: FnLenStr
  loc_BFA867: FLdRfVar var_EC
  loc_BFA86A: CStrVarTmp
  loc_BFA86B: CVarStr var_178
  loc_BFA86E: FLdRfVar var_188
  loc_BFA871: ImpAdCallFPR4  = Left(, )
  loc_BFA876: FLdRfVar var_188
  loc_BFA879: CStrVarTmp
  loc_BFA87A: CVarStr var_1EC
  loc_BFA87D: PopAdLdVar
  loc_BFA87E: FLdPr Me
  loc_BFA881: VCallAd Control_ID_ItemNotaFlex
  loc_BFA884: FStAdFunc var_200
  loc_BFA887: FLdPr var_200
  loc_BFA88A: LateIdCallSt
  loc_BFA892: FFree1Str var_F0
  loc_BFA895: FFreeAd var_88 = "": var_DC = "": var_124 = "": var_158 = "": var_18C = ""
  loc_BFA8A4: FFreeVar var_98 = "": var_EC = "": var_134 = "": var_168 = "": var_178 = "": var_19C = "": var_188 = ""
  loc_BFA8B7: FLdPr Me
  loc_BFA8BA: VCallAd Control_ID_ItemNotaFlex
  loc_BFA8BD: FStAdFunc var_88
  loc_BFA8C0: FLdPr var_88
  loc_BFA8C3: LateIdLdVar var_98 DispID_11 0
  loc_BFA8CA: CI4Var
  loc_BFA8CC: LitI4 4
  loc_BFA8D1: EqI4
  loc_BFA8D2: FLdPr Me
  loc_BFA8D5: MemLdI2 global_144
  loc_BFA8D8: OrI4
  loc_BFA8D9: FFree1Ad var_88
  loc_BFA8DC: FFree1Var var_98 = ""
  loc_BFA8DF: BranchF loc_BFAAE9
  loc_BFA8E2: FLdPr Me
  loc_BFA8E5: VCallAd Control_ID_ItemNotaFlex
  loc_BFA8E8: FStAdFunc var_88
  loc_BFA8EB: FLdPr var_88
  loc_BFA8EE: LateIdLdVar var_98 DispID_10 0
  loc_BFA8F5: CI4Var
  loc_BFA8F7: CVarI4
  loc_BFA8FB: PopAdLdVar
  loc_BFA8FC: LitVarI4
  loc_BFA904: PopAdLdVar
  loc_BFA905: FLdPr Me
  loc_BFA908: VCallAd Control_ID_ItemNotaFlex
  loc_BFA90B: FStAdFunc var_DC
  loc_BFA90E: FLdPr var_DC
  loc_BFA911: LateIdCallLdVar
  loc_BFA91B: PopAd
  loc_BFA91D: LitStr "0"
  loc_BFA920: LitI2_Byte &HFF
  loc_BFA922: LitI2_Byte 0
  loc_BFA924: LitI2_Byte 0
  loc_BFA926: FLdRfVar var_EC
  loc_BFA929: CStrVarTmp
  loc_BFA92A: FStStrNoPop var_F0
  loc_BFA92D: LitStr "Cantidad"
  loc_BFA930: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_BFA935: FStStrNoPop var_F4
  loc_BFA938: FLdPr Me
  loc_BFA93B: MemStStrCopy
  loc_BFA93F: FFreeStr var_F0 = ""
  loc_BFA946: FFreeAd var_88 = ""
  loc_BFA94D: FFreeVar var_98 = ""
  loc_BFA954: FLdPr Me
  loc_BFA957: MemLdStr global_76
  loc_BFA95A: LitStr vbNullString
  loc_BFA95D: NeStr
  loc_BFA95F: BranchF loc_BFAA38
  loc_BFA962: FLdPr Me
  loc_BFA965: VCallAd Control_ID_ItemNotaFlex
  loc_BFA968: FStAdFunc var_88
  loc_BFA96B: FLdPr var_88
  loc_BFA96E: LateIdLdVar var_98 DispID_11 0
  loc_BFA975: CI4Var
  loc_BFA977: LitI4 4
  loc_BFA97C: EqI4
  loc_BFA97D: FLdPr Me
  loc_BFA980: MemLdI2 global_144
  loc_BFA983: OrI4
  loc_BFA984: FFree1Ad var_88
  loc_BFA987: FFree1Var var_98 = ""
  loc_BFA98A: BranchF loc_BFA9D1
  loc_BFA98D: LitI4 0
  loc_BFA992: FLdPr Me
  loc_BFA995: MemLdStr global_76
  loc_BFA998: LitStr " - Fila: "
  loc_BFA99B: ConcatStr
  loc_BFA99C: FStStrNoPop var_F0
  loc_BFA99F: FLdPr Me
  loc_BFA9A2: VCallAd Control_ID_ItemNotaFlex
  loc_BFA9A5: FStAdFunc var_88
  loc_BFA9A8: FLdPr var_88
  loc_BFA9AB: LateIdLdVar var_98 DispID_10 0
  loc_BFA9B2: CI4Var
  loc_BFA9B4: CStrI4
  loc_BFA9B6: FStStrNoPop var_F4
  loc_BFA9B9: ConcatStr
  loc_BFA9BA: FStStrNoPop var_F8
  loc_BFA9BD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFA9C2: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFA9CB: FFree1Ad var_88
  loc_BFA9CE: FFree1Var var_98 = ""
  loc_BFA9D1: FLdPr Me
  loc_BFA9D4: VCallAd Control_ID_ItemNotaFlex
  loc_BFA9D7: FStAdFunc var_88
  loc_BFA9DA: FLdPr var_88
  loc_BFA9DD: LateIdLdVar var_98 DispID_10 0
  loc_BFA9E4: CI4Var
  loc_BFA9E6: CVarI4
  loc_BFA9EA: PopAdLdVar
  loc_BFA9EB: LitVarI4
  loc_BFA9F3: PopAdLdVar
  loc_BFA9F4: LitVarStr var_108, vbNullString
  loc_BFA9F9: PopAdLdVar
  loc_BFA9FA: FLdPr Me
  loc_BFA9FD: VCallAd Control_ID_ItemNotaFlex
  loc_BFAA00: FStAdFunc var_DC
  loc_BFAA03: FLdPr var_DC
  loc_BFAA06: LateIdCallSt
  loc_BFAA0E: FFreeAd var_88 = ""
  loc_BFAA15: FFree1Var var_98 = ""
  loc_BFAA18: FLdPr Me
  loc_BFAA1B: VCallAd Control_ID_ItemNotaFlex
  loc_BFAA1E: FStAdFunc var_88
  loc_BFAA21: FLdPr var_88
  loc_BFAA24: LateIdCall
  loc_BFAA2C: FFree1Ad var_88
  loc_BFAA2F: LitI2_Byte &HFF
  loc_BFAA31: IStI2 Cancel
  loc_BFAA34: ExitProcHresult
  loc_BFAA35: Branch loc_BFAAE9
  loc_BFAA38: FLdPr Me
  loc_BFAA3B: VCallAd Control_ID_ItemNotaFlex
  loc_BFAA3E: FStAdFunc var_88
  loc_BFAA41: FLdPr var_88
  loc_BFAA44: LateIdLdVar var_98 DispID_10 0
  loc_BFAA4B: CI4Var
  loc_BFAA4D: CVarI4
  loc_BFAA51: PopAdLdVar
  loc_BFAA52: LitVarI4
  loc_BFAA5A: PopAdLdVar
  loc_BFAA5B: FLdPr Me
  loc_BFAA5E: VCallAd Control_ID_ItemNotaFlex
  loc_BFAA61: FStAdFunc var_DC
  loc_BFAA64: FLdPr var_DC
  loc_BFAA67: LateIdCallLdVar
  loc_BFAA71: PopAd
  loc_BFAA73: FLdPr Me
  loc_BFAA76: VCallAd Control_ID_ItemNotaFlex
  loc_BFAA79: FStAdFunc var_124
  loc_BFAA7C: FLdPr var_124
  loc_BFAA7F: LateIdLdVar var_178 DispID_10 0
  loc_BFAA86: CI4Var
  loc_BFAA88: CVarI4
  loc_BFAA8C: PopAdLdVar
  loc_BFAA8D: LitVarI4
  loc_BFAA95: PopAdLdVar
  loc_BFAA96: LitI4 1
  loc_BFAA9B: LitI4 1
  loc_BFAAA0: LitVarStr var_108, "0.000"
  loc_BFAAA5: FStVarCopyObj var_168
  loc_BFAAA8: FLdRfVar var_168
  loc_BFAAAB: FLdRfVar var_EC
  loc_BFAAAE: CStrVarTmp
  loc_BFAAAF: CVarStr var_134
  loc_BFAAB2: ImpAdCallI2 Format$(, )
  loc_BFAAB7: CVarStr var_188
  loc_BFAABA: PopAdLdVar
  loc_BFAABB: FLdPr Me
  loc_BFAABE: VCallAd Control_ID_ItemNotaFlex
  loc_BFAAC1: FStAdFunc var_158
  loc_BFAAC4: FLdPr var_158
  loc_BFAAC7: LateIdCallSt
  loc_BFAACF: FFreeAd var_88 = "": var_DC = "": var_124 = ""
  loc_BFAADA: FFreeVar var_98 = "": var_EC = "": var_134 = "": var_168 = "": var_178 = ""
  loc_BFAAE9: FLdPr Me
  loc_BFAAEC: VCallAd Control_ID_ItemNotaFlex
  loc_BFAAEF: FStAdFunc var_88
  loc_BFAAF2: FLdPr var_88
  loc_BFAAF5: LateIdLdVar var_98 DispID_11 0
  loc_BFAAFC: CI4Var
  loc_BFAAFE: LitI4 5
  loc_BFAB03: EqI4
  loc_BFAB04: FLdPr Me
  loc_BFAB07: MemLdI2 global_144
  loc_BFAB0A: OrI4
  loc_BFAB0B: FFree1Ad var_88
  loc_BFAB0E: FFree1Var var_98 = ""
  loc_BFAB11: BranchF loc_BFAEC8
  loc_BFAB14: FLdPr Me
  loc_BFAB17: VCallAd Control_ID_ItemNotaFlex
  loc_BFAB1A: FStAdFunc var_88
  loc_BFAB1D: FLdPr var_88
  loc_BFAB20: LateIdLdVar var_98 DispID_10 0
  loc_BFAB27: CI4Var
  loc_BFAB29: CVarI4
  loc_BFAB2D: PopAdLdVar
  loc_BFAB2E: LitVarI4
  loc_BFAB36: PopAdLdVar
  loc_BFAB37: FLdPr Me
  loc_BFAB3A: VCallAd Control_ID_ItemNotaFlex
  loc_BFAB3D: FStAdFunc var_DC
  loc_BFAB40: FLdPr var_DC
  loc_BFAB43: LateIdCallLdVar
  loc_BFAB4D: PopAd
  loc_BFAB4F: LitStr "0"
  loc_BFAB52: LitI2_Byte &HFF
  loc_BFAB54: LitI2_Byte &HFF
  loc_BFAB56: LitI2_Byte 0
  loc_BFAB58: FLdRfVar var_EC
  loc_BFAB5B: CStrVarTmp
  loc_BFAB5C: FStStrNoPop var_F0
  loc_BFAB5F: LitStr "Importe Unitario"
  loc_BFAB62: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_BFAB67: FStStrNoPop var_F4
  loc_BFAB6A: FLdPr Me
  loc_BFAB6D: MemStStrCopy
  loc_BFAB71: FFreeStr var_F0 = ""
  loc_BFAB78: FFreeAd var_88 = ""
  loc_BFAB7F: FFreeVar var_98 = ""
  loc_BFAB86: FLdPr Me
  loc_BFAB89: MemLdStr global_76
  loc_BFAB8C: LitStr vbNullString
  loc_BFAB8F: NeStr
  loc_BFAB91: BranchF loc_BFAC6A
  loc_BFAB94: FLdPr Me
  loc_BFAB97: VCallAd Control_ID_ItemNotaFlex
  loc_BFAB9A: FStAdFunc var_88
  loc_BFAB9D: FLdPr var_88
  loc_BFABA0: LateIdLdVar var_98 DispID_11 0
  loc_BFABA7: CI4Var
  loc_BFABA9: LitI4 5
  loc_BFABAE: EqI4
  loc_BFABAF: FLdPr Me
  loc_BFABB2: MemLdI2 global_144
  loc_BFABB5: OrI4
  loc_BFABB6: FFree1Ad var_88
  loc_BFABB9: FFree1Var var_98 = ""
  loc_BFABBC: BranchF loc_BFAC03
  loc_BFABBF: LitI4 0
  loc_BFABC4: FLdPr Me
  loc_BFABC7: MemLdStr global_76
  loc_BFABCA: LitStr " - Fila: "
  loc_BFABCD: ConcatStr
  loc_BFABCE: FStStrNoPop var_F0
  loc_BFABD1: FLdPr Me
  loc_BFABD4: VCallAd Control_ID_ItemNotaFlex
  loc_BFABD7: FStAdFunc var_88
  loc_BFABDA: FLdPr var_88
  loc_BFABDD: LateIdLdVar var_98 DispID_10 0
  loc_BFABE4: CI4Var
  loc_BFABE6: CStrI4
  loc_BFABE8: FStStrNoPop var_F4
  loc_BFABEB: ConcatStr
  loc_BFABEC: FStStrNoPop var_F8
  loc_BFABEF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFABF4: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFABFD: FFree1Ad var_88
  loc_BFAC00: FFree1Var var_98 = ""
  loc_BFAC03: FLdPr Me
  loc_BFAC06: VCallAd Control_ID_ItemNotaFlex
  loc_BFAC09: FStAdFunc var_88
  loc_BFAC0C: FLdPr var_88
  loc_BFAC0F: LateIdLdVar var_98 DispID_10 0
  loc_BFAC16: CI4Var
  loc_BFAC18: CVarI4
  loc_BFAC1C: PopAdLdVar
  loc_BFAC1D: LitVarI4
  loc_BFAC25: PopAdLdVar
  loc_BFAC26: LitVarStr var_108, vbNullString
  loc_BFAC2B: PopAdLdVar
  loc_BFAC2C: FLdPr Me
  loc_BFAC2F: VCallAd Control_ID_ItemNotaFlex
  loc_BFAC32: FStAdFunc var_DC
  loc_BFAC35: FLdPr var_DC
  loc_BFAC38: LateIdCallSt
  loc_BFAC40: FFreeAd var_88 = ""
  loc_BFAC47: FFree1Var var_98 = ""
  loc_BFAC4A: FLdPr Me
  loc_BFAC4D: VCallAd Control_ID_ItemNotaFlex
  loc_BFAC50: FStAdFunc var_88
  loc_BFAC53: FLdPr var_88
  loc_BFAC56: LateIdCall
  loc_BFAC5E: FFree1Ad var_88
  loc_BFAC61: LitI2_Byte &HFF
  loc_BFAC63: IStI2 Cancel
  loc_BFAC66: ExitProcHresult
  loc_BFAC67: Branch loc_BFAEC8
  loc_BFAC6A: FLdPr Me
  loc_BFAC6D: VCallAd Control_ID_ItemNotaFlex
  loc_BFAC70: FStAdFunc var_88
  loc_BFAC73: FLdPr var_88
  loc_BFAC76: LateIdLdVar var_98 DispID_10 0
  loc_BFAC7D: CI4Var
  loc_BFAC7F: CVarI4
  loc_BFAC83: PopAdLdVar
  loc_BFAC84: LitVarI4
  loc_BFAC8C: PopAdLdVar
  loc_BFAC8D: FLdPr Me
  loc_BFAC90: VCallAd Control_ID_ItemNotaFlex
  loc_BFAC93: FStAdFunc var_DC
  loc_BFAC96: FLdPr var_DC
  loc_BFAC99: LateIdCallLdVar
  loc_BFACA3: PopAd
  loc_BFACA5: FLdPr Me
  loc_BFACA8: VCallAd Control_ID_ItemNotaFlex
  loc_BFACAB: FStAdFunc var_124
  loc_BFACAE: FLdPr var_124
  loc_BFACB1: LateIdLdVar var_178 DispID_10 0
  loc_BFACB8: CI4Var
  loc_BFACBA: CVarI4
  loc_BFACBE: PopAdLdVar
  loc_BFACBF: LitVarI4
  loc_BFACC7: PopAdLdVar
  loc_BFACC8: LitI4 1
  loc_BFACCD: LitI4 1
  loc_BFACD2: LitVarStr var_108, "0.00"
  loc_BFACD7: FStVarCopyObj var_168
  loc_BFACDA: FLdRfVar var_168
  loc_BFACDD: FLdRfVar var_EC
  loc_BFACE0: CStrVarTmp
  loc_BFACE1: CVarStr var_134
  loc_BFACE4: ImpAdCallI2 Format$(, )
  loc_BFACE9: CVarStr var_188
  loc_BFACEC: PopAdLdVar
  loc_BFACED: FLdPr Me
  loc_BFACF0: VCallAd Control_ID_ItemNotaFlex
  loc_BFACF3: FStAdFunc var_158
  loc_BFACF6: FLdPr var_158
  loc_BFACF9: LateIdCallSt
  loc_BFAD01: FFreeAd var_88 = "": var_DC = "": var_124 = ""
  loc_BFAD0C: FFreeVar var_98 = "": var_EC = "": var_134 = "": var_168 = "": var_178 = ""
  loc_BFAD1B: FLdPr Me
  loc_BFAD1E: VCallAd Control_ID_ItemNotaFlex
  loc_BFAD21: FStAdFunc var_88
  loc_BFAD24: FLdPr var_88
  loc_BFAD27: LateIdLdVar var_98 DispID_10 0
  loc_BFAD2E: CI4Var
  loc_BFAD30: CVarI4
  loc_BFAD34: PopAdLdVar
  loc_BFAD35: LitVarI4
  loc_BFAD3D: PopAdLdVar
  loc_BFAD3E: FLdPr Me
  loc_BFAD41: VCallAd Control_ID_ItemNotaFlex
  loc_BFAD44: FStAdFunc var_DC
  loc_BFAD47: FLdPr var_DC
  loc_BFAD4A: LateIdCallLdVar
  loc_BFAD54: CStrVarTmp
  loc_BFAD55: CVarStr var_134
  loc_BFAD58: ImpAdCallI2 IsNumeric()
  loc_BFAD5D: FLdPr Me
  loc_BFAD60: VCallAd Control_ID_ItemNotaFlex
  loc_BFAD63: FStAdFunc var_124
  loc_BFAD66: FLdPr var_124
  loc_BFAD69: LateIdLdVar var_168 DispID_10 0
  loc_BFAD70: CI4Var
  loc_BFAD72: CVarI4
  loc_BFAD76: PopAdLdVar
  loc_BFAD77: LitVarI4
  loc_BFAD7F: PopAdLdVar
  loc_BFAD80: FLdPr Me
  loc_BFAD83: VCallAd Control_ID_ItemNotaFlex
  loc_BFAD86: FStAdFunc var_158
  loc_BFAD89: FLdPr var_158
  loc_BFAD8C: LateIdCallLdVar
  loc_BFAD96: CStrVarTmp
  loc_BFAD97: CVarStr var_188
  loc_BFAD9A: ImpAdCallI2 IsNumeric()
  loc_BFAD9F: AndI4
  loc_BFADA0: FFreeAd var_88 = "": var_DC = "": var_124 = ""
  loc_BFADAB: FFreeVar var_98 = "": var_EC = "": var_134 = "": var_168 = "": var_178 = ""
  loc_BFADBA: BranchF loc_BFAEC8
  loc_BFADBD: FLdPr Me
  loc_BFADC0: VCallAd Control_ID_ItemNotaFlex
  loc_BFADC3: FStAdFunc var_88
  loc_BFADC6: FLdPr var_88
  loc_BFADC9: LateIdLdVar var_98 DispID_10 0
  loc_BFADD0: CI4Var
  loc_BFADD2: CVarI4
  loc_BFADD6: PopAdLdVar
  loc_BFADD7: LitVarI4
  loc_BFADDF: PopAdLdVar
  loc_BFADE0: FLdPr Me
  loc_BFADE3: VCallAd Control_ID_ItemNotaFlex
  loc_BFADE6: FStAdFunc var_DC
  loc_BFADE9: FLdPr var_DC
  loc_BFADEC: LateIdCallLdVar
  loc_BFADF6: PopAd
  loc_BFADF8: FLdPr Me
  loc_BFADFB: VCallAd Control_ID_ItemNotaFlex
  loc_BFADFE: FStAdFunc var_124
  loc_BFAE01: FLdPr var_124
  loc_BFAE04: LateIdLdVar var_134 DispID_10 0
  loc_BFAE0B: CI4Var
  loc_BFAE0D: CVarI4
  loc_BFAE11: PopAdLdVar
  loc_BFAE12: LitVarI4
  loc_BFAE1A: PopAdLdVar
  loc_BFAE1B: FLdPr Me
  loc_BFAE1E: VCallAd Control_ID_ItemNotaFlex
  loc_BFAE21: FStAdFunc var_158
  loc_BFAE24: FLdPr var_158
  loc_BFAE27: LateIdCallLdVar
  loc_BFAE31: PopAd
  loc_BFAE33: FLdPr Me
  loc_BFAE36: VCallAd Control_ID_ItemNotaFlex
  loc_BFAE39: FStAdFunc var_18C
  loc_BFAE3C: FLdPr var_18C
  loc_BFAE3F: LateIdLdVar var_19C DispID_10 0
  loc_BFAE46: CI4Var
  loc_BFAE48: CVarI4
  loc_BFAE4C: PopAdLdVar
  loc_BFAE4D: LitVarI4
  loc_BFAE55: PopAdLdVar
  loc_BFAE56: LitI4 1
  loc_BFAE5B: LitI4 1
  loc_BFAE60: LitVarStr var_1BC, "0.00"
  loc_BFAE65: FStVarCopyObj var_188
  loc_BFAE68: FLdRfVar var_188
  loc_BFAE6B: FLdRfVar var_EC
  loc_BFAE6E: CStrVarTmp
  loc_BFAE6F: FStStrNoPop var_F0
  loc_BFAE72: CR8Str
  loc_BFAE74: FLdRfVar var_168
  loc_BFAE77: CStrVarTmp
  loc_BFAE78: FStStrNoPop var_F4
  loc_BFAE7B: CR8Str
  loc_BFAE7D: MulR8
  loc_BFAE7E: CVarR8
  loc_BFAE82: ImpAdCallI2 Format$(, )
  loc_BFAE87: CVarStr var_1EC
  loc_BFAE8A: PopAdLdVar
  loc_BFAE8B: FLdPr Me
  loc_BFAE8E: VCallAd Control_ID_ItemNotaFlex
  loc_BFAE91: FStAdFunc var_200
  loc_BFAE94: FLdPr var_200
  loc_BFAE97: LateIdCallSt
  loc_BFAE9F: FFreeStr var_F0 = ""
  loc_BFAEA6: FFreeAd var_88 = "": var_DC = "": var_124 = "": var_158 = "": var_18C = ""
  loc_BFAEB5: FFreeVar var_98 = "": var_EC = "": var_134 = "": var_168 = "": var_178 = "": var_188 = "": var_19C = ""
  loc_BFAEC8: FLdPr Me
  loc_BFAECB: VCallAd Control_ID_ItemNotaFlex
  loc_BFAECE: FStAdFunc var_88
  loc_BFAED1: FLdPr var_88
  loc_BFAED4: LateIdLdVar var_98 DispID_11 0
  loc_BFAEDB: CI4Var
  loc_BFAEDD: LitI4 6
  loc_BFAEE2: EqI4
  loc_BFAEE3: FLdPr Me
  loc_BFAEE6: MemLdI2 global_144
  loc_BFAEE9: OrI4
  loc_BFAEEA: FFree1Ad var_88
  loc_BFAEED: FFree1Var var_98 = ""
  loc_BFAEF0: BranchF loc_BFB2AA
  loc_BFAEF3: FLdPr Me
  loc_BFAEF6: VCallAd Control_ID_ItemNotaFlex
  loc_BFAEF9: FStAdFunc var_88
  loc_BFAEFC: FLdPr var_88
  loc_BFAEFF: LateIdLdVar var_98 DispID_10 0
  loc_BFAF06: CI4Var
  loc_BFAF08: CVarI4
  loc_BFAF0C: PopAdLdVar
  loc_BFAF0D: LitVarI4
  loc_BFAF15: PopAdLdVar
  loc_BFAF16: FLdPr Me
  loc_BFAF19: VCallAd Control_ID_ItemNotaFlex
  loc_BFAF1C: FStAdFunc var_DC
  loc_BFAF1F: FLdPr var_DC
  loc_BFAF22: LateIdCallLdVar
  loc_BFAF2C: PopAd
  loc_BFAF2E: LitStr "0"
  loc_BFAF31: LitI2_Byte &HFF
  loc_BFAF33: LitI2_Byte 0
  loc_BFAF35: LitI2_Byte 0
  loc_BFAF37: FLdRfVar var_EC
  loc_BFAF3A: CStrVarTmp
  loc_BFAF3B: FStStrNoPop var_F0
  loc_BFAF3E: LitStr "Importe Total"
  loc_BFAF41: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_BFAF46: FStStrNoPop var_F4
  loc_BFAF49: FLdPr Me
  loc_BFAF4C: MemStStrCopy
  loc_BFAF50: FFreeStr var_F0 = ""
  loc_BFAF57: FFreeAd var_88 = ""
  loc_BFAF5E: FFreeVar var_98 = ""
  loc_BFAF65: FLdPr Me
  loc_BFAF68: MemLdStr global_76
  loc_BFAF6B: LitStr vbNullString
  loc_BFAF6E: NeStr
  loc_BFAF70: BranchF loc_BFB049
  loc_BFAF73: FLdPr Me
  loc_BFAF76: VCallAd Control_ID_ItemNotaFlex
  loc_BFAF79: FStAdFunc var_88
  loc_BFAF7C: FLdPr var_88
  loc_BFAF7F: LateIdLdVar var_98 DispID_11 0
  loc_BFAF86: CI4Var
  loc_BFAF88: LitI4 6
  loc_BFAF8D: EqI4
  loc_BFAF8E: FLdPr Me
  loc_BFAF91: MemLdI2 global_144
  loc_BFAF94: OrI4
  loc_BFAF95: FFree1Ad var_88
  loc_BFAF98: FFree1Var var_98 = ""
  loc_BFAF9B: BranchF loc_BFAFE2
  loc_BFAF9E: LitI4 0
  loc_BFAFA3: FLdPr Me
  loc_BFAFA6: MemLdStr global_76
  loc_BFAFA9: LitStr " - Fila: "
  loc_BFAFAC: ConcatStr
  loc_BFAFAD: FStStrNoPop var_F0
  loc_BFAFB0: FLdPr Me
  loc_BFAFB3: VCallAd Control_ID_ItemNotaFlex
  loc_BFAFB6: FStAdFunc var_88
  loc_BFAFB9: FLdPr var_88
  loc_BFAFBC: LateIdLdVar var_98 DispID_10 0
  loc_BFAFC3: CI4Var
  loc_BFAFC5: CStrI4
  loc_BFAFC7: FStStrNoPop var_F4
  loc_BFAFCA: ConcatStr
  loc_BFAFCB: FStStrNoPop var_F8
  loc_BFAFCE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFAFD3: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFAFDC: FFree1Ad var_88
  loc_BFAFDF: FFree1Var var_98 = ""
  loc_BFAFE2: FLdPr Me
  loc_BFAFE5: VCallAd Control_ID_ItemNotaFlex
  loc_BFAFE8: FStAdFunc var_88
  loc_BFAFEB: FLdPr var_88
  loc_BFAFEE: LateIdLdVar var_98 DispID_10 0
  loc_BFAFF5: CI4Var
  loc_BFAFF7: CVarI4
  loc_BFAFFB: PopAdLdVar
  loc_BFAFFC: LitVarI4
  loc_BFB004: PopAdLdVar
  loc_BFB005: LitVarStr var_108, vbNullString
  loc_BFB00A: PopAdLdVar
  loc_BFB00B: FLdPr Me
  loc_BFB00E: VCallAd Control_ID_ItemNotaFlex
  loc_BFB011: FStAdFunc var_DC
  loc_BFB014: FLdPr var_DC
  loc_BFB017: LateIdCallSt
  loc_BFB01F: FFreeAd var_88 = ""
  loc_BFB026: FFree1Var var_98 = ""
  loc_BFB029: FLdPr Me
  loc_BFB02C: VCallAd Control_ID_ItemNotaFlex
  loc_BFB02F: FStAdFunc var_88
  loc_BFB032: FLdPr var_88
  loc_BFB035: LateIdCall
  loc_BFB03D: FFree1Ad var_88
  loc_BFB040: LitI2_Byte &HFF
  loc_BFB042: IStI2 Cancel
  loc_BFB045: ExitProcHresult
  loc_BFB046: Branch loc_BFB2AA
  loc_BFB049: FLdPr Me
  loc_BFB04C: VCallAd Control_ID_ItemNotaFlex
  loc_BFB04F: FStAdFunc var_88
  loc_BFB052: FLdPr var_88
  loc_BFB055: LateIdLdVar var_98 DispID_10 0
  loc_BFB05C: CI4Var
  loc_BFB05E: CVarI4
  loc_BFB062: PopAdLdVar
  loc_BFB063: LitVarI4
  loc_BFB06B: PopAdLdVar
  loc_BFB06C: FLdPr Me
  loc_BFB06F: VCallAd Control_ID_ItemNotaFlex
  loc_BFB072: FStAdFunc var_DC
  loc_BFB075: FLdPr var_DC
  loc_BFB078: LateIdCallLdVar
  loc_BFB082: PopAd
  loc_BFB084: FLdPr Me
  loc_BFB087: VCallAd Control_ID_ItemNotaFlex
  loc_BFB08A: FStAdFunc var_124
  loc_BFB08D: FLdPr var_124
  loc_BFB090: LateIdLdVar var_178 DispID_10 0
  loc_BFB097: CI4Var
  loc_BFB099: CVarI4
  loc_BFB09D: PopAdLdVar
  loc_BFB09E: LitVarI4
  loc_BFB0A6: PopAdLdVar
  loc_BFB0A7: LitI4 1
  loc_BFB0AC: LitI4 1
  loc_BFB0B1: LitVarStr var_108, "0.00"
  loc_BFB0B6: FStVarCopyObj var_168
  loc_BFB0B9: FLdRfVar var_168
  loc_BFB0BC: FLdRfVar var_EC
  loc_BFB0BF: CStrVarTmp
  loc_BFB0C0: CVarStr var_134
  loc_BFB0C3: ImpAdCallI2 Format$(, )
  loc_BFB0C8: CVarStr var_188
  loc_BFB0CB: PopAdLdVar
  loc_BFB0CC: FLdPr Me
  loc_BFB0CF: VCallAd Control_ID_ItemNotaFlex
  loc_BFB0D2: FStAdFunc var_158
  loc_BFB0D5: FLdPr var_158
  loc_BFB0D8: LateIdCallSt
  loc_BFB0E0: FFreeAd var_88 = "": var_DC = "": var_124 = ""
  loc_BFB0EB: FFreeVar var_98 = "": var_EC = "": var_134 = "": var_168 = "": var_178 = ""
  loc_BFB0FA: FLdPr Me
  loc_BFB0FD: VCallAd Control_ID_ItemNotaFlex
  loc_BFB100: FStAdFunc var_88
  loc_BFB103: FLdPr var_88
  loc_BFB106: LateIdLdVar var_98 DispID_10 0
  loc_BFB10D: CI4Var
  loc_BFB10F: CVarI4
  loc_BFB113: PopAdLdVar
  loc_BFB114: LitVarI4
  loc_BFB11C: PopAdLdVar
  loc_BFB11D: FLdPr Me
  loc_BFB120: VCallAd Control_ID_ItemNotaFlex
  loc_BFB123: FStAdFunc var_DC
  loc_BFB126: FLdPr var_DC
  loc_BFB129: LateIdCallLdVar
  loc_BFB133: CStrVarTmp
  loc_BFB134: FStStrNoPop var_F0
  loc_BFB137: LitStr "0"
  loc_BFB13A: EqStr
  loc_BFB13C: FLdPr Me
  loc_BFB13F: VCallAd Control_ID_ItemNotaFlex
  loc_BFB142: FStAdFunc var_124
  loc_BFB145: FLdPr var_124
  loc_BFB148: LateIdLdVar var_134 DispID_10 0
  loc_BFB14F: CI4Var
  loc_BFB151: CVarI4
  loc_BFB155: PopAdLdVar
  loc_BFB156: LitVarI4
  loc_BFB15E: PopAdLdVar
  loc_BFB15F: FLdPr Me
  loc_BFB162: VCallAd Control_ID_ItemNotaFlex
  loc_BFB165: FStAdFunc var_158
  loc_BFB168: FLdPr var_158
  loc_BFB16B: LateIdCallLdVar
  loc_BFB175: CStrVarTmp
  loc_BFB176: FStStrNoPop var_F4
  loc_BFB179: LitStr vbNullString
  loc_BFB17C: EqStr
  loc_BFB17E: OrI4
  loc_BFB17F: FFreeStr var_F0 = ""
  loc_BFB186: FFreeAd var_88 = "": var_DC = "": var_124 = ""
  loc_BFB191: FFreeVar var_98 = "": var_EC = "": var_134 = ""
  loc_BFB19C: BranchF loc_BFB2AA
  loc_BFB19F: FLdPr Me
  loc_BFB1A2: VCallAd Control_ID_ItemNotaFlex
  loc_BFB1A5: FStAdFunc var_88
  loc_BFB1A8: FLdPr var_88
  loc_BFB1AB: LateIdLdVar var_98 DispID_10 0
  loc_BFB1B2: CI4Var
  loc_BFB1B4: CVarI4
  loc_BFB1B8: PopAdLdVar
  loc_BFB1B9: LitVarI4
  loc_BFB1C1: PopAdLdVar
  loc_BFB1C2: FLdPr Me
  loc_BFB1C5: VCallAd Control_ID_ItemNotaFlex
  loc_BFB1C8: FStAdFunc var_DC
  loc_BFB1CB: FLdPr var_DC
  loc_BFB1CE: LateIdCallLdVar
  loc_BFB1D8: PopAd
  loc_BFB1DA: FLdPr Me
  loc_BFB1DD: VCallAd Control_ID_ItemNotaFlex
  loc_BFB1E0: FStAdFunc var_124
  loc_BFB1E3: FLdPr var_124
  loc_BFB1E6: LateIdLdVar var_134 DispID_10 0
  loc_BFB1ED: CI4Var
  loc_BFB1EF: CVarI4
  loc_BFB1F3: PopAdLdVar
  loc_BFB1F4: LitVarI4
  loc_BFB1FC: PopAdLdVar
  loc_BFB1FD: FLdPr Me
  loc_BFB200: VCallAd Control_ID_ItemNotaFlex
  loc_BFB203: FStAdFunc var_158
  loc_BFB206: FLdPr var_158
  loc_BFB209: LateIdCallLdVar
  loc_BFB213: PopAd
  loc_BFB215: FLdPr Me
  loc_BFB218: VCallAd Control_ID_ItemNotaFlex
  loc_BFB21B: FStAdFunc var_18C
  loc_BFB21E: FLdPr var_18C
  loc_BFB221: LateIdLdVar var_19C DispID_10 0
  loc_BFB228: CI4Var
  loc_BFB22A: CVarI4
  loc_BFB22E: PopAdLdVar
  loc_BFB22F: LitVarI4
  loc_BFB237: PopAdLdVar
  loc_BFB238: LitI4 1
  loc_BFB23D: LitI4 1
  loc_BFB242: LitVarStr var_1BC, "0.000"
  loc_BFB247: FStVarCopyObj var_188
  loc_BFB24A: FLdRfVar var_188
  loc_BFB24D: FLdRfVar var_EC
  loc_BFB250: CStrVarTmp
  loc_BFB251: FStStrNoPop var_F0
  loc_BFB254: CR8Str
  loc_BFB256: FLdRfVar var_168
  loc_BFB259: CStrVarTmp
  loc_BFB25A: FStStrNoPop var_F4
  loc_BFB25D: CR8Str
  loc_BFB25F: DivR8
  loc_BFB260: CVarR8
  loc_BFB264: ImpAdCallI2 Format$(, )
  loc_BFB269: CVarStr var_1EC
  loc_BFB26C: PopAdLdVar
  loc_BFB26D: FLdPr Me
  loc_BFB270: VCallAd Control_ID_ItemNotaFlex
  loc_BFB273: FStAdFunc var_200
  loc_BFB276: FLdPr var_200
  loc_BFB279: LateIdCallSt
  loc_BFB281: FFreeStr var_F0 = ""
  loc_BFB288: FFreeAd var_88 = "": var_DC = "": var_124 = "": var_158 = "": var_18C = ""
  loc_BFB297: FFreeVar var_98 = "": var_EC = "": var_134 = "": var_168 = "": var_178 = "": var_188 = "": var_19C = ""
  loc_BFB2AA: FLdPr Me
  loc_BFB2AD: VCallAd Control_ID_ItemNotaFlex
  loc_BFB2B0: FStAdFunc var_88
  loc_BFB2B3: FLdPr var_88
  loc_BFB2B6: LateIdLdVar var_98 DispID_11 0
  loc_BFB2BD: CI4Var
  loc_BFB2BF: LitI4 7
  loc_BFB2C4: EqI4
  loc_BFB2C5: FLdPr Me
  loc_BFB2C8: MemLdI2 global_144
  loc_BFB2CB: OrI4
  loc_BFB2CC: FFree1Ad var_88
  loc_BFB2CF: FFree1Var var_98 = ""
  loc_BFB2D2: BranchF loc_BFB439
  loc_BFB2D5: FLdPr Me
  loc_BFB2D8: VCallAd Control_ID_ItemNotaFlex
  loc_BFB2DB: FStAdFunc var_88
  loc_BFB2DE: FLdPr var_88
  loc_BFB2E1: LateIdLdVar var_98 DispID_10 0
  loc_BFB2E8: CI4Var
  loc_BFB2EA: CVarI4
  loc_BFB2EE: PopAdLdVar
  loc_BFB2EF: LitVarI4
  loc_BFB2F7: PopAdLdVar
  loc_BFB2F8: FLdPr Me
  loc_BFB2FB: VCallAd Control_ID_ItemNotaFlex
  loc_BFB2FE: FStAdFunc var_DC
  loc_BFB301: FLdPr var_DC
  loc_BFB304: LateIdCallLdVar
  loc_BFB30E: PopAd
  loc_BFB310: FLdRfVar var_F0
  loc_BFB313: FLdPr Me
  loc_BFB316:  = Me.Name
  loc_BFB31B: FLdPr Me
  loc_BFB31E: MemLdRfVar from_stack_1.global_96
  loc_BFB321: NewIfNullRf
  loc_BFB325: ILdRf var_F0
  loc_BFB328: FLdRfVar var_EC
  loc_BFB32B: CStrVarTmp
  loc_BFB32C: FStStrNoPop var_F4
  loc_BFB32F: ImpAdLdI2 MemVar_C3D064
  loc_BFB332: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_BFB337: FStStrNoPop var_F8
  loc_BFB33A: FLdPr Me
  loc_BFB33D: MemStStrCopy
  loc_BFB341: FFreeStr var_F4 = "": var_F0 = ""
  loc_BFB34A: FFreeAd var_88 = ""
  loc_BFB351: FFreeVar var_98 = ""
  loc_BFB358: FLdPr Me
  loc_BFB35B: MemLdStr global_76
  loc_BFB35E: LitStr vbNullString
  loc_BFB361: NeStr
  loc_BFB363: BranchF loc_BFB439
  loc_BFB366: FLdPr Me
  loc_BFB369: VCallAd Control_ID_ItemNotaFlex
  loc_BFB36C: FStAdFunc var_88
  loc_BFB36F: FLdPr var_88
  loc_BFB372: LateIdLdVar var_98 DispID_11 0
  loc_BFB379: CI4Var
  loc_BFB37B: LitI4 7
  loc_BFB380: EqI4
  loc_BFB381: FLdPr Me
  loc_BFB384: MemLdI2 global_144
  loc_BFB387: OrI4
  loc_BFB388: FFree1Ad var_88
  loc_BFB38B: FFree1Var var_98 = ""
  loc_BFB38E: BranchF loc_BFB3D5
  loc_BFB391: LitI4 0
  loc_BFB396: FLdPr Me
  loc_BFB399: MemLdStr global_76
  loc_BFB39C: LitStr " - Fila: "
  loc_BFB39F: ConcatStr
  loc_BFB3A0: FStStrNoPop var_F0
  loc_BFB3A3: FLdPr Me
  loc_BFB3A6: VCallAd Control_ID_ItemNotaFlex
  loc_BFB3A9: FStAdFunc var_88
  loc_BFB3AC: FLdPr var_88
  loc_BFB3AF: LateIdLdVar var_98 DispID_10 0
  loc_BFB3B6: CI4Var
  loc_BFB3B8: CStrI4
  loc_BFB3BA: FStStrNoPop var_F4
  loc_BFB3BD: ConcatStr
  loc_BFB3BE: FStStrNoPop var_F8
  loc_BFB3C1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFB3C6: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFB3CF: FFree1Ad var_88
  loc_BFB3D2: FFree1Var var_98 = ""
  loc_BFB3D5: FLdPr Me
  loc_BFB3D8: VCallAd Control_ID_ItemNotaFlex
  loc_BFB3DB: FStAdFunc var_88
  loc_BFB3DE: FLdPr var_88
  loc_BFB3E1: LateIdLdVar var_98 DispID_10 0
  loc_BFB3E8: CI4Var
  loc_BFB3EA: CVarI4
  loc_BFB3EE: PopAdLdVar
  loc_BFB3EF: LitVarI4
  loc_BFB3F7: PopAdLdVar
  loc_BFB3F8: LitVarStr var_108, vbNullString
  loc_BFB3FD: PopAdLdVar
  loc_BFB3FE: FLdPr Me
  loc_BFB401: VCallAd Control_ID_ItemNotaFlex
  loc_BFB404: FStAdFunc var_DC
  loc_BFB407: FLdPr var_DC
  loc_BFB40A: LateIdCallSt
  loc_BFB412: FFreeAd var_88 = ""
  loc_BFB419: FFree1Var var_98 = ""
  loc_BFB41C: FLdPr Me
  loc_BFB41F: VCallAd Control_ID_ItemNotaFlex
  loc_BFB422: FStAdFunc var_88
  loc_BFB425: FLdPr var_88
  loc_BFB428: LateIdCall
  loc_BFB430: FFree1Ad var_88
  loc_BFB433: LitI2_Byte &HFF
  loc_BFB435: IStI2 Cancel
  loc_BFB438: ExitProcHresult
  loc_BFB439: FLdPr Me
  loc_BFB43C: VCallAd Control_ID_ItemNotaFlex
  loc_BFB43F: FStAdFunc var_88
  loc_BFB442: FLdPr var_88
  loc_BFB445: LateIdLdVar var_98 DispID_11 0
  loc_BFB44C: CI4Var
  loc_BFB44E: LitI4 8
  loc_BFB453: EqI4
  loc_BFB454: FLdPr Me
  loc_BFB457: MemLdI2 global_144
  loc_BFB45A: OrI4
  loc_BFB45B: FFree1Ad var_88
  loc_BFB45E: FFree1Var var_98 = ""
  loc_BFB461: BranchF loc_BFB77C
  loc_BFB464: FLdPr Me
  loc_BFB467: VCallAd Control_ID_ItemNotaFlex
  loc_BFB46A: FStAdFunc var_88
  loc_BFB46D: FLdPr var_88
  loc_BFB470: LateIdLdVar var_98 DispID_10 0
  loc_BFB477: CI4Var
  loc_BFB479: CVarI4
  loc_BFB47D: PopAdLdVar
  loc_BFB47E: LitVarI4
  loc_BFB486: PopAdLdVar
  loc_BFB487: FLdPr Me
  loc_BFB48A: VCallAd Control_ID_ItemNotaFlex
  loc_BFB48D: FStAdFunc var_DC
  loc_BFB490: FLdPr var_DC
  loc_BFB493: LateIdCallLdVar
  loc_BFB49D: PopAd
  loc_BFB49F: FLdPr Me
  loc_BFB4A2: MemLdRfVar from_stack_1.global_100
  loc_BFB4A5: NewIfNullRf
  loc_BFB4A9: FLdRfVar var_EC
  loc_BFB4AC: CStrVarTmp
  loc_BFB4AD: FStStrNoPop var_F4
  loc_BFB4B0: ImpAdLdI2 MemVar_C3D064
  loc_BFB4B3: CStrUI1
  loc_BFB4B5: FStStrNoPop var_F0
  loc_BFB4B8: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_BFB4BD: FStStrNoPop var_F8
  loc_BFB4C0: FLdPr Me
  loc_BFB4C3: MemStStrCopy
  loc_BFB4C7: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFB4D0: FFreeAd var_88 = ""
  loc_BFB4D7: FFreeVar var_98 = ""
  loc_BFB4DE: FLdPr Me
  loc_BFB4E1: MemLdStr global_76
  loc_BFB4E4: LitStr vbNullString
  loc_BFB4E7: NeStr
  loc_BFB4E9: BranchF loc_BFB5C2
  loc_BFB4EC: FLdPr Me
  loc_BFB4EF: VCallAd Control_ID_ItemNotaFlex
  loc_BFB4F2: FStAdFunc var_88
  loc_BFB4F5: FLdPr var_88
  loc_BFB4F8: LateIdLdVar var_98 DispID_11 0
  loc_BFB4FF: CI4Var
  loc_BFB501: LitI4 8
  loc_BFB506: EqI4
  loc_BFB507: FLdPr Me
  loc_BFB50A: MemLdI2 global_144
  loc_BFB50D: OrI4
  loc_BFB50E: FFree1Ad var_88
  loc_BFB511: FFree1Var var_98 = ""
  loc_BFB514: BranchF loc_BFB55B
  loc_BFB517: LitI4 0
  loc_BFB51C: FLdPr Me
  loc_BFB51F: MemLdStr global_76
  loc_BFB522: LitStr " - Fila: "
  loc_BFB525: ConcatStr
  loc_BFB526: FStStrNoPop var_F0
  loc_BFB529: FLdPr Me
  loc_BFB52C: VCallAd Control_ID_ItemNotaFlex
  loc_BFB52F: FStAdFunc var_88
  loc_BFB532: FLdPr var_88
  loc_BFB535: LateIdLdVar var_98 DispID_10 0
  loc_BFB53C: CI4Var
  loc_BFB53E: CStrI4
  loc_BFB540: FStStrNoPop var_F4
  loc_BFB543: ConcatStr
  loc_BFB544: FStStrNoPop var_F8
  loc_BFB547: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFB54C: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFB555: FFree1Ad var_88
  loc_BFB558: FFree1Var var_98 = ""
  loc_BFB55B: FLdPr Me
  loc_BFB55E: VCallAd Control_ID_ItemNotaFlex
  loc_BFB561: FStAdFunc var_88
  loc_BFB564: FLdPr var_88
  loc_BFB567: LateIdLdVar var_98 DispID_10 0
  loc_BFB56E: CI4Var
  loc_BFB570: CVarI4
  loc_BFB574: PopAdLdVar
  loc_BFB575: LitVarI4
  loc_BFB57D: PopAdLdVar
  loc_BFB57E: LitVarStr var_108, vbNullString
  loc_BFB583: PopAdLdVar
  loc_BFB584: FLdPr Me
  loc_BFB587: VCallAd Control_ID_ItemNotaFlex
  loc_BFB58A: FStAdFunc var_DC
  loc_BFB58D: FLdPr var_DC
  loc_BFB590: LateIdCallSt
  loc_BFB598: FFreeAd var_88 = ""
  loc_BFB59F: FFree1Var var_98 = ""
  loc_BFB5A2: FLdPr Me
  loc_BFB5A5: VCallAd Control_ID_ItemNotaFlex
  loc_BFB5A8: FStAdFunc var_88
  loc_BFB5AB: FLdPr var_88
  loc_BFB5AE: LateIdCall
  loc_BFB5B6: FFree1Ad var_88
  loc_BFB5B9: LitI2_Byte &HFF
  loc_BFB5BB: IStI2 Cancel
  loc_BFB5BE: ExitProcHresult
  loc_BFB5BF: Branch loc_BFB77C
  loc_BFB5C2: FLdPr Me
  loc_BFB5C5: VCallAd Control_ID_ItemNotaFlex
  loc_BFB5C8: FStAdFunc var_88
  loc_BFB5CB: FLdPr var_88
  loc_BFB5CE: LateIdLdVar var_98 DispID_10 0
  loc_BFB5D5: CI4Var
  loc_BFB5D7: CVarI4
  loc_BFB5DB: PopAdLdVar
  loc_BFB5DC: LitVarI4
  loc_BFB5E4: PopAdLdVar
  loc_BFB5E5: FLdPr Me
  loc_BFB5E8: VCallAd Control_ID_ItemNotaFlex
  loc_BFB5EB: FStAdFunc var_DC
  loc_BFB5EE: FLdPr var_DC
  loc_BFB5F1: LateIdCallLdVar
  loc_BFB5FB: CStrVarTmp
  loc_BFB5FC: FStStrNoPop var_F0
  loc_BFB5FF: LitStr vbNullString
  loc_BFB602: EqStr
  loc_BFB604: FFree1Str var_F0
  loc_BFB607: FFreeAd var_88 = ""
  loc_BFB60E: FFreeVar var_98 = ""
  loc_BFB615: BranchF loc_BFB675
  loc_BFB618: FLdPr Me
  loc_BFB61B: VCallAd Control_ID_ItemNotaFlex
  loc_BFB61E: FStAdFunc var_88
  loc_BFB621: FLdPr var_88
  loc_BFB624: LateIdLdVar var_98 DispID_10 0
  loc_BFB62B: CI4Var
  loc_BFB62D: CVarI4
  loc_BFB631: PopAdLdVar
  loc_BFB632: LitVarI4
  loc_BFB63A: PopAdLdVar
  loc_BFB63B: FLdRfVar var_F0
  loc_BFB63E: FLdPr Me
  loc_BFB641: MemLdRfVar from_stack_1.global_100
  loc_BFB644: NewIfNullPr tblunidadgasto
  loc_BFB647: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_BFB64C: FLdZeroAd var_F0
  loc_BFB64F: CVarStr var_EC
  loc_BFB652: PopAdLdVar
  loc_BFB653: FLdPr Me
  loc_BFB656: VCallAd Control_ID_ItemNotaFlex
  loc_BFB659: FStAdFunc var_DC
  loc_BFB65C: FLdPr var_DC
  loc_BFB65F: LateIdCallSt
  loc_BFB667: FFreeAd var_88 = ""
  loc_BFB66E: FFreeVar var_98 = ""
  loc_BFB675: FLdRfVar var_F0
  loc_BFB678: FLdPr Me
  loc_BFB67B: MemLdRfVar from_stack_1.global_96
  loc_BFB67E: NewIfNullPr tblorganigrama
  loc_BFB681: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_BFB686: ILdRf var_F0
  loc_BFB689: LitStr vbNullString
  loc_BFB68C: EqStr
  loc_BFB68E: FFree1Str var_F0
  loc_BFB691: BranchF loc_BFB6EB
  loc_BFB694: LitStr "Ingrese el código de OFICINA. Verifique..."
  loc_BFB697: FLdPr Me
  loc_BFB69A: MemStStrCopy
  loc_BFB69E: LitI4 0
  loc_BFB6A3: FLdPr Me
  loc_BFB6A6: MemLdStr global_76
  loc_BFB6A9: LitStr " - Fila: "
  loc_BFB6AC: ConcatStr
  loc_BFB6AD: FStStrNoPop var_F0
  loc_BFB6B0: FLdPr Me
  loc_BFB6B3: VCallAd Control_ID_ItemNotaFlex
  loc_BFB6B6: FStAdFunc var_88
  loc_BFB6B9: FLdPr var_88
  loc_BFB6BC: LateIdLdVar var_98 DispID_10 0
  loc_BFB6C3: CI4Var
  loc_BFB6C5: CStrI4
  loc_BFB6C7: FStStrNoPop var_F4
  loc_BFB6CA: ConcatStr
  loc_BFB6CB: FStStrNoPop var_F8
  loc_BFB6CE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFB6D3: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFB6DC: FFree1Ad var_88
  loc_BFB6DF: FFree1Var var_98 = ""
  loc_BFB6E2: LitI2_Byte &HFF
  loc_BFB6E4: IStI2 Cancel
  loc_BFB6E7: ExitProcHresult
  loc_BFB6E8: Branch loc_BFB77C
  loc_BFB6EB: FLdRfVar var_F0
  loc_BFB6EE: FLdPr Me
  loc_BFB6F1: MemLdRfVar from_stack_1.global_96
  loc_BFB6F4: NewIfNullPr tblorganigrama
  loc_BFB6F7: from_stack_1v = tblorganigrama.UGreqOrgaGet()
  loc_BFB6FC: ILdRf var_F0
  loc_BFB6FF: LitStr "1"
  loc_BFB702: EqStr
  loc_BFB704: FLdRfVar var_F4
  loc_BFB707: FLdPr Me
  loc_BFB70A: MemLdRfVar from_stack_1.global_100
  loc_BFB70D: NewIfNullPr tblunidadgasto
  loc_BFB710: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_BFB715: ILdRf var_F4
  loc_BFB718: LitStr "1"
  loc_BFB71B: EqStr
  loc_BFB71D: AndI4
  loc_BFB71E: FFreeStr var_F0 = ""
  loc_BFB725: BranchF loc_BFB77C
  loc_BFB728: LitStr "La Unidad de Gasto NO puede ser 1. Verifique..."
  loc_BFB72B: FLdPr Me
  loc_BFB72E: MemStStrCopy
  loc_BFB732: LitI4 0
  loc_BFB737: FLdPr Me
  loc_BFB73A: MemLdStr global_76
  loc_BFB73D: LitStr " - Fila: "
  loc_BFB740: ConcatStr
  loc_BFB741: FStStrNoPop var_F0
  loc_BFB744: FLdPr Me
  loc_BFB747: VCallAd Control_ID_ItemNotaFlex
  loc_BFB74A: FStAdFunc var_88
  loc_BFB74D: FLdPr var_88
  loc_BFB750: LateIdLdVar var_98 DispID_10 0
  loc_BFB757: CI4Var
  loc_BFB759: CStrI4
  loc_BFB75B: FStStrNoPop var_F4
  loc_BFB75E: ConcatStr
  loc_BFB75F: FStStrNoPop var_F8
  loc_BFB762: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFB767: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFB770: FFree1Ad var_88
  loc_BFB773: FFree1Var var_98 = ""
  loc_BFB776: LitI2_Byte &HFF
  loc_BFB778: IStI2 Cancel
  loc_BFB77B: ExitProcHresult
  loc_BFB77C: FLdPr Me
  loc_BFB77F: VCallAd Control_ID_ItemNotaFlex
  loc_BFB782: FStAdFunc var_88
  loc_BFB785: FLdPr var_88
  loc_BFB788: LateIdLdVar var_98 DispID_11 0
  loc_BFB78F: CI4Var
  loc_BFB791: LitI4 9
  loc_BFB796: EqI4
  loc_BFB797: FLdPr Me
  loc_BFB79A: MemLdI2 global_144
  loc_BFB79D: OrI4
  loc_BFB79E: FFree1Ad var_88
  loc_BFB7A1: FFree1Var var_98 = ""
  loc_BFB7A4: BranchF loc_BFB9E9
  loc_BFB7A7: FLdPr Me
  loc_BFB7AA: VCallAd Control_ID_ItemNotaFlex
  loc_BFB7AD: FStAdFunc var_88
  loc_BFB7B0: FLdPr var_88
  loc_BFB7B3: LateIdLdVar var_98 DispID_10 0
  loc_BFB7BA: CI4Var
  loc_BFB7BC: CVarI4
  loc_BFB7C0: PopAdLdVar
  loc_BFB7C1: LitVarI4
  loc_BFB7C9: PopAdLdVar
  loc_BFB7CA: FLdPr Me
  loc_BFB7CD: VCallAd Control_ID_ItemNotaFlex
  loc_BFB7D0: FStAdFunc var_DC
  loc_BFB7D3: FLdPr var_DC
  loc_BFB7D6: LateIdCallLdVar
  loc_BFB7E0: PopAd
  loc_BFB7E2: FLdPr Me
  loc_BFB7E5: MemLdRfVar from_stack_1.global_104
  loc_BFB7E8: NewIfNullRf
  loc_BFB7EC: FLdRfVar var_EC
  loc_BFB7EF: CStrVarTmp
  loc_BFB7F0: FStStrNoPop var_F0
  loc_BFB7F3: ImpAdLdI2 MemVar_C3D064
  loc_BFB7F6: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_BFB7FB: FStStrNoPop var_F4
  loc_BFB7FE: FLdPr Me
  loc_BFB801: MemStStrCopy
  loc_BFB805: FFreeStr var_F0 = ""
  loc_BFB80C: FFreeAd var_88 = ""
  loc_BFB813: FFreeVar var_98 = ""
  loc_BFB81A: FLdPr Me
  loc_BFB81D: MemLdStr global_76
  loc_BFB820: LitStr vbNullString
  loc_BFB823: NeStr
  loc_BFB825: BranchF loc_BFB90E
  loc_BFB828: FLdPr Me
  loc_BFB82B: VCallAd Control_ID_ItemNotaFlex
  loc_BFB82E: FStAdFunc var_88
  loc_BFB831: FLdPr var_88
  loc_BFB834: LateIdLdVar var_98 DispID_11 0
  loc_BFB83B: CI4Var
  loc_BFB83D: LitI4 9
  loc_BFB842: EqI4
  loc_BFB843: FLdPr Me
  loc_BFB846: MemLdI2 global_144
  loc_BFB849: OrI4
  loc_BFB84A: FFree1Ad var_88
  loc_BFB84D: FFree1Var var_98 = ""
  loc_BFB850: BranchF loc_BFB897
  loc_BFB853: LitI4 0
  loc_BFB858: FLdPr Me
  loc_BFB85B: MemLdStr global_76
  loc_BFB85E: LitStr " - Fila: "
  loc_BFB861: ConcatStr
  loc_BFB862: FStStrNoPop var_F0
  loc_BFB865: FLdPr Me
  loc_BFB868: VCallAd Control_ID_ItemNotaFlex
  loc_BFB86B: FStAdFunc var_88
  loc_BFB86E: FLdPr var_88
  loc_BFB871: LateIdLdVar var_98 DispID_10 0
  loc_BFB878: CI4Var
  loc_BFB87A: CStrI4
  loc_BFB87C: FStStrNoPop var_F4
  loc_BFB87F: ConcatStr
  loc_BFB880: FStStrNoPop var_F8
  loc_BFB883: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFB888: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFB891: FFree1Ad var_88
  loc_BFB894: FFree1Var var_98 = ""
  loc_BFB897: FLdPr Me
  loc_BFB89A: VCallAd Control_ID_ItemNotaFlex
  loc_BFB89D: FStAdFunc var_88
  loc_BFB8A0: FLdPr var_88
  loc_BFB8A3: LateIdLdVar var_98 DispID_10 0
  loc_BFB8AA: CI4Var
  loc_BFB8AC: CVarI4
  loc_BFB8B0: PopAdLdVar
  loc_BFB8B1: LitVarI4
  loc_BFB8B9: PopAdLdVar
  loc_BFB8BA: LitVarStr var_108, vbNullString
  loc_BFB8BF: PopAdLdVar
  loc_BFB8C0: FLdPr Me
  loc_BFB8C3: VCallAd Control_ID_ItemNotaFlex
  loc_BFB8C6: FStAdFunc var_DC
  loc_BFB8C9: FLdPr var_DC
  loc_BFB8CC: LateIdCallSt
  loc_BFB8D4: FFreeAd var_88 = ""
  loc_BFB8DB: FFree1Var var_98 = ""
  loc_BFB8DE: FLdPr Me
  loc_BFB8E1: VCallAd Control_ID_ItemNotaFlex
  loc_BFB8E4: FStAdFunc var_88
  loc_BFB8E7: FLdPr var_88
  loc_BFB8EA: LateIdCall
  loc_BFB8F2: FFree1Ad var_88
  loc_BFB8F5: LitStr "Municipalidad de Guaymallén"
  loc_BFB8F8: LitStr "Municipalidad de General Alvear"
  loc_BFB8FB: EqStr
  loc_BFB8FD: BranchF loc_BFB908
  loc_BFB900: LitI2_Byte 0
  loc_BFB902: IStI2 Cancel
  loc_BFB905: Branch loc_BFB90E
  loc_BFB908: LitI2_Byte &HFF
  loc_BFB90A: IStI2 Cancel
  loc_BFB90D: ExitProcHresult
  loc_BFB90E: LitStr "Municipalidad de Guaymallén"
  loc_BFB911: LitStr "Municipalidad de Guaymallén"
  loc_BFB914: EqStr
  loc_BFB916: FLdPr Me
  loc_BFB919: VCallAd Control_ID_CodiTicoMsk
  loc_BFB91C: FStAdFunc var_88
  loc_BFB91F: FLdPr var_88
  loc_BFB922: LateIdLdVar var_98 DispID_22 0
  loc_BFB929: CStrVarTmp
  loc_BFB92A: FStStrNoPop var_F0
  loc_BFB92D: LitStr "11"
  loc_BFB930: EqStr
  loc_BFB932: AndI4
  loc_BFB933: FFree1Str var_F0
  loc_BFB936: FFree1Ad var_88
  loc_BFB939: FFree1Var var_98 = ""
  loc_BFB93C: BranchF loc_BFB9E9
  loc_BFB93F: FLdPr Me
  loc_BFB942: VCallAd Control_ID_ItemNotaFlex
  loc_BFB945: FStAdFunc var_88
  loc_BFB948: FLdPr var_88
  loc_BFB94B: LateIdLdVar var_98 DispID_10 0
  loc_BFB952: CI4Var
  loc_BFB954: CVarI4
  loc_BFB958: PopAdLdVar
  loc_BFB959: LitVarI4
  loc_BFB961: PopAdLdVar
  loc_BFB962: FLdPr Me
  loc_BFB965: VCallAd Control_ID_ItemNotaFlex
  loc_BFB968: FStAdFunc var_DC
  loc_BFB96B: FLdPr var_DC
  loc_BFB96E: LateIdCallLdVar
  loc_BFB978: CStrVarTmp
  loc_BFB979: FStStrNoPop var_F0
  loc_BFB97C: LitStr "150000"
  loc_BFB97F: NeStr
  loc_BFB981: FFree1Str var_F0
  loc_BFB984: FFreeAd var_88 = ""
  loc_BFB98B: FFreeVar var_98 = ""
  loc_BFB992: BranchF loc_BFB9E9
  loc_BFB995: LitStr "La Finalidad no puede ser distinta de 150000. Verifique !!!"
  loc_BFB998: FLdPr Me
  loc_BFB99B: MemStStrCopy
  loc_BFB99F: LitI4 0
  loc_BFB9A4: FLdPr Me
  loc_BFB9A7: MemLdStr global_76
  loc_BFB9AA: LitStr " - Fila: "
  loc_BFB9AD: ConcatStr
  loc_BFB9AE: FStStrNoPop var_F0
  loc_BFB9B1: FLdPr Me
  loc_BFB9B4: VCallAd Control_ID_ItemNotaFlex
  loc_BFB9B7: FStAdFunc var_88
  loc_BFB9BA: FLdPr var_88
  loc_BFB9BD: LateIdLdVar var_98 DispID_10 0
  loc_BFB9C4: CI4Var
  loc_BFB9C6: CStrI4
  loc_BFB9C8: FStStrNoPop var_F4
  loc_BFB9CB: ConcatStr
  loc_BFB9CC: FStStrNoPop var_F8
  loc_BFB9CF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFB9D4: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFB9DD: FFree1Ad var_88
  loc_BFB9E0: FFree1Var var_98 = ""
  loc_BFB9E3: LitI2_Byte &HFF
  loc_BFB9E5: IStI2 Cancel
  loc_BFB9E8: ExitProcHresult
  loc_BFB9E9: FLdPr Me
  loc_BFB9EC: VCallAd Control_ID_ItemNotaFlex
  loc_BFB9EF: FStAdFunc var_88
  loc_BFB9F2: FLdPr var_88
  loc_BFB9F5: LateIdLdVar var_98 DispID_11 0
  loc_BFB9FC: CI4Var
  loc_BFB9FE: LitI4 &HA
  loc_BFBA03: EqI4
  loc_BFBA04: FLdPr Me
  loc_BFBA07: MemLdI2 global_144
  loc_BFBA0A: OrI4
  loc_BFBA0B: FFree1Ad var_88
  loc_BFBA0E: FFree1Var var_98 = ""
  loc_BFBA11: BranchF loc_BFC0EF
  loc_BFBA14: FLdPr Me
  loc_BFBA17: VCallAd Control_ID_ItemNotaFlex
  loc_BFBA1A: FStAdFunc var_88
  loc_BFBA1D: FLdPr var_88
  loc_BFBA20: LateIdLdVar var_98 DispID_10 0
  loc_BFBA27: CI4Var
  loc_BFBA29: CVarI4
  loc_BFBA2D: PopAdLdVar
  loc_BFBA2E: LitVarI4
  loc_BFBA36: PopAdLdVar
  loc_BFBA37: FLdPr Me
  loc_BFBA3A: VCallAd Control_ID_ItemNotaFlex
  loc_BFBA3D: FStAdFunc var_DC
  loc_BFBA40: FLdPr var_DC
  loc_BFBA43: LateIdCallLdVar
  loc_BFBA4D: CStrVarTmp
  loc_BFBA4E: FStStrNoPop var_F0
  loc_BFBA51: LitStr "0"
  loc_BFBA54: EqStr
  loc_BFBA56: FFree1Str var_F0
  loc_BFBA59: FFreeAd var_88 = ""
  loc_BFBA60: FFreeVar var_98 = ""
  loc_BFBA67: BranchF loc_BFBAB1
  loc_BFBA6A: FLdPr Me
  loc_BFBA6D: VCallAd Control_ID_ItemNotaFlex
  loc_BFBA70: FStAdFunc var_88
  loc_BFBA73: FLdPr var_88
  loc_BFBA76: LateIdLdVar var_98 DispID_10 0
  loc_BFBA7D: CI4Var
  loc_BFBA7F: CVarI4
  loc_BFBA83: PopAdLdVar
  loc_BFBA84: LitVarI4
  loc_BFBA8C: PopAdLdVar
  loc_BFBA8D: LitVarStr var_108, vbNullString
  loc_BFBA92: PopAdLdVar
  loc_BFBA93: FLdPr Me
  loc_BFBA96: VCallAd Control_ID_ItemNotaFlex
  loc_BFBA99: FStAdFunc var_DC
  loc_BFBA9C: FLdPr var_DC
  loc_BFBA9F: LateIdCallSt
  loc_BFBAA7: FFreeAd var_88 = ""
  loc_BFBAAE: FFree1Var var_98 = ""
  loc_BFBAB1: FLdPr Me
  loc_BFBAB4: VCallAd Control_ID_ItemNotaFlex
  loc_BFBAB7: FStAdFunc var_88
  loc_BFBABA: FLdPr var_88
  loc_BFBABD: LateIdLdVar var_98 DispID_10 0
  loc_BFBAC4: CI4Var
  loc_BFBAC6: CVarI4
  loc_BFBACA: PopAdLdVar
  loc_BFBACB: LitVarI4
  loc_BFBAD3: PopAdLdVar
  loc_BFBAD4: FLdPr Me
  loc_BFBAD7: VCallAd Control_ID_ItemNotaFlex
  loc_BFBADA: FStAdFunc var_DC
  loc_BFBADD: FLdPr var_DC
  loc_BFBAE0: LateIdCallLdVar
  loc_BFBAEA: CStrVarTmp
  loc_BFBAEB: FStStrNoPop var_F0
  loc_BFBAEE: LitStr vbNullString
  loc_BFBAF1: NeStr
  loc_BFBAF3: FFree1Str var_F0
  loc_BFBAF6: FFreeAd var_88 = ""
  loc_BFBAFD: FFreeVar var_98 = ""
  loc_BFBB04: BranchF loc_BFBFE1
  loc_BFBB07: FLdPr Me
  loc_BFBB0A: VCallAd Control_ID_ItemNotaFlex
  loc_BFBB0D: FStAdFunc var_88
  loc_BFBB10: FLdPr var_88
  loc_BFBB13: LateIdLdVar var_98 DispID_10 0
  loc_BFBB1A: CI4Var
  loc_BFBB1C: CVarI4
  loc_BFBB20: PopAdLdVar
  loc_BFBB21: LitVarI4
  loc_BFBB29: PopAdLdVar
  loc_BFBB2A: FLdPr Me
  loc_BFBB2D: VCallAd Control_ID_ItemNotaFlex
  loc_BFBB30: FStAdFunc var_DC
  loc_BFBB33: FLdPr var_DC
  loc_BFBB36: LateIdCallLdVar
  loc_BFBB40: PopAd
  loc_BFBB42: FLdRfVar var_F0
  loc_BFBB45: FLdPr Me
  loc_BFBB48:  = Me.Name
  loc_BFBB4D: FLdPr Me
  loc_BFBB50: MemLdRfVar from_stack_1.global_92
  loc_BFBB53: NewIfNullRf
  loc_BFBB57: ILdRf var_F0
  loc_BFBB5A: LitI2_Byte 0
  loc_BFBB5C: FLdRfVar var_EC
  loc_BFBB5F: CStrVarTmp
  loc_BFBB60: FStStrNoPop var_F4
  loc_BFBB63: ImpAdLdI2 MemVar_C3D064
  loc_BFBB66: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_BFBB6B: FStStrNoPop var_F8
  loc_BFBB6E: FLdPr Me
  loc_BFBB71: MemStStrCopy
  loc_BFBB75: FFreeStr var_F4 = "": var_F0 = ""
  loc_BFBB7E: FFreeAd var_88 = ""
  loc_BFBB85: FFreeVar var_98 = ""
  loc_BFBB8C: FLdPr Me
  loc_BFBB8F: MemLdStr global_76
  loc_BFBB92: LitStr vbNullString
  loc_BFBB95: NeStr
  loc_BFBB97: BranchF loc_BFBC70
  loc_BFBB9A: FLdPr Me
  loc_BFBB9D: VCallAd Control_ID_ItemNotaFlex
  loc_BFBBA0: FStAdFunc var_88
  loc_BFBBA3: FLdPr var_88
  loc_BFBBA6: LateIdLdVar var_98 DispID_11 0
  loc_BFBBAD: CI4Var
  loc_BFBBAF: LitI4 &HA
  loc_BFBBB4: EqI4
  loc_BFBBB5: FLdPr Me
  loc_BFBBB8: MemLdI2 global_144
  loc_BFBBBB: OrI4
  loc_BFBBBC: FFree1Ad var_88
  loc_BFBBBF: FFree1Var var_98 = ""
  loc_BFBBC2: BranchF loc_BFBC09
  loc_BFBBC5: LitI4 0
  loc_BFBBCA: FLdPr Me
  loc_BFBBCD: MemLdStr global_76
  loc_BFBBD0: LitStr " - Fila: "
  loc_BFBBD3: ConcatStr
  loc_BFBBD4: FStStrNoPop var_F0
  loc_BFBBD7: FLdPr Me
  loc_BFBBDA: VCallAd Control_ID_ItemNotaFlex
  loc_BFBBDD: FStAdFunc var_88
  loc_BFBBE0: FLdPr var_88
  loc_BFBBE3: LateIdLdVar var_98 DispID_10 0
  loc_BFBBEA: CI4Var
  loc_BFBBEC: CStrI4
  loc_BFBBEE: FStStrNoPop var_F4
  loc_BFBBF1: ConcatStr
  loc_BFBBF2: FStStrNoPop var_F8
  loc_BFBBF5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFBBFA: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFBC03: FFree1Ad var_88
  loc_BFBC06: FFree1Var var_98 = ""
  loc_BFBC09: FLdPr Me
  loc_BFBC0C: VCallAd Control_ID_ItemNotaFlex
  loc_BFBC0F: FStAdFunc var_88
  loc_BFBC12: FLdPr var_88
  loc_BFBC15: LateIdLdVar var_98 DispID_10 0
  loc_BFBC1C: CI4Var
  loc_BFBC1E: CVarI4
  loc_BFBC22: PopAdLdVar
  loc_BFBC23: LitVarI4
  loc_BFBC2B: PopAdLdVar
  loc_BFBC2C: LitVarStr var_108, vbNullString
  loc_BFBC31: PopAdLdVar
  loc_BFBC32: FLdPr Me
  loc_BFBC35: VCallAd Control_ID_ItemNotaFlex
  loc_BFBC38: FStAdFunc var_DC
  loc_BFBC3B: FLdPr var_DC
  loc_BFBC3E: LateIdCallSt
  loc_BFBC46: FFreeAd var_88 = ""
  loc_BFBC4D: FFree1Var var_98 = ""
  loc_BFBC50: FLdPr Me
  loc_BFBC53: VCallAd Control_ID_ItemNotaFlex
  loc_BFBC56: FStAdFunc var_88
  loc_BFBC59: FLdPr var_88
  loc_BFBC5C: LateIdCall
  loc_BFBC64: FFree1Ad var_88
  loc_BFBC67: LitI2_Byte &HFF
  loc_BFBC69: IStI2 Cancel
  loc_BFBC6C: ExitProcHresult
  loc_BFBC6D: Branch loc_BFBFDE
  loc_BFBC70: LitI2_Byte 0
  loc_BFBC72: BranchF loc_BFBE74
  loc_BFBC75: LitStr "SELECT * FROM insupart WHERE PeriInfo = "
  loc_BFBC78: ImpAdLdI2 MemVar_C3D064
  loc_BFBC7B: CStrUI1
  loc_BFBC7D: FStStrNoPop var_F0
  loc_BFBC80: ConcatStr
  loc_BFBC81: FStStrNoPop var_F4
  loc_BFBC84: LitStr " AND CodiPart = '"
  loc_BFBC87: ConcatStr
  loc_BFBC88: FStStrNoPop var_F8
  loc_BFBC8B: FLdPr Me
  loc_BFBC8E: VCallAd Control_ID_ItemNotaFlex
  loc_BFBC91: FStAdFunc var_88
  loc_BFBC94: FLdPr var_88
  loc_BFBC97: LateIdLdVar var_98 DispID_10 0
  loc_BFBC9E: CI4Var
  loc_BFBCA0: CVarI4
  loc_BFBCA4: PopAdLdVar
  loc_BFBCA5: LitVarI4
  loc_BFBCAD: PopAdLdVar
  loc_BFBCAE: FLdPr Me
  loc_BFBCB1: VCallAd Control_ID_ItemNotaFlex
  loc_BFBCB4: FStAdFunc var_DC
  loc_BFBCB7: FLdPr var_DC
  loc_BFBCBA: LateIdCallLdVar
  loc_BFBCC4: CStrVarTmp
  loc_BFBCC5: FStStrNoPop var_224
  loc_BFBCC8: ConcatStr
  loc_BFBCC9: FStStrNoPop var_228
  loc_BFBCCC: LitStr "' AND CodiInsu = '"
  loc_BFBCCF: ConcatStr
  loc_BFBCD0: FStStrNoPop var_22C
  loc_BFBCD3: FLdPr Me
  loc_BFBCD6: VCallAd Control_ID_ItemNotaFlex
  loc_BFBCD9: FStAdFunc var_124
  loc_BFBCDC: FLdPr var_124
  loc_BFBCDF: LateIdLdVar var_134 DispID_10 0
  loc_BFBCE6: CI4Var
  loc_BFBCE8: CVarI4
  loc_BFBCEC: PopAdLdVar
  loc_BFBCED: LitVarI4
  loc_BFBCF5: PopAdLdVar
  loc_BFBCF6: FLdPr Me
  loc_BFBCF9: VCallAd Control_ID_ItemNotaFlex
  loc_BFBCFC: FStAdFunc var_158
  loc_BFBCFF: FLdPr var_158
  loc_BFBD02: LateIdCallLdVar
  loc_BFBD0C: CStrVarTmp
  loc_BFBD0D: FStStrNoPop var_230
  loc_BFBD10: ConcatStr
  loc_BFBD11: FStStrNoPop var_234
  loc_BFBD14: LitStr "'"
  loc_BFBD17: ConcatStr
  loc_BFBD18: FStStrNoPop var_238
  loc_BFBD1B: FLdPr Me
  loc_BFBD1E: MemLdRfVar from_stack_1.global_64
  loc_BFBD21: NewIfNullPr clsinsupart
  loc_BFBD24: Call clsinsupart.RedefineRS(from_stack_1v)
  loc_BFBD29: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_224 = "": var_228 = "": var_22C = "": var_230 = "": var_234 = ""
  loc_BFBD3E: FFreeAd var_88 = "": var_DC = "": var_124 = ""
  loc_BFBD49: FFreeVar var_98 = "": var_EC = "": var_134 = ""
  loc_BFBD54: FLdRfVar var_23C
  loc_BFBD57: FLdPr Me
  loc_BFBD5A: MemLdRfVar from_stack_1.global_64
  loc_BFBD5D: NewIfNullPr clsinsupart
  loc_BFBD60: from_stack_1 = clsinsupart.RecordCount
  loc_BFBD65: ILdRf var_23C
  loc_BFBD68: LitI4 0
  loc_BFBD6D: EqI4
  loc_BFBD6E: BranchF loc_BFBE74
  loc_BFBD71: LitStr "La Partida NO Corresponde al Insumo. Verifique..."
  loc_BFBD74: FLdPr Me
  loc_BFBD77: MemStStrCopy
  loc_BFBD7B: FLdPr Me
  loc_BFBD7E: MemLdStr global_76
  loc_BFBD81: LitStr vbNullString
  loc_BFBD84: NeStr
  loc_BFBD86: BranchF loc_BFBE74
  loc_BFBD89: FLdPr Me
  loc_BFBD8C: VCallAd Control_ID_ItemNotaFlex
  loc_BFBD8F: FStAdFunc var_88
  loc_BFBD92: FLdPr var_88
  loc_BFBD95: LateIdLdVar var_98 DispID_11 0
  loc_BFBD9C: CI4Var
  loc_BFBD9E: LitI4 &HA
  loc_BFBDA3: EqI4
  loc_BFBDA4: FLdPr Me
  loc_BFBDA7: MemLdI2 global_144
  loc_BFBDAA: OrI4
  loc_BFBDAB: FFree1Ad var_88
  loc_BFBDAE: FFree1Var var_98 = ""
  loc_BFBDB1: BranchF loc_BFBDF8
  loc_BFBDB4: LitI4 0
  loc_BFBDB9: FLdPr Me
  loc_BFBDBC: MemLdStr global_76
  loc_BFBDBF: LitStr " - Fila: "
  loc_BFBDC2: ConcatStr
  loc_BFBDC3: FStStrNoPop var_F0
  loc_BFBDC6: FLdPr Me
  loc_BFBDC9: VCallAd Control_ID_ItemNotaFlex
  loc_BFBDCC: FStAdFunc var_88
  loc_BFBDCF: FLdPr var_88
  loc_BFBDD2: LateIdLdVar var_98 DispID_10 0
  loc_BFBDD9: CI4Var
  loc_BFBDDB: CStrI4
  loc_BFBDDD: FStStrNoPop var_F4
  loc_BFBDE0: ConcatStr
  loc_BFBDE1: FStStrNoPop var_F8
  loc_BFBDE4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFBDE9: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFBDF2: FFree1Ad var_88
  loc_BFBDF5: FFree1Var var_98 = ""
  loc_BFBDF8: FLdPr Me
  loc_BFBDFB: VCallAd Control_ID_ItemNotaFlex
  loc_BFBDFE: FStAdFunc var_88
  loc_BFBE01: FLdPr var_88
  loc_BFBE04: LateIdLdVar var_98 DispID_10 0
  loc_BFBE0B: CI4Var
  loc_BFBE0D: CVarI4
  loc_BFBE11: PopAdLdVar
  loc_BFBE12: LitVarI4
  loc_BFBE1A: PopAdLdVar
  loc_BFBE1B: LitVarStr var_108, vbNullString
  loc_BFBE20: PopAdLdVar
  loc_BFBE21: FLdPr Me
  loc_BFBE24: VCallAd Control_ID_ItemNotaFlex
  loc_BFBE27: FStAdFunc var_DC
  loc_BFBE2A: FLdPr var_DC
  loc_BFBE2D: LateIdCallSt
  loc_BFBE35: FFreeAd var_88 = ""
  loc_BFBE3C: FFree1Var var_98 = ""
  loc_BFBE3F: FLdPr Me
  loc_BFBE42: VCallAd Control_ID_ItemNotaFlex
  loc_BFBE45: FStAdFunc var_88
  loc_BFBE48: FLdPr var_88
  loc_BFBE4B: LateIdLdVar var_98 DispID_13 -32767
  loc_BFBE52: CBoolVar
  loc_BFBE54: FFree1Ad var_88
  loc_BFBE57: FFree1Var var_98 = ""
  loc_BFBE5A: BranchF loc_BFBE74
  loc_BFBE5D: FLdPr Me
  loc_BFBE60: VCallAd Control_ID_ItemNotaFlex
  loc_BFBE63: FStAdFunc var_88
  loc_BFBE66: FLdPr var_88
  loc_BFBE69: LateIdCall
  loc_BFBE71: FFree1Ad var_88
  loc_BFBE74: FLdPr Me
  loc_BFBE77: MemLdUI1 global_74
  loc_BFBE7B: LitI2_Byte 2
  loc_BFBE7D: EqI2
  loc_BFBE7E: BranchF loc_BFBE84
  loc_BFBE81: Branch loc_BFBF55
  loc_BFBE84: FLdPr Me
  loc_BFBE87: MemLdUI1 global_74
  loc_BFBE8B: LitI2_Byte 1
  loc_BFBE8D: EqI2
  loc_BFBE8E: BranchF loc_BFBF55
  loc_BFBE91: FLdPr Me
  loc_BFBE94: VCallAd Control_ID_ItemNotaFlex
  loc_BFBE97: FStAdFunc var_88
  loc_BFBE9A: FLdPr var_88
  loc_BFBE9D: LateIdLdVar var_98 DispID_10 0
  loc_BFBEA4: CI4Var
  loc_BFBEA6: CVarI4
  loc_BFBEAA: PopAdLdVar
  loc_BFBEAB: LitVarI4
  loc_BFBEB3: PopAdLdVar
  loc_BFBEB4: FLdPr Me
  loc_BFBEB7: VCallAd Control_ID_ItemNotaFlex
  loc_BFBEBA: FStAdFunc var_DC
  loc_BFBEBD: FLdPr var_DC
  loc_BFBEC0: LateIdCallLdVar
  loc_BFBECA: PopAd
  loc_BFBECC: FLdPr Me
  loc_BFBECF: VCallAd Control_ID_FechNopeMsk
  loc_BFBED2: FStAdFunc var_124
  loc_BFBED5: FLdPr var_124
  loc_BFBED8: LateIdLdVar var_134 DispID_15 0
  loc_BFBEDF: PopAd
  loc_BFBEE1: FLdRfVar var_F8
  loc_BFBEE4: LitI2_Byte 0
  loc_BFBEE6: PopTmpLdAd2 var_11A
  loc_BFBEE9: LitStr "0"
  loc_BFBEEC: FLdRfVar var_134
  loc_BFBEEF: CStrVarTmp
  loc_BFBEF0: FStStrNoPop var_F4
  loc_BFBEF3: FLdPr Me
  loc_BFBEF6: MemLdRfVar from_stack_1.global_100
  loc_BFBEF9: NewIfNullRf
  loc_BFBEFD: FLdPr Me
  loc_BFBF00: MemLdRfVar from_stack_1.global_104
  loc_BFBF03: NewIfNullRf
  loc_BFBF07: FLdPr Me
  loc_BFBF0A: MemLdRfVar from_stack_1.global_96
  loc_BFBF0D: NewIfNullRf
  loc_BFBF11: FLdPr Me
  loc_BFBF14: MemLdRfVar from_stack_1.global_92
  loc_BFBF17: NewIfNullRf
  loc_BFBF1B: FLdRfVar var_EC
  loc_BFBF1E: CStrVarTmp
  loc_BFBF1F: FStStrNoPop var_F0
  loc_BFBF22: FLdPr Me
  loc_BFBF25: MemLdRfVar from_stack_1.global_60
  loc_BFBF28: NewIfNullPr clsimputacion
  loc_BFBF2B: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BFBF30: ILdRf var_F8
  loc_BFBF33: FLdPr Me
  loc_BFBF36: MemStStrCopy
  loc_BFBF3A: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFBF43: FFreeAd var_88 = "": var_DC = ""
  loc_BFBF4C: FFreeVar var_98 = "": var_EC = ""
  loc_BFBF55: FLdPr Me
  loc_BFBF58: MemLdStr global_76
  loc_BFBF5B: LitStr vbNullString
  loc_BFBF5E: NeStr
  loc_BFBF60: BranchF loc_BFBFDE
  loc_BFBF63: LitStr "Municipalidad de Guaymallén"
  loc_BFBF66: LitStr "Municipalidad de Malargüe"
  loc_BFBF69: EqStr
  loc_BFBF6B: BranchF loc_BFBFD4
  loc_BFBF6E: FLdPr Me
  loc_BFBF71: MemLdUI1 global_74
  loc_BFBF75: CI2UI1
  loc_BFBF77: LitI2_Byte 1
  loc_BFBF79: EqI2
  loc_BFBF7A: BranchF loc_BFBFA8
  loc_BFBF7D: LitI4 0
  loc_BFBF82: FLdPr Me
  loc_BFBF85: MemLdStr global_76
  loc_BFBF88: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFBF8D: FLdPr Me
  loc_BFBF90: VCallAd Control_ID_ItemNotaFlex
  loc_BFBF93: FStAdFunc var_88
  loc_BFBF96: FLdPr var_88
  loc_BFBF99: LateIdCall
  loc_BFBFA1: FFree1Ad var_88
  loc_BFBFA4: ExitProcHresult
  loc_BFBFA5: Branch loc_BFBFD1
  loc_BFBFA8: FLdPr Me
  loc_BFBFAB: MemLdUI1 global_74
  loc_BFBFAF: CI2UI1
  loc_BFBFB1: LitI2_Byte 2
  loc_BFBFB3: EqI2
  loc_BFBFB4: BranchF loc_BFBFD1
  loc_BFBFB7: LitI4 0
  loc_BFBFBC: FLdPr Me
  loc_BFBFBF: MemLdStr global_76
  loc_BFBFC2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFBFC7: LitStr vbNullString
  loc_BFBFCA: FLdPr Me
  loc_BFBFCD: MemStStrCopy
  loc_BFBFD1: Branch loc_BFBFDE
  loc_BFBFD4: LitStr vbNullString
  loc_BFBFD7: FLdPr Me
  loc_BFBFDA: MemStStrCopy
  loc_BFBFDE: Branch loc_BFC0EF
  loc_BFBFE1: LitStr "Municipalidad de Guaymallén"
  loc_BFBFE4: LitStr "Municipalidad de Malargüe"
  loc_BFBFE7: EqStr
  loc_BFBFE9: BranchF loc_BFC0EF
  loc_BFBFEC: LitStr "Debe ingresar la partida. Verifique..."
  loc_BFBFEF: FLdPr Me
  loc_BFBFF2: MemStStrCopy
  loc_BFBFF6: FLdPr Me
  loc_BFBFF9: MemLdStr global_76
  loc_BFBFFC: LitStr vbNullString
  loc_BFBFFF: NeStr
  loc_BFC001: BranchF loc_BFC0EF
  loc_BFC004: FLdPr Me
  loc_BFC007: VCallAd Control_ID_ItemNotaFlex
  loc_BFC00A: FStAdFunc var_88
  loc_BFC00D: FLdPr var_88
  loc_BFC010: LateIdLdVar var_98 DispID_11 0
  loc_BFC017: CI4Var
  loc_BFC019: LitI4 &HA
  loc_BFC01E: EqI4
  loc_BFC01F: FLdPr Me
  loc_BFC022: MemLdI2 global_144
  loc_BFC025: OrI4
  loc_BFC026: FFree1Ad var_88
  loc_BFC029: FFree1Var var_98 = ""
  loc_BFC02C: BranchF loc_BFC073
  loc_BFC02F: LitI4 0
  loc_BFC034: FLdPr Me
  loc_BFC037: MemLdStr global_76
  loc_BFC03A: LitStr " - Fila: "
  loc_BFC03D: ConcatStr
  loc_BFC03E: FStStrNoPop var_F0
  loc_BFC041: FLdPr Me
  loc_BFC044: VCallAd Control_ID_ItemNotaFlex
  loc_BFC047: FStAdFunc var_88
  loc_BFC04A: FLdPr var_88
  loc_BFC04D: LateIdLdVar var_98 DispID_10 0
  loc_BFC054: CI4Var
  loc_BFC056: CStrI4
  loc_BFC058: FStStrNoPop var_F4
  loc_BFC05B: ConcatStr
  loc_BFC05C: FStStrNoPop var_F8
  loc_BFC05F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFC064: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFC06D: FFree1Ad var_88
  loc_BFC070: FFree1Var var_98 = ""
  loc_BFC073: FLdPr Me
  loc_BFC076: VCallAd Control_ID_ItemNotaFlex
  loc_BFC079: FStAdFunc var_88
  loc_BFC07C: FLdPr var_88
  loc_BFC07F: LateIdLdVar var_98 DispID_10 0
  loc_BFC086: CI4Var
  loc_BFC088: CVarI4
  loc_BFC08C: PopAdLdVar
  loc_BFC08D: LitVarI4
  loc_BFC095: PopAdLdVar
  loc_BFC096: LitVarStr var_108, vbNullString
  loc_BFC09B: PopAdLdVar
  loc_BFC09C: FLdPr Me
  loc_BFC09F: VCallAd Control_ID_ItemNotaFlex
  loc_BFC0A2: FStAdFunc var_DC
  loc_BFC0A5: FLdPr var_DC
  loc_BFC0A8: LateIdCallSt
  loc_BFC0B0: FFreeAd var_88 = ""
  loc_BFC0B7: FFree1Var var_98 = ""
  loc_BFC0BA: FLdPr Me
  loc_BFC0BD: VCallAd Control_ID_ItemNotaFlex
  loc_BFC0C0: FStAdFunc var_88
  loc_BFC0C3: FLdPr var_88
  loc_BFC0C6: LateIdLdVar var_98 DispID_13 -32767
  loc_BFC0CD: CBoolVar
  loc_BFC0CF: FFree1Ad var_88
  loc_BFC0D2: FFree1Var var_98 = ""
  loc_BFC0D5: BranchF loc_BFC0EF
  loc_BFC0D8: FLdPr Me
  loc_BFC0DB: VCallAd Control_ID_ItemNotaFlex
  loc_BFC0DE: FStAdFunc var_88
  loc_BFC0E1: FLdPr var_88
  loc_BFC0E4: LateIdCall
  loc_BFC0EC: FFree1Ad var_88
  loc_BFC0EF: FLdPr Me
  loc_BFC0F2: MemLdI2 global_144
  loc_BFC0F5: LitI2_Byte 0
  loc_BFC0F7: AndI4
  loc_BFC0F8: BranchF loc_BFC280
  loc_BFC0FB: LitI2_Byte 0
  loc_BFC0FD: BranchF loc_BFC1AD
  loc_BFC100: FLdRfVar var_F0
  loc_BFC103: FLdPr Me
  loc_BFC106: MemLdRfVar from_stack_1.global_104
  loc_BFC109: NewIfNullPr tblfinalidad
  loc_BFC10C: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_BFC111: FLdRfVar var_F4
  loc_BFC114: FLdPr Me
  loc_BFC117: MemLdRfVar from_stack_1.global_92
  loc_BFC11A: NewIfNullPr tblpartida
  loc_BFC11D: from_stack_1v = tblpartida.CredPartGestionGet()
  loc_BFC122: FLdRfVar var_F8
  loc_BFC125: FLdPr Me
  loc_BFC128: MemLdRfVar from_stack_1.global_96
  loc_BFC12B: NewIfNullPr tblorganigrama
  loc_BFC12E: from_stack_1v = tblorganigrama.CredOrgaGestionGet()
  loc_BFC133: FLdPr Me
  loc_BFC136: MemLdRfVar from_stack_1.global_124
  loc_BFC139: NewIfNullRf
  loc_BFC13D: ILdRf var_F8
  loc_BFC140: ILdRf var_F4
  loc_BFC143: ILdRf var_F0
  loc_BFC146: ImpAdLdI2 MemVar_C3D064
  loc_BFC149: ImpAdCallI2 Proc_259_13_A88BCC(, , , , )
  loc_BFC14E: NotI4
  loc_BFC14F: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFC158: BranchF loc_BFC1AA
  loc_BFC15B: LitStr "La Finalidad-Partida-Organigrama NO EXISTE. Verifique..."
  loc_BFC15E: FLdPr Me
  loc_BFC161: MemStStrCopy
  loc_BFC165: LitI4 0
  loc_BFC16A: FLdPr Me
  loc_BFC16D: MemLdStr global_76
  loc_BFC170: LitStr " - Fila: "
  loc_BFC173: ConcatStr
  loc_BFC174: FStStrNoPop var_F0
  loc_BFC177: FLdPr Me
  loc_BFC17A: VCallAd Control_ID_ItemNotaFlex
  loc_BFC17D: FStAdFunc var_88
  loc_BFC180: FLdPr var_88
  loc_BFC183: LateIdLdVar var_98 DispID_10 0
  loc_BFC18A: CI4Var
  loc_BFC18C: CStrI4
  loc_BFC18E: FStStrNoPop var_F4
  loc_BFC191: ConcatStr
  loc_BFC192: FStStrNoPop var_F8
  loc_BFC195: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFC19A: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFC1A3: FFree1Ad var_88
  loc_BFC1A6: FFree1Var var_98 = ""
  loc_BFC1A9: ExitProcHresult
  loc_BFC1AA: Branch loc_BFC280
  loc_BFC1AD: FLdRfVar var_F0
  loc_BFC1B0: FLdPr Me
  loc_BFC1B3: MemLdRfVar from_stack_1.global_92
  loc_BFC1B6: NewIfNullPr tblpartida
  loc_BFC1B9: from_stack_1v = tblpartida.CodiPartGet()
  loc_BFC1BE: ILdRf var_F0
  loc_BFC1C1: LitStr vbNullString
  loc_BFC1C4: NeStr
  loc_BFC1C6: FFree1Str var_F0
  loc_BFC1C9: BranchF loc_BFC280
  loc_BFC1CC: FLdRfVar var_F0
  loc_BFC1CF: FLdPr Me
  loc_BFC1D2: MemLdRfVar from_stack_1.global_104
  loc_BFC1D5: NewIfNullPr tblfinalidad
  loc_BFC1D8: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_BFC1DD: FLdRfVar var_F4
  loc_BFC1E0: FLdPr Me
  loc_BFC1E3: MemLdRfVar from_stack_1.global_92
  loc_BFC1E6: NewIfNullPr tblpartida
  loc_BFC1E9: from_stack_1v = tblpartida.CredPartGestionGet()
  loc_BFC1EE: FLdRfVar var_F8
  loc_BFC1F1: FLdPr Me
  loc_BFC1F4: MemLdRfVar from_stack_1.global_96
  loc_BFC1F7: NewIfNullPr tblorganigrama
  loc_BFC1FA: from_stack_1v = tblorganigrama.CredOrgaGestionGet()
  loc_BFC1FF: FLdPr Me
  loc_BFC202: MemLdRfVar from_stack_1.global_124
  loc_BFC205: NewIfNullRf
  loc_BFC209: ILdRf var_F8
  loc_BFC20C: ILdRf var_F4
  loc_BFC20F: ILdRf var_F0
  loc_BFC212: ImpAdLdI2 MemVar_C3D064
  loc_BFC215: ImpAdCallI2 Proc_259_13_A88BCC(, , , , )
  loc_BFC21A: NotI4
  loc_BFC21B: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFC224: BranchF loc_BFC280
  loc_BFC227: LitStr "Advertencia: La Finalidad-Partida-Organigrama NO EXISTE. Verifique..."
  loc_BFC22A: FLdPr Me
  loc_BFC22D: MemStStrCopy
  loc_BFC231: LitI4 0
  loc_BFC236: FLdPr Me
  loc_BFC239: MemLdStr global_76
  loc_BFC23C: LitStr " - Fila: "
  loc_BFC23F: ConcatStr
  loc_BFC240: FStStrNoPop var_F0
  loc_BFC243: FLdPr Me
  loc_BFC246: VCallAd Control_ID_ItemNotaFlex
  loc_BFC249: FStAdFunc var_88
  loc_BFC24C: FLdPr var_88
  loc_BFC24F: LateIdLdVar var_98 DispID_10 0
  loc_BFC256: CI4Var
  loc_BFC258: CStrI4
  loc_BFC25A: FStStrNoPop var_F4
  loc_BFC25D: ConcatStr
  loc_BFC25E: FStStrNoPop var_F8
  loc_BFC261: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFC266: FFreeStr var_F0 = "": var_F4 = ""
  loc_BFC26F: FFree1Ad var_88
  loc_BFC272: FFree1Var var_98 = ""
  loc_BFC275: LitStr vbNullString
  loc_BFC278: FLdPr Me
  loc_BFC27B: MemStStrCopy
  loc_BFC27F: ExitProcHresult
  loc_BFC280: Call Proc_126_69_9E76AC()
  loc_BFC285: LitI2_Byte 0
  loc_BFC287: FLdPr Me
  loc_BFC28A: MemStI2 global_144
  loc_BFC28D: ExitProcHresult
  loc_BFC28E: FLdPr arg_6808
End Sub

Private Sub ItemNotaFlex_DblClick() '9E4154
  'Data Table: 4FD0E0
  loc_9E4044: FLdPr Me
  loc_9E4047: MemLdUI1 global_74
  loc_9E404B: CI2UI1
  loc_9E404D: LitI2_Byte 0
  loc_9E404F: NeI2
  loc_9E4050: BranchF loc_9E4153
  loc_9E4053: LitStr vbNullString
  loc_9E4056: ImpAdLdRf MemVar_C3D814
  loc_9E4059: NewIfNullPr dlgDetalleNotaPedido
  loc_9E405C: Call dlgDetalleNotaPedido.sPasaDetallePut(from_stack_1v)
  loc_9E4061: FLdPr Me
  loc_9E4064: VCallAd Control_ID_
  loc_9E4067: FStAdFunc var_88
  loc_9E406A: FLdPr var_88
  loc_9E406D: LateIdLdVar var_98 DispID_10 0
  loc_9E4074: CI4Var
  loc_9E4076: CVarI4
  loc_9E407A: PopAdLdVar
  loc_9E407B: LitVarI4
  loc_9E4083: PopAdLdVar
  loc_9E4084: FLdPr Me
  loc_9E4087: VCallAd Control_ID_
  loc_9E408A: FStAdFunc var_DC
  loc_9E408D: FLdPr var_DC
  loc_9E4090: LateIdCallLdVar
  loc_9E409A: CStrVarTmp
  loc_9E409B: FStStrNoPop var_F0
  loc_9E409E: ImpAdLdRf MemVar_C3D814
  loc_9E40A1: NewIfNullPr dlgDetalleNotaPedido
  loc_9E40A4: VCallAd Control_ID_CaraItnoTxt
  loc_9E40A7: FStAdFunc var_F4
  loc_9E40AA: FLdPr var_F4
  loc_9E40AD: dlgDetalleNotaPedido.TextBox.Text = from_stack_1
  loc_9E40B2: FFree1Str var_F0
  loc_9E40B5: FFreeAd var_88 = "": var_DC = ""
  loc_9E40BE: FFreeVar var_98 = ""
  loc_9E40C5: LitVar_Missing var_B8
  loc_9E40C8: PopAdLdVar
  loc_9E40C9: LitVarI4
  loc_9E40D1: PopAdLdVar
  loc_9E40D2: ImpAdLdRf MemVar_C3D814
  loc_9E40D5: NewIfNullPr dlgDetalleNotaPedido
  loc_9E40D8: dlgDetalleNotaPedido.Show from_stack_1, from_stack_2
  loc_9E40DD: FLdRfVar var_F0
  loc_9E40E0: ImpAdLdRf MemVar_C3D814
  loc_9E40E3: NewIfNullPr dlgDetalleNotaPedido
  loc_9E40E6: from_stack_1v = dlgDetalleNotaPedido.sPasaDetalleGet()
  loc_9E40EB: ILdRf var_F0
  loc_9E40EE: LitStr vbNullString
  loc_9E40F1: NeStr
  loc_9E40F3: FFree1Str var_F0
  loc_9E40F6: BranchF loc_9E4153
  loc_9E40F9: FLdPr Me
  loc_9E40FC: VCallAd Control_ID_
  loc_9E40FF: FStAdFunc var_88
  loc_9E4102: FLdPr var_88
  loc_9E4105: LateIdLdVar var_98 DispID_10 0
  loc_9E410C: CI4Var
  loc_9E410E: CVarI4
  loc_9E4112: PopAdLdVar
  loc_9E4113: LitVarI4
  loc_9E411B: PopAdLdVar
  loc_9E411C: FLdRfVar var_F0
  loc_9E411F: ImpAdLdRf MemVar_C3D814
  loc_9E4122: NewIfNullPr dlgDetalleNotaPedido
  loc_9E4125: from_stack_1v = dlgDetalleNotaPedido.sPasaDetalleGet()
  loc_9E412A: FLdZeroAd var_F0
  loc_9E412D: CVarStr var_EC
  loc_9E4130: PopAdLdVar
  loc_9E4131: FLdPr Me
  loc_9E4134: VCallAd Control_ID_
  loc_9E4137: FStAdFunc var_DC
  loc_9E413A: FLdPr var_DC
  loc_9E413D: LateIdCallSt
  loc_9E4145: FFreeAd var_88 = ""
  loc_9E414C: FFreeVar var_98 = ""
  loc_9E4153: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_KeyPress(KeyAscii As Integer) 'BCA4B4
  'Data Table: 4FD0E0
  loc_BC9160: ILdI2 KeyAscii
  loc_BC9163: LitI2_Byte &H27
  loc_BC9165: EqI2
  loc_BC9166: ILdI2 KeyAscii
  loc_BC9169: LitI2_Byte &H22
  loc_BC916B: EqI2
  loc_BC916C: OrI4
  loc_BC916D: BranchF loc_BC9185
  loc_BC9170: LitI4 0
  loc_BC9175: LitStr "No puede ingresar comillas Simples ni Dobles. Verifique..."
  loc_BC9178: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BC917D: LitI2_Byte 0
  loc_BC917F: IStI2 KeyAscii
  loc_BC9182: Branch loc_BCA4B1
  loc_BC9185: ILdI2 KeyAscii
  loc_BC9188: LitI2_Byte &H16
  loc_BC918A: EqI2
  loc_BC918B: BranchF loc_BC9196
  loc_BC918E: LitI2_Byte 0
  loc_BC9190: IStI2 KeyAscii
  loc_BC9193: Branch loc_BCA4B1
  loc_BC9196: FLdPr Me
  loc_BC9199: MemLdUI1 global_74
  loc_BC919D: CI2UI1
  loc_BC919F: LitI2_Byte 0
  loc_BC91A1: NeI2
  loc_BC91A2: BranchF loc_BCA4B1
  loc_BC91A5: ILdI2 KeyAscii
  loc_BC91A8: LitI2_Byte &HD
  loc_BC91AA: EqI2
  loc_BC91AB: BranchF loc_BC91CD
  loc_BC91AE: Call Proc_126_70_BE093C()
  loc_BC91B3: FLdPr Me
  loc_BC91B6: VCallAd Control_ID_ItemNotaFlex
  loc_BC91B9: FStAdFunc var_88
  loc_BC91BC: FLdPr var_88
  loc_BC91BF: LateIdCall
  loc_BC91C7: FFree1Ad var_88
  loc_BC91CA: Branch loc_BCA4B1
  loc_BC91CD: ILdI2 KeyAscii
  loc_BC91D0: LitI2_Byte &H20
  loc_BC91D2: EqI2
  loc_BC91D3: BranchF loc_BC9B8F
  loc_BC91D6: FLdPr Me
  loc_BC91D9: VCallAd Control_ID_ItemNotaFlex
  loc_BC91DC: FStAdFunc var_88
  loc_BC91DF: FLdPr var_88
  loc_BC91E2: LateIdLdVar var_98 DispID_10 0
  loc_BC91E9: CI4Var
  loc_BC91EB: CVarI4
  loc_BC91EF: PopAdLdVar
  loc_BC91F0: LitVarI4
  loc_BC91F8: PopAdLdVar
  loc_BC91F9: FLdPr Me
  loc_BC91FC: VCallAd Control_ID_ItemNotaFlex
  loc_BC91FF: FStAdFunc var_DC
  loc_BC9202: FLdPr var_DC
  loc_BC9205: LateIdCallLdVar
  loc_BC920F: CStrVarTmp
  loc_BC9210: FStStrNoPop var_F0
  loc_BC9213: LitStr "No"
  loc_BC9216: EqStr
  loc_BC9218: FLdPr Me
  loc_BC921B: VCallAd Control_ID_ItemNotaFlex
  loc_BC921E: FStAdFunc var_F4
  loc_BC9221: FLdPr var_F4
  loc_BC9224: LateIdLdVar var_104 DispID_10 0
  loc_BC922B: CI4Var
  loc_BC922D: CVarI4
  loc_BC9231: PopAdLdVar
  loc_BC9232: LitVarI4
  loc_BC923A: PopAdLdVar
  loc_BC923B: FLdPr Me
  loc_BC923E: VCallAd Control_ID_ItemNotaFlex
  loc_BC9241: FStAdFunc var_148
  loc_BC9244: FLdPr var_148
  loc_BC9247: LateIdCallLdVar
  loc_BC9251: CStrVarTmp
  loc_BC9252: FStStrNoPop var_15C
  loc_BC9255: LitStr vbNullString
  loc_BC9258: EqStr
  loc_BC925A: OrI4
  loc_BC925B: FFreeStr var_F0 = ""
  loc_BC9262: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_BC926D: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_BC9278: BranchF loc_BC9B8C
  loc_BC927B: FLdPr Me
  loc_BC927E: VCallAd Control_ID_ItemNotaFlex
  loc_BC9281: FStAdFunc var_88
  loc_BC9284: FLdPr var_88
  loc_BC9287: LateIdLdVar var_98 DispID_11 0
  loc_BC928E: CI4Var
  loc_BC9290: LitI4 1
  loc_BC9295: EqI4
  loc_BC9296: FFree1Ad var_88
  loc_BC9299: FFree1Var var_98 = ""
  loc_BC929C: BranchF loc_BC955F
  loc_BC929F: LitI2_Byte 0
  loc_BC92A1: ImpAdLdRf MemVar_C3D6FC
  loc_BC92A4: NewIfNullPr bscInsumo
  loc_BC92A7: Call bscInsumo.MuestroAnuladosPut(from_stack_1v)
  loc_BC92AC: LitNothing
  loc_BC92AE: CastAd
  loc_BC92B1: FStAdFuncNoPop
  loc_BC92B4: ImpAdLdRf MemVar_C3D6FC
  loc_BC92B7: NewIfNullPr bscInsumo
  loc_BC92BA: Call bscInsumo.global_4304576Set(from_stack_1v)
  loc_BC92BF: FFree1Ad var_88
  loc_BC92C2: LitVar_Missing var_B8
  loc_BC92C5: PopAdLdVar
  loc_BC92C6: LitVarI4
  loc_BC92CE: PopAdLdVar
  loc_BC92CF: ImpAdLdRf MemVar_C3D6FC
  loc_BC92D2: NewIfNullPr bscInsumo
  loc_BC92D5: bscInsumo.Show from_stack_1, from_stack_2
  loc_BC92DA: FLdRfVar var_160
  loc_BC92DD: FLdRfVar var_88
  loc_BC92E0: ImpAdLdRf MemVar_C3D6FC
  loc_BC92E3: NewIfNullPr bscInsumo
  loc_BC92E6: from_stack_1v = bscInsumo.global_4304576Get()
  loc_BC92EB: FLdPr var_88
  loc_BC92EE: from_stack_1 = clsbase.RecordCount
  loc_BC92F3: ILdRf var_160
  loc_BC92F6: LitI4 0
  loc_BC92FB: GtI4
  loc_BC92FC: FFree1Ad var_88
  loc_BC92FF: BranchF loc_BC94A0
  loc_BC9302: FLdRfVar var_98
  loc_BC9305: FLdRfVar var_148
  loc_BC9308: LitVarStr var_A8, "CodiInsu"
  loc_BC930D: PopAdLdVar
  loc_BC930E: FLdRfVar var_F4
  loc_BC9311: FLdRfVar var_DC
  loc_BC9314: FLdRfVar var_88
  loc_BC9317: ImpAdLdRf MemVar_C3D6FC
  loc_BC931A: NewIfNullPr bscInsumo
  loc_BC931D: from_stack_1v = bscInsumo.global_4304576Get()
  loc_BC9322: FLdPr var_88
  loc_BC9325: from_stack_1v = clsbase.RsFrmGet()
  loc_BC932A: FLdPr var_DC
  loc_BC932D:  = Me.Fields
  loc_BC9332: FLdPr var_F4
  loc_BC9335: from_stack_2 = Me.Item(from_stack_1)
  loc_BC933A: FLdPr var_148
  loc_BC933D:  = Me.Value
  loc_BC9342: FLdRfVar var_98
  loc_BC9345: CStrVarTmp
  loc_BC9346: CVarStr var_EC
  loc_BC9349: PopAdLdVar
  loc_BC934A: FLdPr Me
  loc_BC934D: VCallAd Control_ID_ItemNotaFlex
  loc_BC9350: FStAdFunc var_164
  loc_BC9353: FLdPr var_164
  loc_BC9356: LateIdSt
  loc_BC935B: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = ""
  loc_BC9368: FFreeVar var_98 = ""
  loc_BC936F: FLdPr Me
  loc_BC9372: VCallAd Control_ID_ItemNotaFlex
  loc_BC9375: FStAdFunc var_164
  loc_BC9378: FLdPr var_164
  loc_BC937B: LateIdLdVar var_98 DispID_10 0
  loc_BC9382: CI4Var
  loc_BC9384: CVarI4
  loc_BC9388: PopAdLdVar
  loc_BC9389: LitVarI4
  loc_BC9391: PopAdLdVar
  loc_BC9392: FLdRfVar var_EC
  loc_BC9395: FLdRfVar var_148
  loc_BC9398: LitVarStr var_A8, "DetaInsu"
  loc_BC939D: PopAdLdVar
  loc_BC939E: FLdRfVar var_F4
  loc_BC93A1: FLdRfVar var_DC
  loc_BC93A4: FLdRfVar var_88
  loc_BC93A7: ImpAdLdRf MemVar_C3D6FC
  loc_BC93AA: NewIfNullPr bscInsumo
  loc_BC93AD: from_stack_1v = bscInsumo.global_4304576Get()
  loc_BC93B2: FLdPr var_88
  loc_BC93B5: from_stack_1v = clsbase.RsFrmGet()
  loc_BC93BA: FLdPr var_DC
  loc_BC93BD:  = Me.Fields
  loc_BC93C2: FLdPr var_F4
  loc_BC93C5: from_stack_2 = Me.Item(from_stack_1)
  loc_BC93CA: FLdPr var_148
  loc_BC93CD:  = Me.Value
  loc_BC93D2: FLdRfVar var_EC
  loc_BC93D5: CStrVarTmp
  loc_BC93D6: CVarStr var_104
  loc_BC93D9: PopAdLdVar
  loc_BC93DA: FLdPr Me
  loc_BC93DD: VCallAd Control_ID_ItemNotaFlex
  loc_BC93E0: FStAdFunc var_168
  loc_BC93E3: FLdPr var_168
  loc_BC93E6: LateIdCallSt
  loc_BC93EE: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_164 = "": var_148 = ""
  loc_BC93FD: FFreeVar var_98 = "": var_EC = ""
  loc_BC9406: FLdPr Me
  loc_BC9409: VCallAd Control_ID_ItemNotaFlex
  loc_BC940C: FStAdFunc var_164
  loc_BC940F: FLdPr var_164
  loc_BC9412: LateIdLdVar var_98 DispID_10 0
  loc_BC9419: CI4Var
  loc_BC941B: CVarI4
  loc_BC941F: PopAdLdVar
  loc_BC9420: LitVarI4
  loc_BC9428: PopAdLdVar
  loc_BC9429: FLdRfVar var_EC
  loc_BC942C: FLdRfVar var_148
  loc_BC942F: LitVarStr var_A8, "DetaInsu"
  loc_BC9434: PopAdLdVar
  loc_BC9435: FLdRfVar var_F4
  loc_BC9438: FLdRfVar var_DC
  loc_BC943B: FLdRfVar var_88
  loc_BC943E: ImpAdLdRf MemVar_C3D6FC
  loc_BC9441: NewIfNullPr bscInsumo
  loc_BC9444: from_stack_1v = bscInsumo.global_4304576Get()
  loc_BC9449: FLdPr var_88
  loc_BC944C: from_stack_1v = clsbase.RsFrmGet()
  loc_BC9451: FLdPr var_DC
  loc_BC9454:  = Me.Fields
  loc_BC9459: FLdPr var_F4
  loc_BC945C: from_stack_2 = Me.Item(from_stack_1)
  loc_BC9461: FLdPr var_148
  loc_BC9464:  = Me.Value
  loc_BC9469: FLdRfVar var_EC
  loc_BC946C: CStrVarTmp
  loc_BC946D: CVarStr var_104
  loc_BC9470: PopAdLdVar
  loc_BC9471: FLdPr Me
  loc_BC9474: VCallAd Control_ID_ItemNotaFlex
  loc_BC9477: FStAdFunc var_168
  loc_BC947A: FLdPr var_168
  loc_BC947D: LateIdCallSt
  loc_BC9485: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_164 = "": var_148 = ""
  loc_BC9494: FFreeVar var_98 = "": var_EC = ""
  loc_BC949D: Branch loc_BC955F
  loc_BC94A0: LitVarStr var_A8, vbNullString
  loc_BC94A5: PopAdLdVar
  loc_BC94A6: FLdPr Me
  loc_BC94A9: VCallAd Control_ID_ItemNotaFlex
  loc_BC94AC: FStAdFunc var_88
  loc_BC94AF: FLdPr var_88
  loc_BC94B2: LateIdSt
  loc_BC94B7: FFree1Ad var_88
  loc_BC94BA: FLdPr Me
  loc_BC94BD: VCallAd Control_ID_ItemNotaFlex
  loc_BC94C0: FStAdFunc var_88
  loc_BC94C3: FLdPr var_88
  loc_BC94C6: LateIdLdVar var_98 DispID_10 0
  loc_BC94CD: CI4Var
  loc_BC94CF: CVarI4
  loc_BC94D3: PopAdLdVar
  loc_BC94D4: LitVarI4
  loc_BC94DC: PopAdLdVar
  loc_BC94DD: LitVarStr var_114, vbNullString
  loc_BC94E2: PopAdLdVar
  loc_BC94E3: FLdPr Me
  loc_BC94E6: VCallAd Control_ID_ItemNotaFlex
  loc_BC94E9: FStAdFunc var_DC
  loc_BC94EC: FLdPr var_DC
  loc_BC94EF: LateIdCallSt
  loc_BC94F7: FFreeAd var_88 = ""
  loc_BC94FE: FFree1Var var_98 = ""
  loc_BC9501: FLdPr Me
  loc_BC9504: VCallAd Control_ID_ItemNotaFlex
  loc_BC9507: FStAdFunc var_88
  loc_BC950A: FLdPr var_88
  loc_BC950D: LateIdLdVar var_98 DispID_10 0
  loc_BC9514: CI4Var
  loc_BC9516: CVarI4
  loc_BC951A: PopAdLdVar
  loc_BC951B: LitVarI4
  loc_BC9523: PopAdLdVar
  loc_BC9524: LitVarStr var_114, vbNullString
  loc_BC9529: PopAdLdVar
  loc_BC952A: FLdPr Me
  loc_BC952D: VCallAd Control_ID_ItemNotaFlex
  loc_BC9530: FStAdFunc var_DC
  loc_BC9533: FLdPr var_DC
  loc_BC9536: LateIdCallSt
  loc_BC953E: FFreeAd var_88 = ""
  loc_BC9545: FFree1Var var_98 = ""
  loc_BC9548: FLdPr Me
  loc_BC954B: VCallAd Control_ID_ItemNotaFlex
  loc_BC954E: FStAdFunc var_88
  loc_BC9551: FLdPr var_88
  loc_BC9554: LateIdCall
  loc_BC955C: FFree1Ad var_88
  loc_BC955F: FLdPr Me
  loc_BC9562: VCallAd Control_ID_ItemNotaFlex
  loc_BC9565: FStAdFunc var_88
  loc_BC9568: FLdPr var_88
  loc_BC956B: LateIdLdVar var_98 DispID_11 0
  loc_BC9572: CI4Var
  loc_BC9574: LitI4 7
  loc_BC9579: EqI4
  loc_BC957A: FFree1Ad var_88
  loc_BC957D: FFree1Var var_98 = ""
  loc_BC9580: BranchF loc_BC9670
  loc_BC9583: LitI2_Byte 0
  loc_BC9585: ImpAdLdRf MemVar_C3D710
  loc_BC9588: NewIfNullPr bscOrganigrama
  loc_BC958B: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_BC9590: LitNothing
  loc_BC9592: CastAd
  loc_BC9595: FStAdFuncNoPop
  loc_BC9598: ImpAdLdRf MemVar_C3D710
  loc_BC959B: NewIfNullPr bscOrganigrama
  loc_BC959E: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_BC95A3: FFree1Ad var_88
  loc_BC95A6: LitVar_Missing var_B8
  loc_BC95A9: PopAdLdVar
  loc_BC95AA: LitVarI4
  loc_BC95B2: PopAdLdVar
  loc_BC95B3: ImpAdLdRf MemVar_C3D710
  loc_BC95B6: NewIfNullPr bscOrganigrama
  loc_BC95B9: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_BC95BE: FLdRfVar var_160
  loc_BC95C1: FLdRfVar var_88
  loc_BC95C4: ImpAdLdRf MemVar_C3D710
  loc_BC95C7: NewIfNullPr bscOrganigrama
  loc_BC95CA: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_BC95CF: FLdPr var_88
  loc_BC95D2: from_stack_1 = clsbase.RecordCount
  loc_BC95D7: ILdRf var_160
  loc_BC95DA: LitI4 0
  loc_BC95DF: GtI4
  loc_BC95E0: FFree1Ad var_88
  loc_BC95E3: BranchF loc_BC9656
  loc_BC95E6: FLdRfVar var_98
  loc_BC95E9: FLdRfVar var_148
  loc_BC95EC: LitVarStr var_A8, "CodiOrga"
  loc_BC95F1: PopAdLdVar
  loc_BC95F2: FLdRfVar var_F4
  loc_BC95F5: FLdRfVar var_DC
  loc_BC95F8: FLdRfVar var_88
  loc_BC95FB: ImpAdLdRf MemVar_C3D710
  loc_BC95FE: NewIfNullPr bscOrganigrama
  loc_BC9601: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_BC9606: FLdPr var_88
  loc_BC9609: from_stack_1v = clsbase.RsFrmGet()
  loc_BC960E: FLdPr var_DC
  loc_BC9611:  = Me.Fields
  loc_BC9616: FLdPr var_F4
  loc_BC9619: from_stack_2 = Me.Item(from_stack_1)
  loc_BC961E: FLdPr var_148
  loc_BC9621:  = Me.Value
  loc_BC9626: FLdRfVar var_98
  loc_BC9629: CStrVarTmp
  loc_BC962A: CVarStr var_EC
  loc_BC962D: PopAdLdVar
  loc_BC962E: FLdPr Me
  loc_BC9631: VCallAd Control_ID_ItemNotaFlex
  loc_BC9634: FStAdFunc var_164
  loc_BC9637: FLdPr var_164
  loc_BC963A: LateIdSt
  loc_BC963F: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = ""
  loc_BC964C: FFreeVar var_98 = ""
  loc_BC9653: Branch loc_BC9670
  loc_BC9656: LitVarStr var_A8, vbNullString
  loc_BC965B: PopAdLdVar
  loc_BC965C: FLdPr Me
  loc_BC965F: VCallAd Control_ID_ItemNotaFlex
  loc_BC9662: FStAdFunc var_88
  loc_BC9665: FLdPr var_88
  loc_BC9668: LateIdSt
  loc_BC966D: FFree1Ad var_88
  loc_BC9670: FLdPr Me
  loc_BC9673: VCallAd Control_ID_ItemNotaFlex
  loc_BC9676: FStAdFunc var_88
  loc_BC9679: FLdPr var_88
  loc_BC967C: LateIdLdVar var_98 DispID_11 0
  loc_BC9683: CI4Var
  loc_BC9685: LitI4 8
  loc_BC968A: EqI4
  loc_BC968B: FFree1Ad var_88
  loc_BC968E: FFree1Var var_98 = ""
  loc_BC9691: BranchF loc_BC9781
  loc_BC9694: LitI2_Byte 0
  loc_BC9696: ImpAdLdRf MemVar_C3D7D8
  loc_BC9699: NewIfNullPr bscUnidadGasto
  loc_BC969C: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_BC96A1: LitNothing
  loc_BC96A3: CastAd
  loc_BC96A6: FStAdFuncNoPop
  loc_BC96A9: ImpAdLdRf MemVar_C3D7D8
  loc_BC96AC: NewIfNullPr bscUnidadGasto
  loc_BC96AF: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_BC96B4: FFree1Ad var_88
  loc_BC96B7: LitVar_Missing var_B8
  loc_BC96BA: PopAdLdVar
  loc_BC96BB: LitVarI4
  loc_BC96C3: PopAdLdVar
  loc_BC96C4: ImpAdLdRf MemVar_C3D7D8
  loc_BC96C7: NewIfNullPr bscUnidadGasto
  loc_BC96CA: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_BC96CF: FLdRfVar var_160
  loc_BC96D2: FLdRfVar var_88
  loc_BC96D5: ImpAdLdRf MemVar_C3D7D8
  loc_BC96D8: NewIfNullPr bscUnidadGasto
  loc_BC96DB: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_BC96E0: FLdPr var_88
  loc_BC96E3: from_stack_1 = clsbase.RecordCount
  loc_BC96E8: ILdRf var_160
  loc_BC96EB: LitI4 0
  loc_BC96F0: GtI4
  loc_BC96F1: FFree1Ad var_88
  loc_BC96F4: BranchF loc_BC9767
  loc_BC96F7: FLdRfVar var_98
  loc_BC96FA: FLdRfVar var_148
  loc_BC96FD: LitVarStr var_A8, "CodiUnga"
  loc_BC9702: PopAdLdVar
  loc_BC9703: FLdRfVar var_F4
  loc_BC9706: FLdRfVar var_DC
  loc_BC9709: FLdRfVar var_88
  loc_BC970C: ImpAdLdRf MemVar_C3D7D8
  loc_BC970F: NewIfNullPr bscUnidadGasto
  loc_BC9712: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_BC9717: FLdPr var_88
  loc_BC971A: from_stack_1v = clsbase.RsFrmGet()
  loc_BC971F: FLdPr var_DC
  loc_BC9722:  = Me.Fields
  loc_BC9727: FLdPr var_F4
  loc_BC972A: from_stack_2 = Me.Item(from_stack_1)
  loc_BC972F: FLdPr var_148
  loc_BC9732:  = Me.Value
  loc_BC9737: FLdRfVar var_98
  loc_BC973A: CStrVarTmp
  loc_BC973B: CVarStr var_EC
  loc_BC973E: PopAdLdVar
  loc_BC973F: FLdPr Me
  loc_BC9742: VCallAd Control_ID_ItemNotaFlex
  loc_BC9745: FStAdFunc var_164
  loc_BC9748: FLdPr var_164
  loc_BC974B: LateIdSt
  loc_BC9750: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = ""
  loc_BC975D: FFreeVar var_98 = ""
  loc_BC9764: Branch loc_BC9781
  loc_BC9767: LitVarStr var_A8, vbNullString
  loc_BC976C: PopAdLdVar
  loc_BC976D: FLdPr Me
  loc_BC9770: VCallAd Control_ID_ItemNotaFlex
  loc_BC9773: FStAdFunc var_88
  loc_BC9776: FLdPr var_88
  loc_BC9779: LateIdSt
  loc_BC977E: FFree1Ad var_88
  loc_BC9781: FLdPr Me
  loc_BC9784: VCallAd Control_ID_ItemNotaFlex
  loc_BC9787: FStAdFunc var_88
  loc_BC978A: FLdPr var_88
  loc_BC978D: LateIdLdVar var_98 DispID_11 0
  loc_BC9794: CI4Var
  loc_BC9796: LitI4 9
  loc_BC979B: EqI4
  loc_BC979C: FFree1Ad var_88
  loc_BC979F: FFree1Var var_98 = ""
  loc_BC97A2: BranchF loc_BC9885
  loc_BC97A5: LitNothing
  loc_BC97A7: CastAd
  loc_BC97AA: FStAdFuncNoPop
  loc_BC97AD: ImpAdLdRf MemVar_C3D6E8
  loc_BC97B0: NewIfNullPr bscFinalidad
  loc_BC97B3: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_BC97B8: FFree1Ad var_88
  loc_BC97BB: LitVar_Missing var_B8
  loc_BC97BE: PopAdLdVar
  loc_BC97BF: LitVarI4
  loc_BC97C7: PopAdLdVar
  loc_BC97C8: ImpAdLdRf MemVar_C3D6E8
  loc_BC97CB: NewIfNullPr bscFinalidad
  loc_BC97CE: bscFinalidad.Show from_stack_1, from_stack_2
  loc_BC97D3: FLdRfVar var_160
  loc_BC97D6: FLdRfVar var_88
  loc_BC97D9: ImpAdLdRf MemVar_C3D6E8
  loc_BC97DC: NewIfNullPr bscFinalidad
  loc_BC97DF: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_BC97E4: FLdPr var_88
  loc_BC97E7: from_stack_1 = clsbase.RecordCount
  loc_BC97EC: ILdRf var_160
  loc_BC97EF: LitI4 0
  loc_BC97F4: GtI4
  loc_BC97F5: FFree1Ad var_88
  loc_BC97F8: BranchF loc_BC986B
  loc_BC97FB: FLdRfVar var_98
  loc_BC97FE: FLdRfVar var_148
  loc_BC9801: LitVarStr var_A8, "CodiFifu"
  loc_BC9806: PopAdLdVar
  loc_BC9807: FLdRfVar var_F4
  loc_BC980A: FLdRfVar var_DC
  loc_BC980D: FLdRfVar var_88
  loc_BC9810: ImpAdLdRf MemVar_C3D6E8
  loc_BC9813: NewIfNullPr bscFinalidad
  loc_BC9816: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_BC981B: FLdPr var_88
  loc_BC981E: from_stack_1v = clsbase.RsFrmGet()
  loc_BC9823: FLdPr var_DC
  loc_BC9826:  = Me.Fields
  loc_BC982B: FLdPr var_F4
  loc_BC982E: from_stack_2 = Me.Item(from_stack_1)
  loc_BC9833: FLdPr var_148
  loc_BC9836:  = Me.Value
  loc_BC983B: FLdRfVar var_98
  loc_BC983E: CStrVarTmp
  loc_BC983F: CVarStr var_EC
  loc_BC9842: PopAdLdVar
  loc_BC9843: FLdPr Me
  loc_BC9846: VCallAd Control_ID_ItemNotaFlex
  loc_BC9849: FStAdFunc var_164
  loc_BC984C: FLdPr var_164
  loc_BC984F: LateIdSt
  loc_BC9854: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = ""
  loc_BC9861: FFreeVar var_98 = ""
  loc_BC9868: Branch loc_BC9885
  loc_BC986B: LitVarStr var_A8, vbNullString
  loc_BC9870: PopAdLdVar
  loc_BC9871: FLdPr Me
  loc_BC9874: VCallAd Control_ID_ItemNotaFlex
  loc_BC9877: FStAdFunc var_88
  loc_BC987A: FLdPr var_88
  loc_BC987D: LateIdSt
  loc_BC9882: FFree1Ad var_88
  loc_BC9885: FLdPr Me
  loc_BC9888: VCallAd Control_ID_ItemNotaFlex
  loc_BC988B: FStAdFunc var_88
  loc_BC988E: FLdPr var_88
  loc_BC9891: LateIdLdVar var_98 DispID_11 0
  loc_BC9898: CI4Var
  loc_BC989A: LitI4 &HA
  loc_BC989F: EqI4
  loc_BC98A0: FFree1Ad var_88
  loc_BC98A3: FFree1Var var_98 = ""
  loc_BC98A6: BranchF loc_BC9B14
  loc_BC98A9: LitStr "Municipalidad de Guaymallén"
  loc_BC98AC: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_BC98AF: NeStr
  loc_BC98B1: BranchF loc_BC99F1
  loc_BC98B4: LitNothing
  loc_BC98B6: CastAd
  loc_BC98B9: FStAdFuncNoPop
  loc_BC98BC: ImpAdLdRf MemVar_C3D724
  loc_BC98BF: NewIfNullPr bscPartida
  loc_BC98C2: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_BC98C7: FFree1Ad var_88
  loc_BC98CA: FLdPr Me
  loc_BC98CD: VCallAd Control_ID_
  loc_BC98D0: FStAdFunc var_88
  loc_BC98D3: FLdPr var_88
  loc_BC98D6: LateIdLdVar var_98 DispID_10 0
  loc_BC98DD: CI4Var
  loc_BC98DF: CVarI4
  loc_BC98E3: PopAdLdVar
  loc_BC98E4: LitVarI4
  loc_BC98EC: PopAdLdVar
  loc_BC98ED: FLdPr Me
  loc_BC98F0: VCallAd Control_ID_
  loc_BC98F3: FStAdFunc var_DC
  loc_BC98F6: FLdPr var_DC
  loc_BC98F9: LateIdCallLdVar
  loc_BC9903: CStrVarTmp
  loc_BC9904: FStStrNoPop var_F0
  loc_BC9907: CI4Str
  loc_BC9908: ImpAdLdRf MemVar_C3D724
  loc_BC990B: NewIfNullPr bscPartida
  loc_BC990E: Call bscPartida.iCodiInsuPut(from_stack_1v)
  loc_BC9913: FFree1Str var_F0
  loc_BC9916: FFreeAd var_88 = ""
  loc_BC991D: FFreeVar var_98 = ""
  loc_BC9924: LitVar_Missing var_B8
  loc_BC9927: PopAdLdVar
  loc_BC9928: LitVarI4
  loc_BC9930: PopAdLdVar
  loc_BC9931: ImpAdLdRf MemVar_C3D724
  loc_BC9934: NewIfNullPr bscPartida
  loc_BC9937: bscPartida.Show from_stack_1, from_stack_2
  loc_BC993C: FLdRfVar var_160
  loc_BC993F: FLdRfVar var_88
  loc_BC9942: ImpAdLdRf MemVar_C3D724
  loc_BC9945: NewIfNullPr bscPartida
  loc_BC9948: from_stack_1v = bscPartida.global_4332396Get()
  loc_BC994D: FLdPr var_88
  loc_BC9950: from_stack_1 = clsbase.RecordCount
  loc_BC9955: ILdRf var_160
  loc_BC9958: LitI4 0
  loc_BC995D: GtI4
  loc_BC995E: FFree1Ad var_88
  loc_BC9961: BranchF loc_BC99D4
  loc_BC9964: FLdRfVar var_98
  loc_BC9967: FLdRfVar var_148
  loc_BC996A: LitVarStr var_A8, "CodiPart"
  loc_BC996F: PopAdLdVar
  loc_BC9970: FLdRfVar var_F4
  loc_BC9973: FLdRfVar var_DC
  loc_BC9976: FLdRfVar var_88
  loc_BC9979: ImpAdLdRf MemVar_C3D724
  loc_BC997C: NewIfNullPr bscPartida
  loc_BC997F: from_stack_1v = bscPartida.global_4332396Get()
  loc_BC9984: FLdPr var_88
  loc_BC9987: from_stack_1v = clsbase.RsFrmGet()
  loc_BC998C: FLdPr var_DC
  loc_BC998F:  = Me.Fields
  loc_BC9994: FLdPr var_F4
  loc_BC9997: from_stack_2 = Me.Item(from_stack_1)
  loc_BC999C: FLdPr var_148
  loc_BC999F:  = Me.Value
  loc_BC99A4: FLdRfVar var_98
  loc_BC99A7: CStrVarTmp
  loc_BC99A8: CVarStr var_EC
  loc_BC99AB: PopAdLdVar
  loc_BC99AC: FLdPr Me
  loc_BC99AF: VCallAd Control_ID_ItemNotaFlex
  loc_BC99B2: FStAdFunc var_164
  loc_BC99B5: FLdPr var_164
  loc_BC99B8: LateIdSt
  loc_BC99BD: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = ""
  loc_BC99CA: FFreeVar var_98 = ""
  loc_BC99D1: Branch loc_BC99EE
  loc_BC99D4: LitVarStr var_A8, vbNullString
  loc_BC99D9: PopAdLdVar
  loc_BC99DA: FLdPr Me
  loc_BC99DD: VCallAd Control_ID_ItemNotaFlex
  loc_BC99E0: FStAdFunc var_88
  loc_BC99E3: FLdPr var_88
  loc_BC99E6: LateIdSt
  loc_BC99EB: FFree1Ad var_88
  loc_BC99EE: Branch loc_BC9B14
  loc_BC99F1: FLdPr Me
  loc_BC99F4: VCallAd Control_ID_ItemNotaFlex
  loc_BC99F7: FStAdFunc var_88
  loc_BC99FA: FLdPr var_88
  loc_BC99FD: LateIdLdVar var_98 DispID_10 0
  loc_BC9A04: CI4Var
  loc_BC9A06: CVarI4
  loc_BC9A0A: PopAdLdVar
  loc_BC9A0B: LitVarI4
  loc_BC9A13: PopAdLdVar
  loc_BC9A14: FLdPr Me
  loc_BC9A17: VCallAd Control_ID_ItemNotaFlex
  loc_BC9A1A: FStAdFunc var_DC
  loc_BC9A1D: FLdPr var_DC
  loc_BC9A20: LateIdCallLdVar
  loc_BC9A2A: CStrVarTmp
  loc_BC9A2B: FStStrNoPop var_F0
  loc_BC9A2E: ImpAdLdRf MemVar_C3D688
  loc_BC9A31: NewIfNullPr bscAutoxUsua
  loc_BC9A34: Call bscAutoxUsua.sCodiOrgaPut(from_stack_1v)
  loc_BC9A39: FFree1Str var_F0
  loc_BC9A3C: FFreeAd var_88 = ""
  loc_BC9A43: FFreeVar var_98 = ""
  loc_BC9A4A: LitVar_Missing var_B8
  loc_BC9A4D: PopAdLdVar
  loc_BC9A4E: LitVarI4
  loc_BC9A56: PopAdLdVar
  loc_BC9A57: ImpAdLdRf MemVar_C3D688
  loc_BC9A5A: NewIfNullPr bscAutoxUsua
  loc_BC9A5D: bscAutoxUsua.Show from_stack_1, from_stack_2
  loc_BC9A62: FLdRfVar var_160
  loc_BC9A65: FLdRfVar var_88
  loc_BC9A68: ImpAdLdRf MemVar_C3D688
  loc_BC9A6B: NewIfNullPr bscAutoxUsua
  loc_BC9A6E: from_stack_1v = bscAutoxUsua.global_4322728Get()
  loc_BC9A73: FLdPr var_88
  loc_BC9A76: from_stack_1 = clsbase.RecordCount
  loc_BC9A7B: ILdRf var_160
  loc_BC9A7E: LitI4 0
  loc_BC9A83: GtI4
  loc_BC9A84: FFree1Ad var_88
  loc_BC9A87: BranchF loc_BC9AFA
  loc_BC9A8A: FLdRfVar var_98
  loc_BC9A8D: FLdRfVar var_148
  loc_BC9A90: LitVarStr var_A8, "CodiPart"
  loc_BC9A95: PopAdLdVar
  loc_BC9A96: FLdRfVar var_F4
  loc_BC9A99: FLdRfVar var_DC
  loc_BC9A9C: FLdRfVar var_88
  loc_BC9A9F: ImpAdLdRf MemVar_C3D688
  loc_BC9AA2: NewIfNullPr bscAutoxUsua
  loc_BC9AA5: from_stack_1v = bscAutoxUsua.global_4322728Get()
  loc_BC9AAA: FLdPr var_88
  loc_BC9AAD: from_stack_1v = clsbase.RsFrmGet()
  loc_BC9AB2: FLdPr var_DC
  loc_BC9AB5:  = Me.Fields
  loc_BC9ABA: FLdPr var_F4
  loc_BC9ABD: from_stack_2 = Me.Item(from_stack_1)
  loc_BC9AC2: FLdPr var_148
  loc_BC9AC5:  = Me.Value
  loc_BC9ACA: FLdRfVar var_98
  loc_BC9ACD: CStrVarTmp
  loc_BC9ACE: CVarStr var_EC
  loc_BC9AD1: PopAdLdVar
  loc_BC9AD2: FLdPr Me
  loc_BC9AD5: VCallAd Control_ID_ItemNotaFlex
  loc_BC9AD8: FStAdFunc var_164
  loc_BC9ADB: FLdPr var_164
  loc_BC9ADE: LateIdSt
  loc_BC9AE3: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = ""
  loc_BC9AF0: FFreeVar var_98 = ""
  loc_BC9AF7: Branch loc_BC9B14
  loc_BC9AFA: LitVarStr var_A8, vbNullString
  loc_BC9AFF: PopAdLdVar
  loc_BC9B00: FLdPr Me
  loc_BC9B03: VCallAd Control_ID_ItemNotaFlex
  loc_BC9B06: FStAdFunc var_88
  loc_BC9B09: FLdPr var_88
  loc_BC9B0C: LateIdSt
  loc_BC9B11: FFree1Ad var_88
  loc_BC9B14: FLdPr Me
  loc_BC9B17: VCallAd Control_ID_ItemNotaFlex
  loc_BC9B1A: FStAdFunc var_88
  loc_BC9B1D: FLdPr var_88
  loc_BC9B20: LateIdLdVar var_98 DispID_11 0
  loc_BC9B27: CI4Var
  loc_BC9B29: LitI4 3
  loc_BC9B2E: EqI4
  loc_BC9B2F: FFree1Ad var_88
  loc_BC9B32: FFree1Var var_98 = ""
  loc_BC9B35: BranchF loc_BC9B8C
  loc_BC9B38: FLdPr Me
  loc_BC9B3B: VCallAd Control_ID_ItemNotaFlex
  loc_BC9B3E: FStAdFunc var_88
  loc_BC9B41: FLdPr var_88
  loc_BC9B44: LateIdLdVar var_98 DispID_0 0
  loc_BC9B4B: CStrVarTmp
  loc_BC9B4C: CVarStr var_104
  loc_BC9B4F: ILdI2 KeyAscii
  loc_BC9B52: CI4UI1
  loc_BC9B53: FLdRfVar var_EC
  loc_BC9B56: ImpAdCallFPR4  = Chr()
  loc_BC9B5B: FLdRfVar var_EC
  loc_BC9B5E: AddVar var_158
  loc_BC9B62: CStrVarTmp
  loc_BC9B63: CVarStr var_178
  loc_BC9B66: PopAdLdVar
  loc_BC9B67: FLdPr Me
  loc_BC9B6A: VCallAd Control_ID_ItemNotaFlex
  loc_BC9B6D: FStAdFunc var_DC
  loc_BC9B70: FLdPr var_DC
  loc_BC9B73: LateIdSt
  loc_BC9B78: FFreeAd var_88 = ""
  loc_BC9B7F: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_158 = ""
  loc_BC9B8C: Branch loc_BCA4B1
  loc_BC9B8F: ILdI2 KeyAscii
  loc_BC9B92: LitI2_Byte 8
  loc_BC9B94: EqI2
  loc_BC9B95: BranchF loc_BC9DF3
  loc_BC9B98: FLdPr Me
  loc_BC9B9B: VCallAd Control_ID_ItemNotaFlex
  loc_BC9B9E: FStAdFunc var_88
  loc_BC9BA1: FLdPr var_88
  loc_BC9BA4: LateIdLdVar var_98 DispID_10 0
  loc_BC9BAB: CI4Var
  loc_BC9BAD: CVarI4
  loc_BC9BB1: PopAdLdVar
  loc_BC9BB2: LitVarI4
  loc_BC9BBA: PopAdLdVar
  loc_BC9BBB: FLdPr Me
  loc_BC9BBE: VCallAd Control_ID_ItemNotaFlex
  loc_BC9BC1: FStAdFunc var_DC
  loc_BC9BC4: FLdPr var_DC
  loc_BC9BC7: LateIdCallLdVar
  loc_BC9BD1: CStrVarTmp
  loc_BC9BD2: FStStrNoPop var_F0
  loc_BC9BD5: LitStr "No"
  loc_BC9BD8: EqStr
  loc_BC9BDA: FLdPr Me
  loc_BC9BDD: VCallAd Control_ID_ItemNotaFlex
  loc_BC9BE0: FStAdFunc var_F4
  loc_BC9BE3: FLdPr var_F4
  loc_BC9BE6: LateIdLdVar var_104 DispID_10 0
  loc_BC9BED: CI4Var
  loc_BC9BEF: CVarI4
  loc_BC9BF3: PopAdLdVar
  loc_BC9BF4: LitVarI4
  loc_BC9BFC: PopAdLdVar
  loc_BC9BFD: FLdPr Me
  loc_BC9C00: VCallAd Control_ID_ItemNotaFlex
  loc_BC9C03: FStAdFunc var_148
  loc_BC9C06: FLdPr var_148
  loc_BC9C09: LateIdCallLdVar
  loc_BC9C13: CStrVarTmp
  loc_BC9C14: FStStrNoPop var_15C
  loc_BC9C17: LitStr vbNullString
  loc_BC9C1A: EqStr
  loc_BC9C1C: OrI4
  loc_BC9C1D: FFreeStr var_F0 = ""
  loc_BC9C24: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_BC9C2F: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_BC9C3A: BranchF loc_BC9D8D
  loc_BC9C3D: FLdPr Me
  loc_BC9C40: VCallAd Control_ID_ItemNotaFlex
  loc_BC9C43: FStAdFunc var_88
  loc_BC9C46: FLdPr var_88
  loc_BC9C49: LateIdLdVar var_98 DispID_11 0
  loc_BC9C50: CI4Var
  loc_BC9C52: FStR4 var_17C
  loc_BC9C55: FFree1Ad var_88
  loc_BC9C58: FFree1Var var_98 = ""
  loc_BC9C5B: ILdRf var_17C
  loc_BC9C5E: LitI4 1
  loc_BC9C63: EqI4
  loc_BC9C64: BranchT loc_BC9CC7
  loc_BC9C67: ILdRf var_17C
  loc_BC9C6A: LitI4 3
  loc_BC9C6F: EqI4
  loc_BC9C70: BranchT loc_BC9CC7
  loc_BC9C73: ILdRf var_17C
  loc_BC9C76: LitI4 4
  loc_BC9C7B: EqI4
  loc_BC9C7C: BranchT loc_BC9CC7
  loc_BC9C7F: ILdRf var_17C
  loc_BC9C82: LitI4 5
  loc_BC9C87: EqI4
  loc_BC9C88: BranchT loc_BC9CC7
  loc_BC9C8B: ILdRf var_17C
  loc_BC9C8E: LitI4 6
  loc_BC9C93: EqI4
  loc_BC9C94: BranchT loc_BC9CC7
  loc_BC9C97: ILdRf var_17C
  loc_BC9C9A: LitI4 7
  loc_BC9C9F: EqI4
  loc_BC9CA0: BranchT loc_BC9CC7
  loc_BC9CA3: ILdRf var_17C
  loc_BC9CA6: LitI4 8
  loc_BC9CAB: EqI4
  loc_BC9CAC: BranchT loc_BC9CC7
  loc_BC9CAF: ILdRf var_17C
  loc_BC9CB2: LitI4 9
  loc_BC9CB7: EqI4
  loc_BC9CB8: BranchT loc_BC9CC7
  loc_BC9CBB: ILdRf var_17C
  loc_BC9CBE: LitI4 &HA
  loc_BC9CC3: EqI4
  loc_BC9CC4: BranchF loc_BC9D8A
  loc_BC9CC7: FLdPr Me
  loc_BC9CCA: VCallAd Control_ID_ItemNotaFlex
  loc_BC9CCD: FStAdFunc var_88
  loc_BC9CD0: FLdPr var_88
  loc_BC9CD3: LateIdLdVar var_98 DispID_0 0
  loc_BC9CDA: PopAd
  loc_BC9CDC: FLdPr Me
  loc_BC9CDF: VCallAd Control_ID_ItemNotaFlex
  loc_BC9CE2: FStAdFunc var_DC
  loc_BC9CE5: FLdPr var_DC
  loc_BC9CE8: LateIdLdVar var_EC DispID_0 0
  loc_BC9CEF: PopAd
  loc_BC9CF1: FLdPr Me
  loc_BC9CF4: VCallAd Control_ID_ItemNotaFlex
  loc_BC9CF7: FStAdFunc var_F4
  loc_BC9CFA: FLdPr var_F4
  loc_BC9CFD: LateIdLdVar var_104 DispID_0 0
  loc_BC9D04: PopAd
  loc_BC9D06: LitVarI2 var_178, 0
  loc_BC9D0B: FLdRfVar var_104
  loc_BC9D0E: CStrVarTmp
  loc_BC9D0F: FStStrNoPop var_15C
  loc_BC9D12: FnLenStr
  loc_BC9D13: LitI4 1
  loc_BC9D18: SubI4
  loc_BC9D19: CVarI4
  loc_BC9D1D: FLdRfVar var_EC
  loc_BC9D20: CStrVarTmp
  loc_BC9D21: FStStrNoPop var_F0
  loc_BC9D24: FnLenStr
  loc_BC9D25: LitI4 1
  loc_BC9D2A: SubI4
  loc_BC9D2B: LitI4 0
  loc_BC9D30: GtI4
  loc_BC9D31: CVarBoolI2 var_A8
  loc_BC9D35: FLdRfVar var_18C
  loc_BC9D38: ImpAdCallFPR4  = IIf(, , )
  loc_BC9D3D: FLdRfVar var_18C
  loc_BC9D40: CI4Var
  loc_BC9D42: FLdRfVar var_98
  loc_BC9D45: CStrVarTmp
  loc_BC9D46: FStStrNoPop var_190
  loc_BC9D49: ImpAdCallI2 Left$(, )
  loc_BC9D4E: CVarStr var_1A0
  loc_BC9D51: PopAdLdVar
  loc_BC9D52: FLdPr Me
  loc_BC9D55: VCallAd Control_ID_ItemNotaFlex
  loc_BC9D58: FStAdFunc var_148
  loc_BC9D5B: FLdPr var_148
  loc_BC9D5E: LateIdSt
  loc_BC9D63: FFreeStr var_F0 = "": var_15C = ""
  loc_BC9D6C: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_BC9D77: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_A8 = "": var_158 = "": var_178 = "": var_18C = ""
  loc_BC9D8A: Branch loc_BC9DF0
  loc_BC9D8D: FLdPr Me
  loc_BC9D90: VCallAd Control_ID_ItemNotaFlex
  loc_BC9D93: FStAdFunc var_88
  loc_BC9D96: FLdPr var_88
  loc_BC9D99: LateIdLdVar var_98 DispID_10 0
  loc_BC9DA0: CI4Var
  loc_BC9DA2: CVarI4
  loc_BC9DA6: PopAdLdVar
  loc_BC9DA7: LitVarI4
  loc_BC9DAF: PopAdLdVar
  loc_BC9DB0: FLdPr Me
  loc_BC9DB3: VCallAd Control_ID_ItemNotaFlex
  loc_BC9DB6: FStAdFunc var_DC
  loc_BC9DB9: FLdPr var_DC
  loc_BC9DBC: LateIdCallLdVar
  loc_BC9DC6: CStrVarTmp
  loc_BC9DC7: FStStrNoPop var_F0
  loc_BC9DCA: LitStr "Si"
  loc_BC9DCD: EqStr
  loc_BC9DCF: FFree1Str var_F0
  loc_BC9DD2: FFreeAd var_88 = ""
  loc_BC9DD9: FFreeVar var_98 = ""
  loc_BC9DE0: BranchF loc_BC9DF0
  loc_BC9DE3: LitI4 0
  loc_BC9DE8: LitStr "El Item está Imputado. Verifique..."
  loc_BC9DEB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BC9DF0: Branch loc_BCA4B1
  loc_BC9DF3: FLdPr Me
  loc_BC9DF6: VCallAd Control_ID_ItemNotaFlex
  loc_BC9DF9: FStAdFunc var_88
  loc_BC9DFC: FLdPr var_88
  loc_BC9DFF: LateIdLdVar var_98 DispID_10 0
  loc_BC9E06: CI4Var
  loc_BC9E08: CVarI4
  loc_BC9E0C: PopAdLdVar
  loc_BC9E0D: LitVarI4
  loc_BC9E15: PopAdLdVar
  loc_BC9E16: FLdPr Me
  loc_BC9E19: VCallAd Control_ID_ItemNotaFlex
  loc_BC9E1C: FStAdFunc var_DC
  loc_BC9E1F: FLdPr var_DC
  loc_BC9E22: LateIdCallLdVar
  loc_BC9E2C: CStrVarTmp
  loc_BC9E2D: FStStrNoPop var_F0
  loc_BC9E30: LitStr "No"
  loc_BC9E33: EqStr
  loc_BC9E35: FLdPr Me
  loc_BC9E38: VCallAd Control_ID_ItemNotaFlex
  loc_BC9E3B: FStAdFunc var_F4
  loc_BC9E3E: FLdPr var_F4
  loc_BC9E41: LateIdLdVar var_104 DispID_10 0
  loc_BC9E48: CI4Var
  loc_BC9E4A: CVarI4
  loc_BC9E4E: PopAdLdVar
  loc_BC9E4F: LitVarI4
  loc_BC9E57: PopAdLdVar
  loc_BC9E58: FLdPr Me
  loc_BC9E5B: VCallAd Control_ID_ItemNotaFlex
  loc_BC9E5E: FStAdFunc var_148
  loc_BC9E61: FLdPr var_148
  loc_BC9E64: LateIdCallLdVar
  loc_BC9E6E: CStrVarTmp
  loc_BC9E6F: FStStrNoPop var_15C
  loc_BC9E72: LitStr vbNullString
  loc_BC9E75: EqStr
  loc_BC9E77: OrI4
  loc_BC9E78: FFreeStr var_F0 = ""
  loc_BC9E7F: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_BC9E8A: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_BC9E95: BranchF loc_BCA4B1
  loc_BC9E98: FLdPr Me
  loc_BC9E9B: VCallAd Control_ID_ItemNotaFlex
  loc_BC9E9E: FStAdFunc var_88
  loc_BC9EA1: FLdPr var_88
  loc_BC9EA4: LateIdLdVar var_98 DispID_11 0
  loc_BC9EAB: CI4Var
  loc_BC9EAD: FStR4 var_1A4
  loc_BC9EB0: FFree1Ad var_88
  loc_BC9EB3: FFree1Var var_98 = ""
  loc_BC9EB6: ILdRf var_1A4
  loc_BC9EB9: LitI4 1
  loc_BC9EBE: EqI4
  loc_BC9EBF: BranchF loc_BC9F5A
  loc_BC9EC2: LitStr "1234567890"
  loc_BC9EC5: FStStrCopy var_F0
  loc_BC9EC8: FLdRfVar var_F0
  loc_BC9ECB: ILdRf KeyAscii
  loc_BC9ECE: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BC9ED3: IStI2 KeyAscii
  loc_BC9ED6: FFree1Str var_F0
  loc_BC9ED9: FLdPr Me
  loc_BC9EDC: VCallAd Control_ID_ItemNotaFlex
  loc_BC9EDF: FStAdFunc var_88
  loc_BC9EE2: FLdPr var_88
  loc_BC9EE5: LateIdLdVar var_98 DispID_0 0
  loc_BC9EEC: CStrVarTmp
  loc_BC9EED: FStStrNoPop var_F0
  loc_BC9EF0: FnLenStr
  loc_BC9EF1: LitI4 7
  loc_BC9EF6: LeI4
  loc_BC9EF7: FFree1Str var_F0
  loc_BC9EFA: FFree1Ad var_88
  loc_BC9EFD: FFree1Var var_98 = ""
  loc_BC9F00: BranchF loc_BC9F57
  loc_BC9F03: FLdPr Me
  loc_BC9F06: VCallAd Control_ID_ItemNotaFlex
  loc_BC9F09: FStAdFunc var_88
  loc_BC9F0C: FLdPr var_88
  loc_BC9F0F: LateIdLdVar var_98 DispID_0 0
  loc_BC9F16: CStrVarTmp
  loc_BC9F17: CVarStr var_104
  loc_BC9F1A: ILdI2 KeyAscii
  loc_BC9F1D: CI4UI1
  loc_BC9F1E: FLdRfVar var_EC
  loc_BC9F21: ImpAdCallFPR4  = Chr()
  loc_BC9F26: FLdRfVar var_EC
  loc_BC9F29: AddVar var_158
  loc_BC9F2D: CStrVarTmp
  loc_BC9F2E: CVarStr var_178
  loc_BC9F31: PopAdLdVar
  loc_BC9F32: FLdPr Me
  loc_BC9F35: VCallAd Control_ID_ItemNotaFlex
  loc_BC9F38: FStAdFunc var_DC
  loc_BC9F3B: FLdPr var_DC
  loc_BC9F3E: LateIdSt
  loc_BC9F43: FFreeAd var_88 = ""
  loc_BC9F4A: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_158 = ""
  loc_BC9F57: Branch loc_BCA4B1
  loc_BC9F5A: ILdRf var_1A4
  loc_BC9F5D: LitI4 3
  loc_BC9F62: EqI4
  loc_BC9F63: BranchF loc_BC9FE7
  loc_BC9F66: FLdPr Me
  loc_BC9F69: VCallAd Control_ID_ItemNotaFlex
  loc_BC9F6C: FStAdFunc var_88
  loc_BC9F6F: FLdPr var_88
  loc_BC9F72: LateIdLdVar var_98 DispID_0 0
  loc_BC9F79: CStrVarTmp
  loc_BC9F7A: FStStrNoPop var_F0
  loc_BC9F7D: FnLenStr
  loc_BC9F7E: LitI4 &H61
  loc_BC9F83: LeI4
  loc_BC9F84: FFree1Str var_F0
  loc_BC9F87: FFree1Ad var_88
  loc_BC9F8A: FFree1Var var_98 = ""
  loc_BC9F8D: BranchF loc_BC9FE4
  loc_BC9F90: FLdPr Me
  loc_BC9F93: VCallAd Control_ID_ItemNotaFlex
  loc_BC9F96: FStAdFunc var_88
  loc_BC9F99: FLdPr var_88
  loc_BC9F9C: LateIdLdVar var_98 DispID_0 0
  loc_BC9FA3: CStrVarTmp
  loc_BC9FA4: CVarStr var_104
  loc_BC9FA7: ILdI2 KeyAscii
  loc_BC9FAA: CI4UI1
  loc_BC9FAB: FLdRfVar var_EC
  loc_BC9FAE: ImpAdCallFPR4  = Chr()
  loc_BC9FB3: FLdRfVar var_EC
  loc_BC9FB6: AddVar var_158
  loc_BC9FBA: CStrVarTmp
  loc_BC9FBB: CVarStr var_178
  loc_BC9FBE: PopAdLdVar
  loc_BC9FBF: FLdPr Me
  loc_BC9FC2: VCallAd Control_ID_ItemNotaFlex
  loc_BC9FC5: FStAdFunc var_DC
  loc_BC9FC8: FLdPr var_DC
  loc_BC9FCB: LateIdSt
  loc_BC9FD0: FFreeAd var_88 = ""
  loc_BC9FD7: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_158 = ""
  loc_BC9FE4: Branch loc_BCA4B1
  loc_BC9FE7: ILdRf var_1A4
  loc_BC9FEA: LitI4 4
  loc_BC9FEF: EqI4
  loc_BC9FF0: BranchF loc_BCA0A5
  loc_BC9FF3: ILdI2 KeyAscii
  loc_BC9FF6: LitStr "."
  loc_BC9FF9: ImpAdCallI2 Asc()
  loc_BC9FFE: EqI2
  loc_BC9FFF: BranchF loc_BCA00D
  loc_BCA002: LitStr ","
  loc_BCA005: ImpAdCallI2 Asc()
  loc_BCA00A: IStI2 KeyAscii
  loc_BCA00D: LitStr "1234567890,"
  loc_BCA010: FStStrCopy var_F0
  loc_BCA013: FLdRfVar var_F0
  loc_BCA016: ILdRf KeyAscii
  loc_BCA019: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BCA01E: IStI2 KeyAscii
  loc_BCA021: FFree1Str var_F0
  loc_BCA024: FLdPr Me
  loc_BCA027: VCallAd Control_ID_ItemNotaFlex
  loc_BCA02A: FStAdFunc var_88
  loc_BCA02D: FLdPr var_88
  loc_BCA030: LateIdLdVar var_98 DispID_0 0
  loc_BCA037: CStrVarTmp
  loc_BCA038: FStStrNoPop var_F0
  loc_BCA03B: FnLenStr
  loc_BCA03C: LitI4 &HC
  loc_BCA041: LeI4
  loc_BCA042: FFree1Str var_F0
  loc_BCA045: FFree1Ad var_88
  loc_BCA048: FFree1Var var_98 = ""
  loc_BCA04B: BranchF loc_BCA0A2
  loc_BCA04E: FLdPr Me
  loc_BCA051: VCallAd Control_ID_ItemNotaFlex
  loc_BCA054: FStAdFunc var_88
  loc_BCA057: FLdPr var_88
  loc_BCA05A: LateIdLdVar var_98 DispID_0 0
  loc_BCA061: CStrVarTmp
  loc_BCA062: CVarStr var_104
  loc_BCA065: ILdI2 KeyAscii
  loc_BCA068: CI4UI1
  loc_BCA069: FLdRfVar var_EC
  loc_BCA06C: ImpAdCallFPR4  = Chr()
  loc_BCA071: FLdRfVar var_EC
  loc_BCA074: AddVar var_158
  loc_BCA078: CStrVarTmp
  loc_BCA079: CVarStr var_178
  loc_BCA07C: PopAdLdVar
  loc_BCA07D: FLdPr Me
  loc_BCA080: VCallAd Control_ID_ItemNotaFlex
  loc_BCA083: FStAdFunc var_DC
  loc_BCA086: FLdPr var_DC
  loc_BCA089: LateIdSt
  loc_BCA08E: FFreeAd var_88 = ""
  loc_BCA095: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_158 = ""
  loc_BCA0A2: Branch loc_BCA4B1
  loc_BCA0A5: ILdRf var_1A4
  loc_BCA0A8: LitI4 5
  loc_BCA0AD: EqI4
  loc_BCA0AE: BranchF loc_BCA163
  loc_BCA0B1: ILdI2 KeyAscii
  loc_BCA0B4: LitStr "."
  loc_BCA0B7: ImpAdCallI2 Asc()
  loc_BCA0BC: EqI2
  loc_BCA0BD: BranchF loc_BCA0CB
  loc_BCA0C0: LitStr ","
  loc_BCA0C3: ImpAdCallI2 Asc()
  loc_BCA0C8: IStI2 KeyAscii
  loc_BCA0CB: LitStr "1234567890,"
  loc_BCA0CE: FStStrCopy var_F0
  loc_BCA0D1: FLdRfVar var_F0
  loc_BCA0D4: ILdRf KeyAscii
  loc_BCA0D7: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BCA0DC: IStI2 KeyAscii
  loc_BCA0DF: FFree1Str var_F0
  loc_BCA0E2: FLdPr Me
  loc_BCA0E5: VCallAd Control_ID_ItemNotaFlex
  loc_BCA0E8: FStAdFunc var_88
  loc_BCA0EB: FLdPr var_88
  loc_BCA0EE: LateIdLdVar var_98 DispID_0 0
  loc_BCA0F5: CStrVarTmp
  loc_BCA0F6: FStStrNoPop var_F0
  loc_BCA0F9: FnLenStr
  loc_BCA0FA: LitI4 &HC
  loc_BCA0FF: LeI4
  loc_BCA100: FFree1Str var_F0
  loc_BCA103: FFree1Ad var_88
  loc_BCA106: FFree1Var var_98 = ""
  loc_BCA109: BranchF loc_BCA160
  loc_BCA10C: FLdPr Me
  loc_BCA10F: VCallAd Control_ID_ItemNotaFlex
  loc_BCA112: FStAdFunc var_88
  loc_BCA115: FLdPr var_88
  loc_BCA118: LateIdLdVar var_98 DispID_0 0
  loc_BCA11F: CStrVarTmp
  loc_BCA120: CVarStr var_104
  loc_BCA123: ILdI2 KeyAscii
  loc_BCA126: CI4UI1
  loc_BCA127: FLdRfVar var_EC
  loc_BCA12A: ImpAdCallFPR4  = Chr()
  loc_BCA12F: FLdRfVar var_EC
  loc_BCA132: AddVar var_158
  loc_BCA136: CStrVarTmp
  loc_BCA137: CVarStr var_178
  loc_BCA13A: PopAdLdVar
  loc_BCA13B: FLdPr Me
  loc_BCA13E: VCallAd Control_ID_ItemNotaFlex
  loc_BCA141: FStAdFunc var_DC
  loc_BCA144: FLdPr var_DC
  loc_BCA147: LateIdSt
  loc_BCA14C: FFreeAd var_88 = ""
  loc_BCA153: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_158 = ""
  loc_BCA160: Branch loc_BCA4B1
  loc_BCA163: ILdRf var_1A4
  loc_BCA166: LitI4 6
  loc_BCA16B: EqI4
  loc_BCA16C: BranchF loc_BCA221
  loc_BCA16F: ILdI2 KeyAscii
  loc_BCA172: LitStr "."
  loc_BCA175: ImpAdCallI2 Asc()
  loc_BCA17A: EqI2
  loc_BCA17B: BranchF loc_BCA189
  loc_BCA17E: LitStr ","
  loc_BCA181: ImpAdCallI2 Asc()
  loc_BCA186: IStI2 KeyAscii
  loc_BCA189: LitStr "1234567890,"
  loc_BCA18C: FStStrCopy var_F0
  loc_BCA18F: FLdRfVar var_F0
  loc_BCA192: ILdRf KeyAscii
  loc_BCA195: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BCA19A: IStI2 KeyAscii
  loc_BCA19D: FFree1Str var_F0
  loc_BCA1A0: FLdPr Me
  loc_BCA1A3: VCallAd Control_ID_ItemNotaFlex
  loc_BCA1A6: FStAdFunc var_88
  loc_BCA1A9: FLdPr var_88
  loc_BCA1AC: LateIdLdVar var_98 DispID_0 0
  loc_BCA1B3: CStrVarTmp
  loc_BCA1B4: FStStrNoPop var_F0
  loc_BCA1B7: FnLenStr
  loc_BCA1B8: LitI4 &HC
  loc_BCA1BD: LeI4
  loc_BCA1BE: FFree1Str var_F0
  loc_BCA1C1: FFree1Ad var_88
  loc_BCA1C4: FFree1Var var_98 = ""
  loc_BCA1C7: BranchF loc_BCA21E
  loc_BCA1CA: FLdPr Me
  loc_BCA1CD: VCallAd Control_ID_ItemNotaFlex
  loc_BCA1D0: FStAdFunc var_88
  loc_BCA1D3: FLdPr var_88
  loc_BCA1D6: LateIdLdVar var_98 DispID_0 0
  loc_BCA1DD: CStrVarTmp
  loc_BCA1DE: CVarStr var_104
  loc_BCA1E1: ILdI2 KeyAscii
  loc_BCA1E4: CI4UI1
  loc_BCA1E5: FLdRfVar var_EC
  loc_BCA1E8: ImpAdCallFPR4  = Chr()
  loc_BCA1ED: FLdRfVar var_EC
  loc_BCA1F0: AddVar var_158
  loc_BCA1F4: CStrVarTmp
  loc_BCA1F5: CVarStr var_178
  loc_BCA1F8: PopAdLdVar
  loc_BCA1F9: FLdPr Me
  loc_BCA1FC: VCallAd Control_ID_ItemNotaFlex
  loc_BCA1FF: FStAdFunc var_DC
  loc_BCA202: FLdPr var_DC
  loc_BCA205: LateIdSt
  loc_BCA20A: FFreeAd var_88 = ""
  loc_BCA211: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_158 = ""
  loc_BCA21E: Branch loc_BCA4B1
  loc_BCA221: ILdRf var_1A4
  loc_BCA224: LitI4 7
  loc_BCA229: EqI4
  loc_BCA22A: BranchF loc_BCA2C5
  loc_BCA22D: LitStr "1234567890,"
  loc_BCA230: FStStrCopy var_F0
  loc_BCA233: FLdRfVar var_F0
  loc_BCA236: ILdRf KeyAscii
  loc_BCA239: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BCA23E: IStI2 KeyAscii
  loc_BCA241: FFree1Str var_F0
  loc_BCA244: FLdPr Me
  loc_BCA247: VCallAd Control_ID_ItemNotaFlex
  loc_BCA24A: FStAdFunc var_88
  loc_BCA24D: FLdPr var_88
  loc_BCA250: LateIdLdVar var_98 DispID_0 0
  loc_BCA257: CStrVarTmp
  loc_BCA258: FStStrNoPop var_F0
  loc_BCA25B: FnLenStr
  loc_BCA25C: LitI4 5
  loc_BCA261: LeI4
  loc_BCA262: FFree1Str var_F0
  loc_BCA265: FFree1Ad var_88
  loc_BCA268: FFree1Var var_98 = ""
  loc_BCA26B: BranchF loc_BCA2C2
  loc_BCA26E: FLdPr Me
  loc_BCA271: VCallAd Control_ID_ItemNotaFlex
  loc_BCA274: FStAdFunc var_88
  loc_BCA277: FLdPr var_88
  loc_BCA27A: LateIdLdVar var_98 DispID_0 0
  loc_BCA281: CStrVarTmp
  loc_BCA282: CVarStr var_104
  loc_BCA285: ILdI2 KeyAscii
  loc_BCA288: CI4UI1
  loc_BCA289: FLdRfVar var_EC
  loc_BCA28C: ImpAdCallFPR4  = Chr()
  loc_BCA291: FLdRfVar var_EC
  loc_BCA294: AddVar var_158
  loc_BCA298: CStrVarTmp
  loc_BCA299: CVarStr var_178
  loc_BCA29C: PopAdLdVar
  loc_BCA29D: FLdPr Me
  loc_BCA2A0: VCallAd Control_ID_ItemNotaFlex
  loc_BCA2A3: FStAdFunc var_DC
  loc_BCA2A6: FLdPr var_DC
  loc_BCA2A9: LateIdSt
  loc_BCA2AE: FFreeAd var_88 = ""
  loc_BCA2B5: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_158 = ""
  loc_BCA2C2: Branch loc_BCA4B1
  loc_BCA2C5: ILdRf var_1A4
  loc_BCA2C8: LitI4 8
  loc_BCA2CD: EqI4
  loc_BCA2CE: BranchF loc_BCA369
  loc_BCA2D1: LitStr "1234567890"
  loc_BCA2D4: FStStrCopy var_F0
  loc_BCA2D7: FLdRfVar var_F0
  loc_BCA2DA: ILdRf KeyAscii
  loc_BCA2DD: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BCA2E2: IStI2 KeyAscii
  loc_BCA2E5: FFree1Str var_F0
  loc_BCA2E8: FLdPr Me
  loc_BCA2EB: VCallAd Control_ID_ItemNotaFlex
  loc_BCA2EE: FStAdFunc var_88
  loc_BCA2F1: FLdPr var_88
  loc_BCA2F4: LateIdLdVar var_98 DispID_0 0
  loc_BCA2FB: CStrVarTmp
  loc_BCA2FC: FStStrNoPop var_F0
  loc_BCA2FF: FnLenStr
  loc_BCA300: LitI4 5
  loc_BCA305: LeI4
  loc_BCA306: FFree1Str var_F0
  loc_BCA309: FFree1Ad var_88
  loc_BCA30C: FFree1Var var_98 = ""
  loc_BCA30F: BranchF loc_BCA366
  loc_BCA312: FLdPr Me
  loc_BCA315: VCallAd Control_ID_ItemNotaFlex
  loc_BCA318: FStAdFunc var_88
  loc_BCA31B: FLdPr var_88
  loc_BCA31E: LateIdLdVar var_98 DispID_0 0
  loc_BCA325: CStrVarTmp
  loc_BCA326: CVarStr var_104
  loc_BCA329: ILdI2 KeyAscii
  loc_BCA32C: CI4UI1
  loc_BCA32D: FLdRfVar var_EC
  loc_BCA330: ImpAdCallFPR4  = Chr()
  loc_BCA335: FLdRfVar var_EC
  loc_BCA338: AddVar var_158
  loc_BCA33C: CStrVarTmp
  loc_BCA33D: CVarStr var_178
  loc_BCA340: PopAdLdVar
  loc_BCA341: FLdPr Me
  loc_BCA344: VCallAd Control_ID_ItemNotaFlex
  loc_BCA347: FStAdFunc var_DC
  loc_BCA34A: FLdPr var_DC
  loc_BCA34D: LateIdSt
  loc_BCA352: FFreeAd var_88 = ""
  loc_BCA359: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_158 = ""
  loc_BCA366: Branch loc_BCA4B1
  loc_BCA369: ILdRf var_1A4
  loc_BCA36C: LitI4 9
  loc_BCA371: EqI4
  loc_BCA372: BranchF loc_BCA410
  loc_BCA375: LitStr "1234567890"
  loc_BCA378: FStStrCopy var_F0
  loc_BCA37B: FLdRfVar var_F0
  loc_BCA37E: ILdRf KeyAscii
  loc_BCA381: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BCA386: IStI2 KeyAscii
  loc_BCA389: FFree1Str var_F0
  loc_BCA38C: FLdPr Me
  loc_BCA38F: VCallAd Control_ID_ItemNotaFlex
  loc_BCA392: FStAdFunc var_88
  loc_BCA395: FLdPr var_88
  loc_BCA398: LateIdLdVar var_98 DispID_0 0
  loc_BCA39F: CStrVarTmp
  loc_BCA3A0: FStStrNoPop var_F0
  loc_BCA3A3: FnLenStr
  loc_BCA3A4: LitI2_Byte 6
  loc_BCA3A6: CI2UI1
  loc_BCA3A8: LitI2_Byte 1
  loc_BCA3AA: SubI2
  loc_BCA3AB: CI4UI1
  loc_BCA3AC: LeI4
  loc_BCA3AD: FFree1Str var_F0
  loc_BCA3B0: FFree1Ad var_88
  loc_BCA3B3: FFree1Var var_98 = ""
  loc_BCA3B6: BranchF loc_BCA40D
  loc_BCA3B9: FLdPr Me
  loc_BCA3BC: VCallAd Control_ID_ItemNotaFlex
  loc_BCA3BF: FStAdFunc var_88
  loc_BCA3C2: FLdPr var_88
  loc_BCA3C5: LateIdLdVar var_98 DispID_0 0
  loc_BCA3CC: CStrVarTmp
  loc_BCA3CD: CVarStr var_104
  loc_BCA3D0: ILdI2 KeyAscii
  loc_BCA3D3: CI4UI1
  loc_BCA3D4: FLdRfVar var_EC
  loc_BCA3D7: ImpAdCallFPR4  = Chr()
  loc_BCA3DC: FLdRfVar var_EC
  loc_BCA3DF: AddVar var_158
  loc_BCA3E3: CStrVarTmp
  loc_BCA3E4: CVarStr var_178
  loc_BCA3E7: PopAdLdVar
  loc_BCA3E8: FLdPr Me
  loc_BCA3EB: VCallAd Control_ID_ItemNotaFlex
  loc_BCA3EE: FStAdFunc var_DC
  loc_BCA3F1: FLdPr var_DC
  loc_BCA3F4: LateIdSt
  loc_BCA3F9: FFreeAd var_88 = ""
  loc_BCA400: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_158 = ""
  loc_BCA40D: Branch loc_BCA4B1
  loc_BCA410: ILdRf var_1A4
  loc_BCA413: LitI4 &HA
  loc_BCA418: EqI4
  loc_BCA419: BranchF loc_BCA4B1
  loc_BCA41C: LitStr "1234567890"
  loc_BCA41F: FStStrCopy var_F0
  loc_BCA422: FLdRfVar var_F0
  loc_BCA425: ILdRf KeyAscii
  loc_BCA428: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BCA42D: IStI2 KeyAscii
  loc_BCA430: FFree1Str var_F0
  loc_BCA433: FLdPr Me
  loc_BCA436: VCallAd Control_ID_ItemNotaFlex
  loc_BCA439: FStAdFunc var_88
  loc_BCA43C: FLdPr var_88
  loc_BCA43F: LateIdLdVar var_98 DispID_0 0
  loc_BCA446: CStrVarTmp
  loc_BCA447: FStStrNoPop var_F0
  loc_BCA44A: FnLenStr
  loc_BCA44B: LitI4 7
  loc_BCA450: LeI4
  loc_BCA451: FFree1Str var_F0
  loc_BCA454: FFree1Ad var_88
  loc_BCA457: FFree1Var var_98 = ""
  loc_BCA45A: BranchF loc_BCA4B1
  loc_BCA45D: FLdPr Me
  loc_BCA460: VCallAd Control_ID_ItemNotaFlex
  loc_BCA463: FStAdFunc var_88
  loc_BCA466: FLdPr var_88
  loc_BCA469: LateIdLdVar var_98 DispID_0 0
  loc_BCA470: CStrVarTmp
  loc_BCA471: CVarStr var_104
  loc_BCA474: ILdI2 KeyAscii
  loc_BCA477: CI4UI1
  loc_BCA478: FLdRfVar var_EC
  loc_BCA47B: ImpAdCallFPR4  = Chr()
  loc_BCA480: FLdRfVar var_EC
  loc_BCA483: AddVar var_158
  loc_BCA487: CStrVarTmp
  loc_BCA488: CVarStr var_178
  loc_BCA48B: PopAdLdVar
  loc_BCA48C: FLdPr Me
  loc_BCA48F: VCallAd Control_ID_ItemNotaFlex
  loc_BCA492: FStAdFunc var_DC
  loc_BCA495: FLdPr var_DC
  loc_BCA498: LateIdSt
  loc_BCA49D: FFreeAd var_88 = ""
  loc_BCA4A4: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_158 = ""
  loc_BCA4B1: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_KeyUp(KeyCode As Integer, Shift As Integer) 'AAEB2C
  'Data Table: 4FD0E0
  loc_AAE68C: FLdPr Me
  loc_AAE68F: MemLdUI1 global_74
  loc_AAE693: CI2UI1
  loc_AAE695: LitI2_Byte 0
  loc_AAE697: NeI2
  loc_AAE698: BranchF loc_AAE8F2
  loc_AAE69B: ILdI2 KeyCode
  loc_AAE69E: CI4UI1
  loc_AAE69F: LitI4 &H2E
  loc_AAE6A4: EqI4
  loc_AAE6A5: BranchF loc_AAE8D5
  loc_AAE6A8: FLdPr Me
  loc_AAE6AB: VCallAd Control_ID_ItemNotaFlex
  loc_AAE6AE: FStAdFunc var_88
  loc_AAE6B1: FLdPr var_88
  loc_AAE6B4: LateIdLdVar var_98 DispID_10 0
  loc_AAE6BB: CI4Var
  loc_AAE6BD: CVarI4
  loc_AAE6C1: PopAdLdVar
  loc_AAE6C2: LitVarI4
  loc_AAE6CA: PopAdLdVar
  loc_AAE6CB: FLdPr Me
  loc_AAE6CE: VCallAd Control_ID_ItemNotaFlex
  loc_AAE6D1: FStAdFunc var_DC
  loc_AAE6D4: FLdPr var_DC
  loc_AAE6D7: LateIdCallLdVar
  loc_AAE6E1: CStrVarTmp
  loc_AAE6E2: FStStrNoPop var_F0
  loc_AAE6E5: LitStr "No"
  loc_AAE6E8: EqStr
  loc_AAE6EA: FLdPr Me
  loc_AAE6ED: VCallAd Control_ID_ItemNotaFlex
  loc_AAE6F0: FStAdFunc var_F4
  loc_AAE6F3: FLdPr var_F4
  loc_AAE6F6: LateIdLdVar var_104 DispID_10 0
  loc_AAE6FD: CI4Var
  loc_AAE6FF: CVarI4
  loc_AAE703: PopAdLdVar
  loc_AAE704: LitVarI4
  loc_AAE70C: PopAdLdVar
  loc_AAE70D: FLdPr Me
  loc_AAE710: VCallAd Control_ID_ItemNotaFlex
  loc_AAE713: FStAdFunc var_148
  loc_AAE716: FLdPr var_148
  loc_AAE719: LateIdCallLdVar
  loc_AAE723: CStrVarTmp
  loc_AAE724: FStStrNoPop var_15C
  loc_AAE727: LitStr vbNullString
  loc_AAE72A: EqStr
  loc_AAE72C: OrI4
  loc_AAE72D: FLdPr Me
  loc_AAE730: VCallAd Control_ID_ItemNotaFlex
  loc_AAE733: FStAdFunc var_160
  loc_AAE736: FLdPr var_160
  loc_AAE739: LateIdLdVar var_170 DispID_10 0
  loc_AAE740: CI4Var
  loc_AAE742: CVarI4
  loc_AAE746: PopAdLdVar
  loc_AAE747: LitVarI4
  loc_AAE74F: PopAdLdVar
  loc_AAE750: FLdPr Me
  loc_AAE753: VCallAd Control_ID_ItemNotaFlex
  loc_AAE756: FStAdFunc var_1B4
  loc_AAE759: FLdPr var_1B4
  loc_AAE75C: LateIdCallLdVar
  loc_AAE766: CStrVarTmp
  loc_AAE767: FStStrNoPop var_1C8
  loc_AAE76A: LitStr vbNullString
  loc_AAE76D: EqStr
  loc_AAE76F: AndI4
  loc_AAE770: FFreeStr var_F0 = "": var_15C = ""
  loc_AAE779: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = "": var_160 = ""
  loc_AAE788: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_170 = ""
  loc_AAE797: BranchF loc_AAE8D5
  loc_AAE79A: FLdPr Me
  loc_AAE79D: VCallAd Control_ID_ItemNotaFlex
  loc_AAE7A0: FStAdFunc var_88
  loc_AAE7A3: FLdPr var_88
  loc_AAE7A6: LateIdLdVar var_98 DispID_10 0
  loc_AAE7AD: CI4Var
  loc_AAE7AF: LitI4 0
  loc_AAE7B4: NeI4
  loc_AAE7B5: FFree1Ad var_88
  loc_AAE7B8: FFree1Var var_98 = ""
  loc_AAE7BB: BranchF loc_AAE8D5
  loc_AAE7BE: OnErrorGoto loc_AAE8F2
  loc_AAE7C1: FLdPr Me
  loc_AAE7C4: VCallAd Control_ID_ItemNotaFlex
  loc_AAE7C7: FStAdFunc var_88
  loc_AAE7CA: FLdPr var_88
  loc_AAE7CD: LateIdLdVar var_98 DispID_10 0
  loc_AAE7D4: CI4Var
  loc_AAE7D6: CVarI4
  loc_AAE7DA: PopAdLdVar
  loc_AAE7DB: LitVarI4
  loc_AAE7E3: PopAdLdVar
  loc_AAE7E4: FLdPr Me
  loc_AAE7E7: VCallAd Control_ID_ItemNotaFlex
  loc_AAE7EA: FStAdFunc var_DC
  loc_AAE7ED: FLdPr var_DC
  loc_AAE7F0: LateIdCallLdVar
  loc_AAE7FA: PopAd
  loc_AAE7FC: FLdPr Me
  loc_AAE7FF: MemLdStr global_84
  loc_AAE802: LitStr ","
  loc_AAE805: ConcatStr
  loc_AAE806: FStStrNoPop var_F0
  loc_AAE809: FLdPr Me
  loc_AAE80C: VCallAd Control_ID_ItemNotaFlex
  loc_AAE80F: FStAdFunc var_F4
  loc_AAE812: FLdPr var_F4
  loc_AAE815: LateIdLdVar var_104 DispID_10 0
  loc_AAE81C: CI4Var
  loc_AAE81E: CVarI4
  loc_AAE822: PopAdLdVar
  loc_AAE823: LitVarI4
  loc_AAE82B: PopAdLdVar
  loc_AAE82C: FLdPr Me
  loc_AAE82F: VCallAd Control_ID_ItemNotaFlex
  loc_AAE832: FStAdFunc var_148
  loc_AAE835: FLdPr var_148
  loc_AAE838: LateIdCallLdVar
  loc_AAE842: CStrVarTmp
  loc_AAE843: FStStrNoPop var_15C
  loc_AAE846: ConcatStr
  loc_AAE847: CVarStr var_1C4
  loc_AAE84A: FLdRfVar var_EC
  loc_AAE84D: CStrVarTmp
  loc_AAE84E: CVarStr var_170
  loc_AAE851: FLdPr Me
  loc_AAE854: MemLdStr global_84
  loc_AAE857: LitStr vbNullString
  loc_AAE85A: EqStr
  loc_AAE85C: CVarBoolI2 var_180
  loc_AAE860: FLdRfVar var_1D8
  loc_AAE863: ImpAdCallFPR4  = IIf(, , )
  loc_AAE868: FLdRfVar var_1D8
  loc_AAE86B: CStrVarTmp
  loc_AAE86C: FStStrNoPop var_1C8
  loc_AAE86F: FLdPr Me
  loc_AAE872: MemStStrCopy
  loc_AAE876: FFreeStr var_F0 = "": var_15C = ""
  loc_AAE87F: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_AAE88A: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_180 = "": var_170 = "": var_1C4 = ""
  loc_AAE89D: FLdPr Me
  loc_AAE8A0: VCallAd Control_ID_ItemNotaFlex
  loc_AAE8A3: FStAdFunc var_88
  loc_AAE8A6: FLdPr var_88
  loc_AAE8A9: LateIdLdVar var_98 DispID_10 0
  loc_AAE8B0: CI4Var
  loc_AAE8B2: CVarI4
  loc_AAE8B6: PopAdLdVar
  loc_AAE8B7: FLdPr Me
  loc_AAE8BA: VCallAd Control_ID_ItemNotaFlex
  loc_AAE8BD: FStAdFunc var_DC
  loc_AAE8C0: FLdPr var_DC
  loc_AAE8C3: LateIdCall
  loc_AAE8CB: FFreeAd var_88 = ""
  loc_AAE8D2: FFree1Var var_98 = ""
  loc_AAE8D5: ILdI2 Shift
  loc_AAE8D8: CI4UI1
  loc_AAE8D9: LitI4 2
  loc_AAE8DE: EqI4
  loc_AAE8DF: ILdI2 KeyCode
  loc_AAE8E2: CI4UI1
  loc_AAE8E3: LitI4 &H41
  loc_AAE8E8: EqI4
  loc_AAE8E9: AndI4
  loc_AAE8EA: BranchF loc_AAE8F2
  loc_AAE8ED: Call ItemNotaFlex_DblClick()
  loc_AAE8F2: FLdRfVar var_1DC
  loc_AAE8F5: ImpAdCallI2 Err 'rtcErrObj
  loc_AAE8FA: FStAdFunc var_88
  loc_AAE8FD: FLdPr var_88
  loc_AAE900:  = Err.Number
  loc_AAE905: ILdRf var_1DC
  loc_AAE908: LitI4 &H753F
  loc_AAE90D: EqI4
  loc_AAE90E: FFree1Ad var_88
  loc_AAE911: BranchF loc_AAEB29
  loc_AAE914: Call Proc_126_67_A365C0()
  loc_AAE919: LitVarStr var_A8, "1"
  loc_AAE91E: LitI4 9
  loc_AAE923: FLdRfVar var_98
  loc_AAE926: ImpAdCallFPR4  = Chr()
  loc_AAE92B: FLdRfVar var_98
  loc_AAE92E: ConcatVar var_EC
  loc_AAE932: LitVarStr var_B8, vbNullString
  loc_AAE937: ConcatVar var_104
  loc_AAE93B: LitI4 9
  loc_AAE940: FLdRfVar var_158
  loc_AAE943: ImpAdCallFPR4  = Chr()
  loc_AAE948: FLdRfVar var_158
  loc_AAE94B: ConcatVar var_170
  loc_AAE94F: LitVarStr var_C8, vbNullString
  loc_AAE954: ConcatVar var_1C4
  loc_AAE958: LitI4 9
  loc_AAE95D: FLdRfVar var_1D8
  loc_AAE960: ImpAdCallFPR4  = Chr()
  loc_AAE965: FLdRfVar var_1D8
  loc_AAE968: ConcatVar var_1EC
  loc_AAE96C: LitVarStr var_D8, vbNullString
  loc_AAE971: ConcatVar var_1FC
  loc_AAE975: LitI4 9
  loc_AAE97A: FLdRfVar var_20C
  loc_AAE97D: ImpAdCallFPR4  = Chr()
  loc_AAE982: FLdRfVar var_20C
  loc_AAE985: ConcatVar var_21C
  loc_AAE989: LitVarStr var_114, " "
  loc_AAE98E: ConcatVar var_22C
  loc_AAE992: LitI4 9
  loc_AAE997: FLdRfVar var_23C
  loc_AAE99A: ImpAdCallFPR4  = Chr()
  loc_AAE99F: FLdRfVar var_23C
  loc_AAE9A2: ConcatVar var_24C
  loc_AAE9A6: LitVarStr var_124, vbNullString
  loc_AAE9AB: ConcatVar var_25C
  loc_AAE9AF: LitI4 9
  loc_AAE9B4: FLdRfVar var_26C
  loc_AAE9B7: ImpAdCallFPR4  = Chr()
  loc_AAE9BC: FLdRfVar var_26C
  loc_AAE9BF: ConcatVar var_27C
  loc_AAE9C3: LitVarStr var_134, vbNullString
  loc_AAE9C8: ConcatVar var_28C
  loc_AAE9CC: LitI4 9
  loc_AAE9D1: FLdRfVar var_29C
  loc_AAE9D4: ImpAdCallFPR4  = Chr()
  loc_AAE9D9: FLdRfVar var_29C
  loc_AAE9DC: ConcatVar var_2AC
  loc_AAE9E0: LitVarStr var_144, vbNullString
  loc_AAE9E5: ConcatVar var_2BC
  loc_AAE9E9: LitI4 9
  loc_AAE9EE: FLdRfVar var_2CC
  loc_AAE9F1: ImpAdCallFPR4  = Chr()
  loc_AAE9F6: FLdRfVar var_2CC
  loc_AAE9F9: ConcatVar var_2DC
  loc_AAE9FD: LitVarStr var_180, vbNullString
  loc_AAEA02: ConcatVar var_2EC
  loc_AAEA06: LitI4 9
  loc_AAEA0B: FLdRfVar var_2FC
  loc_AAEA0E: ImpAdCallFPR4  = Chr()
  loc_AAEA13: FLdRfVar var_2FC
  loc_AAEA16: ConcatVar var_30C
  loc_AAEA1A: LitVarStr var_190, vbNullString
  loc_AAEA1F: ConcatVar var_31C
  loc_AAEA23: LitI4 9
  loc_AAEA28: FLdRfVar var_32C
  loc_AAEA2B: ImpAdCallFPR4  = Chr()
  loc_AAEA30: FLdRfVar var_32C
  loc_AAEA33: ConcatVar var_33C
  loc_AAEA37: LitVarStr var_1A0, vbNullString
  loc_AAEA3C: ConcatVar var_34C
  loc_AAEA40: LitI4 9
  loc_AAEA45: FLdRfVar var_35C
  loc_AAEA48: ImpAdCallFPR4  = Chr()
  loc_AAEA4D: FLdRfVar var_35C
  loc_AAEA50: ConcatVar var_36C
  loc_AAEA54: LitVarStr var_1B0, vbNullString
  loc_AAEA59: ConcatVar var_37C
  loc_AAEA5D: LitI4 9
  loc_AAEA62: FLdRfVar var_38C
  loc_AAEA65: ImpAdCallFPR4  = Chr()
  loc_AAEA6A: FLdRfVar var_38C
  loc_AAEA6D: ConcatVar var_39C
  loc_AAEA71: LitVarStr var_3AC, vbNullString
  loc_AAEA76: ConcatVar var_3BC
  loc_AAEA7A: LitI4 9
  loc_AAEA7F: FLdRfVar var_3CC
  loc_AAEA82: ImpAdCallFPR4  = Chr()
  loc_AAEA87: FLdRfVar var_3CC
  loc_AAEA8A: ConcatVar var_3DC
  loc_AAEA8E: LitVarStr var_3EC, vbNullString
  loc_AAEA93: ConcatVar var_3FC
  loc_AAEA97: LitI4 9
  loc_AAEA9C: FLdRfVar var_40C
  loc_AAEA9F: ImpAdCallFPR4  = Chr()
  loc_AAEAA4: FLdRfVar var_40C
  loc_AAEAA7: ConcatVar var_41C
  loc_AAEAAB: LitVarStr var_42C, vbNullString
  loc_AAEAB0: ConcatVar var_43C
  loc_AAEAB4: CStrVarTmp
  loc_AAEAB5: CVarStr var_44C
  loc_AAEAB8: PopAdLdVar
  loc_AAEAB9: FLdPr Me
  loc_AAEABC: VCallAd Control_ID_ItemNotaFlex
  loc_AAEABF: FStAdFunc var_88
  loc_AAEAC2: FLdPr var_88
  loc_AAEAC5: LateIdCall
  loc_AAEACD: FFree1Ad var_88
  loc_AAEAD0: FFreeVar var_35C = "": var_36C = "": var_37C = "": var_38C = "": var_39C = "": var_3BC = "": var_3CC = "": var_3DC = "": var_3FC = "": var_40C = "": var_41C = "": var_43C = "": var_44C = "": var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1D8 = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = "": var_23C = "": var_24C = "": var_25C = "": var_26C = "": var_27C = "": var_28C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2EC = "": var_2FC = "": var_30C = "": var_31C = "": var_32C = "": var_33C = ""
  loc_AAEB29: ExitProcHresult
  loc_AAEB2A: NewIfNullPr Me
End Sub

Private Sub ItemNotaFlex_MouseUp(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'B05588
  'Data Table: 4FD0E0
  loc_B04DF0: FLdPr Me
  loc_B04DF3: VCallAd Control_ID_ItemNotaFlex
  loc_B04DF6: FStAdFunc var_88
  loc_B04DF9: FLdPr var_88
  loc_B04DFC: LateIdLdVar var_98 DispID_11 0
  loc_B04E03: CI4Var
  loc_B04E05: LitI4 1
  loc_B04E0A: EqI4
  loc_B04E0B: FLdPr Me
  loc_B04E0E: VCallAd Control_ID_ItemNotaFlex
  loc_B04E11: FStAdFunc var_9C
  loc_B04E14: FLdPr var_9C
  loc_B04E17: LateIdLdVar var_AC DispID_11 0
  loc_B04E1E: CI4Var
  loc_B04E20: LitI4 2
  loc_B04E25: EqI4
  loc_B04E26: OrI4
  loc_B04E27: FLdPr Me
  loc_B04E2A: VCallAd Control_ID_ItemNotaFlex
  loc_B04E2D: FStAdFunc var_B0
  loc_B04E30: FLdPr var_B0
  loc_B04E33: LateIdLdVar var_C0 DispID_11 0
  loc_B04E3A: CI4Var
  loc_B04E3C: LitI4 3
  loc_B04E41: EqI4
  loc_B04E42: OrI4
  loc_B04E43: FFreeAd var_88 = "": var_9C = ""
  loc_B04E4C: FFreeVar var_98 = "": var_AC = ""
  loc_B04E55: BranchF loc_B04F68
  loc_B04E58: FLdPr Me
  loc_B04E5B: VCallAd Control_ID_ItemNotaFlex
  loc_B04E5E: FStAdFunc var_88
  loc_B04E61: FLdPr var_88
  loc_B04E64: LateIdLdVar var_98 DispID_10 0
  loc_B04E6B: CI4Var
  loc_B04E6D: CVarI4
  loc_B04E71: PopAdLdVar
  loc_B04E72: LitVarI4
  loc_B04E7A: PopAdLdVar
  loc_B04E7B: FLdPr Me
  loc_B04E7E: VCallAd Control_ID_ItemNotaFlex
  loc_B04E81: FStAdFunc var_9C
  loc_B04E84: FLdPr var_9C
  loc_B04E87: LateIdCallLdVar
  loc_B04E91: CStrVarTmp
  loc_B04E92: FStStrNoPop var_104
  loc_B04E95: LitStr " - "
  loc_B04E98: ConcatStr
  loc_B04E99: FStStrNoPop var_15C
  loc_B04E9C: FLdPr Me
  loc_B04E9F: VCallAd Control_ID_ItemNotaFlex
  loc_B04EA2: FStAdFunc var_B0
  loc_B04EA5: FLdPr var_B0
  loc_B04EA8: LateIdLdVar var_C0 DispID_10 0
  loc_B04EAF: CI4Var
  loc_B04EB1: CVarI4
  loc_B04EB5: PopAdLdVar
  loc_B04EB6: LitVarI4
  loc_B04EBE: PopAdLdVar
  loc_B04EBF: FLdPr Me
  loc_B04EC2: VCallAd Control_ID_ItemNotaFlex
  loc_B04EC5: FStAdFunc var_148
  loc_B04EC8: FLdPr var_148
  loc_B04ECB: LateIdCallLdVar
  loc_B04ED5: CStrVarTmp
  loc_B04ED6: FStStrNoPop var_160
  loc_B04ED9: ConcatStr
  loc_B04EDA: FStStrNoPop var_164
  loc_B04EDD: LitStr " - "
  loc_B04EE0: ConcatStr
  loc_B04EE1: FStStrNoPop var_1D0
  loc_B04EE4: FLdPr Me
  loc_B04EE7: VCallAd Control_ID_ItemNotaFlex
  loc_B04EEA: FStAdFunc var_168
  loc_B04EED: FLdPr var_168
  loc_B04EF0: LateIdLdVar var_178 DispID_10 0
  loc_B04EF7: CI4Var
  loc_B04EF9: CVarI4
  loc_B04EFD: PopAdLdVar
  loc_B04EFE: LitVarI4
  loc_B04F06: PopAdLdVar
  loc_B04F07: FLdPr Me
  loc_B04F0A: VCallAd Control_ID_ItemNotaFlex
  loc_B04F0D: FStAdFunc var_1BC
  loc_B04F10: FLdPr var_1BC
  loc_B04F13: LateIdCallLdVar
  loc_B04F1D: CStrVarTmp
  loc_B04F1E: FStStrNoPop var_1D4
  loc_B04F21: ConcatStr
  loc_B04F22: CVarStr var_1E4
  loc_B04F25: PopAdLdVar
  loc_B04F26: FLdPr Me
  loc_B04F29: VCallAd Control_ID_ItemNotaFlex
  loc_B04F2C: FStAdFunc var_1F8
  loc_B04F2F: FLdPr var_1F8
  loc_B04F32: LateIdSt
  loc_B04F37: FFreeStr var_104 = "": var_15C = "": var_160 = "": var_164 = "": var_1D0 = ""
  loc_B04F46: FFreeAd var_88 = "": var_9C = "": var_B0 = "": var_148 = "": var_168 = "": var_1BC = ""
  loc_B04F57: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_158 = "": var_178 = "": var_1CC = ""
  loc_B04F68: FLdPr Me
  loc_B04F6B: VCallAd Control_ID_ItemNotaFlex
  loc_B04F6E: FStAdFunc var_88
  loc_B04F71: FLdPr var_88
  loc_B04F74: LateIdLdVar var_98 DispID_11 0
  loc_B04F7B: CI4Var
  loc_B04F7D: LitI4 7
  loc_B04F82: EqI4
  loc_B04F83: FFree1Ad var_88
  loc_B04F86: FFree1Var var_98 = ""
  loc_B04F89: BranchF loc_B050ED
  loc_B04F8C: FLdPr Me
  loc_B04F8F: VCallAd Control_ID_ItemNotaFlex
  loc_B04F92: FStAdFunc var_88
  loc_B04F95: FLdPr var_88
  loc_B04F98: LateIdLdVar var_98 DispID_10 0
  loc_B04F9F: CI4Var
  loc_B04FA1: CVarI4
  loc_B04FA5: PopAdLdVar
  loc_B04FA6: LitVarI4
  loc_B04FAE: PopAdLdVar
  loc_B04FAF: FLdPr Me
  loc_B04FB2: VCallAd Control_ID_ItemNotaFlex
  loc_B04FB5: FStAdFunc var_9C
  loc_B04FB8: FLdPr var_9C
  loc_B04FBB: LateIdCallLdVar
  loc_B04FC5: CStrVarTmp
  loc_B04FC6: CVarStr var_C0
  loc_B04FC9: ImpAdCallI2 IsNull()
  loc_B04FCE: FStI2 var_20A
  loc_B04FD1: FLdPr Me
  loc_B04FD4: VCallAd Control_ID_ItemNotaFlex
  loc_B04FD7: FStAdFunc var_B0
  loc_B04FDA: FLdPr var_B0
  loc_B04FDD: LateIdLdVar var_158 DispID_10 0
  loc_B04FE4: CI4Var
  loc_B04FE6: CVarI4
  loc_B04FEA: PopAdLdVar
  loc_B04FEB: LitVarI4
  loc_B04FF3: PopAdLdVar
  loc_B04FF4: FLdPr Me
  loc_B04FF7: VCallAd Control_ID_ItemNotaFlex
  loc_B04FFA: FStAdFunc var_148
  loc_B04FFD: FLdPr var_148
  loc_B05000: LateIdCallLdVar
  loc_B0500A: CStrVarTmp
  loc_B0500B: CVarStr var_1E4
  loc_B0500E: LitVarStr var_198, vbNullString
  loc_B05013: FStVarCopyObj var_1CC
  loc_B05016: FLdRfVar var_1CC
  loc_B05019: FLdI2 var_20A
  loc_B0501C: CVarBoolI2 var_188
  loc_B05020: FLdRfVar var_208
  loc_B05023: ImpAdCallFPR4  = IIf(, , )
  loc_B05028: FLdPr Me
  loc_B0502B: MemLdRfVar from_stack_1.global_96
  loc_B0502E: NewIfNullRf
  loc_B05032: FLdRfVar var_208
  loc_B05035: CStrVarVal var_104
  loc_B05039: ImpAdLdI2 MemVar_C3D064
  loc_B0503C: ImpAdCallFPR4 Proc_259_20_B23018(, , )
  loc_B05041: FFree1Str var_104
  loc_B05044: FFreeAd var_88 = "": var_9C = "": var_B0 = ""
  loc_B0504F: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_158 = "": var_178 = "": var_188 = "": var_1CC = "": var_1E4 = ""
  loc_B05064: FLdPr Me
  loc_B05067: VCallAd Control_ID_ItemNotaFlex
  loc_B0506A: FStAdFunc var_88
  loc_B0506D: FLdPr var_88
  loc_B05070: LateIdLdVar var_98 DispID_10 0
  loc_B05077: CI4Var
  loc_B05079: CVarI4
  loc_B0507D: PopAdLdVar
  loc_B0507E: LitVarI4
  loc_B05086: PopAdLdVar
  loc_B05087: FLdPr Me
  loc_B0508A: VCallAd Control_ID_ItemNotaFlex
  loc_B0508D: FStAdFunc var_9C
  loc_B05090: FLdPr var_9C
  loc_B05093: LateIdCallLdVar
  loc_B0509D: CStrVarTmp
  loc_B0509E: FStStrNoPop var_104
  loc_B050A1: LitStr " - "
  loc_B050A4: ConcatStr
  loc_B050A5: FStStrNoPop var_160
  loc_B050A8: FLdRfVar var_15C
  loc_B050AB: FLdPr Me
  loc_B050AE: MemLdRfVar from_stack_1.global_96
  loc_B050B1: NewIfNullPr tblorganigrama
  loc_B050B4: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B050B9: ILdRf var_15C
  loc_B050BC: ConcatStr
  loc_B050BD: CVarStr var_C0
  loc_B050C0: PopAdLdVar
  loc_B050C1: FLdPr Me
  loc_B050C4: VCallAd Control_ID_ItemNotaFlex
  loc_B050C7: FStAdFunc var_B0
  loc_B050CA: FLdPr var_B0
  loc_B050CD: LateIdSt
  loc_B050D2: FFreeStr var_104 = "": var_160 = ""
  loc_B050DB: FFreeAd var_88 = "": var_9C = ""
  loc_B050E4: FFreeVar var_98 = "": var_AC = ""
  loc_B050ED: FLdPr Me
  loc_B050F0: VCallAd Control_ID_ItemNotaFlex
  loc_B050F3: FStAdFunc var_88
  loc_B050F6: FLdPr var_88
  loc_B050F9: LateIdLdVar var_98 DispID_11 0
  loc_B05100: CI4Var
  loc_B05102: LitI4 8
  loc_B05107: EqI4
  loc_B05108: FFree1Ad var_88
  loc_B0510B: FFree1Var var_98 = ""
  loc_B0510E: BranchF loc_B0527B
  loc_B05111: FLdPr Me
  loc_B05114: VCallAd Control_ID_ItemNotaFlex
  loc_B05117: FStAdFunc var_88
  loc_B0511A: FLdPr var_88
  loc_B0511D: LateIdLdVar var_98 DispID_10 0
  loc_B05124: CI4Var
  loc_B05126: CVarI4
  loc_B0512A: PopAdLdVar
  loc_B0512B: LitVarI4
  loc_B05133: PopAdLdVar
  loc_B05134: FLdPr Me
  loc_B05137: VCallAd Control_ID_ItemNotaFlex
  loc_B0513A: FStAdFunc var_9C
  loc_B0513D: FLdPr var_9C
  loc_B05140: LateIdCallLdVar
  loc_B0514A: CStrVarTmp
  loc_B0514B: CVarStr var_C0
  loc_B0514E: ImpAdCallI2 IsNull()
  loc_B05153: FStI2 var_20A
  loc_B05156: FLdPr Me
  loc_B05159: VCallAd Control_ID_ItemNotaFlex
  loc_B0515C: FStAdFunc var_B0
  loc_B0515F: FLdPr var_B0
  loc_B05162: LateIdLdVar var_158 DispID_10 0
  loc_B05169: CI4Var
  loc_B0516B: CVarI4
  loc_B0516F: PopAdLdVar
  loc_B05170: LitVarI4
  loc_B05178: PopAdLdVar
  loc_B05179: FLdPr Me
  loc_B0517C: VCallAd Control_ID_ItemNotaFlex
  loc_B0517F: FStAdFunc var_148
  loc_B05182: FLdPr var_148
  loc_B05185: LateIdCallLdVar
  loc_B0518F: CStrVarTmp
  loc_B05190: CVarStr var_1E4
  loc_B05193: LitVarStr var_198, vbNullString
  loc_B05198: FStVarCopyObj var_1CC
  loc_B0519B: FLdRfVar var_1CC
  loc_B0519E: FLdI2 var_20A
  loc_B051A1: CVarBoolI2 var_188
  loc_B051A5: FLdRfVar var_208
  loc_B051A8: ImpAdCallFPR4  = IIf(, , )
  loc_B051AD: FLdPr Me
  loc_B051B0: MemLdRfVar from_stack_1.global_100
  loc_B051B3: NewIfNullRf
  loc_B051B7: FLdRfVar var_208
  loc_B051BA: CStrVarVal var_15C
  loc_B051BE: ImpAdLdI2 MemVar_C3D064
  loc_B051C1: CStrUI1
  loc_B051C3: FStStrNoPop var_104
  loc_B051C6: ImpAdCallFPR4 Proc_259_37_B5F860(, , )
  loc_B051CB: FFreeStr var_104 = ""
  loc_B051D2: FFreeAd var_88 = "": var_9C = "": var_B0 = ""
  loc_B051DD: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_158 = "": var_178 = "": var_188 = "": var_1CC = "": var_1E4 = ""
  loc_B051F2: FLdPr Me
  loc_B051F5: VCallAd Control_ID_ItemNotaFlex
  loc_B051F8: FStAdFunc var_88
  loc_B051FB: FLdPr var_88
  loc_B051FE: LateIdLdVar var_98 DispID_10 0
  loc_B05205: CI4Var
  loc_B05207: CVarI4
  loc_B0520B: PopAdLdVar
  loc_B0520C: LitVarI4
  loc_B05214: PopAdLdVar
  loc_B05215: FLdPr Me
  loc_B05218: VCallAd Control_ID_ItemNotaFlex
  loc_B0521B: FStAdFunc var_9C
  loc_B0521E: FLdPr var_9C
  loc_B05221: LateIdCallLdVar
  loc_B0522B: CStrVarTmp
  loc_B0522C: FStStrNoPop var_104
  loc_B0522F: LitStr " - "
  loc_B05232: ConcatStr
  loc_B05233: FStStrNoPop var_160
  loc_B05236: FLdRfVar var_15C
  loc_B05239: FLdPr Me
  loc_B0523C: MemLdRfVar from_stack_1.global_100
  loc_B0523F: NewIfNullPr tblunidadgasto
  loc_B05242: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B05247: ILdRf var_15C
  loc_B0524A: ConcatStr
  loc_B0524B: CVarStr var_C0
  loc_B0524E: PopAdLdVar
  loc_B0524F: FLdPr Me
  loc_B05252: VCallAd Control_ID_ItemNotaFlex
  loc_B05255: FStAdFunc var_B0
  loc_B05258: FLdPr var_B0
  loc_B0525B: LateIdSt
  loc_B05260: FFreeStr var_104 = "": var_160 = ""
  loc_B05269: FFreeAd var_88 = "": var_9C = ""
  loc_B05272: FFreeVar var_98 = "": var_AC = ""
  loc_B0527B: FLdPr Me
  loc_B0527E: VCallAd Control_ID_ItemNotaFlex
  loc_B05281: FStAdFunc var_88
  loc_B05284: FLdPr var_88
  loc_B05287: LateIdLdVar var_98 DispID_11 0
  loc_B0528E: CI4Var
  loc_B05290: LitI4 9
  loc_B05295: EqI4
  loc_B05296: FFree1Ad var_88
  loc_B05299: FFree1Var var_98 = ""
  loc_B0529C: BranchF loc_B05400
  loc_B0529F: FLdPr Me
  loc_B052A2: VCallAd Control_ID_ItemNotaFlex
  loc_B052A5: FStAdFunc var_88
  loc_B052A8: FLdPr var_88
  loc_B052AB: LateIdLdVar var_98 DispID_10 0
  loc_B052B2: CI4Var
  loc_B052B4: CVarI4
  loc_B052B8: PopAdLdVar
  loc_B052B9: LitVarI4
  loc_B052C1: PopAdLdVar
  loc_B052C2: FLdPr Me
  loc_B052C5: VCallAd Control_ID_ItemNotaFlex
  loc_B052C8: FStAdFunc var_9C
  loc_B052CB: FLdPr var_9C
  loc_B052CE: LateIdCallLdVar
  loc_B052D8: CStrVarTmp
  loc_B052D9: CVarStr var_C0
  loc_B052DC: ImpAdCallI2 IsNull()
  loc_B052E1: FStI2 var_20A
  loc_B052E4: FLdPr Me
  loc_B052E7: VCallAd Control_ID_ItemNotaFlex
  loc_B052EA: FStAdFunc var_B0
  loc_B052ED: FLdPr var_B0
  loc_B052F0: LateIdLdVar var_158 DispID_10 0
  loc_B052F7: CI4Var
  loc_B052F9: CVarI4
  loc_B052FD: PopAdLdVar
  loc_B052FE: LitVarI4
  loc_B05306: PopAdLdVar
  loc_B05307: FLdPr Me
  loc_B0530A: VCallAd Control_ID_ItemNotaFlex
  loc_B0530D: FStAdFunc var_148
  loc_B05310: FLdPr var_148
  loc_B05313: LateIdCallLdVar
  loc_B0531D: CStrVarTmp
  loc_B0531E: CVarStr var_1E4
  loc_B05321: LitVarStr var_198, vbNullString
  loc_B05326: FStVarCopyObj var_1CC
  loc_B05329: FLdRfVar var_1CC
  loc_B0532C: FLdI2 var_20A
  loc_B0532F: CVarBoolI2 var_188
  loc_B05333: FLdRfVar var_208
  loc_B05336: ImpAdCallFPR4  = IIf(, , )
  loc_B0533B: FLdPr Me
  loc_B0533E: MemLdRfVar from_stack_1.global_104
  loc_B05341: NewIfNullRf
  loc_B05345: FLdRfVar var_208
  loc_B05348: CStrVarVal var_104
  loc_B0534C: ImpAdLdI2 MemVar_C3D064
  loc_B0534F: ImpAdCallFPR4 Proc_259_12_AE1238(, , )
  loc_B05354: FFree1Str var_104
  loc_B05357: FFreeAd var_88 = "": var_9C = "": var_B0 = ""
  loc_B05362: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_158 = "": var_178 = "": var_188 = "": var_1CC = "": var_1E4 = ""
  loc_B05377: FLdPr Me
  loc_B0537A: VCallAd Control_ID_ItemNotaFlex
  loc_B0537D: FStAdFunc var_88
  loc_B05380: FLdPr var_88
  loc_B05383: LateIdLdVar var_98 DispID_10 0
  loc_B0538A: CI4Var
  loc_B0538C: CVarI4
  loc_B05390: PopAdLdVar
  loc_B05391: LitVarI4
  loc_B05399: PopAdLdVar
  loc_B0539A: FLdPr Me
  loc_B0539D: VCallAd Control_ID_ItemNotaFlex
  loc_B053A0: FStAdFunc var_9C
  loc_B053A3: FLdPr var_9C
  loc_B053A6: LateIdCallLdVar
  loc_B053B0: CStrVarTmp
  loc_B053B1: FStStrNoPop var_104
  loc_B053B4: LitStr " - "
  loc_B053B7: ConcatStr
  loc_B053B8: FStStrNoPop var_160
  loc_B053BB: FLdRfVar var_15C
  loc_B053BE: FLdPr Me
  loc_B053C1: MemLdRfVar from_stack_1.global_104
  loc_B053C4: NewIfNullPr tblfinalidad
  loc_B053C7: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B053CC: ILdRf var_15C
  loc_B053CF: ConcatStr
  loc_B053D0: CVarStr var_C0
  loc_B053D3: PopAdLdVar
  loc_B053D4: FLdPr Me
  loc_B053D7: VCallAd Control_ID_ItemNotaFlex
  loc_B053DA: FStAdFunc var_B0
  loc_B053DD: FLdPr var_B0
  loc_B053E0: LateIdSt
  loc_B053E5: FFreeStr var_104 = "": var_160 = ""
  loc_B053EE: FFreeAd var_88 = "": var_9C = ""
  loc_B053F7: FFreeVar var_98 = "": var_AC = ""
  loc_B05400: FLdPr Me
  loc_B05403: VCallAd Control_ID_ItemNotaFlex
  loc_B05406: FStAdFunc var_88
  loc_B05409: FLdPr var_88
  loc_B0540C: LateIdLdVar var_98 DispID_11 0
  loc_B05413: CI4Var
  loc_B05415: LitI4 &HA
  loc_B0541A: EqI4
  loc_B0541B: FFree1Ad var_88
  loc_B0541E: FFree1Var var_98 = ""
  loc_B05421: BranchF loc_B05585
  loc_B05424: FLdPr Me
  loc_B05427: VCallAd Control_ID_ItemNotaFlex
  loc_B0542A: FStAdFunc var_88
  loc_B0542D: FLdPr var_88
  loc_B05430: LateIdLdVar var_98 DispID_10 0
  loc_B05437: CI4Var
  loc_B05439: CVarI4
  loc_B0543D: PopAdLdVar
  loc_B0543E: LitVarI4
  loc_B05446: PopAdLdVar
  loc_B05447: FLdPr Me
  loc_B0544A: VCallAd Control_ID_ItemNotaFlex
  loc_B0544D: FStAdFunc var_9C
  loc_B05450: FLdPr var_9C
  loc_B05453: LateIdCallLdVar
  loc_B0545D: CStrVarTmp
  loc_B0545E: CVarStr var_C0
  loc_B05461: ImpAdCallI2 IsNull()
  loc_B05466: FStI2 var_20A
  loc_B05469: FLdPr Me
  loc_B0546C: VCallAd Control_ID_ItemNotaFlex
  loc_B0546F: FStAdFunc var_B0
  loc_B05472: FLdPr var_B0
  loc_B05475: LateIdLdVar var_158 DispID_10 0
  loc_B0547C: CI4Var
  loc_B0547E: CVarI4
  loc_B05482: PopAdLdVar
  loc_B05483: LitVarI4
  loc_B0548B: PopAdLdVar
  loc_B0548C: FLdPr Me
  loc_B0548F: VCallAd Control_ID_ItemNotaFlex
  loc_B05492: FStAdFunc var_148
  loc_B05495: FLdPr var_148
  loc_B05498: LateIdCallLdVar
  loc_B054A2: CStrVarTmp
  loc_B054A3: CVarStr var_1E4
  loc_B054A6: LitVarStr var_198, vbNullString
  loc_B054AB: FStVarCopyObj var_1CC
  loc_B054AE: FLdRfVar var_1CC
  loc_B054B1: FLdI2 var_20A
  loc_B054B4: CVarBoolI2 var_188
  loc_B054B8: FLdRfVar var_208
  loc_B054BB: ImpAdCallFPR4  = IIf(, , )
  loc_B054C0: FLdPr Me
  loc_B054C3: MemLdRfVar from_stack_1.global_92
  loc_B054C6: NewIfNullRf
  loc_B054CA: FLdRfVar var_208
  loc_B054CD: CStrVarVal var_104
  loc_B054D1: ImpAdLdI2 MemVar_C3D064
  loc_B054D4: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_B054D9: FFree1Str var_104
  loc_B054DC: FFreeAd var_88 = "": var_9C = "": var_B0 = ""
  loc_B054E7: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_158 = "": var_178 = "": var_188 = "": var_1CC = "": var_1E4 = ""
  loc_B054FC: FLdPr Me
  loc_B054FF: VCallAd Control_ID_ItemNotaFlex
  loc_B05502: FStAdFunc var_88
  loc_B05505: FLdPr var_88
  loc_B05508: LateIdLdVar var_98 DispID_10 0
  loc_B0550F: CI4Var
  loc_B05511: CVarI4
  loc_B05515: PopAdLdVar
  loc_B05516: LitVarI4
  loc_B0551E: PopAdLdVar
  loc_B0551F: FLdPr Me
  loc_B05522: VCallAd Control_ID_ItemNotaFlex
  loc_B05525: FStAdFunc var_9C
  loc_B05528: FLdPr var_9C
  loc_B0552B: LateIdCallLdVar
  loc_B05535: CStrVarTmp
  loc_B05536: FStStrNoPop var_104
  loc_B05539: LitStr " - "
  loc_B0553C: ConcatStr
  loc_B0553D: FStStrNoPop var_160
  loc_B05540: FLdRfVar var_15C
  loc_B05543: FLdPr Me
  loc_B05546: MemLdRfVar from_stack_1.global_92
  loc_B05549: NewIfNullPr tblpartida
  loc_B0554C: from_stack_1v = tblpartida.DetaPartGet()
  loc_B05551: ILdRf var_15C
  loc_B05554: ConcatStr
  loc_B05555: CVarStr var_C0
  loc_B05558: PopAdLdVar
  loc_B05559: FLdPr Me
  loc_B0555C: VCallAd Control_ID_ItemNotaFlex
  loc_B0555F: FStAdFunc var_B0
  loc_B05562: FLdPr var_B0
  loc_B05565: LateIdSt
  loc_B0556A: FFreeStr var_104 = "": var_160 = ""
  loc_B05573: FFreeAd var_88 = "": var_9C = ""
  loc_B0557C: FFreeVar var_98 = "": var_AC = ""
  loc_B05585: ExitProcHresult
  loc_B05586: ImpAdLdFPR4 MemVar_38383932
End Sub

Private Sub ItemNotaFlex_RowColChange() 'A944B8
  'Data Table: 4FD0E0
  loc_A9404C: FLdRfVar var_88
  loc_A9404F: FLdPr Me
  loc_A94052: MemLdRfVar from_stack_1.global_56
  loc_A94055: NewIfNullPr clsbase
  loc_A94058: from_stack_1v = clsbase.RsFrmGet()
  loc_A9405D: ILdRf var_88
  loc_A94060: LitNothing
  loc_A94062: Is
  loc_A94064: FFree1Ad var_88
  loc_A94067: BranchF loc_A9406D
  loc_A9406A: Branch loc_A944B7
  loc_A9406D: FLdRfVar var_8C
  loc_A94070: FLdPr Me
  loc_A94073: MemLdRfVar from_stack_1.global_56
  loc_A94076: NewIfNullPr clsbase
  loc_A94079: from_stack_1 = clsbase.RecordCount
  loc_A9407E: ILdRf var_8C
  loc_A94081: LitI4 0
  loc_A94086: GtI4
  loc_A94087: FLdPr Me
  loc_A9408A: MemLdUI1 global_74
  loc_A9408E: LitI2_Byte 1
  loc_A94090: EqI2
  loc_A94091: FLdPr Me
  loc_A94094: MemLdUI1 global_74
  loc_A94098: LitI2_Byte 2
  loc_A9409A: EqI2
  loc_A9409B: OrI4
  loc_A9409C: AndI4
  loc_A9409D: BranchF loc_A94439
  loc_A940A0: FLdPr Me
  loc_A940A3: VCallAd Control_ID_ItemNotaFlex
  loc_A940A6: FStAdFunc var_88
  loc_A940A9: FLdPr var_88
  loc_A940AC: LateIdLdVar var_9C DispID_10 0
  loc_A940B3: CI4Var
  loc_A940B5: CVarI4
  loc_A940B9: PopAdLdVar
  loc_A940BA: LitVarI4
  loc_A940C2: PopAdLdVar
  loc_A940C3: FLdPr Me
  loc_A940C6: VCallAd Control_ID_ItemNotaFlex
  loc_A940C9: FStAdFunc var_E0
  loc_A940CC: FLdPr var_E0
  loc_A940CF: LateIdCallLdVar
  loc_A940D9: CStrVarTmp
  loc_A940DA: CVarStr var_100
  loc_A940DD: ImpAdCallI2 IsNull()
  loc_A940E2: FStI2 var_1BE
  loc_A940E5: FLdPr Me
  loc_A940E8: VCallAd Control_ID_ItemNotaFlex
  loc_A940EB: FStAdFunc var_104
  loc_A940EE: FLdPr var_104
  loc_A940F1: LateIdLdVar var_114 DispID_10 0
  loc_A940F8: CI4Var
  loc_A940FA: CVarI4
  loc_A940FE: PopAdLdVar
  loc_A940FF: LitVarI4
  loc_A94107: PopAdLdVar
  loc_A94108: FLdPr Me
  loc_A9410B: VCallAd Control_ID_ItemNotaFlex
  loc_A9410E: FStAdFunc var_158
  loc_A94111: FLdPr var_158
  loc_A94114: LateIdCallLdVar
  loc_A9411E: CStrVarTmp
  loc_A9411F: CVarStr var_1A8
  loc_A94122: LitVarStr var_188, vbNullString
  loc_A94127: FStVarCopyObj var_198
  loc_A9412A: FLdRfVar var_198
  loc_A9412D: FLdI2 var_1BE
  loc_A94130: CVarBoolI2 var_178
  loc_A94134: FLdRfVar var_1B8
  loc_A94137: ImpAdCallFPR4  = IIf(, , )
  loc_A9413C: FLdPr Me
  loc_A9413F: MemLdRfVar from_stack_1.global_92
  loc_A94142: NewIfNullRf
  loc_A94146: FLdRfVar var_1B8
  loc_A94149: CStrVarVal var_1BC
  loc_A9414D: ImpAdLdI2 MemVar_C3D064
  loc_A94150: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A94155: FFree1Str var_1BC
  loc_A94158: FFreeAd var_88 = "": var_E0 = "": var_104 = ""
  loc_A94163: FFreeVar var_9C = "": var_F0 = "": var_100 = "": var_114 = "": var_168 = "": var_178 = "": var_198 = "": var_1A8 = ""
  loc_A94178: FLdRfVar var_1BC
  loc_A9417B: FLdPr Me
  loc_A9417E: MemLdRfVar from_stack_1.global_92
  loc_A94181: NewIfNullPr tblpartida
  loc_A94184: from_stack_1v = tblpartida.DetaPartGet()
  loc_A94189: ILdRf var_1BC
  loc_A9418C: FLdPr Me
  loc_A9418F: VCallAd Control_ID_DetaPartLbl
  loc_A94192: FStAdFunc var_88
  loc_A94195: FLdPr var_88
  loc_A94198: Me.Caption = from_stack_1
  loc_A9419D: FFree1Str var_1BC
  loc_A941A0: FFree1Ad var_88
  loc_A941A3: FLdPr Me
  loc_A941A6: VCallAd Control_ID_ItemNotaFlex
  loc_A941A9: FStAdFunc var_88
  loc_A941AC: FLdPr var_88
  loc_A941AF: LateIdLdVar var_9C DispID_10 0
  loc_A941B6: CI4Var
  loc_A941B8: CVarI4
  loc_A941BC: PopAdLdVar
  loc_A941BD: LitVarI4
  loc_A941C5: PopAdLdVar
  loc_A941C6: FLdPr Me
  loc_A941C9: VCallAd Control_ID_ItemNotaFlex
  loc_A941CC: FStAdFunc var_E0
  loc_A941CF: FLdPr var_E0
  loc_A941D2: LateIdCallLdVar
  loc_A941DC: CStrVarTmp
  loc_A941DD: CVarStr var_100
  loc_A941E0: ImpAdCallI2 IsNull()
  loc_A941E5: FStI2 var_1BE
  loc_A941E8: FLdPr Me
  loc_A941EB: VCallAd Control_ID_ItemNotaFlex
  loc_A941EE: FStAdFunc var_104
  loc_A941F1: FLdPr var_104
  loc_A941F4: LateIdLdVar var_114 DispID_10 0
  loc_A941FB: CI4Var
  loc_A941FD: CVarI4
  loc_A94201: PopAdLdVar
  loc_A94202: LitVarI4
  loc_A9420A: PopAdLdVar
  loc_A9420B: FLdPr Me
  loc_A9420E: VCallAd Control_ID_ItemNotaFlex
  loc_A94211: FStAdFunc var_158
  loc_A94214: FLdPr var_158
  loc_A94217: LateIdCallLdVar
  loc_A94221: CStrVarTmp
  loc_A94222: CVarStr var_1A8
  loc_A94225: LitVarStr var_188, vbNullString
  loc_A9422A: FStVarCopyObj var_198
  loc_A9422D: FLdRfVar var_198
  loc_A94230: FLdI2 var_1BE
  loc_A94233: CVarBoolI2 var_178
  loc_A94237: FLdRfVar var_1B8
  loc_A9423A: ImpAdCallFPR4  = IIf(, , )
  loc_A9423F: FLdPr Me
  loc_A94242: MemLdRfVar from_stack_1.global_96
  loc_A94245: NewIfNullRf
  loc_A94249: FLdRfVar var_1B8
  loc_A9424C: CStrVarVal var_1BC
  loc_A94250: ImpAdLdI2 MemVar_C3D064
  loc_A94253: ImpAdCallFPR4 Proc_259_20_B23018(, , )
  loc_A94258: FFree1Str var_1BC
  loc_A9425B: FFreeAd var_88 = "": var_E0 = "": var_104 = ""
  loc_A94266: FFreeVar var_9C = "": var_F0 = "": var_100 = "": var_114 = "": var_168 = "": var_178 = "": var_198 = "": var_1A8 = ""
  loc_A9427B: FLdPr Me
  loc_A9427E: VCallAd Control_ID_ItemNotaFlex
  loc_A94281: FStAdFunc var_88
  loc_A94284: FLdPr var_88
  loc_A94287: LateIdLdVar var_9C DispID_10 0
  loc_A9428E: CI4Var
  loc_A94290: CVarI4
  loc_A94294: PopAdLdVar
  loc_A94295: LitVarI4
  loc_A9429D: PopAdLdVar
  loc_A9429E: FLdPr Me
  loc_A942A1: VCallAd Control_ID_ItemNotaFlex
  loc_A942A4: FStAdFunc var_E0
  loc_A942A7: FLdPr var_E0
  loc_A942AA: LateIdCallLdVar
  loc_A942B4: CStrVarTmp
  loc_A942B5: CVarStr var_100
  loc_A942B8: ImpAdCallI2 IsNull()
  loc_A942BD: FStI2 var_1BE
  loc_A942C0: FLdPr Me
  loc_A942C3: VCallAd Control_ID_ItemNotaFlex
  loc_A942C6: FStAdFunc var_104
  loc_A942C9: FLdPr var_104
  loc_A942CC: LateIdLdVar var_114 DispID_10 0
  loc_A942D3: CI4Var
  loc_A942D5: CVarI4
  loc_A942D9: PopAdLdVar
  loc_A942DA: LitVarI4
  loc_A942E2: PopAdLdVar
  loc_A942E3: FLdPr Me
  loc_A942E6: VCallAd Control_ID_ItemNotaFlex
  loc_A942E9: FStAdFunc var_158
  loc_A942EC: FLdPr var_158
  loc_A942EF: LateIdCallLdVar
  loc_A942F9: CStrVarTmp
  loc_A942FA: CVarStr var_1A8
  loc_A942FD: LitVarStr var_188, vbNullString
  loc_A94302: FStVarCopyObj var_198
  loc_A94305: FLdRfVar var_198
  loc_A94308: FLdI2 var_1BE
  loc_A9430B: CVarBoolI2 var_178
  loc_A9430F: FLdRfVar var_1B8
  loc_A94312: ImpAdCallFPR4  = IIf(, , )
  loc_A94317: FLdPr Me
  loc_A9431A: MemLdRfVar from_stack_1.global_104
  loc_A9431D: NewIfNullRf
  loc_A94321: FLdRfVar var_1B8
  loc_A94324: CStrVarVal var_1BC
  loc_A94328: ImpAdLdI2 MemVar_C3D064
  loc_A9432B: ImpAdCallFPR4 Proc_259_12_AE1238(, , )
  loc_A94330: FFree1Str var_1BC
  loc_A94333: FFreeAd var_88 = "": var_E0 = "": var_104 = ""
  loc_A9433E: FFreeVar var_9C = "": var_F0 = "": var_100 = "": var_114 = "": var_168 = "": var_178 = "": var_198 = "": var_1A8 = ""
  loc_A94353: LitStr "Partida: "
  loc_A94356: FLdRfVar var_1BC
  loc_A94359: FLdPr Me
  loc_A9435C: MemLdRfVar from_stack_1.global_92
  loc_A9435F: NewIfNullPr tblpartida
  loc_A94362: from_stack_1v = tblpartida.DetaPartGet()
  loc_A94367: ILdRf var_1BC
  loc_A9436A: ConcatStr
  loc_A9436B: FStStrNoPop var_1C4
  loc_A9436E: LitStr " - Organigrama: "
  loc_A94371: ConcatStr
  loc_A94372: FStStrNoPop var_1CC
  loc_A94375: FLdRfVar var_1C8
  loc_A94378: FLdPr Me
  loc_A9437B: MemLdRfVar from_stack_1.global_96
  loc_A9437E: NewIfNullPr tblorganigrama
  loc_A94381: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_A94386: ILdRf var_1C8
  loc_A94389: ConcatStr
  loc_A9438A: FStStrNoPop var_1D0
  loc_A9438D: LitStr " - Finalidad: "
  loc_A94390: ConcatStr
  loc_A94391: FStStrNoPop var_1D8
  loc_A94394: FLdRfVar var_1D4
  loc_A94397: FLdPr Me
  loc_A9439A: MemLdRfVar from_stack_1.global_104
  loc_A9439D: NewIfNullPr tblfinalidad
  loc_A943A0: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_A943A5: ILdRf var_1D4
  loc_A943A8: ConcatStr
  loc_A943A9: CVarStr var_9C
  loc_A943AC: PopAdLdVar
  loc_A943AD: FLdPr Me
  loc_A943B0: VCallAd Control_ID_ItemNotaFlex
  loc_A943B3: FStAdFunc var_88
  loc_A943B6: FLdPr var_88
  loc_A943B9: LateIdSt
  loc_A943BE: FFreeStr var_1BC = "": var_1C4 = "": var_1CC = "": var_1C8 = "": var_1D0 = "": var_1D8 = ""
  loc_A943CF: FFree1Ad var_88
  loc_A943D2: FFree1Var var_9C = ""
  loc_A943D5: FLdRfVar var_9C
  loc_A943D8: FLdRfVar var_104
  loc_A943DB: LitVarStr var_AC, "DetaUbfi"
  loc_A943E0: PopAdLdVar
  loc_A943E1: FLdRfVar var_E0
  loc_A943E4: FLdRfVar var_88
  loc_A943E7: FLdPr Me
  loc_A943EA: MemLdRfVar from_stack_1.global_52
  loc_A943ED: NewIfNullPr clsnotapedido
  loc_A943F0: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_A943F5: FLdPr var_88
  loc_A943F8:  = Me.Fields
  loc_A943FD: FLdPr var_E0
  loc_A94400: from_stack_2 = Me.Item(from_stack_1)
  loc_A94405: FLdPr var_104
  loc_A94408:  = Me.Value
  loc_A9440D: FLdRfVar var_9C
  loc_A94410: CStrVarTmp
  loc_A94411: FStStrNoPop var_1BC
  loc_A94414: FLdPr Me
  loc_A94417: VCallAd Control_ID_DetaUbfiLbl
  loc_A9441A: FStAdFunc var_158
  loc_A9441D: FLdPr var_158
  loc_A94420: Me.ToolTipText = from_stack_1
  loc_A94425: FFree1Str var_1BC
  loc_A94428: FFreeAd var_88 = "": var_E0 = "": var_104 = ""
  loc_A94433: FFree1Var var_9C = ""
  loc_A94436: Branch loc_A944B7
  loc_A94439: FLdRfVar var_8C
  loc_A9443C: FLdPr Me
  loc_A9443F: MemLdRfVar from_stack_1.global_56
  loc_A94442: NewIfNullPr clsbase
  loc_A94445: from_stack_1 = clsbase.RecordCount
  loc_A9444A: ILdRf var_8C
  loc_A9444D: LitI4 0
  loc_A94452: GtI4
  loc_A94453: BranchF loc_A944B7
  loc_A94456: FLdRfVar var_9C
  loc_A94459: FLdRfVar var_104
  loc_A9445C: LitVarStr var_AC, "DetaUbfi"
  loc_A94461: PopAdLdVar
  loc_A94462: FLdRfVar var_E0
  loc_A94465: FLdRfVar var_88
  loc_A94468: FLdPr Me
  loc_A9446B: MemLdRfVar from_stack_1.global_52
  loc_A9446E: NewIfNullPr clsnotapedido
  loc_A94471: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_A94476: FLdPr var_88
  loc_A94479:  = Me.Fields
  loc_A9447E: FLdPr var_E0
  loc_A94481: from_stack_2 = Me.Item(from_stack_1)
  loc_A94486: FLdPr var_104
  loc_A94489:  = Me.Value
  loc_A9448E: FLdRfVar var_9C
  loc_A94491: CStrVarTmp
  loc_A94492: FStStrNoPop var_1BC
  loc_A94495: FLdPr Me
  loc_A94498: VCallAd Control_ID_DetaUbfiLbl
  loc_A9449B: FStAdFunc var_158
  loc_A9449E: FLdPr var_158
  loc_A944A1: Me.ToolTipText = from_stack_1
  loc_A944A6: FFree1Str var_1BC
  loc_A944A9: FFreeAd var_88 = "": var_E0 = "": var_104 = ""
  loc_A944B4: FFree1Var var_9C = ""
  loc_A944B7: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_LeaveCell() '949EEC
  'Data Table: 4FD0E0
  loc_949ED8: LitI2_Byte 0
  loc_949EDA: FLdPr Me
  loc_949EDD: MemStI2 global_144
  loc_949EE0: LitI2_Byte 0
  loc_949EE2: PopTmpLdAd2 var_86
  loc_949EE5: Call ItemNotaFlex_UnknownEvent_8()
  loc_949EEA: ExitProcHresult
End Sub

Private Sub DetaNopeTxt_GotFocus() '940098
  'Data Table: 4FD0E0
  loc_940094: ExitProcHresult
  loc_940095: CI2Cy
  loc_940096: EqCy
End Sub

Private Sub DetaNopeTxt_Validate(Cancel As Boolean) '9C1420
  'Data Table: 4FD0E0
  loc_9C1364: FLdRfVar var_8A
  loc_9C1367: FLdPr Me
  loc_9C136A: VCallAd Control_ID_cmdCancelar
  loc_9C136D: FStAdFunc var_88
  loc_9C1370: FLdPr var_88
  loc_9C1373:  = Me.Value
  loc_9C1378: FLdI2 var_8A
  loc_9C137B: NotI4
  loc_9C137C: FLdRfVar var_92
  loc_9C137F: FLdPr Me
  loc_9C1382: VCallAd Control_ID_DetaNopeTxt
  loc_9C1385: FStAdFunc var_90
  loc_9C1388: FLdPr var_90
  loc_9C138B:  = Me.Enabled
  loc_9C1390: FLdI2 var_92
  loc_9C1393: AndI4
  loc_9C1394: FFreeAd var_88 = ""
  loc_9C139B: BranchF loc_9C141C
  loc_9C139E: FLdRfVar var_98
  loc_9C13A1: FLdPr Me
  loc_9C13A4: VCallAd Control_ID_DetaNopeTxt
  loc_9C13A7: FStAdFunc var_88
  loc_9C13AA: FLdPr var_88
  loc_9C13AD:  = Me.Text
  loc_9C13B2: LitI2_Byte 0
  loc_9C13B4: PopTmpLdAd2 var_9A
  loc_9C13B7: LitI2_Byte 0
  loc_9C13B9: PopTmpLdAd2 var_92
  loc_9C13BC: LitI2_Byte 0
  loc_9C13BE: PopTmpLdAd2 var_8A
  loc_9C13C1: ILdRf var_98
  loc_9C13C4: LitStr "Detalle"
  loc_9C13C7: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C13CC: FStStrNoPop var_A0
  loc_9C13CF: FLdPr Me
  loc_9C13D2: MemStStrCopy
  loc_9C13D6: FFreeStr var_98 = ""
  loc_9C13DD: FFree1Ad var_88
  loc_9C13E0: FLdPr Me
  loc_9C13E3: VCallAd Control_ID_DetaNopeTxt
  loc_9C13E6: FStAdFunc var_A8
  loc_9C13E9: LitNothing
  loc_9C13EB: CastAd
  loc_9C13EE: FStAdFunc var_A4
  loc_9C13F1: FLdRfVar var_A4
  loc_9C13F4: FLdZeroAd var_A8
  loc_9C13F7: FStAdFuncNoPop
  loc_9C13FA: CastAd
  loc_9C13FD: FStAdFunc var_90
  loc_9C1400: FLdRfVar var_90
  loc_9C1403: FLdPr Me
  loc_9C1406: MemLdRfVar from_stack_1.global_76
  loc_9C1409: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C140E: IStI2 Cancel
  loc_9C1411: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C141C: ExitProcHresult
  loc_9C141D: FFree1Ad var_8C
End Sub

Private Sub FeanNopeMsk_UnknownEvent_0 '94B558
  'Data Table: 4FD0E0
  loc_94B544: FLdPr Me
  loc_94B547: VCallAd Control_ID_FeanNopeMsk
  loc_94B54A: CVarAd
  loc_94B54E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B553: FFree1Var var_94 = ""
  loc_94B556: ExitProcHresult
End Sub

Private Sub FeanNopeMsk_UnknownEvent_8 '9DE288
  'Data Table: 4FD0E0
  loc_9DE190: FLdRfVar var_8A
  loc_9DE193: FLdPr Me
  loc_9DE196: VCallAd Control_ID_cmdCancelar
  loc_9DE199: FStAdFunc var_88
  loc_9DE19C: FLdPr var_88
  loc_9DE19F:  = Me.Value
  loc_9DE1A4: FLdI2 var_8A
  loc_9DE1A7: NotI4
  loc_9DE1A8: FLdPr Me
  loc_9DE1AB: VCallAd Control_ID_FeanNopeMsk
  loc_9DE1AE: FStAdFunc var_90
  loc_9DE1B1: FLdPr var_90
  loc_9DE1B4: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DE1BB: CBoolVar
  loc_9DE1BD: AndI4
  loc_9DE1BE: FFreeAd var_88 = ""
  loc_9DE1C5: FFree1Var var_A0 = ""
  loc_9DE1C8: BranchF loc_9DE284
  loc_9DE1CB: FLdPr Me
  loc_9DE1CE: VCallAd Control_ID_FeanNopeMsk
  loc_9DE1D1: FStAdFunc var_88
  loc_9DE1D4: FLdPr var_88
  loc_9DE1D7: LateIdLdVar var_A0 DispID_15 0
  loc_9DE1DE: PopAd
  loc_9DE1E0: FLdPr Me
  loc_9DE1E3: VCallAd Control_ID_FeanNopeMsk
  loc_9DE1E6: FStAdFunc var_90
  loc_9DE1E9: FLdPr var_90
  loc_9DE1EC: LateIdLdVar var_B0 DispID_11 -32767
  loc_9DE1F3: PopAd
  loc_9DE1F5: FLdPr Me
  loc_9DE1F8: VCallAd Control_ID_FeanNopeMsk
  loc_9DE1FB: FStAdFunc var_C4
  loc_9DE1FE: LitI2_Byte &HFF
  loc_9DE200: PopTmpLdAd2 var_8A
  loc_9DE203: FLdZeroAd var_C4
  loc_9DE206: FStAdFunc var_BC
  loc_9DE209: FLdRfVar var_BC
  loc_9DE20C: FLdRfVar var_B0
  loc_9DE20F: CStrVarTmp
  loc_9DE210: FStStrNoPop var_B8
  loc_9DE213: LitI2_Byte 0
  loc_9DE215: LitI2_Byte &HFF
  loc_9DE217: FLdRfVar var_A0
  loc_9DE21A: CStrVarTmp
  loc_9DE21B: FStStrNoPop var_B4
  loc_9DE21E: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DE223: FStStrNoPop var_C0
  loc_9DE226: FLdPr Me
  loc_9DE229: MemStStrCopy
  loc_9DE22D: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DE236: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DE241: FFreeVar var_A0 = ""
  loc_9DE248: FLdPr Me
  loc_9DE24B: VCallAd Control_ID_FechNopeMsk
  loc_9DE24E: FStAdFunc var_C4
  loc_9DE251: LitNothing
  loc_9DE253: CastAd
  loc_9DE256: FStAdFunc var_BC
  loc_9DE259: FLdRfVar var_BC
  loc_9DE25C: FLdZeroAd var_C4
  loc_9DE25F: FStAdFuncNoPop
  loc_9DE262: CastAd
  loc_9DE265: FStAdFunc var_90
  loc_9DE268: FLdRfVar var_90
  loc_9DE26B: FLdPr Me
  loc_9DE26E: MemLdRfVar from_stack_1.global_76
  loc_9DE271: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DE276: IStI2 Cancel
  loc_9DE279: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DE284: ExitProcHresult
  loc_9DE285: FStFPR8 arg_6CFF
End Sub

Private Sub FeanNopeMsk_KeyPress(KeyAscii As Integer) '989818
  'Data Table: 4FD0E0
  loc_9897D4: ILdI2 KeyAscii
  loc_9897D7: CI4UI1
  loc_9897D8: LitI4 &H20
  loc_9897DD: EqI4
  loc_9897DE: BranchF loc_989814
  loc_9897E1: LitVar_Missing var_A4
  loc_9897E4: PopAdLdVar
  loc_9897E5: LitVarI4
  loc_9897ED: PopAdLdVar
  loc_9897EE: ImpAdLdRf MemVar_C3D9A8
  loc_9897F1: NewIfNullPr frmCalendario
  loc_9897F4: frmCalendario.Show from_stack_1, from_stack_2
  loc_9897F9: ImpAdLdRf MemVar_C3D038
  loc_9897FC: CDargRef
  loc_989800: FLdPr Me
  loc_989803: VCallAd Control_ID_FeanNopeMsk
  loc_989806: FStAdFunc var_A8
  loc_989809: FLdPr var_A8
  loc_98980C: LateIdSt
  loc_989811: FFree1Ad var_A8
  loc_989814: ExitProcHresult
  loc_989815: FLdPr Me
End Sub

Private Sub FecoHoraMsk_UnknownEvent_0 '94D130
  'Data Table: 4FD0E0
  loc_94D11C: FLdPrThis
  loc_94D11D: VCallAd Control_ID_FecoHoraMsk
  loc_94D120: CVarAd
  loc_94D124: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D129: FFree1Var var_94 = ""
  loc_94D12C: ExitProcHresult
End Sub

Private Sub FecoHoraMsk_UnknownEvent_8 '99FFF4
  'Data Table: 4FD0E0
  loc_99FF90: FLdRfVar var_8A
  loc_99FF93: FLdPr Me
  loc_99FF96: VCallAd Control_ID_cmdCancelar
  loc_99FF99: FStAdFunc var_88
  loc_99FF9C: FLdPr var_88
  loc_99FF9F:  = Me.Value
  loc_99FFA4: FLdI2 var_8A
  loc_99FFA7: NotI4
  loc_99FFA8: FLdPr Me
  loc_99FFAB: VCallAd Control_ID_FecoHoraMsk
  loc_99FFAE: FStAdFunc var_90
  loc_99FFB1: FLdPr var_90
  loc_99FFB4: LateIdLdVar var_A0 DispID_13 -32767
  loc_99FFBB: CBoolVar
  loc_99FFBD: AndI4
  loc_99FFBE: FLdPr Me
  loc_99FFC1: VCallAd Control_ID_FecoHoraMsk
  loc_99FFC4: FStAdFunc var_A4
  loc_99FFC7: FLdPr var_A4
  loc_99FFCA: LateIdLdVar var_B4 DispID_22 0
  loc_99FFD1: CStrVarTmp
  loc_99FFD2: FStStrNoPop var_B8
  loc_99FFD5: LitStr vbNullString
  loc_99FFD8: NeStr
  loc_99FFDA: AndI4
  loc_99FFDB: FFree1Str var_B8
  loc_99FFDE: FFreeAd var_88 = "": var_90 = ""
  loc_99FFE7: FFreeVar var_A0 = ""
  loc_99FFEE: BranchF loc_99FFF1
  loc_99FFF1: ExitProcHresult
End Sub

Private Sub FecoNopeMsk_UnknownEvent_0 '94B438
  'Data Table: 4FD0E0
  loc_94B424: FLdPrThis
  loc_94B425: VCallAd Control_ID_FecoNopeMsk
  loc_94B428: CVarAd
  loc_94B42C: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B431: FFree1Var var_94 = ""
  loc_94B434: ExitProcHresult
End Sub

Private Sub FecoNopeMsk_UnknownEvent_8 '9EC054
  'Data Table: 4FD0E0
  loc_9EBF38: FLdRfVar var_8A
  loc_9EBF3B: FLdPr Me
  loc_9EBF3E: VCallAd Control_ID_cmdCancelar
  loc_9EBF41: FStAdFunc var_88
  loc_9EBF44: FLdPr var_88
  loc_9EBF47:  = Me.Value
  loc_9EBF4C: FLdI2 var_8A
  loc_9EBF4F: NotI4
  loc_9EBF50: FLdPr Me
  loc_9EBF53: VCallAd Control_ID_FecoNopeMsk
  loc_9EBF56: FStAdFunc var_90
  loc_9EBF59: FLdPr var_90
  loc_9EBF5C: LateIdLdVar var_A0 DispID_13 -32767
  loc_9EBF63: CBoolVar
  loc_9EBF65: AndI4
  loc_9EBF66: FLdPr Me
  loc_9EBF69: VCallAd Control_ID_FecoNopeMsk
  loc_9EBF6C: FStAdFunc var_A4
  loc_9EBF6F: FLdPr var_A4
  loc_9EBF72: LateIdLdVar var_B4 DispID_22 0
  loc_9EBF79: CStrVarTmp
  loc_9EBF7A: FStStrNoPop var_B8
  loc_9EBF7D: LitStr vbNullString
  loc_9EBF80: NeStr
  loc_9EBF82: AndI4
  loc_9EBF83: FFree1Str var_B8
  loc_9EBF86: FFreeAd var_88 = "": var_90 = ""
  loc_9EBF8F: FFreeVar var_A0 = ""
  loc_9EBF96: BranchF loc_9EC052
  loc_9EBF99: FLdPr Me
  loc_9EBF9C: VCallAd Control_ID_FecoNopeMsk
  loc_9EBF9F: FStAdFunc var_88
  loc_9EBFA2: FLdPr var_88
  loc_9EBFA5: LateIdLdVar var_A0 DispID_15 0
  loc_9EBFAC: PopAd
  loc_9EBFAE: FLdPr Me
  loc_9EBFB1: VCallAd Control_ID_FechNopeMsk
  loc_9EBFB4: FStAdFunc var_90
  loc_9EBFB7: FLdPr var_90
  loc_9EBFBA: LateIdLdVar var_B4 DispID_15 0
  loc_9EBFC1: PopAd
  loc_9EBFC3: FLdPr Me
  loc_9EBFC6: VCallAd Control_ID_FecoNopeMsk
  loc_9EBFC9: FStAdFunc var_C4
  loc_9EBFCC: LitI2_Byte 0
  loc_9EBFCE: PopTmpLdAd2 var_8A
  loc_9EBFD1: FLdZeroAd var_C4
  loc_9EBFD4: FStAdFunc var_A4
  loc_9EBFD7: FLdRfVar var_A4
  loc_9EBFDA: FLdRfVar var_B4
  loc_9EBFDD: CStrVarTmp
  loc_9EBFDE: FStStrNoPop var_BC
  loc_9EBFE1: LitI2_Byte 0
  loc_9EBFE3: LitI2_Byte 0
  loc_9EBFE5: FLdRfVar var_A0
  loc_9EBFE8: CStrVarTmp
  loc_9EBFE9: FStStrNoPop var_B8
  loc_9EBFEC: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9EBFF1: FStStrNoPop var_C0
  loc_9EBFF4: FLdPr Me
  loc_9EBFF7: MemStStrCopy
  loc_9EBFFB: FFreeStr var_B8 = "": var_BC = ""
  loc_9EC004: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9EC00F: FFreeVar var_A0 = ""
  loc_9EC016: FLdPr Me
  loc_9EC019: VCallAd Control_ID_FecoNopeMsk
  loc_9EC01C: FStAdFunc var_C4
  loc_9EC01F: LitNothing
  loc_9EC021: CastAd
  loc_9EC024: FStAdFunc var_A4
  loc_9EC027: FLdRfVar var_A4
  loc_9EC02A: FLdZeroAd var_C4
  loc_9EC02D: FStAdFuncNoPop
  loc_9EC030: CastAd
  loc_9EC033: FStAdFunc var_90
  loc_9EC036: FLdRfVar var_90
  loc_9EC039: FLdPr Me
  loc_9EC03C: MemLdRfVar from_stack_1.global_76
  loc_9EC03F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9EC044: IStI2 KeyAscii
  loc_9EC047: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9EC052: ExitProcHresult
End Sub

Private Sub FecoNopeMsk_KeyPress(KeyAscii As Integer) '989908
  'Data Table: 4FD0E0
  loc_9898C4: ILdI2 KeyAscii
  loc_9898C7: CI4UI1
  loc_9898C8: LitI4 &H20
  loc_9898CD: EqI4
  loc_9898CE: BranchF loc_989904
  loc_9898D1: LitVar_Missing var_A4
  loc_9898D4: PopAdLdVar
  loc_9898D5: LitVarI4
  loc_9898DD: PopAdLdVar
  loc_9898DE: ImpAdLdRf MemVar_C3D9A8
  loc_9898E1: NewIfNullPr frmCalendario
  loc_9898E4: frmCalendario.Show from_stack_1, from_stack_2
  loc_9898E9: ImpAdLdRf MemVar_C3D038
  loc_9898EC: CDargRef
  loc_9898F0: FLdPr Me
  loc_9898F3: VCallAd Control_ID_FecoNopeMsk
  loc_9898F6: FStAdFunc var_A8
  loc_9898F9: FLdPr var_A8
  loc_9898FC: LateIdSt
  loc_989901: FFree1Ad var_A8
  loc_989904: ExitProcHresult
End Sub

Private Sub FechNopeMsk_UnknownEvent_0 '94B480
  'Data Table: 4FD0E0
  loc_94B46C: FLdPrThis
  loc_94B46D: VCallAd Control_ID_FechNopeMsk
  loc_94B470: CVarAd
  loc_94B474: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B479: FFree1Var var_94 = ""
  loc_94B47C: ExitProcHresult
  loc_94B47D: CExtInstUnk
End Sub

Private Sub FechNopeMsk_UnknownEvent_8 'A565F8
  'Data Table: 4FD0E0
  loc_A56330: FLdRfVar var_8A
  loc_A56333: FLdPr Me
  loc_A56336: VCallAd Control_ID_cmdCancelar
  loc_A56339: FStAdFunc var_88
  loc_A5633C: FLdPr var_88
  loc_A5633F:  = Me.Value
  loc_A56344: FLdI2 var_8A
  loc_A56347: NotI4
  loc_A56348: FLdPr Me
  loc_A5634B: VCallAd Control_ID_FechNopeMsk
  loc_A5634E: FStAdFunc var_90
  loc_A56351: FLdPr var_90
  loc_A56354: LateIdLdVar var_A0 DispID_13 -32767
  loc_A5635B: CBoolVar
  loc_A5635D: AndI4
  loc_A5635E: FFreeAd var_88 = ""
  loc_A56365: FFree1Var var_A0 = ""
  loc_A56368: BranchF loc_A565F7
  loc_A5636B: FLdPr Me
  loc_A5636E: VCallAd Control_ID_FechNopeMsk
  loc_A56371: FStAdFunc var_88
  loc_A56374: FLdPr var_88
  loc_A56377: LateIdLdVar var_A0 DispID_15 0
  loc_A5637E: PopAd
  loc_A56380: FLdPr Me
  loc_A56383: VCallAd Control_ID_FechNopeMsk
  loc_A56386: FStAdFunc var_90
  loc_A56389: FLdPr var_90
  loc_A5638C: LateIdLdVar var_B0 DispID_11 -32767
  loc_A56393: PopAd
  loc_A56395: FLdPr Me
  loc_A56398: MemLdRfVar from_stack_1.global_148
  loc_A5639B: CVarRef
  loc_A563A0: FLdRfVar var_B0
  loc_A563A3: CStrVarTmp
  loc_A563A4: CVarStr var_D0
  loc_A563A7: FLdPr Me
  loc_A563AA: MemLdUI1 global_74
  loc_A563AE: CI2UI1
  loc_A563B0: LitI2_Byte 1
  loc_A563B2: EqI2
  loc_A563B3: CVarBoolI2 var_C0
  loc_A563B7: FLdRfVar var_F0
  loc_A563BA: ImpAdCallFPR4  = IIf(, , )
  loc_A563BF: FLdPr Me
  loc_A563C2: VCallAd Control_ID_FechNopeMsk
  loc_A563C5: FStAdFunc var_104
  loc_A563C8: LitI2_Byte &HFF
  loc_A563CA: PopTmpLdAd2 var_8A
  loc_A563CD: FLdZeroAd var_104
  loc_A563D0: FStAdFunc var_FC
  loc_A563D3: FLdRfVar var_FC
  loc_A563D6: FLdRfVar var_F0
  loc_A563D9: CStrVarVal var_F8
  loc_A563DD: LitI2_Byte 0
  loc_A563DF: LitI2_Byte &HFF
  loc_A563E1: FLdRfVar var_A0
  loc_A563E4: CStrVarTmp
  loc_A563E5: FStStrNoPop var_F4
  loc_A563E8: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A563ED: FStStrNoPop var_100
  loc_A563F0: FLdPr Me
  loc_A563F3: MemStStrCopy
  loc_A563F7: FFreeStr var_F4 = "": var_F8 = ""
  loc_A56400: FFreeAd var_88 = "": var_90 = "": var_FC = ""
  loc_A5640B: FFreeVar var_A0 = "": var_B0 = "": var_C0 = "": var_D0 = ""
  loc_A56418: FLdPr Me
  loc_A5641B: MemLdStr global_76
  loc_A5641E: LitStr vbNullString
  loc_A56421: NeStr
  loc_A56423: BranchF loc_A565BB
  loc_A56426: FLdPr Me
  loc_A56429: MemLdStr global_76
  loc_A5642C: LitStr "El Periodo ingresado es distinto al Periodo de trabajo. Verifique..."
  loc_A5642F: NeStr
  loc_A56431: CVarBoolI2 var_114
  loc_A56435: LitI4 &HD
  loc_A5643A: FLdPr Me
  loc_A5643D: MemLdRfVar from_stack_1.global_76
  loc_A56440: CVarRef
  loc_A56445: FLdRfVar var_A0
  loc_A56448: ImpAdCallFPR4  = Left(, )
  loc_A5644D: FLdRfVar var_A0
  loc_A56450: LitVarStr var_E0, "Fecha futura:"
  loc_A56455: HardType
  loc_A56456: NeVar var_B0
  loc_A5645A: AndVar var_D0
  loc_A5645E: CBoolVarNull
  loc_A56460: FFreeVar var_A0 = ""
  loc_A56467: BranchF loc_A565BB
  loc_A5646A: FLdPr Me
  loc_A5646D: MemLdStr global_76
  loc_A56470: LitStr vbNullString
  loc_A56473: NeStr
  loc_A56475: LitStr "Municipalidad de Guaymallén"
  loc_A56478: LitStr "Municipalidad de Santa Rosa"
  loc_A5647B: EqStr
  loc_A5647D: AndI4
  loc_A5647E: ImpAdLdI4 MemVar_C3D03C
  loc_A56481: LitStr "Mariela"
  loc_A56484: EqStr
  loc_A56486: ImpAdLdI4 MemVar_C3D03C
  loc_A56489: LitStr "Marisa"
  loc_A5648C: EqStr
  loc_A5648E: OrI4
  loc_A5648F: ImpAdLdI4 MemVar_C3D03C
  loc_A56492: LitStr "vanesac"
  loc_A56495: EqStr
  loc_A56497: OrI4
  loc_A56498: ImpAdLdI4 MemVar_C3D03C
  loc_A5649B: LitStr "arayaj"
  loc_A5649E: EqStr
  loc_A564A0: OrI4
  loc_A564A1: ImpAdLdI4 MemVar_C3D03C
  loc_A564A4: LitStr "varaya"
  loc_A564A7: EqStr
  loc_A564A9: OrI4
  loc_A564AA: ImpAdLdI4 MemVar_C3D03C
  loc_A564AD: LitStr "arayaj"
  loc_A564B0: EqStr
  loc_A564B2: OrI4
  loc_A564B3: ImpAdLdI4 MemVar_C3D03C
  loc_A564B6: LitStr "gabriel"
  loc_A564B9: EqStr
  loc_A564BB: OrI4
  loc_A564BC: ImpAdLdI4 MemVar_C3D03C
  loc_A564BF: LitStr "caicedol"
  loc_A564C2: EqStr
  loc_A564C4: OrI4
  loc_A564C5: ImpAdLdI4 MemVar_C3D03C
  loc_A564C8: LitStr "floros"
  loc_A564CB: EqStr
  loc_A564CD: OrI4
  loc_A564CE: AndI4
  loc_A564CF: BranchF loc_A564E9
  loc_A564D2: LitStr "Advertencia: "
  loc_A564D5: FLdPr Me
  loc_A564D8: MemLdStr global_76
  loc_A564DB: ConcatStr
  loc_A564DC: FStStrNoPop var_F4
  loc_A564DF: FLdPr Me
  loc_A564E2: MemStStrCopy
  loc_A564E6: FFree1Str var_F4
  loc_A564E9: FLdPr Me
  loc_A564EC: MemLdStr global_76
  loc_A564EF: LitStr vbNullString
  loc_A564F2: NeStr
  loc_A564F4: LitStr "Municipalidad de Guaymallén"
  loc_A564F7: LitStr "Municipalidad de La Paz"
  loc_A564FA: EqStr
  loc_A564FC: AndI4
  loc_A564FD: ImpAdLdI4 MemVar_C3D03C
  loc_A56500: LitStr "root"
  loc_A56503: EqStr
  loc_A56505: ImpAdLdI4 MemVar_C3D03C
  loc_A56508: LitStr "fredyh"
  loc_A5650B: EqStr
  loc_A5650D: OrI4
  loc_A5650E: ImpAdLdI4 MemVar_C3D03C
  loc_A56511: LitStr "evespa"
  loc_A56514: EqStr
  loc_A56516: OrI4
  loc_A56517: ImpAdLdI4 MemVar_C3D03C
  loc_A5651A: LitStr "jbeneite"
  loc_A5651D: EqStr
  loc_A5651F: OrI4
  loc_A56520: AndI4
  loc_A56521: BranchF loc_A5653B
  loc_A56524: LitStr "Advertencia: "
  loc_A56527: FLdPr Me
  loc_A5652A: MemLdStr global_76
  loc_A5652D: ConcatStr
  loc_A5652E: FStStrNoPop var_F4
  loc_A56531: FLdPr Me
  loc_A56534: MemStStrCopy
  loc_A56538: FFree1Str var_F4
  loc_A5653B: FLdPr Me
  loc_A5653E: MemLdStr global_76
  loc_A56541: LitStr vbNullString
  loc_A56544: NeStr
  loc_A56546: LitStr "Municipalidad de Guaymallén"
  loc_A56549: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_A5654C: EqStr
  loc_A5654E: AndI4
  loc_A5654F: BranchF loc_A56569
  loc_A56552: LitStr "Advertencia: "
  loc_A56555: FLdPr Me
  loc_A56558: MemLdStr global_76
  loc_A5655B: ConcatStr
  loc_A5655C: FStStrNoPop var_F4
  loc_A5655F: FLdPr Me
  loc_A56562: MemStStrCopy
  loc_A56566: FFree1Str var_F4
  loc_A56569: FLdPr Me
  loc_A5656C: MemLdStr global_76
  loc_A5656F: LitStr vbNullString
  loc_A56572: NeStr
  loc_A56574: LitStr "Municipalidad de Guaymallén"
  loc_A56577: LitStr "Municipalidad de Tupungato"
  loc_A5657A: EqStr
  loc_A5657C: AndI4
  loc_A5657D: ImpAdLdI4 MemVar_C3D03C
  loc_A56580: LitStr "ysagas"
  loc_A56583: EqStr
  loc_A56585: ImpAdLdI4 MemVar_C3D03C
  loc_A56588: LitStr "lcarmona"
  loc_A5658B: EqStr
  loc_A5658D: OrI4
  loc_A5658E: ImpAdLdI4 MemVar_C3D03C
  loc_A56591: LitStr "mbalde"
  loc_A56594: EqStr
  loc_A56596: OrI4
  loc_A56597: ImpAdLdI4 MemVar_C3D03C
  loc_A5659A: LitStr "root"
  loc_A5659D: EqStr
  loc_A5659F: OrI4
  loc_A565A0: AndI4
  loc_A565A1: BranchF loc_A565BB
  loc_A565A4: LitStr "Advertencia: "
  loc_A565A7: FLdPr Me
  loc_A565AA: MemLdStr global_76
  loc_A565AD: ConcatStr
  loc_A565AE: FStStrNoPop var_F4
  loc_A565B1: FLdPr Me
  loc_A565B4: MemStStrCopy
  loc_A565B8: FFree1Str var_F4
  loc_A565BB: FLdPr Me
  loc_A565BE: VCallAd Control_ID_FechNopeMsk
  loc_A565C1: FStAdFunc var_104
  loc_A565C4: LitNothing
  loc_A565C6: CastAd
  loc_A565C9: FStAdFunc var_FC
  loc_A565CC: FLdRfVar var_FC
  loc_A565CF: FLdZeroAd var_104
  loc_A565D2: FStAdFuncNoPop
  loc_A565D5: CastAd
  loc_A565D8: FStAdFunc var_90
  loc_A565DB: FLdRfVar var_90
  loc_A565DE: FLdPr Me
  loc_A565E1: MemLdRfVar from_stack_1.global_76
  loc_A565E4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A565E9: IStI2 KeyAscii
  loc_A565EC: FFreeAd var_88 = "": var_90 = "": var_FC = ""
  loc_A565F7: ExitProcHresult
End Sub

Private Sub FechNopeMsk_KeyPress(KeyAscii As Integer) '989890
  'Data Table: 4FD0E0
  loc_98984C: ILdI2 KeyAscii
  loc_98984F: CI4UI1
  loc_989850: LitI4 &H20
  loc_989855: EqI4
  loc_989856: BranchF loc_98988C
  loc_989859: LitVar_Missing var_A4
  loc_98985C: PopAdLdVar
  loc_98985D: LitVarI4
  loc_989865: PopAdLdVar
  loc_989866: ImpAdLdRf MemVar_C3D9A8
  loc_989869: NewIfNullPr frmCalendario
  loc_98986C: frmCalendario.Show from_stack_1, from_stack_2
  loc_989871: ImpAdLdRf MemVar_C3D038
  loc_989874: CDargRef
  loc_989878: FLdPr Me
  loc_98987B: VCallAd Control_ID_FechNopeMsk
  loc_98987E: FStAdFunc var_A8
  loc_989881: FLdPr var_A8
  loc_989884: LateIdSt
  loc_989889: FFree1Ad var_A8
  loc_98988C: ExitProcHresult
End Sub

Private Sub ExorImpuMsk_UnknownEvent_0 '94B678
  'Data Table: 4FD0E0
  loc_94B664: FLdPr Me
  loc_94B667: VCallAd Control_ID_ExorImpuMsk
  loc_94B66A: CVarAd
  loc_94B66E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B673: FFree1Var var_94 = ""
  loc_94B676: ExitProcHresult
End Sub

Private Sub ExorImpuMsk_UnknownEvent_8 'B10E28
  'Data Table: 4FD0E0
  loc_B106CC: FLdRfVar var_8E
  loc_B106CF: FLdPr Me
  loc_B106D2: VCallAd Control_ID_cmdCancelar
  loc_B106D5: FStAdFunc var_8C
  loc_B106D8: FLdPr var_8C
  loc_B106DB:  = Me.Value
  loc_B106E0: FLdI2 var_8E
  loc_B106E3: NotI4
  loc_B106E4: FLdPr Me
  loc_B106E7: VCallAd Control_ID_ExorImpuMsk
  loc_B106EA: FStAdFunc var_94
  loc_B106ED: FLdPr var_94
  loc_B106F0: LateIdLdVar var_A4 DispID_13 -32767
  loc_B106F7: CBoolVar
  loc_B106F9: AndI4
  loc_B106FA: FFreeAd var_8C = ""
  loc_B10701: FFree1Var var_A4 = ""
  loc_B10704: BranchF loc_B10E25
  loc_B10707: FLdPr Me
  loc_B1070A: VCallAd Control_ID_ExorImpuMsk
  loc_B1070D: FStAdFunc var_8C
  loc_B10710: FLdPr var_8C
  loc_B10713: LateIdLdVar var_A4 DispID_22 0
  loc_B1071A: CStrVarTmp
  loc_B1071B: FStStrNoPop var_A8
  loc_B1071E: LitStr vbNullString
  loc_B10721: NeStr
  loc_B10723: FFree1Str var_A8
  loc_B10726: FFree1Ad var_8C
  loc_B10729: FFree1Var var_A4 = ""
  loc_B1072C: BranchF loc_B10DC0
  loc_B1072F: FLdPr Me
  loc_B10732: VCallAd Control_ID_ExorImpuMsk
  loc_B10735: FStAdFunc var_8C
  loc_B10738: FLdPr var_8C
  loc_B1073B: LateIdLdVar var_A4 DispID_22 0
  loc_B10742: PopAd
  loc_B10744: LitI2_Byte 0
  loc_B10746: PopTmpLdAd2 var_AC
  loc_B10749: LitI2_Byte 0
  loc_B1074B: PopTmpLdAd2 var_AA
  loc_B1074E: LitI2_Byte 0
  loc_B10750: PopTmpLdAd2 var_8E
  loc_B10753: FLdRfVar var_A4
  loc_B10756: CStrVarTmp
  loc_B10757: FStStrNoPop var_A8
  loc_B1075A: LitStr "Expediente"
  loc_B1075D: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_B10762: FStStrNoPop var_B0
  loc_B10765: FLdPr Me
  loc_B10768: MemStStrCopy
  loc_B1076C: FFreeStr var_A8 = ""
  loc_B10773: FFree1Ad var_8C
  loc_B10776: FFree1Var var_A4 = ""
  loc_B10779: FLdPr Me
  loc_B1077C: VCallAd Control_ID_ExorImpuMsk
  loc_B1077F: FStAdFunc var_B8
  loc_B10782: LitNothing
  loc_B10784: CastAd
  loc_B10787: FStAdFunc var_B4
  loc_B1078A: FLdRfVar var_B4
  loc_B1078D: FLdZeroAd var_B8
  loc_B10790: FStAdFuncNoPop
  loc_B10793: CastAd
  loc_B10796: FStAdFunc var_94
  loc_B10799: FLdRfVar var_94
  loc_B1079C: FLdPr Me
  loc_B1079F: MemLdRfVar from_stack_1.global_76
  loc_B107A2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B107A7: IStI2 KeyAscii
  loc_B107AA: FFreeAd var_8C = "": var_94 = "": var_B4 = ""
  loc_B107B5: ILdI2 KeyAscii
  loc_B107B8: NotI4
  loc_B107B9: BranchF loc_B10DBD
  loc_B107BC: FLdPr Me
  loc_B107BF: VCallAd Control_ID_ExorImpuMsk
  loc_B107C2: FStAdFunc var_8C
  loc_B107C5: FLdPr var_8C
  loc_B107C8: LateIdLdVar var_A4 DispID_22 0
  loc_B107CF: PopAd
  loc_B107D1: FLdRfVar var_B8
  loc_B107D4: LitVarStr var_C8, "CodiNope"
  loc_B107D9: PopAdLdVar
  loc_B107DA: FLdRfVar var_B4
  loc_B107DD: FLdRfVar var_94
  loc_B107E0: FLdPr Me
  loc_B107E3: MemLdRfVar from_stack_1.global_52
  loc_B107E6: NewIfNullPr clsnotapedido
  loc_B107E9: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B107EE: FLdPr var_94
  loc_B107F1:  = Me.Fields
  loc_B107F6: FLdPr var_B4
  loc_B107F9: from_stack_2 = Me.Item(from_stack_1)
  loc_B107FE: LitVarI2 var_108, 0
  loc_B10803: FLdZeroAd var_B8
  loc_B10806: CVarAd
  loc_B1080A: FLdPr Me
  loc_B1080D: MemLdUI1 global_74
  loc_B10811: LitI2_Byte 2
  loc_B10813: EqI2
  loc_B10814: CVarBoolI2 var_D8
  loc_B10818: FLdRfVar var_118
  loc_B1081B: ImpAdCallFPR4  = IIf(, , )
  loc_B10820: FLdRfVar var_11C
  loc_B10823: FLdRfVar var_118
  loc_B10826: CI2Var
  loc_B10827: FLdRfVar var_A4
  loc_B1082A: CStrVarTmp
  loc_B1082B: FStStrNoPop var_B0
  loc_B1082E: ImpAdLdI2 MemVar_C3D064
  loc_B10831: CStrUI1
  loc_B10833: FStStrNoPop var_A8
  loc_B10836: FLdPr Me
  loc_B10839: MemLdRfVar from_stack_1.global_52
  loc_B1083C: NewIfNullPr clsnotapedido
  loc_B1083F: from_stack_4v = clsnotapedido.TieneExpediente(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B10844: ILdRf var_11C
  loc_B10847: FLdPr Me
  loc_B1084A: MemStStrCopy
  loc_B1084E: FFreeStr var_A8 = "": var_B0 = ""
  loc_B10857: FFreeAd var_8C = "": var_94 = ""
  loc_B10860: FFreeVar var_A4 = "": var_D8 = "": var_E8 = "": var_108 = ""
  loc_B1086D: FLdPr Me
  loc_B10870: VCallAd Control_ID_ExorImpuMsk
  loc_B10873: FStAdFunc var_B8
  loc_B10876: LitNothing
  loc_B10878: CastAd
  loc_B1087B: FStAdFunc var_B4
  loc_B1087E: FLdRfVar var_B4
  loc_B10881: FLdZeroAd var_B8
  loc_B10884: FStAdFuncNoPop
  loc_B10887: CastAd
  loc_B1088A: FStAdFunc var_94
  loc_B1088D: FLdRfVar var_94
  loc_B10890: FLdPr Me
  loc_B10893: MemLdRfVar from_stack_1.global_76
  loc_B10896: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B1089B: IStI2 KeyAscii
  loc_B1089E: FFreeAd var_8C = "": var_94 = "": var_B4 = ""
  loc_B108A9: LitI2_Byte 1
  loc_B108AB: FLdRfVar var_86
  loc_B108AE: FLdPr Me
  loc_B108B1: VCallAd Control_ID_ExorImpuMsk
  loc_B108B4: FStAdFunc var_8C
  loc_B108B7: FLdPr var_8C
  loc_B108BA: LateIdLdVar var_A4 DispID_22 0
  loc_B108C1: CStrVarTmp
  loc_B108C2: FStStrNoPop var_A8
  loc_B108C5: FnLenStr
  loc_B108C6: CI2I4
  loc_B108C7: FFree1Str var_A8
  loc_B108CA: FFree1Ad var_8C
  loc_B108CD: FFree1Var var_A4 = ""
  loc_B108D0: ForI2 var_120
  loc_B108D6: FLdPr Me
  loc_B108D9: VCallAd Control_ID_ExorImpuMsk
  loc_B108DC: FStAdFunc var_8C
  loc_B108DF: FLdPr var_8C
  loc_B108E2: LateIdLdVar var_A4 DispID_22 0
  loc_B108E9: PopAd
  loc_B108EB: FLdPr Me
  loc_B108EE: VCallAd Control_ID_ExorImpuMsk
  loc_B108F1: FStAdFunc var_94
  loc_B108F4: FLdPr var_94
  loc_B108F7: LateIdLdVar var_140 DispID_22 0
  loc_B108FE: PopAd
  loc_B10900: FLdPr Me
  loc_B10903: VCallAd Control_ID_ExorImpuMsk
  loc_B10906: FStAdFunc var_B4
  loc_B10909: FLdPr var_B4
  loc_B1090C: LateIdLdVar var_1B0 DispID_22 0
  loc_B10913: PopAd
  loc_B10915: FLdPr Me
  loc_B10918: VCallAd Control_ID_ExorImpuMsk
  loc_B1091B: FStAdFunc var_B8
  loc_B1091E: FLdPr var_B8
  loc_B10921: LateIdLdVar var_230 DispID_22 0
  loc_B10928: PopAd
  loc_B1092A: FLdPr Me
  loc_B1092D: VCallAd Control_ID_ExorImpuMsk
  loc_B10930: FStAdFunc var_2A4
  loc_B10933: FLdPr var_2A4
  loc_B10936: LateIdLdVar var_2B4 DispID_22 0
  loc_B1093D: PopAd
  loc_B1093F: FLdPr Me
  loc_B10942: VCallAd Control_ID_ExorImpuMsk
  loc_B10945: FStAdFunc var_328
  loc_B10948: FLdPr var_328
  loc_B1094B: LateIdLdVar var_338 DispID_22 0
  loc_B10952: PopAd
  loc_B10954: FLdPr Me
  loc_B10957: VCallAd Control_ID_ExorImpuMsk
  loc_B1095A: FStAdFunc var_3AC
  loc_B1095D: FLdPr var_3AC
  loc_B10960: LateIdLdVar var_3BC DispID_22 0
  loc_B10967: PopAd
  loc_B10969: FLdPr Me
  loc_B1096C: VCallAd Control_ID_ExorImpuMsk
  loc_B1096F: FStAdFunc var_430
  loc_B10972: FLdPr var_430
  loc_B10975: LateIdLdVar var_440 DispID_22 0
  loc_B1097C: PopAd
  loc_B1097E: FLdPr Me
  loc_B10981: VCallAd Control_ID_ExorImpuMsk
  loc_B10984: FStAdFunc var_4B4
  loc_B10987: FLdPr var_4B4
  loc_B1098A: LateIdLdVar var_4C4 DispID_22 0
  loc_B10991: PopAd
  loc_B10993: FLdPr Me
  loc_B10996: VCallAd Control_ID_ExorImpuMsk
  loc_B10999: FStAdFunc var_538
  loc_B1099C: FLdPr var_538
  loc_B1099F: LateIdLdVar var_548 DispID_22 0
  loc_B109A6: PopAd
  loc_B109A8: LitVarI2 var_108, 1
  loc_B109AD: FLdI2 var_86
  loc_B109B0: CI4UI1
  loc_B109B1: FLdRfVar var_A4
  loc_B109B4: CStrVarTmp
  loc_B109B5: CVarStr var_E8
  loc_B109B8: FLdRfVar var_118
  loc_B109BB: ImpAdCallFPR4  = Mid(, , )
  loc_B109C0: FLdRfVar var_118
  loc_B109C3: LitVarStr var_D8, "0"
  loc_B109C8: HardType
  loc_B109C9: EqVar var_130
  loc_B109CD: LitVarI2 var_160, 1
  loc_B109D2: FLdI2 var_86
  loc_B109D5: CI4UI1
  loc_B109D6: FLdRfVar var_140
  loc_B109D9: CStrVarTmp
  loc_B109DA: CVarStr var_150
  loc_B109DD: FLdRfVar var_170
  loc_B109E0: ImpAdCallFPR4  = Mid(, , )
  loc_B109E5: FLdRfVar var_170
  loc_B109E8: LitVarStr var_180, "1"
  loc_B109ED: HardType
  loc_B109EE: EqVar var_190
  loc_B109F2: OrVar var_1A0
  loc_B109F6: LitVarI2 var_1E0, 1
  loc_B109FB: FLdI2 var_86
  loc_B109FE: CI4UI1
  loc_B109FF: FLdRfVar var_1B0
  loc_B10A02: CStrVarTmp
  loc_B10A03: CVarStr var_1C0
  loc_B10A06: FLdRfVar var_1F0
  loc_B10A09: ImpAdCallFPR4  = Mid(, , )
  loc_B10A0E: FLdRfVar var_1F0
  loc_B10A11: LitVarStr var_200, "2"
  loc_B10A16: HardType
  loc_B10A17: EqVar var_210
  loc_B10A1B: OrVar var_220
  loc_B10A1F: LitVarI2 var_260, 1
  loc_B10A24: FLdI2 var_86
  loc_B10A27: CI4UI1
  loc_B10A28: FLdRfVar var_230
  loc_B10A2B: CStrVarTmp
  loc_B10A2C: CVarStr var_240
  loc_B10A2F: FLdRfVar var_270
  loc_B10A32: ImpAdCallFPR4  = Mid(, , )
  loc_B10A37: FLdRfVar var_270
  loc_B10A3A: LitVarStr var_280, "3"
  loc_B10A3F: HardType
  loc_B10A40: EqVar var_290
  loc_B10A44: OrVar var_2A0
  loc_B10A48: LitVarI2 var_2E4, 1
  loc_B10A4D: FLdI2 var_86
  loc_B10A50: CI4UI1
  loc_B10A51: FLdRfVar var_2B4
  loc_B10A54: CStrVarTmp
  loc_B10A55: CVarStr var_2C4
  loc_B10A58: FLdRfVar var_2F4
  loc_B10A5B: ImpAdCallFPR4  = Mid(, , )
  loc_B10A60: FLdRfVar var_2F4
  loc_B10A63: LitVarStr var_304, "4"
  loc_B10A68: HardType
  loc_B10A69: EqVar var_314
  loc_B10A6D: OrVar var_324
  loc_B10A71: LitVarI2 var_368, 1
  loc_B10A76: FLdI2 var_86
  loc_B10A79: CI4UI1
  loc_B10A7A: FLdRfVar var_338
  loc_B10A7D: CStrVarTmp
  loc_B10A7E: CVarStr var_348
  loc_B10A81: FLdRfVar var_378
  loc_B10A84: ImpAdCallFPR4  = Mid(, , )
  loc_B10A89: FLdRfVar var_378
  loc_B10A8C: LitVarStr var_388, "5"
  loc_B10A91: HardType
  loc_B10A92: EqVar var_398
  loc_B10A96: OrVar var_3A8
  loc_B10A9A: LitVarI2 var_3EC, 1
  loc_B10A9F: FLdI2 var_86
  loc_B10AA2: CI4UI1
  loc_B10AA3: FLdRfVar var_3BC
  loc_B10AA6: CStrVarTmp
  loc_B10AA7: CVarStr var_3CC
  loc_B10AAA: FLdRfVar var_3FC
  loc_B10AAD: ImpAdCallFPR4  = Mid(, , )
  loc_B10AB2: FLdRfVar var_3FC
  loc_B10AB5: LitVarStr var_40C, "6"
  loc_B10ABA: HardType
  loc_B10ABB: EqVar var_41C
  loc_B10ABF: OrVar var_42C
  loc_B10AC3: LitVarI2 var_470, 1
  loc_B10AC8: FLdI2 var_86
  loc_B10ACB: CI4UI1
  loc_B10ACC: FLdRfVar var_440
  loc_B10ACF: CStrVarTmp
  loc_B10AD0: CVarStr var_450
  loc_B10AD3: FLdRfVar var_480
  loc_B10AD6: ImpAdCallFPR4  = Mid(, , )
  loc_B10ADB: FLdRfVar var_480
  loc_B10ADE: LitVarStr var_490, "7"
  loc_B10AE3: HardType
  loc_B10AE4: EqVar var_4A0
  loc_B10AE8: OrVar var_4B0
  loc_B10AEC: LitVarI2 var_4F4, 1
  loc_B10AF1: FLdI2 var_86
  loc_B10AF4: CI4UI1
  loc_B10AF5: FLdRfVar var_4C4
  loc_B10AF8: CStrVarTmp
  loc_B10AF9: CVarStr var_4D4
  loc_B10AFC: FLdRfVar var_504
  loc_B10AFF: ImpAdCallFPR4  = Mid(, , )
  loc_B10B04: FLdRfVar var_504
  loc_B10B07: LitVarStr var_514, "8"
  loc_B10B0C: HardType
  loc_B10B0D: EqVar var_524
  loc_B10B11: OrVar var_534
  loc_B10B15: LitVarI2 var_578, 1
  loc_B10B1A: FLdI2 var_86
  loc_B10B1D: CI4UI1
  loc_B10B1E: FLdRfVar var_548
  loc_B10B21: CStrVarTmp
  loc_B10B22: CVarStr var_558
  loc_B10B25: FLdRfVar var_588
  loc_B10B28: ImpAdCallFPR4  = Mid(, , )
  loc_B10B2D: FLdRfVar var_588
  loc_B10B30: LitVarStr var_598, "9"
  loc_B10B35: HardType
  loc_B10B36: EqVar var_5A8
  loc_B10B3A: OrVar var_5B8
  loc_B10B3E: CBoolVarNull
  loc_B10B40: FFreeAd var_8C = "": var_94 = "": var_B4 = "": var_B8 = "": var_2A4 = "": var_328 = "": var_3AC = "": var_430 = "": var_4B4 = ""
  loc_B10B57: FFreeVar var_470 = "": var_480 = "": var_4C4 = "": var_4D4 = "": var_4F4 = "": var_504 = "": var_548 = "": var_558 = "": var_578 = "": var_588 = "": var_A4 = "": var_E8 = "": var_108 = "": var_118 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_1F0 = "": var_230 = "": var_240 = "": var_260 = "": var_270 = "": var_2B4 = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_338 = "": var_348 = "": var_368 = "": var_378 = "": var_3BC = "": var_3CC = "": var_3EC = "": var_3FC = "": var_440 = ""
  loc_B10BAA: BranchF loc_B10BBD
  loc_B10BAD: LitStr vbNullString
  loc_B10BB0: FLdPr Me
  loc_B10BB3: MemStStrCopy
  loc_B10BB7: Branch loc_B10BCF
  loc_B10BBA: Branch loc_B10BC7
  loc_B10BBD: LitStr "Debe ingresar como mínimo, UN número. Verifique..."
  loc_B10BC0: FLdPr Me
  loc_B10BC3: MemStStrCopy
  loc_B10BC7: FLdRfVar var_86
  loc_B10BCA: NextI2 var_120, loc_B108D6
  loc_B10BCF: FLdPr Me
  loc_B10BD2: VCallAd Control_ID_ExorImpuMsk
  loc_B10BD5: FStAdFunc var_B8
  loc_B10BD8: LitNothing
  loc_B10BDA: CastAd
  loc_B10BDD: FStAdFunc var_B4
  loc_B10BE0: FLdRfVar var_B4
  loc_B10BE3: FLdZeroAd var_B8
  loc_B10BE6: FStAdFuncNoPop
  loc_B10BE9: CastAd
  loc_B10BEC: FStAdFunc var_94
  loc_B10BEF: FLdRfVar var_94
  loc_B10BF2: FLdPr Me
  loc_B10BF5: MemLdRfVar from_stack_1.global_76
  loc_B10BF8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B10BFD: IStI2 KeyAscii
  loc_B10C00: FFreeAd var_8C = "": var_94 = "": var_B4 = ""
  loc_B10C0B: ILdI2 KeyAscii
  loc_B10C0E: NotI4
  loc_B10C0F: BranchF loc_B10DBD
  loc_B10C12: LitStr "Municipalidad de Guaymallén"
  loc_B10C15: LitStr "Municipalidad de Tupungato"
  loc_B10C18: EqStr
  loc_B10C1A: BranchF loc_B10DBD
  loc_B10C1D: FLdPr Me
  loc_B10C20: VCallAd Control_ID_ExorImpuMsk
  loc_B10C23: FStAdFunc var_8C
  loc_B10C26: FLdPr var_8C
  loc_B10C29: LateIdLdVar var_A4 DispID_22 0
  loc_B10C30: PopAd
  loc_B10C32: LitI4 4
  loc_B10C37: FLdRfVar var_A4
  loc_B10C3A: CStrVarTmp
  loc_B10C3B: CVarStr var_E8
  loc_B10C3E: FLdRfVar var_108
  loc_B10C41: ImpAdCallFPR4  = Right(, )
  loc_B10C46: FLdRfVar var_108
  loc_B10C49: ImpAdCallI2 IsNumeric()
  loc_B10C4E: FFree1Ad var_8C
  loc_B10C51: FFreeVar var_A4 = "": var_E8 = ""
  loc_B10C5A: BranchF loc_B10CE9
  loc_B10C5D: FLdPr Me
  loc_B10C60: VCallAd Control_ID_ExorImpuMsk
  loc_B10C63: FStAdFunc var_8C
  loc_B10C66: FLdPr var_8C
  loc_B10C69: LateIdLdVar var_A4 DispID_22 0
  loc_B10C70: PopAd
  loc_B10C72: LitI4 4
  loc_B10C77: FLdRfVar var_A4
  loc_B10C7A: CStrVarTmp
  loc_B10C7B: CVarStr var_E8
  loc_B10C7E: FLdRfVar var_108
  loc_B10C81: ImpAdCallFPR4  = Right(, )
  loc_B10C86: FLdRfVar var_108
  loc_B10C89: FnCIntVar
  loc_B10C8B: ImpAdLdI2 MemVar_C3D064
  loc_B10C8E: GtI2
  loc_B10C8F: FFree1Ad var_8C
  loc_B10C92: FFreeVar var_A4 = "": var_E8 = "": var_108 = ""
  loc_B10C9D: BranchF loc_B10CE6
  loc_B10CA0: LitStr "El AÑO del número de Expediente, es erróneo. Verifique..."
  loc_B10CA3: FLdPr Me
  loc_B10CA6: MemStStrCopy
  loc_B10CAA: FLdPr Me
  loc_B10CAD: VCallAd Control_ID_ExorImpuMsk
  loc_B10CB0: FStAdFunc var_B8
  loc_B10CB3: LitNothing
  loc_B10CB5: CastAd
  loc_B10CB8: FStAdFunc var_B4
  loc_B10CBB: FLdRfVar var_B4
  loc_B10CBE: FLdZeroAd var_B8
  loc_B10CC1: FStAdFuncNoPop
  loc_B10CC4: CastAd
  loc_B10CC7: FStAdFunc var_94
  loc_B10CCA: FLdRfVar var_94
  loc_B10CCD: FLdPr Me
  loc_B10CD0: MemLdRfVar from_stack_1.global_76
  loc_B10CD3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B10CD8: IStI2 KeyAscii
  loc_B10CDB: FFreeAd var_8C = "": var_94 = "": var_B4 = ""
  loc_B10CE6: Branch loc_B10DBD
  loc_B10CE9: FLdPr Me
  loc_B10CEC: VCallAd Control_ID_ExorImpuMsk
  loc_B10CEF: FStAdFunc var_8C
  loc_B10CF2: FLdPr var_8C
  loc_B10CF5: LateIdLdVar var_A4 DispID_22 0
  loc_B10CFC: PopAd
  loc_B10CFE: LitI4 2
  loc_B10D03: FLdRfVar var_A4
  loc_B10D06: CStrVarTmp
  loc_B10D07: CVarStr var_E8
  loc_B10D0A: FLdRfVar var_108
  loc_B10D0D: ImpAdCallFPR4  = Right(, )
  loc_B10D12: FLdRfVar var_108
  loc_B10D15: ImpAdCallI2 IsNumeric()
  loc_B10D1A: FFree1Ad var_8C
  loc_B10D1D: FFreeVar var_A4 = "": var_E8 = ""
  loc_B10D26: BranchF loc_B10DBD
  loc_B10D29: FLdPr Me
  loc_B10D2C: VCallAd Control_ID_ExorImpuMsk
  loc_B10D2F: FStAdFunc var_8C
  loc_B10D32: FLdPr var_8C
  loc_B10D35: LateIdLdVar var_A4 DispID_22 0
  loc_B10D3C: PopAd
  loc_B10D3E: LitI4 2
  loc_B10D43: FLdRfVar var_A4
  loc_B10D46: CStrVarTmp
  loc_B10D47: CVarStr var_E8
  loc_B10D4A: FLdRfVar var_108
  loc_B10D4D: ImpAdCallFPR4  = Right(, )
  loc_B10D52: FLdRfVar var_108
  loc_B10D55: LitVarI2 var_C8, 2000
  loc_B10D5A: AddVar var_118
  loc_B10D5E: FnCIntVar
  loc_B10D60: ImpAdLdI2 MemVar_C3D064
  loc_B10D63: GtI2
  loc_B10D64: FFree1Ad var_8C
  loc_B10D67: FFreeVar var_A4 = "": var_E8 = "": var_108 = "": var_118 = ""
  loc_B10D74: BranchF loc_B10DBD
  loc_B10D77: LitStr "El AÑO del número de Expediente, es erróneo. Verifique..."
  loc_B10D7A: FLdPr Me
  loc_B10D7D: MemStStrCopy
  loc_B10D81: FLdPr Me
  loc_B10D84: VCallAd Control_ID_ExorImpuMsk
  loc_B10D87: FStAdFunc var_B8
  loc_B10D8A: LitNothing
  loc_B10D8C: CastAd
  loc_B10D8F: FStAdFunc var_B4
  loc_B10D92: FLdRfVar var_B4
  loc_B10D95: FLdZeroAd var_B8
  loc_B10D98: FStAdFuncNoPop
  loc_B10D9B: CastAd
  loc_B10D9E: FStAdFunc var_94
  loc_B10DA1: FLdRfVar var_94
  loc_B10DA4: FLdPr Me
  loc_B10DA7: MemLdRfVar from_stack_1.global_76
  loc_B10DAA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B10DAF: IStI2 KeyAscii
  loc_B10DB2: FFreeAd var_8C = "": var_94 = "": var_B4 = ""
  loc_B10DBD: Branch loc_B10E25
  loc_B10DC0: FLdRfVar var_A8
  loc_B10DC3: FLdPr Me
  loc_B10DC6: MemLdRfVar from_stack_1.global_116
  loc_B10DC9: NewIfNullPr tbltipocompra
  loc_B10DCC: from_stack_1v = tbltipocompra.ExobTicoGet()
  loc_B10DD1: ILdRf var_A8
  loc_B10DD4: LitStr "1"
  loc_B10DD7: EqStr
  loc_B10DD9: FFree1Str var_A8
  loc_B10DDC: BranchF loc_B10E25
  loc_B10DDF: LitStr "El Expediente es Obligatorio. Verifique..."
  loc_B10DE2: FLdPr Me
  loc_B10DE5: MemStStrCopy
  loc_B10DE9: FLdPr Me
  loc_B10DEC: VCallAd Control_ID_ExorImpuMsk
  loc_B10DEF: FStAdFunc var_B8
  loc_B10DF2: LitNothing
  loc_B10DF4: CastAd
  loc_B10DF7: FStAdFunc var_B4
  loc_B10DFA: FLdRfVar var_B4
  loc_B10DFD: FLdZeroAd var_B8
  loc_B10E00: FStAdFuncNoPop
  loc_B10E03: CastAd
  loc_B10E06: FStAdFunc var_94
  loc_B10E09: FLdRfVar var_94
  loc_B10E0C: FLdPr Me
  loc_B10E0F: MemLdRfVar from_stack_1.global_76
  loc_B10E12: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B10E17: IStI2 KeyAscii
  loc_B10E1A: FFreeAd var_8C = "": var_94 = "": var_B4 = ""
  loc_B10E25: ExitProcHresult
End Sub

Private Sub ExorImpuMsk_KeyPress(KeyAscii As Integer) '9561F4
  'Data Table: 4FD0E0
  loc_9561D8: ILdI2 KeyAscii
  loc_9561DB: LitI2_Byte &H61
  loc_9561DD: GeI2
  loc_9561DE: ILdI2 KeyAscii
  loc_9561E1: LitI2_Byte &H7A
  loc_9561E3: LeI2
  loc_9561E4: AndI4
  loc_9561E5: BranchF loc_9561F1
  loc_9561E8: ILdI2 KeyAscii
  loc_9561EB: LitI2_Byte &H20
  loc_9561ED: SubI2
  loc_9561EE: IStI2 KeyAscii
  loc_9561F1: ExitProcHresult
End Sub

Private Sub Form_Load() 'B03D08
  'Data Table: 4FD0E0
  loc_B035A8: LitI2_Byte 0
  loc_B035AA: BranchF loc_B036D2
  loc_B035AD: LitStr vbNullString
  loc_B035B0: FStStrCopy var_88
  loc_B035B3: LitStr "Municipalidad de Guaymallén"
  loc_B035B6: LitStr "Municipalidad de Maipú"
  loc_B035B9: EqStr
  loc_B035BB: BranchF loc_B035D9
  loc_B035BE: LitVar_TRUE var_98
  loc_B035C1: PopAdLdVar
  loc_B035C2: FLdPr Me
  loc_B035C5: VCallAd Control_ID_CoinNopeMsk
  loc_B035C8: FStAdFunc var_AC
  loc_B035CB: FLdPr var_AC
  loc_B035CE: LateIdSt
  loc_B035D3: FFree1Ad var_AC
  loc_B035D6: Branch loc_B035F2
  loc_B035D9: LitVar_FALSE
  loc_B035DD: PopAdLdVar
  loc_B035DE: FLdPr Me
  loc_B035E1: VCallAd Control_ID_CoinNopeMsk
  loc_B035E4: FStAdFunc var_AC
  loc_B035E7: FLdPr var_AC
  loc_B035EA: LateIdSt
  loc_B035EF: FFree1Ad var_AC
  loc_B035F2: LitI2_Byte &HFF
  loc_B035F4: FLdPr Me
  loc_B035F7: VCallAd Control_ID_PubliNopeChk
  loc_B035FA: FStAdFunc var_AC
  loc_B035FD: FLdPr var_AC
  loc_B03600: Me.Visible = from_stack_1b
  loc_B03605: FFree1Ad var_AC
  loc_B03608: LitI2_Byte &HFF
  loc_B0360A: FLdPr Me
  loc_B0360D: VCallAd Control_ID_LabelUbfi
  loc_B03610: FStAdFunc var_AC
  loc_B03613: FLdPr var_AC
  loc_B03616: Me.Visible = from_stack_1b
  loc_B0361B: FFree1Ad var_AC
  loc_B0361E: LitI2_Byte &HFF
  loc_B03620: FLdPr Me
  loc_B03623: VCallAd Control_ID_DetaUbfiLbl
  loc_B03626: FStAdFunc var_AC
  loc_B03629: FLdPr var_AC
  loc_B0362C: Me.Visible = from_stack_1b
  loc_B03631: FFree1Ad var_AC
  loc_B03634: LitVar_TRUE var_98
  loc_B03637: PopAdLdVar
  loc_B03638: FLdPr Me
  loc_B0363B: VCallAd Control_ID_IdUbfiMsk
  loc_B0363E: FStAdFunc var_AC
  loc_B03641: FLdPr var_AC
  loc_B03644: LateIdSt
  loc_B03649: FFree1Ad var_AC
  loc_B0364C: LitI2_Byte &HFF
  loc_B0364E: FLdPr Me
  loc_B03651: VCallAd Control_ID_DienNopeTxt
  loc_B03654: FStAdFunc var_AC
  loc_B03657: FLdPr var_AC
  loc_B0365A: Me.Visible = from_stack_1b
  loc_B0365F: FFree1Ad var_AC
  loc_B03662: LitStr "Area Solicitante"
  loc_B03665: FLdRfVar var_B0
  loc_B03668: FLdPr Me
  loc_B0366B: VCallAd Control_ID_Label14
  loc_B0366E: FStAdFunc var_AC
  loc_B03671: FLdPr var_AC
  loc_B03674:  = Me.Caption
  loc_B03679: ILdRf var_B0
  loc_B0367C: ConcatStr
  loc_B0367D: FStStrNoPop var_B4
  loc_B03680: FLdPr Me
  loc_B03683: VCallAd Control_ID_Label14
  loc_B03686: FStAdFunc var_B8
  loc_B03689: FLdPr var_B8
  loc_B0368C: Me.Caption = from_stack_1
  loc_B03691: FFreeStr var_B0 = ""
  loc_B03698: FFreeAd var_AC = ""
  loc_B0369F: LitVar_TRUE var_98
  loc_B036A2: PopAdLdVar
  loc_B036A3: FLdPr Me
  loc_B036A6: VCallAd Control_ID_FecoNopeMsk
  loc_B036A9: FStAdFunc var_AC
  loc_B036AC: FLdPr var_AC
  loc_B036AF: LateIdSt
  loc_B036B4: FFree1Ad var_AC
  loc_B036B7: LitVar_TRUE var_98
  loc_B036BA: PopAdLdVar
  loc_B036BB: FLdPr Me
  loc_B036BE: VCallAd Control_ID_FecoHoraMsk
  loc_B036C1: FStAdFunc var_AC
  loc_B036C4: FLdPr var_AC
  loc_B036C7: LateIdSt
  loc_B036CC: FFree1Ad var_AC
  loc_B036CF: Branch loc_B037D1
  loc_B036D2: LitStr " HAVING saldo > 0 "
  loc_B036D5: FStStrCopy var_88
  loc_B036D8: LitVar_FALSE
  loc_B036DC: PopAdLdVar
  loc_B036DD: FLdPr Me
  loc_B036E0: VCallAd Control_ID_CoinNopeMsk
  loc_B036E3: FStAdFunc var_AC
  loc_B036E6: FLdPr var_AC
  loc_B036E9: LateIdSt
  loc_B036EE: FFree1Ad var_AC
  loc_B036F1: LitI2_Byte 0
  loc_B036F3: FLdPr Me
  loc_B036F6: VCallAd Control_ID_PubliNopeChk
  loc_B036F9: FStAdFunc var_AC
  loc_B036FC: FLdPr var_AC
  loc_B036FF: Me.Visible = from_stack_1b
  loc_B03704: FFree1Ad var_AC
  loc_B03707: LitI2_Byte 0
  loc_B03709: FLdPr Me
  loc_B0370C: VCallAd Control_ID_LabelUbfi
  loc_B0370F: FStAdFunc var_AC
  loc_B03712: FLdPr var_AC
  loc_B03715: Me.Visible = from_stack_1b
  loc_B0371A: FFree1Ad var_AC
  loc_B0371D: LitI2_Byte 0
  loc_B0371F: FLdPr Me
  loc_B03722: VCallAd Control_ID_DetaUbfiLbl
  loc_B03725: FStAdFunc var_AC
  loc_B03728: FLdPr var_AC
  loc_B0372B: Me.Visible = from_stack_1b
  loc_B03730: FFree1Ad var_AC
  loc_B03733: LitVar_FALSE
  loc_B03737: PopAdLdVar
  loc_B03738: FLdPr Me
  loc_B0373B: VCallAd Control_ID_IdUbfiMsk
  loc_B0373E: FStAdFunc var_AC
  loc_B03741: FLdPr var_AC
  loc_B03744: LateIdSt
  loc_B03749: FFree1Ad var_AC
  loc_B0374C: LitI2_Byte 0
  loc_B0374E: FLdPr Me
  loc_B03751: VCallAd Control_ID_DienNopeTxt
  loc_B03754: FStAdFunc var_AC
  loc_B03757: FLdPr var_AC
  loc_B0375A: Me.Visible = from_stack_1b
  loc_B0375F: FFree1Ad var_AC
  loc_B03762: LitStr "U. Ejec."
  loc_B03765: FLdRfVar var_B0
  loc_B03768: FLdPr Me
  loc_B0376B: VCallAd Control_ID_Label14
  loc_B0376E: FStAdFunc var_AC
  loc_B03771: FLdPr var_AC
  loc_B03774:  = Me.Caption
  loc_B03779: ILdRf var_B0
  loc_B0377C: ConcatStr
  loc_B0377D: FStStrNoPop var_B4
  loc_B03780: FLdPr Me
  loc_B03783: VCallAd Control_ID_Label14
  loc_B03786: FStAdFunc var_B8
  loc_B03789: FLdPr var_B8
  loc_B0378C: Me.Caption = from_stack_1
  loc_B03791: FFreeStr var_B0 = ""
  loc_B03798: FFreeAd var_AC = ""
  loc_B0379F: LitVar_FALSE
  loc_B037A3: PopAdLdVar
  loc_B037A4: FLdPr Me
  loc_B037A7: VCallAd Control_ID_FecoNopeMsk
  loc_B037AA: FStAdFunc var_AC
  loc_B037AD: FLdPr var_AC
  loc_B037B0: LateIdSt
  loc_B037B5: FFree1Ad var_AC
  loc_B037B8: LitVar_FALSE
  loc_B037BC: PopAdLdVar
  loc_B037BD: FLdPr Me
  loc_B037C0: VCallAd Control_ID_FecoHoraMsk
  loc_B037C3: FStAdFunc var_AC
  loc_B037C6: FLdPr var_AC
  loc_B037C9: LateIdSt
  loc_B037CE: FFree1Ad var_AC
  loc_B037D1: LitStr "Municipalidad de Guaymallén"
  loc_B037D4: LitStr "Municipalidad de Lavalle"
  loc_B037D7: EqStr
  loc_B037D9: BranchF loc_B037F5
  loc_B037DC: LitI4 &H3E8
  loc_B037E1: FLdPr Me
  loc_B037E4: VCallAd Control_ID_DetaNopeTxt
  loc_B037E7: FStAdFunc var_AC
  loc_B037EA: FLdPr var_AC
  loc_B037ED: Me.MaxLength = from_stack_1
  loc_B037F2: FFree1Ad var_AC
  loc_B037F5: LitStr "Municipalidad de Guaymallén"
  loc_B037F8: LitStr "Municipalidad de Guaymallén"
  loc_B037FB: EqStr
  loc_B037FD: BranchF loc_B0382F
  loc_B03800: LitI2_Byte &HFF
  loc_B03802: FLdPr Me
  loc_B03805: VCallAd Control_ID_LabelDetaNope2
  loc_B03808: FStAdFunc var_AC
  loc_B0380B: FLdPr var_AC
  loc_B0380E: Me.Visible = from_stack_1b
  loc_B03813: FFree1Ad var_AC
  loc_B03816: LitI2_Byte &HFF
  loc_B03818: FLdPr Me
  loc_B0381B: VCallAd Control_ID_DetaNope2Txt
  loc_B0381E: FStAdFunc var_AC
  loc_B03821: FLdPr var_AC
  loc_B03824: Me.Visible = from_stack_1b
  loc_B03829: FFree1Ad var_AC
  loc_B0382C: Branch loc_B0385B
  loc_B0382F: LitI2_Byte 0
  loc_B03831: FLdPr Me
  loc_B03834: VCallAd Control_ID_LabelDetaNope2
  loc_B03837: FStAdFunc var_AC
  loc_B0383A: FLdPr var_AC
  loc_B0383D: Me.Visible = from_stack_1b
  loc_B03842: FFree1Ad var_AC
  loc_B03845: LitI2_Byte 0
  loc_B03847: FLdPr Me
  loc_B0384A: VCallAd Control_ID_DetaNope2Txt
  loc_B0384D: FStAdFunc var_AC
  loc_B03850: FLdPr var_AC
  loc_B03853: Me.Visible = from_stack_1b
  loc_B03858: FFree1Ad var_AC
  loc_B0385B: LitStr "U. Ejec."
  loc_B0385E: FLdPr Me
  loc_B03861: VCallAd Control_ID_ChkCodiOrga
  loc_B03864: FStAdFunc var_AC
  loc_B03867: FLdPr var_AC
  loc_B0386A: Me.Caption = from_stack_1
  loc_B0386F: FFree1Ad var_AC
  loc_B03872: ImpAdLdI2 MemVar_C3D064
  loc_B03875: LitI2 2024
  loc_B03878: EqI2
  loc_B03879: BranchF loc_B03899
  loc_B0387C: LitVarStr var_98, "###"
  loc_B03881: PopAdLdVar
  loc_B03882: FLdPr Me
  loc_B03885: VCallAd Control_ID_CodiOrgaMsk
  loc_B03888: FStAdFunc var_AC
  loc_B0388B: FLdPr var_AC
  loc_B0388E: LateIdSt
  loc_B03893: FFree1Ad var_AC
  loc_B03896: Branch loc_B038B3
  loc_B03899: LitVarStr var_98, "######"
  loc_B0389E: PopAdLdVar
  loc_B0389F: FLdPr Me
  loc_B038A2: VCallAd Control_ID_CodiOrgaMsk
  loc_B038A5: FStAdFunc var_AC
  loc_B038A8: FLdPr var_AC
  loc_B038AB: LateIdSt
  loc_B038B0: FFree1Ad var_AC
  loc_B038B3: LitVarStr var_98, vbNullString
  loc_B038B8: PopAdLdVar
  loc_B038B9: FLdPr Me
  loc_B038BC: VCallAd Control_ID_ExorImpuMsk
  loc_B038BF: FStAdFunc var_AC
  loc_B038C2: FLdPr var_AC
  loc_B038C5: LateIdSt
  loc_B038CA: FFree1Ad var_AC
  loc_B038CD: LitI2_Byte 0
  loc_B038CF: CR8I2
  loc_B038D0: PopFPR4
  loc_B038D1: FLdPr Me
  loc_B038D4: Me.Left = from_stack_1s
  loc_B038D9: LitI2_Byte 0
  loc_B038DB: CR8I2
  loc_B038DC: PopFPR4
  loc_B038DD: FLdPr Me
  loc_B038E0: Me.Top = from_stack_1s
  loc_B038E5: LitStr vbNullString
  loc_B038E8: FLdPr Me
  loc_B038EB: MemStStrCopy
  loc_B038EF: LitStr "SELECT np.*, DetaTico, DetaOrga, SUM(IdImpu) TotaNumeImpu, np.IdRubro"
  loc_B038F2: LitStr ", IFNULL( (SELECT DetaRubro FROM rubro r WHERE r.IdRubro = np.IdRubro),'') DetaRubro /* , IFNULL(DetaRubro,'') DetaRubro */"
  loc_B038F5: ConcatStr
  loc_B038F6: FStStrNoPop var_B0
  loc_B038F9: LitStr ", np.IdUbfi, IFNULL(DetaUbfi,'') DetaUbfi"
  loc_B038FC: ConcatStr
  loc_B038FD: FStStrNoPop var_B4
  loc_B03900: LitStr " , IFNULL(LEFT(RIGHT(np.FecoNope,8),5),'00:00') FecoHora , IFNULL(GROUP_CONCAT(DISTINCT c.IdCoti),'') IdCoti"
  loc_B03903: ConcatStr
  loc_B03904: FStStrNoPop var_BC
  loc_B03907: LitStr " /* , SUM(saldo) saldo */"
  loc_B0390A: ConcatStr
  loc_B0390B: FStStrNoPop var_C0
  loc_B0390E: LitStr ", IFNULL(GROUP_CONCAT(DISTINCT oc.CodiOrco),'') OCs"
  loc_B03911: ConcatStr
  loc_B03912: FStStrNoPop var_C4
  loc_B03915: LitStr " FROM ("
  loc_B03918: ConcatStr
  loc_B03919: FStStrNoPop var_C8
  loc_B0391C: LitStr " SELECT np.PeriInfo, np.CodiNope,  contpres.fnSaldItno(itn.PeriInfo, itn.CodiNope, itn.CodiItno) saldo, itn.IdImpu"
  loc_B0391F: ConcatStr
  loc_B03920: FStStrNoPop var_CC
  loc_B03923: LitStr " FROM notapedido np"
  loc_B03926: ConcatStr
  loc_B03927: FStStrNoPop var_D0
  loc_B0392A: LitStr " INNER JOIN itemnota itn ON itn.PeriInfo = np.PeriInfo AND itn.CodiNope = np.CodiNope"
  loc_B0392D: ConcatStr
  loc_B0392E: FStStrNoPop var_D4
  loc_B03931: LitStr " WHERE np.PeriInfo = "
  loc_B03934: ConcatStr
  loc_B03935: FStStrNoPop var_D8
  loc_B03938: ImpAdLdI2 MemVar_C3D064
  loc_B0393B: CStrUI1
  loc_B0393D: FStStrNoPop var_DC
  loc_B03940: ConcatStr
  loc_B03941: FStStrNoPop var_E0
  loc_B03944: LitStr " /* AND FeanNope IS NULL */"
  loc_B03947: ConcatStr
  loc_B03948: FStStrNoPop var_E4
  loc_B0394B: ILdRf var_88
  loc_B0394E: ConcatStr
  loc_B0394F: FStStrNoPop var_E8
  loc_B03952: LitStr " ) AS tbl"
  loc_B03955: ConcatStr
  loc_B03956: FStStrNoPop var_EC
  loc_B03959: LitStr " INNER JOIN notapedido np ON np.PeriInfo = tbl.PeriInfo AND np.CodiNope = tbl.CodiNope"
  loc_B0395C: ConcatStr
  loc_B0395D: FStStrNoPop var_F0
  loc_B03960: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = np.CodiTico"
  loc_B03963: ConcatStr
  loc_B03964: FStStrNoPop var_F4
  loc_B03967: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = np.PeriInfo AND o.CodiOrga = np.CodiOrga"
  loc_B0396A: ConcatStr
  loc_B0396B: FStStrNoPop var_F8
  loc_B0396E: LitStr " INNER JOIN orgaxusua oxu ON oxu.PeriInfo = np.PeriInfo AND oxu.CodiOrga = np.CodiOrga AND oxu.CodiUsua = '"
  loc_B03971: ConcatStr
  loc_B03972: FStStrNoPop var_FC
  loc_B03975: ImpAdLdI4 MemVar_C3D03C
  loc_B03978: ConcatStr
  loc_B03979: FStStrNoPop var_100
  loc_B0397C: LitStr "'"
  loc_B0397F: ConcatStr
  loc_B03980: FStStrNoPop var_104
  loc_B03983: LitStr " /* LEFT JOIN rubro r ON r.IdRubro = np.IdRubro */"
  loc_B03986: ConcatStr
  loc_B03987: FStStrNoPop var_108
  loc_B0398A: LitStr " LEFT JOIN ubicfisica uf ON uf.IdUbfi = np.IdUbfi"
  loc_B0398D: ConcatStr
  loc_B0398E: FStStrNoPop var_10C
  loc_B03991: LitStr " LEFT JOIN cotizacion c ON c.PeriInfo = np.PeriInfo AND c.CodiNope = np.CodiNope"
  loc_B03994: ConcatStr
  loc_B03995: FStStrNoPop var_110
  loc_B03998: LitStr " LEFT JOIN ordencompra oc ON oc.PeriInfo = np.PeriInfo AND oc.CodiNope = np.CodiNope AND oc.FeanOrco IS NULL"
  loc_B0399B: ConcatStr
  loc_B0399C: FStStrNoPop var_114
  loc_B0399F: LitStr " GROUP BY np.PeriInfo, np.CodiNope;"
  loc_B039A2: ConcatStr
  loc_B039A3: FStStrNoPop var_118
  loc_B039A6: FLdPr Me
  loc_B039A9: MemLdRfVar from_stack_1.global_52
  loc_B039AC: NewIfNullPr clsnotapedido
  loc_B039AF: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_B039B4: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_B039EB: FLdPr Me
  loc_B039EE: VCallAd Control_ID_ItemNotaFlex
  loc_B039F1: FStAdFunc var_11C
  loc_B039F4: LitVarI4
  loc_B039FC: PopAdLdVar
  loc_B039FD: LitVarI4
  loc_B03A05: PopAdLdVar
  loc_B03A06: FLdPr var_11C
  loc_B03A09: LateIdCallSt
  loc_B03A11: LitVarI4
  loc_B03A19: PopAdLdVar
  loc_B03A1A: LitVarI4
  loc_B03A22: PopAdLdVar
  loc_B03A23: FLdPr var_11C
  loc_B03A26: LateIdCallSt
  loc_B03A2E: LitVarI4
  loc_B03A36: PopAdLdVar
  loc_B03A37: LitVarI4
  loc_B03A3F: PopAdLdVar
  loc_B03A40: FLdPr var_11C
  loc_B03A43: LateIdCallSt
  loc_B03A4B: LitVarI4
  loc_B03A53: PopAdLdVar
  loc_B03A54: LitVarI4
  loc_B03A5C: PopAdLdVar
  loc_B03A5D: FLdPr var_11C
  loc_B03A60: LateIdCallSt
  loc_B03A68: LitVarI4
  loc_B03A70: PopAdLdVar
  loc_B03A71: LitVarI4
  loc_B03A79: PopAdLdVar
  loc_B03A7A: FLdPr var_11C
  loc_B03A7D: LateIdCallSt
  loc_B03A85: LitVarI4
  loc_B03A8D: PopAdLdVar
  loc_B03A8E: LitVarI4
  loc_B03A96: PopAdLdVar
  loc_B03A97: FLdPr var_11C
  loc_B03A9A: LateIdCallSt
  loc_B03AA2: LitVarI4
  loc_B03AAA: PopAdLdVar
  loc_B03AAB: LitVarI4
  loc_B03AB3: PopAdLdVar
  loc_B03AB4: FLdPr var_11C
  loc_B03AB7: LateIdCallSt
  loc_B03ABF: LitVarI4
  loc_B03AC7: PopAdLdVar
  loc_B03AC8: LitVarI4
  loc_B03AD0: PopAdLdVar
  loc_B03AD1: FLdPr var_11C
  loc_B03AD4: LateIdCallSt
  loc_B03ADC: LitVarI4
  loc_B03AE4: PopAdLdVar
  loc_B03AE5: LitVarI4
  loc_B03AED: PopAdLdVar
  loc_B03AEE: FLdPr var_11C
  loc_B03AF1: LateIdCallSt
  loc_B03AF9: LitVarI4
  loc_B03B01: PopAdLdVar
  loc_B03B02: LitVarI4
  loc_B03B0A: PopAdLdVar
  loc_B03B0B: FLdPr var_11C
  loc_B03B0E: LateIdCallSt
  loc_B03B16: LitVarI4
  loc_B03B1E: PopAdLdVar
  loc_B03B1F: LitVarI4
  loc_B03B27: PopAdLdVar
  loc_B03B28: FLdPr var_11C
  loc_B03B2B: LateIdCallSt
  loc_B03B33: LitVarI4
  loc_B03B3B: PopAdLdVar
  loc_B03B3C: LitVarI4
  loc_B03B44: PopAdLdVar
  loc_B03B45: FLdPr var_11C
  loc_B03B48: LateIdCallSt
  loc_B03B50: LitVarI4
  loc_B03B58: PopAdLdVar
  loc_B03B59: LitVarI4
  loc_B03B61: PopAdLdVar
  loc_B03B62: FLdPr var_11C
  loc_B03B65: LateIdCallSt
  loc_B03B6D: LitVarI4
  loc_B03B75: PopAdLdVar
  loc_B03B76: LitVarI4
  loc_B03B7E: PopAdLdVar
  loc_B03B7F: FLdPr var_11C
  loc_B03B82: LateIdCallSt
  loc_B03B8A: LitNothing
  loc_B03B8C: FStAd var_11C 
  loc_B03B90: Call Proc_126_67_A365C0()
  loc_B03B95: LitVarI2 var_98, 0
  loc_B03B9A: PopAdLdVar
  loc_B03B9B: LitStr "Nota de Pedido (Número)"
  loc_B03B9E: FLdPr Me
  loc_B03BA1: VCallAd Control_ID_FiltroCbo
  loc_B03BA4: FStAdFunc var_AC
  loc_B03BA7: FLdPr var_AC
  loc_B03BAA: Me.AddItem from_stack_1, from_stack_2
  loc_B03BAF: FFree1Ad var_AC
  loc_B03BB2: LitVarI2 var_98, 1
  loc_B03BB7: PopAdLdVar
  loc_B03BB8: LitStr "Nota de Pedido (Detalle)"
  loc_B03BBB: FLdPr Me
  loc_B03BBE: VCallAd Control_ID_FiltroCbo
  loc_B03BC1: FStAdFunc var_AC
  loc_B03BC4: FLdPr var_AC
  loc_B03BC7: Me.AddItem from_stack_1, from_stack_2
  loc_B03BCC: FFree1Ad var_AC
  loc_B03BCF: LitVarI2 var_98, 2
  loc_B03BD4: PopAdLdVar
  loc_B03BD5: LitStr "Organigrama Solicitante (Código)"
  loc_B03BD8: FLdPr Me
  loc_B03BDB: VCallAd Control_ID_FiltroCbo
  loc_B03BDE: FStAdFunc var_AC
  loc_B03BE1: FLdPr var_AC
  loc_B03BE4: Me.AddItem from_stack_1, from_stack_2
  loc_B03BE9: FFree1Ad var_AC
  loc_B03BEC: LitVarI2 var_98, 3
  loc_B03BF1: PopAdLdVar
  loc_B03BF2: LitStr "Organigrama Solicitante (Detalle)"
  loc_B03BF5: FLdPr Me
  loc_B03BF8: VCallAd Control_ID_FiltroCbo
  loc_B03BFB: FStAdFunc var_AC
  loc_B03BFE: FLdPr var_AC
  loc_B03C01: Me.AddItem from_stack_1, from_stack_2
  loc_B03C06: FFree1Ad var_AC
  loc_B03C09: LitVarI2 var_98, 4
  loc_B03C0E: PopAdLdVar
  loc_B03C0F: LitStr "Expediente"
  loc_B03C12: FLdPr Me
  loc_B03C15: VCallAd Control_ID_FiltroCbo
  loc_B03C18: FStAdFunc var_AC
  loc_B03C1B: FLdPr var_AC
  loc_B03C1E: Me.AddItem from_stack_1, from_stack_2
  loc_B03C23: FFree1Ad var_AC
  loc_B03C26: LitStr "Municipalidad de Guaymallén"
  loc_B03C29: LitStr "Municipalidad de Maipú"
  loc_B03C2C: EqStr
  loc_B03C2E: BranchF loc_B03C51
  loc_B03C31: LitVarI2 var_98, 5
  loc_B03C36: PopAdLdVar
  loc_B03C37: LitStr "NP interna"
  loc_B03C3A: FLdPr Me
  loc_B03C3D: VCallAd Control_ID_FiltroCbo
  loc_B03C40: FStAdFunc var_AC
  loc_B03C43: FLdPr var_AC
  loc_B03C46: Me.AddItem from_stack_1, from_stack_2
  loc_B03C4B: FFree1Ad var_AC
  loc_B03C4E: Branch loc_B03C6E
  loc_B03C51: LitVarI2 var_98, 5
  loc_B03C56: PopAdLdVar
  loc_B03C57: LitStr "Tipo de compra"
  loc_B03C5A: FLdPr Me
  loc_B03C5D: VCallAd Control_ID_FiltroCbo
  loc_B03C60: FStAdFunc var_AC
  loc_B03C63: FLdPr var_AC
  loc_B03C66: Me.AddItem from_stack_1, from_stack_2
  loc_B03C6B: FFree1Ad var_AC
  loc_B03C6E: LitVarI2 var_98, 6
  loc_B03C73: PopAdLdVar
  loc_B03C74: LitStr "Cotización Nro."
  loc_B03C77: FLdPr Me
  loc_B03C7A: VCallAd Control_ID_FiltroCbo
  loc_B03C7D: FStAdFunc var_AC
  loc_B03C80: FLdPr var_AC
  loc_B03C83: Me.AddItem from_stack_1, from_stack_2
  loc_B03C88: FFree1Ad var_AC
  loc_B03C8B: LitI2_Byte 0
  loc_B03C8D: FLdPr Me
  loc_B03C90: VCallAd Control_ID_FiltroCbo
  loc_B03C93: FStAdFunc var_AC
  loc_B03C96: FLdPr var_AC
  loc_B03C99: Me.ListIndex = from_stack_1
  loc_B03C9E: FFree1Ad var_AC
  loc_B03CA1: Call cmdCancelar_Click()
  loc_B03CA6: LitI4 0
  loc_B03CAB: LitI4 1
  loc_B03CB0: FLdRfVar var_140
  loc_B03CB3: Redim
  loc_B03CBD: FLdPr Me
  loc_B03CC0: MemLdRfVar from_stack_1.global_52
  loc_B03CC3: NewIfNullAd
  loc_B03CC6: FStAd var_AC 
  loc_B03CCA: FLdRfVar var_AC
  loc_B03CCD: CVarRef
  loc_B03CD2: ParmAry1St
  loc_B03CD8: FLdPr Me
  loc_B03CDB: VCallAd Control_ID_dgdABMS
  loc_B03CDE: CVarAd
  loc_B03CE2: ParmAry1St
  loc_B03CE8: FLdRfVar var_140
  loc_B03CEB: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_B03CF0: ILdRf var_AC
  loc_B03CF3: CastAd
  loc_B03CF6: FLdPr Me
  loc_B03CF9: MemStAdFunc
  loc_B03CFD: FLdRfVar var_140
  loc_B03D00: Erase
  loc_B03D01: FFree1Ad var_AC
  loc_B03D04: ExitProcHresult
End Sub

Private Sub Form_Activate() '9A926C
  'Data Table: 4FD0E0
  loc_9A91E4: FLdRfVar var_C2
  loc_9A91E7: FLdRfVar var_C0
  loc_9A91EA: LitVarI2 var_B8, 1
  loc_9A91EF: FLdPr Me
  loc_9A91F2: VCallAd Control_ID_tlbABMS
  loc_9A91F5: FStAdFunc var_88
  loc_9A91F8: FLdPr var_88
  loc_9A91FB: LateIdLdVar var_98 DispID_3 0
  loc_9A9202: CastAdVar Me
  loc_9A9206: FStAdFunc var_BC
  loc_9A9209: FLdPr var_BC
  loc_9A920C:  = Me.Buttons.ControlDefault
  loc_9A9211: FLdPr var_C0
  loc_9A9214:  = Me.Enabled
  loc_9A9219: FLdI2 var_C2
  loc_9A921C: FFreeAd var_88 = "": var_BC = ""
  loc_9A9225: FFreeVar var_98 = ""
  loc_9A922C: BranchF loc_9A9242
  loc_9A922F: LitI4 0
  loc_9A9234: FLdPr Me
  loc_9A9237: MemLdRfVar from_stack_1.global_52
  loc_9A923A: NewIfNullPr clsnotapedido
  loc_9A923D: Call clsnotapedido.Encontrar(from_stack_1v)
  loc_9A9242: ImpAdLdI2 MemVar_C3D064
  loc_9A9245: LitI2 2025
  loc_9A9248: LeI2
  loc_9A9249: BranchF loc_9A9269
  loc_9A924C: LitVarI4
  loc_9A9254: PopAdLdVar
  loc_9A9255: FLdPr Me
  loc_9A9258: VCallAd Control_ID_dgdABMS
  loc_9A925B: FStAdFunc var_88
  loc_9A925E: FLdPr var_88
  loc_9A9261: LateIdSt
  loc_9A9266: FFree1Ad var_88
  loc_9A9269: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '996B78
  'Data Table: 4FD0E0
  loc_996B20: FLdRfVar var_88
  loc_996B23: FLdPr Me
  loc_996B26:  = Me.ActiveControl
  loc_996B2B: FLdPr var_88
  loc_996B2E: LateIdLdVar var_BC DispID_0 0
  loc_996B35: FLdPr Me
  loc_996B38: VCallAd Control_ID_ItemNotaFlex
  loc_996B3B: FStAdFunc var_8C
  loc_996B3E: FLdPr var_8C
  loc_996B41: LateIdLdVar var_9C DispID_0 0
  loc_996B48: CStrVarTmp
  loc_996B49: CVarStr var_AC
  loc_996B4C: HardType
  loc_996B4D: NeVarBool
  loc_996B4F: FFreeAd var_8C = ""
  loc_996B56: FFreeVar var_9C = "": var_BC = ""
  loc_996B5F: BranchF loc_996B74
  loc_996B62: ILdI2 KeyAscii
  loc_996B65: CI4UI1
  loc_996B66: LitI4 &HD
  loc_996B6B: EqI4
  loc_996B6C: BranchF loc_996B74
  loc_996B6F: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_996B74: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9540FC
  'Data Table: 4FD0E0
  loc_9540E4: ILdI2 KeyCode
  loc_9540E7: ILdRf Me
  loc_9540EA: CastAd
  loc_9540ED: FStAdFunc var_88
  loc_9540F0: FLdRfVar var_88
  loc_9540F3: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_9540F8: FFree1Ad var_88
  loc_9540FB: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A2F7A8
  'Data Table: 4FD0E0
  loc_A2F5C4: LitI2_Byte 0
  loc_A2F5C6: CUI1I2
  loc_A2F5C8: FLdPr Me
  loc_A2F5CB: MemStUI1
  loc_A2F5CF: LitVarI2 var_94, 0
  loc_A2F5D4: PopAdLdVar
  loc_A2F5D5: FLdPr Me
  loc_A2F5D8: VCallAd Control_ID_SSTab
  loc_A2F5DB: FStAdFunc var_A8
  loc_A2F5DE: FLdPr var_A8
  loc_A2F5E1: LateIdSt
  loc_A2F5E6: FFree1Ad var_A8
  loc_A2F5E9: ILdRf Me
  loc_A2F5EC: CastAd
  loc_A2F5EF: FStAdFunc var_A8
  loc_A2F5F2: FLdRfVar var_A8
  loc_A2F5F5: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A2F5FA: FFree1Ad var_A8
  loc_A2F5FD: LitI4 0
  loc_A2F602: LitI4 0
  loc_A2F607: FLdRfVar var_AC
  loc_A2F60A: Redim
  loc_A2F614: FLdPr Me
  loc_A2F617: VCallAd Control_ID_dgdABMS
  loc_A2F61A: CVarAd
  loc_A2F61E: ParmAry1St
  loc_A2F624: FLdRfVar var_AC
  loc_A2F627: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A2F62C: FLdRfVar var_AC
  loc_A2F62F: Erase
  loc_A2F630: FLdPr Me
  loc_A2F633: MemLdRfVar from_stack_1.global_52
  loc_A2F636: NewIfNullAd
  loc_A2F639: FStAd var_C0 
  loc_A2F63D: FLdRfVar var_C0
  loc_A2F640: CVarRef
  loc_A2F645: ILdRf Me
  loc_A2F648: CastAd
  loc_A2F64B: FStAdFunc var_A8
  loc_A2F64E: FLdRfVar var_A8
  loc_A2F651: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A2F656: ILdRf var_C0
  loc_A2F659: CastAd
  loc_A2F65C: FLdPr Me
  loc_A2F65F: MemStAdFunc
  loc_A2F663: FFreeAd var_A8 = ""
  loc_A2F66A: ILdRf Me
  loc_A2F66D: CastAd
  loc_A2F670: FStAdFunc var_A8
  loc_A2F673: FLdRfVar var_A8
  loc_A2F676: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A2F67B: FFree1Ad var_A8
  loc_A2F67E: LitI4 0
  loc_A2F683: FLdPr Me
  loc_A2F686: MemLdRfVar from_stack_1.global_52
  loc_A2F689: NewIfNullPr clsnotapedido
  loc_A2F68C: Call clsnotapedido.Encontrar(from_stack_1v)
  loc_A2F691: FLdPr Me
  loc_A2F694: MemLdStr global_80
  loc_A2F697: LitStr vbNullString
  loc_A2F69A: NeStr
  loc_A2F69C: BranchF loc_A2F6F4
  loc_A2F69F: LitStr "Filtro: "
  loc_A2F6A2: FLdPr Me
  loc_A2F6A5: MemLdStr global_80
  loc_A2F6A8: ConcatStr
  loc_A2F6A9: FStStrNoPop var_C4
  loc_A2F6AC: LitStr " - Registro/s: "
  loc_A2F6AF: ConcatStr
  loc_A2F6B0: FStStrNoPop var_CC
  loc_A2F6B3: FLdRfVar var_C8
  loc_A2F6B6: FLdPr Me
  loc_A2F6B9: MemLdRfVar from_stack_1.global_52
  loc_A2F6BC: NewIfNullPr clsnotapedido
  loc_A2F6BF: from_stack_1 = clsnotapedido.RecordCount
  loc_A2F6C4: ILdRf var_C8
  loc_A2F6C7: CStrI4
  loc_A2F6C9: FStStrNoPop var_D0
  loc_A2F6CC: ConcatStr
  loc_A2F6CD: CVarStr var_BC
  loc_A2F6D0: PopAdLdVar
  loc_A2F6D1: FLdPr Me
  loc_A2F6D4: VCallAd Control_ID_dgdABMS
  loc_A2F6D7: FStAdFunc var_A8
  loc_A2F6DA: FLdPr var_A8
  loc_A2F6DD: LateIdSt
  loc_A2F6E2: FFreeStr var_C4 = "": var_CC = ""
  loc_A2F6EB: FFree1Ad var_A8
  loc_A2F6EE: FFree1Var var_BC = ""
  loc_A2F6F1: Branch loc_A2F72F
  loc_A2F6F4: LitStr "Registro/s: "
  loc_A2F6F7: FLdRfVar var_C8
  loc_A2F6FA: FLdPr Me
  loc_A2F6FD: MemLdRfVar from_stack_1.global_52
  loc_A2F700: NewIfNullPr clsnotapedido
  loc_A2F703: from_stack_1 = clsnotapedido.RecordCount
  loc_A2F708: ILdRf var_C8
  loc_A2F70B: CStrI4
  loc_A2F70D: FStStrNoPop var_C4
  loc_A2F710: ConcatStr
  loc_A2F711: CVarStr var_BC
  loc_A2F714: PopAdLdVar
  loc_A2F715: FLdPr Me
  loc_A2F718: VCallAd Control_ID_dgdABMS
  loc_A2F71B: FStAdFunc var_A8
  loc_A2F71E: FLdPr var_A8
  loc_A2F721: LateIdSt
  loc_A2F726: FFree1Str var_C4
  loc_A2F729: FFree1Ad var_A8
  loc_A2F72C: FFree1Var var_BC = ""
  loc_A2F72F: LitI2_Byte 0
  loc_A2F731: LitVarI2 var_BC, 0
  loc_A2F736: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A2F73B: FFree1Var var_BC = ""
  loc_A2F73E: LitI4 0
  loc_A2F743: CI2I4
  loc_A2F744: FLdPr Me
  loc_A2F747: VCallAd Control_ID_ChkCodiInsu
  loc_A2F74A: FStAdFunc var_A8
  loc_A2F74D: FLdPr var_A8
  loc_A2F750: Me.Value = from_stack_1
  loc_A2F755: FFree1Ad var_A8
  loc_A2F758: LitI4 0
  loc_A2F75D: CI2I4
  loc_A2F75E: FLdPr Me
  loc_A2F761: VCallAd Control_ID_ChkCodiOrga
  loc_A2F764: FStAdFunc var_A8
  loc_A2F767: FLdPr var_A8
  loc_A2F76A: Me.Value = from_stack_1
  loc_A2F76F: FFree1Ad var_A8
  loc_A2F772: LitI4 0
  loc_A2F777: CI2I4
  loc_A2F778: FLdPr Me
  loc_A2F77B: VCallAd Control_ID_ChkCodiFifu
  loc_A2F77E: FStAdFunc var_A8
  loc_A2F781: FLdPr var_A8
  loc_A2F784: Me.Value = from_stack_1
  loc_A2F789: FFree1Ad var_A8
  loc_A2F78C: LitI4 0
  loc_A2F791: CI2I4
  loc_A2F792: FLdPr Me
  loc_A2F795: VCallAd Control_ID_ChkCodiPart
  loc_A2F798: FStAdFunc var_A8
  loc_A2F79B: FLdPr var_A8
  loc_A2F79E: Me.Value = from_stack_1
  loc_A2F7A3: FFree1Ad var_A8
  loc_A2F7A6: ExitProcHresult
End Sub

Private Sub DetaNope2Txt_Validate(Cancel As Boolean) '9CE4E0
  'Data Table: 4FD0E0
  loc_9CE404: FLdRfVar var_8A
  loc_9CE407: FLdPr Me
  loc_9CE40A: VCallAd Control_ID_cmdCancelar
  loc_9CE40D: FStAdFunc var_88
  loc_9CE410: FLdPr var_88
  loc_9CE413:  = Me.Value
  loc_9CE418: FLdI2 var_8A
  loc_9CE41B: NotI4
  loc_9CE41C: FLdRfVar var_92
  loc_9CE41F: FLdPr Me
  loc_9CE422: VCallAd Control_ID_DetaNope2Txt
  loc_9CE425: FStAdFunc var_90
  loc_9CE428: FLdPr var_90
  loc_9CE42B:  = Me.Enabled
  loc_9CE430: FLdI2 var_92
  loc_9CE433: AndI4
  loc_9CE434: FLdRfVar var_9C
  loc_9CE437: FLdPr Me
  loc_9CE43A: VCallAd Control_ID_DetaNope2Txt
  loc_9CE43D: FStAdFunc var_98
  loc_9CE440: FLdPr var_98
  loc_9CE443:  = Me.Text
  loc_9CE448: ILdRf var_9C
  loc_9CE44B: LitStr vbNullString
  loc_9CE44E: NeStr
  loc_9CE450: AndI4
  loc_9CE451: FFree1Str var_9C
  loc_9CE454: FFreeAd var_88 = "": var_90 = ""
  loc_9CE45D: BranchF loc_9CE4DE
  loc_9CE460: FLdRfVar var_9C
  loc_9CE463: FLdPr Me
  loc_9CE466: VCallAd Control_ID_DetaNope2Txt
  loc_9CE469: FStAdFunc var_88
  loc_9CE46C: FLdPr var_88
  loc_9CE46F:  = Me.Text
  loc_9CE474: LitI2_Byte 0
  loc_9CE476: PopTmpLdAd2 var_9E
  loc_9CE479: LitI2_Byte 0
  loc_9CE47B: PopTmpLdAd2 var_92
  loc_9CE47E: LitI2_Byte 0
  loc_9CE480: PopTmpLdAd2 var_8A
  loc_9CE483: ILdRf var_9C
  loc_9CE486: LitStr "Detalle"
  loc_9CE489: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CE48E: FStStrNoPop var_A4
  loc_9CE491: FLdPr Me
  loc_9CE494: MemStStrCopy
  loc_9CE498: FFreeStr var_9C = ""
  loc_9CE49F: FFree1Ad var_88
  loc_9CE4A2: FLdPr Me
  loc_9CE4A5: VCallAd Control_ID_DetaNope2Txt
  loc_9CE4A8: FStAdFunc var_A8
  loc_9CE4AB: LitNothing
  loc_9CE4AD: CastAd
  loc_9CE4B0: FStAdFunc var_98
  loc_9CE4B3: FLdRfVar var_98
  loc_9CE4B6: FLdZeroAd var_A8
  loc_9CE4B9: FStAdFuncNoPop
  loc_9CE4BC: CastAd
  loc_9CE4BF: FStAdFunc var_90
  loc_9CE4C2: FLdRfVar var_90
  loc_9CE4C5: FLdPr Me
  loc_9CE4C8: MemLdRfVar from_stack_1.global_76
  loc_9CE4CB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CE4D0: IStI2 Cancel
  loc_9CE4D3: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CE4DE: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '97EABC
  'Data Table: 4FD0E0
  loc_97EA8C: LitVarStr var_94, vbNullString
  loc_97EA91: PopAdLdVar
  loc_97EA92: FLdPr Me
  loc_97EA95: VCallAd Control_ID_CodiOrgaMsk
  loc_97EA98: FStAdFunc var_A8
  loc_97EA9B: FLdPr var_A8
  loc_97EA9E: LateIdSt
  loc_97EAA3: FFree1Ad var_A8
  loc_97EAA6: FLdPr Me
  loc_97EAA9: VCallAd Control_ID_CodiOrgaMsk
  loc_97EAAC: CVarAd
  loc_97EAB0: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_97EAB5: FFree1Var var_B8 = ""
  loc_97EAB8: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_1 '989728
  'Data Table: 4FD0E0
  loc_9896E4: ImpAdLdI2 MemVar_C3D064
  loc_9896E7: LitI2 2024
  loc_9896EA: GeI2
  loc_9896EB: BranchF loc_98970B
  loc_9896EE: LitVarStr var_94, "###"
  loc_9896F3: PopAdLdVar
  loc_9896F4: FLdPr Me
  loc_9896F7: VCallAd Control_ID_CodiOrgaMsk
  loc_9896FA: FStAdFunc var_A8
  loc_9896FD: FLdPr var_A8
  loc_989700: LateIdSt
  loc_989705: FFree1Ad var_A8
  loc_989708: Branch loc_989725
  loc_98970B: LitVarStr var_94, "######"
  loc_989710: PopAdLdVar
  loc_989711: FLdPr Me
  loc_989714: VCallAd Control_ID_CodiOrgaMsk
  loc_989717: FStAdFunc var_A8
  loc_98971A: FLdPr var_A8
  loc_98971D: LateIdSt
  loc_989722: FFree1Ad var_A8
  loc_989725: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'B632B8
  'Data Table: 4FD0E0
  loc_B6275C: FLdRfVar var_8A
  loc_B6275F: FLdPr Me
  loc_B62762: VCallAd Control_ID_cmdCancelar
  loc_B62765: FStAdFunc var_88
  loc_B62768: FLdPr var_88
  loc_B6276B:  = Me.Value
  loc_B62770: FLdI2 var_8A
  loc_B62773: NotI4
  loc_B62774: FLdPr Me
  loc_B62777: VCallAd Control_ID_CodiOrgaMsk
  loc_B6277A: FStAdFunc var_90
  loc_B6277D: FLdPr var_90
  loc_B62780: LateIdLdVar var_A0 DispID_13 -32767
  loc_B62787: CBoolVar
  loc_B62789: AndI4
  loc_B6278A: FFreeAd var_88 = ""
  loc_B62791: FFree1Var var_A0 = ""
  loc_B62794: BranchF loc_B632B6
  loc_B62797: FLdPr Me
  loc_B6279A: VCallAd Control_ID_CodiOrgaMsk
  loc_B6279D: FStAdFunc var_88
  loc_B627A0: FLdPr var_88
  loc_B627A3: LateIdLdVar var_A0 DispID_22 0
  loc_B627AA: CStrVarTmp
  loc_B627AB: FStStrNoPop var_A4
  loc_B627AE: ImpAdCallI2 Trim$()
  loc_B627B3: FStStrNoPop var_A8
  loc_B627B6: LitStr vbNullString
  loc_B627B9: NeStr
  loc_B627BB: FFreeStr var_A4 = ""
  loc_B627C2: FFree1Ad var_88
  loc_B627C5: FFree1Var var_A0 = ""
  loc_B627C8: BranchF loc_B6309B
  loc_B627CB: FLdPr Me
  loc_B627CE: VCallAd Control_ID_CodiOrgaMsk
  loc_B627D1: FStAdFunc var_88
  loc_B627D4: FLdRfVar var_88
  loc_B627D7: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B627DC: FFree1Ad var_88
  loc_B627DF: BranchF loc_B62C78
  loc_B627E2: ImpAdLdI2 MemVar_C3D064
  loc_B627E5: LitI2 2024
  loc_B627E8: GeI2
  loc_B627E9: BranchF loc_B62855
  loc_B627EC: FLdPr Me
  loc_B627EF: VCallAd Control_ID_CodiOrgaMsk
  loc_B627F2: FStAdFunc var_88
  loc_B627F5: FLdPr var_88
  loc_B627F8: LateIdLdVar var_A0 DispID_22 0
  loc_B627FF: PopAd
  loc_B62801: LitStr " AND o.CodiOrga = '"
  loc_B62804: LitI4 0
  loc_B62809: LitI4 -1
  loc_B6280E: LitI4 1
  loc_B62813: LitStr vbNullString
  loc_B62816: LitStr "."
  loc_B62819: FLdRfVar var_A0
  loc_B6281C: CStrVarTmp
  loc_B6281D: FStStrNoPop var_A4
  loc_B62820: ImpAdCallI2 Replace(, , , , , )
  loc_B62825: FStStrNoPop var_A8
  loc_B62828: ConcatStr
  loc_B62829: FStStrNoPop var_AC
  loc_B6282C: LitStr "'"
  loc_B6282F: ConcatStr
  loc_B62830: FStStrNoPop var_B0
  loc_B62833: ImpAdLdI2 MemVar_C3D064
  loc_B62836: ImpAdLdRf MemVar_C3D710
  loc_B62839: NewIfNullPr bscOrganigrama
  loc_B6283C: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B62841: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B6284C: FFree1Ad var_88
  loc_B6284F: FFree1Var var_A0 = ""
  loc_B62852: Branch loc_B628BB
  loc_B62855: FLdPr Me
  loc_B62858: VCallAd Control_ID_
  loc_B6285B: FStAdFunc var_88
  loc_B6285E: FLdPr var_88
  loc_B62861: LateIdLdVar var_A0 DispID_22 0
  loc_B62868: PopAd
  loc_B6286A: LitStr " AND o.CodiOrga LIKE '"
  loc_B6286D: LitI4 0
  loc_B62872: LitI4 -1
  loc_B62877: LitI4 1
  loc_B6287C: LitStr vbNullString
  loc_B6287F: LitStr "."
  loc_B62882: FLdRfVar var_A0
  loc_B62885: CStrVarTmp
  loc_B62886: FStStrNoPop var_A4
  loc_B62889: ImpAdCallI2 Replace(, , , , , )
  loc_B6288E: FStStrNoPop var_A8
  loc_B62891: ConcatStr
  loc_B62892: FStStrNoPop var_AC
  loc_B62895: LitStr Chr(37) & "'"
  loc_B62898: ConcatStr
  loc_B62899: FStStrNoPop var_B0
  loc_B6289C: ImpAdLdI2 MemVar_C3D064
  loc_B6289F: ImpAdLdRf MemVar_C3D710
  loc_B628A2: NewIfNullPr bscOrganigrama
  loc_B628A5: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B628AA: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B628B5: FFree1Ad var_88
  loc_B628B8: FFree1Var var_A0 = ""
  loc_B628BB: FLdRfVar var_B4
  loc_B628BE: FLdRfVar var_90
  loc_B628C1: FLdRfVar var_88
  loc_B628C4: ImpAdLdRf MemVar_C3D710
  loc_B628C7: NewIfNullPr bscOrganigrama
  loc_B628CA: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B628CF: FLdPr var_88
  loc_B628D2: from_stack_1v = clsbase.RsFrmGet()
  loc_B628D7: FLdPr var_90
  loc_B628DA:  = Me.RecordCount
  loc_B628DF: ILdRf var_B4
  loc_B628E2: LitI4 1
  loc_B628E7: EqI4
  loc_B628E8: FFreeAd var_88 = ""
  loc_B628EF: BranchF loc_B62A14
  loc_B628F2: FLdRfVar var_A0
  loc_B628F5: FLdRfVar var_CC
  loc_B628F8: LitVarStr var_C8, "CodiOrga"
  loc_B628FD: PopAdLdVar
  loc_B628FE: FLdRfVar var_B8
  loc_B62901: FLdRfVar var_90
  loc_B62904: FLdRfVar var_88
  loc_B62907: ImpAdLdRf MemVar_C3D710
  loc_B6290A: NewIfNullPr bscOrganigrama
  loc_B6290D: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B62912: FLdPr var_88
  loc_B62915: from_stack_1v = clsbase.RsFrmGet()
  loc_B6291A: FLdPr var_90
  loc_B6291D:  = Me.Fields
  loc_B62922: FLdPr var_B8
  loc_B62925: from_stack_2 = Me.Item(from_stack_1)
  loc_B6292A: FLdPr var_CC
  loc_B6292D:  = Me.Value
  loc_B62932: FLdRfVar var_A4
  loc_B62935: FLdPr Me
  loc_B62938:  = Me.Name
  loc_B6293D: FLdPr Me
  loc_B62940: MemLdRfVar from_stack_1.global_96
  loc_B62943: NewIfNullRf
  loc_B62947: ILdRf var_A4
  loc_B6294A: FLdRfVar var_A0
  loc_B6294D: CStrVarTmp
  loc_B6294E: FStStrNoPop var_A8
  loc_B62951: ImpAdLdI2 MemVar_C3D064
  loc_B62954: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B62959: FStStrNoPop var_AC
  loc_B6295C: FLdPr Me
  loc_B6295F: MemStStrCopy
  loc_B62963: FFreeStr var_A8 = "": var_A4 = ""
  loc_B6296C: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B62977: FFree1Var var_A0 = ""
  loc_B6297A: FLdRfVar var_A4
  loc_B6297D: FLdPr Me
  loc_B62980: MemLdRfVar from_stack_1.global_96
  loc_B62983: NewIfNullPr tblorganigrama
  loc_B62986: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B6298B: FLdZeroAd var_A4
  loc_B6298E: CVarStr var_A0
  loc_B62991: PopAdLdVar
  loc_B62992: FLdPr Me
  loc_B62995: VCallAd Control_ID_CodiOrgaMsk
  loc_B62998: FStAdFunc var_88
  loc_B6299B: FLdPr var_88
  loc_B6299E: LateIdSt
  loc_B629A3: FFree1Ad var_88
  loc_B629A6: FFree1Var var_A0 = ""
  loc_B629A9: FLdRfVar var_A4
  loc_B629AC: FLdPr Me
  loc_B629AF: MemLdRfVar from_stack_1.global_96
  loc_B629B2: NewIfNullPr tblorganigrama
  loc_B629B5: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B629BA: ILdRf var_A4
  loc_B629BD: FLdPr Me
  loc_B629C0: VCallAd Control_ID_DetaOrgaLbl
  loc_B629C3: FStAdFunc var_88
  loc_B629C6: FLdPr var_88
  loc_B629C9: Me.Caption = from_stack_1
  loc_B629CE: FFree1Str var_A4
  loc_B629D1: FFree1Ad var_88
  loc_B629D4: FLdPr Me
  loc_B629D7: VCallAd Control_ID_CodiOrgaMsk
  loc_B629DA: FStAdFunc var_CC
  loc_B629DD: FLdPr Me
  loc_B629E0: VCallAd Control_ID_DetaOrgaLbl
  loc_B629E3: FStAdFunc var_B8
  loc_B629E6: FLdRfVar var_B8
  loc_B629E9: FLdZeroAd var_CC
  loc_B629EC: FStAdFuncNoPop
  loc_B629EF: CastAd
  loc_B629F2: FStAdFunc var_90
  loc_B629F5: FLdRfVar var_90
  loc_B629F8: FLdPr Me
  loc_B629FB: MemLdRfVar from_stack_1.global_76
  loc_B629FE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B62A03: IStI2 Cancel
  loc_B62A06: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B62A11: Branch loc_B62C75
  loc_B62A14: FLdRfVar var_B4
  loc_B62A17: FLdRfVar var_90
  loc_B62A1A: FLdRfVar var_88
  loc_B62A1D: ImpAdLdRf MemVar_C3D710
  loc_B62A20: NewIfNullPr bscOrganigrama
  loc_B62A23: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B62A28: FLdPr var_88
  loc_B62A2B: from_stack_1v = clsbase.RsFrmGet()
  loc_B62A30: FLdPr var_90
  loc_B62A33:  = Me.RecordCount
  loc_B62A38: ILdRf var_B4
  loc_B62A3B: LitI4 1
  loc_B62A40: GtI4
  loc_B62A41: FFreeAd var_88 = ""
  loc_B62A48: BranchF loc_B62BF7
  loc_B62A4B: LitVar_Missing var_DC
  loc_B62A4E: PopAdLdVar
  loc_B62A4F: LitVarI4
  loc_B62A57: PopAdLdVar
  loc_B62A58: ImpAdLdRf MemVar_C3D710
  loc_B62A5B: NewIfNullPr bscOrganigrama
  loc_B62A5E: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B62A63: FLdRfVar var_B4
  loc_B62A66: FLdRfVar var_88
  loc_B62A69: ImpAdLdRf MemVar_C3D710
  loc_B62A6C: NewIfNullPr bscOrganigrama
  loc_B62A6F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B62A74: FLdPr var_88
  loc_B62A77: from_stack_1 = clsbase.RecordCount
  loc_B62A7C: ILdRf var_B4
  loc_B62A7F: LitI4 0
  loc_B62A84: GtI4
  loc_B62A85: FFree1Ad var_88
  loc_B62A88: BranchF loc_B62BAD
  loc_B62A8B: FLdRfVar var_A0
  loc_B62A8E: FLdRfVar var_CC
  loc_B62A91: LitVarStr var_C8, "CodiOrga"
  loc_B62A96: PopAdLdVar
  loc_B62A97: FLdRfVar var_B8
  loc_B62A9A: FLdRfVar var_90
  loc_B62A9D: FLdRfVar var_88
  loc_B62AA0: ImpAdLdRf MemVar_C3D710
  loc_B62AA3: NewIfNullPr bscOrganigrama
  loc_B62AA6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B62AAB: FLdPr var_88
  loc_B62AAE: from_stack_1v = clsbase.RsFrmGet()
  loc_B62AB3: FLdPr var_90
  loc_B62AB6:  = Me.Fields
  loc_B62ABB: FLdPr var_B8
  loc_B62ABE: from_stack_2 = Me.Item(from_stack_1)
  loc_B62AC3: FLdPr var_CC
  loc_B62AC6:  = Me.Value
  loc_B62ACB: FLdRfVar var_A4
  loc_B62ACE: FLdPr Me
  loc_B62AD1:  = Me.Name
  loc_B62AD6: FLdPr Me
  loc_B62AD9: MemLdRfVar from_stack_1.global_96
  loc_B62ADC: NewIfNullRf
  loc_B62AE0: ILdRf var_A4
  loc_B62AE3: FLdRfVar var_A0
  loc_B62AE6: CStrVarTmp
  loc_B62AE7: FStStrNoPop var_A8
  loc_B62AEA: ImpAdLdI2 MemVar_C3D064
  loc_B62AED: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B62AF2: FStStrNoPop var_AC
  loc_B62AF5: FLdPr Me
  loc_B62AF8: MemStStrCopy
  loc_B62AFC: FFreeStr var_A8 = "": var_A4 = ""
  loc_B62B05: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B62B10: FFree1Var var_A0 = ""
  loc_B62B13: FLdRfVar var_A4
  loc_B62B16: FLdPr Me
  loc_B62B19: MemLdRfVar from_stack_1.global_96
  loc_B62B1C: NewIfNullPr tblorganigrama
  loc_B62B1F: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B62B24: FLdZeroAd var_A4
  loc_B62B27: CVarStr var_A0
  loc_B62B2A: PopAdLdVar
  loc_B62B2B: FLdPr Me
  loc_B62B2E: VCallAd Control_ID_CodiOrgaMsk
  loc_B62B31: FStAdFunc var_88
  loc_B62B34: FLdPr var_88
  loc_B62B37: LateIdSt
  loc_B62B3C: FFree1Ad var_88
  loc_B62B3F: FFree1Var var_A0 = ""
  loc_B62B42: FLdRfVar var_A4
  loc_B62B45: FLdPr Me
  loc_B62B48: MemLdRfVar from_stack_1.global_96
  loc_B62B4B: NewIfNullPr tblorganigrama
  loc_B62B4E: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B62B53: ILdRf var_A4
  loc_B62B56: FLdPr Me
  loc_B62B59: VCallAd Control_ID_DetaOrgaLbl
  loc_B62B5C: FStAdFunc var_88
  loc_B62B5F: FLdPr var_88
  loc_B62B62: Me.Caption = from_stack_1
  loc_B62B67: FFree1Str var_A4
  loc_B62B6A: FFree1Ad var_88
  loc_B62B6D: FLdPr Me
  loc_B62B70: VCallAd Control_ID_CodiOrgaMsk
  loc_B62B73: FStAdFunc var_CC
  loc_B62B76: FLdPr Me
  loc_B62B79: VCallAd Control_ID_DetaOrgaLbl
  loc_B62B7C: FStAdFunc var_B8
  loc_B62B7F: FLdRfVar var_B8
  loc_B62B82: FLdZeroAd var_CC
  loc_B62B85: FStAdFuncNoPop
  loc_B62B88: CastAd
  loc_B62B8B: FStAdFunc var_90
  loc_B62B8E: FLdRfVar var_90
  loc_B62B91: FLdPr Me
  loc_B62B94: MemLdRfVar from_stack_1.global_76
  loc_B62B97: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B62B9C: IStI2 Cancel
  loc_B62B9F: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B62BAA: Branch loc_B62BF4
  loc_B62BAD: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B62BB0: FLdPr Me
  loc_B62BB3: MemStStrCopy
  loc_B62BB7: FLdPr Me
  loc_B62BBA: VCallAd Control_ID_CodiOrgaMsk
  loc_B62BBD: FStAdFunc var_CC
  loc_B62BC0: FLdPr Me
  loc_B62BC3: VCallAd Control_ID_DetaOrgaLbl
  loc_B62BC6: FStAdFunc var_B8
  loc_B62BC9: FLdRfVar var_B8
  loc_B62BCC: FLdZeroAd var_CC
  loc_B62BCF: FStAdFuncNoPop
  loc_B62BD2: CastAd
  loc_B62BD5: FStAdFunc var_90
  loc_B62BD8: FLdRfVar var_90
  loc_B62BDB: FLdPr Me
  loc_B62BDE: MemLdRfVar from_stack_1.global_76
  loc_B62BE1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B62BE6: IStI2 Cancel
  loc_B62BE9: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B62BF4: Branch loc_B62C75
  loc_B62BF7: FLdRfVar var_B4
  loc_B62BFA: FLdRfVar var_90
  loc_B62BFD: FLdRfVar var_88
  loc_B62C00: ImpAdLdRf MemVar_C3D710
  loc_B62C03: NewIfNullPr bscOrganigrama
  loc_B62C06: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B62C0B: FLdPr var_88
  loc_B62C0E: from_stack_1v = clsbase.RsFrmGet()
  loc_B62C13: FLdPr var_90
  loc_B62C16:  = Me.RecordCount
  loc_B62C1B: ILdRf var_B4
  loc_B62C1E: LitI4 1
  loc_B62C23: LtI4
  loc_B62C24: FFreeAd var_88 = ""
  loc_B62C2B: BranchF loc_B62C75
  loc_B62C2E: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B62C31: FLdPr Me
  loc_B62C34: MemStStrCopy
  loc_B62C38: FLdPr Me
  loc_B62C3B: VCallAd Control_ID_CodiOrgaMsk
  loc_B62C3E: FStAdFunc var_CC
  loc_B62C41: FLdPr Me
  loc_B62C44: VCallAd Control_ID_DetaOrgaLbl
  loc_B62C47: FStAdFunc var_B8
  loc_B62C4A: FLdRfVar var_B8
  loc_B62C4D: FLdZeroAd var_CC
  loc_B62C50: FStAdFuncNoPop
  loc_B62C53: CastAd
  loc_B62C56: FStAdFunc var_90
  loc_B62C59: FLdRfVar var_90
  loc_B62C5C: FLdPr Me
  loc_B62C5F: MemLdRfVar from_stack_1.global_76
  loc_B62C62: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B62C67: IStI2 Cancel
  loc_B62C6A: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B62C75: Branch loc_B63098
  loc_B62C78: FLdPr Me
  loc_B62C7B: VCallAd Control_ID_CodiOrgaMsk
  loc_B62C7E: FStAdFunc var_88
  loc_B62C81: FLdPr var_88
  loc_B62C84: LateIdLdVar var_A0 DispID_22 0
  loc_B62C8B: PopAd
  loc_B62C8D: LitStr " AND o.DetaOrga LIKE '" & Chr(37)
  loc_B62C90: LitI4 0
  loc_B62C95: LitI4 -1
  loc_B62C9A: LitI4 1
  loc_B62C9F: LitStr Chr(37)
  loc_B62CA2: LitStr " "
  loc_B62CA5: FLdRfVar var_A0
  loc_B62CA8: CStrVarTmp
  loc_B62CA9: FStStrNoPop var_A4
  loc_B62CAC: ImpAdCallI2 Replace(, , , , , )
  loc_B62CB1: FStStrNoPop var_A8
  loc_B62CB4: ConcatStr
  loc_B62CB5: FStStrNoPop var_AC
  loc_B62CB8: LitStr Chr(37) & "'"
  loc_B62CBB: ConcatStr
  loc_B62CBC: FStStrNoPop var_B0
  loc_B62CBF: ImpAdLdI2 MemVar_C3D064
  loc_B62CC2: ImpAdLdRf MemVar_C3D710
  loc_B62CC5: NewIfNullPr bscOrganigrama
  loc_B62CC8: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B62CCD: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B62CD8: FFree1Ad var_88
  loc_B62CDB: FFree1Var var_A0 = ""
  loc_B62CDE: FLdRfVar var_B4
  loc_B62CE1: FLdRfVar var_90
  loc_B62CE4: FLdRfVar var_88
  loc_B62CE7: ImpAdLdRf MemVar_C3D710
  loc_B62CEA: NewIfNullPr bscOrganigrama
  loc_B62CED: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B62CF2: FLdPr var_88
  loc_B62CF5: from_stack_1v = clsbase.RsFrmGet()
  loc_B62CFA: FLdPr var_90
  loc_B62CFD:  = Me.RecordCount
  loc_B62D02: ILdRf var_B4
  loc_B62D05: LitI4 1
  loc_B62D0A: EqI4
  loc_B62D0B: FFreeAd var_88 = ""
  loc_B62D12: BranchF loc_B62E37
  loc_B62D15: FLdRfVar var_A0
  loc_B62D18: FLdRfVar var_CC
  loc_B62D1B: LitVarStr var_C8, "CodiOrga"
  loc_B62D20: PopAdLdVar
  loc_B62D21: FLdRfVar var_B8
  loc_B62D24: FLdRfVar var_90
  loc_B62D27: FLdRfVar var_88
  loc_B62D2A: ImpAdLdRf MemVar_C3D710
  loc_B62D2D: NewIfNullPr bscOrganigrama
  loc_B62D30: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B62D35: FLdPr var_88
  loc_B62D38: from_stack_1v = clsbase.RsFrmGet()
  loc_B62D3D: FLdPr var_90
  loc_B62D40:  = Me.Fields
  loc_B62D45: FLdPr var_B8
  loc_B62D48: from_stack_2 = Me.Item(from_stack_1)
  loc_B62D4D: FLdPr var_CC
  loc_B62D50:  = Me.Value
  loc_B62D55: FLdRfVar var_A4
  loc_B62D58: FLdPr Me
  loc_B62D5B:  = Me.Name
  loc_B62D60: FLdPr Me
  loc_B62D63: MemLdRfVar from_stack_1.global_96
  loc_B62D66: NewIfNullRf
  loc_B62D6A: ILdRf var_A4
  loc_B62D6D: FLdRfVar var_A0
  loc_B62D70: CStrVarTmp
  loc_B62D71: FStStrNoPop var_A8
  loc_B62D74: ImpAdLdI2 MemVar_C3D064
  loc_B62D77: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B62D7C: FStStrNoPop var_AC
  loc_B62D7F: FLdPr Me
  loc_B62D82: MemStStrCopy
  loc_B62D86: FFreeStr var_A8 = "": var_A4 = ""
  loc_B62D8F: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B62D9A: FFree1Var var_A0 = ""
  loc_B62D9D: FLdRfVar var_A4
  loc_B62DA0: FLdPr Me
  loc_B62DA3: MemLdRfVar from_stack_1.global_96
  loc_B62DA6: NewIfNullPr tblorganigrama
  loc_B62DA9: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B62DAE: FLdZeroAd var_A4
  loc_B62DB1: CVarStr var_A0
  loc_B62DB4: PopAdLdVar
  loc_B62DB5: FLdPr Me
  loc_B62DB8: VCallAd Control_ID_CodiOrgaMsk
  loc_B62DBB: FStAdFunc var_88
  loc_B62DBE: FLdPr var_88
  loc_B62DC1: LateIdSt
  loc_B62DC6: FFree1Ad var_88
  loc_B62DC9: FFree1Var var_A0 = ""
  loc_B62DCC: FLdRfVar var_A4
  loc_B62DCF: FLdPr Me
  loc_B62DD2: MemLdRfVar from_stack_1.global_96
  loc_B62DD5: NewIfNullPr tblorganigrama
  loc_B62DD8: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B62DDD: ILdRf var_A4
  loc_B62DE0: FLdPr Me
  loc_B62DE3: VCallAd Control_ID_DetaOrgaLbl
  loc_B62DE6: FStAdFunc var_88
  loc_B62DE9: FLdPr var_88
  loc_B62DEC: Me.Caption = from_stack_1
  loc_B62DF1: FFree1Str var_A4
  loc_B62DF4: FFree1Ad var_88
  loc_B62DF7: FLdPr Me
  loc_B62DFA: VCallAd Control_ID_CodiOrgaMsk
  loc_B62DFD: FStAdFunc var_CC
  loc_B62E00: FLdPr Me
  loc_B62E03: VCallAd Control_ID_DetaOrgaLbl
  loc_B62E06: FStAdFunc var_B8
  loc_B62E09: FLdRfVar var_B8
  loc_B62E0C: FLdZeroAd var_CC
  loc_B62E0F: FStAdFuncNoPop
  loc_B62E12: CastAd
  loc_B62E15: FStAdFunc var_90
  loc_B62E18: FLdRfVar var_90
  loc_B62E1B: FLdPr Me
  loc_B62E1E: MemLdRfVar from_stack_1.global_76
  loc_B62E21: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B62E26: IStI2 Cancel
  loc_B62E29: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B62E34: Branch loc_B63098
  loc_B62E37: FLdRfVar var_B4
  loc_B62E3A: FLdRfVar var_90
  loc_B62E3D: FLdRfVar var_88
  loc_B62E40: ImpAdLdRf MemVar_C3D710
  loc_B62E43: NewIfNullPr bscOrganigrama
  loc_B62E46: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B62E4B: FLdPr var_88
  loc_B62E4E: from_stack_1v = clsbase.RsFrmGet()
  loc_B62E53: FLdPr var_90
  loc_B62E56:  = Me.RecordCount
  loc_B62E5B: ILdRf var_B4
  loc_B62E5E: LitI4 1
  loc_B62E63: GtI4
  loc_B62E64: FFreeAd var_88 = ""
  loc_B62E6B: BranchF loc_B6301A
  loc_B62E6E: LitVar_Missing var_DC
  loc_B62E71: PopAdLdVar
  loc_B62E72: LitVarI4
  loc_B62E7A: PopAdLdVar
  loc_B62E7B: ImpAdLdRf MemVar_C3D710
  loc_B62E7E: NewIfNullPr bscOrganigrama
  loc_B62E81: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B62E86: FLdRfVar var_B4
  loc_B62E89: FLdRfVar var_88
  loc_B62E8C: ImpAdLdRf MemVar_C3D710
  loc_B62E8F: NewIfNullPr bscOrganigrama
  loc_B62E92: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B62E97: FLdPr var_88
  loc_B62E9A: from_stack_1 = clsbase.RecordCount
  loc_B62E9F: ILdRf var_B4
  loc_B62EA2: LitI4 0
  loc_B62EA7: GtI4
  loc_B62EA8: FFree1Ad var_88
  loc_B62EAB: BranchF loc_B62FD0
  loc_B62EAE: FLdRfVar var_A0
  loc_B62EB1: FLdRfVar var_CC
  loc_B62EB4: LitVarStr var_C8, "CodiOrga"
  loc_B62EB9: PopAdLdVar
  loc_B62EBA: FLdRfVar var_B8
  loc_B62EBD: FLdRfVar var_90
  loc_B62EC0: FLdRfVar var_88
  loc_B62EC3: ImpAdLdRf MemVar_C3D710
  loc_B62EC6: NewIfNullPr bscOrganigrama
  loc_B62EC9: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B62ECE: FLdPr var_88
  loc_B62ED1: from_stack_1v = clsbase.RsFrmGet()
  loc_B62ED6: FLdPr var_90
  loc_B62ED9:  = Me.Fields
  loc_B62EDE: FLdPr var_B8
  loc_B62EE1: from_stack_2 = Me.Item(from_stack_1)
  loc_B62EE6: FLdPr var_CC
  loc_B62EE9:  = Me.Value
  loc_B62EEE: FLdRfVar var_A4
  loc_B62EF1: FLdPr Me
  loc_B62EF4:  = Me.Name
  loc_B62EF9: FLdPr Me
  loc_B62EFC: MemLdRfVar from_stack_1.global_96
  loc_B62EFF: NewIfNullRf
  loc_B62F03: ILdRf var_A4
  loc_B62F06: FLdRfVar var_A0
  loc_B62F09: CStrVarTmp
  loc_B62F0A: FStStrNoPop var_A8
  loc_B62F0D: ImpAdLdI2 MemVar_C3D064
  loc_B62F10: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B62F15: FStStrNoPop var_AC
  loc_B62F18: FLdPr Me
  loc_B62F1B: MemStStrCopy
  loc_B62F1F: FFreeStr var_A8 = "": var_A4 = ""
  loc_B62F28: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B62F33: FFree1Var var_A0 = ""
  loc_B62F36: FLdRfVar var_A4
  loc_B62F39: FLdPr Me
  loc_B62F3C: MemLdRfVar from_stack_1.global_96
  loc_B62F3F: NewIfNullPr tblorganigrama
  loc_B62F42: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B62F47: FLdZeroAd var_A4
  loc_B62F4A: CVarStr var_A0
  loc_B62F4D: PopAdLdVar
  loc_B62F4E: FLdPr Me
  loc_B62F51: VCallAd Control_ID_CodiOrgaMsk
  loc_B62F54: FStAdFunc var_88
  loc_B62F57: FLdPr var_88
  loc_B62F5A: LateIdSt
  loc_B62F5F: FFree1Ad var_88
  loc_B62F62: FFree1Var var_A0 = ""
  loc_B62F65: FLdRfVar var_A4
  loc_B62F68: FLdPr Me
  loc_B62F6B: MemLdRfVar from_stack_1.global_96
  loc_B62F6E: NewIfNullPr tblorganigrama
  loc_B62F71: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B62F76: ILdRf var_A4
  loc_B62F79: FLdPr Me
  loc_B62F7C: VCallAd Control_ID_DetaOrgaLbl
  loc_B62F7F: FStAdFunc var_88
  loc_B62F82: FLdPr var_88
  loc_B62F85: Me.Caption = from_stack_1
  loc_B62F8A: FFree1Str var_A4
  loc_B62F8D: FFree1Ad var_88
  loc_B62F90: FLdPr Me
  loc_B62F93: VCallAd Control_ID_CodiOrgaMsk
  loc_B62F96: FStAdFunc var_CC
  loc_B62F99: FLdPr Me
  loc_B62F9C: VCallAd Control_ID_DetaOrgaLbl
  loc_B62F9F: FStAdFunc var_B8
  loc_B62FA2: FLdRfVar var_B8
  loc_B62FA5: FLdZeroAd var_CC
  loc_B62FA8: FStAdFuncNoPop
  loc_B62FAB: CastAd
  loc_B62FAE: FStAdFunc var_90
  loc_B62FB1: FLdRfVar var_90
  loc_B62FB4: FLdPr Me
  loc_B62FB7: MemLdRfVar from_stack_1.global_76
  loc_B62FBA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B62FBF: IStI2 Cancel
  loc_B62FC2: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B62FCD: Branch loc_B63017
  loc_B62FD0: LitStr "El Organigrama NO EXISTE. Verique..."
  loc_B62FD3: FLdPr Me
  loc_B62FD6: MemStStrCopy
  loc_B62FDA: FLdPr Me
  loc_B62FDD: VCallAd Control_ID_CodiOrgaMsk
  loc_B62FE0: FStAdFunc var_CC
  loc_B62FE3: FLdPr Me
  loc_B62FE6: VCallAd Control_ID_DetaOrgaLbl
  loc_B62FE9: FStAdFunc var_B8
  loc_B62FEC: FLdRfVar var_B8
  loc_B62FEF: FLdZeroAd var_CC
  loc_B62FF2: FStAdFuncNoPop
  loc_B62FF5: CastAd
  loc_B62FF8: FStAdFunc var_90
  loc_B62FFB: FLdRfVar var_90
  loc_B62FFE: FLdPr Me
  loc_B63001: MemLdRfVar from_stack_1.global_76
  loc_B63004: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B63009: IStI2 Cancel
  loc_B6300C: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B63017: Branch loc_B63098
  loc_B6301A: FLdRfVar var_B4
  loc_B6301D: FLdRfVar var_90
  loc_B63020: FLdRfVar var_88
  loc_B63023: ImpAdLdRf MemVar_C3D710
  loc_B63026: NewIfNullPr bscOrganigrama
  loc_B63029: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B6302E: FLdPr var_88
  loc_B63031: from_stack_1v = clsbase.RsFrmGet()
  loc_B63036: FLdPr var_90
  loc_B63039:  = Me.RecordCount
  loc_B6303E: ILdRf var_B4
  loc_B63041: LitI4 1
  loc_B63046: LtI4
  loc_B63047: FFreeAd var_88 = ""
  loc_B6304E: BranchF loc_B63098
  loc_B63051: LitStr "El organigrama NO EXISTE. Verique..."
  loc_B63054: FLdPr Me
  loc_B63057: MemStStrCopy
  loc_B6305B: FLdPr Me
  loc_B6305E: VCallAd Control_ID_CodiOrgaMsk
  loc_B63061: FStAdFunc var_CC
  loc_B63064: FLdPr Me
  loc_B63067: VCallAd Control_ID_DetaOrgaLbl
  loc_B6306A: FStAdFunc var_B8
  loc_B6306D: FLdRfVar var_B8
  loc_B63070: FLdZeroAd var_CC
  loc_B63073: FStAdFuncNoPop
  loc_B63076: CastAd
  loc_B63079: FStAdFunc var_90
  loc_B6307C: FLdRfVar var_90
  loc_B6307F: FLdPr Me
  loc_B63082: MemLdRfVar from_stack_1.global_76
  loc_B63085: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B6308A: IStI2 Cancel
  loc_B6308D: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B63098: Branch loc_B63267
  loc_B6309B: LitI2_Byte 0
  loc_B6309D: ImpAdLdRf MemVar_C3D710
  loc_B630A0: NewIfNullPr bscOrganigrama
  loc_B630A3: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_B630A8: LitNothing
  loc_B630AA: CastAd
  loc_B630AD: FStAdFuncNoPop
  loc_B630B0: ImpAdLdRf MemVar_C3D710
  loc_B630B3: NewIfNullPr bscOrganigrama
  loc_B630B6: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_B630BB: FFree1Ad var_88
  loc_B630BE: LitVar_Missing var_DC
  loc_B630C1: PopAdLdVar
  loc_B630C2: LitVarI4
  loc_B630CA: PopAdLdVar
  loc_B630CB: ImpAdLdRf MemVar_C3D710
  loc_B630CE: NewIfNullPr bscOrganigrama
  loc_B630D1: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B630D6: FLdRfVar var_B4
  loc_B630D9: FLdRfVar var_88
  loc_B630DC: ImpAdLdRf MemVar_C3D710
  loc_B630DF: NewIfNullPr bscOrganigrama
  loc_B630E2: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B630E7: FLdPr var_88
  loc_B630EA: from_stack_1 = clsbase.RecordCount
  loc_B630EF: ILdRf var_B4
  loc_B630F2: LitI4 0
  loc_B630F7: GtI4
  loc_B630F8: FFree1Ad var_88
  loc_B630FB: BranchF loc_B63220
  loc_B630FE: FLdRfVar var_A0
  loc_B63101: FLdRfVar var_CC
  loc_B63104: LitVarStr var_C8, "CodiOrga"
  loc_B63109: PopAdLdVar
  loc_B6310A: FLdRfVar var_B8
  loc_B6310D: FLdRfVar var_90
  loc_B63110: FLdRfVar var_88
  loc_B63113: ImpAdLdRf MemVar_C3D710
  loc_B63116: NewIfNullPr bscOrganigrama
  loc_B63119: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B6311E: FLdPr var_88
  loc_B63121: from_stack_1v = clsbase.RsFrmGet()
  loc_B63126: FLdPr var_90
  loc_B63129:  = Me.Fields
  loc_B6312E: FLdPr var_B8
  loc_B63131: from_stack_2 = Me.Item(from_stack_1)
  loc_B63136: FLdPr var_CC
  loc_B63139:  = Me.Value
  loc_B6313E: FLdRfVar var_A4
  loc_B63141: FLdPr Me
  loc_B63144:  = Me.Name
  loc_B63149: FLdPr Me
  loc_B6314C: MemLdRfVar from_stack_1.global_96
  loc_B6314F: NewIfNullRf
  loc_B63153: ILdRf var_A4
  loc_B63156: FLdRfVar var_A0
  loc_B63159: CStrVarTmp
  loc_B6315A: FStStrNoPop var_A8
  loc_B6315D: ImpAdLdI2 MemVar_C3D064
  loc_B63160: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B63165: FStStrNoPop var_AC
  loc_B63168: FLdPr Me
  loc_B6316B: MemStStrCopy
  loc_B6316F: FFreeStr var_A8 = "": var_A4 = ""
  loc_B63178: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B63183: FFree1Var var_A0 = ""
  loc_B63186: FLdRfVar var_A4
  loc_B63189: FLdPr Me
  loc_B6318C: MemLdRfVar from_stack_1.global_96
  loc_B6318F: NewIfNullPr tblorganigrama
  loc_B63192: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B63197: FLdZeroAd var_A4
  loc_B6319A: CVarStr var_A0
  loc_B6319D: PopAdLdVar
  loc_B6319E: FLdPr Me
  loc_B631A1: VCallAd Control_ID_CodiOrgaMsk
  loc_B631A4: FStAdFunc var_88
  loc_B631A7: FLdPr var_88
  loc_B631AA: LateIdSt
  loc_B631AF: FFree1Ad var_88
  loc_B631B2: FFree1Var var_A0 = ""
  loc_B631B5: FLdRfVar var_A4
  loc_B631B8: FLdPr Me
  loc_B631BB: MemLdRfVar from_stack_1.global_96
  loc_B631BE: NewIfNullPr tblorganigrama
  loc_B631C1: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B631C6: ILdRf var_A4
  loc_B631C9: FLdPr Me
  loc_B631CC: VCallAd Control_ID_DetaOrgaLbl
  loc_B631CF: FStAdFunc var_88
  loc_B631D2: FLdPr var_88
  loc_B631D5: Me.Caption = from_stack_1
  loc_B631DA: FFree1Str var_A4
  loc_B631DD: FFree1Ad var_88
  loc_B631E0: FLdPr Me
  loc_B631E3: VCallAd Control_ID_CodiOrgaMsk
  loc_B631E6: FStAdFunc var_CC
  loc_B631E9: FLdPr Me
  loc_B631EC: VCallAd Control_ID_DetaOrgaLbl
  loc_B631EF: FStAdFunc var_B8
  loc_B631F2: FLdRfVar var_B8
  loc_B631F5: FLdZeroAd var_CC
  loc_B631F8: FStAdFuncNoPop
  loc_B631FB: CastAd
  loc_B631FE: FStAdFunc var_90
  loc_B63201: FLdRfVar var_90
  loc_B63204: FLdPr Me
  loc_B63207: MemLdRfVar from_stack_1.global_76
  loc_B6320A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B6320F: IStI2 Cancel
  loc_B63212: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B6321D: Branch loc_B63267
  loc_B63220: LitStr "El organigrama NO EXISTE. Verifique..."
  loc_B63223: FLdPr Me
  loc_B63226: MemStStrCopy
  loc_B6322A: FLdPr Me
  loc_B6322D: VCallAd Control_ID_CodiOrgaMsk
  loc_B63230: FStAdFunc var_CC
  loc_B63233: FLdPr Me
  loc_B63236: VCallAd Control_ID_DetaOrgaLbl
  loc_B63239: FStAdFunc var_B8
  loc_B6323C: FLdRfVar var_B8
  loc_B6323F: FLdZeroAd var_CC
  loc_B63242: FStAdFuncNoPop
  loc_B63245: CastAd
  loc_B63248: FStAdFunc var_90
  loc_B6324B: FLdRfVar var_90
  loc_B6324E: FLdPr Me
  loc_B63251: MemLdRfVar from_stack_1.global_76
  loc_B63254: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B63259: IStI2 Cancel
  loc_B6325C: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B63267: ILdI2 Cancel
  loc_B6326A: NotI4
  loc_B6326B: BranchF loc_B6329C
  loc_B6326E: FLdRfVar var_A4
  loc_B63271: FLdPr Me
  loc_B63274: MemLdRfVar from_stack_1.global_96
  loc_B63277: NewIfNullPr tblorganigrama
  loc_B6327A: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B6327F: ILdRf var_A4
  loc_B63282: FLdPr Me
  loc_B63285: VCallAd Control_ID_DetaOrgaLbl
  loc_B63288: FStAdFunc var_88
  loc_B6328B: FLdPr var_88
  loc_B6328E: Me.Caption = from_stack_1
  loc_B63293: FFree1Str var_A4
  loc_B63296: FFree1Ad var_88
  loc_B63299: Branch loc_B632B6
  loc_B6329C: LitVarStr var_C8, vbNullString
  loc_B632A1: PopAdLdVar
  loc_B632A2: FLdPr Me
  loc_B632A5: VCallAd Control_ID_CodiOrgaMsk
  loc_B632A8: FStAdFunc var_88
  loc_B632AB: FLdPr var_88
  loc_B632AE: LateIdSt
  loc_B632B3: FFree1Ad var_88
  loc_B632B6: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A044B4
  'Data Table: 4FD0E0
  loc_A04360: ILdI2 Shift
  loc_A04363: CI4UI1
  loc_A04364: LitI4 2
  loc_A04369: EqI4
  loc_A0436A: ILdI2 KeyCode
  loc_A0436D: CI4UI1
  loc_A0436E: LitI4 &H42
  loc_A04373: EqI4
  loc_A04374: AndI4
  loc_A04375: BranchF loc_A044B3
  loc_A04378: LitI2_Byte 0
  loc_A0437A: ImpAdLdRf MemVar_C3D710
  loc_A0437D: NewIfNullPr bscOrganigrama
  loc_A04380: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A04385: LitNothing
  loc_A04387: CastAd
  loc_A0438A: FStAdFuncNoPop
  loc_A0438D: ImpAdLdRf MemVar_C3D710
  loc_A04390: NewIfNullPr bscOrganigrama
  loc_A04393: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A04398: FFree1Ad var_88
  loc_A0439B: LitVar_Missing var_A8
  loc_A0439E: PopAdLdVar
  loc_A0439F: LitVarI4
  loc_A043A7: PopAdLdVar
  loc_A043A8: ImpAdLdRf MemVar_C3D710
  loc_A043AB: NewIfNullPr bscOrganigrama
  loc_A043AE: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A043B3: FLdRfVar var_AC
  loc_A043B6: FLdRfVar var_88
  loc_A043B9: ImpAdLdRf MemVar_C3D710
  loc_A043BC: NewIfNullPr bscOrganigrama
  loc_A043BF: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A043C4: FLdPr var_88
  loc_A043C7: from_stack_1 = clsbase.RecordCount
  loc_A043CC: ILdRf var_AC
  loc_A043CF: LitI4 0
  loc_A043D4: GtI4
  loc_A043D5: FFree1Ad var_88
  loc_A043D8: BranchF loc_A044B3
  loc_A043DB: FLdRfVar var_C8
  loc_A043DE: FLdRfVar var_B8
  loc_A043E1: LitVarStr var_98, "CodiOrga"
  loc_A043E6: PopAdLdVar
  loc_A043E7: FLdRfVar var_B4
  loc_A043EA: FLdRfVar var_B0
  loc_A043ED: FLdRfVar var_88
  loc_A043F0: ImpAdLdRf MemVar_C3D710
  loc_A043F3: NewIfNullPr bscOrganigrama
  loc_A043F6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A043FB: FLdPr var_88
  loc_A043FE: from_stack_1v = clsbase.RsFrmGet()
  loc_A04403: FLdPr var_B0
  loc_A04406:  = Me.Fields
  loc_A0440B: FLdPr var_B4
  loc_A0440E: from_stack_2 = Me.Item(from_stack_1)
  loc_A04413: FLdPr var_B8
  loc_A04416:  = Me.Value
  loc_A0441B: FLdRfVar var_C8
  loc_A0441E: CStrVarTmp
  loc_A0441F: CVarStr var_D8
  loc_A04422: PopAdLdVar
  loc_A04423: FLdPr Me
  loc_A04426: VCallAd Control_ID_CodiOrgaMsk
  loc_A04429: FStAdFunc var_DC
  loc_A0442C: FLdPr var_DC
  loc_A0442F: LateIdSt
  loc_A04434: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A04441: FFreeVar var_C8 = ""
  loc_A04448: FLdRfVar var_C8
  loc_A0444B: FLdRfVar var_B8
  loc_A0444E: LitVarStr var_98, "DetaOrga"
  loc_A04453: PopAdLdVar
  loc_A04454: FLdRfVar var_B4
  loc_A04457: FLdRfVar var_B0
  loc_A0445A: FLdRfVar var_88
  loc_A0445D: ImpAdLdRf MemVar_C3D710
  loc_A04460: NewIfNullPr bscOrganigrama
  loc_A04463: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A04468: FLdPr var_88
  loc_A0446B: from_stack_1v = clsbase.RsFrmGet()
  loc_A04470: FLdPr var_B0
  loc_A04473:  = Me.Fields
  loc_A04478: FLdPr var_B4
  loc_A0447B: from_stack_2 = Me.Item(from_stack_1)
  loc_A04480: FLdPr var_B8
  loc_A04483:  = Me.Value
  loc_A04488: FLdRfVar var_C8
  loc_A0448B: CStrVarTmp
  loc_A0448C: FStStrNoPop var_E0
  loc_A0448F: FLdPr Me
  loc_A04492: VCallAd Control_ID_DetaOrgaLbl
  loc_A04495: FStAdFunc var_DC
  loc_A04498: FLdPr var_DC
  loc_A0449B: Me.Caption = from_stack_1
  loc_A044A0: FFree1Str var_E0
  loc_A044A3: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A044B0: FFree1Var var_C8 = ""
  loc_A044B3: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '955610
  'Data Table: 4FD0E0
  loc_9555F8: FLdPr Me
  loc_9555FB: VCallAd Control_ID_dgdABMS
  loc_9555FE: FStAdFunc var_88
  loc_955601: FLdRfVar var_88
  loc_955604: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_955609: FFree1Ad var_88
  loc_95560C: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '953FCC
  'Data Table: 4FD0E0
  loc_953FB4: FLdPr Me
  loc_953FB7: VCallAd Control_ID_dgdABMS
  loc_953FBA: FStAdFunc var_88
  loc_953FBD: FLdRfVar var_88
  loc_953FC0: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_953FC5: FFree1Ad var_88
  loc_953FC8: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999F9C
  'Data Table: 4FD0E0
  loc_999F40: FLdRfVar var_B4
  loc_999F43: FLdRfVar var_B0
  loc_999F46: FLdI2 ColIndex
  loc_999F49: CVarI2 var_A8
  loc_999F4C: PopAdLdVar
  loc_999F4D: FLdPr Me
  loc_999F50: VCallAd Control_ID_dgdABMS
  loc_999F53: FStAdFunc var_88
  loc_999F56: FLdPr var_88
  loc_999F59: LateIdLdVar var_98 DispID_105 0
  loc_999F60: CastAdVar Me
  loc_999F64: FStAdFunc var_AC
  loc_999F67: FLdPr var_AC
  loc_999F6A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_999F6F: FLdPr var_B0
  loc_999F72:  = Me.DataField
  loc_999F77: FLdZeroAd var_B4
  loc_999F7A: PopTmpLdAdStr
  loc_999F7E: FLdPr Me
  loc_999F81: MemLdRfVar from_stack_1.global_52
  loc_999F84: NewIfNullPr clsnotapedido
  loc_999F87: Call clsnotapedido.Sort(from_stack_1v)
  loc_999F8C: FFree1Str var_B8
  loc_999F8F: FFreeAd var_88 = "": var_AC = ""
  loc_999F98: FFree1Var var_98 = ""
  loc_999F9B: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'B804A8
  'Data Table: 4FD0E0
  loc_B7F8F4: FLdPr Me
  loc_B7F8F7: MemLdUI1 global_74
  loc_B7F8FB: CI2UI1
  loc_B7F8FD: LitI2_Byte 0
  loc_B7F8FF: EqI2
  loc_B7F900: FLdRfVar var_8C
  loc_B7F903: FLdPr Me
  loc_B7F906: MemLdRfVar from_stack_1.global_52
  loc_B7F909: NewIfNullPr clsnotapedido
  loc_B7F90C: from_stack_1 = clsnotapedido.RecordCount
  loc_B7F911: ILdRf var_8C
  loc_B7F914: LitI4 0
  loc_B7F919: GtI4
  loc_B7F91A: AndI4
  loc_B7F91B: BranchF loc_B80407
  loc_B7F91E: FLdRfVar var_8E
  loc_B7F921: FLdPr Me
  loc_B7F924: MemLdRfVar from_stack_1.global_52
  loc_B7F927: NewIfNullPr clsnotapedido
  loc_B7F92A: from_stack_1 = clsnotapedido.BOF
  loc_B7F92F: FLdI2 var_8E
  loc_B7F932: BranchF loc_B7F943
  loc_B7F935: FLdPr Me
  loc_B7F938: MemLdRfVar from_stack_1.global_52
  loc_B7F93B: NewIfNullPr clsnotapedido
  loc_B7F93E: Call clsnotapedido.MoveFirst()
  loc_B7F943: FLdRfVar var_8E
  loc_B7F946: FLdPr Me
  loc_B7F949: MemLdRfVar from_stack_1.global_52
  loc_B7F94C: NewIfNullPr clsnotapedido
  loc_B7F94F: from_stack_1 = clsnotapedido.EOF
  loc_B7F954: FLdI2 var_8E
  loc_B7F957: BranchF loc_B7F968
  loc_B7F95A: FLdPr Me
  loc_B7F95D: MemLdRfVar from_stack_1.global_52
  loc_B7F960: NewIfNullPr clsnotapedido
  loc_B7F963: Call clsnotapedido.MoveLast()
  loc_B7F968: LitVarI2 var_EC, 0
  loc_B7F96D: PopAdLdVar
  loc_B7F96E: LitVarStr var_CC, "Nota de Pedido: "
  loc_B7F973: FLdRfVar var_BC
  loc_B7F976: FLdRfVar var_AC
  loc_B7F979: LitVarStr var_A8, "CodiNope"
  loc_B7F97E: PopAdLdVar
  loc_B7F97F: FLdRfVar var_98
  loc_B7F982: FLdRfVar var_94
  loc_B7F985: FLdPr Me
  loc_B7F988: MemLdRfVar from_stack_1.global_52
  loc_B7F98B: NewIfNullPr clsnotapedido
  loc_B7F98E: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B7F993: FLdPr var_94
  loc_B7F996:  = Me.Fields
  loc_B7F99B: FLdPr var_98
  loc_B7F99E: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F9A3: FLdPr var_AC
  loc_B7F9A6:  = Me.Value
  loc_B7F9AB: FLdRfVar var_BC
  loc_B7F9AE: ConcatVar var_DC
  loc_B7F9B2: CStrVarTmp
  loc_B7F9B3: CVarStr var_10C
  loc_B7F9B6: PopAdLdVar
  loc_B7F9B7: FLdPr Me
  loc_B7F9BA: VCallAd Control_ID_SSTab
  loc_B7F9BD: FStAdFunc var_120
  loc_B7F9C0: FLdPr var_120
  loc_B7F9C3: LateIdCallSt
  loc_B7F9CB: FFreeAd var_94 = "": var_98 = "": var_AC = ""
  loc_B7F9D6: FFreeVar var_BC = "": var_DC = ""
  loc_B7F9DF: FLdRfVar var_BC
  loc_B7F9E2: FLdRfVar var_AC
  loc_B7F9E5: LitVarStr var_A8, "FeanNope"
  loc_B7F9EA: PopAdLdVar
  loc_B7F9EB: FLdRfVar var_98
  loc_B7F9EE: FLdRfVar var_94
  loc_B7F9F1: FLdPr Me
  loc_B7F9F4: MemLdRfVar from_stack_1.global_52
  loc_B7F9F7: NewIfNullPr clsnotapedido
  loc_B7F9FA: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B7F9FF: FLdPr var_94
  loc_B7FA02:  = Me.Fields
  loc_B7FA07: FLdPr var_98
  loc_B7FA0A: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FA0F: FLdPr var_AC
  loc_B7FA12:  = Me.Value
  loc_B7FA17: FLdRfVar var_BC
  loc_B7FA1A: LitVarStr var_CC, vbNullString
  loc_B7FA1F: HardType
  loc_B7FA20: NeVarBool
  loc_B7FA22: FFreeAd var_94 = "": var_98 = ""
  loc_B7FA2B: FFree1Var var_BC = ""
  loc_B7FA2E: BranchF loc_B7FA51
  loc_B7FA31: LitVarI4
  loc_B7FA39: PopAdLdVar
  loc_B7FA3A: FLdPr Me
  loc_B7FA3D: VCallAd Control_ID_SSTab
  loc_B7FA40: FStAdFunc var_94
  loc_B7FA43: FLdPr var_94
  loc_B7FA46: LateIdSt
  loc_B7FA4B: FFree1Ad var_94
  loc_B7FA4E: Branch loc_B7FA6E
  loc_B7FA51: LitVarI4
  loc_B7FA59: PopAdLdVar
  loc_B7FA5A: FLdPr Me
  loc_B7FA5D: VCallAd Control_ID_SSTab
  loc_B7FA60: FStAdFunc var_94
  loc_B7FA63: FLdPr var_94
  loc_B7FA66: LateIdSt
  loc_B7FA6B: FFree1Ad var_94
  loc_B7FA6E: LitVarStr var_CC, "Total NP nro "
  loc_B7FA73: FLdRfVar var_BC
  loc_B7FA76: FLdRfVar var_AC
  loc_B7FA79: LitVarStr var_A8, "CodiNope"
  loc_B7FA7E: PopAdLdVar
  loc_B7FA7F: FLdRfVar var_98
  loc_B7FA82: FLdRfVar var_94
  loc_B7FA85: FLdPr Me
  loc_B7FA88: MemLdRfVar from_stack_1.global_52
  loc_B7FA8B: NewIfNullPr clsnotapedido
  loc_B7FA8E: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B7FA93: FLdPr var_94
  loc_B7FA96:  = Me.Fields
  loc_B7FA9B: FLdPr var_98
  loc_B7FA9E: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FAA3: FLdPr var_AC
  loc_B7FAA6:  = Me.Value
  loc_B7FAAB: FLdRfVar var_BC
  loc_B7FAAE: ConcatVar var_DC
  loc_B7FAB2: LitVarStr var_EC, ": "
  loc_B7FAB7: ConcatVar var_10C
  loc_B7FABB: CStrVarVal var_124
  loc_B7FABF: FLdPr Me
  loc_B7FAC2: VCallAd Control_ID_lblTotalNPnro
  loc_B7FAC5: FStAdFunc var_120
  loc_B7FAC8: FLdPr var_120
  loc_B7FACB: Me.Caption = from_stack_1
  loc_B7FAD0: FFree1Str var_124
  loc_B7FAD3: FFreeAd var_94 = "": var_98 = "": var_AC = ""
  loc_B7FADE: FFreeVar var_BC = "": var_DC = ""
  loc_B7FAE7: Call Proc_126_67_A365C0()
  loc_B7FAEC: LitStr "SET @TotalNota=0.00;"
  loc_B7FAEF: FLdPr Me
  loc_B7FAF2: MemLdRfVar from_stack_1.global_56
  loc_B7FAF5: NewIfNullPr clsbase
  loc_B7FAF8: Call clsbase.RedefineRS(from_stack_1v)
  loc_B7FAFD: LitStr "SELECT itn.*, DetaInsu, IFNULL(c.CucuPers,'') CucuPers"
  loc_B7FB00: LitStr ", Round(CantItno*ImunItno,3) TotalItem"
  loc_B7FB03: ConcatStr
  loc_B7FB04: FStStrNoPop var_124
  loc_B7FB07: LitStr ", Round(@TotalNota:=@TotalNota+CantItno*ImunItno,3) TotalNota"
  loc_B7FB0A: ConcatStr
  loc_B7FB0B: FStStrNoPop var_128
  loc_B7FB0E: LitStr " FROM itemnota itn"
  loc_B7FB11: ConcatStr
  loc_B7FB12: FStStrNoPop var_12C
  loc_B7FB15: LitStr " INNER JOIN infogov.insumo i ON i.CodiInsu = itn.CodiInsu"
  loc_B7FB18: ConcatStr
  loc_B7FB19: FStStrNoPop var_130
  loc_B7FB1C: LitStr " LEFT JOIN cotizacion c ON c.PeriInfo = itn.PeriInfo AND c.CodiNope = itn.CodiNope "
  loc_B7FB1F: ConcatStr
  loc_B7FB20: FStStrNoPop var_134
  loc_B7FB23: LitStr " WHERE itn.PeriInfo = "
  loc_B7FB26: ConcatStr
  loc_B7FB27: CVarStr var_DC
  loc_B7FB2A: FLdRfVar var_BC
  loc_B7FB2D: FLdRfVar var_AC
  loc_B7FB30: LitVarStr var_A8, "PeriInfo"
  loc_B7FB35: PopAdLdVar
  loc_B7FB36: FLdRfVar var_98
  loc_B7FB39: FLdRfVar var_94
  loc_B7FB3C: FLdPr Me
  loc_B7FB3F: MemLdRfVar from_stack_1.global_52
  loc_B7FB42: NewIfNullPr clsnotapedido
  loc_B7FB45: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B7FB4A: FLdPr var_94
  loc_B7FB4D:  = Me.Fields
  loc_B7FB52: FLdPr var_98
  loc_B7FB55: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FB5A: FLdPr var_AC
  loc_B7FB5D:  = Me.Value
  loc_B7FB62: FLdRfVar var_BC
  loc_B7FB65: ConcatVar var_10C
  loc_B7FB69: LitVarStr var_CC, " AND itn.CodiNope = "
  loc_B7FB6E: ConcatVar var_144
  loc_B7FB72: FLdRfVar var_15C
  loc_B7FB75: FLdRfVar var_14C
  loc_B7FB78: LitVarStr var_EC, "CodiNope"
  loc_B7FB7D: PopAdLdVar
  loc_B7FB7E: FLdRfVar var_148
  loc_B7FB81: FLdRfVar var_120
  loc_B7FB84: FLdPr Me
  loc_B7FB87: MemLdRfVar from_stack_1.global_52
  loc_B7FB8A: NewIfNullPr clsnotapedido
  loc_B7FB8D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B7FB92: FLdPr var_120
  loc_B7FB95:  = Me.Fields
  loc_B7FB9A: FLdPr var_148
  loc_B7FB9D: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FBA2: FLdPr var_14C
  loc_B7FBA5:  = Me.Value
  loc_B7FBAA: FLdRfVar var_15C
  loc_B7FBAD: ConcatVar var_16C
  loc_B7FBB1: LitVarStr var_FC, " GROUP BY itn.PeriInfo, itn.CodiNope, itn.CodiItno;"
  loc_B7FBB6: ConcatVar var_17C
  loc_B7FBBA: CStrVarVal var_180
  loc_B7FBBE: FLdPr Me
  loc_B7FBC1: MemLdRfVar from_stack_1.global_56
  loc_B7FBC4: NewIfNullPr clsbase
  loc_B7FBC7: Call clsbase.RedefineRS(from_stack_1v)
  loc_B7FBCC: FFreeStr var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_B7FBDB: FFreeAd var_94 = "": var_98 = "": var_AC = "": var_120 = "": var_148 = ""
  loc_B7FBEA: FFreeVar var_DC = "": var_BC = "": var_10C = "": var_144 = "": var_15C = "": var_16C = ""
  loc_B7FBFB: FLdRfVar var_8C
  loc_B7FBFE: FLdPr Me
  loc_B7FC01: MemLdRfVar from_stack_1.global_56
  loc_B7FC04: NewIfNullPr clsbase
  loc_B7FC07: from_stack_1 = clsbase.RecordCount
  loc_B7FC0C: ILdRf var_8C
  loc_B7FC0F: LitI4 0
  loc_B7FC14: GtI4
  loc_B7FC15: BranchF loc_B80260
  loc_B7FC18: FLdPr Me
  loc_B7FC1B: MemLdRfVar from_stack_1.global_56
  loc_B7FC1E: NewIfNullPr clsbase
  loc_B7FC21: Call clsbase.MoveFirst()
  loc_B7FC26: FLdRfVar var_8E
  loc_B7FC29: FLdPr Me
  loc_B7FC2C: MemLdRfVar from_stack_1.global_56
  loc_B7FC2F: NewIfNullPr clsbase
  loc_B7FC32: from_stack_1 = clsbase.EOF
  loc_B7FC37: FLdI2 var_8E
  loc_B7FC3A: NotI4
  loc_B7FC3B: BranchF loc_B80260
  loc_B7FC3E: FLdRfVar var_224
  loc_B7FC41: LitVarStr var_11C, "CantItno"
  loc_B7FC46: PopAdLdVar
  loc_B7FC47: FLdRfVar var_220
  loc_B7FC4A: FLdRfVar var_21C
  loc_B7FC4D: FLdPr Me
  loc_B7FC50: MemLdRfVar from_stack_1.global_56
  loc_B7FC53: NewIfNullPr clsbase
  loc_B7FC56: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FC5B: FLdPr var_21C
  loc_B7FC5E:  = Me.Fields
  loc_B7FC63: FLdPr var_220
  loc_B7FC66: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FC6B: FLdRfVar var_2B0
  loc_B7FC6E: LitVarStr var_2AC, "ImunItno"
  loc_B7FC73: PopAdLdVar
  loc_B7FC74: FLdRfVar var_29C
  loc_B7FC77: FLdRfVar var_298
  loc_B7FC7A: FLdPr Me
  loc_B7FC7D: MemLdRfVar from_stack_1.global_56
  loc_B7FC80: NewIfNullPr clsbase
  loc_B7FC83: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FC88: FLdPr var_298
  loc_B7FC8B:  = Me.Fields
  loc_B7FC90: FLdPr var_29C
  loc_B7FC93: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FC98: FLdRfVar var_33C
  loc_B7FC9B: LitVarStr var_338, "TotalItem"
  loc_B7FCA0: PopAdLdVar
  loc_B7FCA1: FLdRfVar var_328
  loc_B7FCA4: FLdRfVar var_324
  loc_B7FCA7: FLdPr Me
  loc_B7FCAA: MemLdRfVar from_stack_1.global_56
  loc_B7FCAD: NewIfNullPr clsbase
  loc_B7FCB0: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FCB5: FLdPr var_324
  loc_B7FCB8:  = Me.Fields
  loc_B7FCBD: FLdPr var_328
  loc_B7FCC0: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FCC5: FLdRfVar var_558
  loc_B7FCC8: FLdRfVar var_538
  loc_B7FCCB: LitVarStr var_534, "CaraItno"
  loc_B7FCD0: PopAdLdVar
  loc_B7FCD1: FLdRfVar var_524
  loc_B7FCD4: FLdRfVar var_520
  loc_B7FCD7: FLdPr Me
  loc_B7FCDA: MemLdRfVar from_stack_1.global_56
  loc_B7FCDD: NewIfNullPr clsbase
  loc_B7FCE0: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FCE5: FLdPr var_520
  loc_B7FCE8:  = Me.Fields
  loc_B7FCED: FLdPr var_524
  loc_B7FCF0: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FCF5: FLdPr var_538
  loc_B7FCF8:  = Me.Value
  loc_B7FCFD: LitI4 9
  loc_B7FD02: FLdRfVar var_548
  loc_B7FD05: ImpAdCallFPR4  = Chr()
  loc_B7FD0A: FLdRfVar var_620
  loc_B7FD0D: FLdRfVar var_610
  loc_B7FD10: LitVarStr var_60C, "IdImpu"
  loc_B7FD15: PopAdLdVar
  loc_B7FD16: FLdRfVar var_5FC
  loc_B7FD19: FLdRfVar var_5F8
  loc_B7FD1C: FLdPr Me
  loc_B7FD1F: MemLdRfVar from_stack_1.global_56
  loc_B7FD22: NewIfNullPr clsbase
  loc_B7FD25: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FD2A: FLdPr var_5F8
  loc_B7FD2D:  = Me.Fields
  loc_B7FD32: FLdPr var_5FC
  loc_B7FD35: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FD3A: FLdPr var_610
  loc_B7FD3D:  = Me.Value
  loc_B7FD42: FLdRfVar var_DC
  loc_B7FD45: FLdRfVar var_AC
  loc_B7FD48: LitVarStr var_A8, "CodiItno"
  loc_B7FD4D: PopAdLdVar
  loc_B7FD4E: FLdRfVar var_98
  loc_B7FD51: FLdRfVar var_94
  loc_B7FD54: FLdPr Me
  loc_B7FD57: MemLdRfVar from_stack_1.global_56
  loc_B7FD5A: NewIfNullPr clsbase
  loc_B7FD5D: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FD62: FLdPr var_94
  loc_B7FD65:  = Me.Fields
  loc_B7FD6A: FLdPr var_98
  loc_B7FD6D: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FD72: FLdPr var_AC
  loc_B7FD75:  = Me.Value
  loc_B7FD7A: FLdRfVar var_DC
  loc_B7FD7D: LitI4 9
  loc_B7FD82: FLdRfVar var_BC
  loc_B7FD85: ImpAdCallFPR4  = Chr()
  loc_B7FD8A: FLdRfVar var_BC
  loc_B7FD8D: ConcatVar var_10C
  loc_B7FD91: FLdRfVar var_144
  loc_B7FD94: FLdRfVar var_14C
  loc_B7FD97: LitVarStr var_CC, "CodiInsu"
  loc_B7FD9C: PopAdLdVar
  loc_B7FD9D: FLdRfVar var_148
  loc_B7FDA0: FLdRfVar var_120
  loc_B7FDA3: FLdPr Me
  loc_B7FDA6: MemLdRfVar from_stack_1.global_56
  loc_B7FDA9: NewIfNullPr clsbase
  loc_B7FDAC: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FDB1: FLdPr var_120
  loc_B7FDB4:  = Me.Fields
  loc_B7FDB9: FLdPr var_148
  loc_B7FDBC: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FDC1: FLdPr var_14C
  loc_B7FDC4:  = Me.Value
  loc_B7FDC9: FLdRfVar var_144
  loc_B7FDCC: ConcatVar var_15C
  loc_B7FDD0: LitI4 9
  loc_B7FDD5: FLdRfVar var_16C
  loc_B7FDD8: ImpAdCallFPR4  = Chr()
  loc_B7FDDD: FLdRfVar var_16C
  loc_B7FDE0: ConcatVar var_17C
  loc_B7FDE4: FLdRfVar var_19C
  loc_B7FDE7: FLdRfVar var_18C
  loc_B7FDEA: LitVarStr var_EC, "DetaInsu"
  loc_B7FDEF: PopAdLdVar
  loc_B7FDF0: FLdRfVar var_188
  loc_B7FDF3: FLdRfVar var_184
  loc_B7FDF6: FLdPr Me
  loc_B7FDF9: MemLdRfVar from_stack_1.global_56
  loc_B7FDFC: NewIfNullPr clsbase
  loc_B7FDFF: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FE04: FLdPr var_184
  loc_B7FE07:  = Me.Fields
  loc_B7FE0C: FLdPr var_188
  loc_B7FE0F: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FE14: FLdPr var_18C
  loc_B7FE17:  = Me.Value
  loc_B7FE1C: FLdRfVar var_19C
  loc_B7FE1F: ConcatVar var_1AC
  loc_B7FE23: LitI4 9
  loc_B7FE28: FLdRfVar var_1BC
  loc_B7FE2B: ImpAdCallFPR4  = Chr()
  loc_B7FE30: FLdRfVar var_1BC
  loc_B7FE33: ConcatVar var_1CC
  loc_B7FE37: FLdRfVar var_1E8
  loc_B7FE3A: FLdRfVar var_1D8
  loc_B7FE3D: LitVarStr var_FC, "DetaItno"
  loc_B7FE42: PopAdLdVar
  loc_B7FE43: FLdRfVar var_1D4
  loc_B7FE46: FLdRfVar var_1D0
  loc_B7FE49: FLdPr Me
  loc_B7FE4C: MemLdRfVar from_stack_1.global_56
  loc_B7FE4F: NewIfNullPr clsbase
  loc_B7FE52: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FE57: FLdPr var_1D0
  loc_B7FE5A:  = Me.Fields
  loc_B7FE5F: FLdPr var_1D4
  loc_B7FE62: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FE67: FLdPr var_1D8
  loc_B7FE6A:  = Me.Value
  loc_B7FE6F: FLdRfVar var_1E8
  loc_B7FE72: ConcatVar var_1F8
  loc_B7FE76: LitI4 9
  loc_B7FE7B: FLdRfVar var_208
  loc_B7FE7E: ImpAdCallFPR4  = Chr()
  loc_B7FE83: FLdRfVar var_208
  loc_B7FE86: ConcatVar var_218
  loc_B7FE8A: LitI4 1
  loc_B7FE8F: LitI4 1
  loc_B7FE94: LitVarStr var_244, "0.000"
  loc_B7FE99: FStVarCopyObj var_254
  loc_B7FE9C: FLdRfVar var_254
  loc_B7FE9F: FLdZeroAd var_224
  loc_B7FEA2: CVarAd
  loc_B7FEA6: ImpAdCallI2 Format$(, )
  loc_B7FEAB: CVarStr var_264
  loc_B7FEAE: ConcatVar var_274
  loc_B7FEB2: LitI4 9
  loc_B7FEB7: FLdRfVar var_284
  loc_B7FEBA: ImpAdCallFPR4  = Chr()
  loc_B7FEBF: FLdRfVar var_284
  loc_B7FEC2: ConcatVar var_294
  loc_B7FEC6: LitI4 1
  loc_B7FECB: LitI4 1
  loc_B7FED0: LitVarStr var_2D0, "0.00"
  loc_B7FED5: FStVarCopyObj var_2E0
  loc_B7FED8: FLdRfVar var_2E0
  loc_B7FEDB: FLdZeroAd var_2B0
  loc_B7FEDE: CVarAd
  loc_B7FEE2: ImpAdCallI2 Format$(, )
  loc_B7FEE7: CVarStr var_2F0
  loc_B7FEEA: ConcatVar var_300
  loc_B7FEEE: LitI4 9
  loc_B7FEF3: FLdRfVar var_310
  loc_B7FEF6: ImpAdCallFPR4  = Chr()
  loc_B7FEFB: FLdRfVar var_310
  loc_B7FEFE: ConcatVar var_320
  loc_B7FF02: LitI4 1
  loc_B7FF07: LitI4 1
  loc_B7FF0C: LitVarStr var_35C, "0.00"
  loc_B7FF11: FStVarCopyObj var_36C
  loc_B7FF14: FLdRfVar var_36C
  loc_B7FF17: FLdZeroAd var_33C
  loc_B7FF1A: CVarAd
  loc_B7FF1E: ImpAdCallI2 Format$(, )
  loc_B7FF23: CVarStr var_37C
  loc_B7FF26: ConcatVar var_38C
  loc_B7FF2A: LitI4 9
  loc_B7FF2F: FLdRfVar var_39C
  loc_B7FF32: ImpAdCallFPR4  = Chr()
  loc_B7FF37: FLdRfVar var_39C
  loc_B7FF3A: ConcatVar var_3AC
  loc_B7FF3E: FLdRfVar var_3D8
  loc_B7FF41: FLdRfVar var_3C8
  loc_B7FF44: LitVarStr var_3C4, "CodiOrga"
  loc_B7FF49: PopAdLdVar
  loc_B7FF4A: FLdRfVar var_3B4
  loc_B7FF4D: FLdRfVar var_3B0
  loc_B7FF50: FLdPr Me
  loc_B7FF53: MemLdRfVar from_stack_1.global_56
  loc_B7FF56: NewIfNullPr clsbase
  loc_B7FF59: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FF5E: FLdPr var_3B0
  loc_B7FF61:  = Me.Fields
  loc_B7FF66: FLdPr var_3B4
  loc_B7FF69: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FF6E: FLdPr var_3C8
  loc_B7FF71:  = Me.Value
  loc_B7FF76: FLdRfVar var_3D8
  loc_B7FF79: ConcatVar var_3E8
  loc_B7FF7D: LitI4 9
  loc_B7FF82: FLdRfVar var_3F8
  loc_B7FF85: ImpAdCallFPR4  = Chr()
  loc_B7FF8A: FLdRfVar var_3F8
  loc_B7FF8D: ConcatVar var_408
  loc_B7FF91: FLdRfVar var_434
  loc_B7FF94: FLdRfVar var_424
  loc_B7FF97: LitVarStr var_420, "CodiUnga"
  loc_B7FF9C: PopAdLdVar
  loc_B7FF9D: FLdRfVar var_410
  loc_B7FFA0: FLdRfVar var_40C
  loc_B7FFA3: FLdPr Me
  loc_B7FFA6: MemLdRfVar from_stack_1.global_56
  loc_B7FFA9: NewIfNullPr clsbase
  loc_B7FFAC: from_stack_1v = clsbase.RsFrmGet()
  loc_B7FFB1: FLdPr var_40C
  loc_B7FFB4:  = Me.Fields
  loc_B7FFB9: FLdPr var_410
  loc_B7FFBC: from_stack_2 = Me.Item(from_stack_1)
  loc_B7FFC1: FLdPr var_424
  loc_B7FFC4:  = Me.Value
  loc_B7FFC9: FLdRfVar var_434
  loc_B7FFCC: ConcatVar var_444
  loc_B7FFD0: LitI4 9
  loc_B7FFD5: FLdRfVar var_454
  loc_B7FFD8: ImpAdCallFPR4  = Chr()
  loc_B7FFDD: FLdRfVar var_454
  loc_B7FFE0: ConcatVar var_464
  loc_B7FFE4: FLdRfVar var_490
  loc_B7FFE7: FLdRfVar var_480
  loc_B7FFEA: LitVarStr var_47C, "CodiFifu"
  loc_B7FFEF: PopAdLdVar
  loc_B7FFF0: FLdRfVar var_46C
  loc_B7FFF3: FLdRfVar var_468
  loc_B7FFF6: FLdPr Me
  loc_B7FFF9: MemLdRfVar from_stack_1.global_56
  loc_B7FFFC: NewIfNullPr clsbase
  loc_B7FFFF: from_stack_1v = clsbase.RsFrmGet()
  loc_B80004: FLdPr var_468
  loc_B80007:  = Me.Fields
  loc_B8000C: FLdPr var_46C
  loc_B8000F: from_stack_2 = Me.Item(from_stack_1)
  loc_B80014: FLdPr var_480
  loc_B80017:  = Me.Value
  loc_B8001C: FLdRfVar var_490
  loc_B8001F: ConcatVar var_4A0
  loc_B80023: LitI4 9
  loc_B80028: FLdRfVar var_4B0
  loc_B8002B: ImpAdCallFPR4  = Chr()
  loc_B80030: FLdRfVar var_4B0
  loc_B80033: ConcatVar var_4C0
  loc_B80037: FLdRfVar var_4EC
  loc_B8003A: FLdRfVar var_4DC
  loc_B8003D: LitVarStr var_4D8, "CodiPart"
  loc_B80042: PopAdLdVar
  loc_B80043: FLdRfVar var_4C8
  loc_B80046: FLdRfVar var_4C4
  loc_B80049: FLdPr Me
  loc_B8004C: MemLdRfVar from_stack_1.global_56
  loc_B8004F: NewIfNullPr clsbase
  loc_B80052: from_stack_1v = clsbase.RsFrmGet()
  loc_B80057: FLdPr var_4C4
  loc_B8005A:  = Me.Fields
  loc_B8005F: FLdPr var_4C8
  loc_B80062: from_stack_2 = Me.Item(from_stack_1)
  loc_B80067: FLdPr var_4DC
  loc_B8006A:  = Me.Value
  loc_B8006F: FLdRfVar var_4EC
  loc_B80072: ConcatVar var_4FC
  loc_B80076: LitI4 9
  loc_B8007B: FLdRfVar var_50C
  loc_B8007E: ImpAdCallFPR4  = Chr()
  loc_B80083: FLdRfVar var_50C
  loc_B80086: ConcatVar var_51C
  loc_B8008A: LitI4 0
  loc_B8008F: LitI4 -1
  loc_B80094: LitI4 1
  loc_B80099: LitStr " "
  loc_B8009C: FLdRfVar var_548
  loc_B8009F: CStrVarVal var_128
  loc_B800A3: FLdRfVar var_558
  loc_B800A6: CStrVarTmp
  loc_B800A7: FStStrNoPop var_124
  loc_B800AA: ImpAdCallI2 Replace(, , , , , )
  loc_B800AF: CVarStr var_568
  loc_B800B2: ConcatVar var_578
  loc_B800B6: LitI4 9
  loc_B800BB: FLdRfVar var_588
  loc_B800BE: ImpAdCallFPR4  = Chr()
  loc_B800C3: FLdRfVar var_588
  loc_B800C6: ConcatVar var_598
  loc_B800CA: FLdRfVar var_5C4
  loc_B800CD: FLdRfVar var_5B4
  loc_B800D0: LitVarStr var_5B0, "CucuPers"
  loc_B800D5: PopAdLdVar
  loc_B800D6: FLdRfVar var_5A0
  loc_B800D9: FLdRfVar var_59C
  loc_B800DC: FLdPr Me
  loc_B800DF: MemLdRfVar from_stack_1.global_56
  loc_B800E2: NewIfNullPr clsbase
  loc_B800E5: from_stack_1v = clsbase.RsFrmGet()
  loc_B800EA: FLdPr var_59C
  loc_B800ED:  = Me.Fields
  loc_B800F2: FLdPr var_5A0
  loc_B800F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B800FA: FLdPr var_5B4
  loc_B800FD:  = Me.Value
  loc_B80102: FLdRfVar var_5C4
  loc_B80105: ConcatVar var_5D4
  loc_B80109: LitI4 9
  loc_B8010E: FLdRfVar var_5E4
  loc_B80111: ImpAdCallFPR4  = Chr()
  loc_B80116: FLdRfVar var_5E4
  loc_B80119: ConcatVar var_5F4
  loc_B8011D: LitVarStr var_660, "Si"
  loc_B80122: FStVarCopyObj var_670
  loc_B80125: FLdRfVar var_670
  loc_B80128: LitVarStr var_640, "No"
  loc_B8012D: FStVarCopyObj var_650
  loc_B80130: FLdRfVar var_650
  loc_B80133: FLdRfVar var_620
  loc_B80136: FnCStrVar
  loc_B80138: FStStrNoPop var_12C
  loc_B8013B: LitStr "0"
  loc_B8013E: EqStr
  loc_B80140: CVarBoolI2 var_630
  loc_B80144: FLdRfVar var_680
  loc_B80147: ImpAdCallFPR4  = IIf(, , )
  loc_B8014C: FLdRfVar var_680
  loc_B8014F: ConcatVar var_690
  loc_B80153: CStrVarTmp
  loc_B80154: CVarStr var_6A0
  loc_B80157: PopAdLdVar
  loc_B80158: FLdPr Me
  loc_B8015B: VCallAd Control_ID_ItemNotaFlex
  loc_B8015E: FStAdFunc var_6B4
  loc_B80161: FLdPr var_6B4
  loc_B80164: LateIdCall
  loc_B8016C: FFreeStr var_124 = "": var_128 = ""
  loc_B80175: FFreeAd var_520 = "": var_524 = "": var_538 = "": var_59C = "": var_5A0 = "": var_5B4 = "": var_5F8 = "": var_5FC = "": var_610 = "": var_6B4 = "": var_94 = "": var_98 = "": var_AC = "": var_120 = "": var_148 = "": var_14C = "": var_184 = "": var_188 = "": var_18C = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_21C = "": var_220 = "": var_298 = "": var_29C = "": var_324 = "": var_328 = "": var_3B0 = "": var_3B4 = "": var_3C8 = "": var_40C = "": var_410 = "": var_424 = "": var_468 = "": var_46C = "": var_480 = "": var_4C4 = "": var_4C8 = ""
  loc_B801C8: FFreeVar var_650 = "": var_670 = "": var_5F4 = "": var_680 = "": var_690 = "": var_6A0 = "": var_38C = "": var_39C = "": var_3AC = "": var_3D8 = "": var_3E8 = "": var_3F8 = "": var_408 = "": var_434 = "": var_444 = "": var_454 = "": var_464 = "": var_490 = "": var_4A0 = "": var_4B0 = "": var_4C0 = "": var_4EC = "": var_4FC = "": var_50C = "": var_558 = "": var_548 = "": var_51C = "": var_568 = "": var_578 = "": var_588 = "": var_598 = "": var_5C4 = "": var_5D4 = "": var_5E4 = "": var_620 = "": var_630 = "": var_DC = "": var_BC = "": var_10C = "": var_144 = "": var_15C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_234 = "": var_254 = "": var_218 = "": var_264 = "": var_274 = "": var_284 = "": var_2C0 = "": var_2E0 = "": var_294 = "": var_2F0 = "": var_300 = "": var_310 = "": var_34C = "": var_36C = "": var_320 = ""
  loc_B8024F: FLdPr Me
  loc_B80252: MemLdRfVar from_stack_1.global_56
  loc_B80255: NewIfNullPr clsbase
  loc_B80258: Call clsbase.MoveSiguiente()
  loc_B8025D: Branch loc_B7FC26
  loc_B80260: LitI2_Byte 1
  loc_B80262: FLdRfVar var_88
  loc_B80265: FLdPr Me
  loc_B80268: VCallAd Control_ID_ItemNotaFlex
  loc_B8026B: FStAdFunc var_94
  loc_B8026E: FLdPr var_94
  loc_B80271: LateIdLdVar var_BC DispID_4 0
  loc_B80278: CI4Var
  loc_B8027A: LitI4 1
  loc_B8027F: SubI4
  loc_B80280: CI2I4
  loc_B80281: FFree1Ad var_94
  loc_B80284: FFree1Var var_BC = ""
  loc_B80287: ForI2 var_6B8
  loc_B8028D: FLdI2 var_88
  loc_B80290: CI4UI1
  loc_B80291: CVarI4
  loc_B80295: PopAdLdVar
  loc_B80296: LitVarI4
  loc_B8029E: PopAdLdVar
  loc_B8029F: FLdPr Me
  loc_B802A2: VCallAd Control_ID_ItemNotaFlex
  loc_B802A5: FStAdFunc var_94
  loc_B802A8: FLdPr var_94
  loc_B802AB: LateIdCallLdVar
  loc_B802B5: CStrVarTmp
  loc_B802B6: FStStrNoPop var_124
  loc_B802B9: LitStr "No"
  loc_B802BC: NeStr
  loc_B802BE: FFree1Str var_124
  loc_B802C1: FFree1Ad var_94
  loc_B802C4: FFree1Var var_BC = ""
  loc_B802C7: BranchF loc_B80356
  loc_B802CA: FLdI2 var_88
  loc_B802CD: CI4UI1
  loc_B802CE: CVarI4
  loc_B802D2: PopAdLdVar
  loc_B802D3: FLdPr Me
  loc_B802D6: VCallAd Control_ID_ItemNotaFlex
  loc_B802D9: FStAdFunc var_94
  loc_B802DC: FLdPr var_94
  loc_B802DF: LateIdSt
  loc_B802E4: FFree1Ad var_94
  loc_B802E7: LitI2_Byte 0
  loc_B802E9: FLdRfVar var_86
  loc_B802EC: FLdPr Me
  loc_B802EF: VCallAd Control_ID_ItemNotaFlex
  loc_B802F2: FStAdFunc var_94
  loc_B802F5: FLdPr var_94
  loc_B802F8: LateIdLdVar var_BC DispID_5 0
  loc_B802FF: CI4Var
  loc_B80301: LitI4 1
  loc_B80306: SubI4
  loc_B80307: CI2I4
  loc_B80308: FFree1Ad var_94
  loc_B8030B: FFree1Var var_BC = ""
  loc_B8030E: ForI2 var_6BC
  loc_B80314: FLdI2 var_86
  loc_B80317: CI4UI1
  loc_B80318: CVarI4
  loc_B8031C: PopAdLdVar
  loc_B8031D: FLdPr Me
  loc_B80320: VCallAd Control_ID_ItemNotaFlex
  loc_B80323: FStAdFunc var_94
  loc_B80326: FLdPr var_94
  loc_B80329: LateIdSt
  loc_B8032E: FFree1Ad var_94
  loc_B80331: LitVarI4
  loc_B80339: PopAdLdVar
  loc_B8033A: FLdPr Me
  loc_B8033D: VCallAd Control_ID_ItemNotaFlex
  loc_B80340: FStAdFunc var_94
  loc_B80343: FLdPr var_94
  loc_B80346: LateIdSt
  loc_B8034B: FFree1Ad var_94
  loc_B8034E: FLdRfVar var_86
  loc_B80351: NextI2 var_6BC, loc_B80314
  loc_B80356: FLdRfVar var_88
  loc_B80359: NextI2 var_6B8, loc_B8028D
  loc_B8035E: FLdPr Me
  loc_B80361: MemLdRfVar from_stack_1.global_56
  loc_B80364: NewIfNullPr clsbase
  loc_B80367: Call clsbase.MoveLast()
  loc_B8036C: FLdRfVar var_AC
  loc_B8036F: LitVarStr var_A8, "TotalNota"
  loc_B80374: PopAdLdVar
  loc_B80375: FLdRfVar var_98
  loc_B80378: FLdRfVar var_94
  loc_B8037B: FLdPr Me
  loc_B8037E: MemLdRfVar from_stack_1.global_56
  loc_B80381: NewIfNullPr clsbase
  loc_B80384: from_stack_1v = clsbase.RsFrmGet()
  loc_B80389: FLdPr var_94
  loc_B8038C:  = Me.Fields
  loc_B80391: FLdPr var_98
  loc_B80394: from_stack_2 = Me.Item(from_stack_1)
  loc_B80399: LitI4 1
  loc_B8039E: LitI4 1
  loc_B803A3: LitVarStr var_CC, "currency"
  loc_B803A8: FStVarCopyObj var_DC
  loc_B803AB: FLdRfVar var_DC
  loc_B803AE: FLdZeroAd var_AC
  loc_B803B1: CVarAd
  loc_B803B5: ImpAdCallI2 Format$(, )
  loc_B803BA: FStStrNoPop var_124
  loc_B803BD: FLdPr Me
  loc_B803C0: VCallAd Control_ID_TotaNopeLbl
  loc_B803C3: FStAdFunc var_120
  loc_B803C6: FLdPr var_120
  loc_B803C9: Me.Caption = from_stack_1
  loc_B803CE: FFree1Str var_124
  loc_B803D1: FFreeAd var_94 = "": var_98 = ""
  loc_B803DA: FFreeVar var_BC = ""
  loc_B803E1: FLdPrThis
  loc_B803E2: VCallAd Control_ID_SSTab
  loc_B803E5: FStAdFunc var_94
  loc_B803E8: FLdPr var_94
  loc_B803EB: LateIdLdVar var_BC DispID_4 0
  loc_B803F2: CI2Var
  loc_B803F3: LitI2_Byte 3
  loc_B803F5: EqI2
  loc_B803F6: FFree1Ad var_94
  loc_B803F9: FFree1Var var_BC = ""
  loc_B803FC: BranchF loc_B80404
  loc_B803FF: Call Proc_126_68_A399F4()
  loc_B80404: Branch loc_B8048D
  loc_B80407: FLdPr Me
  loc_B8040A: MemLdUI1 global_74
  loc_B8040E: CI2UI1
  loc_B80410: LitI2_Byte 0
  loc_B80412: EqI2
  loc_B80413: FLdRfVar var_8C
  loc_B80416: FLdPr Me
  loc_B80419: MemLdRfVar from_stack_1.global_52
  loc_B8041C: NewIfNullPr clsnotapedido
  loc_B8041F: from_stack_1 = clsnotapedido.RecordCount
  loc_B80424: ILdRf var_8C
  loc_B80427: LitI4 0
  loc_B8042C: EqI4
  loc_B8042D: AndI4
  loc_B8042E: BranchF loc_B8048D
  loc_B80431: LitVarI2 var_A8, 0
  loc_B80436: PopAdLdVar
  loc_B80437: LitVarStr var_EC, "Nota de Pedido"
  loc_B8043C: PopAdLdVar
  loc_B8043D: FLdPr Me
  loc_B80440: VCallAd Control_ID_SSTab
  loc_B80443: FStAdFunc var_94
  loc_B80446: FLdPr var_94
  loc_B80449: LateIdCallSt
  loc_B80451: FFree1Ad var_94
  loc_B80454: LitVarI4
  loc_B8045C: PopAdLdVar
  loc_B8045D: FLdPr Me
  loc_B80460: VCallAd Control_ID_SSTab
  loc_B80463: FStAdFunc var_94
  loc_B80466: FLdPr var_94
  loc_B80469: LateIdSt
  loc_B8046E: FFree1Ad var_94
  loc_B80471: LitStr "Total NP nro"
  loc_B80474: FLdPr Me
  loc_B80477: VCallAd Control_ID_lblTotalNPnro
  loc_B8047A: FStAdFunc var_94
  loc_B8047D: FLdPr var_94
  loc_B80480: Me.Caption = from_stack_1
  loc_B80485: FFree1Ad var_94
  loc_B80488: Call Proc_126_67_A365C0()
  loc_B8048D: LitVarStr var_A8, vbNullString
  loc_B80492: PopAdLdVar
  loc_B80493: FLdPr Me
  loc_B80496: VCallAd Control_ID_ItemNotaFlex
  loc_B80499: FStAdFunc var_94
  loc_B8049C: FLdPr var_94
  loc_B8049F: LateIdSt
  loc_B804A4: FFree1Ad var_94
  loc_B804A7: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'C0A480
  'Data Table: 4FD0E0
  loc_C07DC4: ILdRf Button
  loc_C07DC7: FStAd var_88 
  loc_C07DCB: FLdRfVar var_98
  loc_C07DCE: FLdPr var_88
  loc_C07DD1:  = Me.Key
  loc_C07DD6: FLdZeroAd var_98
  loc_C07DD9: FStStr var_9C
  loc_C07DDC: ILdRf var_9C
  loc_C07DDF: LitStr "btnCrear"
  loc_C07DE2: EqStr
  loc_C07DE4: BranchF loc_C0837B
  loc_C07DE7: LitI2_Byte 1
  loc_C07DE9: FLdPr Me
  loc_C07DEC: MemStUI1
  loc_C07DF0: ILdRf Me
  loc_C07DF3: CastAd
  loc_C07DF6: FStAdFunc var_A0
  loc_C07DF9: FLdRfVar var_A0
  loc_C07DFC: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C07E01: FFree1Ad var_A0
  loc_C07E04: LitI4 0
  loc_C07E09: LitI4 0
  loc_C07E0E: FLdRfVar var_A4
  loc_C07E11: Redim
  loc_C07E1B: FLdPr Me
  loc_C07E1E: VCallAd Control_ID_dgdABMS
  loc_C07E21: CVarAd
  loc_C07E25: ParmAry1St
  loc_C07E2B: FLdRfVar var_A4
  loc_C07E2E: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C07E33: FLdRfVar var_A4
  loc_C07E36: Erase
  loc_C07E37: ILdRf Me
  loc_C07E3A: CastAd
  loc_C07E3D: FStAdFunc var_A0
  loc_C07E40: FLdRfVar var_A0
  loc_C07E43: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C07E48: FFree1Ad var_A0
  loc_C07E4B: ILdRf Me
  loc_C07E4E: CastAd
  loc_C07E51: FStAdFunc var_A0
  loc_C07E54: FLdRfVar var_A0
  loc_C07E57: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_C07E5C: FFree1Ad var_A0
  loc_C07E5F: LitVarI2 var_C4, 0
  loc_C07E64: PopAdLdVar
  loc_C07E65: LitVarStr var_E4, "Nota de Pedido"
  loc_C07E6A: PopAdLdVar
  loc_C07E6B: FLdPr Me
  loc_C07E6E: VCallAd Control_ID_SSTab
  loc_C07E71: FStAdFunc var_A0
  loc_C07E74: FLdPr var_A0
  loc_C07E77: LateIdCallSt
  loc_C07E7F: FFree1Ad var_A0
  loc_C07E82: LitVarI4
  loc_C07E8A: PopAdLdVar
  loc_C07E8B: FLdPr Me
  loc_C07E8E: VCallAd Control_ID_SSTab
  loc_C07E91: FStAdFunc var_A0
  loc_C07E94: FLdPr var_A0
  loc_C07E97: LateIdSt
  loc_C07E9C: FFree1Ad var_A0
  loc_C07E9F: LitVarStr var_C4, "0"
  loc_C07EA4: PopAdLdVar
  loc_C07EA5: FLdPr Me
  loc_C07EA8: VCallAd Control_ID_CodiTicoMsk
  loc_C07EAB: FStAdFunc var_A0
  loc_C07EAE: FLdPr var_A0
  loc_C07EB1: LateIdSt
  loc_C07EB6: FFree1Ad var_A0
  loc_C07EB9: FLdRfVar var_F8
  loc_C07EBC: ImpAdLdI2 MemVar_C3D064
  loc_C07EBF: CStrUI1
  loc_C07EC1: FStStrNoPop var_98
  loc_C07EC4: FLdPr Me
  loc_C07EC7: MemLdRfVar from_stack_1.global_52
  loc_C07ECA: NewIfNullPr clsnotapedido
  loc_C07ECD: from_stack_2v = clsnotapedido.UltimaFechNope(from_stack_1v)
  loc_C07ED2: FLdZeroAd var_F8
  loc_C07ED5: CVarStr var_B4
  loc_C07ED8: PopAdLdVar
  loc_C07ED9: FLdPr Me
  loc_C07EDC: VCallAd Control_ID_FechNopeMsk
  loc_C07EDF: FStAdFunc var_A0
  loc_C07EE2: FLdPr var_A0
  loc_C07EE5: LateIdSt
  loc_C07EEA: FFree1Str var_98
  loc_C07EED: FFree1Ad var_A0
  loc_C07EF0: FFree1Var var_B4 = ""
  loc_C07EF3: FLdPr Me
  loc_C07EF6: VCallAd Control_ID_FechNopeMsk
  loc_C07EF9: FStAdFunc var_A0
  loc_C07EFC: FLdPr var_A0
  loc_C07EFF: LateIdLdVar var_B4 DispID_11 -32767
  loc_C07F06: CStrVarTmp
  loc_C07F07: CVarStr var_108
  loc_C07F0A: PopAdLdVar
  loc_C07F0B: FLdPr Me
  loc_C07F0E: VCallAd Control_ID_FechNopeMsk
  loc_C07F11: FStAdFunc var_10C
  loc_C07F14: FLdPr var_10C
  loc_C07F17: LateIdSt
  loc_C07F1C: FFreeAd var_A0 = ""
  loc_C07F23: FFreeVar var_B4 = ""
  loc_C07F2A: LitStr "Municipalidad de Guaymallén"
  loc_C07F2D: LitStr "Municipalidad de Maipú"
  loc_C07F30: EqStr
  loc_C07F32: BranchF loc_C07F6F
  loc_C07F35: FLdPr Me
  loc_C07F38: VCallAd Control_ID_FechNopeMsk
  loc_C07F3B: FStAdFunc var_A0
  loc_C07F3E: FLdPr var_A0
  loc_C07F41: LateIdLdVar var_B4 DispID_11 -32767
  loc_C07F48: CStrVarTmp
  loc_C07F49: CVarStr var_108
  loc_C07F4C: PopAdLdVar
  loc_C07F4D: FLdPr Me
  loc_C07F50: VCallAd Control_ID_FechNopeMsk
  loc_C07F53: FStAdFunc var_10C
  loc_C07F56: FLdPr var_10C
  loc_C07F59: LateIdSt
  loc_C07F5E: FFreeAd var_A0 = ""
  loc_C07F65: FFreeVar var_B4 = ""
  loc_C07F6C: Branch loc_C07F8F
  loc_C07F6F: ImpAdLdFPR8 MemVar_C3D04C
  loc_C07F72: CStrDate
  loc_C07F74: CVarStr var_B4
  loc_C07F77: PopAdLdVar
  loc_C07F78: FLdPr Me
  loc_C07F7B: VCallAd Control_ID_FechNopeMsk
  loc_C07F7E: FStAdFunc var_A0
  loc_C07F81: FLdPr var_A0
  loc_C07F84: LateIdSt
  loc_C07F89: FFree1Ad var_A0
  loc_C07F8C: FFree1Var var_B4 = ""
  loc_C07F8F: ILdRf Me
  loc_C07F92: CastAd
  loc_C07F95: FStAdFunc var_A0
  loc_C07F98: FLdRfVar var_A0
  loc_C07F9B: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_C07FA0: FFree1Ad var_A0
  loc_C07FA3: LitI4 0
  loc_C07FA8: LitI4 1
  loc_C07FAD: FLdRfVar var_A4
  loc_C07FB0: Redim
  loc_C07FBA: FLdPr Me
  loc_C07FBD: VCallAd Control_ID_FeanNopeMsk
  loc_C07FC0: CVarAd
  loc_C07FC4: ParmAry1St
  loc_C07FCA: FLdPr Me
  loc_C07FCD: VCallAd Control_ID_BajaMotiTxt
  loc_C07FD0: CVarAd
  loc_C07FD4: ParmAry1St
  loc_C07FDA: FLdRfVar var_A4
  loc_C07FDD: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C07FE2: FLdRfVar var_A4
  loc_C07FE5: Erase
  loc_C07FE6: LitI4 0
  loc_C07FEB: LitI4 0
  loc_C07FF0: FLdRfVar var_A4
  loc_C07FF3: Redim
  loc_C07FFD: FLdPr Me
  loc_C08000: VCallAd Control_ID_PlieNopeMsk
  loc_C08003: CVarAd
  loc_C08007: ParmAry1St
  loc_C0800D: FLdRfVar var_A4
  loc_C08010: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C08015: FLdRfVar var_A4
  loc_C08018: Erase
  loc_C08019: FLdPr Me
  loc_C0801C: VCallAd Control_ID_CoinNopeMsk
  loc_C0801F: FStAdFunc var_A0
  loc_C08022: FLdPr var_A0
  loc_C08025: LateIdLdVar var_B4 DispID_7 -32767
  loc_C0802C: CBoolVar
  loc_C0802E: CVarBoolI2 var_C4
  loc_C08032: PopAdLdVar
  loc_C08033: FLdPr Me
  loc_C08036: VCallAd Control_ID_CoinNopeMsk
  loc_C08039: FStAdFunc var_10C
  loc_C0803C: FLdPr var_10C
  loc_C0803F: LateIdSt
  loc_C08044: FFreeAd var_A0 = ""
  loc_C0804B: FFreeVar var_B4 = ""
  loc_C08052: FLdRfVar var_10E
  loc_C08055: FLdPr Me
  loc_C08058: VCallAd Control_ID_LabelDetaNope2
  loc_C0805B: FStAdFunc var_A0
  loc_C0805E: FLdPr var_A0
  loc_C08061:  = Me.Visible
  loc_C08066: FLdI2 var_10E
  loc_C08069: FLdPr Me
  loc_C0806C: VCallAd Control_ID_LabelDetaNope2
  loc_C0806F: FStAdFunc var_10C
  loc_C08072: FLdPr var_10C
  loc_C08075: Me.Enabled = from_stack_1b
  loc_C0807A: FFreeAd var_A0 = ""
  loc_C08081: FLdRfVar var_10E
  loc_C08084: FLdPr Me
  loc_C08087: VCallAd Control_ID_DetaNope2Txt
  loc_C0808A: FStAdFunc var_A0
  loc_C0808D: FLdPr var_A0
  loc_C08090:  = Me.Visible
  loc_C08095: FLdI2 var_10E
  loc_C08098: FLdPr Me
  loc_C0809B: VCallAd Control_ID_DetaNope2Txt
  loc_C0809E: FStAdFunc var_10C
  loc_C080A1: FLdPr var_10C
  loc_C080A4: Me.Enabled = from_stack_1b
  loc_C080A9: FFreeAd var_A0 = ""
  loc_C080B0: FLdRfVar var_10E
  loc_C080B3: FLdPr Me
  loc_C080B6: VCallAd Control_ID_PubliNopeChk
  loc_C080B9: FStAdFunc var_A0
  loc_C080BC: FLdPr var_A0
  loc_C080BF:  = Me.Visible
  loc_C080C4: FLdI2 var_10E
  loc_C080C7: FLdPr Me
  loc_C080CA: VCallAd Control_ID_PubliNopeChk
  loc_C080CD: FStAdFunc var_10C
  loc_C080D0: FLdPr var_10C
  loc_C080D3: Me.Enabled = from_stack_1b
  loc_C080D8: FFreeAd var_A0 = ""
  loc_C080DF: FLdRfVar var_10E
  loc_C080E2: FLdPr Me
  loc_C080E5: VCallAd Control_ID_PubliNopeChk
  loc_C080E8: FStAdFunc var_A0
  loc_C080EB: FLdPr var_A0
  loc_C080EE:  = Me.Enabled
  loc_C080F3: FLdI2 var_10E
  loc_C080F6: FFree1Ad var_A0
  loc_C080F9: BranchF loc_C08116
  loc_C080FC: LitI4 0
  loc_C08101: CI2I4
  loc_C08102: FLdPr Me
  loc_C08105: VCallAd Control_ID_PubliNopeChk
  loc_C08108: FStAdFunc var_A0
  loc_C0810B: FLdPr var_A0
  loc_C0810E: Me.Value = from_stack_1
  loc_C08113: FFree1Ad var_A0
  loc_C08116: FLdPr Me
  loc_C08119: VCallAd Control_ID_IdUbfiMsk
  loc_C0811C: FStAdFunc var_A0
  loc_C0811F: FLdPr var_A0
  loc_C08122: LateIdLdVar var_B4 DispID_7 -32767
  loc_C08129: CBoolVar
  loc_C0812B: CVarBoolI2 var_C4
  loc_C0812F: PopAdLdVar
  loc_C08130: FLdPr Me
  loc_C08133: VCallAd Control_ID_IdUbfiMsk
  loc_C08136: FStAdFunc var_10C
  loc_C08139: FLdPr var_10C
  loc_C0813C: LateIdSt
  loc_C08141: FFreeAd var_A0 = ""
  loc_C08148: FFreeVar var_B4 = ""
  loc_C0814F: FLdRfVar var_10E
  loc_C08152: FLdPr Me
  loc_C08155: VCallAd Control_ID_DienNopeTxt
  loc_C08158: FStAdFunc var_A0
  loc_C0815B: FLdPr var_A0
  loc_C0815E:  = Me.Visible
  loc_C08163: FLdI2 var_10E
  loc_C08166: FLdPr Me
  loc_C08169: VCallAd Control_ID_DienNopeTxt
  loc_C0816C: FStAdFunc var_10C
  loc_C0816F: FLdPr var_10C
  loc_C08172: Me.Enabled = from_stack_1b
  loc_C08177: FFreeAd var_A0 = ""
  loc_C0817E: Call Proc_126_67_A365C0()
  loc_C08183: LitVarStr var_C4, "1"
  loc_C08188: LitI4 9
  loc_C0818D: FLdRfVar var_B4
  loc_C08190: ImpAdCallFPR4  = Chr()
  loc_C08195: FLdRfVar var_B4
  loc_C08198: ConcatVar var_108
  loc_C0819C: LitVarStr var_D4, vbNullString
  loc_C081A1: ConcatVar var_120
  loc_C081A5: LitI4 9
  loc_C081AA: FLdRfVar var_130
  loc_C081AD: ImpAdCallFPR4  = Chr()
  loc_C081B2: FLdRfVar var_130
  loc_C081B5: ConcatVar var_140
  loc_C081B9: LitVarStr var_E4, vbNullString
  loc_C081BE: ConcatVar var_150
  loc_C081C2: LitI4 9
  loc_C081C7: FLdRfVar var_160
  loc_C081CA: ImpAdCallFPR4  = Chr()
  loc_C081CF: FLdRfVar var_160
  loc_C081D2: ConcatVar var_170
  loc_C081D6: LitVarStr var_F4, vbNullString
  loc_C081DB: ConcatVar var_180
  loc_C081DF: LitI4 9
  loc_C081E4: FLdRfVar var_190
  loc_C081E7: ImpAdCallFPR4  = Chr()
  loc_C081EC: FLdRfVar var_190
  loc_C081EF: ConcatVar var_1A0
  loc_C081F3: LitVarStr var_1B0, vbNullString
  loc_C081F8: ConcatVar var_1C0
  loc_C081FC: LitI4 9
  loc_C08201: FLdRfVar var_1D0
  loc_C08204: ImpAdCallFPR4  = Chr()
  loc_C08209: FLdRfVar var_1D0
  loc_C0820C: ConcatVar var_1E0
  loc_C08210: LitVarStr var_1F0, vbNullString
  loc_C08215: ConcatVar var_200
  loc_C08219: LitI4 9
  loc_C0821E: FLdRfVar var_210
  loc_C08221: ImpAdCallFPR4  = Chr()
  loc_C08226: FLdRfVar var_210
  loc_C08229: ConcatVar var_220
  loc_C0822D: LitVarStr var_230, vbNullString
  loc_C08232: ConcatVar var_240
  loc_C08236: LitI4 9
  loc_C0823B: FLdRfVar var_250
  loc_C0823E: ImpAdCallFPR4  = Chr()
  loc_C08243: FLdRfVar var_250
  loc_C08246: ConcatVar var_260
  loc_C0824A: FLdPr Me
  loc_C0824D: VCallAd Control_ID_CodiOrgaMsk
  loc_C08250: FStAdFunc var_A0
  loc_C08253: FLdPr var_A0
  loc_C08256: LateIdLdVar var_270 DispID_22 0
  loc_C0825D: CStrVarTmp
  loc_C0825E: CVarStr var_280
  loc_C08261: ConcatVar var_290
  loc_C08265: LitI4 9
  loc_C0826A: FLdRfVar var_2A0
  loc_C0826D: ImpAdCallFPR4  = Chr()
  loc_C08272: FLdRfVar var_2A0
  loc_C08275: ConcatVar var_2B0
  loc_C08279: LitVarStr var_2C0, "1"
  loc_C0827E: ConcatVar var_2D0
  loc_C08282: LitI4 9
  loc_C08287: FLdRfVar var_2E0
  loc_C0828A: ImpAdCallFPR4  = Chr()
  loc_C0828F: FLdRfVar var_2E0
  loc_C08292: ConcatVar var_2F0
  loc_C08296: LitVarStr var_300, vbNullString
  loc_C0829B: ConcatVar var_310
  loc_C0829F: LitI4 9
  loc_C082A4: FLdRfVar var_320
  loc_C082A7: ImpAdCallFPR4  = Chr()
  loc_C082AC: FLdRfVar var_320
  loc_C082AF: ConcatVar var_330
  loc_C082B3: LitVarStr var_340, vbNullString
  loc_C082B8: ConcatVar var_350
  loc_C082BC: LitI4 9
  loc_C082C1: FLdRfVar var_360
  loc_C082C4: ImpAdCallFPR4  = Chr()
  loc_C082C9: FLdRfVar var_360
  loc_C082CC: ConcatVar var_370
  loc_C082D0: LitVarStr var_380, vbNullString
  loc_C082D5: ConcatVar var_390
  loc_C082D9: CStrVarTmp
  loc_C082DA: CVarStr var_3A0
  loc_C082DD: PopAdLdVar
  loc_C082DE: FLdPr Me
  loc_C082E1: VCallAd Control_ID_ItemNotaFlex
  loc_C082E4: FStAdFunc var_10C
  loc_C082E7: FLdPr var_10C
  loc_C082EA: LateIdCall
  loc_C082F2: FFreeAd var_A0 = ""
  loc_C082F9: FFreeVar var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = "": var_3A0 = "": var_B4 = "": var_108 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_210 = "": var_220 = "": var_240 = "": var_250 = "": var_270 = "": var_260 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2D0 = "": var_2E0 = "": var_2F0 = "": var_310 = ""
  loc_C08344: LitVarI4
  loc_C0834C: PopAdLdVar
  loc_C0834D: FLdPr Me
  loc_C08350: VCallAd Control_ID_ItemNotaFlex
  loc_C08353: FStAdFunc var_A0
  loc_C08356: FLdPr var_A0
  loc_C08359: LateIdSt
  loc_C0835E: FFree1Ad var_A0
  loc_C08361: FLdPr Me
  loc_C08364: VCallAd Control_ID_ExorImpuMsk
  loc_C08367: FStAdFunc var_A0
  loc_C0836A: FLdPr var_A0
  loc_C0836D: LateIdCall
  loc_C08375: FFree1Ad var_A0
  loc_C08378: Branch loc_C0A47F
  loc_C0837B: ILdRf var_9C
  loc_C0837E: LitStr "btnModificar"
  loc_C08381: EqStr
  loc_C08383: BranchF loc_C08E53
  loc_C08386: FLdRfVar var_98
  loc_C08389: FLdPr Me
  loc_C0838C: VCallAd Control_ID_TotaNopeLbl
  loc_C0838F: FStAdFunc var_A0
  loc_C08392: FLdPr var_A0
  loc_C08395:  = Me.Caption
  loc_C0839A: ILdRf var_98
  loc_C0839D: CR8Str
  loc_C0839F: FLdPr Me
  loc_C083A2: MemStFPR8 global_156
  loc_C083A5: FFree1Str var_98
  loc_C083A8: FFree1Ad var_A0
  loc_C083AB: FLdRfVar var_3B4
  loc_C083AE: FLdPr Me
  loc_C083B1: MemLdRfVar from_stack_1.global_52
  loc_C083B4: NewIfNullPr clsnotapedido
  loc_C083B7: from_stack_1 = clsnotapedido.RecordCount
  loc_C083BC: ILdRf var_3B4
  loc_C083BF: LitI4 0
  loc_C083C4: GtI4
  loc_C083C5: BranchF loc_C08E50
  loc_C083C8: FLdRfVar var_3B8
  loc_C083CB: LitVarStr var_C4, "FeanNope"
  loc_C083D0: PopAdLdVar
  loc_C083D1: FLdRfVar var_10C
  loc_C083D4: FLdRfVar var_A0
  loc_C083D7: FLdPr Me
  loc_C083DA: MemLdRfVar from_stack_1.global_52
  loc_C083DD: NewIfNullPr clsnotapedido
  loc_C083E0: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C083E5: FLdPr var_A0
  loc_C083E8:  = Me.Fields
  loc_C083ED: FLdPr var_10C
  loc_C083F0: from_stack_2 = Me.Item(from_stack_1)
  loc_C083F5: FLdZeroAd var_3B8
  loc_C083F8: CVarAd
  loc_C083FC: ImpAdCallI2 IsNull()
  loc_C08401: CVarBoolI2 var_F4
  loc_C08405: FLdRfVar var_108
  loc_C08408: FLdRfVar var_3C4
  loc_C0840B: LitVarStr var_D4, "OCs"
  loc_C08410: PopAdLdVar
  loc_C08411: FLdRfVar var_3C0
  loc_C08414: FLdRfVar var_3BC
  loc_C08417: FLdPr Me
  loc_C0841A: MemLdRfVar from_stack_1.global_52
  loc_C0841D: NewIfNullPr clsnotapedido
  loc_C08420: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C08425: FLdPr var_3BC
  loc_C08428:  = Me.Fields
  loc_C0842D: FLdPr var_3C0
  loc_C08430: from_stack_2 = Me.Item(from_stack_1)
  loc_C08435: FLdPr var_3C4
  loc_C08438:  = Me.Value
  loc_C0843D: FLdRfVar var_108
  loc_C08440: LitVarStr var_E4, vbNullString
  loc_C08445: HardType
  loc_C08446: EqVar var_120
  loc_C0844A: AndVar var_130
  loc_C0844E: CBoolVarNull
  loc_C08450: FFreeAd var_A0 = "": var_10C = "": var_3BC = "": var_3C0 = ""
  loc_C0845D: FFreeVar var_B4 = "": var_108 = ""
  loc_C08466: BranchF loc_C0846C
  loc_C08469: Branch loc_C086F5
  loc_C0846C: FLdRfVar var_3B8
  loc_C0846F: LitVarStr var_C4, "FeanNope"
  loc_C08474: PopAdLdVar
  loc_C08475: FLdRfVar var_10C
  loc_C08478: FLdRfVar var_A0
  loc_C0847B: FLdPr Me
  loc_C0847E: MemLdRfVar from_stack_1.global_52
  loc_C08481: NewIfNullPr clsnotapedido
  loc_C08484: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C08489: FLdPr var_A0
  loc_C0848C:  = Me.Fields
  loc_C08491: FLdPr var_10C
  loc_C08494: from_stack_2 = Me.Item(from_stack_1)
  loc_C08499: FLdZeroAd var_3B8
  loc_C0849C: CVarAd
  loc_C084A0: ImpAdCallI2 IsNull()
  loc_C084A5: CVarBoolI2 var_F4
  loc_C084A9: FLdRfVar var_108
  loc_C084AC: FLdRfVar var_3C4
  loc_C084AF: LitVarStr var_D4, "OCs"
  loc_C084B4: PopAdLdVar
  loc_C084B5: FLdRfVar var_3C0
  loc_C084B8: FLdRfVar var_3BC
  loc_C084BB: FLdPr Me
  loc_C084BE: MemLdRfVar from_stack_1.global_52
  loc_C084C1: NewIfNullPr clsnotapedido
  loc_C084C4: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C084C9: FLdPr var_3BC
  loc_C084CC:  = Me.Fields
  loc_C084D1: FLdPr var_3C0
  loc_C084D4: from_stack_2 = Me.Item(from_stack_1)
  loc_C084D9: FLdPr var_3C4
  loc_C084DC:  = Me.Value
  loc_C084E1: FLdRfVar var_108
  loc_C084E4: LitVarStr var_E4, vbNullString
  loc_C084E9: HardType
  loc_C084EA: NeVar var_120
  loc_C084EE: AndVar var_130
  loc_C084F2: CBoolVarNull
  loc_C084F4: FFreeAd var_A0 = "": var_10C = "": var_3BC = "": var_3C0 = ""
  loc_C08501: FFreeVar var_B4 = "": var_108 = ""
  loc_C0850A: BranchF loc_C08614
  loc_C0850D: LitStr "Municipalidad de Guaymallén"
  loc_C08510: LitStr "Municipalidad de Maipú"
  loc_C08513: EqStr
  loc_C08515: ImpAdLdI4 MemVar_C3D03C
  loc_C08518: LitStr "marce"
  loc_C0851B: EqStr
  loc_C0851D: ImpAdLdI4 MemVar_C3D03C
  loc_C08520: LitStr "dani"
  loc_C08523: EqStr
  loc_C08525: OrI4
  loc_C08526: ImpAdLdI4 MemVar_C3D03C
  loc_C08529: LitStr "root"
  loc_C0852C: EqStr
  loc_C0852E: OrI4
  loc_C0852F: AndI4
  loc_C08530: BranchF loc_C08575
  loc_C08533: LitStr "Advertencia: La Nota de Pedido está incluída en OC, solo puede Modificar ALGUNOS datos. Verifique..."
  loc_C08536: FStStrCopy var_90
  loc_C08539: FLdPr Me
  loc_C0853C: VCallAd Control_ID_tlbABMS
  loc_C0853F: FStAdFunc var_3BC
  loc_C08542: LitNothing
  loc_C08544: CastAd
  loc_C08547: FStAdFunc var_3B8
  loc_C0854A: FLdRfVar var_3B8
  loc_C0854D: FLdZeroAd var_3BC
  loc_C08550: FStAdFuncNoPop
  loc_C08553: CastAd
  loc_C08556: FStAdFunc var_10C
  loc_C08559: FLdRfVar var_10C
  loc_C0855C: FLdRfVar var_90
  loc_C0855F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_C08564: FStI2 var_92
  loc_C08567: FFreeAd var_A0 = "": var_10C = "": var_3B8 = ""
  loc_C08572: Branch loc_C08611
  loc_C08575: LitVarStr var_D4, "La Nota de Pedido está incluída en OC "
  loc_C0857A: FLdRfVar var_B4
  loc_C0857D: FLdRfVar var_3B8
  loc_C08580: LitVarStr var_C4, "OCs"
  loc_C08585: PopAdLdVar
  loc_C08586: FLdRfVar var_10C
  loc_C08589: FLdRfVar var_A0
  loc_C0858C: FLdPr Me
  loc_C0858F: MemLdRfVar from_stack_1.global_52
  loc_C08592: NewIfNullPr clsnotapedido
  loc_C08595: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C0859A: FLdPr var_A0
  loc_C0859D:  = Me.Fields
  loc_C085A2: FLdPr var_10C
  loc_C085A5: from_stack_2 = Me.Item(from_stack_1)
  loc_C085AA: FLdPr var_3B8
  loc_C085AD:  = Me.Value
  loc_C085B2: FLdRfVar var_B4
  loc_C085B5: ConcatVar var_108
  loc_C085B9: LitVarStr var_E4, ". No se puede modificar. Verifique..."
  loc_C085BE: ConcatVar var_120
  loc_C085C2: CStrVarTmp
  loc_C085C3: FStStr var_90
  loc_C085C6: FFreeAd var_A0 = "": var_10C = ""
  loc_C085CF: FFreeVar var_B4 = "": var_108 = ""
  loc_C085D8: FLdPr Me
  loc_C085DB: VCallAd Control_ID_tlbABMS
  loc_C085DE: FStAdFunc var_3BC
  loc_C085E1: LitNothing
  loc_C085E3: CastAd
  loc_C085E6: FStAdFunc var_3B8
  loc_C085E9: FLdRfVar var_3B8
  loc_C085EC: FLdZeroAd var_3BC
  loc_C085EF: FStAdFuncNoPop
  loc_C085F2: CastAd
  loc_C085F5: FStAdFunc var_10C
  loc_C085F8: FLdRfVar var_10C
  loc_C085FB: FLdRfVar var_90
  loc_C085FE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_C08603: FStI2 var_92
  loc_C08606: FFreeAd var_A0 = "": var_10C = "": var_3B8 = ""
  loc_C08611: Branch loc_C086F5
  loc_C08614: FLdRfVar var_3B8
  loc_C08617: LitVarStr var_C4, "FeanNope"
  loc_C0861C: PopAdLdVar
  loc_C0861D: FLdRfVar var_10C
  loc_C08620: FLdRfVar var_A0
  loc_C08623: FLdPr Me
  loc_C08626: MemLdRfVar from_stack_1.global_52
  loc_C08629: NewIfNullPr clsnotapedido
  loc_C0862C: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C08631: FLdPr var_A0
  loc_C08634:  = Me.Fields
  loc_C08639: FLdPr var_10C
  loc_C0863C: from_stack_2 = Me.Item(from_stack_1)
  loc_C08641: FLdZeroAd var_3B8
  loc_C08644: CVarAd
  loc_C08648: ImpAdCallI2 IsNull()
  loc_C0864D: NotI4
  loc_C0864E: CVarBoolI2 var_F4
  loc_C08652: FLdRfVar var_108
  loc_C08655: FLdRfVar var_3C4
  loc_C08658: LitVarStr var_D4, "OCs"
  loc_C0865D: PopAdLdVar
  loc_C0865E: FLdRfVar var_3C0
  loc_C08661: FLdRfVar var_3BC
  loc_C08664: FLdPr Me
  loc_C08667: MemLdRfVar from_stack_1.global_52
  loc_C0866A: NewIfNullPr clsnotapedido
  loc_C0866D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C08672: FLdPr var_3BC
  loc_C08675:  = Me.Fields
  loc_C0867A: FLdPr var_3C0
  loc_C0867D: from_stack_2 = Me.Item(from_stack_1)
  loc_C08682: FLdPr var_3C4
  loc_C08685:  = Me.Value
  loc_C0868A: FLdRfVar var_108
  loc_C0868D: LitVarStr var_E4, vbNullString
  loc_C08692: HardType
  loc_C08693: EqVar var_120
  loc_C08697: AndVar var_130
  loc_C0869B: CBoolVarNull
  loc_C0869D: FFreeAd var_A0 = "": var_10C = "": var_3BC = "": var_3C0 = ""
  loc_C086AA: FFreeVar var_B4 = "": var_108 = ""
  loc_C086B3: BranchF loc_C086F5
  loc_C086B6: LitStr "La Nota de Pedido está Anulada, No se puede modificar. Verifique..."
  loc_C086B9: FStStrCopy var_90
  loc_C086BC: FLdPr Me
  loc_C086BF: VCallAd Control_ID_tlbABMS
  loc_C086C2: FStAdFunc var_3BC
  loc_C086C5: LitNothing
  loc_C086C7: CastAd
  loc_C086CA: FStAdFunc var_3B8
  loc_C086CD: FLdRfVar var_3B8
  loc_C086D0: FLdZeroAd var_3BC
  loc_C086D3: FStAdFuncNoPop
  loc_C086D6: CastAd
  loc_C086D9: FStAdFunc var_10C
  loc_C086DC: FLdRfVar var_10C
  loc_C086DF: FLdRfVar var_90
  loc_C086E2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_C086E7: FStI2 var_92
  loc_C086EA: FFreeAd var_A0 = "": var_10C = "": var_3B8 = ""
  loc_C086F5: FLdI2 var_92
  loc_C086F8: NotI4
  loc_C086F9: BranchF loc_C08E50
  loc_C086FC: LitI2_Byte 2
  loc_C086FE: FLdPr Me
  loc_C08701: MemStUI1
  loc_C08705: ILdRf Me
  loc_C08708: CastAd
  loc_C0870B: FStAdFunc var_A0
  loc_C0870E: FLdRfVar var_A0
  loc_C08711: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C08716: FFree1Ad var_A0
  loc_C08719: LitI4 0
  loc_C0871E: LitI4 0
  loc_C08723: FLdRfVar var_A4
  loc_C08726: Redim
  loc_C08730: FLdPr Me
  loc_C08733: VCallAd Control_ID_dgdABMS
  loc_C08736: CVarAd
  loc_C0873A: ParmAry1St
  loc_C08740: FLdRfVar var_A4
  loc_C08743: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C08748: FLdRfVar var_A4
  loc_C0874B: Erase
  loc_C0874C: ILdRf Me
  loc_C0874F: CastAd
  loc_C08752: FStAdFunc var_A0
  loc_C08755: FLdRfVar var_A0
  loc_C08758: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C0875D: FFree1Ad var_A0
  loc_C08760: FLdPr Me
  loc_C08763: VCallAd Control_ID_FechNopeMsk
  loc_C08766: FStAdFunc var_A0
  loc_C08769: FLdPr var_A0
  loc_C0876C: LateIdLdVar var_B4 DispID_15 0
  loc_C08773: CStrVarTmp
  loc_C08774: FStStrNoPop var_98
  loc_C08777: CDateStr
  loc_C08779: FLdPr Me
  loc_C0877C: MemStFPR8 global_148
  loc_C0877F: FFree1Str var_98
  loc_C08782: FFree1Ad var_A0
  loc_C08785: FFree1Var var_B4 = ""
  loc_C08788: LitI4 0
  loc_C0878D: LitI4 9
  loc_C08792: FLdRfVar var_A4
  loc_C08795: Redim
  loc_C0879F: FLdPr Me
  loc_C087A2: VCallAd Control_ID_DetaNopeTxt
  loc_C087A5: CVarAd
  loc_C087A9: ParmAry1St
  loc_C087AF: FLdPr Me
  loc_C087B2: VCallAd Control_ID_CodiTicoMsk
  loc_C087B5: CVarAd
  loc_C087B9: ParmAry1St
  loc_C087BF: FLdPr Me
  loc_C087C2: VCallAd Control_ID_CodiOrgaMsk
  loc_C087C5: CVarAd
  loc_C087C9: ParmAry1St
  loc_C087CF: FLdPr Me
  loc_C087D2: VCallAd Control_ID_FeliNopeMsk
  loc_C087D5: CVarAd
  loc_C087D9: ParmAry1St
  loc_C087DF: FLdPr Me
  loc_C087E2: VCallAd Control_ID_HoliNopeTxt
  loc_C087E5: CVarAd
  loc_C087E9: ParmAry1St
  loc_C087EF: FLdPr Me
  loc_C087F2: VCallAd Control_ID_FeleNopeMsk
  loc_C087F5: CVarAd
  loc_C087F9: ParmAry1St
  loc_C087FF: FLdPr Me
  loc_C08802: VCallAd Control_ID_HoleNopeTxt
  loc_C08805: CVarAd
  loc_C08809: ParmAry1St
  loc_C0880F: FLdPr Me
  loc_C08812: VCallAd Control_ID_ItemNotaFlex
  loc_C08815: CVarAd
  loc_C08819: ParmAry1St
  loc_C0881F: FLdPr Me
  loc_C08822: VCallAd Control_ID_IdRubroMsk
  loc_C08825: CVarAd
  loc_C08829: ParmAry1St
  loc_C0882F: FLdPr Me
  loc_C08832: VCallAd Control_ID_CmdAgregarItem
  loc_C08835: CVarAd
  loc_C08839: ParmAry1St
  loc_C0883F: FLdRfVar var_A4
  loc_C08842: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08847: FLdRfVar var_A4
  loc_C0884A: Erase
  loc_C0884B: LitStr "Municipalidad de Guaymallén"
  loc_C0884E: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C08851: EqStr
  loc_C08853: BranchF loc_C08889
  loc_C08856: LitI4 0
  loc_C0885B: LitI4 0
  loc_C08860: FLdRfVar var_A4
  loc_C08863: Redim
  loc_C0886D: FLdPr Me
  loc_C08870: VCallAd Control_ID_FechNopeMsk
  loc_C08873: CVarAd
  loc_C08877: ParmAry1St
  loc_C0887D: FLdRfVar var_A4
  loc_C08880: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08885: FLdRfVar var_A4
  loc_C08888: Erase
  loc_C08889: LitStr "Municipalidad de Guaymallén"
  loc_C0888C: LitStr "Municipalidad de Santa Rosa"
  loc_C0888F: EqStr
  loc_C08891: ImpAdLdI4 MemVar_C3D03C
  loc_C08894: LitStr "Mariela"
  loc_C08897: EqStr
  loc_C08899: ImpAdLdI4 MemVar_C3D03C
  loc_C0889C: LitStr "Marisa"
  loc_C0889F: EqStr
  loc_C088A1: OrI4
  loc_C088A2: ImpAdLdI4 MemVar_C3D03C
  loc_C088A5: LitStr "vanesac"
  loc_C088A8: EqStr
  loc_C088AA: OrI4
  loc_C088AB: ImpAdLdI4 MemVar_C3D03C
  loc_C088AE: LitStr "arayaj"
  loc_C088B1: EqStr
  loc_C088B3: OrI4
  loc_C088B4: ImpAdLdI4 MemVar_C3D03C
  loc_C088B7: LitStr "varaya"
  loc_C088BA: EqStr
  loc_C088BC: OrI4
  loc_C088BD: ImpAdLdI4 MemVar_C3D03C
  loc_C088C0: LitStr "arayaj"
  loc_C088C3: EqStr
  loc_C088C5: OrI4
  loc_C088C6: ImpAdLdI4 MemVar_C3D03C
  loc_C088C9: LitStr "gabriel"
  loc_C088CC: EqStr
  loc_C088CE: OrI4
  loc_C088CF: ImpAdLdI4 MemVar_C3D03C
  loc_C088D2: LitStr "caicedol"
  loc_C088D5: EqStr
  loc_C088D7: OrI4
  loc_C088D8: ImpAdLdI4 MemVar_C3D03C
  loc_C088DB: LitStr "floros"
  loc_C088DE: EqStr
  loc_C088E0: OrI4
  loc_C088E1: AndI4
  loc_C088E2: BranchF loc_C08918
  loc_C088E5: LitI4 0
  loc_C088EA: LitI4 0
  loc_C088EF: FLdRfVar var_A4
  loc_C088F2: Redim
  loc_C088FC: FLdPr Me
  loc_C088FF: VCallAd Control_ID_FechNopeMsk
  loc_C08902: CVarAd
  loc_C08906: ParmAry1St
  loc_C0890C: FLdRfVar var_A4
  loc_C0890F: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08914: FLdRfVar var_A4
  loc_C08917: Erase
  loc_C08918: LitStr "Municipalidad de Guaymallén"
  loc_C0891B: LitStr "Municipalidad de Tupungato"
  loc_C0891E: EqStr
  loc_C08920: ImpAdLdI4 MemVar_C3D03C
  loc_C08923: LitStr "ysagas"
  loc_C08926: EqStr
  loc_C08928: ImpAdLdI4 MemVar_C3D03C
  loc_C0892B: LitStr "lcarmona"
  loc_C0892E: EqStr
  loc_C08930: OrI4
  loc_C08931: ImpAdLdI4 MemVar_C3D03C
  loc_C08934: LitStr "mbalde"
  loc_C08937: EqStr
  loc_C08939: OrI4
  loc_C0893A: ImpAdLdI4 MemVar_C3D03C
  loc_C0893D: LitStr "root"
  loc_C08940: EqStr
  loc_C08942: OrI4
  loc_C08943: AndI4
  loc_C08944: BranchF loc_C0897A
  loc_C08947: LitI4 0
  loc_C0894C: LitI4 0
  loc_C08951: FLdRfVar var_A4
  loc_C08954: Redim
  loc_C0895E: FLdPr Me
  loc_C08961: VCallAd Control_ID_FechNopeMsk
  loc_C08964: CVarAd
  loc_C08968: ParmAry1St
  loc_C0896E: FLdRfVar var_A4
  loc_C08971: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08976: FLdRfVar var_A4
  loc_C08979: Erase
  loc_C0897A: LitStr "Municipalidad de Guaymallén"
  loc_C0897D: LitStr "Municipalidad de Maipú"
  loc_C08980: EqStr
  loc_C08982: ImpAdLdI4 MemVar_C3D03C
  loc_C08985: LitStr "Melisaaa"
  loc_C08988: EqStr
  loc_C0898A: ImpAdLdI4 MemVar_C3D03C
  loc_C0898D: LitStr "root"
  loc_C08990: EqStr
  loc_C08992: OrI4
  loc_C08993: AndI4
  loc_C08994: BranchF loc_C089DA
  loc_C08997: LitI4 0
  loc_C0899C: LitI4 1
  loc_C089A1: FLdRfVar var_A4
  loc_C089A4: Redim
  loc_C089AE: FLdPr Me
  loc_C089B1: VCallAd Control_ID_FecoNopeMsk
  loc_C089B4: CVarAd
  loc_C089B8: ParmAry1St
  loc_C089BE: FLdPr Me
  loc_C089C1: VCallAd Control_ID_FecoHoraMsk
  loc_C089C4: CVarAd
  loc_C089C8: ParmAry1St
  loc_C089CE: FLdRfVar var_A4
  loc_C089D1: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C089D6: FLdRfVar var_A4
  loc_C089D9: Erase
  loc_C089DA: LitI4 0
  loc_C089DF: LitI4 3
  loc_C089E4: FLdRfVar var_A4
  loc_C089E7: Redim
  loc_C089F1: FLdPr Me
  loc_C089F4: VCallAd Control_ID_ChkCodiFifu
  loc_C089F7: CVarAd
  loc_C089FB: ParmAry1St
  loc_C08A01: FLdPr Me
  loc_C08A04: VCallAd Control_ID_ChkCodiInsu
  loc_C08A07: CVarAd
  loc_C08A0B: ParmAry1St
  loc_C08A11: FLdPr Me
  loc_C08A14: VCallAd Control_ID_ChkCodiOrga
  loc_C08A17: CVarAd
  loc_C08A1B: ParmAry1St
  loc_C08A21: FLdPr Me
  loc_C08A24: VCallAd Control_ID_ChkCodiPart
  loc_C08A27: CVarAd
  loc_C08A2B: ParmAry1St
  loc_C08A31: FLdRfVar var_A4
  loc_C08A34: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08A39: FLdRfVar var_A4
  loc_C08A3C: Erase
  loc_C08A3D: FLdPr Me
  loc_C08A40: VCallAd Control_ID_CoinNopeMsk
  loc_C08A43: FStAdFunc var_A0
  loc_C08A46: FLdPr var_A0
  loc_C08A49: LateIdLdVar var_B4 DispID_7 -32767
  loc_C08A50: CBoolVar
  loc_C08A52: LitI2_Byte &HFF
  loc_C08A54: EqI2
  loc_C08A55: FFree1Ad var_A0
  loc_C08A58: FFree1Var var_B4 = ""
  loc_C08A5B: BranchF loc_C08A91
  loc_C08A5E: LitI4 0
  loc_C08A63: LitI4 0
  loc_C08A68: FLdRfVar var_A4
  loc_C08A6B: Redim
  loc_C08A75: FLdPr Me
  loc_C08A78: VCallAd Control_ID_CoinNopeMsk
  loc_C08A7B: CVarAd
  loc_C08A7F: ParmAry1St
  loc_C08A85: FLdRfVar var_A4
  loc_C08A88: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08A8D: FLdRfVar var_A4
  loc_C08A90: Erase
  loc_C08A91: FLdRfVar var_10E
  loc_C08A94: FLdPr Me
  loc_C08A97: VCallAd Control_ID_PubliNopeChk
  loc_C08A9A: FStAdFunc var_A0
  loc_C08A9D: FLdPr var_A0
  loc_C08AA0:  = Me.Visible
  loc_C08AA5: FLdI2 var_10E
  loc_C08AA8: LitI2_Byte &HFF
  loc_C08AAA: EqI2
  loc_C08AAB: FFree1Ad var_A0
  loc_C08AAE: BranchF loc_C08AE4
  loc_C08AB1: LitI4 0
  loc_C08AB6: LitI4 0
  loc_C08ABB: FLdRfVar var_A4
  loc_C08ABE: Redim
  loc_C08AC8: FLdPr Me
  loc_C08ACB: VCallAd Control_ID_PubliNopeChk
  loc_C08ACE: CVarAd
  loc_C08AD2: ParmAry1St
  loc_C08AD8: FLdRfVar var_A4
  loc_C08ADB: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08AE0: FLdRfVar var_A4
  loc_C08AE3: Erase
  loc_C08AE4: FLdPr Me
  loc_C08AE7: VCallAd Control_ID_IdUbfiMsk
  loc_C08AEA: FStAdFunc var_A0
  loc_C08AED: FLdPr var_A0
  loc_C08AF0: LateIdLdVar var_B4 DispID_7 -32767
  loc_C08AF7: CBoolVar
  loc_C08AF9: LitI2_Byte &HFF
  loc_C08AFB: EqI2
  loc_C08AFC: FFree1Ad var_A0
  loc_C08AFF: FFree1Var var_B4 = ""
  loc_C08B02: BranchF loc_C08B38
  loc_C08B05: LitI4 0
  loc_C08B0A: LitI4 0
  loc_C08B0F: FLdRfVar var_A4
  loc_C08B12: Redim
  loc_C08B1C: FLdPr Me
  loc_C08B1F: VCallAd Control_ID_IdUbfiMsk
  loc_C08B22: CVarAd
  loc_C08B26: ParmAry1St
  loc_C08B2C: FLdRfVar var_A4
  loc_C08B2F: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08B34: FLdRfVar var_A4
  loc_C08B37: Erase
  loc_C08B38: FLdRfVar var_10E
  loc_C08B3B: FLdPr Me
  loc_C08B3E: VCallAd Control_ID_DienNopeTxt
  loc_C08B41: FStAdFunc var_A0
  loc_C08B44: FLdPr var_A0
  loc_C08B47:  = Me.Visible
  loc_C08B4C: FLdI2 var_10E
  loc_C08B4F: LitI2_Byte &HFF
  loc_C08B51: EqI2
  loc_C08B52: FFree1Ad var_A0
  loc_C08B55: BranchF loc_C08B8B
  loc_C08B58: LitI4 0
  loc_C08B5D: LitI4 0
  loc_C08B62: FLdRfVar var_A4
  loc_C08B65: Redim
  loc_C08B6F: FLdPr Me
  loc_C08B72: VCallAd Control_ID_DienNopeTxt
  loc_C08B75: CVarAd
  loc_C08B79: ParmAry1St
  loc_C08B7F: FLdRfVar var_A4
  loc_C08B82: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08B87: FLdRfVar var_A4
  loc_C08B8A: Erase
  loc_C08B8B: FLdPr Me
  loc_C08B8E: VCallAd Control_ID_FecoNopeMsk
  loc_C08B91: FStAdFunc var_A0
  loc_C08B94: FLdPr var_A0
  loc_C08B97: LateIdLdVar var_B4 DispID_7 -32767
  loc_C08B9E: CBoolVar
  loc_C08BA0: LitI2_Byte &HFF
  loc_C08BA2: EqI2
  loc_C08BA3: FFree1Ad var_A0
  loc_C08BA6: FFree1Var var_B4 = ""
  loc_C08BA9: BranchF loc_C08BDF
  loc_C08BAC: LitI4 0
  loc_C08BB1: LitI4 0
  loc_C08BB6: FLdRfVar var_A4
  loc_C08BB9: Redim
  loc_C08BC3: FLdPr Me
  loc_C08BC6: VCallAd Control_ID_FecoNopeMsk
  loc_C08BC9: CVarAd
  loc_C08BCD: ParmAry1St
  loc_C08BD3: FLdRfVar var_A4
  loc_C08BD6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08BDB: FLdRfVar var_A4
  loc_C08BDE: Erase
  loc_C08BDF: FLdPr Me
  loc_C08BE2: VCallAd Control_ID_FecoHoraMsk
  loc_C08BE5: FStAdFunc var_A0
  loc_C08BE8: FLdPr var_A0
  loc_C08BEB: LateIdLdVar var_B4 DispID_7 -32767
  loc_C08BF2: CBoolVar
  loc_C08BF4: LitI2_Byte &HFF
  loc_C08BF6: EqI2
  loc_C08BF7: FFree1Ad var_A0
  loc_C08BFA: FFree1Var var_B4 = ""
  loc_C08BFD: BranchF loc_C08C33
  loc_C08C00: LitI4 0
  loc_C08C05: LitI4 0
  loc_C08C0A: FLdRfVar var_A4
  loc_C08C0D: Redim
  loc_C08C17: FLdPr Me
  loc_C08C1A: VCallAd Control_ID_FecoHoraMsk
  loc_C08C1D: CVarAd
  loc_C08C21: ParmAry1St
  loc_C08C27: FLdRfVar var_A4
  loc_C08C2A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08C2F: FLdRfVar var_A4
  loc_C08C32: Erase
  loc_C08C33: FLdRfVar var_10E
  loc_C08C36: FLdPr Me
  loc_C08C39: VCallAd Control_ID_DetaNope2Txt
  loc_C08C3C: FStAdFunc var_A0
  loc_C08C3F: FLdPr var_A0
  loc_C08C42:  = Me.Visible
  loc_C08C47: FLdI2 var_10E
  loc_C08C4A: LitI2_Byte &HFF
  loc_C08C4C: EqI2
  loc_C08C4D: FFree1Ad var_A0
  loc_C08C50: BranchF loc_C08C86
  loc_C08C53: LitI4 0
  loc_C08C58: LitI4 0
  loc_C08C5D: FLdRfVar var_A4
  loc_C08C60: Redim
  loc_C08C6A: FLdPr Me
  loc_C08C6D: VCallAd Control_ID_DetaNope2Txt
  loc_C08C70: CVarAd
  loc_C08C74: ParmAry1St
  loc_C08C7A: FLdRfVar var_A4
  loc_C08C7D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C08C82: FLdRfVar var_A4
  loc_C08C85: Erase
  loc_C08C86: FLdRfVar var_B4
  loc_C08C89: FLdRfVar var_3B8
  loc_C08C8C: LitVarStr var_C4, "TotaNumeImpu"
  loc_C08C91: PopAdLdVar
  loc_C08C92: FLdRfVar var_10C
  loc_C08C95: FLdRfVar var_A0
  loc_C08C98: FLdPr Me
  loc_C08C9B: MemLdRfVar from_stack_1.global_52
  loc_C08C9E: NewIfNullPr clsnotapedido
  loc_C08CA1: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C08CA6: FLdPr var_A0
  loc_C08CA9:  = Me.Fields
  loc_C08CAE: FLdPr var_10C
  loc_C08CB1: from_stack_2 = Me.Item(from_stack_1)
  loc_C08CB6: FLdPr var_3B8
  loc_C08CB9:  = Me.Value
  loc_C08CBE: LitVar_FALSE
  loc_C08CC2: LitVar_TRUE var_108
  loc_C08CC5: FLdRfVar var_B4
  loc_C08CC8: FnCLngVar
  loc_C08CCA: LitI4 0
  loc_C08CCF: EqI4
  loc_C08CD0: CVarBoolI2 var_D4
  loc_C08CD4: FLdRfVar var_130
  loc_C08CD7: ImpAdCallFPR4  = IIf(, , )
  loc_C08CDC: FLdRfVar var_130
  loc_C08CDF: CBoolVar
  loc_C08CE1: CVarBoolI2 var_1B0
  loc_C08CE5: PopAdLdVar
  loc_C08CE6: FLdPr Me
  loc_C08CE9: VCallAd Control_ID_ExorImpuMsk
  loc_C08CEC: FStAdFunc var_3BC
  loc_C08CEF: FLdPr var_3BC
  loc_C08CF2: LateIdSt
  loc_C08CF7: FFreeAd var_A0 = "": var_10C = "": var_3B8 = ""
  loc_C08D02: FFreeVar var_B4 = "": var_D4 = "": var_108 = "": var_120 = "": var_130 = ""
  loc_C08D11: LitStr "Municipalidad de Guaymallén"
  loc_C08D14: LitStr "Municipalidad de Maipú"
  loc_C08D17: EqStr
  loc_C08D19: BranchF loc_C08D8F
  loc_C08D1C: LitVar_FALSE
  loc_C08D20: LitVar_TRUE var_B4
  loc_C08D23: ImpAdLdI4 MemVar_C3D03C
  loc_C08D26: LitStr "ptieppo"
  loc_C08D29: EqStr
  loc_C08D2B: ImpAdLdI4 MemVar_C3D03C
  loc_C08D2E: LitStr "Melisa"
  loc_C08D31: EqStr
  loc_C08D33: OrI4
  loc_C08D34: ImpAdLdI4 MemVar_C3D03C
  loc_C08D37: LitStr "Nati"
  loc_C08D3A: EqStr
  loc_C08D3C: OrI4
  loc_C08D3D: ImpAdLdI4 MemVar_C3D03C
  loc_C08D40: LitStr "marce"
  loc_C08D43: EqStr
  loc_C08D45: OrI4
  loc_C08D46: ImpAdLdI4 MemVar_C3D03C
  loc_C08D49: LitStr "root"
  loc_C08D4C: EqStr
  loc_C08D4E: OrI4
  loc_C08D4F: ImpAdLdI4 MemVar_C3D03C
  loc_C08D52: LitStr "root"
  loc_C08D55: EqStr
  loc_C08D57: OrI4
  loc_C08D58: CVarBoolI2 var_C4
  loc_C08D5C: FLdRfVar var_120
  loc_C08D5F: ImpAdCallFPR4  = IIf(, , )
  loc_C08D64: FLdRfVar var_120
  loc_C08D67: CBoolVar
  loc_C08D69: CVarBoolI2 var_F4
  loc_C08D6D: PopAdLdVar
  loc_C08D6E: FLdPr Me
  loc_C08D71: VCallAd Control_ID_CodiTicoMsk
  loc_C08D74: FStAdFunc var_A0
  loc_C08D77: FLdPr var_A0
  loc_C08D7A: LateIdSt
  loc_C08D7F: FFree1Ad var_A0
  loc_C08D82: FFreeVar var_C4 = "": var_B4 = "": var_108 = "": var_120 = ""
  loc_C08D8F: LitStr vbNullString
  loc_C08D92: FLdPr Me
  loc_C08D95: MemStStrCopy
  loc_C08D99: LitVarI4
  loc_C08DA1: PopAdLdVar
  loc_C08DA2: FLdPr Me
  loc_C08DA5: VCallAd Control_ID_ItemNotaFlex
  loc_C08DA8: FStAdFunc var_A0
  loc_C08DAB: FLdPr var_A0
  loc_C08DAE: LateIdSt
  loc_C08DB3: FFree1Ad var_A0
  loc_C08DB6: FLdPr Me
  loc_C08DB9: VCallAd Control_ID_CodiOrgaMsk
  loc_C08DBC: FStAdFunc var_A0
  loc_C08DBF: FLdPr var_A0
  loc_C08DC2: LateIdCall
  loc_C08DCA: FFree1Ad var_A0
  loc_C08DCD: LitI4 1
  loc_C08DD2: FLdRfVar var_98
  loc_C08DD5: FLdPr Me
  loc_C08DD8: VCallAd Control_ID_DetaTicoLbl
  loc_C08DDB: FStAdFunc var_A0
  loc_C08DDE: FLdPr var_A0
  loc_C08DE1:  = Me.Caption
  loc_C08DE6: FLdZeroAd var_98
  loc_C08DE9: CVarStr var_B4
  loc_C08DEC: FLdRfVar var_108
  loc_C08DEF: ImpAdCallFPR4  = LCase()
  loc_C08DF4: FLdRfVar var_108
  loc_C08DF7: LitVarStr var_C4, "licita"
  loc_C08DFC: LitI4 0
  loc_C08E01: FnInStr4Var
  loc_C08E05: LitVarI2 var_D4, 0
  loc_C08E0A: HardType
  loc_C08E0B: GtVarBool
  loc_C08E0D: FFree1Ad var_A0
  loc_C08E10: FFreeVar var_B4 = "": var_108 = ""
  loc_C08E19: BranchF loc_C08E37
  loc_C08E1C: LitVar_TRUE var_C4
  loc_C08E1F: PopAdLdVar
  loc_C08E20: FLdPr Me
  loc_C08E23: VCallAd Control_ID_PlieNopeMsk
  loc_C08E26: FStAdFunc var_A0
  loc_C08E29: FLdPr var_A0
  loc_C08E2C: LateIdSt
  loc_C08E31: FFree1Ad var_A0
  loc_C08E34: Branch loc_C08E50
  loc_C08E37: LitVar_FALSE
  loc_C08E3B: PopAdLdVar
  loc_C08E3C: FLdPr Me
  loc_C08E3F: VCallAd Control_ID_PlieNopeMsk
  loc_C08E42: FStAdFunc var_A0
  loc_C08E45: FLdPr var_A0
  loc_C08E48: LateIdSt
  loc_C08E4D: FFree1Ad var_A0
  loc_C08E50: Branch loc_C0A47F
  loc_C08E53: ILdRf var_9C
  loc_C08E56: LitStr "btnEliminar"
  loc_C08E59: EqStr
  loc_C08E5B: BranchF loc_C09339
  loc_C08E5E: FLdRfVar var_3B4
  loc_C08E61: FLdPr Me
  loc_C08E64: MemLdRfVar from_stack_1.global_52
  loc_C08E67: NewIfNullPr clsnotapedido
  loc_C08E6A: from_stack_1 = clsnotapedido.RecordCount
  loc_C08E6F: ILdRf var_3B4
  loc_C08E72: LitI4 0
  loc_C08E77: GtI4
  loc_C08E78: BranchF loc_C09336
  loc_C08E7B: FLdRfVar var_3B8
  loc_C08E7E: LitVarStr var_C4, "FeanNope"
  loc_C08E83: PopAdLdVar
  loc_C08E84: FLdRfVar var_10C
  loc_C08E87: FLdRfVar var_A0
  loc_C08E8A: FLdPr Me
  loc_C08E8D: MemLdRfVar from_stack_1.global_52
  loc_C08E90: NewIfNullPr clsnotapedido
  loc_C08E93: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C08E98: FLdPr var_A0
  loc_C08E9B:  = Me.Fields
  loc_C08EA0: FLdPr var_10C
  loc_C08EA3: from_stack_2 = Me.Item(from_stack_1)
  loc_C08EA8: FLdZeroAd var_3B8
  loc_C08EAB: CVarAd
  loc_C08EAF: ImpAdCallI2 IsNull()
  loc_C08EB4: CVarBoolI2 var_F4
  loc_C08EB8: FLdRfVar var_108
  loc_C08EBB: FLdRfVar var_3C4
  loc_C08EBE: LitVarStr var_D4, "OCs"
  loc_C08EC3: PopAdLdVar
  loc_C08EC4: FLdRfVar var_3C0
  loc_C08EC7: FLdRfVar var_3BC
  loc_C08ECA: FLdPr Me
  loc_C08ECD: MemLdRfVar from_stack_1.global_52
  loc_C08ED0: NewIfNullPr clsnotapedido
  loc_C08ED3: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C08ED8: FLdPr var_3BC
  loc_C08EDB:  = Me.Fields
  loc_C08EE0: FLdPr var_3C0
  loc_C08EE3: from_stack_2 = Me.Item(from_stack_1)
  loc_C08EE8: FLdPr var_3C4
  loc_C08EEB:  = Me.Value
  loc_C08EF0: FLdRfVar var_108
  loc_C08EF3: LitVarStr var_E4, vbNullString
  loc_C08EF8: HardType
  loc_C08EF9: EqVar var_120
  loc_C08EFD: AndVar var_130
  loc_C08F01: CBoolVarNull
  loc_C08F03: FFreeAd var_A0 = "": var_10C = "": var_3BC = "": var_3C0 = ""
  loc_C08F10: FFreeVar var_B4 = "": var_108 = ""
  loc_C08F19: BranchF loc_C091D6
  loc_C08F1C: FLdRfVar var_B4
  loc_C08F1F: FLdRfVar var_3B8
  loc_C08F22: LitVarStr var_C4, "CodiNope"
  loc_C08F27: PopAdLdVar
  loc_C08F28: FLdRfVar var_10C
  loc_C08F2B: FLdRfVar var_A0
  loc_C08F2E: FLdPr Me
  loc_C08F31: MemLdRfVar from_stack_1.global_52
  loc_C08F34: NewIfNullPr clsnotapedido
  loc_C08F37: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C08F3C: FLdPr var_A0
  loc_C08F3F:  = Me.Fields
  loc_C08F44: FLdPr var_10C
  loc_C08F47: from_stack_2 = Me.Item(from_stack_1)
  loc_C08F4C: FLdPr var_3B8
  loc_C08F4F:  = Me.Value
  loc_C08F54: FLdRfVar var_F8
  loc_C08F57: FLdRfVar var_B4
  loc_C08F5A: CI4Var
  loc_C08F5C: ImpAdLdI2 MemVar_C3D064
  loc_C08F5F: CStrUI1
  loc_C08F61: FStStrNoPop var_98
  loc_C08F64: FLdPr Me
  loc_C08F67: MemLdRfVar from_stack_1.global_52
  loc_C08F6A: NewIfNullPr clsnotapedido
  loc_C08F6D: from_stack_3v = clsnotapedido.TienePreventiva(from_stack_1v, from_stack_2v)
  loc_C08F72: ILdRf var_F8
  loc_C08F75: FLdPr Me
  loc_C08F78: MemStStrCopy
  loc_C08F7C: FFreeStr var_98 = ""
  loc_C08F83: FFreeAd var_A0 = "": var_10C = ""
  loc_C08F8C: FFree1Var var_B4 = ""
  loc_C08F8F: FLdPr Me
  loc_C08F92: MemLdStr global_76
  loc_C08F95: LitStr vbNullString
  loc_C08F98: EqStr
  loc_C08F9A: BranchF loc_C091C3
  loc_C08F9D: FLdRfVar var_98
  loc_C08FA0: FLdRfVar var_B4
  loc_C08FA3: FLdRfVar var_3B8
  loc_C08FA6: LitVarStr var_C4, "CodiNope"
  loc_C08FAB: PopAdLdVar
  loc_C08FAC: FLdRfVar var_10C
  loc_C08FAF: FLdRfVar var_A0
  loc_C08FB2: FLdPr Me
  loc_C08FB5: MemLdRfVar from_stack_1.global_52
  loc_C08FB8: NewIfNullPr clsnotapedido
  loc_C08FBB: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C08FC0: FLdPr var_A0
  loc_C08FC3:  = Me.Fields
  loc_C08FC8: FLdPr var_10C
  loc_C08FCB: from_stack_2 = Me.Item(from_stack_1)
  loc_C08FD0: FLdPr var_3B8
  loc_C08FD3:  = Me.Value
  loc_C08FD8: FLdRfVar var_B4
  loc_C08FDB: CI4Var
  loc_C08FDD: FLdPr Me
  loc_C08FE0: MemLdRfVar from_stack_1.global_52
  loc_C08FE3: NewIfNullPr clsnotapedido
  loc_C08FE6: from_stack_2v = clsnotapedido.TieneCotizacion(from_stack_1v)
  loc_C08FEB: ILdRf var_98
  loc_C08FEE: FLdPr Me
  loc_C08FF1: MemStStrCopy
  loc_C08FF5: FFree1Str var_98
  loc_C08FF8: FFreeAd var_A0 = "": var_10C = ""
  loc_C09001: FFree1Var var_B4 = ""
  loc_C09004: FLdPr Me
  loc_C09007: MemLdStr global_76
  loc_C0900A: LitStr vbNullString
  loc_C0900D: NeStr
  loc_C0900F: BranchF loc_C0901F
  loc_C09012: LitI4 0
  loc_C09017: LitStr "La/s cotizacion/es de la Nota de Pedido también serán ANULADAS..."
  loc_C0901A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C0901F: LitI2_Byte 3
  loc_C09021: FLdPr Me
  loc_C09024: MemStUI1
  loc_C09028: LitVarI2 var_C4, 2
  loc_C0902D: PopAdLdVar
  loc_C0902E: FLdPr Me
  loc_C09031: VCallAd Control_ID_SSTab
  loc_C09034: FStAdFunc var_A0
  loc_C09037: FLdPr var_A0
  loc_C0903A: LateIdSt
  loc_C0903F: FFree1Ad var_A0
  loc_C09042: ILdRf Me
  loc_C09045: CastAd
  loc_C09048: FStAdFunc var_A0
  loc_C0904B: FLdRfVar var_A0
  loc_C0904E: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C09053: FFree1Ad var_A0
  loc_C09056: LitI4 0
  loc_C0905B: LitI4 1
  loc_C09060: FLdRfVar var_A4
  loc_C09063: Redim
  loc_C0906D: FLdPr Me
  loc_C09070: VCallAd Control_ID_dgdABMS
  loc_C09073: CVarAd
  loc_C09077: ParmAry1St
  loc_C0907D: FLdPr Me
  loc_C09080: VCallAd Control_ID_ItemNotaFlex
  loc_C09083: CVarAd
  loc_C09087: ParmAry1St
  loc_C0908D: FLdRfVar var_A4
  loc_C09090: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C09095: FLdRfVar var_A4
  loc_C09098: Erase
  loc_C09099: ILdRf Me
  loc_C0909C: CastAd
  loc_C0909F: FStAdFunc var_A0
  loc_C090A2: FLdRfVar var_A0
  loc_C090A5: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C090AA: FFree1Ad var_A0
  loc_C090AD: FLdRfVar var_B4
  loc_C090B0: FLdRfVar var_3B8
  loc_C090B3: LitVarStr var_C4, "CodiNope"
  loc_C090B8: PopAdLdVar
  loc_C090B9: FLdRfVar var_10C
  loc_C090BC: FLdRfVar var_A0
  loc_C090BF: FLdPr Me
  loc_C090C2: MemLdRfVar from_stack_1.global_52
  loc_C090C5: NewIfNullPr clsnotapedido
  loc_C090C8: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C090CD: FLdPr var_A0
  loc_C090D0:  = Me.Fields
  loc_C090D5: FLdPr var_10C
  loc_C090D8: from_stack_2 = Me.Item(from_stack_1)
  loc_C090DD: FLdPr var_3B8
  loc_C090E0:  = Me.Value
  loc_C090E5: FLdRfVar var_F8
  loc_C090E8: FLdRfVar var_B4
  loc_C090EB: CI2Var
  loc_C090EC: ImpAdLdI2 MemVar_C3D064
  loc_C090EF: CStrUI1
  loc_C090F1: FStStrNoPop var_98
  loc_C090F4: FLdPr Me
  loc_C090F7: MemLdRfVar from_stack_1.global_52
  loc_C090FA: NewIfNullPr clsnotapedido
  loc_C090FD: from_stack_3v = clsnotapedido.UltimaFeanNope(from_stack_1v, from_stack_2v)
  loc_C09102: FLdZeroAd var_F8
  loc_C09105: CVarStr var_108
  loc_C09108: PopAdLdVar
  loc_C09109: FLdPr Me
  loc_C0910C: VCallAd Control_ID_FeanNopeMsk
  loc_C0910F: FStAdFunc var_3BC
  loc_C09112: FLdPr var_3BC
  loc_C09115: LateIdSt
  loc_C0911A: FFree1Str var_98
  loc_C0911D: FFreeAd var_A0 = "": var_10C = "": var_3B8 = ""
  loc_C09128: FFreeVar var_B4 = ""
  loc_C0912F: FLdPr Me
  loc_C09132: VCallAd Control_ID_FeanNopeMsk
  loc_C09135: FStAdFunc var_A0
  loc_C09138: FLdPr var_A0
  loc_C0913B: LateIdLdVar var_B4 DispID_11 -32767
  loc_C09142: CStrVarTmp
  loc_C09143: CVarStr var_108
  loc_C09146: PopAdLdVar
  loc_C09147: FLdPr Me
  loc_C0914A: VCallAd Control_ID_FeanNopeMsk
  loc_C0914D: FStAdFunc var_10C
  loc_C09150: FLdPr var_10C
  loc_C09153: LateIdSt
  loc_C09158: FFreeAd var_A0 = ""
  loc_C0915F: FFreeVar var_B4 = ""
  loc_C09166: LitStr vbNullString
  loc_C09169: FLdPr Me
  loc_C0916C: VCallAd Control_ID_BajaMotiTxt
  loc_C0916F: FStAdFunc var_A0
  loc_C09172: FLdPr var_A0
  loc_C09175: Me.Text = from_stack_1
  loc_C0917A: FFree1Ad var_A0
  loc_C0917D: LitI4 0
  loc_C09182: LitI4 1
  loc_C09187: FLdRfVar var_A4
  loc_C0918A: Redim
  loc_C09194: FLdPr Me
  loc_C09197: VCallAd Control_ID_FeanNopeMsk
  loc_C0919A: CVarAd
  loc_C0919E: ParmAry1St
  loc_C091A4: FLdPr Me
  loc_C091A7: VCallAd Control_ID_BajaMotiTxt
  loc_C091AA: CVarAd
  loc_C091AE: ParmAry1St
  loc_C091B4: FLdRfVar var_A4
  loc_C091B7: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C091BC: FLdRfVar var_A4
  loc_C091BF: Erase
  loc_C091C0: Branch loc_C091D3
  loc_C091C3: LitI4 0
  loc_C091C8: FLdPr Me
  loc_C091CB: MemLdStr global_76
  loc_C091CE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C091D3: Branch loc_C09336
  loc_C091D6: FLdRfVar var_3B8
  loc_C091D9: LitVarStr var_C4, "FeanNope"
  loc_C091DE: PopAdLdVar
  loc_C091DF: FLdRfVar var_10C
  loc_C091E2: FLdRfVar var_A0
  loc_C091E5: FLdPr Me
  loc_C091E8: MemLdRfVar from_stack_1.global_52
  loc_C091EB: NewIfNullPr clsnotapedido
  loc_C091EE: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C091F3: FLdPr var_A0
  loc_C091F6:  = Me.Fields
  loc_C091FB: FLdPr var_10C
  loc_C091FE: from_stack_2 = Me.Item(from_stack_1)
  loc_C09203: FLdZeroAd var_3B8
  loc_C09206: CVarAd
  loc_C0920A: ImpAdCallI2 IsNull()
  loc_C0920F: CVarBoolI2 var_F4
  loc_C09213: FLdRfVar var_108
  loc_C09216: FLdRfVar var_3C4
  loc_C09219: LitVarStr var_D4, "OCs"
  loc_C0921E: PopAdLdVar
  loc_C0921F: FLdRfVar var_3C0
  loc_C09222: FLdRfVar var_3BC
  loc_C09225: FLdPr Me
  loc_C09228: MemLdRfVar from_stack_1.global_52
  loc_C0922B: NewIfNullPr clsnotapedido
  loc_C0922E: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C09233: FLdPr var_3BC
  loc_C09236:  = Me.Fields
  loc_C0923B: FLdPr var_3C0
  loc_C0923E: from_stack_2 = Me.Item(from_stack_1)
  loc_C09243: FLdPr var_3C4
  loc_C09246:  = Me.Value
  loc_C0924B: FLdRfVar var_108
  loc_C0924E: LitVarStr var_E4, vbNullString
  loc_C09253: HardType
  loc_C09254: NeVar var_120
  loc_C09258: AndVar var_130
  loc_C0925C: CBoolVarNull
  loc_C0925E: FFreeAd var_A0 = "": var_10C = "": var_3BC = "": var_3C0 = ""
  loc_C0926B: FFreeVar var_B4 = "": var_108 = ""
  loc_C09274: BranchF loc_C09287
  loc_C09277: LitI4 0
  loc_C0927C: LitStr "La Nota de Pedido está incluída en OC, No se puede modificar. Verifique..."
  loc_C0927F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C09284: Branch loc_C09336
  loc_C09287: FLdRfVar var_3B8
  loc_C0928A: LitVarStr var_C4, "FeanNope"
  loc_C0928F: PopAdLdVar
  loc_C09290: FLdRfVar var_10C
  loc_C09293: FLdRfVar var_A0
  loc_C09296: FLdPr Me
  loc_C09299: MemLdRfVar from_stack_1.global_52
  loc_C0929C: NewIfNullPr clsnotapedido
  loc_C0929F: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C092A4: FLdPr var_A0
  loc_C092A7:  = Me.Fields
  loc_C092AC: FLdPr var_10C
  loc_C092AF: from_stack_2 = Me.Item(from_stack_1)
  loc_C092B4: FLdZeroAd var_3B8
  loc_C092B7: CVarAd
  loc_C092BB: ImpAdCallI2 IsNull()
  loc_C092C0: NotI4
  loc_C092C1: CVarBoolI2 var_F4
  loc_C092C5: FLdRfVar var_108
  loc_C092C8: FLdRfVar var_3C4
  loc_C092CB: LitVarStr var_D4, "OCs"
  loc_C092D0: PopAdLdVar
  loc_C092D1: FLdRfVar var_3C0
  loc_C092D4: FLdRfVar var_3BC
  loc_C092D7: FLdPr Me
  loc_C092DA: MemLdRfVar from_stack_1.global_52
  loc_C092DD: NewIfNullPr clsnotapedido
  loc_C092E0: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C092E5: FLdPr var_3BC
  loc_C092E8:  = Me.Fields
  loc_C092ED: FLdPr var_3C0
  loc_C092F0: from_stack_2 = Me.Item(from_stack_1)
  loc_C092F5: FLdPr var_3C4
  loc_C092F8:  = Me.Value
  loc_C092FD: FLdRfVar var_108
  loc_C09300: LitVarStr var_E4, vbNullString
  loc_C09305: HardType
  loc_C09306: EqVar var_120
  loc_C0930A: AndVar var_130
  loc_C0930E: CBoolVarNull
  loc_C09310: FFreeAd var_A0 = "": var_10C = "": var_3BC = "": var_3C0 = ""
  loc_C0931D: FFreeVar var_B4 = "": var_108 = ""
  loc_C09326: BranchF loc_C09336
  loc_C09329: LitI4 0
  loc_C0932E: LitStr "La Nota de Pedido está Anulada, No se puede modificar. Verifique..."
  loc_C09331: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C09336: Branch loc_C0A47F
  loc_C09339: ILdRf var_9C
  loc_C0933C: LitStr "btnGuardar"
  loc_C0933F: EqStr
  loc_C09341: BranchF loc_C0A363
  loc_C09344: LitStr vbNullString
  loc_C09347: FLdPr Me
  loc_C0934A: MemStStrCopy
  loc_C0934E: LitI2_Byte 0
  loc_C09350: PopTmpLdAd2 var_10E
  loc_C09353: Call CodiOrgaMsk_UnknownEvent_8()
  loc_C09358: FLdPr Me
  loc_C0935B: MemLdStr global_76
  loc_C0935E: LitStr vbNullString
  loc_C09361: NeStr
  loc_C09363: BranchF loc_C09367
  loc_C09366: ExitProcHresult
  loc_C09367: LitI2_Byte 0
  loc_C09369: PopTmpLdAd2 var_10E
  loc_C0936C: Call DetaNopeTxt_Validate(from_stack_1v)
  loc_C09371: FLdPr Me
  loc_C09374: MemLdStr global_76
  loc_C09377: LitStr vbNullString
  loc_C0937A: NeStr
  loc_C0937C: BranchF loc_C09380
  loc_C0937F: ExitProcHresult
  loc_C09380: LitI2_Byte 0
  loc_C09382: PopTmpLdAd2 var_10E
  loc_C09385: Call DetaNope2Txt_Validate(from_stack_1v)
  loc_C0938A: FLdPr Me
  loc_C0938D: MemLdStr global_76
  loc_C09390: LitStr vbNullString
  loc_C09393: NeStr
  loc_C09395: BranchF loc_C09399
  loc_C09398: ExitProcHresult
  loc_C09399: LitI2_Byte 0
  loc_C0939B: PopTmpLdAd2 var_10E
  loc_C0939E: Call CodiTicoMsk_UnknownEvent_8()
  loc_C093A3: FLdPr Me
  loc_C093A6: MemLdStr global_76
  loc_C093A9: LitStr vbNullString
  loc_C093AC: NeStr
  loc_C093AE: BranchF loc_C093B2
  loc_C093B1: ExitProcHresult
  loc_C093B2: LitI2_Byte 0
  loc_C093B4: PopTmpLdAd2 var_10E
  loc_C093B7: Call ExorImpuMsk_UnknownEvent_8()
  loc_C093BC: FLdPr Me
  loc_C093BF: MemLdStr global_76
  loc_C093C2: LitStr vbNullString
  loc_C093C5: NeStr
  loc_C093C7: BranchF loc_C093CB
  loc_C093CA: ExitProcHresult
  loc_C093CB: LitI2_Byte 0
  loc_C093CD: PopTmpLdAd2 var_10E
  loc_C093D0: Call FechNopeMsk_UnknownEvent_8()
  loc_C093D5: FLdPr Me
  loc_C093D8: MemLdStr global_76
  loc_C093DB: LitStr vbNullString
  loc_C093DE: NeStr
  loc_C093E0: BranchF loc_C093E4
  loc_C093E3: ExitProcHresult
  loc_C093E4: LitI2_Byte 0
  loc_C093E6: PopTmpLdAd2 var_10E
  loc_C093E9: Call FecoNopeMsk_UnknownEvent_8()
  loc_C093EE: FLdPr Me
  loc_C093F1: MemLdStr global_76
  loc_C093F4: LitStr vbNullString
  loc_C093F7: NeStr
  loc_C093F9: BranchF loc_C093FD
  loc_C093FC: ExitProcHresult
  loc_C093FD: LitI2_Byte 0
  loc_C093FF: PopTmpLdAd2 var_10E
  loc_C09402: Call FecoHoraMsk_UnknownEvent_8()
  loc_C09407: FLdPr Me
  loc_C0940A: MemLdStr global_76
  loc_C0940D: LitStr vbNullString
  loc_C09410: NeStr
  loc_C09412: BranchF loc_C09416
  loc_C09415: ExitProcHresult
  loc_C09416: LitI2_Byte 0
  loc_C09418: PopTmpLdAd2 var_10E
  loc_C0941B: Call FeliNopeMsk_UnknownEvent_8()
  loc_C09420: FLdPr Me
  loc_C09423: MemLdStr global_76
  loc_C09426: LitStr vbNullString
  loc_C09429: NeStr
  loc_C0942B: BranchF loc_C0942F
  loc_C0942E: ExitProcHresult
  loc_C0942F: LitI2_Byte 0
  loc_C09431: PopTmpLdAd2 var_10E
  loc_C09434: Call FeleNopeMsk_UnknownEvent_8()
  loc_C09439: FLdPr Me
  loc_C0943C: MemLdStr global_76
  loc_C0943F: LitStr vbNullString
  loc_C09442: NeStr
  loc_C09444: BranchF loc_C09448
  loc_C09447: ExitProcHresult
  loc_C09448: LitI2_Byte 0
  loc_C0944A: PopTmpLdAd2 var_10E
  loc_C0944D: Call IdRubroMsk_UnknownEvent_8()
  loc_C09452: FLdPr Me
  loc_C09455: MemLdStr global_76
  loc_C09458: LitStr vbNullString
  loc_C0945B: NeStr
  loc_C0945D: BranchF loc_C09461
  loc_C09460: ExitProcHresult
  loc_C09461: LitI2_Byte 0
  loc_C09463: PopTmpLdAd2 var_10E
  loc_C09466: Call IdUbfiMsk_UnknownEvent_8()
  loc_C0946B: FLdPr Me
  loc_C0946E: MemLdStr global_76
  loc_C09471: LitStr vbNullString
  loc_C09474: NeStr
  loc_C09476: BranchF loc_C0947A
  loc_C09479: ExitProcHresult
  loc_C0947A: LitI2_Byte 0
  loc_C0947C: PopTmpLdAd2 var_10E
  loc_C0947F: Call PlieNopeMsk_UnknownEvent_8()
  loc_C09484: FLdPr Me
  loc_C09487: MemLdStr global_76
  loc_C0948A: LitStr vbNullString
  loc_C0948D: NeStr
  loc_C0948F: BranchF loc_C09493
  loc_C09492: ExitProcHresult
  loc_C09493: LitI2_Byte 0
  loc_C09495: PopTmpLdAd2 var_10E
  loc_C09498: Call FeanNopeMsk_UnknownEvent_8()
  loc_C0949D: FLdPr Me
  loc_C094A0: MemLdStr global_76
  loc_C094A3: LitStr vbNullString
  loc_C094A6: NeStr
  loc_C094A8: BranchF loc_C094AC
  loc_C094AB: ExitProcHresult
  loc_C094AC: LitI2_Byte 0
  loc_C094AE: PopTmpLdAd2 var_10E
  loc_C094B1: Call BajaMotiTxt_Validate(from_stack_1v)
  loc_C094B6: FLdPr Me
  loc_C094B9: MemLdStr global_76
  loc_C094BC: LitStr vbNullString
  loc_C094BF: NeStr
  loc_C094C1: BranchF loc_C094C5
  loc_C094C4: ExitProcHresult
  loc_C094C5: LitI2_Byte 0
  loc_C094C7: CR8I2
  loc_C094C8: FLdPr Me
  loc_C094CB: MemStFPR8 global_136
  loc_C094CE: LitI2_Byte &HFF
  loc_C094D0: FLdPr Me
  loc_C094D3: MemStI2 global_144
  loc_C094D6: LitI2_Byte 0
  loc_C094D8: PopTmpLdAd2 var_10E
  loc_C094DB: Call ItemNotaFlex_UnknownEvent_8()
  loc_C094E0: FLdPr Me
  loc_C094E3: MemLdStr global_76
  loc_C094E6: LitStr vbNullString
  loc_C094E9: NeStr
  loc_C094EB: BranchF loc_C094EF
  loc_C094EE: ExitProcHresult
  loc_C094EF: FLdPr Me
  loc_C094F2: VCallAd Control_ID_CodiTicoMsk
  loc_C094F5: FStAdFunc var_A0
  loc_C094F8: FLdPr var_A0
  loc_C094FB: LateIdLdVar var_B4 DispID_0 0
  loc_C09502: PopAd
  loc_C09504: FLdRfVar var_10E
  loc_C09507: FLdPr Me
  loc_C0950A: MemLdR8 global_136
  loc_C0950D: FLdRfVar var_B4
  loc_C09510: CStrVarTmp
  loc_C09511: FStStrNoPop var_98
  loc_C09514: CI2Str
  loc_C09516: FLdPr Me
  loc_C09519: MemLdRfVar from_stack_1.global_52
  loc_C0951C: NewIfNullPr clsnotapedido
  loc_C0951F: from_stack_3v = clsnotapedido.ValidaLimiteCompra(from_stack_1v, from_stack_2v)
  loc_C09524: FLdI2 var_10E
  loc_C09527: LitI2_Byte &HFF
  loc_C09529: EqI2
  loc_C0952A: FFree1Str var_98
  loc_C0952D: FFree1Ad var_A0
  loc_C09530: FFree1Var var_B4 = ""
  loc_C09533: BranchF loc_C0955B
  loc_C09536: LitI4 0
  loc_C0953B: LitStr "El total de la Nota de Pedido es mayor al límite del Tipo de Compra. Verifique..."
  loc_C0953E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C09543: FLdPr Me
  loc_C09546: VCallAd Control_ID_ItemNotaFlex
  loc_C09549: FStAdFunc var_A0
  loc_C0954C: FLdPr var_A0
  loc_C0954F: LateIdCall
  loc_C09557: FFree1Ad var_A0
  loc_C0955A: ExitProcHresult
  loc_C0955B: FLdPr Me
  loc_C0955E: MemLdUI1 global_74
  loc_C09562: FStUI1 var_3C6
  loc_C09566: FLdUI1
  loc_C0956A: LitI2_Byte 1
  loc_C0956C: EqI2
  loc_C0956D: BranchF loc_C09B67
  loc_C09570: FLdPr Me
  loc_C09573: VCallAd Control_ID_IdRubroMsk
  loc_C09576: FStAdFunc var_A0
  loc_C09579: FLdPr var_A0
  loc_C0957C: LateIdLdVar var_B4 DispID_22 0
  loc_C09583: PopAd
  loc_C09585: FLdPr Me
  loc_C09588: VCallAd Control_ID_IdRubroMsk
  loc_C0958B: FStAdFunc var_10C
  loc_C0958E: FLdPr var_10C
  loc_C09591: LateIdLdVar var_108 DispID_22 0
  loc_C09598: CStrVarTmp
  loc_C09599: CVarStr var_130
  loc_C0959C: LitVarI2 var_120, 0
  loc_C095A1: FLdRfVar var_B4
  loc_C095A4: CStrVarTmp
  loc_C095A5: FStStrNoPop var_98
  loc_C095A8: LitStr vbNullString
  loc_C095AB: EqStr
  loc_C095AD: CVarBoolI2 var_C4
  loc_C095B1: FLdRfVar var_140
  loc_C095B4: ImpAdCallFPR4  = IIf(, , )
  loc_C095B9: FLdPr Me
  loc_C095BC: VCallAd Control_ID_IdUbfiMsk
  loc_C095BF: FStAdFunc var_3B8
  loc_C095C2: FLdPr var_3B8
  loc_C095C5: LateIdLdVar var_150 DispID_22 0
  loc_C095CC: PopAd
  loc_C095CE: FLdPr Me
  loc_C095D1: VCallAd Control_ID_IdUbfiMsk
  loc_C095D4: FStAdFunc var_3BC
  loc_C095D7: FLdPr var_3BC
  loc_C095DA: LateIdLdVar var_160 DispID_22 0
  loc_C095E1: CStrVarTmp
  loc_C095E2: CVarStr var_180
  loc_C095E5: LitVarI2 var_170, 0
  loc_C095EA: FLdRfVar var_150
  loc_C095ED: CStrVarTmp
  loc_C095EE: FStStrNoPop var_F8
  loc_C095F1: LitStr vbNullString
  loc_C095F4: EqStr
  loc_C095F6: CVarBoolI2 var_E4
  loc_C095FA: FLdRfVar var_190
  loc_C095FD: ImpAdCallFPR4  = IIf(, , )
  loc_C09602: FLdRfVar var_3CC
  loc_C09605: FLdPr Me
  loc_C09608: VCallAd Control_ID_DienNopeTxt
  loc_C0960B: FStAdFunc var_3C0
  loc_C0960E: FLdPr var_3C0
  loc_C09611:  = Me.Text
  loc_C09616: FLdPr Me
  loc_C09619: VCallAd Control_ID_CoinNopeMsk
  loc_C0961C: FStAdFunc var_3C4
  loc_C0961F: FLdPr var_3C4
  loc_C09622: LateIdLdVar var_1A0 DispID_22 0
  loc_C09629: PopAd
  loc_C0962B: FLdPr Me
  loc_C0962E: VCallAd Control_ID_CoinNopeMsk
  loc_C09631: FStAdFunc var_3D4
  loc_C09634: FLdPr var_3D4
  loc_C09637: LateIdLdVar var_1C0 DispID_22 0
  loc_C0963E: CStrVarTmp
  loc_C0963F: CVarStr var_1E0
  loc_C09642: LitVarStr var_1F0, "0"
  loc_C09647: FStVarCopyObj var_1D0
  loc_C0964A: FLdRfVar var_1D0
  loc_C0964D: FLdRfVar var_1A0
  loc_C09650: CStrVarTmp
  loc_C09651: FStStrNoPop var_3D0
  loc_C09654: LitStr vbNullString
  loc_C09657: EqStr
  loc_C09659: CVarBoolI2 var_1B0
  loc_C0965D: FLdRfVar var_200
  loc_C09660: ImpAdCallFPR4  = IIf(, , )
  loc_C09665: FLdPr Me
  loc_C09668: VCallAd Control_ID_CodiOrgaMsk
  loc_C0966B: FStAdFunc var_3D8
  loc_C0966E: FLdPr var_3D8
  loc_C09671: LateIdLdVar var_210 DispID_22 0
  loc_C09678: PopAd
  loc_C0967A: FLdRfVar var_3E0
  loc_C0967D: FLdPr Me
  loc_C09680: VCallAd Control_ID_DetaNopeTxt
  loc_C09683: FStAdFunc var_3DC
  loc_C09686: FLdPr var_3DC
  loc_C09689:  = Me.Text
  loc_C0968E: FLdRfVar var_3E8
  loc_C09691: FLdPr Me
  loc_C09694: VCallAd Control_ID_DetaNope2Txt
  loc_C09697: FStAdFunc var_3E4
  loc_C0969A: FLdPr var_3E4
  loc_C0969D:  = Me.Text
  loc_C096A2: FLdPr Me
  loc_C096A5: VCallAd Control_ID_CodiTicoMsk
  loc_C096A8: FStAdFunc var_420
  loc_C096AB: FLdPr var_420
  loc_C096AE: LateIdLdVar var_320 DispID_0 0
  loc_C096B5: PopAd
  loc_C096B7: FLdPr Me
  loc_C096BA: VCallAd Control_ID_ExorImpuMsk
  loc_C096BD: FStAdFunc var_3EC
  loc_C096C0: FLdPr var_3EC
  loc_C096C3: LateIdLdVar var_220 DispID_22 0
  loc_C096CA: PopAd
  loc_C096CC: FLdPr Me
  loc_C096CF: VCallAd Control_ID_ExorImpuMsk
  loc_C096D2: FStAdFunc var_3F4
  loc_C096D5: FLdPr var_3F4
  loc_C096D8: LateIdLdVar var_240 DispID_15 0
  loc_C096DF: CStrVarTmp
  loc_C096E0: CVarStr var_260
  loc_C096E3: LitVarStr var_2C0, vbNullString
  loc_C096E8: FStVarCopyObj var_250
  loc_C096EB: FLdRfVar var_250
  loc_C096EE: FLdRfVar var_220
  loc_C096F1: CStrVarTmp
  loc_C096F2: FStStrNoPop var_3F0
  loc_C096F5: LitStr vbNullString
  loc_C096F8: EqStr
  loc_C096FA: CVarBoolI2 var_230
  loc_C096FE: FLdRfVar var_270
  loc_C09701: ImpAdCallFPR4  = IIf(, , )
  loc_C09706: FLdPr Me
  loc_C09709: VCallAd Control_ID_FechNopeMsk
  loc_C0970C: FStAdFunc var_3F8
  loc_C0970F: FLdPr var_3F8
  loc_C09712: LateIdLdVar var_280 DispID_15 0
  loc_C09719: PopAd
  loc_C0971B: FLdPr Me
  loc_C0971E: VCallAd Control_ID_FecoNopeMsk
  loc_C09721: FStAdFunc var_3FC
  loc_C09724: FLdPr var_3FC
  loc_C09727: LateIdLdVar var_290 DispID_15 0
  loc_C0972E: PopAd
  loc_C09730: FLdPr Me
  loc_C09733: VCallAd Control_ID_FecoHoraMsk
  loc_C09736: FStAdFunc var_400
  loc_C09739: FLdPr var_400
  loc_C0973C: LateIdLdVar var_2A0 DispID_15 0
  loc_C09743: PopAd
  loc_C09745: FLdRfVar var_10E
  loc_C09748: FLdPr Me
  loc_C0974B: VCallAd Control_ID_PubliNopeChk
  loc_C0974E: FStAdFunc var_404
  loc_C09751: FLdPr var_404
  loc_C09754:  = Me.Value
  loc_C09759: LitVarI2 var_2D0, 1
  loc_C0975E: LitVarI2 var_2B0, 0
  loc_C09763: FLdI2 var_10E
  loc_C09766: CI4UI1
  loc_C09767: LitI4 0
  loc_C0976C: EqI4
  loc_C0976D: CVarBoolI2 var_300
  loc_C09771: FLdRfVar var_2E0
  loc_C09774: ImpAdCallFPR4  = IIf(, , )
  loc_C09779: FLdPr Me
  loc_C0977C: VCallAd Control_ID_FeliNopeMsk
  loc_C0977F: FStAdFunc var_408
  loc_C09782: FLdPr var_408
  loc_C09785: LateIdLdVar var_2F0 DispID_15 0
  loc_C0978C: PopAd
  loc_C0978E: FLdRfVar var_440
  loc_C09791: FLdPr Me
  loc_C09794: VCallAd Control_ID_HoliNopeTxt
  loc_C09797: FStAdFunc var_43C
  loc_C0979A: FLdPr var_43C
  loc_C0979D:  = Me.Text
  loc_C097A2: FLdPr Me
  loc_C097A5: VCallAd Control_ID_FeleNopeMsk
  loc_C097A8: FStAdFunc var_40C
  loc_C097AB: FLdPr var_40C
  loc_C097AE: LateIdLdVar var_310 DispID_15 0
  loc_C097B5: PopAd
  loc_C097B7: FLdRfVar var_44C
  loc_C097BA: FLdPr Me
  loc_C097BD: VCallAd Control_ID_HoleNopeTxt
  loc_C097C0: FStAdFunc var_448
  loc_C097C3: FLdPr var_448
  loc_C097C6:  = Me.Text
  loc_C097CB: FLdPr Me
  loc_C097CE: VCallAd Control_ID_ItemNotaFlex
  loc_C097D1: FStAdFunc var_454
  loc_C097D4: FLdRfVar var_3B4
  loc_C097D7: FLdZeroAd var_454
  loc_C097DA: FStAdFunc var_450
  loc_C097DD: FLdRfVar var_450
  loc_C097E0: ILdRf var_44C
  loc_C097E3: FLdRfVar var_310
  loc_C097E6: CStrVarTmp
  loc_C097E7: FStStrNoPop var_444
  loc_C097EA: ILdRf var_440
  loc_C097ED: FLdRfVar var_2F0
  loc_C097F0: CStrVarTmp
  loc_C097F1: FStStrNoPop var_438
  loc_C097F4: FLdRfVar var_2E0
  loc_C097F7: CUI1Var
  loc_C097F9: FLdRfVar var_2A0
  loc_C097FC: CStrVarTmp
  loc_C097FD: FStStrNoPop var_434
  loc_C09800: FLdRfVar var_290
  loc_C09803: CStrVarTmp
  loc_C09804: FStStrNoPop var_430
  loc_C09807: FLdRfVar var_280
  loc_C0980A: CStrVarTmp
  loc_C0980B: FStStrNoPop var_42C
  loc_C0980E: FLdRfVar var_270
  loc_C09811: CStrVarVal var_428
  loc_C09815: FLdRfVar var_320
  loc_C09818: CStrVarTmp
  loc_C09819: FStStrNoPop var_424
  loc_C0981C: CI2Str
  loc_C0981E: ILdRf var_3E8
  loc_C09821: ILdRf var_3E0
  loc_C09824: FLdRfVar var_210
  loc_C09827: CStrVarTmp
  loc_C09828: FStStrNoPop var_41C
  loc_C0982B: FLdRfVar var_200
  loc_C0982E: CStrVarVal var_418
  loc_C09832: ILdRf var_3CC
  loc_C09835: FLdRfVar var_190
  loc_C09838: CStrVarVal var_414
  loc_C0983C: FLdRfVar var_140
  loc_C0983F: CStrVarVal var_410
  loc_C09843: FLdPr Me
  loc_C09846: MemLdRfVar from_stack_1.global_52
  loc_C09849: NewIfNullPr clsnotapedido
  loc_C0984C: from_stack_16v = clsnotapedido.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C09851: ILdRf var_3B4
  loc_C09854: FLdPr Me
  loc_C09857: MemStI4 global_88
  loc_C0985A: FFreeStr var_98 = "": var_F8 = "": var_3D0 = "": var_3F0 = "": var_410 = "": var_414 = "": var_3CC = "": var_418 = "": var_41C = "": var_3E0 = "": var_3E8 = "": var_424 = "": var_428 = "": var_42C = "": var_430 = "": var_434 = "": var_438 = "": var_440 = "": var_444 = ""
  loc_C09885: FFreeAd var_A0 = "": var_10C = "": var_3B8 = "": var_3BC = "": var_3C0 = "": var_3C4 = "": var_3D4 = "": var_3D8 = "": var_3DC = "": var_3E4 = "": var_3EC = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_404 = "": var_408 = "": var_40C = "": var_420 = "": var_43C = "": var_448 = "": var_450 = ""
  loc_C098B6: FFreeVar var_190 = "": var_200 = "": var_320 = "": var_270 = "": var_2E0 = "": var_B4 = "": var_108 = "": var_C4 = "": var_120 = "": var_130 = "": var_150 = "": var_160 = "": var_E4 = "": var_170 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1B0 = "": var_1D0 = "": var_1E0 = "": var_210 = "": var_220 = "": var_240 = "": var_230 = "": var_250 = "": var_260 = "": var_280 = "": var_290 = "": var_2A0 = "": var_300 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = ""
  loc_C098FF: FLdPr Me
  loc_C09902: MemLdStr global_88
  loc_C09905: LitI4 0
  loc_C0990A: GtI4
  loc_C0990B: BranchF loc_C09B64
  loc_C0990E: LitI4 0
  loc_C09913: LitStr "Se GENERÓ la Nota de Pedido: "
  loc_C09916: FLdPr Me
  loc_C09919: MemLdStr global_88
  loc_C0991C: CStrI4
  loc_C0991E: FStStrNoPop var_98
  loc_C09921: ConcatStr
  loc_C09922: FStStrNoPop var_F8
  loc_C09925: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C0992A: FFreeStr var_98 = ""
  loc_C09931: LitI2_Byte &HFF
  loc_C09933: PopTmpLdAd2 var_456
  loc_C09936: LitI2_Byte 0
  loc_C09938: PopTmpLdAd2 var_10E
  loc_C0993B: LitStr "¿Genera una Cotización para la NP?"
  loc_C0993E: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C09943: CI4UI1
  loc_C09944: LitI4 6
  loc_C09949: EqI4
  loc_C0994A: BranchF loc_C0998A
  loc_C0994D: FLdPr Me
  loc_C09950: MemLdStr global_88
  loc_C09953: CStrI4
  loc_C09955: FStStrNoPop var_98
  loc_C09958: ImpAdLdRf MemVar_C3D800
  loc_C0995B: NewIfNullPr dlgCreaCotizacion
  loc_C0995E: VCallAd Control_ID_CodiNopeLbl
  loc_C09961: FStAdFunc var_A0
  loc_C09964: FLdPr var_A0
  loc_C09967: dlgCreaCotizacion.Label.Caption = from_stack_1
  loc_C0996C: FFree1Str var_98
  loc_C0996F: FFree1Ad var_A0
  loc_C09972: LitVar_Missing var_D4
  loc_C09975: PopAdLdVar
  loc_C09976: LitVarI4
  loc_C0997E: PopAdLdVar
  loc_C0997F: ImpAdLdRf MemVar_C3D800
  loc_C09982: NewIfNullPr dlgCreaCotizacion
  loc_C09985: dlgCreaCotizacion.Show from_stack_1, from_stack_2
  loc_C0998A: LitI2_Byte &HFF
  loc_C0998C: PopTmpLdAd2 var_456
  loc_C0998F: LitI2_Byte 0
  loc_C09991: PopTmpLdAd2 var_10E
  loc_C09994: LitStr "¿Imprime la Nota de Pedido número "
  loc_C09997: FLdPr Me
  loc_C0999A: MemLdStr global_88
  loc_C0999D: CStrI4
  loc_C0999F: FStStrNoPop var_98
  loc_C099A2: ConcatStr
  loc_C099A3: FStStrNoPop var_F8
  loc_C099A6: LitStr "?"
  loc_C099A9: ConcatStr
  loc_C099AA: FStStrNoPop var_3CC
  loc_C099AD: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C099B2: CI4UI1
  loc_C099B3: LitI4 6
  loc_C099B8: EqI4
  loc_C099B9: FFreeStr var_98 = "": var_F8 = ""
  loc_C099C2: BranchF loc_C099F1
  loc_C099C5: ImpAdLdRf MemVar_C3DC64
  loc_C099C8: NewIfNullAd
  loc_C099CB: CastAd
  loc_C099CE: FStAdFuncNoPop
  loc_C099D1: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_C099D6: FFree1Ad var_A0
  loc_C099D9: LitVar_Missing var_D4
  loc_C099DC: PopAdLdVar
  loc_C099DD: LitVarI4
  loc_C099E5: PopAdLdVar
  loc_C099E6: ImpAdLdRf MemVar_C3DC64
  loc_C099E9: NewIfNullPr rptListadodeNotasdePedido
  loc_C099EC: rptListadodeNotasdePedido.Show from_stack_1, from_stack_2
  loc_C099F1: LitStr "Municipalidad de Guaymallén"
  loc_C099F4: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C099F7: EqStr
  loc_C099F9: BranchF loc_C09B64
  loc_C099FC: FLdPr Me
  loc_C099FF: MemLdRfVar from_stack_1.global_108
  loc_C09A02: NewIfNullRf
  loc_C09A06: ImpAdLdI4 MemVar_C3D03C
  loc_C09A09: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_C09A0E: FLdPr Me
  loc_C09A11: MemLdRfVar from_stack_1.global_112
  loc_C09A14: NewIfNullRf
  loc_C09A18: FLdPr Me
  loc_C09A1B: MemLdStr global_88
  loc_C09A1E: CStrI4
  loc_C09A20: FStStrNoPop var_98
  loc_C09A23: ImpAdLdI2 MemVar_C3D064
  loc_C09A26: ImpAdCallFPR4 Proc_259_17_B74BCC(, , )
  loc_C09A2B: FFree1Str var_98
  loc_C09A2E: FLdRfVar var_98
  loc_C09A31: FLdPr Me
  loc_C09A34: MemLdRfVar from_stack_1.global_112
  loc_C09A37: NewIfNullPr tblnotapedido
  loc_C09A3A: from_stack_1v = tblnotapedido.CodiTicoGet()
  loc_C09A3F: FLdPr Me
  loc_C09A42: MemLdRfVar from_stack_1.global_116
  loc_C09A45: NewIfNullRf
  loc_C09A49: ILdRf var_98
  loc_C09A4C: ImpAdCallFPR4 Proc_259_32_AE0B0C(, )
  loc_C09A51: FFree1Str var_98
  loc_C09A54: FLdRfVar var_98
  loc_C09A57: FLdPr Me
  loc_C09A5A: MemLdRfVar from_stack_1.global_116
  loc_C09A5D: NewIfNullPr tbltipocompra
  loc_C09A60: from_stack_1v = tbltipocompra.MareTicoGet()
  loc_C09A65: FLdRfVar var_F8
  loc_C09A68: FLdPr Me
  loc_C09A6B: MemLdRfVar from_stack_1.global_116
  loc_C09A6E: NewIfNullPr tbltipocompra
  loc_C09A71: from_stack_1v = tbltipocompra.DetaPersGet()
  loc_C09A76: FLdRfVar var_3CC
  loc_C09A79: FLdPr Me
  loc_C09A7C: MemLdRfVar from_stack_1.global_116
  loc_C09A7F: NewIfNullPr tbltipocompra
  loc_C09A82: from_stack_1v = tbltipocompra.DetaTicoGet()
  loc_C09A87: FLdRfVar var_3E0
  loc_C09A8A: FLdPr Me
  loc_C09A8D: MemLdRfVar from_stack_1.global_112
  loc_C09A90: NewIfNullPr tblnotapedido
  loc_C09A93: from_stack_1v = tblnotapedido.CodiNopeGet()
  loc_C09A98: FLdRfVar var_3F0
  loc_C09A9B: FLdPr Me
  loc_C09A9E: MemLdRfVar from_stack_1.global_112
  loc_C09AA1: NewIfNullPr tblnotapedido
  loc_C09AA4: from_stack_1v = tblnotapedido.CodiOrgaGet()
  loc_C09AA9: FLdRfVar var_414
  loc_C09AAC: FLdPr Me
  loc_C09AAF: MemLdRfVar from_stack_1.global_112
  loc_C09AB2: NewIfNullPr tblnotapedido
  loc_C09AB5: from_stack_1v = tblnotapedido.DetaOrgaGet()
  loc_C09ABA: FLdRfVar var_424
  loc_C09ABD: FLdPr Me
  loc_C09AC0: MemLdRfVar from_stack_1.global_116
  loc_C09AC3: NewIfNullPr tbltipocompra
  loc_C09AC6: from_stack_1v = tbltipocompra.DetaTicoGet()
  loc_C09ACB: FLdRfVar var_B4
  loc_C09ACE: ImpAdCallFPR4  = Now
  loc_C09AD3: FLdPr Me
  loc_C09AD6: MemLdRfVar from_stack_1.global_112
  loc_C09AD9: NewIfNullRf
  loc_C09ADD: LitStr "Por este medio se le informa que el sector "
  loc_C09AE0: ILdRf var_3F0
  loc_C09AE3: ConcatStr
  loc_C09AE4: FStStrNoPop var_410
  loc_C09AE7: LitStr " - "
  loc_C09AEA: ConcatStr
  loc_C09AEB: FStStrNoPop var_418
  loc_C09AEE: ILdRf var_414
  loc_C09AF1: ConcatStr
  loc_C09AF2: FStStrNoPop var_41C
  loc_C09AF5: LitStr " a realizado una Solicitud de "
  loc_C09AF8: ConcatStr
  loc_C09AF9: FStStrNoPop var_428
  loc_C09AFC: ILdRf var_424
  loc_C09AFF: ConcatStr
  loc_C09B00: FStStrNoPop var_42C
  loc_C09B03: LitStr ".<br>Enviado: "
  loc_C09B06: ConcatStr
  loc_C09B07: CVarStr var_108
  loc_C09B0A: FLdRfVar var_B4
  loc_C09B0D: ConcatVar var_120
  loc_C09B11: CStrVarVal var_434
  loc_C09B15: LitStr "Solicitud de "
  loc_C09B18: ILdRf var_3CC
  loc_C09B1B: ConcatStr
  loc_C09B1C: FStStrNoPop var_3D0
  loc_C09B1F: LitStr " número "
  loc_C09B22: ConcatStr
  loc_C09B23: FStStrNoPop var_3E8
  loc_C09B26: ILdRf var_3E0
  loc_C09B29: ConcatStr
  loc_C09B2A: FStStrNoPop var_430
  loc_C09B2D: ILdRf var_F8
  loc_C09B30: ILdRf var_98
  loc_C09B33: ImpAdCallFPR4 Proc_261_72_A07AE8(, , , , )
  loc_C09B38: FFreeStr var_3CC = "": var_3D0 = "": var_3E8 = "": var_3E0 = "": var_3F0 = "": var_410 = "": var_418 = "": var_414 = "": var_41C = "": var_428 = "": var_424 = "": var_42C = "": var_98 = "": var_F8 = "": var_430 = ""
  loc_C09B5B: FFreeVar var_108 = "": var_B4 = ""
  loc_C09B64: Branch loc_C0A35B
  loc_C09B67: FLdUI1
  loc_C09B6B: LitI2_Byte 2
  loc_C09B6D: EqI2
  loc_C09B6E: BranchF loc_C0A2B8
  loc_C09B71: FLdRfVar var_98
  loc_C09B74: FLdPr Me
  loc_C09B77: VCallAd Control_ID_TotaNopeLbl
  loc_C09B7A: FStAdFunc var_A0
  loc_C09B7D: FLdPr var_A0
  loc_C09B80:  = Me.Caption
  loc_C09B85: FLdPr Me
  loc_C09B88: MemLdFPR8 global_156
  loc_C09B8B: ILdRf var_98
  loc_C09B8E: CR8Str
  loc_C09B90: EqR4
  loc_C09B91: FFree1Str var_98
  loc_C09B94: FFree1Ad var_A0
  loc_C09B97: BranchF loc_C09BA3
  loc_C09B9A: LitI2_Byte 0
  loc_C09B9C: CR8I2
  loc_C09B9D: FLdPr Me
  loc_C09BA0: MemStFPR8 global_156
  loc_C09BA3: FLdRfVar var_10E
  loc_C09BA6: FLdPr Me
  loc_C09BA9: VCallAd Control_ID_DetaNope2Txt
  loc_C09BAC: FStAdFunc var_A0
  loc_C09BAF: FLdPr var_A0
  loc_C09BB2:  = Me.Visible
  loc_C09BB7: FLdI2 var_10E
  loc_C09BBA: LitI2_Byte &HFF
  loc_C09BBC: EqI2
  loc_C09BBD: FFree1Ad var_A0
  loc_C09BC0: BranchF loc_C09BF5
  loc_C09BC3: LitStr ", DetaNope2 = '"
  loc_C09BC6: FLdRfVar var_98
  loc_C09BC9: FLdPr Me
  loc_C09BCC: VCallAd Control_ID_DetaNope2Txt
  loc_C09BCF: FStAdFunc var_A0
  loc_C09BD2: FLdPr var_A0
  loc_C09BD5:  = Me.Text
  loc_C09BDA: ILdRf var_98
  loc_C09BDD: ConcatStr
  loc_C09BDE: FStStrNoPop var_F8
  loc_C09BE1: LitStr "'"
  loc_C09BE4: ConcatStr
  loc_C09BE5: FStStr var_45C
  loc_C09BE8: FFreeStr var_98 = ""
  loc_C09BEF: FFree1Ad var_A0
  loc_C09BF2: Branch loc_C09BFB
  loc_C09BF5: LitStr vbNullString
  loc_C09BF8: FStStrCopy var_45C
  loc_C09BFB: FLdRfVar var_360
  loc_C09BFE: FLdRfVar var_3B8
  loc_C09C01: LitVarStr var_C4, "CodiNope"
  loc_C09C06: PopAdLdVar
  loc_C09C07: FLdRfVar var_10C
  loc_C09C0A: FLdRfVar var_A0
  loc_C09C0D: FLdPr Me
  loc_C09C10: MemLdRfVar from_stack_1.global_52
  loc_C09C13: NewIfNullPr clsnotapedido
  loc_C09C16: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C09C1B: FLdPr var_A0
  loc_C09C1E:  = Me.Fields
  loc_C09C23: FLdPr var_10C
  loc_C09C26: from_stack_2 = Me.Item(from_stack_1)
  loc_C09C2B: FLdPr var_3B8
  loc_C09C2E:  = Me.Value
  loc_C09C33: FLdPr Me
  loc_C09C36: VCallAd Control_ID_IdRubroMsk
  loc_C09C39: FStAdFunc var_3BC
  loc_C09C3C: FLdPr var_3BC
  loc_C09C3F: LateIdLdVar var_B4 DispID_22 0
  loc_C09C46: PopAd
  loc_C09C48: FLdPr Me
  loc_C09C4B: VCallAd Control_ID_IdRubroMsk
  loc_C09C4E: FStAdFunc var_3C0
  loc_C09C51: FLdPr var_3C0
  loc_C09C54: LateIdLdVar var_108 DispID_22 0
  loc_C09C5B: CStrVarTmp
  loc_C09C5C: CVarStr var_130
  loc_C09C5F: LitVarI2 var_120, 0
  loc_C09C64: FLdRfVar var_B4
  loc_C09C67: CStrVarTmp
  loc_C09C68: FStStrNoPop var_98
  loc_C09C6B: LitStr vbNullString
  loc_C09C6E: EqStr
  loc_C09C70: CVarBoolI2 var_D4
  loc_C09C74: FLdRfVar var_140
  loc_C09C77: ImpAdCallFPR4  = IIf(, , )
  loc_C09C7C: FLdPr Me
  loc_C09C7F: VCallAd Control_ID_IdUbfiMsk
  loc_C09C82: FStAdFunc var_3C4
  loc_C09C85: FLdPr var_3C4
  loc_C09C88: LateIdLdVar var_150 DispID_22 0
  loc_C09C8F: PopAd
  loc_C09C91: FLdPr Me
  loc_C09C94: VCallAd Control_ID_IdUbfiMsk
  loc_C09C97: FStAdFunc var_3D4
  loc_C09C9A: FLdPr var_3D4
  loc_C09C9D: LateIdLdVar var_160 DispID_22 0
  loc_C09CA4: CStrVarTmp
  loc_C09CA5: CVarStr var_180
  loc_C09CA8: LitVarI2 var_170, 0
  loc_C09CAD: FLdRfVar var_150
  loc_C09CB0: CStrVarTmp
  loc_C09CB1: FStStrNoPop var_F8
  loc_C09CB4: LitStr vbNullString
  loc_C09CB7: EqStr
  loc_C09CB9: CVarBoolI2 var_F4
  loc_C09CBD: FLdRfVar var_190
  loc_C09CC0: ImpAdCallFPR4  = IIf(, , )
  loc_C09CC5: FLdPr Me
  loc_C09CC8: VCallAd Control_ID_IdUbfiMsk
  loc_C09CCB: FStAdFunc var_3D8
  loc_C09CCE: FLdPr var_3D8
  loc_C09CD1: LateIdLdVar var_1A0 DispID_22 0
  loc_C09CD8: PopAd
  loc_C09CDA: FLdPr Me
  loc_C09CDD: VCallAd Control_ID_IdUbfiMsk
  loc_C09CE0: FStAdFunc var_3DC
  loc_C09CE3: FLdPr var_3DC
  loc_C09CE6: LateIdLdVar var_1C0 DispID_22 0
  loc_C09CED: PopAd
  loc_C09CEF: FLdRfVar var_3E0
  loc_C09CF2: FLdPr Me
  loc_C09CF5: VCallAd Control_ID_DienNopeTxt
  loc_C09CF8: FStAdFunc var_3E4
  loc_C09CFB: FLdPr var_3E4
  loc_C09CFE:  = Me.Text
  loc_C09D03: FLdZeroAd var_3E0
  loc_C09D06: CVarStr var_1E0
  loc_C09D09: LitVarStr var_230, vbNullString
  loc_C09D0E: FStVarCopyObj var_1D0
  loc_C09D11: FLdRfVar var_1D0
  loc_C09D14: FLdRfVar var_1A0
  loc_C09D17: CStrVarTmp
  loc_C09D18: FStStrNoPop var_3CC
  loc_C09D1B: LitStr vbNullString
  loc_C09D1E: EqStr
  loc_C09D20: FLdRfVar var_1C0
  loc_C09D23: CStrVarTmp
  loc_C09D24: FStStrNoPop var_3D0
  loc_C09D27: LitStr "0"
  loc_C09D2A: EqStr
  loc_C09D2C: OrI4
  loc_C09D2D: CVarBoolI2 var_1F0
  loc_C09D31: FLdRfVar var_200
  loc_C09D34: ImpAdCallFPR4  = IIf(, , )
  loc_C09D39: FLdPr Me
  loc_C09D3C: VCallAd Control_ID_CoinNopeMsk
  loc_C09D3F: FStAdFunc var_3EC
  loc_C09D42: FLdPr var_3EC
  loc_C09D45: LateIdLdVar var_210 DispID_22 0
  loc_C09D4C: PopAd
  loc_C09D4E: FLdPr Me
  loc_C09D51: VCallAd Control_ID_CoinNopeMsk
  loc_C09D54: FStAdFunc var_3F4
  loc_C09D57: FLdPr var_3F4
  loc_C09D5A: LateIdLdVar var_220 DispID_22 0
  loc_C09D61: CStrVarTmp
  loc_C09D62: CVarStr var_250
  loc_C09D65: LitVarStr var_300, "0"
  loc_C09D6A: FStVarCopyObj var_240
  loc_C09D6D: FLdRfVar var_240
  loc_C09D70: FLdRfVar var_210
  loc_C09D73: CStrVarTmp
  loc_C09D74: FStStrNoPop var_3E8
  loc_C09D77: LitStr vbNullString
  loc_C09D7A: EqStr
  loc_C09D7C: CVarBoolI2 var_2C0
  loc_C09D80: FLdRfVar var_260
  loc_C09D83: ImpAdCallFPR4  = IIf(, , )
  loc_C09D88: FLdPr Me
  loc_C09D8B: VCallAd Control_ID_CodiOrgaMsk
  loc_C09D8E: FStAdFunc var_3F8
  loc_C09D91: FLdPr var_3F8
  loc_C09D94: LateIdLdVar var_270 DispID_22 0
  loc_C09D9B: PopAd
  loc_C09D9D: FLdRfVar var_3F0
  loc_C09DA0: FLdPr Me
  loc_C09DA3: VCallAd Control_ID_DetaNopeTxt
  loc_C09DA6: FStAdFunc var_3FC
  loc_C09DA9: FLdPr var_3FC
  loc_C09DAC:  = Me.Text
  loc_C09DB1: FLdPr Me
  loc_C09DB4: VCallAd Control_ID_CodiTicoMsk
  loc_C09DB7: FStAdFunc var_400
  loc_C09DBA: FLdPr var_400
  loc_C09DBD: LateIdLdVar var_280 DispID_22 0
  loc_C09DC4: PopAd
  loc_C09DC6: FLdPr Me
  loc_C09DC9: VCallAd Control_ID_ExorImpuMsk
  loc_C09DCC: FStAdFunc var_404
  loc_C09DCF: FLdPr var_404
  loc_C09DD2: LateIdLdVar var_290 DispID_15 0
  loc_C09DD9: PopAd
  loc_C09DDB: FLdPr Me
  loc_C09DDE: VCallAd Control_ID_FechNopeMsk
  loc_C09DE1: FStAdFunc var_408
  loc_C09DE4: FLdPr var_408
  loc_C09DE7: LateIdLdVar var_2A0 DispID_15 0
  loc_C09DEE: PopAd
  loc_C09DF0: FLdPr Me
  loc_C09DF3: VCallAd Control_ID_FecoNopeMsk
  loc_C09DF6: FStAdFunc var_40C
  loc_C09DF9: FLdPr var_40C
  loc_C09DFC: LateIdLdVar var_2B0 DispID_15 0
  loc_C09E03: PopAd
  loc_C09E05: FLdPr Me
  loc_C09E08: VCallAd Control_ID_FecoHoraMsk
  loc_C09E0B: FStAdFunc var_420
  loc_C09E0E: FLdPr var_420
  loc_C09E11: LateIdLdVar var_2D0 DispID_15 0
  loc_C09E18: PopAd
  loc_C09E1A: FLdRfVar var_10E
  loc_C09E1D: FLdPr Me
  loc_C09E20: VCallAd Control_ID_PubliNopeChk
  loc_C09E23: FStAdFunc var_43C
  loc_C09E26: FLdPr var_43C
  loc_C09E29:  = Me.Value
  loc_C09E2E: LitVarI2 var_2F0, 1
  loc_C09E33: LitVarI2 var_2E0, 0
  loc_C09E38: FLdI2 var_10E
  loc_C09E3B: CI4UI1
  loc_C09E3C: LitI4 0
  loc_C09E41: EqI4
  loc_C09E42: CVarBoolI2 var_340
  loc_C09E46: FLdRfVar var_310
  loc_C09E49: ImpAdCallFPR4  = IIf(, , )
  loc_C09E4E: FLdPr Me
  loc_C09E51: VCallAd Control_ID_FeliNopeMsk
  loc_C09E54: FStAdFunc var_448
  loc_C09E57: FLdPr var_448
  loc_C09E5A: LateIdLdVar var_320 DispID_15 0
  loc_C09E61: PopAd
  loc_C09E63: FLdRfVar var_410
  loc_C09E66: FLdPr Me
  loc_C09E69: VCallAd Control_ID_HoliNopeTxt
  loc_C09E6C: FStAdFunc var_450
  loc_C09E6F: FLdPr var_450
  loc_C09E72:  = Me.Text
  loc_C09E77: FLdPr Me
  loc_C09E7A: VCallAd Control_ID_FeleNopeMsk
  loc_C09E7D: FStAdFunc var_454
  loc_C09E80: FLdPr var_454
  loc_C09E83: LateIdLdVar var_330 DispID_15 0
  loc_C09E8A: PopAd
  loc_C09E8C: FLdRfVar var_414
  loc_C09E8F: FLdPr Me
  loc_C09E92: VCallAd Control_ID_HoleNopeTxt
  loc_C09E95: FStAdFunc var_460
  loc_C09E98: FLdPr var_460
  loc_C09E9B:  = Me.Text
  loc_C09EA0: FLdPr Me
  loc_C09EA3: VCallAd Control_ID_ItemNotaFlex
  loc_C09EA6: FStAdFunc var_474
  loc_C09EA9: FLdPr Me
  loc_C09EAC: VCallAd Control_ID_PlieNopeMsk
  loc_C09EAF: FStAdFunc var_464
  loc_C09EB2: FLdPr var_464
  loc_C09EB5: LateIdLdVar var_350 DispID_22 0
  loc_C09EBC: PopAd
  loc_C09EBE: FLdRfVar var_456
  loc_C09EC1: FLdPr Me
  loc_C09EC4: MemLdR8 global_156
  loc_C09EC7: FLdRfVar var_350
  loc_C09ECA: CStrVarTmp
  loc_C09ECB: FStStrNoPop var_470
  loc_C09ECE: FLdPr Me
  loc_C09ED1: MemLdStr global_84
  loc_C09ED4: FLdZeroAd var_474
  loc_C09ED7: FStAdFunc var_46C
  loc_C09EDA: FLdRfVar var_46C
  loc_C09EDD: ILdRf var_414
  loc_C09EE0: FLdRfVar var_330
  loc_C09EE3: CStrVarTmp
  loc_C09EE4: FStStrNoPop var_468
  loc_C09EE7: ILdRf var_410
  loc_C09EEA: FLdRfVar var_320
  loc_C09EED: CStrVarTmp
  loc_C09EEE: FStStrNoPop var_44C
  loc_C09EF1: FLdRfVar var_310
  loc_C09EF4: CUI1Var
  loc_C09EF6: FLdRfVar var_2D0
  loc_C09EF9: CStrVarTmp
  loc_C09EFA: FStStrNoPop var_444
  loc_C09EFD: FLdRfVar var_2B0
  loc_C09F00: CStrVarTmp
  loc_C09F01: FStStrNoPop var_440
  loc_C09F04: FLdRfVar var_2A0
  loc_C09F07: CStrVarTmp
  loc_C09F08: FStStrNoPop var_438
  loc_C09F0B: FLdRfVar var_290
  loc_C09F0E: CStrVarTmp
  loc_C09F0F: FStStrNoPop var_434
  loc_C09F12: FLdRfVar var_280
  loc_C09F15: CStrVarTmp
  loc_C09F16: FStStrNoPop var_430
  loc_C09F19: CI2Str
  loc_C09F1B: ILdRf var_45C
  loc_C09F1E: ILdRf var_3F0
  loc_C09F21: FLdRfVar var_270
  loc_C09F24: CStrVarTmp
  loc_C09F25: FStStrNoPop var_42C
  loc_C09F28: FLdRfVar var_260
  loc_C09F2B: CStrVarVal var_428
  loc_C09F2F: FLdRfVar var_200
  loc_C09F32: CStrVarVal var_424
  loc_C09F36: FLdRfVar var_190
  loc_C09F39: CStrVarVal var_41C
  loc_C09F3D: FLdRfVar var_140
  loc_C09F40: CStrVarVal var_418
  loc_C09F44: FLdRfVar var_360
  loc_C09F47: CI4Var
  loc_C09F49: FLdPr Me
  loc_C09F4C: MemLdRfVar from_stack_1.global_52
  loc_C09F4F: NewIfNullPr clsnotapedido
  loc_C09F52: from_stack_16v = clsnotapedido.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C09F57: FLdI2 var_456
  loc_C09F5A: FFreeStr var_98 = "": var_F8 = "": var_3CC = "": var_3D0 = "": var_3E8 = "": var_418 = "": var_41C = "": var_424 = "": var_428 = "": var_42C = "": var_3F0 = "": var_430 = "": var_434 = "": var_438 = "": var_440 = "": var_444 = "": var_44C = "": var_410 = "": var_468 = "": var_414 = ""
  loc_C09F87: FFreeAd var_A0 = "": var_10C = "": var_3BC = "": var_3C0 = "": var_3C4 = "": var_3D4 = "": var_3D8 = "": var_3DC = "": var_3E4 = "": var_3EC = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_404 = "": var_408 = "": var_40C = "": var_420 = "": var_43C = "": var_448 = "": var_450 = "": var_454 = "": var_460 = "": var_464 = "": var_3B8 = "": var_46C = ""
  loc_C09FC0: FFreeVar var_330 = "": var_350 = "": var_360 = "": var_140 = "": var_190 = "": var_200 = "": var_260 = "": var_310 = "": var_B4 = "": var_108 = "": var_D4 = "": var_120 = "": var_130 = "": var_150 = "": var_160 = "": var_F4 = "": var_170 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_1D0 = "": var_1E0 = "": var_210 = "": var_220 = "": var_2C0 = "": var_240 = "": var_250 = "": var_270 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2D0 = "": var_340 = "": var_2E0 = "": var_2F0 = ""
  loc_C0A00F: BranchF loc_C0A2B5
  loc_C0A012: FLdRfVar var_B4
  loc_C0A015: FLdRfVar var_3B8
  loc_C0A018: LitVarStr var_C4, "CodiNope"
  loc_C0A01D: PopAdLdVar
  loc_C0A01E: FLdRfVar var_10C
  loc_C0A021: FLdRfVar var_A0
  loc_C0A024: FLdPr Me
  loc_C0A027: MemLdRfVar from_stack_1.global_52
  loc_C0A02A: NewIfNullPr clsnotapedido
  loc_C0A02D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C0A032: FLdPr var_A0
  loc_C0A035:  = Me.Fields
  loc_C0A03A: FLdPr var_10C
  loc_C0A03D: from_stack_2 = Me.Item(from_stack_1)
  loc_C0A042: FLdPr var_3B8
  loc_C0A045:  = Me.Value
  loc_C0A04A: FLdRfVar var_B4
  loc_C0A04D: CI4Var
  loc_C0A04F: FLdPr Me
  loc_C0A052: MemStI4 global_88
  loc_C0A055: FFreeAd var_A0 = "": var_10C = ""
  loc_C0A05E: FFree1Var var_B4 = ""
  loc_C0A061: LitI4 0
  loc_C0A066: LitStr "Se MODIFICÓ la Nota de Pedido: "
  loc_C0A069: FLdPr Me
  loc_C0A06C: MemLdStr global_88
  loc_C0A06F: CStrI4
  loc_C0A071: FStStrNoPop var_98
  loc_C0A074: ConcatStr
  loc_C0A075: FStStrNoPop var_F8
  loc_C0A078: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C0A07D: FFreeStr var_98 = ""
  loc_C0A084: FLdRfVar var_98
  loc_C0A087: FLdPr Me
  loc_C0A08A: MemLdStr global_88
  loc_C0A08D: FLdPr Me
  loc_C0A090: MemLdRfVar from_stack_1.global_52
  loc_C0A093: NewIfNullPr clsnotapedido
  loc_C0A096: from_stack_2v = clsnotapedido.TieneCotizacion(from_stack_1v)
  loc_C0A09B: ILdRf var_98
  loc_C0A09E: LitStr vbNullString
  loc_C0A0A1: NeStr
  loc_C0A0A3: FFree1Str var_98
  loc_C0A0A6: BranchF loc_C0A102
  loc_C0A0A9: LitI2_Byte &HFF
  loc_C0A0AB: PopTmpLdAd2 var_456
  loc_C0A0AE: LitI2_Byte 0
  loc_C0A0B0: PopTmpLdAd2 var_10E
  loc_C0A0B3: LitStr "¿Desea ACTUALIZAR la Cotización?"
  loc_C0A0B6: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C0A0BB: CI4UI1
  loc_C0A0BC: LitI4 6
  loc_C0A0C1: EqI4
  loc_C0A0C2: BranchF loc_C0A102
  loc_C0A0C5: FLdPr Me
  loc_C0A0C8: MemLdStr global_88
  loc_C0A0CB: CStrI4
  loc_C0A0CD: FStStrNoPop var_98
  loc_C0A0D0: ImpAdLdRf MemVar_C3D800
  loc_C0A0D3: NewIfNullPr dlgCreaCotizacion
  loc_C0A0D6: VCallAd Control_ID_CodiNopeLbl
  loc_C0A0D9: FStAdFunc var_A0
  loc_C0A0DC: FLdPr var_A0
  loc_C0A0DF: dlgCreaCotizacion.Label.Caption = from_stack_1
  loc_C0A0E4: FFree1Str var_98
  loc_C0A0E7: FFree1Ad var_A0
  loc_C0A0EA: LitVar_Missing var_D4
  loc_C0A0ED: PopAdLdVar
  loc_C0A0EE: LitVarI4
  loc_C0A0F6: PopAdLdVar
  loc_C0A0F7: ImpAdLdRf MemVar_C3D800
  loc_C0A0FA: NewIfNullPr dlgCreaCotizacion
  loc_C0A0FD: dlgCreaCotizacion.Show from_stack_1, from_stack_2
  loc_C0A102: LitStr "Municipalidad de Guaymallén"
  loc_C0A105: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C0A108: EqStr
  loc_C0A10A: BranchF loc_C0A2B5
  loc_C0A10D: FLdPr Me
  loc_C0A110: MemLdRfVar from_stack_1.global_108
  loc_C0A113: NewIfNullRf
  loc_C0A117: ImpAdLdI4 MemVar_C3D03C
  loc_C0A11A: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_C0A11F: FLdRfVar var_B4
  loc_C0A122: FLdRfVar var_3B8
  loc_C0A125: LitVarStr var_C4, "CodiNope"
  loc_C0A12A: PopAdLdVar
  loc_C0A12B: FLdRfVar var_10C
  loc_C0A12E: FLdRfVar var_A0
  loc_C0A131: FLdPr Me
  loc_C0A134: MemLdRfVar from_stack_1.global_52
  loc_C0A137: NewIfNullPr clsnotapedido
  loc_C0A13A: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C0A13F: FLdPr var_A0
  loc_C0A142:  = Me.Fields
  loc_C0A147: FLdPr var_10C
  loc_C0A14A: from_stack_2 = Me.Item(from_stack_1)
  loc_C0A14F: FLdPr var_3B8
  loc_C0A152:  = Me.Value
  loc_C0A157: FLdPr Me
  loc_C0A15A: MemLdRfVar from_stack_1.global_112
  loc_C0A15D: NewIfNullRf
  loc_C0A161: FLdRfVar var_B4
  loc_C0A164: CStrVarTmp
  loc_C0A165: FStStrNoPop var_98
  loc_C0A168: ImpAdLdI2 MemVar_C3D064
  loc_C0A16B: ImpAdCallFPR4 Proc_259_17_B74BCC(, , )
  loc_C0A170: FFree1Str var_98
  loc_C0A173: FFreeAd var_A0 = "": var_10C = ""
  loc_C0A17C: FFree1Var var_B4 = ""
  loc_C0A17F: FLdRfVar var_98
  loc_C0A182: FLdPr Me
  loc_C0A185: MemLdRfVar from_stack_1.global_112
  loc_C0A188: NewIfNullPr tblnotapedido
  loc_C0A18B: from_stack_1v = tblnotapedido.CodiTicoGet()
  loc_C0A190: FLdPr Me
  loc_C0A193: MemLdRfVar from_stack_1.global_116
  loc_C0A196: NewIfNullRf
  loc_C0A19A: ILdRf var_98
  loc_C0A19D: ImpAdCallFPR4 Proc_259_32_AE0B0C(, )
  loc_C0A1A2: FFree1Str var_98
  loc_C0A1A5: FLdRfVar var_98
  loc_C0A1A8: FLdPr Me
  loc_C0A1AB: MemLdRfVar from_stack_1.global_116
  loc_C0A1AE: NewIfNullPr tbltipocompra
  loc_C0A1B1: from_stack_1v = tbltipocompra.MareTicoGet()
  loc_C0A1B6: FLdRfVar var_F8
  loc_C0A1B9: FLdPr Me
  loc_C0A1BC: MemLdRfVar from_stack_1.global_116
  loc_C0A1BF: NewIfNullPr tbltipocompra
  loc_C0A1C2: from_stack_1v = tbltipocompra.DetaPersGet()
  loc_C0A1C7: FLdRfVar var_3CC
  loc_C0A1CA: FLdPr Me
  loc_C0A1CD: MemLdRfVar from_stack_1.global_116
  loc_C0A1D0: NewIfNullPr tbltipocompra
  loc_C0A1D3: from_stack_1v = tbltipocompra.DetaTicoGet()
  loc_C0A1D8: FLdRfVar var_3E0
  loc_C0A1DB: FLdPr Me
  loc_C0A1DE: MemLdRfVar from_stack_1.global_112
  loc_C0A1E1: NewIfNullPr tblnotapedido
  loc_C0A1E4: from_stack_1v = tblnotapedido.CodiNopeGet()
  loc_C0A1E9: FLdRfVar var_3F0
  loc_C0A1EC: FLdPr Me
  loc_C0A1EF: MemLdRfVar from_stack_1.global_112
  loc_C0A1F2: NewIfNullPr tblnotapedido
  loc_C0A1F5: from_stack_1v = tblnotapedido.CodiOrgaGet()
  loc_C0A1FA: FLdRfVar var_414
  loc_C0A1FD: FLdPr Me
  loc_C0A200: MemLdRfVar from_stack_1.global_112
  loc_C0A203: NewIfNullPr tblnotapedido
  loc_C0A206: from_stack_1v = tblnotapedido.DetaOrgaGet()
  loc_C0A20B: FLdRfVar var_424
  loc_C0A20E: FLdPr Me
  loc_C0A211: MemLdRfVar from_stack_1.global_116
  loc_C0A214: NewIfNullPr tbltipocompra
  loc_C0A217: from_stack_1v = tbltipocompra.DetaTicoGet()
  loc_C0A21C: FLdRfVar var_B4
  loc_C0A21F: ImpAdCallFPR4  = Now
  loc_C0A224: FLdPr Me
  loc_C0A227: MemLdRfVar from_stack_1.global_112
  loc_C0A22A: NewIfNullRf
  loc_C0A22E: LitStr "Por este medio se le informa que el sector "
  loc_C0A231: ILdRf var_3F0
  loc_C0A234: ConcatStr
  loc_C0A235: FStStrNoPop var_410
  loc_C0A238: LitStr " - "
  loc_C0A23B: ConcatStr
  loc_C0A23C: FStStrNoPop var_418
  loc_C0A23F: ILdRf var_414
  loc_C0A242: ConcatStr
  loc_C0A243: FStStrNoPop var_41C
  loc_C0A246: LitStr " a realizado una Solicitud de "
  loc_C0A249: ConcatStr
  loc_C0A24A: FStStrNoPop var_428
  loc_C0A24D: ILdRf var_424
  loc_C0A250: ConcatStr
  loc_C0A251: FStStrNoPop var_42C
  loc_C0A254: LitStr ".<br>Enviado: "
  loc_C0A257: ConcatStr
  loc_C0A258: CVarStr var_108
  loc_C0A25B: FLdRfVar var_B4
  loc_C0A25E: ConcatVar var_120
  loc_C0A262: CStrVarVal var_434
  loc_C0A266: LitStr "Solicitud de "
  loc_C0A269: ILdRf var_3CC
  loc_C0A26C: ConcatStr
  loc_C0A26D: FStStrNoPop var_3D0
  loc_C0A270: LitStr " número "
  loc_C0A273: ConcatStr
  loc_C0A274: FStStrNoPop var_3E8
  loc_C0A277: ILdRf var_3E0
  loc_C0A27A: ConcatStr
  loc_C0A27B: FStStrNoPop var_430
  loc_C0A27E: ILdRf var_F8
  loc_C0A281: ILdRf var_98
  loc_C0A284: ImpAdCallFPR4 Proc_261_72_A07AE8(, , , , )
  loc_C0A289: FFreeStr var_3CC = "": var_3D0 = "": var_3E8 = "": var_3E0 = "": var_3F0 = "": var_410 = "": var_418 = "": var_414 = "": var_41C = "": var_428 = "": var_424 = "": var_42C = "": var_98 = "": var_F8 = "": var_430 = ""
  loc_C0A2AC: FFreeVar var_108 = "": var_B4 = ""
  loc_C0A2B5: Branch loc_C0A35B
  loc_C0A2B8: FLdUI1
  loc_C0A2BC: LitI2_Byte 3
  loc_C0A2BE: EqI2
  loc_C0A2BF: BranchF loc_C0A35B
  loc_C0A2C2: FLdRfVar var_108
  loc_C0A2C5: FLdRfVar var_3B8
  loc_C0A2C8: LitVarStr var_C4, "CodiNope"
  loc_C0A2CD: PopAdLdVar
  loc_C0A2CE: FLdRfVar var_10C
  loc_C0A2D1: FLdRfVar var_A0
  loc_C0A2D4: FLdPr Me
  loc_C0A2D7: MemLdRfVar from_stack_1.global_52
  loc_C0A2DA: NewIfNullPr clsnotapedido
  loc_C0A2DD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C0A2E2: FLdPr var_A0
  loc_C0A2E5:  = Me.Fields
  loc_C0A2EA: FLdPr var_10C
  loc_C0A2ED: from_stack_2 = Me.Item(from_stack_1)
  loc_C0A2F2: FLdPr var_3B8
  loc_C0A2F5:  = Me.Value
  loc_C0A2FA: FLdPr Me
  loc_C0A2FD: VCallAd Control_ID_FeanNopeMsk
  loc_C0A300: FStAdFunc var_3BC
  loc_C0A303: FLdPr var_3BC
  loc_C0A306: LateIdLdVar var_B4 DispID_15 0
  loc_C0A30D: PopAd
  loc_C0A30F: FLdRfVar var_98
  loc_C0A312: FLdPr Me
  loc_C0A315: VCallAd Control_ID_BajaMotiTxt
  loc_C0A318: FStAdFunc var_3C0
  loc_C0A31B: FLdPr var_3C0
  loc_C0A31E:  = Me.Text
  loc_C0A323: ILdRf var_98
  loc_C0A326: FLdRfVar var_B4
  loc_C0A329: CStrVarTmp
  loc_C0A32A: FStStrNoPop var_F8
  loc_C0A32D: FLdRfVar var_108
  loc_C0A330: CI4Var
  loc_C0A332: FLdPr Me
  loc_C0A335: MemLdRfVar from_stack_1.global_52
  loc_C0A338: NewIfNullPr clsnotapedido
  loc_C0A33B: Call clsnotapedido.Anular(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C0A340: FFreeStr var_F8 = ""
  loc_C0A347: FFreeAd var_A0 = "": var_10C = "": var_3BC = "": var_3C0 = ""
  loc_C0A354: FFreeVar var_B4 = ""
  loc_C0A35B: Call cmdCancelar_Click()
  loc_C0A360: Branch loc_C0A47F
  loc_C0A363: ILdRf var_9C
  loc_C0A366: LitStr "btnCancelar"
  loc_C0A369: EqStr
  loc_C0A36B: BranchF loc_C0A376
  loc_C0A36E: Call cmdCancelar_Click()
  loc_C0A373: Branch loc_C0A47F
  loc_C0A376: ILdRf var_9C
  loc_C0A379: LitStr "btnPrimero"
  loc_C0A37C: EqStr
  loc_C0A37E: BranchF loc_C0A392
  loc_C0A381: FLdPr Me
  loc_C0A384: MemLdRfVar from_stack_1.global_52
  loc_C0A387: NewIfNullPr clsnotapedido
  loc_C0A38A: Call clsnotapedido.MoveFirst()
  loc_C0A38F: Branch loc_C0A47F
  loc_C0A392: ILdRf var_9C
  loc_C0A395: LitStr "btnAnterior"
  loc_C0A398: EqStr
  loc_C0A39A: BranchF loc_C0A3AE
  loc_C0A39D: FLdPr Me
  loc_C0A3A0: MemLdRfVar from_stack_1.global_52
  loc_C0A3A3: NewIfNullPr clsnotapedido
  loc_C0A3A6: Call clsnotapedido.MovePrevious()
  loc_C0A3AB: Branch loc_C0A47F
  loc_C0A3AE: ILdRf var_9C
  loc_C0A3B1: LitStr "btnSiguiente"
  loc_C0A3B4: EqStr
  loc_C0A3B6: BranchF loc_C0A3CA
  loc_C0A3B9: FLdPr Me
  loc_C0A3BC: MemLdRfVar from_stack_1.global_52
  loc_C0A3BF: NewIfNullPr clsnotapedido
  loc_C0A3C2: Call clsnotapedido.MoveNext()
  loc_C0A3C7: Branch loc_C0A47F
  loc_C0A3CA: ILdRf var_9C
  loc_C0A3CD: LitStr "btnUltimo"
  loc_C0A3D0: EqStr
  loc_C0A3D2: BranchF loc_C0A3E6
  loc_C0A3D5: FLdPr Me
  loc_C0A3D8: MemLdRfVar from_stack_1.global_52
  loc_C0A3DB: NewIfNullPr clsnotapedido
  loc_C0A3DE: Call clsnotapedido.MoveLast()
  loc_C0A3E3: Branch loc_C0A47F
  loc_C0A3E6: ILdRf var_9C
  loc_C0A3E9: LitStr "btnFiltrar"
  loc_C0A3EC: EqStr
  loc_C0A3EE: BranchF loc_C0A3F4
  loc_C0A3F1: Branch loc_C0A47F
  loc_C0A3F4: ILdRf var_9C
  loc_C0A3F7: LitStr "btnBuscar"
  loc_C0A3FA: EqStr
  loc_C0A3FC: BranchF loc_C0A402
  loc_C0A3FF: Branch loc_C0A47F
  loc_C0A402: ILdRf var_9C
  loc_C0A405: LitStr "btnImprimir"
  loc_C0A408: EqStr
  loc_C0A40A: BranchF loc_C0A428
  loc_C0A40D: LitVar_Missing var_D4
  loc_C0A410: PopAdLdVar
  loc_C0A411: LitVarI4
  loc_C0A419: PopAdLdVar
  loc_C0A41A: ImpAdLdRf MemVar_C3DC64
  loc_C0A41D: NewIfNullPr rptListadodeNotasdePedido
  loc_C0A420: rptListadodeNotasdePedido.Show from_stack_1, from_stack_2
  loc_C0A425: Branch loc_C0A47F
  loc_C0A428: ILdRf var_9C
  loc_C0A42B: LitStr "btnAyuda"
  loc_C0A42E: EqStr
  loc_C0A430: BranchF loc_C0A45F
  loc_C0A433: LitVar_Missing var_130
  loc_C0A436: LitVar_Missing var_120
  loc_C0A439: LitVar_Missing var_108
  loc_C0A43C: LitI4 0
  loc_C0A441: LitVarStr var_C4, "Opcion no disponible en esta version."
  loc_C0A446: FStVarCopyObj var_B4
  loc_C0A449: FLdRfVar var_B4
  loc_C0A44C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C0A451: FFreeVar var_B4 = "": var_108 = "": var_120 = ""
  loc_C0A45C: Branch loc_C0A47F
  loc_C0A45F: ILdRf var_9C
  loc_C0A462: LitStr "btnSalir"
  loc_C0A465: EqStr
  loc_C0A467: BranchF loc_C0A47F
  loc_C0A46A: ILdRf Me
  loc_C0A46D: FStAdNoPop
  loc_C0A471: ImpAdLdRf MemVar_C44F9C
  loc_C0A474: NewIfNullPr Me
  loc_C0A477: Me.Global.Unload from_stack_1
  loc_C0A47C: FFree1Ad var_A0
  loc_C0A47F: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94B2D0
  'Data Table: 4FD0E0
  loc_94B2BC: FLdPr Me
  loc_94B2BF: VCallAd Control_ID_FiltroMsk
  loc_94B2C2: CVarAd
  loc_94B2C6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B2CB: FFree1Var var_94 = ""
  loc_94B2CE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'AC6A18
  'Data Table: 4FD0E0
  loc_AC640C: ILdRf Me
  loc_AC640F: CastAd
  loc_AC6412: FStAdFunc var_88
  loc_AC6415: FLdRfVar var_88
  loc_AC6418: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_AC641D: FFree1Ad var_88
  loc_AC6420: FLdPr Me
  loc_AC6423: VCallAd Control_ID_FiltroMsk
  loc_AC6426: FStAdFunc var_88
  loc_AC6429: FLdPr var_88
  loc_AC642C: LateIdLdVar var_98 DispID_22 0
  loc_AC6433: CStrVarTmp
  loc_AC6434: FStStrNoPop var_9C
  loc_AC6437: ImpAdCallI2 Trim$()
  loc_AC643C: FStStrNoPop var_A0
  loc_AC643F: LitStr vbNullString
  loc_AC6442: NeStr
  loc_AC6444: FFreeStr var_9C = ""
  loc_AC644B: FFree1Ad var_88
  loc_AC644E: FFree1Var var_98 = ""
  loc_AC6451: BranchF loc_AC68E4
  loc_AC6454: FLdRfVar var_A2
  loc_AC6457: FLdPr Me
  loc_AC645A: VCallAd Control_ID_FiltroCbo
  loc_AC645D: FStAdFunc var_88
  loc_AC6460: FLdPr var_88
  loc_AC6463:  = Me.ListIndex
  loc_AC6468: FLdI2 var_A2
  loc_AC646B: LitI2_Byte 0
  loc_AC646D: EqI2
  loc_AC646E: FFree1Ad var_88
  loc_AC6471: BranchF loc_AC64E3
  loc_AC6474: LitStr "CodiNope = "
  loc_AC6477: FLdPr Me
  loc_AC647A: VCallAd Control_ID_FiltroMsk
  loc_AC647D: FStAdFunc var_88
  loc_AC6480: FLdPr var_88
  loc_AC6483: LateIdLdVar var_98 DispID_22 0
  loc_AC648A: CStrVarTmp
  loc_AC648B: FStStrNoPop var_9C
  loc_AC648E: ConcatStr
  loc_AC648F: PopTmpLdAdStr
  loc_AC6493: FLdPr Me
  loc_AC6496: MemLdRfVar from_stack_1.global_52
  loc_AC6499: NewIfNullPr clsnotapedido
  loc_AC649C: Call clsnotapedido.Filter(from_stack_1v)
  loc_AC64A1: FFreeStr var_9C = ""
  loc_AC64A8: FFree1Ad var_88
  loc_AC64AB: FFree1Var var_98 = ""
  loc_AC64AE: LitStr "número de la Nota de Pedido es igual a:"
  loc_AC64B1: FLdPr Me
  loc_AC64B4: VCallAd Control_ID_FiltroMsk
  loc_AC64B7: FStAdFunc var_88
  loc_AC64BA: FLdPr var_88
  loc_AC64BD: LateIdLdVar var_98 DispID_22 0
  loc_AC64C4: CStrVarTmp
  loc_AC64C5: FStStrNoPop var_9C
  loc_AC64C8: ConcatStr
  loc_AC64C9: FStStrNoPop var_A0
  loc_AC64CC: FLdPr Me
  loc_AC64CF: MemStStrCopy
  loc_AC64D3: FFreeStr var_9C = ""
  loc_AC64DA: FFree1Ad var_88
  loc_AC64DD: FFree1Var var_98 = ""
  loc_AC64E0: Branch loc_AC68E1
  loc_AC64E3: FLdRfVar var_A2
  loc_AC64E6: FLdPr Me
  loc_AC64E9: VCallAd Control_ID_FiltroCbo
  loc_AC64EC: FStAdFunc var_88
  loc_AC64EF: FLdPr var_88
  loc_AC64F2:  = Me.ListIndex
  loc_AC64F7: FLdI2 var_A2
  loc_AC64FA: LitI2_Byte 1
  loc_AC64FC: EqI2
  loc_AC64FD: FFree1Ad var_88
  loc_AC6500: BranchF loc_AC657B
  loc_AC6503: LitStr "DetaNope LIKE '" & Chr(37)
  loc_AC6506: FLdPr Me
  loc_AC6509: VCallAd Control_ID_FiltroMsk
  loc_AC650C: FStAdFunc var_88
  loc_AC650F: FLdPr var_88
  loc_AC6512: LateIdLdVar var_98 DispID_22 0
  loc_AC6519: CStrVarTmp
  loc_AC651A: FStStrNoPop var_9C
  loc_AC651D: ConcatStr
  loc_AC651E: FStStrNoPop var_A0
  loc_AC6521: LitStr Chr(37) & "'"
  loc_AC6524: ConcatStr
  loc_AC6525: PopTmpLdAdStr
  loc_AC6529: FLdPr Me
  loc_AC652C: MemLdRfVar from_stack_1.global_52
  loc_AC652F: NewIfNullPr clsnotapedido
  loc_AC6532: Call clsnotapedido.Filter(from_stack_1v)
  loc_AC6537: FFreeStr var_9C = "": var_A0 = ""
  loc_AC6540: FFree1Ad var_88
  loc_AC6543: FFree1Var var_98 = ""
  loc_AC6546: LitStr "detalle de la Nota de Pedido contiene: "
  loc_AC6549: FLdPr Me
  loc_AC654C: VCallAd Control_ID_FiltroMsk
  loc_AC654F: FStAdFunc var_88
  loc_AC6552: FLdPr var_88
  loc_AC6555: LateIdLdVar var_98 DispID_22 0
  loc_AC655C: CStrVarTmp
  loc_AC655D: FStStrNoPop var_9C
  loc_AC6560: ConcatStr
  loc_AC6561: FStStrNoPop var_A0
  loc_AC6564: FLdPr Me
  loc_AC6567: MemStStrCopy
  loc_AC656B: FFreeStr var_9C = ""
  loc_AC6572: FFree1Ad var_88
  loc_AC6575: FFree1Var var_98 = ""
  loc_AC6578: Branch loc_AC68E1
  loc_AC657B: FLdRfVar var_A2
  loc_AC657E: FLdPr Me
  loc_AC6581: VCallAd Control_ID_FiltroCbo
  loc_AC6584: FStAdFunc var_88
  loc_AC6587: FLdPr var_88
  loc_AC658A:  = Me.ListIndex
  loc_AC658F: FLdI2 var_A2
  loc_AC6592: LitI2_Byte 2
  loc_AC6594: EqI2
  loc_AC6595: FFree1Ad var_88
  loc_AC6598: BranchF loc_AC6613
  loc_AC659B: LitStr "CodiOrga LIKE '"
  loc_AC659E: FLdPr Me
  loc_AC65A1: VCallAd Control_ID_FiltroMsk
  loc_AC65A4: FStAdFunc var_88
  loc_AC65A7: FLdPr var_88
  loc_AC65AA: LateIdLdVar var_98 DispID_22 0
  loc_AC65B1: CStrVarTmp
  loc_AC65B2: FStStrNoPop var_9C
  loc_AC65B5: ConcatStr
  loc_AC65B6: FStStrNoPop var_A0
  loc_AC65B9: LitStr Chr(37) & "'"
  loc_AC65BC: ConcatStr
  loc_AC65BD: PopTmpLdAdStr
  loc_AC65C1: FLdPr Me
  loc_AC65C4: MemLdRfVar from_stack_1.global_52
  loc_AC65C7: NewIfNullPr clsnotapedido
  loc_AC65CA: Call clsnotapedido.Filter(from_stack_1v)
  loc_AC65CF: FFreeStr var_9C = "": var_A0 = ""
  loc_AC65D8: FFree1Ad var_88
  loc_AC65DB: FFree1Var var_98 = ""
  loc_AC65DE: LitStr "Organigrama Solicitante comience con: "
  loc_AC65E1: FLdPr Me
  loc_AC65E4: VCallAd Control_ID_FiltroMsk
  loc_AC65E7: FStAdFunc var_88
  loc_AC65EA: FLdPr var_88
  loc_AC65ED: LateIdLdVar var_98 DispID_22 0
  loc_AC65F4: CStrVarTmp
  loc_AC65F5: FStStrNoPop var_9C
  loc_AC65F8: ConcatStr
  loc_AC65F9: FStStrNoPop var_A0
  loc_AC65FC: FLdPr Me
  loc_AC65FF: MemStStrCopy
  loc_AC6603: FFreeStr var_9C = ""
  loc_AC660A: FFree1Ad var_88
  loc_AC660D: FFree1Var var_98 = ""
  loc_AC6610: Branch loc_AC68E1
  loc_AC6613: FLdRfVar var_A2
  loc_AC6616: FLdPr Me
  loc_AC6619: VCallAd Control_ID_FiltroCbo
  loc_AC661C: FStAdFunc var_88
  loc_AC661F: FLdPr var_88
  loc_AC6622:  = Me.ListIndex
  loc_AC6627: FLdI2 var_A2
  loc_AC662A: LitI2_Byte 3
  loc_AC662C: EqI2
  loc_AC662D: FFree1Ad var_88
  loc_AC6630: BranchF loc_AC66AB
  loc_AC6633: LitStr "DetaOrga LIKE '" & Chr(37)
  loc_AC6636: FLdPr Me
  loc_AC6639: VCallAd Control_ID_FiltroMsk
  loc_AC663C: FStAdFunc var_88
  loc_AC663F: FLdPr var_88
  loc_AC6642: LateIdLdVar var_98 DispID_22 0
  loc_AC6649: CStrVarTmp
  loc_AC664A: FStStrNoPop var_9C
  loc_AC664D: ConcatStr
  loc_AC664E: FStStrNoPop var_A0
  loc_AC6651: LitStr Chr(37) & "'"
  loc_AC6654: ConcatStr
  loc_AC6655: PopTmpLdAdStr
  loc_AC6659: FLdPr Me
  loc_AC665C: MemLdRfVar from_stack_1.global_52
  loc_AC665F: NewIfNullPr clsnotapedido
  loc_AC6662: Call clsnotapedido.Filter(from_stack_1v)
  loc_AC6667: FFreeStr var_9C = "": var_A0 = ""
  loc_AC6670: FFree1Ad var_88
  loc_AC6673: FFree1Var var_98 = ""
  loc_AC6676: LitStr "detalle del Organigrama Solicitante contiene: "
  loc_AC6679: FLdPr Me
  loc_AC667C: VCallAd Control_ID_FiltroMsk
  loc_AC667F: FStAdFunc var_88
  loc_AC6682: FLdPr var_88
  loc_AC6685: LateIdLdVar var_98 DispID_22 0
  loc_AC668C: CStrVarTmp
  loc_AC668D: FStStrNoPop var_9C
  loc_AC6690: ConcatStr
  loc_AC6691: FStStrNoPop var_A0
  loc_AC6694: FLdPr Me
  loc_AC6697: MemStStrCopy
  loc_AC669B: FFreeStr var_9C = ""
  loc_AC66A2: FFree1Ad var_88
  loc_AC66A5: FFree1Var var_98 = ""
  loc_AC66A8: Branch loc_AC68E1
  loc_AC66AB: FLdRfVar var_A2
  loc_AC66AE: FLdPr Me
  loc_AC66B1: VCallAd Control_ID_FiltroCbo
  loc_AC66B4: FStAdFunc var_88
  loc_AC66B7: FLdPr var_88
  loc_AC66BA:  = Me.ListIndex
  loc_AC66BF: FLdI2 var_A2
  loc_AC66C2: LitI2_Byte 4
  loc_AC66C4: EqI2
  loc_AC66C5: FFree1Ad var_88
  loc_AC66C8: BranchF loc_AC6743
  loc_AC66CB: LitStr "ExpeImpu LIKE '"
  loc_AC66CE: FLdPr Me
  loc_AC66D1: VCallAd Control_ID_FiltroMsk
  loc_AC66D4: FStAdFunc var_88
  loc_AC66D7: FLdPr var_88
  loc_AC66DA: LateIdLdVar var_98 DispID_22 0
  loc_AC66E1: CStrVarTmp
  loc_AC66E2: FStStrNoPop var_9C
  loc_AC66E5: ConcatStr
  loc_AC66E6: FStStrNoPop var_A0
  loc_AC66E9: LitStr Chr(37) & "'"
  loc_AC66EC: ConcatStr
  loc_AC66ED: PopTmpLdAdStr
  loc_AC66F1: FLdPr Me
  loc_AC66F4: MemLdRfVar from_stack_1.global_52
  loc_AC66F7: NewIfNullPr clsnotapedido
  loc_AC66FA: Call clsnotapedido.Filter(from_stack_1v)
  loc_AC66FF: FFreeStr var_9C = "": var_A0 = ""
  loc_AC6708: FFree1Ad var_88
  loc_AC670B: FFree1Var var_98 = ""
  loc_AC670E: LitStr "Expediente comience con: "
  loc_AC6711: FLdPr Me
  loc_AC6714: VCallAd Control_ID_FiltroMsk
  loc_AC6717: FStAdFunc var_88
  loc_AC671A: FLdPr var_88
  loc_AC671D: LateIdLdVar var_98 DispID_22 0
  loc_AC6724: CStrVarTmp
  loc_AC6725: FStStrNoPop var_9C
  loc_AC6728: ConcatStr
  loc_AC6729: FStStrNoPop var_A0
  loc_AC672C: FLdPr Me
  loc_AC672F: MemStStrCopy
  loc_AC6733: FFreeStr var_9C = ""
  loc_AC673A: FFree1Ad var_88
  loc_AC673D: FFree1Var var_98 = ""
  loc_AC6740: Branch loc_AC68E1
  loc_AC6743: FLdRfVar var_A2
  loc_AC6746: FLdPr Me
  loc_AC6749: VCallAd Control_ID_FiltroCbo
  loc_AC674C: FStAdFunc var_88
  loc_AC674F: FLdPr var_88
  loc_AC6752:  = Me.ListIndex
  loc_AC6757: FLdI2 var_A2
  loc_AC675A: LitI2_Byte 5
  loc_AC675C: EqI2
  loc_AC675D: FFree1Ad var_88
  loc_AC6760: BranchF loc_AC684C
  loc_AC6763: LitStr "Municipalidad de Guaymallén"
  loc_AC6766: LitStr "Municipalidad de Maipú"
  loc_AC6769: EqStr
  loc_AC676B: BranchF loc_AC67DD
  loc_AC676E: LitStr "CoinNope = "
  loc_AC6771: FLdPr Me
  loc_AC6774: VCallAd Control_ID_FiltroMsk
  loc_AC6777: FStAdFunc var_88
  loc_AC677A: FLdPr var_88
  loc_AC677D: LateIdLdVar var_98 DispID_22 0
  loc_AC6784: CStrVarTmp
  loc_AC6785: FStStrNoPop var_9C
  loc_AC6788: ConcatStr
  loc_AC6789: PopTmpLdAdStr
  loc_AC678D: FLdPr Me
  loc_AC6790: MemLdRfVar from_stack_1.global_52
  loc_AC6793: NewIfNullPr clsnotapedido
  loc_AC6796: Call clsnotapedido.Filter(from_stack_1v)
  loc_AC679B: FFreeStr var_9C = ""
  loc_AC67A2: FFree1Ad var_88
  loc_AC67A5: FFree1Var var_98 = ""
  loc_AC67A8: LitStr "NP interna igual a:"
  loc_AC67AB: FLdPr Me
  loc_AC67AE: VCallAd Control_ID_FiltroMsk
  loc_AC67B1: FStAdFunc var_88
  loc_AC67B4: FLdPr var_88
  loc_AC67B7: LateIdLdVar var_98 DispID_22 0
  loc_AC67BE: CStrVarTmp
  loc_AC67BF: FStStrNoPop var_9C
  loc_AC67C2: ConcatStr
  loc_AC67C3: FStStrNoPop var_A0
  loc_AC67C6: FLdPr Me
  loc_AC67C9: MemStStrCopy
  loc_AC67CD: FFreeStr var_9C = ""
  loc_AC67D4: FFree1Ad var_88
  loc_AC67D7: FFree1Var var_98 = ""
  loc_AC67DA: Branch loc_AC6849
  loc_AC67DD: LitStr "CodiTico = "
  loc_AC67E0: FLdPr Me
  loc_AC67E3: VCallAd Control_ID_FiltroMsk
  loc_AC67E6: FStAdFunc var_88
  loc_AC67E9: FLdPr var_88
  loc_AC67EC: LateIdLdVar var_98 DispID_22 0
  loc_AC67F3: CStrVarTmp
  loc_AC67F4: FStStrNoPop var_9C
  loc_AC67F7: ConcatStr
  loc_AC67F8: PopTmpLdAdStr
  loc_AC67FC: FLdPr Me
  loc_AC67FF: MemLdRfVar from_stack_1.global_52
  loc_AC6802: NewIfNullPr clsnotapedido
  loc_AC6805: Call clsnotapedido.Filter(from_stack_1v)
  loc_AC680A: FFreeStr var_9C = ""
  loc_AC6811: FFree1Ad var_88
  loc_AC6814: FFree1Var var_98 = ""
  loc_AC6817: LitStr "Tipo de Compra igual a:"
  loc_AC681A: FLdPr Me
  loc_AC681D: VCallAd Control_ID_FiltroMsk
  loc_AC6820: FStAdFunc var_88
  loc_AC6823: FLdPr var_88
  loc_AC6826: LateIdLdVar var_98 DispID_22 0
  loc_AC682D: CStrVarTmp
  loc_AC682E: FStStrNoPop var_9C
  loc_AC6831: ConcatStr
  loc_AC6832: FStStrNoPop var_A0
  loc_AC6835: FLdPr Me
  loc_AC6838: MemStStrCopy
  loc_AC683C: FFreeStr var_9C = ""
  loc_AC6843: FFree1Ad var_88
  loc_AC6846: FFree1Var var_98 = ""
  loc_AC6849: Branch loc_AC68E1
  loc_AC684C: FLdRfVar var_A2
  loc_AC684F: FLdPr Me
  loc_AC6852: VCallAd Control_ID_FiltroCbo
  loc_AC6855: FStAdFunc var_88
  loc_AC6858: FLdPr var_88
  loc_AC685B:  = Me.ListIndex
  loc_AC6860: FLdI2 var_A2
  loc_AC6863: LitI2_Byte 6
  loc_AC6865: EqI2
  loc_AC6866: FFree1Ad var_88
  loc_AC6869: BranchF loc_AC68E1
  loc_AC686C: LitStr "IdCoti LIKE '" & Chr(37)
  loc_AC686F: FLdPr Me
  loc_AC6872: VCallAd Control_ID_FiltroMsk
  loc_AC6875: FStAdFunc var_88
  loc_AC6878: FLdPr var_88
  loc_AC687B: LateIdLdVar var_98 DispID_22 0
  loc_AC6882: CStrVarTmp
  loc_AC6883: FStStrNoPop var_9C
  loc_AC6886: ConcatStr
  loc_AC6887: FStStrNoPop var_A0
  loc_AC688A: LitStr Chr(37) & "'"
  loc_AC688D: ConcatStr
  loc_AC688E: PopTmpLdAdStr
  loc_AC6892: FLdPr Me
  loc_AC6895: MemLdRfVar from_stack_1.global_52
  loc_AC6898: NewIfNullPr clsnotapedido
  loc_AC689B: Call clsnotapedido.Filter(from_stack_1v)
  loc_AC68A0: FFreeStr var_9C = "": var_A0 = ""
  loc_AC68A9: FFree1Ad var_88
  loc_AC68AC: FFree1Var var_98 = ""
  loc_AC68AF: LitStr "Cotización Nro. contiene: "
  loc_AC68B2: FLdPr Me
  loc_AC68B5: VCallAd Control_ID_FiltroMsk
  loc_AC68B8: FStAdFunc var_88
  loc_AC68BB: FLdPr var_88
  loc_AC68BE: LateIdLdVar var_98 DispID_22 0
  loc_AC68C5: CStrVarTmp
  loc_AC68C6: FStStrNoPop var_9C
  loc_AC68C9: ConcatStr
  loc_AC68CA: FStStrNoPop var_A0
  loc_AC68CD: FLdPr Me
  loc_AC68D0: MemStStrCopy
  loc_AC68D4: FFreeStr var_9C = ""
  loc_AC68DB: FFree1Ad var_88
  loc_AC68DE: FFree1Var var_98 = ""
  loc_AC68E1: Branch loc_AC6908
  loc_AC68E4: LitStr vbNullString
  loc_AC68E7: FStStrCopy var_9C
  loc_AC68EA: FLdRfVar var_9C
  loc_AC68ED: FLdPr Me
  loc_AC68F0: MemLdRfVar from_stack_1.global_52
  loc_AC68F3: NewIfNullPr clsnotapedido
  loc_AC68F6: Call clsnotapedido.Filter(from_stack_1v)
  loc_AC68FB: FFree1Str var_9C
  loc_AC68FE: LitStr vbNullString
  loc_AC6901: FLdPr Me
  loc_AC6904: MemStStrCopy
  loc_AC6908: FLdRfVar var_AC
  loc_AC690B: FLdPr Me
  loc_AC690E: MemLdRfVar from_stack_1.global_52
  loc_AC6911: NewIfNullPr clsnotapedido
  loc_AC6914: from_stack_1 = clsnotapedido.RecordCount
  loc_AC6919: ILdRf var_AC
  loc_AC691C: LitI4 0
  loc_AC6921: GtI4
  loc_AC6922: BranchF loc_AC69CF
  loc_AC6925: FLdPr Me
  loc_AC6928: MemLdRfVar from_stack_1.global_52
  loc_AC692B: NewIfNullAd
  loc_AC692E: FStAd var_B0 
  loc_AC6932: FLdRfVar var_B0
  loc_AC6935: CVarRef
  loc_AC693A: ILdRf Me
  loc_AC693D: CastAd
  loc_AC6940: FStAdFunc var_88
  loc_AC6943: FLdRfVar var_88
  loc_AC6946: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_AC694B: ILdRf var_B0
  loc_AC694E: CastAd
  loc_AC6951: FLdPr Me
  loc_AC6954: MemStAdFunc
  loc_AC6958: FFreeAd var_88 = ""
  loc_AC695F: LitI4 0
  loc_AC6964: LitI4 1
  loc_AC6969: FLdRfVar var_C4
  loc_AC696C: Redim
  loc_AC6976: FLdPr Me
  loc_AC6979: MemLdRfVar from_stack_1.global_52
  loc_AC697C: NewIfNullAd
  loc_AC697F: FStAd var_88 
  loc_AC6983: FLdRfVar var_88
  loc_AC6986: CVarRef
  loc_AC698B: ParmAry1St
  loc_AC6991: FLdPr Me
  loc_AC6994: VCallAd Control_ID_dgdABMS
  loc_AC6997: CVarAd
  loc_AC699B: ParmAry1St
  loc_AC69A1: FLdRfVar var_C4
  loc_AC69A4: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_AC69A9: ILdRf var_88
  loc_AC69AC: CastAd
  loc_AC69AF: FLdPr Me
  loc_AC69B2: MemStAdFunc
  loc_AC69B6: FLdRfVar var_C4
  loc_AC69B9: Erase
  loc_AC69BA: FFree1Ad var_88
  loc_AC69BD: LitI2_Byte 0
  loc_AC69BF: LitVarI2 var_98, 0
  loc_AC69C4: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_AC69C9: FFree1Var var_98 = ""
  loc_AC69CC: Branch loc_AC69E3
  loc_AC69CF: ILdRf Me
  loc_AC69D2: CastAd
  loc_AC69D5: FStAdFunc var_88
  loc_AC69D8: FLdRfVar var_88
  loc_AC69DB: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_AC69E0: FFree1Ad var_88
  loc_AC69E3: FLdPr Me
  loc_AC69E6: VCallAd Control_ID_dgdABMS
  loc_AC69E9: FStAdFunc var_B0
  loc_AC69EC: LitI4 0
  loc_AC69F1: FStStrCopy var_9C
  loc_AC69F4: FLdRfVar var_9C
  loc_AC69F7: FLdPr Me
  loc_AC69FA: MemLdStr global_80
  loc_AC69FD: FLdZeroAd var_B0
  loc_AC6A00: FStAdFunc var_88
  loc_AC6A03: FLdRfVar var_88
  loc_AC6A06: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_AC6A0B: FFree1Str var_9C
  loc_AC6A0E: FFreeAd var_88 = ""
  loc_AC6A15: ExitProcHresult
  loc_AC6A16: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '996EA4
  'Data Table: 4FD0E0
  loc_996E40: ILdI2 KeyAscii
  loc_996E43: LitI2_Byte &H27
  loc_996E45: EqI2
  loc_996E46: BranchF loc_996E4E
  loc_996E49: LitI2_Byte 0
  loc_996E4B: IStI2 KeyAscii
  loc_996E4E: FLdRfVar var_88
  loc_996E51: FLdPr Me
  loc_996E54: MemLdRfVar from_stack_1.global_52
  loc_996E57: NewIfNullPr clsnotapedido
  loc_996E5A: from_stack_1 = clsnotapedido.RecordCount
  loc_996E5F: ILdRf var_88
  loc_996E62: LitI4 0
  loc_996E67: EqI4
  loc_996E68: ILdI2 KeyAscii
  loc_996E6B: CI4UI1
  loc_996E6C: LitI4 8
  loc_996E71: NeI4
  loc_996E72: AndI4
  loc_996E73: FLdPr Me
  loc_996E76: VCallAd Control_ID_FiltroMsk
  loc_996E79: FStAdFunc var_8C
  loc_996E7C: FLdPr var_8C
  loc_996E7F: LateIdLdVar var_9C DispID_16 0
  loc_996E86: CStrVarTmp
  loc_996E87: FStStrNoPop var_A0
  loc_996E8A: LitStr vbNullString
  loc_996E8D: EqStr
  loc_996E8F: AndI4
  loc_996E90: FFree1Str var_A0
  loc_996E93: FFree1Ad var_8C
  loc_996E96: FFree1Var var_9C = ""
  loc_996E99: BranchF loc_996EA1
  loc_996E9C: LitI2_Byte 0
  loc_996E9E: IStI2 KeyAscii
  loc_996EA1: ExitProcHresult
End Sub

Private Sub CmdAgregarItem_Click() '9405F8
  'Data Table: 4FD0E0
  loc_9405F0: Call Proc_126_70_BE093C()
  loc_9405F5: ExitProcHresult
  loc_9405F6: LitStr "StrFormMemory_436D7266"
End Sub

Private Sub SSTab_Click(PreviousTab As Integer) '973F5C
  'Data Table: 4FD0E0
  loc_973F38: FLdPrThis
  loc_973F39: VCallAd Control_ID_SSTab
  loc_973F3C: FStAdFunc var_88
  loc_973F3F: FLdPr var_88
  loc_973F42: LateIdLdVar var_98 DispID_4 0
  loc_973F49: CI2Var
  loc_973F4A: LitI2_Byte 3
  loc_973F4C: EqI2
  loc_973F4D: FFree1Ad var_88
  loc_973F50: FFree1Var var_98 = ""
  loc_973F53: BranchF loc_973F5B
  loc_973F56: Call Proc_126_68_A399F4()
  loc_973F5B: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A3A1A0
  'Data Table: 4FD0E0
  loc_A39F68: LitVarStr var_94, vbNullString
  loc_A39F6D: PopAdLdVar
  loc_A39F6E: FLdPr Me
  loc_A39F71: VCallAd Control_ID_FiltroMsk
  loc_A39F74: FStAdFunc var_A8
  loc_A39F77: FLdPr var_A8
  loc_A39F7A: LateIdSt
  loc_A39F7F: FFree1Ad var_A8
  loc_A39F82: FLdRfVar var_AA
  loc_A39F85: FLdPr Me
  loc_A39F88: VCallAd Control_ID_FiltroCbo
  loc_A39F8B: FStAdFunc var_A8
  loc_A39F8E: FLdPr var_A8
  loc_A39F91:  = Me.ListIndex
  loc_A39F96: FLdI2 var_AA
  loc_A39F99: FStI2 var_AC
  loc_A39F9C: FFree1Ad var_A8
  loc_A39F9F: FLdI2 var_AC
  loc_A39FA2: LitI2_Byte 0
  loc_A39FA4: EqI2
  loc_A39FA5: BranchF loc_A39FDF
  loc_A39FA8: LitVarStr var_94, "########"
  loc_A39FAD: PopAdLdVar
  loc_A39FAE: FLdPr Me
  loc_A39FB1: VCallAd Control_ID_FiltroMsk
  loc_A39FB4: FStAdFunc var_A8
  loc_A39FB7: FLdPr var_A8
  loc_A39FBA: LateIdSt
  loc_A39FBF: FFree1Ad var_A8
  loc_A39FC2: LitStr "CodiNope"
  loc_A39FC5: FStStrCopy var_B0
  loc_A39FC8: FLdRfVar var_B0
  loc_A39FCB: FLdPr Me
  loc_A39FCE: MemLdRfVar from_stack_1.global_52
  loc_A39FD1: NewIfNullPr clsnotapedido
  loc_A39FD4: Call clsnotapedido.Sort(from_stack_1v)
  loc_A39FD9: FFree1Str var_B0
  loc_A39FDC: Branch loc_A3A19E
  loc_A39FDF: FLdI2 var_AC
  loc_A39FE2: LitI2_Byte 1
  loc_A39FE4: EqI2
  loc_A39FE5: BranchF loc_A3A01F
  loc_A39FE8: LitVarStr var_94, vbNullString
  loc_A39FED: PopAdLdVar
  loc_A39FEE: FLdPr Me
  loc_A39FF1: VCallAd Control_ID_FiltroMsk
  loc_A39FF4: FStAdFunc var_A8
  loc_A39FF7: FLdPr var_A8
  loc_A39FFA: LateIdSt
  loc_A39FFF: FFree1Ad var_A8
  loc_A3A002: LitStr "DetaNope"
  loc_A3A005: FStStrCopy var_B0
  loc_A3A008: FLdRfVar var_B0
  loc_A3A00B: FLdPr Me
  loc_A3A00E: MemLdRfVar from_stack_1.global_52
  loc_A3A011: NewIfNullPr clsnotapedido
  loc_A3A014: Call clsnotapedido.Sort(from_stack_1v)
  loc_A3A019: FFree1Str var_B0
  loc_A3A01C: Branch loc_A3A19E
  loc_A3A01F: FLdI2 var_AC
  loc_A3A022: LitI2_Byte 2
  loc_A3A024: EqI2
  loc_A3A025: BranchF loc_A3A05F
  loc_A3A028: LitVarStr var_94, "######"
  loc_A3A02D: PopAdLdVar
  loc_A3A02E: FLdPr Me
  loc_A3A031: VCallAd Control_ID_FiltroMsk
  loc_A3A034: FStAdFunc var_A8
  loc_A3A037: FLdPr var_A8
  loc_A3A03A: LateIdSt
  loc_A3A03F: FFree1Ad var_A8
  loc_A3A042: LitStr "CodiOrga"
  loc_A3A045: FStStrCopy var_B0
  loc_A3A048: FLdRfVar var_B0
  loc_A3A04B: FLdPr Me
  loc_A3A04E: MemLdRfVar from_stack_1.global_52
  loc_A3A051: NewIfNullPr clsnotapedido
  loc_A3A054: Call clsnotapedido.Sort(from_stack_1v)
  loc_A3A059: FFree1Str var_B0
  loc_A3A05C: Branch loc_A3A19E
  loc_A3A05F: FLdI2 var_AC
  loc_A3A062: LitI2_Byte 3
  loc_A3A064: EqI2
  loc_A3A065: BranchF loc_A3A09F
  loc_A3A068: LitVarStr var_94, vbNullString
  loc_A3A06D: PopAdLdVar
  loc_A3A06E: FLdPr Me
  loc_A3A071: VCallAd Control_ID_FiltroMsk
  loc_A3A074: FStAdFunc var_A8
  loc_A3A077: FLdPr var_A8
  loc_A3A07A: LateIdSt
  loc_A3A07F: FFree1Ad var_A8
  loc_A3A082: LitStr "DetaOrga"
  loc_A3A085: FStStrCopy var_B0
  loc_A3A088: FLdRfVar var_B0
  loc_A3A08B: FLdPr Me
  loc_A3A08E: MemLdRfVar from_stack_1.global_52
  loc_A3A091: NewIfNullPr clsnotapedido
  loc_A3A094: Call clsnotapedido.Sort(from_stack_1v)
  loc_A3A099: FFree1Str var_B0
  loc_A3A09C: Branch loc_A3A19E
  loc_A3A09F: FLdI2 var_AC
  loc_A3A0A2: LitI2_Byte 4
  loc_A3A0A4: EqI2
  loc_A3A0A5: BranchF loc_A3A0DF
  loc_A3A0A8: LitVarStr var_94, vbNullString
  loc_A3A0AD: PopAdLdVar
  loc_A3A0AE: FLdPr Me
  loc_A3A0B1: VCallAd Control_ID_FiltroMsk
  loc_A3A0B4: FStAdFunc var_A8
  loc_A3A0B7: FLdPr var_A8
  loc_A3A0BA: LateIdSt
  loc_A3A0BF: FFree1Ad var_A8
  loc_A3A0C2: LitStr "ExpeImpu"
  loc_A3A0C5: FStStrCopy var_B0
  loc_A3A0C8: FLdRfVar var_B0
  loc_A3A0CB: FLdPr Me
  loc_A3A0CE: MemLdRfVar from_stack_1.global_52
  loc_A3A0D1: NewIfNullPr clsnotapedido
  loc_A3A0D4: Call clsnotapedido.Sort(from_stack_1v)
  loc_A3A0D9: FFree1Str var_B0
  loc_A3A0DC: Branch loc_A3A19E
  loc_A3A0DF: FLdI2 var_AC
  loc_A3A0E2: LitI2_Byte 5
  loc_A3A0E4: EqI2
  loc_A3A0E5: BranchF loc_A3A161
  loc_A3A0E8: LitStr "Municipalidad de Guaymallén"
  loc_A3A0EB: LitStr "Municipalidad de Maipú"
  loc_A3A0EE: EqStr
  loc_A3A0F0: BranchF loc_A3A12A
  loc_A3A0F3: LitVarStr var_94, "########"
  loc_A3A0F8: PopAdLdVar
  loc_A3A0F9: FLdPr Me
  loc_A3A0FC: VCallAd Control_ID_FiltroMsk
  loc_A3A0FF: FStAdFunc var_A8
  loc_A3A102: FLdPr var_A8
  loc_A3A105: LateIdSt
  loc_A3A10A: FFree1Ad var_A8
  loc_A3A10D: LitStr "CoinNope"
  loc_A3A110: FStStrCopy var_B0
  loc_A3A113: FLdRfVar var_B0
  loc_A3A116: FLdPr Me
  loc_A3A119: MemLdRfVar from_stack_1.global_52
  loc_A3A11C: NewIfNullPr clsnotapedido
  loc_A3A11F: Call clsnotapedido.Sort(from_stack_1v)
  loc_A3A124: FFree1Str var_B0
  loc_A3A127: Branch loc_A3A15E
  loc_A3A12A: LitVarStr var_94, "##"
  loc_A3A12F: PopAdLdVar
  loc_A3A130: FLdPr Me
  loc_A3A133: VCallAd Control_ID_FiltroMsk
  loc_A3A136: FStAdFunc var_A8
  loc_A3A139: FLdPr var_A8
  loc_A3A13C: LateIdSt
  loc_A3A141: FFree1Ad var_A8
  loc_A3A144: LitStr "CodiTico"
  loc_A3A147: FStStrCopy var_B0
  loc_A3A14A: FLdRfVar var_B0
  loc_A3A14D: FLdPr Me
  loc_A3A150: MemLdRfVar from_stack_1.global_52
  loc_A3A153: NewIfNullPr clsnotapedido
  loc_A3A156: Call clsnotapedido.Sort(from_stack_1v)
  loc_A3A15B: FFree1Str var_B0
  loc_A3A15E: Branch loc_A3A19E
  loc_A3A161: FLdI2 var_AC
  loc_A3A164: LitI2_Byte 6
  loc_A3A166: EqI2
  loc_A3A167: BranchF loc_A3A19E
  loc_A3A16A: LitVarStr var_94, "########"
  loc_A3A16F: PopAdLdVar
  loc_A3A170: FLdPr Me
  loc_A3A173: VCallAd Control_ID_FiltroMsk
  loc_A3A176: FStAdFunc var_A8
  loc_A3A179: FLdPr var_A8
  loc_A3A17C: LateIdSt
  loc_A3A181: FFree1Ad var_A8
  loc_A3A184: LitStr "CodiNope"
  loc_A3A187: FStStrCopy var_B0
  loc_A3A18A: FLdRfVar var_B0
  loc_A3A18D: FLdPr Me
  loc_A3A190: MemLdRfVar from_stack_1.global_52
  loc_A3A193: NewIfNullPr clsnotapedido
  loc_A3A196: Call clsnotapedido.Sort(from_stack_1v)
  loc_A3A19B: FFree1Str var_B0
  loc_A3A19E: ExitProcHresult
End Sub

Private Sub IdRubroMsk_UnknownEvent_0 '97EB8C
  'Data Table: 4FD0E0
  loc_97EB5C: LitVarStr var_94, "#####"
  loc_97EB61: PopAdLdVar
  loc_97EB62: FLdPr Me
  loc_97EB65: VCallAd Control_ID_IdRubroMsk
  loc_97EB68: FStAdFunc var_A8
  loc_97EB6B: FLdPr var_A8
  loc_97EB6E: LateIdSt
  loc_97EB73: FFree1Ad var_A8
  loc_97EB76: FLdPr Me
  loc_97EB79: VCallAd Control_ID_IdRubroMsk
  loc_97EB7C: CVarAd
  loc_97EB80: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_97EB85: FFree1Var var_B8 = ""
  loc_97EB88: ExitProcHresult
  loc_97EB89: Ary1StCy
End Sub

Private Sub IdRubroMsk_UnknownEvent_1 '96AD6C
  'Data Table: 4FD0E0
  loc_96AD50: LitVarStr var_94, "#####"
  loc_96AD55: PopAdLdVar
  loc_96AD56: FLdPr Me
  loc_96AD59: VCallAd Control_ID_IdRubroMsk
  loc_96AD5C: FStAdFunc var_A8
  loc_96AD5F: FLdPr var_A8
  loc_96AD62: LateIdSt
  loc_96AD67: FFree1Ad var_A8
  loc_96AD6A: ExitProcHresult
End Sub

Private Function IdRubroMsk_UnknownEvent_8(arg_C) 'B4C8C4
  'Data Table: 4FD0E0
  loc_B4BE18: FLdRfVar var_8A
  loc_B4BE1B: FLdPr Me
  loc_B4BE1E: VCallAd Control_ID_cmdCancelar
  loc_B4BE21: FStAdFunc var_88
  loc_B4BE24: FLdPr var_88
  loc_B4BE27:  = Me.Value
  loc_B4BE2C: FLdI2 var_8A
  loc_B4BE2F: NotI4
  loc_B4BE30: FLdPr Me
  loc_B4BE33: VCallAd Control_ID_IdRubroMsk
  loc_B4BE36: FStAdFunc var_90
  loc_B4BE39: FLdPr var_90
  loc_B4BE3C: LateIdLdVar var_A0 DispID_13 -32767
  loc_B4BE43: CBoolVar
  loc_B4BE45: AndI4
  loc_B4BE46: FLdPr Me
  loc_B4BE49: VCallAd Control_ID_IdRubroMsk
  loc_B4BE4C: FStAdFunc var_A4
  loc_B4BE4F: FLdPr var_A4
  loc_B4BE52: LateIdLdVar var_B4 DispID_22 0
  loc_B4BE59: CStrVarTmp
  loc_B4BE5A: FStStrNoPop var_B8
  loc_B4BE5D: LitStr "0"
  loc_B4BE60: NeStr
  loc_B4BE62: AndI4
  loc_B4BE63: FFree1Str var_B8
  loc_B4BE66: FFreeAd var_88 = "": var_90 = ""
  loc_B4BE6F: FFreeVar var_A0 = ""
  loc_B4BE76: BranchF loc_B4C8C0
  loc_B4BE79: FLdPr Me
  loc_B4BE7C: VCallAd Control_ID_IdRubroMsk
  loc_B4BE7F: FStAdFunc var_88
  loc_B4BE82: FLdPr var_88
  loc_B4BE85: LateIdLdVar var_A0 DispID_22 0
  loc_B4BE8C: CStrVarTmp
  loc_B4BE8D: FStStrNoPop var_B8
  loc_B4BE90: ImpAdCallI2 Trim$()
  loc_B4BE95: FStStrNoPop var_BC
  loc_B4BE98: LitStr vbNullString
  loc_B4BE9B: NeStr
  loc_B4BE9D: FFreeStr var_B8 = ""
  loc_B4BEA4: FFree1Ad var_88
  loc_B4BEA7: FFree1Var var_A0 = ""
  loc_B4BEAA: BranchF loc_B4C6B8
  loc_B4BEAD: FLdPr Me
  loc_B4BEB0: VCallAd Control_ID_IdRubroMsk
  loc_B4BEB3: FStAdFunc var_88
  loc_B4BEB6: FLdRfVar var_88
  loc_B4BEB9: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B4BEBE: FFree1Ad var_88
  loc_B4BEC1: BranchF loc_B4C2BE
  loc_B4BEC4: FLdPr Me
  loc_B4BEC7: VCallAd Control_ID_IdRubroMsk
  loc_B4BECA: FStAdFunc var_88
  loc_B4BECD: FLdPr var_88
  loc_B4BED0: LateIdLdVar var_A0 DispID_22 0
  loc_B4BED7: PopAd
  loc_B4BED9: LitStr " AND r.IdRubro = '"
  loc_B4BEDC: LitI4 0
  loc_B4BEE1: LitI4 -1
  loc_B4BEE6: LitI4 1
  loc_B4BEEB: LitStr vbNullString
  loc_B4BEEE: LitStr "."
  loc_B4BEF1: FLdRfVar var_A0
  loc_B4BEF4: CStrVarTmp
  loc_B4BEF5: FStStrNoPop var_B8
  loc_B4BEF8: ImpAdCallI2 Replace(, , , , , )
  loc_B4BEFD: FStStrNoPop var_BC
  loc_B4BF00: ConcatStr
  loc_B4BF01: FStStrNoPop var_C0
  loc_B4BF04: LitStr "'"
  loc_B4BF07: ConcatStr
  loc_B4BF08: FStStrNoPop var_C4
  loc_B4BF0B: ImpAdLdRf MemVar_C3DC28
  loc_B4BF0E: NewIfNullPr bscRubro
  loc_B4BF11: Call bscRubro.Constructor(from_stack_1v)
  loc_B4BF16: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_B4BF21: FFree1Ad var_88
  loc_B4BF24: FFree1Var var_A0 = ""
  loc_B4BF27: FLdRfVar var_C8
  loc_B4BF2A: FLdRfVar var_90
  loc_B4BF2D: FLdRfVar var_88
  loc_B4BF30: ImpAdLdRf MemVar_C3DC28
  loc_B4BF33: NewIfNullPr bscRubro
  loc_B4BF36: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4BF3B: FLdPr var_88
  loc_B4BF3E: from_stack_1v = clsbase.RsFrmGet()
  loc_B4BF43: FLdPr var_90
  loc_B4BF46:  = Me.RecordCount
  loc_B4BF4B: ILdRf var_C8
  loc_B4BF4E: LitI4 1
  loc_B4BF53: EqI4
  loc_B4BF54: FFreeAd var_88 = ""
  loc_B4BF5B: BranchF loc_B4C06D
  loc_B4BF5E: FLdRfVar var_A0
  loc_B4BF61: FLdRfVar var_DC
  loc_B4BF64: LitVarStr var_D8, "IdRubro"
  loc_B4BF69: PopAdLdVar
  loc_B4BF6A: FLdRfVar var_A4
  loc_B4BF6D: FLdRfVar var_90
  loc_B4BF70: FLdRfVar var_88
  loc_B4BF73: ImpAdLdRf MemVar_C3DC28
  loc_B4BF76: NewIfNullPr bscRubro
  loc_B4BF79: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4BF7E: FLdPr var_88
  loc_B4BF81: from_stack_1v = clsbase.RsFrmGet()
  loc_B4BF86: FLdPr var_90
  loc_B4BF89:  = Me.Fields
  loc_B4BF8E: FLdPr var_A4
  loc_B4BF91: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BF96: FLdPr var_DC
  loc_B4BF99:  = Me.Value
  loc_B4BF9E: FLdPr Me
  loc_B4BFA1: MemLdRfVar from_stack_1.global_128
  loc_B4BFA4: NewIfNullRf
  loc_B4BFA8: FLdRfVar var_A0
  loc_B4BFAB: CStrVarTmp
  loc_B4BFAC: FStStrNoPop var_B8
  loc_B4BFAF: ImpAdCallI2 Proc_266_11_9916B0(, )
  loc_B4BFB4: FStStrNoPop var_BC
  loc_B4BFB7: FLdPr Me
  loc_B4BFBA: MemStStrCopy
  loc_B4BFBE: FFreeStr var_B8 = ""
  loc_B4BFC5: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4BFD0: FFree1Var var_A0 = ""
  loc_B4BFD3: FLdRfVar var_B8
  loc_B4BFD6: FLdPr Me
  loc_B4BFD9: MemLdRfVar from_stack_1.global_128
  loc_B4BFDC: NewIfNullPr tblrubro
  loc_B4BFDF: from_stack_1v = tblrubro.IdRubroGet()
  loc_B4BFE4: FLdZeroAd var_B8
  loc_B4BFE7: CVarStr var_A0
  loc_B4BFEA: PopAdLdVar
  loc_B4BFEB: FLdPr Me
  loc_B4BFEE: VCallAd Control_ID_IdRubroMsk
  loc_B4BFF1: FStAdFunc var_88
  loc_B4BFF4: FLdPr var_88
  loc_B4BFF7: LateIdSt
  loc_B4BFFC: FFree1Ad var_88
  loc_B4BFFF: FFree1Var var_A0 = ""
  loc_B4C002: FLdRfVar var_B8
  loc_B4C005: FLdPr Me
  loc_B4C008: MemLdRfVar from_stack_1.global_128
  loc_B4C00B: NewIfNullPr tblrubro
  loc_B4C00E: from_stack_1v = tblrubro.DetaRubroGet()
  loc_B4C013: ILdRf var_B8
  loc_B4C016: FLdPr Me
  loc_B4C019: VCallAd Control_ID_DetaRubroLbl
  loc_B4C01C: FStAdFunc var_88
  loc_B4C01F: FLdPr var_88
  loc_B4C022: Me.Caption = from_stack_1
  loc_B4C027: FFree1Str var_B8
  loc_B4C02A: FFree1Ad var_88
  loc_B4C02D: FLdPr Me
  loc_B4C030: VCallAd Control_ID_IdRubroMsk
  loc_B4C033: FStAdFunc var_DC
  loc_B4C036: FLdPr Me
  loc_B4C039: VCallAd Control_ID_DetaRubroLbl
  loc_B4C03C: FStAdFunc var_A4
  loc_B4C03F: FLdRfVar var_A4
  loc_B4C042: FLdZeroAd var_DC
  loc_B4C045: FStAdFuncNoPop
  loc_B4C048: CastAd
  loc_B4C04B: FStAdFunc var_90
  loc_B4C04E: FLdRfVar var_90
  loc_B4C051: FLdPr Me
  loc_B4C054: MemLdRfVar from_stack_1.global_76
  loc_B4C057: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4C05C: IStI2 arg_C
  loc_B4C05F: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C06A: Branch loc_B4C2BB
  loc_B4C06D: FLdRfVar var_C8
  loc_B4C070: FLdRfVar var_90
  loc_B4C073: FLdRfVar var_88
  loc_B4C076: ImpAdLdRf MemVar_C3DC28
  loc_B4C079: NewIfNullPr bscRubro
  loc_B4C07C: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C081: FLdPr var_88
  loc_B4C084: from_stack_1v = clsbase.RsFrmGet()
  loc_B4C089: FLdPr var_90
  loc_B4C08C:  = Me.RecordCount
  loc_B4C091: ILdRf var_C8
  loc_B4C094: LitI4 1
  loc_B4C099: GtI4
  loc_B4C09A: FFreeAd var_88 = ""
  loc_B4C0A1: BranchF loc_B4C23D
  loc_B4C0A4: LitVar_Missing var_EC
  loc_B4C0A7: PopAdLdVar
  loc_B4C0A8: LitVarI4
  loc_B4C0B0: PopAdLdVar
  loc_B4C0B1: ImpAdLdRf MemVar_C3DC28
  loc_B4C0B4: NewIfNullPr bscRubro
  loc_B4C0B7: bscRubro.Show from_stack_1, from_stack_2
  loc_B4C0BC: FLdRfVar var_C8
  loc_B4C0BF: FLdRfVar var_88
  loc_B4C0C2: ImpAdLdRf MemVar_C3DC28
  loc_B4C0C5: NewIfNullPr bscRubro
  loc_B4C0C8: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C0CD: FLdPr var_88
  loc_B4C0D0: from_stack_1 = clsbase.RecordCount
  loc_B4C0D5: ILdRf var_C8
  loc_B4C0D8: LitI4 0
  loc_B4C0DD: GtI4
  loc_B4C0DE: FFree1Ad var_88
  loc_B4C0E1: BranchF loc_B4C1F3
  loc_B4C0E4: FLdRfVar var_A0
  loc_B4C0E7: FLdRfVar var_DC
  loc_B4C0EA: LitVarStr var_D8, "IdRubro"
  loc_B4C0EF: PopAdLdVar
  loc_B4C0F0: FLdRfVar var_A4
  loc_B4C0F3: FLdRfVar var_90
  loc_B4C0F6: FLdRfVar var_88
  loc_B4C0F9: ImpAdLdRf MemVar_C3DC28
  loc_B4C0FC: NewIfNullPr bscRubro
  loc_B4C0FF: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C104: FLdPr var_88
  loc_B4C107: from_stack_1v = clsbase.RsFrmGet()
  loc_B4C10C: FLdPr var_90
  loc_B4C10F:  = Me.Fields
  loc_B4C114: FLdPr var_A4
  loc_B4C117: from_stack_2 = Me.Item(from_stack_1)
  loc_B4C11C: FLdPr var_DC
  loc_B4C11F:  = Me.Value
  loc_B4C124: FLdPr Me
  loc_B4C127: MemLdRfVar from_stack_1.global_128
  loc_B4C12A: NewIfNullRf
  loc_B4C12E: FLdRfVar var_A0
  loc_B4C131: CStrVarTmp
  loc_B4C132: FStStrNoPop var_B8
  loc_B4C135: ImpAdCallI2 Proc_266_11_9916B0(, )
  loc_B4C13A: FStStrNoPop var_BC
  loc_B4C13D: FLdPr Me
  loc_B4C140: MemStStrCopy
  loc_B4C144: FFreeStr var_B8 = ""
  loc_B4C14B: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C156: FFree1Var var_A0 = ""
  loc_B4C159: FLdRfVar var_B8
  loc_B4C15C: FLdPr Me
  loc_B4C15F: MemLdRfVar from_stack_1.global_128
  loc_B4C162: NewIfNullPr tblrubro
  loc_B4C165: from_stack_1v = tblrubro.IdRubroGet()
  loc_B4C16A: FLdZeroAd var_B8
  loc_B4C16D: CVarStr var_A0
  loc_B4C170: PopAdLdVar
  loc_B4C171: FLdPr Me
  loc_B4C174: VCallAd Control_ID_IdRubroMsk
  loc_B4C177: FStAdFunc var_88
  loc_B4C17A: FLdPr var_88
  loc_B4C17D: LateIdSt
  loc_B4C182: FFree1Ad var_88
  loc_B4C185: FFree1Var var_A0 = ""
  loc_B4C188: FLdRfVar var_B8
  loc_B4C18B: FLdPr Me
  loc_B4C18E: MemLdRfVar from_stack_1.global_128
  loc_B4C191: NewIfNullPr tblrubro
  loc_B4C194: from_stack_1v = tblrubro.DetaRubroGet()
  loc_B4C199: ILdRf var_B8
  loc_B4C19C: FLdPr Me
  loc_B4C19F: VCallAd Control_ID_DetaRubroLbl
  loc_B4C1A2: FStAdFunc var_88
  loc_B4C1A5: FLdPr var_88
  loc_B4C1A8: Me.Caption = from_stack_1
  loc_B4C1AD: FFree1Str var_B8
  loc_B4C1B0: FFree1Ad var_88
  loc_B4C1B3: FLdPr Me
  loc_B4C1B6: VCallAd Control_ID_IdRubroMsk
  loc_B4C1B9: FStAdFunc var_DC
  loc_B4C1BC: FLdPr Me
  loc_B4C1BF: VCallAd Control_ID_DetaRubroLbl
  loc_B4C1C2: FStAdFunc var_A4
  loc_B4C1C5: FLdRfVar var_A4
  loc_B4C1C8: FLdZeroAd var_DC
  loc_B4C1CB: FStAdFuncNoPop
  loc_B4C1CE: CastAd
  loc_B4C1D1: FStAdFunc var_90
  loc_B4C1D4: FLdRfVar var_90
  loc_B4C1D7: FLdPr Me
  loc_B4C1DA: MemLdRfVar from_stack_1.global_76
  loc_B4C1DD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4C1E2: IStI2 arg_C
  loc_B4C1E5: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C1F0: Branch loc_B4C23A
  loc_B4C1F3: LitStr "El Rubro NO EXISTE. Verifique..."
  loc_B4C1F6: FLdPr Me
  loc_B4C1F9: MemStStrCopy
  loc_B4C1FD: FLdPr Me
  loc_B4C200: VCallAd Control_ID_IdRubroMsk
  loc_B4C203: FStAdFunc var_DC
  loc_B4C206: FLdPr Me
  loc_B4C209: VCallAd Control_ID_DetaRubroLbl
  loc_B4C20C: FStAdFunc var_A4
  loc_B4C20F: FLdRfVar var_A4
  loc_B4C212: FLdZeroAd var_DC
  loc_B4C215: FStAdFuncNoPop
  loc_B4C218: CastAd
  loc_B4C21B: FStAdFunc var_90
  loc_B4C21E: FLdRfVar var_90
  loc_B4C221: FLdPr Me
  loc_B4C224: MemLdRfVar from_stack_1.global_76
  loc_B4C227: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4C22C: IStI2 arg_C
  loc_B4C22F: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C23A: Branch loc_B4C2BB
  loc_B4C23D: FLdRfVar var_C8
  loc_B4C240: FLdRfVar var_90
  loc_B4C243: FLdRfVar var_88
  loc_B4C246: ImpAdLdRf MemVar_C3DC28
  loc_B4C249: NewIfNullPr bscRubro
  loc_B4C24C: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C251: FLdPr var_88
  loc_B4C254: from_stack_1v = clsbase.RsFrmGet()
  loc_B4C259: FLdPr var_90
  loc_B4C25C:  = Me.RecordCount
  loc_B4C261: ILdRf var_C8
  loc_B4C264: LitI4 1
  loc_B4C269: LtI4
  loc_B4C26A: FFreeAd var_88 = ""
  loc_B4C271: BranchF loc_B4C2BB
  loc_B4C274: LitStr "El Rubro NO EXISTE. Verifique..."
  loc_B4C277: FLdPr Me
  loc_B4C27A: MemStStrCopy
  loc_B4C27E: FLdPr Me
  loc_B4C281: VCallAd Control_ID_IdRubroMsk
  loc_B4C284: FStAdFunc var_DC
  loc_B4C287: FLdPr Me
  loc_B4C28A: VCallAd Control_ID_DetaRubroLbl
  loc_B4C28D: FStAdFunc var_A4
  loc_B4C290: FLdRfVar var_A4
  loc_B4C293: FLdZeroAd var_DC
  loc_B4C296: FStAdFuncNoPop
  loc_B4C299: CastAd
  loc_B4C29C: FStAdFunc var_90
  loc_B4C29F: FLdRfVar var_90
  loc_B4C2A2: FLdPr Me
  loc_B4C2A5: MemLdRfVar from_stack_1.global_76
  loc_B4C2A8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4C2AD: IStI2 arg_C
  loc_B4C2B0: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C2BB: Branch loc_B4C6B5
  loc_B4C2BE: FLdPr Me
  loc_B4C2C1: VCallAd Control_ID_IdRubroMsk
  loc_B4C2C4: FStAdFunc var_88
  loc_B4C2C7: FLdPr var_88
  loc_B4C2CA: LateIdLdVar var_A0 DispID_22 0
  loc_B4C2D1: PopAd
  loc_B4C2D3: LitStr " AND DetaRubro LIKE '" & Chr(37)
  loc_B4C2D6: LitI4 0
  loc_B4C2DB: LitI4 -1
  loc_B4C2E0: LitI4 1
  loc_B4C2E5: LitStr Chr(37)
  loc_B4C2E8: LitStr " "
  loc_B4C2EB: FLdRfVar var_A0
  loc_B4C2EE: CStrVarTmp
  loc_B4C2EF: FStStrNoPop var_B8
  loc_B4C2F2: ImpAdCallI2 Replace(, , , , , )
  loc_B4C2F7: FStStrNoPop var_BC
  loc_B4C2FA: ConcatStr
  loc_B4C2FB: FStStrNoPop var_C0
  loc_B4C2FE: LitStr Chr(37) & "' ORDER BY DetaRubro"
  loc_B4C301: ConcatStr
  loc_B4C302: FStStrNoPop var_C4
  loc_B4C305: ImpAdLdRf MemVar_C3DC28
  loc_B4C308: NewIfNullPr bscRubro
  loc_B4C30B: Call bscRubro.Constructor(from_stack_1v)
  loc_B4C310: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_B4C31B: FFree1Ad var_88
  loc_B4C31E: FFree1Var var_A0 = ""
  loc_B4C321: FLdRfVar var_C8
  loc_B4C324: FLdRfVar var_90
  loc_B4C327: FLdRfVar var_88
  loc_B4C32A: ImpAdLdRf MemVar_C3DC28
  loc_B4C32D: NewIfNullPr bscRubro
  loc_B4C330: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C335: FLdPr var_88
  loc_B4C338: from_stack_1v = clsbase.RsFrmGet()
  loc_B4C33D: FLdPr var_90
  loc_B4C340:  = Me.RecordCount
  loc_B4C345: ILdRf var_C8
  loc_B4C348: LitI4 1
  loc_B4C34D: EqI4
  loc_B4C34E: FFreeAd var_88 = ""
  loc_B4C355: BranchF loc_B4C467
  loc_B4C358: FLdRfVar var_A0
  loc_B4C35B: FLdRfVar var_DC
  loc_B4C35E: LitVarStr var_D8, "IdRubro"
  loc_B4C363: PopAdLdVar
  loc_B4C364: FLdRfVar var_A4
  loc_B4C367: FLdRfVar var_90
  loc_B4C36A: FLdRfVar var_88
  loc_B4C36D: ImpAdLdRf MemVar_C3DC28
  loc_B4C370: NewIfNullPr bscRubro
  loc_B4C373: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C378: FLdPr var_88
  loc_B4C37B: from_stack_1v = clsbase.RsFrmGet()
  loc_B4C380: FLdPr var_90
  loc_B4C383:  = Me.Fields
  loc_B4C388: FLdPr var_A4
  loc_B4C38B: from_stack_2 = Me.Item(from_stack_1)
  loc_B4C390: FLdPr var_DC
  loc_B4C393:  = Me.Value
  loc_B4C398: FLdPr Me
  loc_B4C39B: MemLdRfVar from_stack_1.global_128
  loc_B4C39E: NewIfNullRf
  loc_B4C3A2: FLdRfVar var_A0
  loc_B4C3A5: CStrVarTmp
  loc_B4C3A6: FStStrNoPop var_B8
  loc_B4C3A9: ImpAdCallI2 Proc_266_11_9916B0(, )
  loc_B4C3AE: FStStrNoPop var_BC
  loc_B4C3B1: FLdPr Me
  loc_B4C3B4: MemStStrCopy
  loc_B4C3B8: FFreeStr var_B8 = ""
  loc_B4C3BF: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C3CA: FFree1Var var_A0 = ""
  loc_B4C3CD: FLdRfVar var_B8
  loc_B4C3D0: FLdPr Me
  loc_B4C3D3: MemLdRfVar from_stack_1.global_128
  loc_B4C3D6: NewIfNullPr tblrubro
  loc_B4C3D9: from_stack_1v = tblrubro.IdRubroGet()
  loc_B4C3DE: FLdZeroAd var_B8
  loc_B4C3E1: CVarStr var_A0
  loc_B4C3E4: PopAdLdVar
  loc_B4C3E5: FLdPr Me
  loc_B4C3E8: VCallAd Control_ID_IdRubroMsk
  loc_B4C3EB: FStAdFunc var_88
  loc_B4C3EE: FLdPr var_88
  loc_B4C3F1: LateIdSt
  loc_B4C3F6: FFree1Ad var_88
  loc_B4C3F9: FFree1Var var_A0 = ""
  loc_B4C3FC: FLdRfVar var_B8
  loc_B4C3FF: FLdPr Me
  loc_B4C402: MemLdRfVar from_stack_1.global_128
  loc_B4C405: NewIfNullPr tblrubro
  loc_B4C408: from_stack_1v = tblrubro.DetaRubroGet()
  loc_B4C40D: ILdRf var_B8
  loc_B4C410: FLdPr Me
  loc_B4C413: VCallAd Control_ID_DetaRubroLbl
  loc_B4C416: FStAdFunc var_88
  loc_B4C419: FLdPr var_88
  loc_B4C41C: Me.Caption = from_stack_1
  loc_B4C421: FFree1Str var_B8
  loc_B4C424: FFree1Ad var_88
  loc_B4C427: FLdPr Me
  loc_B4C42A: VCallAd Control_ID_IdRubroMsk
  loc_B4C42D: FStAdFunc var_DC
  loc_B4C430: FLdPr Me
  loc_B4C433: VCallAd Control_ID_DetaRubroLbl
  loc_B4C436: FStAdFunc var_A4
  loc_B4C439: FLdRfVar var_A4
  loc_B4C43C: FLdZeroAd var_DC
  loc_B4C43F: FStAdFuncNoPop
  loc_B4C442: CastAd
  loc_B4C445: FStAdFunc var_90
  loc_B4C448: FLdRfVar var_90
  loc_B4C44B: FLdPr Me
  loc_B4C44E: MemLdRfVar from_stack_1.global_76
  loc_B4C451: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4C456: IStI2 arg_C
  loc_B4C459: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C464: Branch loc_B4C6B5
  loc_B4C467: FLdRfVar var_C8
  loc_B4C46A: FLdRfVar var_90
  loc_B4C46D: FLdRfVar var_88
  loc_B4C470: ImpAdLdRf MemVar_C3DC28
  loc_B4C473: NewIfNullPr bscRubro
  loc_B4C476: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C47B: FLdPr var_88
  loc_B4C47E: from_stack_1v = clsbase.RsFrmGet()
  loc_B4C483: FLdPr var_90
  loc_B4C486:  = Me.RecordCount
  loc_B4C48B: ILdRf var_C8
  loc_B4C48E: LitI4 1
  loc_B4C493: GtI4
  loc_B4C494: FFreeAd var_88 = ""
  loc_B4C49B: BranchF loc_B4C637
  loc_B4C49E: LitVar_Missing var_EC
  loc_B4C4A1: PopAdLdVar
  loc_B4C4A2: LitVarI4
  loc_B4C4AA: PopAdLdVar
  loc_B4C4AB: ImpAdLdRf MemVar_C3DC28
  loc_B4C4AE: NewIfNullPr bscRubro
  loc_B4C4B1: bscRubro.Show from_stack_1, from_stack_2
  loc_B4C4B6: FLdRfVar var_C8
  loc_B4C4B9: FLdRfVar var_88
  loc_B4C4BC: ImpAdLdRf MemVar_C3DC28
  loc_B4C4BF: NewIfNullPr bscRubro
  loc_B4C4C2: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C4C7: FLdPr var_88
  loc_B4C4CA: from_stack_1 = clsbase.RecordCount
  loc_B4C4CF: ILdRf var_C8
  loc_B4C4D2: LitI4 0
  loc_B4C4D7: GtI4
  loc_B4C4D8: FFree1Ad var_88
  loc_B4C4DB: BranchF loc_B4C5ED
  loc_B4C4DE: FLdRfVar var_A0
  loc_B4C4E1: FLdRfVar var_DC
  loc_B4C4E4: LitVarStr var_D8, "IdRubro"
  loc_B4C4E9: PopAdLdVar
  loc_B4C4EA: FLdRfVar var_A4
  loc_B4C4ED: FLdRfVar var_90
  loc_B4C4F0: FLdRfVar var_88
  loc_B4C4F3: ImpAdLdRf MemVar_C3DC28
  loc_B4C4F6: NewIfNullPr bscRubro
  loc_B4C4F9: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C4FE: FLdPr var_88
  loc_B4C501: from_stack_1v = clsbase.RsFrmGet()
  loc_B4C506: FLdPr var_90
  loc_B4C509:  = Me.Fields
  loc_B4C50E: FLdPr var_A4
  loc_B4C511: from_stack_2 = Me.Item(from_stack_1)
  loc_B4C516: FLdPr var_DC
  loc_B4C519:  = Me.Value
  loc_B4C51E: FLdPr Me
  loc_B4C521: MemLdRfVar from_stack_1.global_128
  loc_B4C524: NewIfNullRf
  loc_B4C528: FLdRfVar var_A0
  loc_B4C52B: CStrVarTmp
  loc_B4C52C: FStStrNoPop var_B8
  loc_B4C52F: ImpAdCallI2 Proc_266_11_9916B0(, )
  loc_B4C534: FStStrNoPop var_BC
  loc_B4C537: FLdPr Me
  loc_B4C53A: MemStStrCopy
  loc_B4C53E: FFreeStr var_B8 = ""
  loc_B4C545: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C550: FFree1Var var_A0 = ""
  loc_B4C553: FLdRfVar var_B8
  loc_B4C556: FLdPr Me
  loc_B4C559: MemLdRfVar from_stack_1.global_128
  loc_B4C55C: NewIfNullPr tblrubro
  loc_B4C55F: from_stack_1v = tblrubro.IdRubroGet()
  loc_B4C564: FLdZeroAd var_B8
  loc_B4C567: CVarStr var_A0
  loc_B4C56A: PopAdLdVar
  loc_B4C56B: FLdPr Me
  loc_B4C56E: VCallAd Control_ID_IdRubroMsk
  loc_B4C571: FStAdFunc var_88
  loc_B4C574: FLdPr var_88
  loc_B4C577: LateIdSt
  loc_B4C57C: FFree1Ad var_88
  loc_B4C57F: FFree1Var var_A0 = ""
  loc_B4C582: FLdRfVar var_B8
  loc_B4C585: FLdPr Me
  loc_B4C588: MemLdRfVar from_stack_1.global_128
  loc_B4C58B: NewIfNullPr tblrubro
  loc_B4C58E: from_stack_1v = tblrubro.DetaRubroGet()
  loc_B4C593: ILdRf var_B8
  loc_B4C596: FLdPr Me
  loc_B4C599: VCallAd Control_ID_DetaRubroLbl
  loc_B4C59C: FStAdFunc var_88
  loc_B4C59F: FLdPr var_88
  loc_B4C5A2: Me.Caption = from_stack_1
  loc_B4C5A7: FFree1Str var_B8
  loc_B4C5AA: FFree1Ad var_88
  loc_B4C5AD: FLdPr Me
  loc_B4C5B0: VCallAd Control_ID_IdRubroMsk
  loc_B4C5B3: FStAdFunc var_DC
  loc_B4C5B6: FLdPr Me
  loc_B4C5B9: VCallAd Control_ID_DetaRubroLbl
  loc_B4C5BC: FStAdFunc var_A4
  loc_B4C5BF: FLdRfVar var_A4
  loc_B4C5C2: FLdZeroAd var_DC
  loc_B4C5C5: FStAdFuncNoPop
  loc_B4C5C8: CastAd
  loc_B4C5CB: FStAdFunc var_90
  loc_B4C5CE: FLdRfVar var_90
  loc_B4C5D1: FLdPr Me
  loc_B4C5D4: MemLdRfVar from_stack_1.global_76
  loc_B4C5D7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4C5DC: IStI2 arg_C
  loc_B4C5DF: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C5EA: Branch loc_B4C634
  loc_B4C5ED: LitStr "El Rubro NO EXISTE. Verique..."
  loc_B4C5F0: FLdPr Me
  loc_B4C5F3: MemStStrCopy
  loc_B4C5F7: FLdPr Me
  loc_B4C5FA: VCallAd Control_ID_IdRubroMsk
  loc_B4C5FD: FStAdFunc var_DC
  loc_B4C600: FLdPr Me
  loc_B4C603: VCallAd Control_ID_DetaRubroLbl
  loc_B4C606: FStAdFunc var_A4
  loc_B4C609: FLdRfVar var_A4
  loc_B4C60C: FLdZeroAd var_DC
  loc_B4C60F: FStAdFuncNoPop
  loc_B4C612: CastAd
  loc_B4C615: FStAdFunc var_90
  loc_B4C618: FLdRfVar var_90
  loc_B4C61B: FLdPr Me
  loc_B4C61E: MemLdRfVar from_stack_1.global_76
  loc_B4C621: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4C626: IStI2 arg_C
  loc_B4C629: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C634: Branch loc_B4C6B5
  loc_B4C637: FLdRfVar var_C8
  loc_B4C63A: FLdRfVar var_90
  loc_B4C63D: FLdRfVar var_88
  loc_B4C640: ImpAdLdRf MemVar_C3DC28
  loc_B4C643: NewIfNullPr bscRubro
  loc_B4C646: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C64B: FLdPr var_88
  loc_B4C64E: from_stack_1v = clsbase.RsFrmGet()
  loc_B4C653: FLdPr var_90
  loc_B4C656:  = Me.RecordCount
  loc_B4C65B: ILdRf var_C8
  loc_B4C65E: LitI4 1
  loc_B4C663: LtI4
  loc_B4C664: FFreeAd var_88 = ""
  loc_B4C66B: BranchF loc_B4C6B5
  loc_B4C66E: LitStr "El Rubro NO EXISTE. Verique..."
  loc_B4C671: FLdPr Me
  loc_B4C674: MemStStrCopy
  loc_B4C678: FLdPr Me
  loc_B4C67B: VCallAd Control_ID_IdRubroMsk
  loc_B4C67E: FStAdFunc var_DC
  loc_B4C681: FLdPr Me
  loc_B4C684: VCallAd Control_ID_DetaRubroLbl
  loc_B4C687: FStAdFunc var_A4
  loc_B4C68A: FLdRfVar var_A4
  loc_B4C68D: FLdZeroAd var_DC
  loc_B4C690: FStAdFuncNoPop
  loc_B4C693: CastAd
  loc_B4C696: FStAdFunc var_90
  loc_B4C699: FLdRfVar var_90
  loc_B4C69C: FLdPr Me
  loc_B4C69F: MemLdRfVar from_stack_1.global_76
  loc_B4C6A2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4C6A7: IStI2 arg_C
  loc_B4C6AA: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C6B5: Branch loc_B4C871
  loc_B4C6B8: LitI2_Byte 0
  loc_B4C6BA: ImpAdLdRf MemVar_C3DC28
  loc_B4C6BD: NewIfNullPr bscRubro
  loc_B4C6C0: Call bscRubro.MuestroAnuladosPut(from_stack_1v)
  loc_B4C6C5: LitNothing
  loc_B4C6C7: CastAd
  loc_B4C6CA: FStAdFuncNoPop
  loc_B4C6CD: ImpAdLdRf MemVar_C3DC28
  loc_B4C6D0: NewIfNullPr bscRubro
  loc_B4C6D3: Call bscRubro.global_4309912Set(from_stack_1v)
  loc_B4C6D8: FFree1Ad var_88
  loc_B4C6DB: LitVar_Missing var_EC
  loc_B4C6DE: PopAdLdVar
  loc_B4C6DF: LitVarI4
  loc_B4C6E7: PopAdLdVar
  loc_B4C6E8: ImpAdLdRf MemVar_C3DC28
  loc_B4C6EB: NewIfNullPr bscRubro
  loc_B4C6EE: bscRubro.Show from_stack_1, from_stack_2
  loc_B4C6F3: FLdRfVar var_C8
  loc_B4C6F6: FLdRfVar var_88
  loc_B4C6F9: ImpAdLdRf MemVar_C3DC28
  loc_B4C6FC: NewIfNullPr bscRubro
  loc_B4C6FF: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C704: FLdPr var_88
  loc_B4C707: from_stack_1 = clsbase.RecordCount
  loc_B4C70C: ILdRf var_C8
  loc_B4C70F: LitI4 0
  loc_B4C714: GtI4
  loc_B4C715: FFree1Ad var_88
  loc_B4C718: BranchF loc_B4C82A
  loc_B4C71B: FLdRfVar var_A0
  loc_B4C71E: FLdRfVar var_DC
  loc_B4C721: LitVarStr var_D8, "IdRubro"
  loc_B4C726: PopAdLdVar
  loc_B4C727: FLdRfVar var_A4
  loc_B4C72A: FLdRfVar var_90
  loc_B4C72D: FLdRfVar var_88
  loc_B4C730: ImpAdLdRf MemVar_C3DC28
  loc_B4C733: NewIfNullPr bscRubro
  loc_B4C736: from_stack_1v = bscRubro.global_4309912Get()
  loc_B4C73B: FLdPr var_88
  loc_B4C73E: from_stack_1v = clsbase.RsFrmGet()
  loc_B4C743: FLdPr var_90
  loc_B4C746:  = Me.Fields
  loc_B4C74B: FLdPr var_A4
  loc_B4C74E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4C753: FLdPr var_DC
  loc_B4C756:  = Me.Value
  loc_B4C75B: FLdPr Me
  loc_B4C75E: MemLdRfVar from_stack_1.global_128
  loc_B4C761: NewIfNullRf
  loc_B4C765: FLdRfVar var_A0
  loc_B4C768: CStrVarTmp
  loc_B4C769: FStStrNoPop var_B8
  loc_B4C76C: ImpAdCallI2 Proc_266_11_9916B0(, )
  loc_B4C771: FStStrNoPop var_BC
  loc_B4C774: FLdPr Me
  loc_B4C777: MemStStrCopy
  loc_B4C77B: FFreeStr var_B8 = ""
  loc_B4C782: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C78D: FFree1Var var_A0 = ""
  loc_B4C790: FLdRfVar var_B8
  loc_B4C793: FLdPr Me
  loc_B4C796: MemLdRfVar from_stack_1.global_128
  loc_B4C799: NewIfNullPr tblrubro
  loc_B4C79C: from_stack_1v = tblrubro.IdRubroGet()
  loc_B4C7A1: FLdZeroAd var_B8
  loc_B4C7A4: CVarStr var_A0
  loc_B4C7A7: PopAdLdVar
  loc_B4C7A8: FLdPr Me
  loc_B4C7AB: VCallAd Control_ID_IdRubroMsk
  loc_B4C7AE: FStAdFunc var_88
  loc_B4C7B1: FLdPr var_88
  loc_B4C7B4: LateIdSt
  loc_B4C7B9: FFree1Ad var_88
  loc_B4C7BC: FFree1Var var_A0 = ""
  loc_B4C7BF: FLdRfVar var_B8
  loc_B4C7C2: FLdPr Me
  loc_B4C7C5: MemLdRfVar from_stack_1.global_128
  loc_B4C7C8: NewIfNullPr tblrubro
  loc_B4C7CB: from_stack_1v = tblrubro.DetaRubroGet()
  loc_B4C7D0: ILdRf var_B8
  loc_B4C7D3: FLdPr Me
  loc_B4C7D6: VCallAd Control_ID_DetaRubroLbl
  loc_B4C7D9: FStAdFunc var_88
  loc_B4C7DC: FLdPr var_88
  loc_B4C7DF: Me.Caption = from_stack_1
  loc_B4C7E4: FFree1Str var_B8
  loc_B4C7E7: FFree1Ad var_88
  loc_B4C7EA: FLdPr Me
  loc_B4C7ED: VCallAd Control_ID_IdRubroMsk
  loc_B4C7F0: FStAdFunc var_DC
  loc_B4C7F3: FLdPr Me
  loc_B4C7F6: VCallAd Control_ID_DetaRubroLbl
  loc_B4C7F9: FStAdFunc var_A4
  loc_B4C7FC: FLdRfVar var_A4
  loc_B4C7FF: FLdZeroAd var_DC
  loc_B4C802: FStAdFuncNoPop
  loc_B4C805: CastAd
  loc_B4C808: FStAdFunc var_90
  loc_B4C80B: FLdRfVar var_90
  loc_B4C80E: FLdPr Me
  loc_B4C811: MemLdRfVar from_stack_1.global_76
  loc_B4C814: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4C819: IStI2 arg_C
  loc_B4C81C: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C827: Branch loc_B4C871
  loc_B4C82A: LitStr "El Rubro NO EXISTE. Verifique..."
  loc_B4C82D: FLdPr Me
  loc_B4C830: MemStStrCopy
  loc_B4C834: FLdPr Me
  loc_B4C837: VCallAd Control_ID_IdRubroMsk
  loc_B4C83A: FStAdFunc var_DC
  loc_B4C83D: FLdPr Me
  loc_B4C840: VCallAd Control_ID_DetaRubroLbl
  loc_B4C843: FStAdFunc var_A4
  loc_B4C846: FLdRfVar var_A4
  loc_B4C849: FLdZeroAd var_DC
  loc_B4C84C: FStAdFuncNoPop
  loc_B4C84F: CastAd
  loc_B4C852: FStAdFunc var_90
  loc_B4C855: FLdRfVar var_90
  loc_B4C858: FLdPr Me
  loc_B4C85B: MemLdRfVar from_stack_1.global_76
  loc_B4C85E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4C863: IStI2 arg_C
  loc_B4C866: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4C871: ILdI2 arg_C
  loc_B4C874: NotI4
  loc_B4C875: BranchF loc_B4C8A6
  loc_B4C878: FLdRfVar var_B8
  loc_B4C87B: FLdPr Me
  loc_B4C87E: MemLdRfVar from_stack_1.global_128
  loc_B4C881: NewIfNullPr tblrubro
  loc_B4C884: from_stack_1v = tblrubro.DetaRubroGet()
  loc_B4C889: ILdRf var_B8
  loc_B4C88C: FLdPr Me
  loc_B4C88F: VCallAd Control_ID_DetaRubroLbl
  loc_B4C892: FStAdFunc var_88
  loc_B4C895: FLdPr var_88
  loc_B4C898: Me.Caption = from_stack_1
  loc_B4C89D: FFree1Str var_B8
  loc_B4C8A0: FFree1Ad var_88
  loc_B4C8A3: Branch loc_B4C8C0
  loc_B4C8A6: LitVarStr var_D8, "#####"
  loc_B4C8AB: PopAdLdVar
  loc_B4C8AC: FLdPr Me
  loc_B4C8AF: VCallAd Control_ID_IdRubroMsk
  loc_B4C8B2: FStAdFunc var_88
  loc_B4C8B5: FLdPr var_88
  loc_B4C8B8: LateIdSt
  loc_B4C8BD: FFree1Ad var_88
  loc_B4C8C0: ExitProcHresult
  loc_B4C8C1: NewIfNullPr Me
End Function

Private Sub IdRubroMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A21748
  'Data Table: 4FD0E0
  loc_A215A4: ILdI2 Shift
  loc_A215A7: CI4UI1
  loc_A215A8: LitI4 2
  loc_A215AD: EqI4
  loc_A215AE: ILdI2 KeyCode
  loc_A215B1: CI4UI1
  loc_A215B2: LitI4 &H42
  loc_A215B7: EqI4
  loc_A215B8: AndI4
  loc_A215B9: BranchF loc_A21747
  loc_A215BC: LitI2_Byte 0
  loc_A215BE: ImpAdLdRf MemVar_C3DC28
  loc_A215C1: NewIfNullPr bscRubro
  loc_A215C4: Call bscRubro.MuestroAnuladosPut(from_stack_1v)
  loc_A215C9: LitNothing
  loc_A215CB: CastAd
  loc_A215CE: FStAdFuncNoPop
  loc_A215D1: ImpAdLdRf MemVar_C3DC28
  loc_A215D4: NewIfNullPr bscRubro
  loc_A215D7: Call bscRubro.global_4309912Set(from_stack_1v)
  loc_A215DC: FFree1Ad var_88
  loc_A215DF: LitVar_Missing var_A8
  loc_A215E2: PopAdLdVar
  loc_A215E3: LitVarI4
  loc_A215EB: PopAdLdVar
  loc_A215EC: ImpAdLdRf MemVar_C3DC28
  loc_A215EF: NewIfNullPr bscRubro
  loc_A215F2: bscRubro.Show from_stack_1, from_stack_2
  loc_A215F7: FLdRfVar var_AC
  loc_A215FA: FLdRfVar var_88
  loc_A215FD: ImpAdLdRf MemVar_C3DC28
  loc_A21600: NewIfNullPr bscRubro
  loc_A21603: from_stack_1v = bscRubro.global_4309912Get()
  loc_A21608: FLdPr var_88
  loc_A2160B: from_stack_1 = clsbase.RecordCount
  loc_A21610: ILdRf var_AC
  loc_A21613: LitI4 0
  loc_A21618: GtI4
  loc_A21619: FFree1Ad var_88
  loc_A2161C: BranchF loc_A21747
  loc_A2161F: FLdRfVar var_AC
  loc_A21622: FLdRfVar var_B0
  loc_A21625: FLdRfVar var_88
  loc_A21628: ImpAdLdRf MemVar_C3DC28
  loc_A2162B: NewIfNullPr bscRubro
  loc_A2162E: from_stack_1v = bscRubro.global_4309912Get()
  loc_A21633: FLdPr var_88
  loc_A21636: from_stack_1v = clsbase.RsFrmGet()
  loc_A2163B: FLdPr var_B0
  loc_A2163E:  = Me.AbsolutePosition
  loc_A21643: ILdRf var_AC
  loc_A21646: LitI4 1
  loc_A2164B: EqI4
  loc_A2164C: FFreeAd var_88 = ""
  loc_A21653: BranchF loc_A2166F
  loc_A21656: FLdRfVar var_88
  loc_A21659: ImpAdLdRf MemVar_C3DC28
  loc_A2165C: NewIfNullPr bscRubro
  loc_A2165F: from_stack_1v = bscRubro.global_4309912Get()
  loc_A21664: FLdPr var_88
  loc_A21667: Call clsbase.MovePrevious()
  loc_A2166C: FFree1Ad var_88
  loc_A2166F: FLdRfVar var_C8
  loc_A21672: FLdRfVar var_B8
  loc_A21675: LitVarStr var_98, "IdRubro"
  loc_A2167A: PopAdLdVar
  loc_A2167B: FLdRfVar var_B4
  loc_A2167E: FLdRfVar var_B0
  loc_A21681: FLdRfVar var_88
  loc_A21684: ImpAdLdRf MemVar_C3DC28
  loc_A21687: NewIfNullPr bscRubro
  loc_A2168A: from_stack_1v = bscRubro.global_4309912Get()
  loc_A2168F: FLdPr var_88
  loc_A21692: from_stack_1v = clsbase.RsFrmGet()
  loc_A21697: FLdPr var_B0
  loc_A2169A:  = Me.Fields
  loc_A2169F: FLdPr var_B4
  loc_A216A2: from_stack_2 = Me.Item(from_stack_1)
  loc_A216A7: FLdPr var_B8
  loc_A216AA:  = Me.Value
  loc_A216AF: FLdRfVar var_C8
  loc_A216B2: CStrVarTmp
  loc_A216B3: CVarStr var_D8
  loc_A216B6: PopAdLdVar
  loc_A216B7: FLdPr Me
  loc_A216BA: VCallAd Control_ID_IdRubroMsk
  loc_A216BD: FStAdFunc var_DC
  loc_A216C0: FLdPr var_DC
  loc_A216C3: LateIdSt
  loc_A216C8: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A216D5: FFreeVar var_C8 = ""
  loc_A216DC: FLdRfVar var_C8
  loc_A216DF: FLdRfVar var_B8
  loc_A216E2: LitVarStr var_98, "DetaRubro"
  loc_A216E7: PopAdLdVar
  loc_A216E8: FLdRfVar var_B4
  loc_A216EB: FLdRfVar var_B0
  loc_A216EE: FLdRfVar var_88
  loc_A216F1: ImpAdLdRf MemVar_C3DC28
  loc_A216F4: NewIfNullPr bscRubro
  loc_A216F7: from_stack_1v = bscRubro.global_4309912Get()
  loc_A216FC: FLdPr var_88
  loc_A216FF: from_stack_1v = clsbase.RsFrmGet()
  loc_A21704: FLdPr var_B0
  loc_A21707:  = Me.Fields
  loc_A2170C: FLdPr var_B4
  loc_A2170F: from_stack_2 = Me.Item(from_stack_1)
  loc_A21714: FLdPr var_B8
  loc_A21717:  = Me.Value
  loc_A2171C: FLdRfVar var_C8
  loc_A2171F: CStrVarTmp
  loc_A21720: FStStrNoPop var_E0
  loc_A21723: FLdPr Me
  loc_A21726: VCallAd Control_ID_DetaRubroLbl
  loc_A21729: FStAdFunc var_DC
  loc_A2172C: FLdPr var_DC
  loc_A2172F: Me.Caption = from_stack_1
  loc_A21734: FFree1Str var_E0
  loc_A21737: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A21744: FFree1Var var_C8 = ""
  loc_A21747: ExitProcHresult
End Sub

Private Sub IdUbfiMsk_UnknownEvent_0 '97EC5C
  'Data Table: 4FD0E0
  loc_97EC2C: LitVarStr var_94, "#####"
  loc_97EC31: PopAdLdVar
  loc_97EC32: FLdPr Me
  loc_97EC35: VCallAd Control_ID_IdUbfiMsk
  loc_97EC38: FStAdFunc var_A8
  loc_97EC3B: FLdPr var_A8
  loc_97EC3E: LateIdSt
  loc_97EC43: FFree1Ad var_A8
  loc_97EC46: FLdPr Me
  loc_97EC49: VCallAd Control_ID_IdUbfiMsk
  loc_97EC4C: CVarAd
  loc_97EC50: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_97EC55: FFree1Var var_B8 = ""
  loc_97EC58: ExitProcHresult
  loc_97EC59: AndI4
  loc_97EC5A: FLdPr arg_6808
End Sub

Private Sub IdUbfiMsk_UnknownEvent_1 '96ADBC
  'Data Table: 4FD0E0
  loc_96ADA0: LitVarStr var_94, "#####"
  loc_96ADA5: PopAdLdVar
  loc_96ADA6: FLdPr Me
  loc_96ADA9: VCallAd Control_ID_IdUbfiMsk
  loc_96ADAC: FStAdFunc var_A8
  loc_96ADAF: FLdPr var_A8
  loc_96ADB2: LateIdSt
  loc_96ADB7: FFree1Ad var_A8
  loc_96ADBA: ExitProcHresult
End Sub

Private Sub IdUbfiMsk_UnknownEvent_8 'BA294C
  'Data Table: 4FD0E0
  loc_BA19F0: FLdRfVar var_8A
  loc_BA19F3: FLdPr Me
  loc_BA19F6: VCallAd Control_ID_cmdCancelar
  loc_BA19F9: FStAdFunc var_88
  loc_BA19FC: FLdPr var_88
  loc_BA19FF:  = Me.Value
  loc_BA1A04: FLdI2 var_8A
  loc_BA1A07: NotI4
  loc_BA1A08: FLdPr Me
  loc_BA1A0B: VCallAd Control_ID_IdUbfiMsk
  loc_BA1A0E: FStAdFunc var_90
  loc_BA1A11: FLdPr var_90
  loc_BA1A14: LateIdLdVar var_A0 DispID_13 -32767
  loc_BA1A1B: CBoolVar
  loc_BA1A1D: AndI4
  loc_BA1A1E: FLdPr Me
  loc_BA1A21: VCallAd Control_ID_IdUbfiMsk
  loc_BA1A24: FStAdFunc var_A4
  loc_BA1A27: FLdPr var_A4
  loc_BA1A2A: LateIdLdVar var_B4 DispID_22 0
  loc_BA1A31: CStrVarTmp
  loc_BA1A32: FStStrNoPop var_B8
  loc_BA1A35: LitStr "0"
  loc_BA1A38: NeStr
  loc_BA1A3A: AndI4
  loc_BA1A3B: FFree1Str var_B8
  loc_BA1A3E: FFreeAd var_88 = "": var_90 = ""
  loc_BA1A47: FFreeVar var_A0 = ""
  loc_BA1A4E: BranchF loc_BA286A
  loc_BA1A51: FLdPr Me
  loc_BA1A54: VCallAd Control_ID_IdUbfiMsk
  loc_BA1A57: FStAdFunc var_88
  loc_BA1A5A: FLdPr var_88
  loc_BA1A5D: LateIdLdVar var_A0 DispID_22 0
  loc_BA1A64: CStrVarTmp
  loc_BA1A65: FStStrNoPop var_B8
  loc_BA1A68: ImpAdCallI2 Trim$()
  loc_BA1A6D: FStStrNoPop var_BC
  loc_BA1A70: LitStr vbNullString
  loc_BA1A73: NeStr
  loc_BA1A75: FFreeStr var_B8 = ""
  loc_BA1A7C: FFree1Ad var_88
  loc_BA1A7F: FFree1Var var_A0 = ""
  loc_BA1A82: BranchF loc_BA2554
  loc_BA1A85: FLdPr Me
  loc_BA1A88: VCallAd Control_ID_IdUbfiMsk
  loc_BA1A8B: FStAdFunc var_88
  loc_BA1A8E: FLdRfVar var_88
  loc_BA1A91: ImpAdCallI2 Proc_266_40_A1E128()
  loc_BA1A96: FFree1Ad var_88
  loc_BA1A99: BranchF loc_BA1FF8
  loc_BA1A9C: FLdPr Me
  loc_BA1A9F: VCallAd Control_ID_IdUbfiMsk
  loc_BA1AA2: FStAdFunc var_88
  loc_BA1AA5: FLdPr var_88
  loc_BA1AA8: LateIdLdVar var_A0 DispID_22 0
  loc_BA1AAF: PopAd
  loc_BA1AB1: LitStr " AND uf.IdUbfi = '"
  loc_BA1AB4: LitI4 0
  loc_BA1AB9: LitI4 -1
  loc_BA1ABE: LitI4 1
  loc_BA1AC3: LitStr vbNullString
  loc_BA1AC6: LitStr "."
  loc_BA1AC9: FLdRfVar var_A0
  loc_BA1ACC: CStrVarTmp
  loc_BA1ACD: FStStrNoPop var_B8
  loc_BA1AD0: ImpAdCallI2 Replace(, , , , , )
  loc_BA1AD5: FStStrNoPop var_BC
  loc_BA1AD8: ConcatStr
  loc_BA1AD9: FStStrNoPop var_C0
  loc_BA1ADC: LitStr "' AND uf.CodiTiUbfi = 3"
  loc_BA1ADF: ConcatStr
  loc_BA1AE0: FStStrNoPop var_C4
  loc_BA1AE3: ImpAdLdRf MemVar_C3D7C4
  loc_BA1AE6: NewIfNullPr bscUbicacionFisica
  loc_BA1AE9: Call bscUbicacionFisica.Constructor(from_stack_1v)
  loc_BA1AEE: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_BA1AF9: FFree1Ad var_88
  loc_BA1AFC: FFree1Var var_A0 = ""
  loc_BA1AFF: FLdRfVar var_C8
  loc_BA1B02: FLdRfVar var_90
  loc_BA1B05: FLdRfVar var_88
  loc_BA1B08: ImpAdLdRf MemVar_C3D7C4
  loc_BA1B0B: NewIfNullPr bscUbicacionFisica
  loc_BA1B0E: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA1B13: FLdPr var_88
  loc_BA1B16: from_stack_1v = clsbase.RsFrmGet()
  loc_BA1B1B: FLdPr var_90
  loc_BA1B1E:  = Me.RecordCount
  loc_BA1B23: ILdRf var_C8
  loc_BA1B26: LitI4 1
  loc_BA1B2B: EqI4
  loc_BA1B2C: FFreeAd var_88 = ""
  loc_BA1B33: BranchF loc_BA1CD9
  loc_BA1B36: FLdRfVar var_A0
  loc_BA1B39: FLdRfVar var_DC
  loc_BA1B3C: LitVarStr var_D8, "IdUbfi"
  loc_BA1B41: PopAdLdVar
  loc_BA1B42: FLdRfVar var_A4
  loc_BA1B45: FLdRfVar var_90
  loc_BA1B48: FLdRfVar var_88
  loc_BA1B4B: ImpAdLdRf MemVar_C3D7C4
  loc_BA1B4E: NewIfNullPr bscUbicacionFisica
  loc_BA1B51: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA1B56: FLdPr var_88
  loc_BA1B59: from_stack_1v = clsbase.RsFrmGet()
  loc_BA1B5E: FLdPr var_90
  loc_BA1B61:  = Me.Fields
  loc_BA1B66: FLdPr var_A4
  loc_BA1B69: from_stack_2 = Me.Item(from_stack_1)
  loc_BA1B6E: FLdPr var_DC
  loc_BA1B71:  = Me.Value
  loc_BA1B76: FLdPr Me
  loc_BA1B79: MemLdRfVar from_stack_1.global_132
  loc_BA1B7C: NewIfNullRf
  loc_BA1B80: FLdRfVar var_A0
  loc_BA1B83: CStrVarTmp
  loc_BA1B84: FStStrNoPop var_B8
  loc_BA1B87: ImpAdCallI2 Proc_266_14_99BE68(, )
  loc_BA1B8C: FStStrNoPop var_BC
  loc_BA1B8F: FLdPr Me
  loc_BA1B92: MemStStrCopy
  loc_BA1B96: FFreeStr var_B8 = ""
  loc_BA1B9D: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA1BA8: FFree1Var var_A0 = ""
  loc_BA1BAB: FLdRfVar var_B8
  loc_BA1BAE: FLdPr Me
  loc_BA1BB1: MemLdRfVar from_stack_1.global_132
  loc_BA1BB4: NewIfNullPr tblubicfisica
  loc_BA1BB7: from_stack_1v = tblubicfisica.IdUbfiGet()
  loc_BA1BBC: FLdZeroAd var_B8
  loc_BA1BBF: CVarStr var_A0
  loc_BA1BC2: PopAdLdVar
  loc_BA1BC3: FLdPr Me
  loc_BA1BC6: VCallAd Control_ID_IdUbfiMsk
  loc_BA1BC9: FStAdFunc var_88
  loc_BA1BCC: FLdPr var_88
  loc_BA1BCF: LateIdSt
  loc_BA1BD4: FFree1Ad var_88
  loc_BA1BD7: FFree1Var var_A0 = ""
  loc_BA1BDA: FLdRfVar var_B8
  loc_BA1BDD: FLdPr Me
  loc_BA1BE0: MemLdRfVar from_stack_1.global_132
  loc_BA1BE3: NewIfNullPr tblubicfisica
  loc_BA1BE6: from_stack_1v = tblubicfisica.DetaUbfiGet()
  loc_BA1BEB: ILdRf var_B8
  loc_BA1BEE: FLdPr Me
  loc_BA1BF1: VCallAd Control_ID_DetaUbfiLbl
  loc_BA1BF4: FStAdFunc var_88
  loc_BA1BF7: FLdPr var_88
  loc_BA1BFA: Me.Caption = from_stack_1
  loc_BA1BFF: FFree1Str var_B8
  loc_BA1C02: FFree1Ad var_88
  loc_BA1C05: FLdRfVar var_B8
  loc_BA1C08: FLdPr Me
  loc_BA1C0B: MemLdRfVar from_stack_1.global_132
  loc_BA1C0E: NewIfNullPr tblubicfisica
  loc_BA1C11: from_stack_1v = tblubicfisica.DireUbfiGet()
  loc_BA1C16: ILdRf var_B8
  loc_BA1C19: LitStr " - "
  loc_BA1C1C: ConcatStr
  loc_BA1C1D: FStStrNoPop var_C0
  loc_BA1C20: FLdRfVar var_BC
  loc_BA1C23: FLdPr Me
  loc_BA1C26: MemLdRfVar from_stack_1.global_132
  loc_BA1C29: NewIfNullPr tblubicfisica
  loc_BA1C2C: from_stack_1v = tblubicfisica.TeleUbfiGet()
  loc_BA1C31: ILdRf var_BC
  loc_BA1C34: ConcatStr
  loc_BA1C35: FStStrNoPop var_C4
  loc_BA1C38: LitStr " - "
  loc_BA1C3B: ConcatStr
  loc_BA1C3C: FStStrNoPop var_E4
  loc_BA1C3F: FLdRfVar var_E0
  loc_BA1C42: FLdPr Me
  loc_BA1C45: MemLdRfVar from_stack_1.global_132
  loc_BA1C48: NewIfNullPr tblubicfisica
  loc_BA1C4B: from_stack_1v = tblubicfisica.CeluUbfiGet()
  loc_BA1C50: ILdRf var_E0
  loc_BA1C53: ConcatStr
  loc_BA1C54: FStStrNoPop var_E8
  loc_BA1C57: FLdPr Me
  loc_BA1C5A: VCallAd Control_ID_DienNopeTxt
  loc_BA1C5D: FStAdFunc var_88
  loc_BA1C60: FLdPr var_88
  loc_BA1C63: Me.Text = from_stack_1
  loc_BA1C68: FFreeStr var_B8 = "": var_C0 = "": var_BC = "": var_C4 = "": var_E4 = "": var_E0 = ""
  loc_BA1C79: FFree1Ad var_88
  loc_BA1C7C: FLdPr Me
  loc_BA1C7F: VCallAd Control_ID_IdUbfiMsk
  loc_BA1C82: FStAdFunc var_DC
  loc_BA1C85: FLdPr Me
  loc_BA1C88: VCallAd Control_ID_DetaUbfiLbl
  loc_BA1C8B: FStAdFunc var_A4
  loc_BA1C8E: FLdRfVar var_A4
  loc_BA1C91: FLdZeroAd var_DC
  loc_BA1C94: FStAdFuncNoPop
  loc_BA1C97: CastAd
  loc_BA1C9A: FStAdFunc var_90
  loc_BA1C9D: FLdRfVar var_90
  loc_BA1CA0: FLdPr Me
  loc_BA1CA3: MemLdRfVar from_stack_1.global_76
  loc_BA1CA6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA1CAB: IStI2 KeyCode
  loc_BA1CAE: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA1CB9: ILdI2 KeyCode
  loc_BA1CBC: BranchF loc_BA1CD6
  loc_BA1CBF: LitStr vbNullString
  loc_BA1CC2: FLdPr Me
  loc_BA1CC5: VCallAd Control_ID_DienNopeTxt
  loc_BA1CC8: FStAdFunc var_88
  loc_BA1CCB: FLdPr var_88
  loc_BA1CCE: Me.Text = from_stack_1
  loc_BA1CD3: FFree1Ad var_88
  loc_BA1CD6: Branch loc_BA1FF5
  loc_BA1CD9: FLdRfVar var_C8
  loc_BA1CDC: FLdRfVar var_90
  loc_BA1CDF: FLdRfVar var_88
  loc_BA1CE2: ImpAdLdRf MemVar_C3D7C4
  loc_BA1CE5: NewIfNullPr bscUbicacionFisica
  loc_BA1CE8: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA1CED: FLdPr var_88
  loc_BA1CF0: from_stack_1v = clsbase.RsFrmGet()
  loc_BA1CF5: FLdPr var_90
  loc_BA1CF8:  = Me.RecordCount
  loc_BA1CFD: ILdRf var_C8
  loc_BA1D00: LitI4 1
  loc_BA1D05: GtI4
  loc_BA1D06: FFreeAd var_88 = ""
  loc_BA1D0D: BranchF loc_BA1F5A
  loc_BA1D10: LitVar_Missing var_F8
  loc_BA1D13: PopAdLdVar
  loc_BA1D14: LitVarI4
  loc_BA1D1C: PopAdLdVar
  loc_BA1D1D: ImpAdLdRf MemVar_C3D7C4
  loc_BA1D20: NewIfNullPr bscUbicacionFisica
  loc_BA1D23: bscUbicacionFisica.Show from_stack_1, from_stack_2
  loc_BA1D28: FLdRfVar var_C8
  loc_BA1D2B: FLdRfVar var_88
  loc_BA1D2E: ImpAdLdRf MemVar_C3D7C4
  loc_BA1D31: NewIfNullPr bscUbicacionFisica
  loc_BA1D34: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA1D39: FLdPr var_88
  loc_BA1D3C: from_stack_1 = clsbase.RecordCount
  loc_BA1D41: ILdRf var_C8
  loc_BA1D44: LitI4 0
  loc_BA1D49: GtI4
  loc_BA1D4A: FFree1Ad var_88
  loc_BA1D4D: BranchF loc_BA1EF3
  loc_BA1D50: FLdRfVar var_A0
  loc_BA1D53: FLdRfVar var_DC
  loc_BA1D56: LitVarStr var_D8, "IdUbfi"
  loc_BA1D5B: PopAdLdVar
  loc_BA1D5C: FLdRfVar var_A4
  loc_BA1D5F: FLdRfVar var_90
  loc_BA1D62: FLdRfVar var_88
  loc_BA1D65: ImpAdLdRf MemVar_C3D7C4
  loc_BA1D68: NewIfNullPr bscUbicacionFisica
  loc_BA1D6B: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA1D70: FLdPr var_88
  loc_BA1D73: from_stack_1v = clsbase.RsFrmGet()
  loc_BA1D78: FLdPr var_90
  loc_BA1D7B:  = Me.Fields
  loc_BA1D80: FLdPr var_A4
  loc_BA1D83: from_stack_2 = Me.Item(from_stack_1)
  loc_BA1D88: FLdPr var_DC
  loc_BA1D8B:  = Me.Value
  loc_BA1D90: FLdPr Me
  loc_BA1D93: MemLdRfVar from_stack_1.global_132
  loc_BA1D96: NewIfNullRf
  loc_BA1D9A: FLdRfVar var_A0
  loc_BA1D9D: CStrVarTmp
  loc_BA1D9E: FStStrNoPop var_B8
  loc_BA1DA1: ImpAdCallI2 Proc_266_14_99BE68(, )
  loc_BA1DA6: FStStrNoPop var_BC
  loc_BA1DA9: FLdPr Me
  loc_BA1DAC: MemStStrCopy
  loc_BA1DB0: FFreeStr var_B8 = ""
  loc_BA1DB7: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA1DC2: FFree1Var var_A0 = ""
  loc_BA1DC5: FLdRfVar var_B8
  loc_BA1DC8: FLdPr Me
  loc_BA1DCB: MemLdRfVar from_stack_1.global_132
  loc_BA1DCE: NewIfNullPr tblubicfisica
  loc_BA1DD1: from_stack_1v = tblubicfisica.IdUbfiGet()
  loc_BA1DD6: FLdZeroAd var_B8
  loc_BA1DD9: CVarStr var_A0
  loc_BA1DDC: PopAdLdVar
  loc_BA1DDD: FLdPr Me
  loc_BA1DE0: VCallAd Control_ID_IdUbfiMsk
  loc_BA1DE3: FStAdFunc var_88
  loc_BA1DE6: FLdPr var_88
  loc_BA1DE9: LateIdSt
  loc_BA1DEE: FFree1Ad var_88
  loc_BA1DF1: FFree1Var var_A0 = ""
  loc_BA1DF4: FLdRfVar var_B8
  loc_BA1DF7: FLdPr Me
  loc_BA1DFA: MemLdRfVar from_stack_1.global_132
  loc_BA1DFD: NewIfNullPr tblubicfisica
  loc_BA1E00: from_stack_1v = tblubicfisica.DetaUbfiGet()
  loc_BA1E05: ILdRf var_B8
  loc_BA1E08: FLdPr Me
  loc_BA1E0B: VCallAd Control_ID_DetaUbfiLbl
  loc_BA1E0E: FStAdFunc var_88
  loc_BA1E11: FLdPr var_88
  loc_BA1E14: Me.Caption = from_stack_1
  loc_BA1E19: FFree1Str var_B8
  loc_BA1E1C: FFree1Ad var_88
  loc_BA1E1F: FLdRfVar var_B8
  loc_BA1E22: FLdPr Me
  loc_BA1E25: MemLdRfVar from_stack_1.global_132
  loc_BA1E28: NewIfNullPr tblubicfisica
  loc_BA1E2B: from_stack_1v = tblubicfisica.DireUbfiGet()
  loc_BA1E30: ILdRf var_B8
  loc_BA1E33: LitStr " - "
  loc_BA1E36: ConcatStr
  loc_BA1E37: FStStrNoPop var_C0
  loc_BA1E3A: FLdRfVar var_BC
  loc_BA1E3D: FLdPr Me
  loc_BA1E40: MemLdRfVar from_stack_1.global_132
  loc_BA1E43: NewIfNullPr tblubicfisica
  loc_BA1E46: from_stack_1v = tblubicfisica.TeleUbfiGet()
  loc_BA1E4B: ILdRf var_BC
  loc_BA1E4E: ConcatStr
  loc_BA1E4F: FStStrNoPop var_C4
  loc_BA1E52: LitStr " - "
  loc_BA1E55: ConcatStr
  loc_BA1E56: FStStrNoPop var_E4
  loc_BA1E59: FLdRfVar var_E0
  loc_BA1E5C: FLdPr Me
  loc_BA1E5F: MemLdRfVar from_stack_1.global_132
  loc_BA1E62: NewIfNullPr tblubicfisica
  loc_BA1E65: from_stack_1v = tblubicfisica.CeluUbfiGet()
  loc_BA1E6A: ILdRf var_E0
  loc_BA1E6D: ConcatStr
  loc_BA1E6E: FStStrNoPop var_E8
  loc_BA1E71: FLdPr Me
  loc_BA1E74: VCallAd Control_ID_DienNopeTxt
  loc_BA1E77: FStAdFunc var_88
  loc_BA1E7A: FLdPr var_88
  loc_BA1E7D: Me.Text = from_stack_1
  loc_BA1E82: FFreeStr var_B8 = "": var_C0 = "": var_BC = "": var_C4 = "": var_E4 = "": var_E0 = ""
  loc_BA1E93: FFree1Ad var_88
  loc_BA1E96: FLdPr Me
  loc_BA1E99: VCallAd Control_ID_IdUbfiMsk
  loc_BA1E9C: FStAdFunc var_DC
  loc_BA1E9F: FLdPr Me
  loc_BA1EA2: VCallAd Control_ID_DetaUbfiLbl
  loc_BA1EA5: FStAdFunc var_A4
  loc_BA1EA8: FLdRfVar var_A4
  loc_BA1EAB: FLdZeroAd var_DC
  loc_BA1EAE: FStAdFuncNoPop
  loc_BA1EB1: CastAd
  loc_BA1EB4: FStAdFunc var_90
  loc_BA1EB7: FLdRfVar var_90
  loc_BA1EBA: FLdPr Me
  loc_BA1EBD: MemLdRfVar from_stack_1.global_76
  loc_BA1EC0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA1EC5: IStI2 KeyCode
  loc_BA1EC8: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA1ED3: ILdI2 KeyCode
  loc_BA1ED6: BranchF loc_BA1EF0
  loc_BA1ED9: LitStr vbNullString
  loc_BA1EDC: FLdPr Me
  loc_BA1EDF: VCallAd Control_ID_DienNopeTxt
  loc_BA1EE2: FStAdFunc var_88
  loc_BA1EE5: FLdPr var_88
  loc_BA1EE8: Me.Text = from_stack_1
  loc_BA1EED: FFree1Ad var_88
  loc_BA1EF0: Branch loc_BA1F57
  loc_BA1EF3: LitStr "La Ubicación Física NO EXISTE. Verifique..."
  loc_BA1EF6: FLdPr Me
  loc_BA1EF9: MemStStrCopy
  loc_BA1EFD: FLdPr Me
  loc_BA1F00: VCallAd Control_ID_IdUbfiMsk
  loc_BA1F03: FStAdFunc var_DC
  loc_BA1F06: FLdPr Me
  loc_BA1F09: VCallAd Control_ID_DetaUbfiLbl
  loc_BA1F0C: FStAdFunc var_A4
  loc_BA1F0F: FLdRfVar var_A4
  loc_BA1F12: FLdZeroAd var_DC
  loc_BA1F15: FStAdFuncNoPop
  loc_BA1F18: CastAd
  loc_BA1F1B: FStAdFunc var_90
  loc_BA1F1E: FLdRfVar var_90
  loc_BA1F21: FLdPr Me
  loc_BA1F24: MemLdRfVar from_stack_1.global_76
  loc_BA1F27: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA1F2C: IStI2 KeyCode
  loc_BA1F2F: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA1F3A: ILdI2 KeyCode
  loc_BA1F3D: BranchF loc_BA1F57
  loc_BA1F40: LitStr vbNullString
  loc_BA1F43: FLdPr Me
  loc_BA1F46: VCallAd Control_ID_DienNopeTxt
  loc_BA1F49: FStAdFunc var_88
  loc_BA1F4C: FLdPr var_88
  loc_BA1F4F: Me.Text = from_stack_1
  loc_BA1F54: FFree1Ad var_88
  loc_BA1F57: Branch loc_BA1FF5
  loc_BA1F5A: FLdRfVar var_C8
  loc_BA1F5D: FLdRfVar var_90
  loc_BA1F60: FLdRfVar var_88
  loc_BA1F63: ImpAdLdRf MemVar_C3D7C4
  loc_BA1F66: NewIfNullPr bscUbicacionFisica
  loc_BA1F69: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA1F6E: FLdPr var_88
  loc_BA1F71: from_stack_1v = clsbase.RsFrmGet()
  loc_BA1F76: FLdPr var_90
  loc_BA1F79:  = Me.RecordCount
  loc_BA1F7E: ILdRf var_C8
  loc_BA1F81: LitI4 1
  loc_BA1F86: LtI4
  loc_BA1F87: FFreeAd var_88 = ""
  loc_BA1F8E: BranchF loc_BA1FF5
  loc_BA1F91: LitStr "La Ubicación Física NO EXISTE. Verifique..."
  loc_BA1F94: FLdPr Me
  loc_BA1F97: MemStStrCopy
  loc_BA1F9B: FLdPr Me
  loc_BA1F9E: VCallAd Control_ID_IdUbfiMsk
  loc_BA1FA1: FStAdFunc var_DC
  loc_BA1FA4: FLdPr Me
  loc_BA1FA7: VCallAd Control_ID_DetaUbfiLbl
  loc_BA1FAA: FStAdFunc var_A4
  loc_BA1FAD: FLdRfVar var_A4
  loc_BA1FB0: FLdZeroAd var_DC
  loc_BA1FB3: FStAdFuncNoPop
  loc_BA1FB6: CastAd
  loc_BA1FB9: FStAdFunc var_90
  loc_BA1FBC: FLdRfVar var_90
  loc_BA1FBF: FLdPr Me
  loc_BA1FC2: MemLdRfVar from_stack_1.global_76
  loc_BA1FC5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA1FCA: IStI2 KeyCode
  loc_BA1FCD: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA1FD8: ILdI2 KeyCode
  loc_BA1FDB: BranchF loc_BA1FF5
  loc_BA1FDE: LitStr vbNullString
  loc_BA1FE1: FLdPr Me
  loc_BA1FE4: VCallAd Control_ID_DienNopeTxt
  loc_BA1FE7: FStAdFunc var_88
  loc_BA1FEA: FLdPr var_88
  loc_BA1FED: Me.Text = from_stack_1
  loc_BA1FF2: FFree1Ad var_88
  loc_BA1FF5: Branch loc_BA2551
  loc_BA1FF8: FLdPr Me
  loc_BA1FFB: VCallAd Control_ID_IdUbfiMsk
  loc_BA1FFE: FStAdFunc var_88
  loc_BA2001: FLdPr var_88
  loc_BA2004: LateIdLdVar var_A0 DispID_22 0
  loc_BA200B: PopAd
  loc_BA200D: LitStr " AND DetaUbfi LIKE '" & Chr(37)
  loc_BA2010: LitI4 0
  loc_BA2015: LitI4 -1
  loc_BA201A: LitI4 1
  loc_BA201F: LitStr Chr(37)
  loc_BA2022: LitStr " "
  loc_BA2025: FLdRfVar var_A0
  loc_BA2028: CStrVarTmp
  loc_BA2029: FStStrNoPop var_B8
  loc_BA202C: ImpAdCallI2 Replace(, , , , , )
  loc_BA2031: FStStrNoPop var_BC
  loc_BA2034: ConcatStr
  loc_BA2035: FStStrNoPop var_C0
  loc_BA2038: LitStr Chr(37) & "' AND uf.CodiTiUbfi = 3 ORDER BY DetaUbfi"
  loc_BA203B: ConcatStr
  loc_BA203C: FStStrNoPop var_C4
  loc_BA203F: ImpAdLdRf MemVar_C3D7C4
  loc_BA2042: NewIfNullPr bscUbicacionFisica
  loc_BA2045: Call bscUbicacionFisica.Constructor(from_stack_1v)
  loc_BA204A: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_BA2055: FFree1Ad var_88
  loc_BA2058: FFree1Var var_A0 = ""
  loc_BA205B: FLdRfVar var_C8
  loc_BA205E: FLdRfVar var_90
  loc_BA2061: FLdRfVar var_88
  loc_BA2064: ImpAdLdRf MemVar_C3D7C4
  loc_BA2067: NewIfNullPr bscUbicacionFisica
  loc_BA206A: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA206F: FLdPr var_88
  loc_BA2072: from_stack_1v = clsbase.RsFrmGet()
  loc_BA2077: FLdPr var_90
  loc_BA207A:  = Me.RecordCount
  loc_BA207F: ILdRf var_C8
  loc_BA2082: LitI4 1
  loc_BA2087: EqI4
  loc_BA2088: FFreeAd var_88 = ""
  loc_BA208F: BranchF loc_BA2235
  loc_BA2092: FLdRfVar var_A0
  loc_BA2095: FLdRfVar var_DC
  loc_BA2098: LitVarStr var_D8, "IdUbfi"
  loc_BA209D: PopAdLdVar
  loc_BA209E: FLdRfVar var_A4
  loc_BA20A1: FLdRfVar var_90
  loc_BA20A4: FLdRfVar var_88
  loc_BA20A7: ImpAdLdRf MemVar_C3D7C4
  loc_BA20AA: NewIfNullPr bscUbicacionFisica
  loc_BA20AD: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA20B2: FLdPr var_88
  loc_BA20B5: from_stack_1v = clsbase.RsFrmGet()
  loc_BA20BA: FLdPr var_90
  loc_BA20BD:  = Me.Fields
  loc_BA20C2: FLdPr var_A4
  loc_BA20C5: from_stack_2 = Me.Item(from_stack_1)
  loc_BA20CA: FLdPr var_DC
  loc_BA20CD:  = Me.Value
  loc_BA20D2: FLdPr Me
  loc_BA20D5: MemLdRfVar from_stack_1.global_132
  loc_BA20D8: NewIfNullRf
  loc_BA20DC: FLdRfVar var_A0
  loc_BA20DF: CStrVarTmp
  loc_BA20E0: FStStrNoPop var_B8
  loc_BA20E3: ImpAdCallI2 Proc_266_14_99BE68(, )
  loc_BA20E8: FStStrNoPop var_BC
  loc_BA20EB: FLdPr Me
  loc_BA20EE: MemStStrCopy
  loc_BA20F2: FFreeStr var_B8 = ""
  loc_BA20F9: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA2104: FFree1Var var_A0 = ""
  loc_BA2107: FLdRfVar var_B8
  loc_BA210A: FLdPr Me
  loc_BA210D: MemLdRfVar from_stack_1.global_132
  loc_BA2110: NewIfNullPr tblubicfisica
  loc_BA2113: from_stack_1v = tblubicfisica.IdUbfiGet()
  loc_BA2118: FLdZeroAd var_B8
  loc_BA211B: CVarStr var_A0
  loc_BA211E: PopAdLdVar
  loc_BA211F: FLdPr Me
  loc_BA2122: VCallAd Control_ID_IdUbfiMsk
  loc_BA2125: FStAdFunc var_88
  loc_BA2128: FLdPr var_88
  loc_BA212B: LateIdSt
  loc_BA2130: FFree1Ad var_88
  loc_BA2133: FFree1Var var_A0 = ""
  loc_BA2136: FLdRfVar var_B8
  loc_BA2139: FLdPr Me
  loc_BA213C: MemLdRfVar from_stack_1.global_132
  loc_BA213F: NewIfNullPr tblubicfisica
  loc_BA2142: from_stack_1v = tblubicfisica.DetaUbfiGet()
  loc_BA2147: ILdRf var_B8
  loc_BA214A: FLdPr Me
  loc_BA214D: VCallAd Control_ID_DetaUbfiLbl
  loc_BA2150: FStAdFunc var_88
  loc_BA2153: FLdPr var_88
  loc_BA2156: Me.Caption = from_stack_1
  loc_BA215B: FFree1Str var_B8
  loc_BA215E: FFree1Ad var_88
  loc_BA2161: FLdRfVar var_B8
  loc_BA2164: FLdPr Me
  loc_BA2167: MemLdRfVar from_stack_1.global_132
  loc_BA216A: NewIfNullPr tblubicfisica
  loc_BA216D: from_stack_1v = tblubicfisica.DireUbfiGet()
  loc_BA2172: ILdRf var_B8
  loc_BA2175: LitStr " - "
  loc_BA2178: ConcatStr
  loc_BA2179: FStStrNoPop var_C0
  loc_BA217C: FLdRfVar var_BC
  loc_BA217F: FLdPr Me
  loc_BA2182: MemLdRfVar from_stack_1.global_132
  loc_BA2185: NewIfNullPr tblubicfisica
  loc_BA2188: from_stack_1v = tblubicfisica.TeleUbfiGet()
  loc_BA218D: ILdRf var_BC
  loc_BA2190: ConcatStr
  loc_BA2191: FStStrNoPop var_C4
  loc_BA2194: LitStr " - "
  loc_BA2197: ConcatStr
  loc_BA2198: FStStrNoPop var_E4
  loc_BA219B: FLdRfVar var_E0
  loc_BA219E: FLdPr Me
  loc_BA21A1: MemLdRfVar from_stack_1.global_132
  loc_BA21A4: NewIfNullPr tblubicfisica
  loc_BA21A7: from_stack_1v = tblubicfisica.CeluUbfiGet()
  loc_BA21AC: ILdRf var_E0
  loc_BA21AF: ConcatStr
  loc_BA21B0: FStStrNoPop var_E8
  loc_BA21B3: FLdPr Me
  loc_BA21B6: VCallAd Control_ID_DienNopeTxt
  loc_BA21B9: FStAdFunc var_88
  loc_BA21BC: FLdPr var_88
  loc_BA21BF: Me.Text = from_stack_1
  loc_BA21C4: FFreeStr var_B8 = "": var_C0 = "": var_BC = "": var_C4 = "": var_E4 = "": var_E0 = ""
  loc_BA21D5: FFree1Ad var_88
  loc_BA21D8: FLdPr Me
  loc_BA21DB: VCallAd Control_ID_IdUbfiMsk
  loc_BA21DE: FStAdFunc var_DC
  loc_BA21E1: FLdPr Me
  loc_BA21E4: VCallAd Control_ID_DetaUbfiLbl
  loc_BA21E7: FStAdFunc var_A4
  loc_BA21EA: FLdRfVar var_A4
  loc_BA21ED: FLdZeroAd var_DC
  loc_BA21F0: FStAdFuncNoPop
  loc_BA21F3: CastAd
  loc_BA21F6: FStAdFunc var_90
  loc_BA21F9: FLdRfVar var_90
  loc_BA21FC: FLdPr Me
  loc_BA21FF: MemLdRfVar from_stack_1.global_76
  loc_BA2202: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA2207: IStI2 KeyCode
  loc_BA220A: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA2215: ILdI2 KeyCode
  loc_BA2218: BranchF loc_BA2232
  loc_BA221B: LitStr vbNullString
  loc_BA221E: FLdPr Me
  loc_BA2221: VCallAd Control_ID_DienNopeTxt
  loc_BA2224: FStAdFunc var_88
  loc_BA2227: FLdPr var_88
  loc_BA222A: Me.Text = from_stack_1
  loc_BA222F: FFree1Ad var_88
  loc_BA2232: Branch loc_BA2551
  loc_BA2235: FLdRfVar var_C8
  loc_BA2238: FLdRfVar var_90
  loc_BA223B: FLdRfVar var_88
  loc_BA223E: ImpAdLdRf MemVar_C3D7C4
  loc_BA2241: NewIfNullPr bscUbicacionFisica
  loc_BA2244: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA2249: FLdPr var_88
  loc_BA224C: from_stack_1v = clsbase.RsFrmGet()
  loc_BA2251: FLdPr var_90
  loc_BA2254:  = Me.RecordCount
  loc_BA2259: ILdRf var_C8
  loc_BA225C: LitI4 1
  loc_BA2261: GtI4
  loc_BA2262: FFreeAd var_88 = ""
  loc_BA2269: BranchF loc_BA24B6
  loc_BA226C: LitVar_Missing var_F8
  loc_BA226F: PopAdLdVar
  loc_BA2270: LitVarI4
  loc_BA2278: PopAdLdVar
  loc_BA2279: ImpAdLdRf MemVar_C3D7C4
  loc_BA227C: NewIfNullPr bscUbicacionFisica
  loc_BA227F: bscUbicacionFisica.Show from_stack_1, from_stack_2
  loc_BA2284: FLdRfVar var_C8
  loc_BA2287: FLdRfVar var_88
  loc_BA228A: ImpAdLdRf MemVar_C3D7C4
  loc_BA228D: NewIfNullPr bscUbicacionFisica
  loc_BA2290: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA2295: FLdPr var_88
  loc_BA2298: from_stack_1 = clsbase.RecordCount
  loc_BA229D: ILdRf var_C8
  loc_BA22A0: LitI4 0
  loc_BA22A5: GtI4
  loc_BA22A6: FFree1Ad var_88
  loc_BA22A9: BranchF loc_BA244F
  loc_BA22AC: FLdRfVar var_A0
  loc_BA22AF: FLdRfVar var_DC
  loc_BA22B2: LitVarStr var_D8, "IdUbfi"
  loc_BA22B7: PopAdLdVar
  loc_BA22B8: FLdRfVar var_A4
  loc_BA22BB: FLdRfVar var_90
  loc_BA22BE: FLdRfVar var_88
  loc_BA22C1: ImpAdLdRf MemVar_C3D7C4
  loc_BA22C4: NewIfNullPr bscUbicacionFisica
  loc_BA22C7: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA22CC: FLdPr var_88
  loc_BA22CF: from_stack_1v = clsbase.RsFrmGet()
  loc_BA22D4: FLdPr var_90
  loc_BA22D7:  = Me.Fields
  loc_BA22DC: FLdPr var_A4
  loc_BA22DF: from_stack_2 = Me.Item(from_stack_1)
  loc_BA22E4: FLdPr var_DC
  loc_BA22E7:  = Me.Value
  loc_BA22EC: FLdPr Me
  loc_BA22EF: MemLdRfVar from_stack_1.global_132
  loc_BA22F2: NewIfNullRf
  loc_BA22F6: FLdRfVar var_A0
  loc_BA22F9: CStrVarTmp
  loc_BA22FA: FStStrNoPop var_B8
  loc_BA22FD: ImpAdCallI2 Proc_266_14_99BE68(, )
  loc_BA2302: FStStrNoPop var_BC
  loc_BA2305: FLdPr Me
  loc_BA2308: MemStStrCopy
  loc_BA230C: FFreeStr var_B8 = ""
  loc_BA2313: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA231E: FFree1Var var_A0 = ""
  loc_BA2321: FLdRfVar var_B8
  loc_BA2324: FLdPr Me
  loc_BA2327: MemLdRfVar from_stack_1.global_132
  loc_BA232A: NewIfNullPr tblubicfisica
  loc_BA232D: from_stack_1v = tblubicfisica.IdUbfiGet()
  loc_BA2332: FLdZeroAd var_B8
  loc_BA2335: CVarStr var_A0
  loc_BA2338: PopAdLdVar
  loc_BA2339: FLdPr Me
  loc_BA233C: VCallAd Control_ID_IdUbfiMsk
  loc_BA233F: FStAdFunc var_88
  loc_BA2342: FLdPr var_88
  loc_BA2345: LateIdSt
  loc_BA234A: FFree1Ad var_88
  loc_BA234D: FFree1Var var_A0 = ""
  loc_BA2350: FLdRfVar var_B8
  loc_BA2353: FLdPr Me
  loc_BA2356: MemLdRfVar from_stack_1.global_132
  loc_BA2359: NewIfNullPr tblubicfisica
  loc_BA235C: from_stack_1v = tblubicfisica.DetaUbfiGet()
  loc_BA2361: ILdRf var_B8
  loc_BA2364: FLdPr Me
  loc_BA2367: VCallAd Control_ID_DetaUbfiLbl
  loc_BA236A: FStAdFunc var_88
  loc_BA236D: FLdPr var_88
  loc_BA2370: Me.Caption = from_stack_1
  loc_BA2375: FFree1Str var_B8
  loc_BA2378: FFree1Ad var_88
  loc_BA237B: FLdRfVar var_B8
  loc_BA237E: FLdPr Me
  loc_BA2381: MemLdRfVar from_stack_1.global_132
  loc_BA2384: NewIfNullPr tblubicfisica
  loc_BA2387: from_stack_1v = tblubicfisica.DireUbfiGet()
  loc_BA238C: ILdRf var_B8
  loc_BA238F: LitStr " - "
  loc_BA2392: ConcatStr
  loc_BA2393: FStStrNoPop var_C0
  loc_BA2396: FLdRfVar var_BC
  loc_BA2399: FLdPr Me
  loc_BA239C: MemLdRfVar from_stack_1.global_132
  loc_BA239F: NewIfNullPr tblubicfisica
  loc_BA23A2: from_stack_1v = tblubicfisica.TeleUbfiGet()
  loc_BA23A7: ILdRf var_BC
  loc_BA23AA: ConcatStr
  loc_BA23AB: FStStrNoPop var_C4
  loc_BA23AE: LitStr " - "
  loc_BA23B1: ConcatStr
  loc_BA23B2: FStStrNoPop var_E4
  loc_BA23B5: FLdRfVar var_E0
  loc_BA23B8: FLdPr Me
  loc_BA23BB: MemLdRfVar from_stack_1.global_132
  loc_BA23BE: NewIfNullPr tblubicfisica
  loc_BA23C1: from_stack_1v = tblubicfisica.CeluUbfiGet()
  loc_BA23C6: ILdRf var_E0
  loc_BA23C9: ConcatStr
  loc_BA23CA: FStStrNoPop var_E8
  loc_BA23CD: FLdPr Me
  loc_BA23D0: VCallAd Control_ID_DienNopeTxt
  loc_BA23D3: FStAdFunc var_88
  loc_BA23D6: FLdPr var_88
  loc_BA23D9: Me.Text = from_stack_1
  loc_BA23DE: FFreeStr var_B8 = "": var_C0 = "": var_BC = "": var_C4 = "": var_E4 = "": var_E0 = ""
  loc_BA23EF: FFree1Ad var_88
  loc_BA23F2: FLdPr Me
  loc_BA23F5: VCallAd Control_ID_IdUbfiMsk
  loc_BA23F8: FStAdFunc var_DC
  loc_BA23FB: FLdPr Me
  loc_BA23FE: VCallAd Control_ID_DetaUbfiLbl
  loc_BA2401: FStAdFunc var_A4
  loc_BA2404: FLdRfVar var_A4
  loc_BA2407: FLdZeroAd var_DC
  loc_BA240A: FStAdFuncNoPop
  loc_BA240D: CastAd
  loc_BA2410: FStAdFunc var_90
  loc_BA2413: FLdRfVar var_90
  loc_BA2416: FLdPr Me
  loc_BA2419: MemLdRfVar from_stack_1.global_76
  loc_BA241C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA2421: IStI2 KeyCode
  loc_BA2424: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA242F: ILdI2 KeyCode
  loc_BA2432: BranchF loc_BA244C
  loc_BA2435: LitStr vbNullString
  loc_BA2438: FLdPr Me
  loc_BA243B: VCallAd Control_ID_DienNopeTxt
  loc_BA243E: FStAdFunc var_88
  loc_BA2441: FLdPr var_88
  loc_BA2444: Me.Text = from_stack_1
  loc_BA2449: FFree1Ad var_88
  loc_BA244C: Branch loc_BA24B3
  loc_BA244F: LitStr "La Ubicación Física NO EXISTE. Verique..."
  loc_BA2452: FLdPr Me
  loc_BA2455: MemStStrCopy
  loc_BA2459: FLdPr Me
  loc_BA245C: VCallAd Control_ID_IdUbfiMsk
  loc_BA245F: FStAdFunc var_DC
  loc_BA2462: FLdPr Me
  loc_BA2465: VCallAd Control_ID_DetaUbfiLbl
  loc_BA2468: FStAdFunc var_A4
  loc_BA246B: FLdRfVar var_A4
  loc_BA246E: FLdZeroAd var_DC
  loc_BA2471: FStAdFuncNoPop
  loc_BA2474: CastAd
  loc_BA2477: FStAdFunc var_90
  loc_BA247A: FLdRfVar var_90
  loc_BA247D: FLdPr Me
  loc_BA2480: MemLdRfVar from_stack_1.global_76
  loc_BA2483: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA2488: IStI2 KeyCode
  loc_BA248B: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA2496: ILdI2 KeyCode
  loc_BA2499: BranchF loc_BA24B3
  loc_BA249C: LitStr vbNullString
  loc_BA249F: FLdPr Me
  loc_BA24A2: VCallAd Control_ID_DienNopeTxt
  loc_BA24A5: FStAdFunc var_88
  loc_BA24A8: FLdPr var_88
  loc_BA24AB: Me.Text = from_stack_1
  loc_BA24B0: FFree1Ad var_88
  loc_BA24B3: Branch loc_BA2551
  loc_BA24B6: FLdRfVar var_C8
  loc_BA24B9: FLdRfVar var_90
  loc_BA24BC: FLdRfVar var_88
  loc_BA24BF: ImpAdLdRf MemVar_C3D7C4
  loc_BA24C2: NewIfNullPr bscUbicacionFisica
  loc_BA24C5: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA24CA: FLdPr var_88
  loc_BA24CD: from_stack_1v = clsbase.RsFrmGet()
  loc_BA24D2: FLdPr var_90
  loc_BA24D5:  = Me.RecordCount
  loc_BA24DA: ILdRf var_C8
  loc_BA24DD: LitI4 1
  loc_BA24E2: LtI4
  loc_BA24E3: FFreeAd var_88 = ""
  loc_BA24EA: BranchF loc_BA2551
  loc_BA24ED: LitStr "La Ubicación Física NO EXISTE. Verique..."
  loc_BA24F0: FLdPr Me
  loc_BA24F3: MemStStrCopy
  loc_BA24F7: FLdPr Me
  loc_BA24FA: VCallAd Control_ID_IdUbfiMsk
  loc_BA24FD: FStAdFunc var_DC
  loc_BA2500: FLdPr Me
  loc_BA2503: VCallAd Control_ID_DetaUbfiLbl
  loc_BA2506: FStAdFunc var_A4
  loc_BA2509: FLdRfVar var_A4
  loc_BA250C: FLdZeroAd var_DC
  loc_BA250F: FStAdFuncNoPop
  loc_BA2512: CastAd
  loc_BA2515: FStAdFunc var_90
  loc_BA2518: FLdRfVar var_90
  loc_BA251B: FLdPr Me
  loc_BA251E: MemLdRfVar from_stack_1.global_76
  loc_BA2521: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA2526: IStI2 KeyCode
  loc_BA2529: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA2534: ILdI2 KeyCode
  loc_BA2537: BranchF loc_BA2551
  loc_BA253A: LitStr vbNullString
  loc_BA253D: FLdPr Me
  loc_BA2540: VCallAd Control_ID_DienNopeTxt
  loc_BA2543: FStAdFunc var_88
  loc_BA2546: FLdPr var_88
  loc_BA2549: Me.Text = from_stack_1
  loc_BA254E: FFree1Ad var_88
  loc_BA2551: Branch loc_BA27CC
  loc_BA2554: LitI2_Byte 0
  loc_BA2556: ImpAdLdRf MemVar_C3D7C4
  loc_BA2559: NewIfNullPr bscUbicacionFisica
  loc_BA255C: Call bscUbicacionFisica.MuestroAnuladosPut(from_stack_1v)
  loc_BA2561: LitNothing
  loc_BA2563: CastAd
  loc_BA2566: FStAdFuncNoPop
  loc_BA2569: ImpAdLdRf MemVar_C3D7C4
  loc_BA256C: NewIfNullPr bscUbicacionFisica
  loc_BA256F: Call bscUbicacionFisica.global_4313492Set(from_stack_1v)
  loc_BA2574: FFree1Ad var_88
  loc_BA2577: LitStr " AND uf.CodiTiUbfi = 3 ORDER BY DetaUbfi"
  loc_BA257A: ImpAdLdRf MemVar_C3D7C4
  loc_BA257D: NewIfNullPr bscUbicacionFisica
  loc_BA2580: Call bscUbicacionFisica.Constructor(from_stack_1v)
  loc_BA2585: LitVar_Missing var_F8
  loc_BA2588: PopAdLdVar
  loc_BA2589: LitVarI4
  loc_BA2591: PopAdLdVar
  loc_BA2592: ImpAdLdRf MemVar_C3D7C4
  loc_BA2595: NewIfNullPr bscUbicacionFisica
  loc_BA2598: bscUbicacionFisica.Show from_stack_1, from_stack_2
  loc_BA259D: FLdRfVar var_C8
  loc_BA25A0: FLdRfVar var_88
  loc_BA25A3: ImpAdLdRf MemVar_C3D7C4
  loc_BA25A6: NewIfNullPr bscUbicacionFisica
  loc_BA25A9: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA25AE: FLdPr var_88
  loc_BA25B1: from_stack_1 = clsbase.RecordCount
  loc_BA25B6: ILdRf var_C8
  loc_BA25B9: LitI4 0
  loc_BA25BE: GtI4
  loc_BA25BF: FFree1Ad var_88
  loc_BA25C2: BranchF loc_BA2768
  loc_BA25C5: FLdRfVar var_A0
  loc_BA25C8: FLdRfVar var_DC
  loc_BA25CB: LitVarStr var_D8, "IdUbfi"
  loc_BA25D0: PopAdLdVar
  loc_BA25D1: FLdRfVar var_A4
  loc_BA25D4: FLdRfVar var_90
  loc_BA25D7: FLdRfVar var_88
  loc_BA25DA: ImpAdLdRf MemVar_C3D7C4
  loc_BA25DD: NewIfNullPr bscUbicacionFisica
  loc_BA25E0: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_BA25E5: FLdPr var_88
  loc_BA25E8: from_stack_1v = clsbase.RsFrmGet()
  loc_BA25ED: FLdPr var_90
  loc_BA25F0:  = Me.Fields
  loc_BA25F5: FLdPr var_A4
  loc_BA25F8: from_stack_2 = Me.Item(from_stack_1)
  loc_BA25FD: FLdPr var_DC
  loc_BA2600:  = Me.Value
  loc_BA2605: FLdPr Me
  loc_BA2608: MemLdRfVar from_stack_1.global_132
  loc_BA260B: NewIfNullRf
  loc_BA260F: FLdRfVar var_A0
  loc_BA2612: CStrVarTmp
  loc_BA2613: FStStrNoPop var_B8
  loc_BA2616: ImpAdCallI2 Proc_266_14_99BE68(, )
  loc_BA261B: FStStrNoPop var_BC
  loc_BA261E: FLdPr Me
  loc_BA2621: MemStStrCopy
  loc_BA2625: FFreeStr var_B8 = ""
  loc_BA262C: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA2637: FFree1Var var_A0 = ""
  loc_BA263A: FLdRfVar var_B8
  loc_BA263D: FLdPr Me
  loc_BA2640: MemLdRfVar from_stack_1.global_132
  loc_BA2643: NewIfNullPr tblubicfisica
  loc_BA2646: from_stack_1v = tblubicfisica.IdUbfiGet()
  loc_BA264B: FLdZeroAd var_B8
  loc_BA264E: CVarStr var_A0
  loc_BA2651: PopAdLdVar
  loc_BA2652: FLdPr Me
  loc_BA2655: VCallAd Control_ID_IdUbfiMsk
  loc_BA2658: FStAdFunc var_88
  loc_BA265B: FLdPr var_88
  loc_BA265E: LateIdSt
  loc_BA2663: FFree1Ad var_88
  loc_BA2666: FFree1Var var_A0 = ""
  loc_BA2669: FLdRfVar var_B8
  loc_BA266C: FLdPr Me
  loc_BA266F: MemLdRfVar from_stack_1.global_132
  loc_BA2672: NewIfNullPr tblubicfisica
  loc_BA2675: from_stack_1v = tblubicfisica.DetaUbfiGet()
  loc_BA267A: ILdRf var_B8
  loc_BA267D: FLdPr Me
  loc_BA2680: VCallAd Control_ID_DetaUbfiLbl
  loc_BA2683: FStAdFunc var_88
  loc_BA2686: FLdPr var_88
  loc_BA2689: Me.Caption = from_stack_1
  loc_BA268E: FFree1Str var_B8
  loc_BA2691: FFree1Ad var_88
  loc_BA2694: FLdRfVar var_B8
  loc_BA2697: FLdPr Me
  loc_BA269A: MemLdRfVar from_stack_1.global_132
  loc_BA269D: NewIfNullPr tblubicfisica
  loc_BA26A0: from_stack_1v = tblubicfisica.DireUbfiGet()
  loc_BA26A5: ILdRf var_B8
  loc_BA26A8: LitStr " - "
  loc_BA26AB: ConcatStr
  loc_BA26AC: FStStrNoPop var_C0
  loc_BA26AF: FLdRfVar var_BC
  loc_BA26B2: FLdPr Me
  loc_BA26B5: MemLdRfVar from_stack_1.global_132
  loc_BA26B8: NewIfNullPr tblubicfisica
  loc_BA26BB: from_stack_1v = tblubicfisica.TeleUbfiGet()
  loc_BA26C0: ILdRf var_BC
  loc_BA26C3: ConcatStr
  loc_BA26C4: FStStrNoPop var_C4
  loc_BA26C7: LitStr " - "
  loc_BA26CA: ConcatStr
  loc_BA26CB: FStStrNoPop var_E4
  loc_BA26CE: FLdRfVar var_E0
  loc_BA26D1: FLdPr Me
  loc_BA26D4: MemLdRfVar from_stack_1.global_132
  loc_BA26D7: NewIfNullPr tblubicfisica
  loc_BA26DA: from_stack_1v = tblubicfisica.CeluUbfiGet()
  loc_BA26DF: ILdRf var_E0
  loc_BA26E2: ConcatStr
  loc_BA26E3: FStStrNoPop var_E8
  loc_BA26E6: FLdPr Me
  loc_BA26E9: VCallAd Control_ID_DienNopeTxt
  loc_BA26EC: FStAdFunc var_88
  loc_BA26EF: FLdPr var_88
  loc_BA26F2: Me.Text = from_stack_1
  loc_BA26F7: FFreeStr var_B8 = "": var_C0 = "": var_BC = "": var_C4 = "": var_E4 = "": var_E0 = ""
  loc_BA2708: FFree1Ad var_88
  loc_BA270B: FLdPr Me
  loc_BA270E: VCallAd Control_ID_IdUbfiMsk
  loc_BA2711: FStAdFunc var_DC
  loc_BA2714: FLdPr Me
  loc_BA2717: VCallAd Control_ID_DetaUbfiLbl
  loc_BA271A: FStAdFunc var_A4
  loc_BA271D: FLdRfVar var_A4
  loc_BA2720: FLdZeroAd var_DC
  loc_BA2723: FStAdFuncNoPop
  loc_BA2726: CastAd
  loc_BA2729: FStAdFunc var_90
  loc_BA272C: FLdRfVar var_90
  loc_BA272F: FLdPr Me
  loc_BA2732: MemLdRfVar from_stack_1.global_76
  loc_BA2735: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA273A: IStI2 KeyCode
  loc_BA273D: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA2748: ILdI2 KeyCode
  loc_BA274B: BranchF loc_BA2765
  loc_BA274E: LitStr vbNullString
  loc_BA2751: FLdPr Me
  loc_BA2754: VCallAd Control_ID_DienNopeTxt
  loc_BA2757: FStAdFunc var_88
  loc_BA275A: FLdPr var_88
  loc_BA275D: Me.Text = from_stack_1
  loc_BA2762: FFree1Ad var_88
  loc_BA2765: Branch loc_BA27CC
  loc_BA2768: LitStr "La Ubicación Física NO EXISTE. Verifique..."
  loc_BA276B: FLdPr Me
  loc_BA276E: MemStStrCopy
  loc_BA2772: FLdPr Me
  loc_BA2775: VCallAd Control_ID_IdUbfiMsk
  loc_BA2778: FStAdFunc var_DC
  loc_BA277B: FLdPr Me
  loc_BA277E: VCallAd Control_ID_DetaUbfiLbl
  loc_BA2781: FStAdFunc var_A4
  loc_BA2784: FLdRfVar var_A4
  loc_BA2787: FLdZeroAd var_DC
  loc_BA278A: FStAdFuncNoPop
  loc_BA278D: CastAd
  loc_BA2790: FStAdFunc var_90
  loc_BA2793: FLdRfVar var_90
  loc_BA2796: FLdPr Me
  loc_BA2799: MemLdRfVar from_stack_1.global_76
  loc_BA279C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA27A1: IStI2 KeyCode
  loc_BA27A4: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_BA27AF: ILdI2 KeyCode
  loc_BA27B2: BranchF loc_BA27CC
  loc_BA27B5: LitStr vbNullString
  loc_BA27B8: FLdPr Me
  loc_BA27BB: VCallAd Control_ID_DienNopeTxt
  loc_BA27BE: FStAdFunc var_88
  loc_BA27C1: FLdPr var_88
  loc_BA27C4: Me.Text = from_stack_1
  loc_BA27C9: FFree1Ad var_88
  loc_BA27CC: ILdI2 KeyCode
  loc_BA27CF: NotI4
  loc_BA27D0: BranchF loc_BA284D
  loc_BA27D3: FLdRfVar var_B8
  loc_BA27D6: FLdPr Me
  loc_BA27D9: MemLdRfVar from_stack_1.global_132
  loc_BA27DC: NewIfNullPr tblubicfisica
  loc_BA27DF: from_stack_1v = tblubicfisica.DireUbfiGet()
  loc_BA27E4: ILdRf var_B8
  loc_BA27E7: LitStr " - "
  loc_BA27EA: ConcatStr
  loc_BA27EB: FStStrNoPop var_C0
  loc_BA27EE: FLdRfVar var_BC
  loc_BA27F1: FLdPr Me
  loc_BA27F4: MemLdRfVar from_stack_1.global_132
  loc_BA27F7: NewIfNullPr tblubicfisica
  loc_BA27FA: from_stack_1v = tblubicfisica.TeleUbfiGet()
  loc_BA27FF: ILdRf var_BC
  loc_BA2802: ConcatStr
  loc_BA2803: FStStrNoPop var_C4
  loc_BA2806: LitStr " - "
  loc_BA2809: ConcatStr
  loc_BA280A: FStStrNoPop var_E4
  loc_BA280D: FLdRfVar var_E0
  loc_BA2810: FLdPr Me
  loc_BA2813: MemLdRfVar from_stack_1.global_132
  loc_BA2816: NewIfNullPr tblubicfisica
  loc_BA2819: from_stack_1v = tblubicfisica.CeluUbfiGet()
  loc_BA281E: ILdRf var_E0
  loc_BA2821: ConcatStr
  loc_BA2822: FStStrNoPop var_E8
  loc_BA2825: FLdPr Me
  loc_BA2828: VCallAd Control_ID_DienNopeTxt
  loc_BA282B: FStAdFunc var_88
  loc_BA282E: FLdPr var_88
  loc_BA2831: Me.Text = from_stack_1
  loc_BA2836: FFreeStr var_B8 = "": var_C0 = "": var_BC = "": var_C4 = "": var_E4 = "": var_E0 = ""
  loc_BA2847: FFree1Ad var_88
  loc_BA284A: Branch loc_BA2867
  loc_BA284D: LitVarStr var_D8, "#####"
  loc_BA2852: PopAdLdVar
  loc_BA2853: FLdPr Me
  loc_BA2856: VCallAd Control_ID_IdUbfiMsk
  loc_BA2859: FStAdFunc var_88
  loc_BA285C: FLdPr var_88
  loc_BA285F: LateIdSt
  loc_BA2864: FFree1Ad var_88
  loc_BA2867: Branch loc_BA294B
  loc_BA286A: FLdRfVar var_8A
  loc_BA286D: FLdPr Me
  loc_BA2870: VCallAd Control_ID_cmdCancelar
  loc_BA2873: FStAdFunc var_88
  loc_BA2876: FLdPr var_88
  loc_BA2879:  = Me.Value
  loc_BA287E: FLdI2 var_8A
  loc_BA2881: NotI4
  loc_BA2882: FLdPr Me
  loc_BA2885: VCallAd Control_ID_IdUbfiMsk
  loc_BA2888: FStAdFunc var_90
  loc_BA288B: FLdPr var_90
  loc_BA288E: LateIdLdVar var_A0 DispID_13 -32767
  loc_BA2895: CBoolVar
  loc_BA2897: AndI4
  loc_BA2898: FLdPr Me
  loc_BA289B: VCallAd Control_ID_IdUbfiMsk
  loc_BA289E: FStAdFunc var_A4
  loc_BA28A1: FLdPr var_A4
  loc_BA28A4: LateIdLdVar var_B4 DispID_22 0
  loc_BA28AB: CStrVarTmp
  loc_BA28AC: FStStrNoPop var_B8
  loc_BA28AF: LitStr "0"
  loc_BA28B2: EqStr
  loc_BA28B4: AndI4
  loc_BA28B5: FFree1Str var_B8
  loc_BA28B8: FFreeAd var_88 = "": var_90 = ""
  loc_BA28C1: FFreeVar var_A0 = ""
  loc_BA28C8: BranchF loc_BA294B
  loc_BA28CB: FLdRfVar var_B8
  loc_BA28CE: FLdPr Me
  loc_BA28D1: VCallAd Control_ID_DienNopeTxt
  loc_BA28D4: FStAdFunc var_88
  loc_BA28D7: FLdPr var_88
  loc_BA28DA:  = Me.Text
  loc_BA28DF: FLdRfVar var_BC
  loc_BA28E2: FLdPr Me
  loc_BA28E5: VCallAd Control_ID_DienNopeTxt
  loc_BA28E8: FStAdFunc var_90
  loc_BA28EB: FLdPr var_90
  loc_BA28EE:  = Me.Text
  loc_BA28F3: FLdZeroAd var_BC
  loc_BA28F6: CVarStr var_B4
  loc_BA28F9: LitVarStr var_F8, "A retirar del local comercial del proveedor"
  loc_BA28FE: FStVarCopyObj var_A0
  loc_BA2901: FLdRfVar var_A0
  loc_BA2904: ILdRf var_B8
  loc_BA2907: LitStr vbNullString
  loc_BA290A: EqStr
  loc_BA290C: CVarBoolI2 var_D8
  loc_BA2910: FLdRfVar var_108
  loc_BA2913: ImpAdCallFPR4  = IIf(, , )
  loc_BA2918: FLdRfVar var_108
  loc_BA291B: CStrVarVal var_C0
  loc_BA291F: FLdPr Me
  loc_BA2922: VCallAd Control_ID_DienNopeTxt
  loc_BA2925: FStAdFunc var_A4
  loc_BA2928: FLdPr var_A4
  loc_BA292B: Me.Text = from_stack_1
  loc_BA2930: FFreeStr var_B8 = ""
  loc_BA2937: FFreeAd var_88 = "": var_90 = ""
  loc_BA2940: FFreeVar var_D8 = "": var_A0 = "": var_B4 = ""
  loc_BA294B: ExitProcHresult
End Sub

Private Sub IdUbfiMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A4CBE4
  'Data Table: 4FD0E0
  loc_A4C980: ILdI2 Shift
  loc_A4C983: CI4UI1
  loc_A4C984: LitI4 2
  loc_A4C989: EqI4
  loc_A4C98A: ILdI2 KeyCode
  loc_A4C98D: CI4UI1
  loc_A4C98E: LitI4 &H42
  loc_A4C993: EqI4
  loc_A4C994: AndI4
  loc_A4C995: BranchF loc_A4CBE1
  loc_A4C998: LitI2_Byte 0
  loc_A4C99A: ImpAdLdRf MemVar_C3D7C4
  loc_A4C99D: NewIfNullPr bscUbicacionFisica
  loc_A4C9A0: Call bscUbicacionFisica.MuestroAnuladosPut(from_stack_1v)
  loc_A4C9A5: LitNothing
  loc_A4C9A7: CastAd
  loc_A4C9AA: FStAdFuncNoPop
  loc_A4C9AD: ImpAdLdRf MemVar_C3D7C4
  loc_A4C9B0: NewIfNullPr bscUbicacionFisica
  loc_A4C9B3: Call bscUbicacionFisica.global_4313492Set(from_stack_1v)
  loc_A4C9B8: FFree1Ad var_88
  loc_A4C9BB: LitVar_Missing var_A8
  loc_A4C9BE: PopAdLdVar
  loc_A4C9BF: LitVarI4
  loc_A4C9C7: PopAdLdVar
  loc_A4C9C8: ImpAdLdRf MemVar_C3D7C4
  loc_A4C9CB: NewIfNullPr bscUbicacionFisica
  loc_A4C9CE: bscUbicacionFisica.Show from_stack_1, from_stack_2
  loc_A4C9D3: FLdRfVar var_AC
  loc_A4C9D6: FLdRfVar var_88
  loc_A4C9D9: ImpAdLdRf MemVar_C3D7C4
  loc_A4C9DC: NewIfNullPr bscUbicacionFisica
  loc_A4C9DF: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_A4C9E4: FLdPr var_88
  loc_A4C9E7: from_stack_1 = clsbase.RecordCount
  loc_A4C9EC: ILdRf var_AC
  loc_A4C9EF: LitI4 0
  loc_A4C9F4: GtI4
  loc_A4C9F5: FFree1Ad var_88
  loc_A4C9F8: BranchF loc_A4CBE1
  loc_A4C9FB: FLdRfVar var_AC
  loc_A4C9FE: FLdRfVar var_B0
  loc_A4CA01: FLdRfVar var_88
  loc_A4CA04: ImpAdLdRf MemVar_C3D7C4
  loc_A4CA07: NewIfNullPr bscUbicacionFisica
  loc_A4CA0A: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_A4CA0F: FLdPr var_88
  loc_A4CA12: from_stack_1v = clsbase.RsFrmGet()
  loc_A4CA17: FLdPr var_B0
  loc_A4CA1A:  = Me.AbsolutePosition
  loc_A4CA1F: ILdRf var_AC
  loc_A4CA22: LitI4 1
  loc_A4CA27: EqI4
  loc_A4CA28: FFreeAd var_88 = ""
  loc_A4CA2F: BranchF loc_A4CA4B
  loc_A4CA32: FLdRfVar var_88
  loc_A4CA35: ImpAdLdRf MemVar_C3D7C4
  loc_A4CA38: NewIfNullPr bscUbicacionFisica
  loc_A4CA3B: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_A4CA40: FLdPr var_88
  loc_A4CA43: Call clsbase.MovePrevious()
  loc_A4CA48: FFree1Ad var_88
  loc_A4CA4B: FLdRfVar var_C8
  loc_A4CA4E: FLdRfVar var_B8
  loc_A4CA51: LitVarStr var_98, "IdUbfi"
  loc_A4CA56: PopAdLdVar
  loc_A4CA57: FLdRfVar var_B4
  loc_A4CA5A: FLdRfVar var_B0
  loc_A4CA5D: FLdRfVar var_88
  loc_A4CA60: ImpAdLdRf MemVar_C3DC28
  loc_A4CA63: NewIfNullPr bscRubro
  loc_A4CA66: from_stack_1v = bscRubro.global_4309912Get()
  loc_A4CA6B: FLdPr var_88
  loc_A4CA6E: from_stack_1v = clsbase.RsFrmGet()
  loc_A4CA73: FLdPr var_B0
  loc_A4CA76:  = Me.Fields
  loc_A4CA7B: FLdPr var_B4
  loc_A4CA7E: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CA83: FLdPr var_B8
  loc_A4CA86:  = Me.Value
  loc_A4CA8B: FLdRfVar var_C8
  loc_A4CA8E: CStrVarTmp
  loc_A4CA8F: CVarStr var_D8
  loc_A4CA92: PopAdLdVar
  loc_A4CA93: FLdPr Me
  loc_A4CA96: VCallAd Control_ID_IdUbfiMsk
  loc_A4CA99: FStAdFunc var_DC
  loc_A4CA9C: FLdPr var_DC
  loc_A4CA9F: LateIdSt
  loc_A4CAA4: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A4CAB1: FFreeVar var_C8 = ""
  loc_A4CAB8: FLdRfVar var_C8
  loc_A4CABB: FLdRfVar var_B8
  loc_A4CABE: LitVarStr var_98, "DireUbfi"
  loc_A4CAC3: PopAdLdVar
  loc_A4CAC4: FLdRfVar var_B4
  loc_A4CAC7: FLdRfVar var_B0
  loc_A4CACA: FLdRfVar var_88
  loc_A4CACD: ImpAdLdRf MemVar_C3D7C4
  loc_A4CAD0: NewIfNullPr bscUbicacionFisica
  loc_A4CAD3: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_A4CAD8: FLdPr var_88
  loc_A4CADB: from_stack_1v = clsbase.RsFrmGet()
  loc_A4CAE0: FLdPr var_B0
  loc_A4CAE3:  = Me.Fields
  loc_A4CAE8: FLdPr var_B4
  loc_A4CAEB: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CAF0: FLdPr var_B8
  loc_A4CAF3:  = Me.Value
  loc_A4CAF8: FLdRfVar var_C8
  loc_A4CAFB: LitVarStr var_A8, " - "
  loc_A4CB00: ConcatVar var_D8
  loc_A4CB04: FLdRfVar var_108
  loc_A4CB07: FLdRfVar var_F8
  loc_A4CB0A: LitVarStr var_F4, "TeleUbfi"
  loc_A4CB0F: PopAdLdVar
  loc_A4CB10: FLdRfVar var_E4
  loc_A4CB13: FLdRfVar var_E0
  loc_A4CB16: FLdRfVar var_DC
  loc_A4CB19: ImpAdLdRf MemVar_C3D7C4
  loc_A4CB1C: NewIfNullPr bscUbicacionFisica
  loc_A4CB1F: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_A4CB24: FLdPr var_DC
  loc_A4CB27: from_stack_1v = clsbase.RsFrmGet()
  loc_A4CB2C: FLdPr var_E0
  loc_A4CB2F:  = Me.Fields
  loc_A4CB34: FLdPr var_E4
  loc_A4CB37: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CB3C: FLdPr var_F8
  loc_A4CB3F:  = Me.Value
  loc_A4CB44: FLdRfVar var_108
  loc_A4CB47: ConcatVar var_118
  loc_A4CB4B: LitVarStr var_128, " - "
  loc_A4CB50: ConcatVar var_138
  loc_A4CB54: FLdRfVar var_168
  loc_A4CB57: FLdRfVar var_158
  loc_A4CB5A: LitVarStr var_154, "CeluUbfi"
  loc_A4CB5F: PopAdLdVar
  loc_A4CB60: FLdRfVar var_144
  loc_A4CB63: FLdRfVar var_140
  loc_A4CB66: FLdRfVar var_13C
  loc_A4CB69: ImpAdLdRf MemVar_C3D7C4
  loc_A4CB6C: NewIfNullPr bscUbicacionFisica
  loc_A4CB6F: from_stack_1v = bscUbicacionFisica.global_4313492Get()
  loc_A4CB74: FLdPr var_13C
  loc_A4CB77: from_stack_1v = clsbase.RsFrmGet()
  loc_A4CB7C: FLdPr var_140
  loc_A4CB7F:  = Me.Fields
  loc_A4CB84: FLdPr var_144
  loc_A4CB87: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CB8C: FLdPr var_158
  loc_A4CB8F:  = Me.Value
  loc_A4CB94: FLdRfVar var_168
  loc_A4CB97: ConcatVar var_178
  loc_A4CB9B: CStrVarVal var_17C
  loc_A4CB9F: FLdPr Me
  loc_A4CBA2: VCallAd Control_ID_DienNopeTxt
  loc_A4CBA5: FStAdFunc var_180
  loc_A4CBA8: FLdPr var_180
  loc_A4CBAB: Me.Text = from_stack_1
  loc_A4CBB0: FFree1Str var_17C
  loc_A4CBB3: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_F8 = "": var_13C = "": var_140 = "": var_144 = "": var_158 = ""
  loc_A4CBD0: FFreeVar var_C8 = "": var_D8 = "": var_108 = "": var_118 = "": var_138 = "": var_168 = ""
  loc_A4CBE1: ExitProcHresult
End Sub

Private Sub CodiTicoMsk_UnknownEvent_0 '94B8B8
  'Data Table: 4FD0E0
  loc_94B8A4: FLdPrThis
  loc_94B8A5: VCallAd Control_ID_CodiTicoMsk
  loc_94B8A8: CVarAd
  loc_94B8AC: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B8B1: FFree1Var var_94 = ""
  loc_94B8B4: ExitProcHresult
End Sub

Private Sub CodiTicoMsk_UnknownEvent_8 'A6AFA0
  'Data Table: 4FD0E0
  loc_A6AC44: FLdRfVar var_8A
  loc_A6AC47: FLdPr Me
  loc_A6AC4A: VCallAd Control_ID_cmdCancelar
  loc_A6AC4D: FStAdFunc var_88
  loc_A6AC50: FLdPr var_88
  loc_A6AC53:  = Me.Value
  loc_A6AC58: FLdI2 var_8A
  loc_A6AC5B: NotI4
  loc_A6AC5C: FLdPr Me
  loc_A6AC5F: VCallAd Control_ID_CodiTicoMsk
  loc_A6AC62: FStAdFunc var_90
  loc_A6AC65: FLdPr var_90
  loc_A6AC68: LateIdLdVar var_A0 DispID_13 -32767
  loc_A6AC6F: CBoolVar
  loc_A6AC71: AndI4
  loc_A6AC72: FFreeAd var_88 = ""
  loc_A6AC79: FFree1Var var_A0 = ""
  loc_A6AC7C: BranchF loc_A6AEDF
  loc_A6AC7F: FLdPr Me
  loc_A6AC82: VCallAd Control_ID_CodiTicoMsk
  loc_A6AC85: FStAdFunc var_88
  loc_A6AC88: FLdPr var_88
  loc_A6AC8B: LateIdLdVar var_A0 DispID_22 0
  loc_A6AC92: PopAd
  loc_A6AC94: FLdPr Me
  loc_A6AC97: MemLdRfVar from_stack_1.global_116
  loc_A6AC9A: NewIfNullRf
  loc_A6AC9E: FLdRfVar var_A0
  loc_A6ACA1: CStrVarTmp
  loc_A6ACA2: FStStrNoPop var_A4
  loc_A6ACA5: ImpAdCallI2 Proc_266_10_99B6B8(, )
  loc_A6ACAA: FStStrNoPop var_A8
  loc_A6ACAD: FLdPr Me
  loc_A6ACB0: MemStStrCopy
  loc_A6ACB4: FFreeStr var_A4 = ""
  loc_A6ACBB: FFree1Ad var_88
  loc_A6ACBE: FFree1Var var_A0 = ""
  loc_A6ACC1: FLdPr Me
  loc_A6ACC4: VCallAd Control_ID_CodiTicoMsk
  loc_A6ACC7: FStAdFunc var_B0
  loc_A6ACCA: FLdPr Me
  loc_A6ACCD: VCallAd Control_ID_DetaTicoLbl
  loc_A6ACD0: FStAdFunc var_AC
  loc_A6ACD3: FLdRfVar var_AC
  loc_A6ACD6: FLdZeroAd var_B0
  loc_A6ACD9: FStAdFuncNoPop
  loc_A6ACDC: CastAd
  loc_A6ACDF: FStAdFunc var_90
  loc_A6ACE2: FLdRfVar var_90
  loc_A6ACE5: FLdPr Me
  loc_A6ACE8: MemLdRfVar from_stack_1.global_76
  loc_A6ACEB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A6ACF0: IStI2 KeyCode
  loc_A6ACF3: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A6ACFE: ILdI2 KeyCode
  loc_A6AD01: NotI4
  loc_A6AD02: BranchF loc_A6AEDF
  loc_A6AD05: FLdRfVar var_A4
  loc_A6AD08: FLdPr Me
  loc_A6AD0B: MemLdRfVar from_stack_1.global_116
  loc_A6AD0E: NewIfNullPr tbltipocompra
  loc_A6AD11: from_stack_1v = tbltipocompra.DetaTicoGet()
  loc_A6AD16: ILdRf var_A4
  loc_A6AD19: FLdPr Me
  loc_A6AD1C: VCallAd Control_ID_DetaTicoLbl
  loc_A6AD1F: FStAdFunc var_88
  loc_A6AD22: FLdPr var_88
  loc_A6AD25: Me.Caption = from_stack_1
  loc_A6AD2A: FFree1Str var_A4
  loc_A6AD2D: FFree1Ad var_88
  loc_A6AD30: FLdPr Me
  loc_A6AD33: VCallAd Control_ID_CodiTicoMsk
  loc_A6AD36: FStAdFunc var_88
  loc_A6AD39: FLdPr var_88
  loc_A6AD3C: LateIdLdVar var_A0 DispID_22 0
  loc_A6AD43: CStrVarTmp
  loc_A6AD44: FStStrNoPop var_A4
  loc_A6AD47: LitStr "1"
  loc_A6AD4A: EqStr
  loc_A6AD4C: FFree1Str var_A4
  loc_A6AD4F: FFree1Ad var_88
  loc_A6AD52: FFree1Var var_A0 = ""
  loc_A6AD55: BranchF loc_A6ADBB
  loc_A6AD58: LitI4 0
  loc_A6AD5D: LitI4 3
  loc_A6AD62: FLdRfVar var_B4
  loc_A6AD65: Redim
  loc_A6AD6F: FLdPr Me
  loc_A6AD72: VCallAd Control_ID_FeleNopeMsk
  loc_A6AD75: CVarAd
  loc_A6AD79: ParmAry1St
  loc_A6AD7F: FLdPr Me
  loc_A6AD82: VCallAd Control_ID_FeliNopeMsk
  loc_A6AD85: CVarAd
  loc_A6AD89: ParmAry1St
  loc_A6AD8F: FLdPr Me
  loc_A6AD92: VCallAd Control_ID_HoleNopeTxt
  loc_A6AD95: CVarAd
  loc_A6AD99: ParmAry1St
  loc_A6AD9F: FLdPr Me
  loc_A6ADA2: VCallAd Control_ID_HoliNopeTxt
  loc_A6ADA5: CVarAd
  loc_A6ADA9: ParmAry1St
  loc_A6ADAF: FLdRfVar var_B4
  loc_A6ADB2: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A6ADB7: FLdRfVar var_B4
  loc_A6ADBA: Erase
  loc_A6ADBB: FLdPr Me
  loc_A6ADBE: MemLdUI1 global_74
  loc_A6ADC2: CI2UI1
  loc_A6ADC4: LitI2_Byte 2
  loc_A6ADC6: EqI2
  loc_A6ADC7: BranchF loc_A6AEDF
  loc_A6ADCA: FLdRfVar var_A0
  loc_A6ADCD: FLdRfVar var_AC
  loc_A6ADD0: LitVarStr var_F4, "CodiTico"
  loc_A6ADD5: PopAdLdVar
  loc_A6ADD6: FLdRfVar var_90
  loc_A6ADD9: FLdRfVar var_88
  loc_A6ADDC: FLdPr Me
  loc_A6ADDF: MemLdRfVar from_stack_1.global_52
  loc_A6ADE2: NewIfNullPr clsnotapedido
  loc_A6ADE5: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_A6ADEA: FLdPr var_88
  loc_A6ADED:  = Me.Fields
  loc_A6ADF2: FLdPr var_90
  loc_A6ADF5: from_stack_2 = Me.Item(from_stack_1)
  loc_A6ADFA: FLdPr var_AC
  loc_A6ADFD:  = Me.Value
  loc_A6AE02: FLdRfVar var_A0
  loc_A6AE05: FnCByteVar
  loc_A6AE07: FLdPr Me
  loc_A6AE0A: VCallAd Control_ID_CodiTicoMsk
  loc_A6AE0D: FStAdFunc var_B0
  loc_A6AE10: FLdPr var_B0
  loc_A6AE13: LateIdLdVar var_C4 DispID_22 0
  loc_A6AE1A: CStrVarTmp
  loc_A6AE1B: FStStrNoPop var_A4
  loc_A6AE1E: CUI1Str
  loc_A6AE20: NeI2
  loc_A6AE21: FFree1Str var_A4
  loc_A6AE24: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A6AE2F: FFreeVar var_A0 = ""
  loc_A6AE36: BranchF loc_A6AEDF
  loc_A6AE39: FLdRfVar var_A0
  loc_A6AE3C: FLdRfVar var_AC
  loc_A6AE3F: LitVarStr var_F4, "CodiNope"
  loc_A6AE44: PopAdLdVar
  loc_A6AE45: FLdRfVar var_90
  loc_A6AE48: FLdRfVar var_88
  loc_A6AE4B: FLdPr Me
  loc_A6AE4E: MemLdRfVar from_stack_1.global_52
  loc_A6AE51: NewIfNullPr clsnotapedido
  loc_A6AE54: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_A6AE59: FLdPr var_88
  loc_A6AE5C:  = Me.Fields
  loc_A6AE61: FLdPr var_90
  loc_A6AE64: from_stack_2 = Me.Item(from_stack_1)
  loc_A6AE69: FLdPr var_AC
  loc_A6AE6C:  = Me.Value
  loc_A6AE71: FLdRfVar var_A4
  loc_A6AE74: FLdRfVar var_A0
  loc_A6AE77: CI4Var
  loc_A6AE79: ImpAdLdI2 MemVar_C3D064
  loc_A6AE7C: FLdPr Me
  loc_A6AE7F: MemLdRfVar from_stack_1.global_52
  loc_A6AE82: NewIfNullPr clsnotapedido
  loc_A6AE85: from_stack_3v = clsnotapedido.TieneOrdendeCompra(from_stack_1v, from_stack_2v)
  loc_A6AE8A: ILdRf var_A4
  loc_A6AE8D: FLdPr Me
  loc_A6AE90: MemStStrCopy
  loc_A6AE94: FFree1Str var_A4
  loc_A6AE97: FFreeAd var_88 = "": var_90 = ""
  loc_A6AEA0: FFree1Var var_A0 = ""
  loc_A6AEA3: FLdPr Me
  loc_A6AEA6: VCallAd Control_ID_CodiTicoMsk
  loc_A6AEA9: FStAdFunc var_B0
  loc_A6AEAC: LitNothing
  loc_A6AEAE: CastAd
  loc_A6AEB1: FStAdFunc var_AC
  loc_A6AEB4: FLdRfVar var_AC
  loc_A6AEB7: FLdZeroAd var_B0
  loc_A6AEBA: FStAdFuncNoPop
  loc_A6AEBD: CastAd
  loc_A6AEC0: FStAdFunc var_90
  loc_A6AEC3: FLdRfVar var_90
  loc_A6AEC6: FLdPr Me
  loc_A6AEC9: MemLdRfVar from_stack_1.global_76
  loc_A6AECC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A6AED1: IStI2 KeyCode
  loc_A6AED4: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A6AEDF: ILdI2 KeyCode
  loc_A6AEE2: NotI4
  loc_A6AEE3: BranchF loc_A6AF84
  loc_A6AEE6: LitI4 1
  loc_A6AEEB: FLdRfVar var_A4
  loc_A6AEEE: FLdPr Me
  loc_A6AEF1: VCallAd Control_ID_DetaTicoLbl
  loc_A6AEF4: FStAdFunc var_88
  loc_A6AEF7: FLdPr var_88
  loc_A6AEFA:  = Me.Caption
  loc_A6AEFF: FLdZeroAd var_A4
  loc_A6AF02: CVarStr var_A0
  loc_A6AF05: FLdRfVar var_C4
  loc_A6AF08: ImpAdCallFPR4  = LCase()
  loc_A6AF0D: FLdRfVar var_C4
  loc_A6AF10: LitVarStr var_F4, "licita"
  loc_A6AF15: LitI4 0
  loc_A6AF1A: FnInStr4Var
  loc_A6AF1E: LitVarI2 var_104, 0
  loc_A6AF23: HardType
  loc_A6AF24: GtVar var_E4
  loc_A6AF28: FLdPr Me
  loc_A6AF2B: MemLdUI1 global_74
  loc_A6AF2F: LitI2_Byte 2
  loc_A6AF31: EqI2
  loc_A6AF32: CVarBoolI2 var_114
  loc_A6AF36: AndVar var_124
  loc_A6AF3A: CBoolVarNull
  loc_A6AF3C: FFree1Ad var_88
  loc_A6AF3F: FFreeVar var_A0 = "": var_C4 = "": var_D4 = ""
  loc_A6AF4A: BranchF loc_A6AF68
  loc_A6AF4D: LitVar_TRUE var_F4
  loc_A6AF50: PopAdLdVar
  loc_A6AF51: FLdPr Me
  loc_A6AF54: VCallAd Control_ID_PlieNopeMsk
  loc_A6AF57: FStAdFunc var_88
  loc_A6AF5A: FLdPr var_88
  loc_A6AF5D: LateIdSt
  loc_A6AF62: FFree1Ad var_88
  loc_A6AF65: Branch loc_A6AF81
  loc_A6AF68: LitVar_FALSE
  loc_A6AF6C: PopAdLdVar
  loc_A6AF6D: FLdPr Me
  loc_A6AF70: VCallAd Control_ID_PlieNopeMsk
  loc_A6AF73: FStAdFunc var_88
  loc_A6AF76: FLdPr var_88
  loc_A6AF79: LateIdSt
  loc_A6AF7E: FFree1Ad var_88
  loc_A6AF81: Branch loc_A6AF9D
  loc_A6AF84: LitVar_FALSE
  loc_A6AF88: PopAdLdVar
  loc_A6AF89: FLdPr Me
  loc_A6AF8C: VCallAd Control_ID_PlieNopeMsk
  loc_A6AF8F: FStAdFunc var_88
  loc_A6AF92: FLdPr var_88
  loc_A6AF95: LateIdSt
  loc_A6AF9A: FFree1Ad var_88
  loc_A6AF9D: ExitProcHresult
End Sub

Private Sub CodiTicoMsk_KeyPress(KeyAscii As Integer) '9EF78C
  'Data Table: 4FD0E0
  loc_9EF664: ILdI2 KeyAscii
  loc_9EF667: CI4UI1
  loc_9EF668: LitI4 &H20
  loc_9EF66D: EqI4
  loc_9EF66E: BranchF loc_9EF789
  loc_9EF671: LitVar_Missing var_A4
  loc_9EF674: PopAdLdVar
  loc_9EF675: LitVarI4
  loc_9EF67D: PopAdLdVar
  loc_9EF67E: ImpAdLdRf MemVar_C3D788
  loc_9EF681: NewIfNullPr bscTipoCompra
  loc_9EF684: bscTipoCompra.Show from_stack_1, from_stack_2
  loc_9EF689: FLdRfVar var_AC
  loc_9EF68C: FLdRfVar var_A8
  loc_9EF68F: ImpAdLdRf MemVar_C3D788
  loc_9EF692: NewIfNullPr bscTipoCompra
  loc_9EF695: from_stack_1v = bscTipoCompra.global_4301096Get()
  loc_9EF69A: FLdPr var_A8
  loc_9EF69D: from_stack_1 = clsbase.RecordCount
  loc_9EF6A2: ILdRf var_AC
  loc_9EF6A5: LitI4 0
  loc_9EF6AA: GtI4
  loc_9EF6AB: FFree1Ad var_A8
  loc_9EF6AE: BranchF loc_9EF789
  loc_9EF6B1: FLdRfVar var_C8
  loc_9EF6B4: FLdRfVar var_B8
  loc_9EF6B7: LitVarStr var_94, "CodiTico"
  loc_9EF6BC: PopAdLdVar
  loc_9EF6BD: FLdRfVar var_B4
  loc_9EF6C0: FLdRfVar var_B0
  loc_9EF6C3: FLdRfVar var_A8
  loc_9EF6C6: ImpAdLdRf MemVar_C3D788
  loc_9EF6C9: NewIfNullPr bscTipoCompra
  loc_9EF6CC: from_stack_1v = bscTipoCompra.global_4301096Get()
  loc_9EF6D1: FLdPr var_A8
  loc_9EF6D4: from_stack_1v = clsbase.RsFrmGet()
  loc_9EF6D9: FLdPr var_B0
  loc_9EF6DC:  = Me.Fields
  loc_9EF6E1: FLdPr var_B4
  loc_9EF6E4: from_stack_2 = Me.Item(from_stack_1)
  loc_9EF6E9: FLdPr var_B8
  loc_9EF6EC:  = Me.Value
  loc_9EF6F1: FLdRfVar var_C8
  loc_9EF6F4: CStrVarTmp
  loc_9EF6F5: CVarStr var_D8
  loc_9EF6F8: PopAdLdVar
  loc_9EF6F9: FLdPr Me
  loc_9EF6FC: VCallAd Control_ID_CodiTicoMsk
  loc_9EF6FF: FStAdFunc var_DC
  loc_9EF702: FLdPr var_DC
  loc_9EF705: LateIdSt
  loc_9EF70A: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EF717: FFreeVar var_C8 = ""
  loc_9EF71E: FLdRfVar var_C8
  loc_9EF721: FLdRfVar var_B8
  loc_9EF724: LitVarStr var_94, "DetaTico"
  loc_9EF729: PopAdLdVar
  loc_9EF72A: FLdRfVar var_B4
  loc_9EF72D: FLdRfVar var_B0
  loc_9EF730: FLdRfVar var_A8
  loc_9EF733: ImpAdLdRf MemVar_C3D788
  loc_9EF736: NewIfNullPr bscTipoCompra
  loc_9EF739: from_stack_1v = bscTipoCompra.global_4301096Get()
  loc_9EF73E: FLdPr var_A8
  loc_9EF741: from_stack_1v = clsbase.RsFrmGet()
  loc_9EF746: FLdPr var_B0
  loc_9EF749:  = Me.Fields
  loc_9EF74E: FLdPr var_B4
  loc_9EF751: from_stack_2 = Me.Item(from_stack_1)
  loc_9EF756: FLdPr var_B8
  loc_9EF759:  = Me.Value
  loc_9EF75E: FLdRfVar var_C8
  loc_9EF761: CStrVarTmp
  loc_9EF762: FStStrNoPop var_E0
  loc_9EF765: FLdPr Me
  loc_9EF768: VCallAd Control_ID_DetaTicoLbl
  loc_9EF76B: FStAdFunc var_DC
  loc_9EF76E: FLdPr var_DC
  loc_9EF771: Me.Caption = from_stack_1
  loc_9EF776: FFree1Str var_E0
  loc_9EF779: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EF786: FFree1Var var_C8 = ""
  loc_9EF789: ExitProcHresult
  loc_9EF78A: FLdPr arg_6824
End Sub

Private Function Proc_126_67_A365C0() 'A365C0
  'Data Table: 4FD0E0
  loc_A3639C: FLdPr Me
  loc_A3639F: VCallAd Control_ID_ItemNotaFlex
  loc_A363A2: FStAdFunc var_88
  loc_A363A5: FLdPr var_88
  loc_A363A8: LateIdCall
  loc_A363B0: LitVarI4
  loc_A363B8: PopAdLdVar
  loc_A363B9: FLdPr var_88
  loc_A363BC: LateIdSt
  loc_A363C1: LitVarI4
  loc_A363C9: PopAdLdVar
  loc_A363CA: LitVarI4
  loc_A363D2: PopAdLdVar
  loc_A363D3: LitVarStr var_D8, "Item"
  loc_A363D8: PopAdLdVar
  loc_A363D9: FLdPr var_88
  loc_A363DC: LateIdCallSt
  loc_A363E4: LitVarI4
  loc_A363EC: PopAdLdVar
  loc_A363ED: LitVarI4
  loc_A363F5: PopAdLdVar
  loc_A363F6: LitVarStr var_D8, "Insumo"
  loc_A363FB: PopAdLdVar
  loc_A363FC: FLdPr var_88
  loc_A363FF: LateIdCallSt
  loc_A36407: LitVarI4
  loc_A3640F: PopAdLdVar
  loc_A36410: LitVarI4
  loc_A36418: PopAdLdVar
  loc_A36419: LitVarStr var_D8, "Detalle del Insumo"
  loc_A3641E: PopAdLdVar
  loc_A3641F: FLdPr var_88
  loc_A36422: LateIdCallSt
  loc_A3642A: LitVarI4
  loc_A36432: PopAdLdVar
  loc_A36433: LitVarI4
  loc_A3643B: PopAdLdVar
  loc_A3643C: LitVarStr var_D8, "Detalle AMPLIADO del Insumo"
  loc_A36441: PopAdLdVar
  loc_A36442: FLdPr var_88
  loc_A36445: LateIdCallSt
  loc_A3644D: LitVarI4
  loc_A36455: PopAdLdVar
  loc_A36456: LitVarI4
  loc_A3645E: PopAdLdVar
  loc_A3645F: LitVarStr var_D8, "Cantidad"
  loc_A36464: PopAdLdVar
  loc_A36465: FLdPr var_88
  loc_A36468: LateIdCallSt
  loc_A36470: LitVarI4
  loc_A36478: PopAdLdVar
  loc_A36479: LitVarI4
  loc_A36481: PopAdLdVar
  loc_A36482: LitVarStr var_D8, "$ Unit."
  loc_A36487: PopAdLdVar
  loc_A36488: FLdPr var_88
  loc_A3648B: LateIdCallSt
  loc_A36493: LitVarI4
  loc_A3649B: PopAdLdVar
  loc_A3649C: LitVarI4
  loc_A364A4: PopAdLdVar
  loc_A364A5: LitVarStr var_D8, "$ Total"
  loc_A364AA: PopAdLdVar
  loc_A364AB: FLdPr var_88
  loc_A364AE: LateIdCallSt
  loc_A364B6: LitVarI4
  loc_A364BE: PopAdLdVar
  loc_A364BF: LitVarI4
  loc_A364C7: PopAdLdVar
  loc_A364C8: LitVarStr var_D8, "U. Ejec."
  loc_A364CD: PopAdLdVar
  loc_A364CE: FLdPr var_88
  loc_A364D1: LateIdCallSt
  loc_A364D9: LitVarI4
  loc_A364E1: PopAdLdVar
  loc_A364E2: LitVarI4
  loc_A364EA: PopAdLdVar
  loc_A364EB: LitVarStr var_D8, "Un.Gasto"
  loc_A364F0: PopAdLdVar
  loc_A364F1: FLdPr var_88
  loc_A364F4: LateIdCallSt
  loc_A364FC: LitVarI4
  loc_A36504: PopAdLdVar
  loc_A36505: LitVarI4
  loc_A3650D: PopAdLdVar
  loc_A3650E: LitVarStr var_D8, "Finalidad"
  loc_A36513: PopAdLdVar
  loc_A36514: FLdPr var_88
  loc_A36517: LateIdCallSt
  loc_A3651F: LitVarI4
  loc_A36527: PopAdLdVar
  loc_A36528: LitVarI4
  loc_A36530: PopAdLdVar
  loc_A36531: LitVarStr var_D8, "Partida"
  loc_A36536: PopAdLdVar
  loc_A36537: FLdPr var_88
  loc_A3653A: LateIdCallSt
  loc_A36542: LitVarI4
  loc_A3654A: PopAdLdVar
  loc_A3654B: LitVarI4
  loc_A36553: PopAdLdVar
  loc_A36554: LitVarStr var_D8, "Caracteristicas"
  loc_A36559: PopAdLdVar
  loc_A3655A: FLdPr var_88
  loc_A3655D: LateIdCallSt
  loc_A36565: LitVarI4
  loc_A3656D: PopAdLdVar
  loc_A3656E: LitVarI4
  loc_A36576: PopAdLdVar
  loc_A36577: LitVarStr var_D8, "Cotizacion"
  loc_A3657C: PopAdLdVar
  loc_A3657D: FLdPr var_88
  loc_A36580: LateIdCallSt
  loc_A36588: LitVarI4
  loc_A36590: PopAdLdVar
  loc_A36591: LitVarI4
  loc_A36599: PopAdLdVar
  loc_A3659A: LitVarStr var_D8, "Imp."
  loc_A3659F: PopAdLdVar
  loc_A365A0: FLdPr var_88
  loc_A365A3: LateIdCallSt
  loc_A365AB: FLdPr var_88
  loc_A365AE: LateIdCall
  loc_A365B6: LitNothing
  loc_A365B8: FStAd var_88 
  loc_A365BC: ExitProcHresult
  loc_A365BD: ImpAdLdFPR4 MemVar_0
End Function

Private Function Proc_126_68_A399F4() 'A399F4
  'Data Table: 4FD0E0
  loc_A39818: LitStr "SELECT itn.CodiItno Item, itn.CantItno Cant_np, itn.ImunItno Unit_np, CONVERT(itn.CantItno*itn.ImunItno,DECIMAL(15,2)) Total_np"
  loc_A3981B: LitStr " , IFNULL(c.IdCoti,0) IdCoti, IFNULL(c.CucuPers,0) CucuPers, IFNULL(p.DetaProv,'') DetaProv"
  loc_A3981E: ConcatStr
  loc_A3981F: FStStrNoPop var_88
  loc_A39822: LitStr " , IFNULL(itc.AlteItco,0) Alte_cot, IFNULL(itc.CantItco,0) Cant_cot, IFNULL(itc.ImunItco,0) Imun_cot, IFNULL(CONVERT(itc.CantItco*itc.ImunItco,DECIMAL(15,2)),0) Total_cot"
  loc_A39825: ConcatStr
  loc_A39826: FStStrNoPop var_8C
  loc_A39829: LitStr " , IFNULL(oc.CodiOrco,0) CodiOrco, IFNULL(itcc.AlteItco,0) Alte_oc, IFNULL(itcc.CantItco,0) Cant_oc, IFNULL(itcc.ImunItco,0) Imun_oc, IFNULL(CONVERT(itcc.CantItco*itcc.ImunItco,DECIMAL(15,2)),0) Total_oc"
  loc_A3982C: ConcatStr
  loc_A3982D: FStStrNoPop var_90
  loc_A39830: LitStr " FROM itemnota itn"
  loc_A39833: ConcatStr
  loc_A39834: FStStrNoPop var_94
  loc_A39837: LitStr " LEFT JOIN cotizacion c ON c.PeriInfo = itn.PeriInfo AND c.CodiNope = itn.CodiNope"
  loc_A3983A: ConcatStr
  loc_A3983B: FStStrNoPop var_98
  loc_A3983E: LitStr " LEFT JOIN proveedor p ON p.CucuPers = c.CucuPers"
  loc_A39841: ConcatStr
  loc_A39842: FStStrNoPop var_9C
  loc_A39845: LitStr " LEFT JOIN itemcotizacion itc ON itc.IdCoti = c.IdCoti AND itc.CodiItco = itn.CodiItno"
  loc_A39848: ConcatStr
  loc_A39849: FStStrNoPop var_A0
  loc_A3984C: LitStr " LEFT JOIN ordencompra oc ON oc.IdCoti = c.IdCoti"
  loc_A3984F: ConcatStr
  loc_A39850: FStStrNoPop var_A4
  loc_A39853: LitStr " LEFT JOIN itemcompra itcc ON itcc.PeriInfo = oc.PeriInfo AND itcc.CodiOrco = oc.CodiOrco AND itcc.CodiItco = itc.CodiItco AND itcc.AlteItco = itc.AlteItco"
  loc_A39856: ConcatStr
  loc_A39857: FStStrNoPop var_A8
  loc_A3985A: LitStr " WHERE itn.PeriInfo = "
  loc_A3985D: ConcatStr
  loc_A3985E: FStStrNoPop var_AC
  loc_A39861: ImpAdLdI2 MemVar_C3D064
  loc_A39864: CStrUI1
  loc_A39866: FStStrNoPop var_B0
  loc_A39869: ConcatStr
  loc_A3986A: FStStrNoPop var_B4
  loc_A3986D: LitStr " AND itn.CodiNope = '"
  loc_A39870: ConcatStr
  loc_A39871: CVarStr var_F0
  loc_A39874: FLdRfVar var_E0
  loc_A39877: FLdRfVar var_D0
  loc_A3987A: LitVarStr var_CC, "CodiNope"
  loc_A3987F: PopAdLdVar
  loc_A39880: FLdRfVar var_BC
  loc_A39883: FLdRfVar var_B8
  loc_A39886: FLdPr Me
  loc_A39889: MemLdRfVar from_stack_1.global_52
  loc_A3988C: NewIfNullPr clsnotapedido
  loc_A3988F: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_A39894: FLdPr var_B8
  loc_A39897:  = Me.Fields
  loc_A3989C: FLdPr var_BC
  loc_A3989F: from_stack_2 = Me.Item(from_stack_1)
  loc_A398A4: FLdPr var_D0
  loc_A398A7:  = Me.Value
  loc_A398AC: FLdRfVar var_E0
  loc_A398AF: ConcatVar var_100
  loc_A398B3: LitVarStr var_110, "'"
  loc_A398B8: ConcatVar var_120
  loc_A398BC: LitVarStr var_130, " ORDER BY itn.CodiItno"
  loc_A398C1: ConcatVar var_140
  loc_A398C5: LitVarStr var_150, " ;"
  loc_A398CA: ConcatVar var_160
  loc_A398CE: CStrVarVal var_164
  loc_A398D2: FLdPr Me
  loc_A398D5: MemLdRfVar from_stack_1.global_68
  loc_A398D8: NewIfNullPr clscotizacion
  loc_A398DB: Call clscotizacion.RedefineRS(from_stack_1v)
  loc_A398E0: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A398FD: FFreeAd var_B8 = "": var_BC = ""
  loc_A39906: FFreeVar var_F0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = ""
  loc_A39915: LitI4 0
  loc_A3991A: LitI4 1
  loc_A3991F: FLdRfVar var_168
  loc_A39922: Redim
  loc_A3992C: FLdPr Me
  loc_A3992F: MemLdRfVar from_stack_1.global_68
  loc_A39932: NewIfNullAd
  loc_A39935: FStAd var_B8 
  loc_A39939: FLdRfVar var_B8
  loc_A3993C: CVarRef
  loc_A39941: ParmAry1St
  loc_A39947: FLdPr Me
  loc_A3994A: VCallAd Control_ID_dgdCotizacion
  loc_A3994D: CVarAd
  loc_A39951: ParmAry1St
  loc_A39957: FLdRfVar var_168
  loc_A3995A: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3995F: ILdRf var_B8
  loc_A39962: CastAd
  loc_A39965: FLdPr Me
  loc_A39968: MemStAdFunc
  loc_A3996C: FLdRfVar var_168
  loc_A3996F: Erase
  loc_A39970: FFree1Ad var_B8
  loc_A39973: LitVar_FALSE
  loc_A39977: PopAdLdVar
  loc_A39978: FLdPr Me
  loc_A3997B: VCallAd Control_ID_dgdCotizacion
  loc_A3997E: FStAdFunc var_B8
  loc_A39981: FLdPr var_B8
  loc_A39984: LateIdSt
  loc_A39989: FFree1Ad var_B8
  loc_A3998C: LitVar_FALSE
  loc_A39990: PopAdLdVar
  loc_A39991: FLdPr Me
  loc_A39994: VCallAd Control_ID_dgdCotizacion
  loc_A39997: FStAdFunc var_B8
  loc_A3999A: FLdPr var_B8
  loc_A3999D: LateIdSt
  loc_A399A2: FFree1Ad var_B8
  loc_A399A5: LitVar_FALSE
  loc_A399A9: PopAdLdVar
  loc_A399AA: FLdPr Me
  loc_A399AD: VCallAd Control_ID_dgdCotizacion
  loc_A399B0: FStAdFunc var_B8
  loc_A399B3: FLdPr var_B8
  loc_A399B6: LateIdSt
  loc_A399BB: FFree1Ad var_B8
  loc_A399BE: LitVar_FALSE
  loc_A399C2: PopAdLdVar
  loc_A399C3: FLdPr Me
  loc_A399C6: VCallAd Control_ID_dgdCotizacion
  loc_A399C9: FStAdFunc var_B8
  loc_A399CC: FLdPr var_B8
  loc_A399CF: LateIdSt
  loc_A399D4: FFree1Ad var_B8
  loc_A399D7: LitVar_FALSE
  loc_A399DB: PopAdLdVar
  loc_A399DC: FLdPr Me
  loc_A399DF: VCallAd Control_ID_dgdCotizacion
  loc_A399E2: FStAdFunc var_B8
  loc_A399E5: FLdPr var_B8
  loc_A399E8: LateIdSt
  loc_A399ED: FFree1Ad var_B8
  loc_A399F0: ExitProcHresult
End Function

Private Function Proc_126_69_9E76AC() '9E76AC
  'Data Table: 4FD0E0
  loc_9E758C: LitI2_Byte 0
  loc_9E758E: CR8I2
  loc_9E758F: FLdPr Me
  loc_9E7592: MemStFPR8 global_136
  loc_9E7595: LitI2_Byte 1
  loc_9E7597: FLdRfVar var_86
  loc_9E759A: FLdPr Me
  loc_9E759D: VCallAd Control_ID_ItemNotaFlex
  loc_9E75A0: FStAdFunc var_8C
  loc_9E75A3: FLdPr var_8C
  loc_9E75A6: LateIdLdVar var_9C DispID_4 0
  loc_9E75AD: CI4Var
  loc_9E75AF: LitI4 1
  loc_9E75B4: SubI4
  loc_9E75B5: CI2I4
  loc_9E75B6: FFree1Ad var_8C
  loc_9E75B9: FFree1Var var_9C = ""
  loc_9E75BC: ForI2 var_A0
  loc_9E75C2: FLdI2 var_86
  loc_9E75C5: CI4UI1
  loc_9E75C6: CVarI4
  loc_9E75CA: PopAdLdVar
  loc_9E75CB: LitVarI4
  loc_9E75D3: PopAdLdVar
  loc_9E75D4: FLdPr Me
  loc_9E75D7: VCallAd Control_ID_ItemNotaFlex
  loc_9E75DA: FStAdFunc var_8C
  loc_9E75DD: FLdPr var_8C
  loc_9E75E0: LateIdCallLdVar
  loc_9E75EA: CStrVarTmp
  loc_9E75EB: CVarStr var_F0
  loc_9E75EE: ImpAdCallI2 IsNumeric()
  loc_9E75F3: FFree1Ad var_8C
  loc_9E75F6: FFreeVar var_9C = ""
  loc_9E75FD: BranchF loc_9E7664
  loc_9E7600: FLdI2 var_86
  loc_9E7603: CI4UI1
  loc_9E7604: CVarI4
  loc_9E7608: PopAdLdVar
  loc_9E7609: LitVarI4
  loc_9E7611: PopAdLdVar
  loc_9E7612: FLdPr Me
  loc_9E7615: VCallAd Control_ID_ItemNotaFlex
  loc_9E7618: FStAdFunc var_8C
  loc_9E761B: FLdPr var_8C
  loc_9E761E: LateIdCallLdVar
  loc_9E7628: PopAd
  loc_9E762A: LitI4 3
  loc_9E762F: FLdPr Me
  loc_9E7632: MemLdFPR8 global_136
  loc_9E7635: FLdRfVar var_9C
  loc_9E7638: CStrVarTmp
  loc_9E7639: FStStrNoPop var_F4
  loc_9E763C: CR8Str
  loc_9E763E: AddR8
  loc_9E763F: CVarR8
  loc_9E7643: FLdRfVar var_114
  loc_9E7646: ImpAdCallFPR4  = Round(, )
  loc_9E764B: FLdRfVar var_114
  loc_9E764E: CR4Var
  loc_9E764F: FLdPr Me
  loc_9E7652: MemStFPR8 global_136
  loc_9E7655: FFree1Str var_F4
  loc_9E7658: FFree1Ad var_8C
  loc_9E765B: FFreeVar var_9C = "": var_F0 = ""
  loc_9E7664: FLdRfVar var_86
  loc_9E7667: NextI2 var_A0, loc_9E75C2
  loc_9E766C: LitI4 -1
  loc_9E7671: LitI4 0
  loc_9E7676: LitI4 -1
  loc_9E767B: LitI4 3
  loc_9E7680: FLdPr Me
  loc_9E7683: MemLdRfVar from_stack_1.global_136
  loc_9E7686: CVarRef
  loc_9E768B: ImpAdCallI2 FormatNumber(, , , , )
  loc_9E7690: FStStrNoPop var_F4
  loc_9E7693: FLdPr Me
  loc_9E7696: VCallAd Control_ID_TotaNopeLbl
  loc_9E7699: FStAdFunc var_8C
  loc_9E769C: FLdPr var_8C
  loc_9E769F: Me.Caption = from_stack_1
  loc_9E76A4: FFree1Str var_F4
  loc_9E76A7: FFree1Ad var_8C
  loc_9E76AA: ExitProcHresult
  loc_9E76AB: CStrVarTmp
End Function

Private Function Proc_126_70_BE093C() 'BE093C
  'Data Table: 4FD0E0
  loc_BDF250: FLdPr Me
  loc_BDF253: MemLdUI1 global_74
  loc_BDF257: LitI2_Byte 1
  loc_BDF259: EqI2
  loc_BDF25A: BranchF loc_BDFE02
  loc_BDF25D: FLdPr Me
  loc_BDF260: VCallAd Control_ID_ItemNotaFlex
  loc_BDF263: FStAdFunc var_88
  loc_BDF266: FLdPr var_88
  loc_BDF269: LateIdLdVar var_98 DispID_11 0
  loc_BDF270: CI4Var
  loc_BDF272: LitI4 &HB
  loc_BDF277: LtI4
  loc_BDF278: FFree1Ad var_88
  loc_BDF27B: FFree1Var var_98 = ""
  loc_BDF27E: BranchF loc_BDF2D6
  loc_BDF281: FLdPr Me
  loc_BDF284: VCallAd Control_ID_ItemNotaFlex
  loc_BDF287: FStAdFunc var_88
  loc_BDF28A: FLdPr var_88
  loc_BDF28D: LateIdLdVar var_98 DispID_11 0
  loc_BDF294: CI4Var
  loc_BDF296: LitI4 1
  loc_BDF29B: AddI4
  loc_BDF29C: CVarI4
  loc_BDF2A0: PopAdLdVar
  loc_BDF2A1: FLdPr Me
  loc_BDF2A4: VCallAd Control_ID_ItemNotaFlex
  loc_BDF2A7: FStAdFunc var_BC
  loc_BDF2AA: FLdPr var_BC
  loc_BDF2AD: LateIdSt
  loc_BDF2B2: FFreeAd var_88 = ""
  loc_BDF2B9: FFree1Var var_98 = ""
  loc_BDF2BC: FLdPr Me
  loc_BDF2BF: VCallAd Control_ID_ItemNotaFlex
  loc_BDF2C2: FStAdFunc var_88
  loc_BDF2C5: FLdPr var_88
  loc_BDF2C8: LateIdCall
  loc_BDF2D0: FFree1Ad var_88
  loc_BDF2D3: Branch loc_BDFDFF
  loc_BDF2D6: FLdPr Me
  loc_BDF2D9: VCallAd Control_ID_ItemNotaFlex
  loc_BDF2DC: FStAdFunc var_88
  loc_BDF2DF: FLdPr var_88
  loc_BDF2E2: LateIdLdVar var_98 DispID_10 0
  loc_BDF2E9: CI4Var
  loc_BDF2EB: CVarI4
  loc_BDF2EF: PopAdLdVar
  loc_BDF2F0: LitVarI4
  loc_BDF2F8: PopAdLdVar
  loc_BDF2F9: FLdPr Me
  loc_BDF2FC: VCallAd Control_ID_ItemNotaFlex
  loc_BDF2FF: FStAdFunc var_BC
  loc_BDF302: FLdPr var_BC
  loc_BDF305: LateIdCallLdVar
  loc_BDF30F: CStrVarTmp
  loc_BDF310: FStStrNoPop var_F0
  loc_BDF313: LitStr vbNullString
  loc_BDF316: NeStr
  loc_BDF318: FFree1Str var_F0
  loc_BDF31B: FFreeAd var_88 = ""
  loc_BDF322: FFreeVar var_98 = ""
  loc_BDF329: BranchF loc_BDF479
  loc_BDF32C: FLdPr Me
  loc_BDF32F: VCallAd Control_ID_ItemNotaFlex
  loc_BDF332: FStAdFunc var_88
  loc_BDF335: FLdPr var_88
  loc_BDF338: LateIdLdVar var_98 DispID_10 0
  loc_BDF33F: CI4Var
  loc_BDF341: CVarI4
  loc_BDF345: PopAdLdVar
  loc_BDF346: LitVarI4
  loc_BDF34E: PopAdLdVar
  loc_BDF34F: FLdPr Me
  loc_BDF352: VCallAd Control_ID_ItemNotaFlex
  loc_BDF355: FStAdFunc var_BC
  loc_BDF358: FLdPr var_BC
  loc_BDF35B: LateIdCallLdVar
  loc_BDF365: PopAd
  loc_BDF367: FLdPr Me
  loc_BDF36A: VCallAd Control_ID_FechNopeMsk
  loc_BDF36D: FStAdFunc var_F4
  loc_BDF370: FLdPr var_F4
  loc_BDF373: LateIdLdVar var_104 DispID_15 0
  loc_BDF37A: PopAd
  loc_BDF37C: FLdRfVar var_110
  loc_BDF37F: LitI2_Byte 0
  loc_BDF381: PopTmpLdAd2 var_10A
  loc_BDF384: LitStr "0"
  loc_BDF387: FLdRfVar var_104
  loc_BDF38A: CStrVarTmp
  loc_BDF38B: FStStrNoPop var_108
  loc_BDF38E: FLdPr Me
  loc_BDF391: MemLdRfVar from_stack_1.global_100
  loc_BDF394: NewIfNullRf
  loc_BDF398: FLdPr Me
  loc_BDF39B: MemLdRfVar from_stack_1.global_104
  loc_BDF39E: NewIfNullRf
  loc_BDF3A2: FLdPr Me
  loc_BDF3A5: MemLdRfVar from_stack_1.global_96
  loc_BDF3A8: NewIfNullRf
  loc_BDF3AC: FLdPr Me
  loc_BDF3AF: MemLdRfVar from_stack_1.global_92
  loc_BDF3B2: NewIfNullRf
  loc_BDF3B6: FLdRfVar var_EC
  loc_BDF3B9: CStrVarTmp
  loc_BDF3BA: FStStrNoPop var_F0
  loc_BDF3BD: FLdPr Me
  loc_BDF3C0: MemLdRfVar from_stack_1.global_60
  loc_BDF3C3: NewIfNullPr clsimputacion
  loc_BDF3C6: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BDF3CB: ILdRf var_110
  loc_BDF3CE: FLdPr Me
  loc_BDF3D1: MemStStrCopy
  loc_BDF3D5: FFreeStr var_F0 = "": var_108 = ""
  loc_BDF3DE: FFreeAd var_88 = "": var_BC = ""
  loc_BDF3E7: FFreeVar var_98 = "": var_EC = ""
  loc_BDF3F0: FLdPr Me
  loc_BDF3F3: MemLdStr global_76
  loc_BDF3F6: LitStr vbNullString
  loc_BDF3F9: NeStr
  loc_BDF3FB: BranchF loc_BDF479
  loc_BDF3FE: LitStr "Municipalidad de Guaymallén"
  loc_BDF401: LitStr "Municipalidad de Malargüe"
  loc_BDF404: EqStr
  loc_BDF406: BranchF loc_BDF46F
  loc_BDF409: FLdPr Me
  loc_BDF40C: MemLdUI1 global_74
  loc_BDF410: CI2UI1
  loc_BDF412: LitI2_Byte 1
  loc_BDF414: EqI2
  loc_BDF415: BranchF loc_BDF443
  loc_BDF418: LitI4 0
  loc_BDF41D: FLdPr Me
  loc_BDF420: MemLdStr global_76
  loc_BDF423: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDF428: FLdPr Me
  loc_BDF42B: VCallAd Control_ID_ItemNotaFlex
  loc_BDF42E: FStAdFunc var_88
  loc_BDF431: FLdPr var_88
  loc_BDF434: LateIdCall
  loc_BDF43C: FFree1Ad var_88
  loc_BDF43F: ExitProcHresult
  loc_BDF440: Branch loc_BDF46C
  loc_BDF443: FLdPr Me
  loc_BDF446: MemLdUI1 global_74
  loc_BDF44A: CI2UI1
  loc_BDF44C: LitI2_Byte 2
  loc_BDF44E: EqI2
  loc_BDF44F: BranchF loc_BDF46C
  loc_BDF452: LitI4 0
  loc_BDF457: FLdPr Me
  loc_BDF45A: MemLdStr global_76
  loc_BDF45D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDF462: LitStr vbNullString
  loc_BDF465: FLdPr Me
  loc_BDF468: MemStStrCopy
  loc_BDF46C: Branch loc_BDF479
  loc_BDF46F: LitStr vbNullString
  loc_BDF472: FLdPr Me
  loc_BDF475: MemStStrCopy
  loc_BDF479: LitI2_Byte 0
  loc_BDF47B: BranchF loc_BDF603
  loc_BDF47E: LitI2_Byte 0
  loc_BDF480: BranchF loc_BDF530
  loc_BDF483: FLdRfVar var_F0
  loc_BDF486: FLdPr Me
  loc_BDF489: MemLdRfVar from_stack_1.global_104
  loc_BDF48C: NewIfNullPr tblfinalidad
  loc_BDF48F: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_BDF494: FLdRfVar var_108
  loc_BDF497: FLdPr Me
  loc_BDF49A: MemLdRfVar from_stack_1.global_92
  loc_BDF49D: NewIfNullPr tblpartida
  loc_BDF4A0: from_stack_1v = tblpartida.CredPartGestionGet()
  loc_BDF4A5: FLdRfVar var_110
  loc_BDF4A8: FLdPr Me
  loc_BDF4AB: MemLdRfVar from_stack_1.global_96
  loc_BDF4AE: NewIfNullPr tblorganigrama
  loc_BDF4B1: from_stack_1v = tblorganigrama.CredOrgaGestionGet()
  loc_BDF4B6: FLdPr Me
  loc_BDF4B9: MemLdRfVar from_stack_1.global_124
  loc_BDF4BC: NewIfNullRf
  loc_BDF4C0: ILdRf var_110
  loc_BDF4C3: ILdRf var_108
  loc_BDF4C6: ILdRf var_F0
  loc_BDF4C9: ImpAdLdI2 MemVar_C3D064
  loc_BDF4CC: ImpAdCallI2 Proc_259_13_A88BCC(, , , , )
  loc_BDF4D1: NotI4
  loc_BDF4D2: FFreeStr var_F0 = "": var_108 = ""
  loc_BDF4DB: BranchF loc_BDF52D
  loc_BDF4DE: LitStr "La Finalidad-Partida-Organigrama NO EXISTE. Verifique..."
  loc_BDF4E1: FLdPr Me
  loc_BDF4E4: MemStStrCopy
  loc_BDF4E8: LitI4 0
  loc_BDF4ED: FLdPr Me
  loc_BDF4F0: MemLdStr global_76
  loc_BDF4F3: LitStr " - Fila: "
  loc_BDF4F6: ConcatStr
  loc_BDF4F7: FStStrNoPop var_F0
  loc_BDF4FA: FLdPr Me
  loc_BDF4FD: VCallAd Control_ID_ItemNotaFlex
  loc_BDF500: FStAdFunc var_88
  loc_BDF503: FLdPr var_88
  loc_BDF506: LateIdLdVar var_98 DispID_10 0
  loc_BDF50D: CI4Var
  loc_BDF50F: CStrI4
  loc_BDF511: FStStrNoPop var_108
  loc_BDF514: ConcatStr
  loc_BDF515: FStStrNoPop var_110
  loc_BDF518: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDF51D: FFreeStr var_F0 = "": var_108 = ""
  loc_BDF526: FFree1Ad var_88
  loc_BDF529: FFree1Var var_98 = ""
  loc_BDF52C: ExitProcHresult
  loc_BDF52D: Branch loc_BDF603
  loc_BDF530: FLdRfVar var_F0
  loc_BDF533: FLdPr Me
  loc_BDF536: MemLdRfVar from_stack_1.global_92
  loc_BDF539: NewIfNullPr tblpartida
  loc_BDF53C: from_stack_1v = tblpartida.CodiPartGet()
  loc_BDF541: ILdRf var_F0
  loc_BDF544: LitStr vbNullString
  loc_BDF547: NeStr
  loc_BDF549: FFree1Str var_F0
  loc_BDF54C: BranchF loc_BDF603
  loc_BDF54F: FLdRfVar var_F0
  loc_BDF552: FLdPr Me
  loc_BDF555: MemLdRfVar from_stack_1.global_104
  loc_BDF558: NewIfNullPr tblfinalidad
  loc_BDF55B: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_BDF560: FLdRfVar var_108
  loc_BDF563: FLdPr Me
  loc_BDF566: MemLdRfVar from_stack_1.global_92
  loc_BDF569: NewIfNullPr tblpartida
  loc_BDF56C: from_stack_1v = tblpartida.CredPartGestionGet()
  loc_BDF571: FLdRfVar var_110
  loc_BDF574: FLdPr Me
  loc_BDF577: MemLdRfVar from_stack_1.global_96
  loc_BDF57A: NewIfNullPr tblorganigrama
  loc_BDF57D: from_stack_1v = tblorganigrama.CredOrgaGestionGet()
  loc_BDF582: FLdPr Me
  loc_BDF585: MemLdRfVar from_stack_1.global_124
  loc_BDF588: NewIfNullRf
  loc_BDF58C: ILdRf var_110
  loc_BDF58F: ILdRf var_108
  loc_BDF592: ILdRf var_F0
  loc_BDF595: ImpAdLdI2 MemVar_C3D064
  loc_BDF598: ImpAdCallI2 Proc_259_13_A88BCC(, , , , )
  loc_BDF59D: NotI4
  loc_BDF59E: FFreeStr var_F0 = "": var_108 = ""
  loc_BDF5A7: BranchF loc_BDF603
  loc_BDF5AA: LitStr "Advertencia: La Finalidad-Partida-Organigrama NO EXISTE. Verifique..."
  loc_BDF5AD: FLdPr Me
  loc_BDF5B0: MemStStrCopy
  loc_BDF5B4: LitI4 0
  loc_BDF5B9: FLdPr Me
  loc_BDF5BC: MemLdStr global_76
  loc_BDF5BF: LitStr " - Fila: "
  loc_BDF5C2: ConcatStr
  loc_BDF5C3: FStStrNoPop var_F0
  loc_BDF5C6: FLdPr Me
  loc_BDF5C9: VCallAd Control_ID_ItemNotaFlex
  loc_BDF5CC: FStAdFunc var_88
  loc_BDF5CF: FLdPr var_88
  loc_BDF5D2: LateIdLdVar var_98 DispID_10 0
  loc_BDF5D9: CI4Var
  loc_BDF5DB: CStrI4
  loc_BDF5DD: FStStrNoPop var_108
  loc_BDF5E0: ConcatStr
  loc_BDF5E1: FStStrNoPop var_110
  loc_BDF5E4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDF5E9: FFreeStr var_F0 = "": var_108 = ""
  loc_BDF5F2: FFree1Ad var_88
  loc_BDF5F5: FFree1Var var_98 = ""
  loc_BDF5F8: LitStr vbNullString
  loc_BDF5FB: FLdPr Me
  loc_BDF5FE: MemStStrCopy
  loc_BDF602: ExitProcHresult
  loc_BDF603: FLdPr Me
  loc_BDF606: VCallAd Control_ID_ItemNotaFlex
  loc_BDF609: FStAdFunc var_88
  loc_BDF60C: FLdPr var_88
  loc_BDF60F: LateIdLdVar var_98 DispID_10 0
  loc_BDF616: CI4Var
  loc_BDF618: CVarI4
  loc_BDF61C: PopAdLdVar
  loc_BDF61D: LitVarI4
  loc_BDF625: PopAdLdVar
  loc_BDF626: FLdPr Me
  loc_BDF629: VCallAd Control_ID_ItemNotaFlex
  loc_BDF62C: FStAdFunc var_BC
  loc_BDF62F: FLdPr var_BC
  loc_BDF632: LateIdCallLdVar
  loc_BDF63C: PopAd
  loc_BDF63E: FLdRfVar var_108
  loc_BDF641: FLdPr Me
  loc_BDF644: MemLdUI1 global_74
  loc_BDF648: FLdPr Me
  loc_BDF64B: MemLdRfVar from_stack_1.global_92
  loc_BDF64E: NewIfNullRf
  loc_BDF652: FLdRfVar var_EC
  loc_BDF655: CStrVarTmp
  loc_BDF656: FStStrNoPop var_F0
  loc_BDF659: FLdPr Me
  loc_BDF65C: MemLdRfVar from_stack_1.global_60
  loc_BDF65F: NewIfNullPr clsimputacion
  loc_BDF662: from_stack_4v = clsimputacion.ValidaImunImpuPreventiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BDF667: ILdRf var_108
  loc_BDF66A: FLdPr Me
  loc_BDF66D: MemStStrCopy
  loc_BDF671: FFreeStr var_F0 = ""
  loc_BDF678: FFreeAd var_88 = ""
  loc_BDF67F: FFreeVar var_98 = ""
  loc_BDF686: FLdPr Me
  loc_BDF689: VCallAd Control_ID_ItemNotaFlex
  loc_BDF68C: FStAdFunc var_88
  loc_BDF68F: FLdPr var_88
  loc_BDF692: LateIdLdVar var_98 DispID_10 0
  loc_BDF699: CI4Var
  loc_BDF69B: CVarI4
  loc_BDF69F: PopAdLdVar
  loc_BDF6A0: LitVarI4
  loc_BDF6A8: PopAdLdVar
  loc_BDF6A9: FLdPr Me
  loc_BDF6AC: VCallAd Control_ID_ItemNotaFlex
  loc_BDF6AF: FStAdFunc var_BC
  loc_BDF6B2: FLdPr var_BC
  loc_BDF6B5: LateIdCallLdVar
  loc_BDF6BF: CStrVarTmp
  loc_BDF6C0: FStStrNoPop var_F0
  loc_BDF6C3: LitStr vbNullString
  loc_BDF6C6: NeStr
  loc_BDF6C8: FFree1Str var_F0
  loc_BDF6CB: FFreeAd var_88 = ""
  loc_BDF6D2: FFreeVar var_98 = ""
  loc_BDF6D9: BranchF loc_BDF73A
  loc_BDF6DC: FLdPr Me
  loc_BDF6DF: MemLdStr global_76
  loc_BDF6E2: LitStr vbNullString
  loc_BDF6E5: NeStr
  loc_BDF6E7: BranchF loc_BDF73A
  loc_BDF6EA: LitI4 0
  loc_BDF6EF: FLdPr Me
  loc_BDF6F2: MemLdStr global_76
  loc_BDF6F5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDF6FA: LitI4 &HB
  loc_BDF6FF: FLdPr Me
  loc_BDF702: MemLdStr global_76
  loc_BDF705: ImpAdCallI2 Left$(, )
  loc_BDF70A: FStStrNoPop var_F0
  loc_BDF70D: LitStr "Advertencia"
  loc_BDF710: EqStr
  loc_BDF712: FFree1Str var_F0
  loc_BDF715: BranchF loc_BDF722
  loc_BDF718: LitStr vbNullString
  loc_BDF71B: FLdPr Me
  loc_BDF71E: MemStStrCopy
  loc_BDF722: FLdPr Me
  loc_BDF725: VCallAd Control_ID_ItemNotaFlex
  loc_BDF728: FStAdFunc var_88
  loc_BDF72B: FLdPr var_88
  loc_BDF72E: LateIdCall
  loc_BDF736: FFree1Ad var_88
  loc_BDF739: ExitProcHresult
  loc_BDF73A: FLdRfVar var_10A
  loc_BDF73D: FLdPr Me
  loc_BDF740: VCallAd Control_ID_ChkCodiInsu
  loc_BDF743: FStAdFunc var_F4
  loc_BDF746: FLdPr var_F4
  loc_BDF749:  = Me.Value
  loc_BDF74E: FLdPr Me
  loc_BDF751: VCallAd Control_ID_ItemNotaFlex
  loc_BDF754: FStAdFunc var_134
  loc_BDF757: FLdPr var_134
  loc_BDF75A: LateIdLdVar var_144 DispID_4 0
  loc_BDF761: CI4Var
  loc_BDF763: LitI4 1
  loc_BDF768: SubI4
  loc_BDF769: CVarI4
  loc_BDF76D: PopAdLdVar
  loc_BDF76E: LitVarI4
  loc_BDF776: PopAdLdVar
  loc_BDF777: FLdPr Me
  loc_BDF77A: VCallAd Control_ID_ItemNotaFlex
  loc_BDF77D: FStAdFunc var_188
  loc_BDF780: FLdPr var_188
  loc_BDF783: LateIdCallLdVar
  loc_BDF78D: PopAd
  loc_BDF78F: FLdRfVar var_21E
  loc_BDF792: FLdPr Me
  loc_BDF795: VCallAd Control_ID_ChkCodiInsu
  loc_BDF798: FStAdFunc var_21C
  loc_BDF79B: FLdPr var_21C
  loc_BDF79E:  = Me.Value
  loc_BDF7A3: FLdPr Me
  loc_BDF7A6: VCallAd Control_ID_ItemNotaFlex
  loc_BDF7A9: FStAdFunc var_224
  loc_BDF7AC: FLdPr var_224
  loc_BDF7AF: LateIdLdVar var_234 DispID_4 0
  loc_BDF7B6: CI4Var
  loc_BDF7B8: LitI4 1
  loc_BDF7BD: SubI4
  loc_BDF7BE: CVarI4
  loc_BDF7C2: PopAdLdVar
  loc_BDF7C3: LitVarI4
  loc_BDF7CB: PopAdLdVar
  loc_BDF7CC: FLdPr Me
  loc_BDF7CF: VCallAd Control_ID_ItemNotaFlex
  loc_BDF7D2: FStAdFunc var_278
  loc_BDF7D5: FLdPr var_278
  loc_BDF7D8: LateIdCallLdVar
  loc_BDF7E2: PopAd
  loc_BDF7E4: FLdRfVar var_476
  loc_BDF7E7: FLdPr Me
  loc_BDF7EA: VCallAd Control_ID_ChkCodiOrga
  loc_BDF7ED: FStAdFunc var_474
  loc_BDF7F0: FLdPr var_474
  loc_BDF7F3:  = Me.Value
  loc_BDF7F8: FLdPr Me
  loc_BDF7FB: VCallAd Control_ID_ItemNotaFlex
  loc_BDF7FE: FStAdFunc var_47C
  loc_BDF801: FLdPr var_47C
  loc_BDF804: LateIdLdVar var_48C DispID_4 0
  loc_BDF80B: CI4Var
  loc_BDF80D: LitI4 1
  loc_BDF812: SubI4
  loc_BDF813: CVarI4
  loc_BDF817: PopAdLdVar
  loc_BDF818: LitVarI4
  loc_BDF820: PopAdLdVar
  loc_BDF821: FLdPr Me
  loc_BDF824: VCallAd Control_ID_ItemNotaFlex
  loc_BDF827: FStAdFunc var_4D0
  loc_BDF82A: FLdPr var_4D0
  loc_BDF82D: LateIdCallLdVar
  loc_BDF837: PopAd
  loc_BDF839: FLdPr Me
  loc_BDF83C: VCallAd Control_ID_CodiOrgaMsk
  loc_BDF83F: FStAdFunc var_4E4
  loc_BDF842: FLdPr var_4E4
  loc_BDF845: LateIdLdVar var_4F4 DispID_22 0
  loc_BDF84C: PopAd
  loc_BDF84E: FLdRfVar var_612
  loc_BDF851: FLdPr Me
  loc_BDF854: VCallAd Control_ID_ChkCodiFifu
  loc_BDF857: FStAdFunc var_610
  loc_BDF85A: FLdPr var_610
  loc_BDF85D:  = Me.Value
  loc_BDF862: FLdPr Me
  loc_BDF865: VCallAd Control_ID_ItemNotaFlex
  loc_BDF868: FStAdFunc var_618
  loc_BDF86B: FLdPr var_618
  loc_BDF86E: LateIdLdVar var_628 DispID_4 0
  loc_BDF875: CI4Var
  loc_BDF877: LitI4 1
  loc_BDF87C: SubI4
  loc_BDF87D: CVarI4
  loc_BDF881: PopAdLdVar
  loc_BDF882: LitVarI4
  loc_BDF88A: PopAdLdVar
  loc_BDF88B: FLdPr Me
  loc_BDF88E: VCallAd Control_ID_ItemNotaFlex
  loc_BDF891: FStAdFunc var_66C
  loc_BDF894: FLdPr var_66C
  loc_BDF897: LateIdCallLdVar
  loc_BDF8A1: PopAd
  loc_BDF8A3: FLdRfVar var_702
  loc_BDF8A6: FLdPr Me
  loc_BDF8A9: VCallAd Control_ID_ChkCodiPart
  loc_BDF8AC: FStAdFunc var_700
  loc_BDF8AF: FLdPr var_700
  loc_BDF8B2:  = Me.Value
  loc_BDF8B7: FLdPr Me
  loc_BDF8BA: VCallAd Control_ID_ItemNotaFlex
  loc_BDF8BD: FStAdFunc var_708
  loc_BDF8C0: FLdPr var_708
  loc_BDF8C3: LateIdLdVar var_718 DispID_4 0
  loc_BDF8CA: CI4Var
  loc_BDF8CC: LitI4 1
  loc_BDF8D1: SubI4
  loc_BDF8D2: CVarI4
  loc_BDF8D6: PopAdLdVar
  loc_BDF8D7: LitVarI4
  loc_BDF8DF: PopAdLdVar
  loc_BDF8E0: FLdPr Me
  loc_BDF8E3: VCallAd Control_ID_ItemNotaFlex
  loc_BDF8E6: FStAdFunc var_75C
  loc_BDF8E9: FLdPr var_75C
  loc_BDF8EC: LateIdCallLdVar
  loc_BDF8F6: PopAd
  loc_BDF8F8: FLdRfVar var_7F2
  loc_BDF8FB: FLdPr Me
  loc_BDF8FE: VCallAd Control_ID_ChkCodiInsu
  loc_BDF901: FStAdFunc var_7F0
  loc_BDF904: FLdPr var_7F0
  loc_BDF907:  = Me.Value
  loc_BDF90C: FLdPr Me
  loc_BDF90F: VCallAd Control_ID_ItemNotaFlex
  loc_BDF912: FStAdFunc var_7F8
  loc_BDF915: FLdPr var_7F8
  loc_BDF918: LateIdLdVar var_808 DispID_4 0
  loc_BDF91F: CI4Var
  loc_BDF921: LitI4 1
  loc_BDF926: SubI4
  loc_BDF927: CVarI4
  loc_BDF92B: PopAdLdVar
  loc_BDF92C: LitVarI4
  loc_BDF934: PopAdLdVar
  loc_BDF935: FLdPr Me
  loc_BDF938: VCallAd Control_ID_ItemNotaFlex
  loc_BDF93B: FStAdFunc var_84C
  loc_BDF93E: FLdPr var_84C
  loc_BDF941: LateIdCallLdVar
  loc_BDF94B: PopAd
  loc_BDF94D: FLdPr Me
  loc_BDF950: VCallAd Control_ID_ItemNotaFlex
  loc_BDF953: FStAdFunc var_88
  loc_BDF956: FLdPr var_88
  loc_BDF959: LateIdLdVar var_98 DispID_4 0
  loc_BDF960: CI4Var
  loc_BDF962: LitI4 1
  loc_BDF967: SubI4
  loc_BDF968: CVarI4
  loc_BDF96C: PopAdLdVar
  loc_BDF96D: LitVarI4
  loc_BDF975: PopAdLdVar
  loc_BDF976: FLdPr Me
  loc_BDF979: VCallAd Control_ID_ItemNotaFlex
  loc_BDF97C: FStAdFunc var_BC
  loc_BDF97F: FLdPr var_BC
  loc_BDF982: LateIdCallLdVar
  loc_BDF98C: CStrVarTmp
  loc_BDF98D: FStStrNoPop var_F0
  loc_BDF990: CR8Str
  loc_BDF992: LitI2_Byte 1
  loc_BDF994: CR8I2
  loc_BDF995: AddR8
  loc_BDF996: CVarR8
  loc_BDF99A: LitI4 9
  loc_BDF99F: FLdRfVar var_104
  loc_BDF9A2: ImpAdCallFPR4  = Chr()
  loc_BDF9A7: FLdRfVar var_104
  loc_BDF9AA: ConcatVar var_130
  loc_BDF9AE: LitVarStr var_1C8, vbNullString
  loc_BDF9B3: FStVarCopyObj var_1D8
  loc_BDF9B6: FLdRfVar var_1D8
  loc_BDF9B9: FLdRfVar var_198
  loc_BDF9BC: CStrVarTmp
  loc_BDF9BD: CVarStr var_1B8
  loc_BDF9C0: FLdI2 var_10A
  loc_BDF9C3: CI4UI1
  loc_BDF9C4: LitI4 1
  loc_BDF9C9: EqI4
  loc_BDF9CA: CVarBoolI2 var_1A8
  loc_BDF9CE: FLdRfVar var_1E8
  loc_BDF9D1: ImpAdCallFPR4  = IIf(, , )
  loc_BDF9D6: FLdRfVar var_1E8
  loc_BDF9D9: ConcatVar var_1F8
  loc_BDF9DD: LitI4 9
  loc_BDF9E2: FLdRfVar var_208
  loc_BDF9E5: ImpAdCallFPR4  = Chr()
  loc_BDF9EA: FLdRfVar var_208
  loc_BDF9ED: ConcatVar var_218
  loc_BDF9F1: LitVarStr var_2B8, vbNullString
  loc_BDF9F6: FStVarCopyObj var_2C8
  loc_BDF9F9: FLdRfVar var_2C8
  loc_BDF9FC: FLdRfVar var_288
  loc_BDF9FF: CStrVarTmp
  loc_BDFA00: CVarStr var_2A8
  loc_BDFA03: FLdI2 var_21E
  loc_BDFA06: CI4UI1
  loc_BDFA07: LitI4 1
  loc_BDFA0C: EqI4
  loc_BDFA0D: CVarBoolI2 var_298
  loc_BDFA11: FLdRfVar var_2D8
  loc_BDFA14: ImpAdCallFPR4  = IIf(, , )
  loc_BDFA19: FLdRfVar var_2D8
  loc_BDFA1C: ConcatVar var_2E8
  loc_BDFA20: LitI4 9
  loc_BDFA25: FLdRfVar var_2F8
  loc_BDFA28: ImpAdCallFPR4  = Chr()
  loc_BDFA2D: FLdRfVar var_2F8
  loc_BDFA30: ConcatVar var_308
  loc_BDFA34: FLdPr Me
  loc_BDFA37: VCallAd Control_ID_ItemNotaFlex
  loc_BDFA3A: FStAdFunc var_30C
  loc_BDFA3D: FLdPr var_30C
  loc_BDFA40: LateIdLdVar var_31C DispID_4 0
  loc_BDFA47: CI4Var
  loc_BDFA49: LitI4 1
  loc_BDFA4E: SubI4
  loc_BDFA4F: CVarI4
  loc_BDFA53: PopAdLdVar
  loc_BDFA54: LitVarI4
  loc_BDFA5C: PopAdLdVar
  loc_BDFA5D: FLdPr Me
  loc_BDFA60: VCallAd Control_ID_ItemNotaFlex
  loc_BDFA63: FStAdFunc var_360
  loc_BDFA66: FLdPr var_360
  loc_BDFA69: LateIdCallLdVar
  loc_BDFA73: CStrVarTmp
  loc_BDFA74: CVarStr var_380
  loc_BDFA77: ConcatVar var_390
  loc_BDFA7B: LitI4 9
  loc_BDFA80: FLdRfVar var_3A0
  loc_BDFA83: ImpAdCallFPR4  = Chr()
  loc_BDFA88: FLdRfVar var_3A0
  loc_BDFA8B: ConcatVar var_3B0
  loc_BDFA8F: LitVarStr var_3C0, vbNullString
  loc_BDFA94: ConcatVar var_3D0
  loc_BDFA98: LitI4 9
  loc_BDFA9D: FLdRfVar var_3E0
  loc_BDFAA0: ImpAdCallFPR4  = Chr()
  loc_BDFAA5: FLdRfVar var_3E0
  loc_BDFAA8: ConcatVar var_3F0
  loc_BDFAAC: LitVarStr var_400, vbNullString
  loc_BDFAB1: ConcatVar var_410
  loc_BDFAB5: LitI4 9
  loc_BDFABA: FLdRfVar var_420
  loc_BDFABD: ImpAdCallFPR4  = Chr()
  loc_BDFAC2: FLdRfVar var_420
  loc_BDFAC5: ConcatVar var_430
  loc_BDFAC9: LitVarStr var_440, vbNullString
  loc_BDFACE: ConcatVar var_450
  loc_BDFAD2: LitI4 9
  loc_BDFAD7: FLdRfVar var_460
  loc_BDFADA: ImpAdCallFPR4  = Chr()
  loc_BDFADF: FLdRfVar var_460
  loc_BDFAE2: ConcatVar var_470
  loc_BDFAE6: LitI4 0
  loc_BDFAEB: LitI4 -1
  loc_BDFAF0: LitI4 1
  loc_BDFAF5: LitStr vbNullString
  loc_BDFAF8: LitStr "."
  loc_BDFAFB: FLdRfVar var_4F4
  loc_BDFAFE: CStrVarTmp
  loc_BDFAFF: FStStrNoPop var_108
  loc_BDFB02: ImpAdCallI2 Replace(, , , , , )
  loc_BDFB07: CVarStr var_524
  loc_BDFB0A: FLdRfVar var_4E0
  loc_BDFB0D: CStrVarTmp
  loc_BDFB0E: CVarStr var_514
  loc_BDFB11: FLdI2 var_476
  loc_BDFB14: CI4UI1
  loc_BDFB15: LitI4 1
  loc_BDFB1A: EqI4
  loc_BDFB1B: CVarBoolI2 var_504
  loc_BDFB1F: FLdRfVar var_534
  loc_BDFB22: ImpAdCallFPR4  = IIf(, , )
  loc_BDFB27: FLdRfVar var_534
  loc_BDFB2A: ConcatVar var_544
  loc_BDFB2E: LitI4 9
  loc_BDFB33: FLdRfVar var_554
  loc_BDFB36: ImpAdCallFPR4  = Chr()
  loc_BDFB3B: FLdRfVar var_554
  loc_BDFB3E: ConcatVar var_564
  loc_BDFB42: FLdPr Me
  loc_BDFB45: VCallAd Control_ID_ItemNotaFlex
  loc_BDFB48: FStAdFunc var_568
  loc_BDFB4B: FLdPr var_568
  loc_BDFB4E: LateIdLdVar var_578 DispID_4 0
  loc_BDFB55: CI4Var
  loc_BDFB57: LitI4 1
  loc_BDFB5C: SubI4
  loc_BDFB5D: CVarI4
  loc_BDFB61: PopAdLdVar
  loc_BDFB62: LitVarI4
  loc_BDFB6A: PopAdLdVar
  loc_BDFB6B: FLdPr Me
  loc_BDFB6E: VCallAd Control_ID_ItemNotaFlex
  loc_BDFB71: FStAdFunc var_5BC
  loc_BDFB74: FLdPr var_5BC
  loc_BDFB77: LateIdCallLdVar
  loc_BDFB81: CStrVarTmp
  loc_BDFB82: CVarStr var_5DC
  loc_BDFB85: ConcatVar var_5EC
  loc_BDFB89: LitI4 9
  loc_BDFB8E: FLdRfVar var_5FC
  loc_BDFB91: ImpAdCallFPR4  = Chr()
  loc_BDFB96: FLdRfVar var_5FC
  loc_BDFB99: ConcatVar var_60C
  loc_BDFB9D: LitVarStr var_6AC, "019000"
  loc_BDFBA2: FStVarCopyObj var_6BC
  loc_BDFBA5: FLdRfVar var_6BC
  loc_BDFBA8: FLdRfVar var_67C
  loc_BDFBAB: CStrVarTmp
  loc_BDFBAC: CVarStr var_69C
  loc_BDFBAF: FLdI2 var_612
  loc_BDFBB2: CI4UI1
  loc_BDFBB3: LitI4 1
  loc_BDFBB8: EqI4
  loc_BDFBB9: CVarBoolI2 var_68C
  loc_BDFBBD: FLdRfVar var_6CC
  loc_BDFBC0: ImpAdCallFPR4  = IIf(, , )
  loc_BDFBC5: FLdRfVar var_6CC
  loc_BDFBC8: ConcatVar var_6DC
  loc_BDFBCC: LitI4 9
  loc_BDFBD1: FLdRfVar var_6EC
  loc_BDFBD4: ImpAdCallFPR4  = Chr()
  loc_BDFBD9: FLdRfVar var_6EC
  loc_BDFBDC: ConcatVar var_6FC
  loc_BDFBE0: LitVarStr var_79C, vbNullString
  loc_BDFBE5: FStVarCopyObj var_7AC
  loc_BDFBE8: FLdRfVar var_7AC
  loc_BDFBEB: FLdRfVar var_76C
  loc_BDFBEE: CStrVarTmp
  loc_BDFBEF: CVarStr var_78C
  loc_BDFBF2: FLdI2 var_702
  loc_BDFBF5: CI4UI1
  loc_BDFBF6: LitI4 1
  loc_BDFBFB: EqI4
  loc_BDFBFC: CVarBoolI2 var_77C
  loc_BDFC00: FLdRfVar var_7BC
  loc_BDFC03: ImpAdCallFPR4  = IIf(, , )
  loc_BDFC08: FLdRfVar var_7BC
  loc_BDFC0B: ConcatVar var_7CC
  loc_BDFC0F: LitI4 9
  loc_BDFC14: FLdRfVar var_7DC
  loc_BDFC17: ImpAdCallFPR4  = Chr()
  loc_BDFC1C: FLdRfVar var_7DC
  loc_BDFC1F: ConcatVar var_7EC
  loc_BDFC23: LitVarStr var_88C, vbNullString
  loc_BDFC28: FStVarCopyObj var_89C
  loc_BDFC2B: FLdRfVar var_89C
  loc_BDFC2E: FLdRfVar var_85C
  loc_BDFC31: CStrVarTmp
  loc_BDFC32: CVarStr var_87C
  loc_BDFC35: FLdI2 var_7F2
  loc_BDFC38: CI4UI1
  loc_BDFC39: LitI4 1
  loc_BDFC3E: EqI4
  loc_BDFC3F: CVarBoolI2 var_86C
  loc_BDFC43: FLdRfVar var_8AC
  loc_BDFC46: ImpAdCallFPR4  = IIf(, , )
  loc_BDFC4B: FLdRfVar var_8AC
  loc_BDFC4E: ConcatVar var_8BC
  loc_BDFC52: LitI4 9
  loc_BDFC57: FLdRfVar var_8CC
  loc_BDFC5A: ImpAdCallFPR4  = Chr()
  loc_BDFC5F: FLdRfVar var_8CC
  loc_BDFC62: ConcatVar var_8DC
  loc_BDFC66: LitVarStr var_8EC, vbNullString
  loc_BDFC6B: ConcatVar var_8FC
  loc_BDFC6F: LitI4 9
  loc_BDFC74: FLdRfVar var_90C
  loc_BDFC77: ImpAdCallFPR4  = Chr()
  loc_BDFC7C: FLdRfVar var_90C
  loc_BDFC7F: ConcatVar var_91C
  loc_BDFC83: LitVarStr var_92C, "No"
  loc_BDFC88: ConcatVar var_93C
  loc_BDFC8C: CStrVarTmp
  loc_BDFC8D: CVarStr var_94C
  loc_BDFC90: PopAdLdVar
  loc_BDFC91: FLdPr Me
  loc_BDFC94: VCallAd Control_ID_ItemNotaFlex
  loc_BDFC97: FStAdFunc var_960
  loc_BDFC9A: FLdPr var_960
  loc_BDFC9D: LateIdCall
  loc_BDFCA5: FFreeStr var_F0 = ""
  loc_BDFCAC: FFreeAd var_88 = "": var_BC = "": var_F4 = "": var_134 = "": var_188 = "": var_21C = "": var_224 = "": var_278 = "": var_30C = "": var_360 = "": var_474 = "": var_47C = "": var_4D0 = "": var_4E4 = "": var_568 = "": var_5BC = "": var_610 = "": var_618 = "": var_66C = "": var_700 = "": var_708 = "": var_75C = "": var_7F0 = "": var_7F8 = "": var_84C = ""
  loc_BDFCE3: FFreeVar var_6EC = "": var_718 = "": var_76C = "": var_77C = "": var_78C = "": var_7AC = "": var_6FC = "": var_7BC = "": var_7CC = "": var_7DC = "": var_808 = "": var_85C = "": var_86C = "": var_87C = "": var_89C = "": var_7EC = "": var_8AC = "": var_8BC = "": var_8CC = "": var_8DC = "": var_8FC = "": var_90C = "": var_91C = "": var_93C = "": var_94C = "": var_3F0 = "": var_410 = "": var_420 = "": var_430 = "": var_450 = "": var_460 = "": var_48C = "": var_4E0 = "": var_4F4 = "": var_504 = "": var_514 = "": var_524 = "": var_470 = "": var_534 = "": var_544 = "": var_554 = "": var_578 = "": var_5CC = "": var_564 = "": var_5DC = "": var_5EC = "": var_5FC = "": var_628 = "": var_67C = "": var_68C = "": var_69C = "": var_6BC = "": var_60C = "": var_6CC = "": var_6DC = "": var_98 = "": var_EC = "": var_104 = "": var_144 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_130 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_234 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_218 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_31C = "": var_370 = "": var_308 = "": var_380 = "": var_390 = "": var_3A0 = "": var_3B0 = "": var_3D0 = ""
  loc_BDFD90: FLdPr Me
  loc_BDFD93: VCallAd Control_ID_ItemNotaFlex
  loc_BDFD96: FStAdFunc var_88
  loc_BDFD99: FLdPr var_88
  loc_BDFD9C: LateIdLdVar var_98 DispID_10 0
  loc_BDFDA3: CI4Var
  loc_BDFDA5: LitI4 1
  loc_BDFDAA: AddI4
  loc_BDFDAB: CVarI4
  loc_BDFDAF: PopAdLdVar
  loc_BDFDB0: FLdPr Me
  loc_BDFDB3: VCallAd Control_ID_ItemNotaFlex
  loc_BDFDB6: FStAdFunc var_BC
  loc_BDFDB9: FLdPr var_BC
  loc_BDFDBC: LateIdSt
  loc_BDFDC1: FFreeAd var_88 = ""
  loc_BDFDC8: FFree1Var var_98 = ""
  loc_BDFDCB: LitVarI4
  loc_BDFDD3: PopAdLdVar
  loc_BDFDD4: FLdPr Me
  loc_BDFDD7: VCallAd Control_ID_ItemNotaFlex
  loc_BDFDDA: FStAdFunc var_88
  loc_BDFDDD: FLdPr var_88
  loc_BDFDE0: LateIdSt
  loc_BDFDE5: FFree1Ad var_88
  loc_BDFDE8: FLdPr Me
  loc_BDFDEB: VCallAd Control_ID_ItemNotaFlex
  loc_BDFDEE: FStAdFunc var_88
  loc_BDFDF1: FLdPr var_88
  loc_BDFDF4: LateIdCall
  loc_BDFDFC: FFree1Ad var_88
  loc_BDFDFF: Branch loc_BE0938
  loc_BDFE02: FLdPr Me
  loc_BDFE05: MemLdUI1 global_74
  loc_BDFE09: LitI2_Byte 2
  loc_BDFE0B: EqI2
  loc_BDFE0C: BranchF loc_BE0938
  loc_BDFE0F: FLdPr Me
  loc_BDFE12: VCallAd Control_ID_ItemNotaFlex
  loc_BDFE15: FStAdFunc var_88
  loc_BDFE18: FLdPr var_88
  loc_BDFE1B: LateIdLdVar var_98 DispID_10 0
  loc_BDFE22: CI4Var
  loc_BDFE24: CVarI4
  loc_BDFE28: PopAdLdVar
  loc_BDFE29: LitVarI4
  loc_BDFE31: PopAdLdVar
  loc_BDFE32: FLdPr Me
  loc_BDFE35: VCallAd Control_ID_ItemNotaFlex
  loc_BDFE38: FStAdFunc var_BC
  loc_BDFE3B: FLdPr var_BC
  loc_BDFE3E: LateIdCallLdVar
  loc_BDFE48: CStrVarTmp
  loc_BDFE49: FStStrNoPop var_F0
  loc_BDFE4C: LitStr vbNullString
  loc_BDFE4F: NeStr
  loc_BDFE51: FFree1Str var_F0
  loc_BDFE54: FFreeAd var_88 = ""
  loc_BDFE5B: FFreeVar var_98 = ""
  loc_BDFE62: BranchF loc_BDFFB2
  loc_BDFE65: FLdPr Me
  loc_BDFE68: VCallAd Control_ID_ItemNotaFlex
  loc_BDFE6B: FStAdFunc var_88
  loc_BDFE6E: FLdPr var_88
  loc_BDFE71: LateIdLdVar var_98 DispID_10 0
  loc_BDFE78: CI4Var
  loc_BDFE7A: CVarI4
  loc_BDFE7E: PopAdLdVar
  loc_BDFE7F: LitVarI4
  loc_BDFE87: PopAdLdVar
  loc_BDFE88: FLdPr Me
  loc_BDFE8B: VCallAd Control_ID_ItemNotaFlex
  loc_BDFE8E: FStAdFunc var_BC
  loc_BDFE91: FLdPr var_BC
  loc_BDFE94: LateIdCallLdVar
  loc_BDFE9E: PopAd
  loc_BDFEA0: FLdPr Me
  loc_BDFEA3: VCallAd Control_ID_FechNopeMsk
  loc_BDFEA6: FStAdFunc var_F4
  loc_BDFEA9: FLdPr var_F4
  loc_BDFEAC: LateIdLdVar var_104 DispID_15 0
  loc_BDFEB3: PopAd
  loc_BDFEB5: FLdRfVar var_110
  loc_BDFEB8: LitI2_Byte 0
  loc_BDFEBA: PopTmpLdAd2 var_10A
  loc_BDFEBD: LitStr "0"
  loc_BDFEC0: FLdRfVar var_104
  loc_BDFEC3: CStrVarTmp
  loc_BDFEC4: FStStrNoPop var_108
  loc_BDFEC7: FLdPr Me
  loc_BDFECA: MemLdRfVar from_stack_1.global_100
  loc_BDFECD: NewIfNullRf
  loc_BDFED1: FLdPr Me
  loc_BDFED4: MemLdRfVar from_stack_1.global_104
  loc_BDFED7: NewIfNullRf
  loc_BDFEDB: FLdPr Me
  loc_BDFEDE: MemLdRfVar from_stack_1.global_96
  loc_BDFEE1: NewIfNullRf
  loc_BDFEE5: FLdPr Me
  loc_BDFEE8: MemLdRfVar from_stack_1.global_92
  loc_BDFEEB: NewIfNullRf
  loc_BDFEEF: FLdRfVar var_EC
  loc_BDFEF2: CStrVarTmp
  loc_BDFEF3: FStStrNoPop var_F0
  loc_BDFEF6: FLdPr Me
  loc_BDFEF9: MemLdRfVar from_stack_1.global_60
  loc_BDFEFC: NewIfNullPr clsimputacion
  loc_BDFEFF: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BDFF04: ILdRf var_110
  loc_BDFF07: FLdPr Me
  loc_BDFF0A: MemStStrCopy
  loc_BDFF0E: FFreeStr var_F0 = "": var_108 = ""
  loc_BDFF17: FFreeAd var_88 = "": var_BC = ""
  loc_BDFF20: FFreeVar var_98 = "": var_EC = ""
  loc_BDFF29: FLdPr Me
  loc_BDFF2C: MemLdStr global_76
  loc_BDFF2F: LitStr vbNullString
  loc_BDFF32: NeStr
  loc_BDFF34: BranchF loc_BDFFB2
  loc_BDFF37: LitStr "Municipalidad de Guaymallén"
  loc_BDFF3A: LitStr "Municipalidad de Malargüe"
  loc_BDFF3D: EqStr
  loc_BDFF3F: BranchF loc_BDFFA8
  loc_BDFF42: FLdPr Me
  loc_BDFF45: MemLdUI1 global_74
  loc_BDFF49: CI2UI1
  loc_BDFF4B: LitI2_Byte 1
  loc_BDFF4D: EqI2
  loc_BDFF4E: BranchF loc_BDFF7C
  loc_BDFF51: LitI4 0
  loc_BDFF56: FLdPr Me
  loc_BDFF59: MemLdStr global_76
  loc_BDFF5C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDFF61: FLdPr Me
  loc_BDFF64: VCallAd Control_ID_ItemNotaFlex
  loc_BDFF67: FStAdFunc var_88
  loc_BDFF6A: FLdPr var_88
  loc_BDFF6D: LateIdCall
  loc_BDFF75: FFree1Ad var_88
  loc_BDFF78: ExitProcHresult
  loc_BDFF79: Branch loc_BDFFA5
  loc_BDFF7C: FLdPr Me
  loc_BDFF7F: MemLdUI1 global_74
  loc_BDFF83: CI2UI1
  loc_BDFF85: LitI2_Byte 2
  loc_BDFF87: EqI2
  loc_BDFF88: BranchF loc_BDFFA5
  loc_BDFF8B: LitI4 0
  loc_BDFF90: FLdPr Me
  loc_BDFF93: MemLdStr global_76
  loc_BDFF96: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDFF9B: LitStr vbNullString
  loc_BDFF9E: FLdPr Me
  loc_BDFFA1: MemStStrCopy
  loc_BDFFA5: Branch loc_BDFFB2
  loc_BDFFA8: LitStr vbNullString
  loc_BDFFAB: FLdPr Me
  loc_BDFFAE: MemStStrCopy
  loc_BDFFB2: LitI2_Byte 0
  loc_BDFFB4: BranchF loc_BE013C
  loc_BDFFB7: LitI2_Byte 0
  loc_BDFFB9: BranchF loc_BE0069
  loc_BDFFBC: FLdRfVar var_F0
  loc_BDFFBF: FLdPr Me
  loc_BDFFC2: MemLdRfVar from_stack_1.global_104
  loc_BDFFC5: NewIfNullPr tblfinalidad
  loc_BDFFC8: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_BDFFCD: FLdRfVar var_108
  loc_BDFFD0: FLdPr Me
  loc_BDFFD3: MemLdRfVar from_stack_1.global_92
  loc_BDFFD6: NewIfNullPr tblpartida
  loc_BDFFD9: from_stack_1v = tblpartida.CredPartGestionGet()
  loc_BDFFDE: FLdRfVar var_110
  loc_BDFFE1: FLdPr Me
  loc_BDFFE4: MemLdRfVar from_stack_1.global_96
  loc_BDFFE7: NewIfNullPr tblorganigrama
  loc_BDFFEA: from_stack_1v = tblorganigrama.CredOrgaGestionGet()
  loc_BDFFEF: FLdPr Me
  loc_BDFFF2: MemLdRfVar from_stack_1.global_124
  loc_BDFFF5: NewIfNullRf
  loc_BDFFF9: ILdRf var_110
  loc_BDFFFC: ILdRf var_108
  loc_BDFFFF: ILdRf var_F0
  loc_BE0002: ImpAdLdI2 MemVar_C3D064
  loc_BE0005: ImpAdCallI2 Proc_259_13_A88BCC(, , , , )
  loc_BE000A: NotI4
  loc_BE000B: FFreeStr var_F0 = "": var_108 = ""
  loc_BE0014: BranchF loc_BE0066
  loc_BE0017: LitStr "La Finalidad-Partida-Organigrama NO EXISTE. Verifique..."
  loc_BE001A: FLdPr Me
  loc_BE001D: MemStStrCopy
  loc_BE0021: LitI4 0
  loc_BE0026: FLdPr Me
  loc_BE0029: MemLdStr global_76
  loc_BE002C: LitStr " - Fila: "
  loc_BE002F: ConcatStr
  loc_BE0030: FStStrNoPop var_F0
  loc_BE0033: FLdPr Me
  loc_BE0036: VCallAd Control_ID_ItemNotaFlex
  loc_BE0039: FStAdFunc var_88
  loc_BE003C: FLdPr var_88
  loc_BE003F: LateIdLdVar var_98 DispID_10 0
  loc_BE0046: CI4Var
  loc_BE0048: CStrI4
  loc_BE004A: FStStrNoPop var_108
  loc_BE004D: ConcatStr
  loc_BE004E: FStStrNoPop var_110
  loc_BE0051: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE0056: FFreeStr var_F0 = "": var_108 = ""
  loc_BE005F: FFree1Ad var_88
  loc_BE0062: FFree1Var var_98 = ""
  loc_BE0065: ExitProcHresult
  loc_BE0066: Branch loc_BE013C
  loc_BE0069: FLdRfVar var_F0
  loc_BE006C: FLdPr Me
  loc_BE006F: MemLdRfVar from_stack_1.global_92
  loc_BE0072: NewIfNullPr tblpartida
  loc_BE0075: from_stack_1v = tblpartida.CodiPartGet()
  loc_BE007A: ILdRf var_F0
  loc_BE007D: LitStr vbNullString
  loc_BE0080: NeStr
  loc_BE0082: FFree1Str var_F0
  loc_BE0085: BranchF loc_BE013C
  loc_BE0088: FLdRfVar var_F0
  loc_BE008B: FLdPr Me
  loc_BE008E: MemLdRfVar from_stack_1.global_104
  loc_BE0091: NewIfNullPr tblfinalidad
  loc_BE0094: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_BE0099: FLdRfVar var_108
  loc_BE009C: FLdPr Me
  loc_BE009F: MemLdRfVar from_stack_1.global_92
  loc_BE00A2: NewIfNullPr tblpartida
  loc_BE00A5: from_stack_1v = tblpartida.CredPartGestionGet()
  loc_BE00AA: FLdRfVar var_110
  loc_BE00AD: FLdPr Me
  loc_BE00B0: MemLdRfVar from_stack_1.global_96
  loc_BE00B3: NewIfNullPr tblorganigrama
  loc_BE00B6: from_stack_1v = tblorganigrama.CredOrgaGestionGet()
  loc_BE00BB: FLdPr Me
  loc_BE00BE: MemLdRfVar from_stack_1.global_124
  loc_BE00C1: NewIfNullRf
  loc_BE00C5: ILdRf var_110
  loc_BE00C8: ILdRf var_108
  loc_BE00CB: ILdRf var_F0
  loc_BE00CE: ImpAdLdI2 MemVar_C3D064
  loc_BE00D1: ImpAdCallI2 Proc_259_13_A88BCC(, , , , )
  loc_BE00D6: NotI4
  loc_BE00D7: FFreeStr var_F0 = "": var_108 = ""
  loc_BE00E0: BranchF loc_BE013C
  loc_BE00E3: LitStr "Advertencia: La Finalidad-Partida-Organigrama NO EXISTE. Verifique..."
  loc_BE00E6: FLdPr Me
  loc_BE00E9: MemStStrCopy
  loc_BE00ED: LitI4 0
  loc_BE00F2: FLdPr Me
  loc_BE00F5: MemLdStr global_76
  loc_BE00F8: LitStr " - Fila: "
  loc_BE00FB: ConcatStr
  loc_BE00FC: FStStrNoPop var_F0
  loc_BE00FF: FLdPr Me
  loc_BE0102: VCallAd Control_ID_ItemNotaFlex
  loc_BE0105: FStAdFunc var_88
  loc_BE0108: FLdPr var_88
  loc_BE010B: LateIdLdVar var_98 DispID_10 0
  loc_BE0112: CI4Var
  loc_BE0114: CStrI4
  loc_BE0116: FStStrNoPop var_108
  loc_BE0119: ConcatStr
  loc_BE011A: FStStrNoPop var_110
  loc_BE011D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE0122: FFreeStr var_F0 = "": var_108 = ""
  loc_BE012B: FFree1Ad var_88
  loc_BE012E: FFree1Var var_98 = ""
  loc_BE0131: LitStr vbNullString
  loc_BE0134: FLdPr Me
  loc_BE0137: MemStStrCopy
  loc_BE013B: ExitProcHresult
  loc_BE013C: FLdPr Me
  loc_BE013F: VCallAd Control_ID_ItemNotaFlex
  loc_BE0142: FStAdFunc var_88
  loc_BE0145: FLdPr var_88
  loc_BE0148: LateIdLdVar var_98 DispID_10 0
  loc_BE014F: CI4Var
  loc_BE0151: CVarI4
  loc_BE0155: PopAdLdVar
  loc_BE0156: LitVarI4
  loc_BE015E: PopAdLdVar
  loc_BE015F: FLdPr Me
  loc_BE0162: VCallAd Control_ID_ItemNotaFlex
  loc_BE0165: FStAdFunc var_BC
  loc_BE0168: FLdPr var_BC
  loc_BE016B: LateIdCallLdVar
  loc_BE0175: PopAd
  loc_BE0177: FLdRfVar var_108
  loc_BE017A: FLdPr Me
  loc_BE017D: MemLdUI1 global_74
  loc_BE0181: FLdPr Me
  loc_BE0184: MemLdRfVar from_stack_1.global_92
  loc_BE0187: NewIfNullRf
  loc_BE018B: FLdRfVar var_EC
  loc_BE018E: CStrVarTmp
  loc_BE018F: FStStrNoPop var_F0
  loc_BE0192: FLdPr Me
  loc_BE0195: MemLdRfVar from_stack_1.global_60
  loc_BE0198: NewIfNullPr clsimputacion
  loc_BE019B: from_stack_4v = clsimputacion.ValidaImunImpuPreventiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BE01A0: ILdRf var_108
  loc_BE01A3: FLdPr Me
  loc_BE01A6: MemStStrCopy
  loc_BE01AA: FFreeStr var_F0 = ""
  loc_BE01B1: FFreeAd var_88 = ""
  loc_BE01B8: FFreeVar var_98 = ""
  loc_BE01BF: FLdPr Me
  loc_BE01C2: VCallAd Control_ID_ItemNotaFlex
  loc_BE01C5: FStAdFunc var_88
  loc_BE01C8: FLdPr var_88
  loc_BE01CB: LateIdLdVar var_98 DispID_10 0
  loc_BE01D2: CI4Var
  loc_BE01D4: CVarI4
  loc_BE01D8: PopAdLdVar
  loc_BE01D9: LitVarI4
  loc_BE01E1: PopAdLdVar
  loc_BE01E2: FLdPr Me
  loc_BE01E5: VCallAd Control_ID_ItemNotaFlex
  loc_BE01E8: FStAdFunc var_BC
  loc_BE01EB: FLdPr var_BC
  loc_BE01EE: LateIdCallLdVar
  loc_BE01F8: CStrVarTmp
  loc_BE01F9: FStStrNoPop var_F0
  loc_BE01FC: LitStr vbNullString
  loc_BE01FF: NeStr
  loc_BE0201: FFree1Str var_F0
  loc_BE0204: FFreeAd var_88 = ""
  loc_BE020B: FFreeVar var_98 = ""
  loc_BE0212: BranchF loc_BE0273
  loc_BE0215: FLdPr Me
  loc_BE0218: MemLdStr global_76
  loc_BE021B: LitStr vbNullString
  loc_BE021E: NeStr
  loc_BE0220: BranchF loc_BE0273
  loc_BE0223: LitI4 0
  loc_BE0228: FLdPr Me
  loc_BE022B: MemLdStr global_76
  loc_BE022E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE0233: LitI4 &HB
  loc_BE0238: FLdPr Me
  loc_BE023B: MemLdStr global_76
  loc_BE023E: ImpAdCallI2 Left$(, )
  loc_BE0243: FStStrNoPop var_F0
  loc_BE0246: LitStr "Advertencia"
  loc_BE0249: EqStr
  loc_BE024B: FFree1Str var_F0
  loc_BE024E: BranchF loc_BE025B
  loc_BE0251: LitStr vbNullString
  loc_BE0254: FLdPr Me
  loc_BE0257: MemStStrCopy
  loc_BE025B: FLdPr Me
  loc_BE025E: VCallAd Control_ID_ItemNotaFlex
  loc_BE0261: FStAdFunc var_88
  loc_BE0264: FLdPr var_88
  loc_BE0267: LateIdCall
  loc_BE026F: FFree1Ad var_88
  loc_BE0272: ExitProcHresult
  loc_BE0273: FLdRfVar var_10A
  loc_BE0276: FLdPr Me
  loc_BE0279: VCallAd Control_ID_ChkCodiInsu
  loc_BE027C: FStAdFunc var_F4
  loc_BE027F: FLdPr var_F4
  loc_BE0282:  = Me.Value
  loc_BE0287: FLdPr Me
  loc_BE028A: VCallAd Control_ID_ItemNotaFlex
  loc_BE028D: FStAdFunc var_134
  loc_BE0290: FLdPr var_134
  loc_BE0293: LateIdLdVar var_144 DispID_4 0
  loc_BE029A: CI4Var
  loc_BE029C: LitI4 1
  loc_BE02A1: SubI4
  loc_BE02A2: CVarI4
  loc_BE02A6: PopAdLdVar
  loc_BE02A7: LitVarI4
  loc_BE02AF: PopAdLdVar
  loc_BE02B0: FLdPr Me
  loc_BE02B3: VCallAd Control_ID_ItemNotaFlex
  loc_BE02B6: FStAdFunc var_188
  loc_BE02B9: FLdPr var_188
  loc_BE02BC: LateIdCallLdVar
  loc_BE02C6: PopAd
  loc_BE02C8: FLdRfVar var_21E
  loc_BE02CB: FLdPr Me
  loc_BE02CE: VCallAd Control_ID_ChkCodiInsu
  loc_BE02D1: FStAdFunc var_21C
  loc_BE02D4: FLdPr var_21C
  loc_BE02D7:  = Me.Value
  loc_BE02DC: FLdPr Me
  loc_BE02DF: VCallAd Control_ID_ItemNotaFlex
  loc_BE02E2: FStAdFunc var_224
  loc_BE02E5: FLdPr var_224
  loc_BE02E8: LateIdLdVar var_234 DispID_4 0
  loc_BE02EF: CI4Var
  loc_BE02F1: LitI4 1
  loc_BE02F6: SubI4
  loc_BE02F7: CVarI4
  loc_BE02FB: PopAdLdVar
  loc_BE02FC: LitVarI4
  loc_BE0304: PopAdLdVar
  loc_BE0305: FLdPr Me
  loc_BE0308: VCallAd Control_ID_ItemNotaFlex
  loc_BE030B: FStAdFunc var_278
  loc_BE030E: FLdPr var_278
  loc_BE0311: LateIdCallLdVar
  loc_BE031B: PopAd
  loc_BE031D: FLdRfVar var_476
  loc_BE0320: FLdPr Me
  loc_BE0323: VCallAd Control_ID_ChkCodiOrga
  loc_BE0326: FStAdFunc var_474
  loc_BE0329: FLdPr var_474
  loc_BE032C:  = Me.Value
  loc_BE0331: FLdPr Me
  loc_BE0334: VCallAd Control_ID_ItemNotaFlex
  loc_BE0337: FStAdFunc var_47C
  loc_BE033A: FLdPr var_47C
  loc_BE033D: LateIdLdVar var_48C DispID_4 0
  loc_BE0344: CI4Var
  loc_BE0346: LitI4 1
  loc_BE034B: SubI4
  loc_BE034C: CVarI4
  loc_BE0350: PopAdLdVar
  loc_BE0351: LitVarI4
  loc_BE0359: PopAdLdVar
  loc_BE035A: FLdPr Me
  loc_BE035D: VCallAd Control_ID_ItemNotaFlex
  loc_BE0360: FStAdFunc var_4D0
  loc_BE0363: FLdPr var_4D0
  loc_BE0366: LateIdCallLdVar
  loc_BE0370: PopAd
  loc_BE0372: FLdPr Me
  loc_BE0375: VCallAd Control_ID_CodiOrgaMsk
  loc_BE0378: FStAdFunc var_4E4
  loc_BE037B: FLdPr var_4E4
  loc_BE037E: LateIdLdVar var_4F4 DispID_22 0
  loc_BE0385: PopAd
  loc_BE0387: FLdRfVar var_612
  loc_BE038A: FLdPr Me
  loc_BE038D: VCallAd Control_ID_ChkCodiFifu
  loc_BE0390: FStAdFunc var_610
  loc_BE0393: FLdPr var_610
  loc_BE0396:  = Me.Value
  loc_BE039B: FLdPr Me
  loc_BE039E: VCallAd Control_ID_ItemNotaFlex
  loc_BE03A1: FStAdFunc var_618
  loc_BE03A4: FLdPr var_618
  loc_BE03A7: LateIdLdVar var_628 DispID_4 0
  loc_BE03AE: CI4Var
  loc_BE03B0: LitI4 1
  loc_BE03B5: SubI4
  loc_BE03B6: CVarI4
  loc_BE03BA: PopAdLdVar
  loc_BE03BB: LitVarI4
  loc_BE03C3: PopAdLdVar
  loc_BE03C4: FLdPr Me
  loc_BE03C7: VCallAd Control_ID_ItemNotaFlex
  loc_BE03CA: FStAdFunc var_66C
  loc_BE03CD: FLdPr var_66C
  loc_BE03D0: LateIdCallLdVar
  loc_BE03DA: PopAd
  loc_BE03DC: FLdRfVar var_702
  loc_BE03DF: FLdPr Me
  loc_BE03E2: VCallAd Control_ID_ChkCodiPart
  loc_BE03E5: FStAdFunc var_700
  loc_BE03E8: FLdPr var_700
  loc_BE03EB:  = Me.Value
  loc_BE03F0: FLdPr Me
  loc_BE03F3: VCallAd Control_ID_ItemNotaFlex
  loc_BE03F6: FStAdFunc var_708
  loc_BE03F9: FLdPr var_708
  loc_BE03FC: LateIdLdVar var_718 DispID_4 0
  loc_BE0403: CI4Var
  loc_BE0405: LitI4 1
  loc_BE040A: SubI4
  loc_BE040B: CVarI4
  loc_BE040F: PopAdLdVar
  loc_BE0410: LitVarI4
  loc_BE0418: PopAdLdVar
  loc_BE0419: FLdPr Me
  loc_BE041C: VCallAd Control_ID_ItemNotaFlex
  loc_BE041F: FStAdFunc var_75C
  loc_BE0422: FLdPr var_75C
  loc_BE0425: LateIdCallLdVar
  loc_BE042F: PopAd
  loc_BE0431: FLdRfVar var_7F2
  loc_BE0434: FLdPr Me
  loc_BE0437: VCallAd Control_ID_ChkCodiInsu
  loc_BE043A: FStAdFunc var_7F0
  loc_BE043D: FLdPr var_7F0
  loc_BE0440:  = Me.Value
  loc_BE0445: FLdPr Me
  loc_BE0448: VCallAd Control_ID_ItemNotaFlex
  loc_BE044B: FStAdFunc var_7F8
  loc_BE044E: FLdPr var_7F8
  loc_BE0451: LateIdLdVar var_808 DispID_4 0
  loc_BE0458: CI4Var
  loc_BE045A: LitI4 1
  loc_BE045F: SubI4
  loc_BE0460: CVarI4
  loc_BE0464: PopAdLdVar
  loc_BE0465: LitVarI4
  loc_BE046D: PopAdLdVar
  loc_BE046E: FLdPr Me
  loc_BE0471: VCallAd Control_ID_ItemNotaFlex
  loc_BE0474: FStAdFunc var_84C
  loc_BE0477: FLdPr var_84C
  loc_BE047A: LateIdCallLdVar
  loc_BE0484: PopAd
  loc_BE0486: FLdPr Me
  loc_BE0489: VCallAd Control_ID_ItemNotaFlex
  loc_BE048C: FStAdFunc var_88
  loc_BE048F: FLdPr var_88
  loc_BE0492: LateIdLdVar var_98 DispID_4 0
  loc_BE0499: CI4Var
  loc_BE049B: LitI4 1
  loc_BE04A0: SubI4
  loc_BE04A1: CVarI4
  loc_BE04A5: PopAdLdVar
  loc_BE04A6: LitVarI4
  loc_BE04AE: PopAdLdVar
  loc_BE04AF: FLdPr Me
  loc_BE04B2: VCallAd Control_ID_ItemNotaFlex
  loc_BE04B5: FStAdFunc var_BC
  loc_BE04B8: FLdPr var_BC
  loc_BE04BB: LateIdCallLdVar
  loc_BE04C5: CStrVarTmp
  loc_BE04C6: FStStrNoPop var_F0
  loc_BE04C9: CR8Str
  loc_BE04CB: LitI2_Byte 1
  loc_BE04CD: CR8I2
  loc_BE04CE: AddR8
  loc_BE04CF: CVarR8
  loc_BE04D3: LitI4 9
  loc_BE04D8: FLdRfVar var_104
  loc_BE04DB: ImpAdCallFPR4  = Chr()
  loc_BE04E0: FLdRfVar var_104
  loc_BE04E3: ConcatVar var_130
  loc_BE04E7: LitVarStr var_1C8, vbNullString
  loc_BE04EC: FStVarCopyObj var_1D8
  loc_BE04EF: FLdRfVar var_1D8
  loc_BE04F2: FLdRfVar var_198
  loc_BE04F5: CStrVarTmp
  loc_BE04F6: CVarStr var_1B8
  loc_BE04F9: FLdI2 var_10A
  loc_BE04FC: CI4UI1
  loc_BE04FD: LitI4 1
  loc_BE0502: EqI4
  loc_BE0503: CVarBoolI2 var_1A8
  loc_BE0507: FLdRfVar var_1E8
  loc_BE050A: ImpAdCallFPR4  = IIf(, , )
  loc_BE050F: FLdRfVar var_1E8
  loc_BE0512: ConcatVar var_1F8
  loc_BE0516: LitI4 9
  loc_BE051B: FLdRfVar var_208
  loc_BE051E: ImpAdCallFPR4  = Chr()
  loc_BE0523: FLdRfVar var_208
  loc_BE0526: ConcatVar var_218
  loc_BE052A: LitVarStr var_2B8, vbNullString
  loc_BE052F: FStVarCopyObj var_2C8
  loc_BE0532: FLdRfVar var_2C8
  loc_BE0535: FLdRfVar var_288
  loc_BE0538: CStrVarTmp
  loc_BE0539: CVarStr var_2A8
  loc_BE053C: FLdI2 var_21E
  loc_BE053F: CI4UI1
  loc_BE0540: LitI4 1
  loc_BE0545: EqI4
  loc_BE0546: CVarBoolI2 var_298
  loc_BE054A: FLdRfVar var_2D8
  loc_BE054D: ImpAdCallFPR4  = IIf(, , )
  loc_BE0552: FLdRfVar var_2D8
  loc_BE0555: ConcatVar var_2E8
  loc_BE0559: LitI4 9
  loc_BE055E: FLdRfVar var_2F8
  loc_BE0561: ImpAdCallFPR4  = Chr()
  loc_BE0566: FLdRfVar var_2F8
  loc_BE0569: ConcatVar var_308
  loc_BE056D: FLdPr Me
  loc_BE0570: VCallAd Control_ID_ItemNotaFlex
  loc_BE0573: FStAdFunc var_30C
  loc_BE0576: FLdPr var_30C
  loc_BE0579: LateIdLdVar var_31C DispID_4 0
  loc_BE0580: CI4Var
  loc_BE0582: LitI4 1
  loc_BE0587: SubI4
  loc_BE0588: CVarI4
  loc_BE058C: PopAdLdVar
  loc_BE058D: LitVarI4
  loc_BE0595: PopAdLdVar
  loc_BE0596: FLdPr Me
  loc_BE0599: VCallAd Control_ID_ItemNotaFlex
  loc_BE059C: FStAdFunc var_360
  loc_BE059F: FLdPr var_360
  loc_BE05A2: LateIdCallLdVar
  loc_BE05AC: CStrVarTmp
  loc_BE05AD: CVarStr var_380
  loc_BE05B0: ConcatVar var_390
  loc_BE05B4: LitI4 9
  loc_BE05B9: FLdRfVar var_3A0
  loc_BE05BC: ImpAdCallFPR4  = Chr()
  loc_BE05C1: FLdRfVar var_3A0
  loc_BE05C4: ConcatVar var_3B0
  loc_BE05C8: LitVarStr var_3C0, vbNullString
  loc_BE05CD: ConcatVar var_3D0
  loc_BE05D1: LitI4 9
  loc_BE05D6: FLdRfVar var_3E0
  loc_BE05D9: ImpAdCallFPR4  = Chr()
  loc_BE05DE: FLdRfVar var_3E0
  loc_BE05E1: ConcatVar var_3F0
  loc_BE05E5: LitVarStr var_400, vbNullString
  loc_BE05EA: ConcatVar var_410
  loc_BE05EE: LitI4 9
  loc_BE05F3: FLdRfVar var_420
  loc_BE05F6: ImpAdCallFPR4  = Chr()
  loc_BE05FB: FLdRfVar var_420
  loc_BE05FE: ConcatVar var_430
  loc_BE0602: LitVarStr var_440, vbNullString
  loc_BE0607: ConcatVar var_450
  loc_BE060B: LitI4 9
  loc_BE0610: FLdRfVar var_460
  loc_BE0613: ImpAdCallFPR4  = Chr()
  loc_BE0618: FLdRfVar var_460
  loc_BE061B: ConcatVar var_470
  loc_BE061F: LitI4 0
  loc_BE0624: LitI4 -1
  loc_BE0629: LitI4 1
  loc_BE062E: LitStr vbNullString
  loc_BE0631: LitStr "."
  loc_BE0634: FLdRfVar var_4F4
  loc_BE0637: CStrVarTmp
  loc_BE0638: FStStrNoPop var_108
  loc_BE063B: ImpAdCallI2 Replace(, , , , , )
  loc_BE0640: CVarStr var_524
  loc_BE0643: FLdRfVar var_4E0
  loc_BE0646: CStrVarTmp
  loc_BE0647: CVarStr var_514
  loc_BE064A: FLdI2 var_476
  loc_BE064D: CI4UI1
  loc_BE064E: LitI4 1
  loc_BE0653: EqI4
  loc_BE0654: CVarBoolI2 var_504
  loc_BE0658: FLdRfVar var_534
  loc_BE065B: ImpAdCallFPR4  = IIf(, , )
  loc_BE0660: FLdRfVar var_534
  loc_BE0663: ConcatVar var_544
  loc_BE0667: LitI4 9
  loc_BE066C: FLdRfVar var_554
  loc_BE066F: ImpAdCallFPR4  = Chr()
  loc_BE0674: FLdRfVar var_554
  loc_BE0677: ConcatVar var_564
  loc_BE067B: FLdPr Me
  loc_BE067E: VCallAd Control_ID_ItemNotaFlex
  loc_BE0681: FStAdFunc var_568
  loc_BE0684: FLdPr var_568
  loc_BE0687: LateIdLdVar var_578 DispID_4 0
  loc_BE068E: CI4Var
  loc_BE0690: LitI4 1
  loc_BE0695: SubI4
  loc_BE0696: CVarI4
  loc_BE069A: PopAdLdVar
  loc_BE069B: LitVarI4
  loc_BE06A3: PopAdLdVar
  loc_BE06A4: FLdPr Me
  loc_BE06A7: VCallAd Control_ID_ItemNotaFlex
  loc_BE06AA: FStAdFunc var_5BC
  loc_BE06AD: FLdPr var_5BC
  loc_BE06B0: LateIdCallLdVar
  loc_BE06BA: CStrVarTmp
  loc_BE06BB: CVarStr var_5DC
  loc_BE06BE: ConcatVar var_5EC
  loc_BE06C2: LitI4 9
  loc_BE06C7: FLdRfVar var_5FC
  loc_BE06CA: ImpAdCallFPR4  = Chr()
  loc_BE06CF: FLdRfVar var_5FC
  loc_BE06D2: ConcatVar var_60C
  loc_BE06D6: LitVarStr var_6AC, "019000"
  loc_BE06DB: FStVarCopyObj var_6BC
  loc_BE06DE: FLdRfVar var_6BC
  loc_BE06E1: FLdRfVar var_67C
  loc_BE06E4: CStrVarTmp
  loc_BE06E5: CVarStr var_69C
  loc_BE06E8: FLdI2 var_612
  loc_BE06EB: CI4UI1
  loc_BE06EC: LitI4 1
  loc_BE06F1: EqI4
  loc_BE06F2: CVarBoolI2 var_68C
  loc_BE06F6: FLdRfVar var_6CC
  loc_BE06F9: ImpAdCallFPR4  = IIf(, , )
  loc_BE06FE: FLdRfVar var_6CC
  loc_BE0701: ConcatVar var_6DC
  loc_BE0705: LitI4 9
  loc_BE070A: FLdRfVar var_6EC
  loc_BE070D: ImpAdCallFPR4  = Chr()
  loc_BE0712: FLdRfVar var_6EC
  loc_BE0715: ConcatVar var_6FC
  loc_BE0719: LitVarStr var_79C, vbNullString
  loc_BE071E: FStVarCopyObj var_7AC
  loc_BE0721: FLdRfVar var_7AC
  loc_BE0724: FLdRfVar var_76C
  loc_BE0727: CStrVarTmp
  loc_BE0728: CVarStr var_78C
  loc_BE072B: FLdI2 var_702
  loc_BE072E: CI4UI1
  loc_BE072F: LitI4 1
  loc_BE0734: EqI4
  loc_BE0735: CVarBoolI2 var_77C
  loc_BE0739: FLdRfVar var_7BC
  loc_BE073C: ImpAdCallFPR4  = IIf(, , )
  loc_BE0741: FLdRfVar var_7BC
  loc_BE0744: ConcatVar var_7CC
  loc_BE0748: LitI4 9
  loc_BE074D: FLdRfVar var_7DC
  loc_BE0750: ImpAdCallFPR4  = Chr()
  loc_BE0755: FLdRfVar var_7DC
  loc_BE0758: ConcatVar var_7EC
  loc_BE075C: LitVarStr var_88C, vbNullString
  loc_BE0761: FStVarCopyObj var_89C
  loc_BE0764: FLdRfVar var_89C
  loc_BE0767: FLdRfVar var_85C
  loc_BE076A: CStrVarTmp
  loc_BE076B: CVarStr var_87C
  loc_BE076E: FLdI2 var_7F2
  loc_BE0771: CI4UI1
  loc_BE0772: LitI4 1
  loc_BE0777: EqI4
  loc_BE0778: CVarBoolI2 var_86C
  loc_BE077C: FLdRfVar var_8AC
  loc_BE077F: ImpAdCallFPR4  = IIf(, , )
  loc_BE0784: FLdRfVar var_8AC
  loc_BE0787: ConcatVar var_8BC
  loc_BE078B: LitI4 9
  loc_BE0790: FLdRfVar var_8CC
  loc_BE0793: ImpAdCallFPR4  = Chr()
  loc_BE0798: FLdRfVar var_8CC
  loc_BE079B: ConcatVar var_8DC
  loc_BE079F: LitVarStr var_8EC, vbNullString
  loc_BE07A4: ConcatVar var_8FC
  loc_BE07A8: LitI4 9
  loc_BE07AD: FLdRfVar var_90C
  loc_BE07B0: ImpAdCallFPR4  = Chr()
  loc_BE07B5: FLdRfVar var_90C
  loc_BE07B8: ConcatVar var_91C
  loc_BE07BC: LitVarStr var_92C, "No"
  loc_BE07C1: ConcatVar var_93C
  loc_BE07C5: CStrVarTmp
  loc_BE07C6: CVarStr var_94C
  loc_BE07C9: PopAdLdVar
  loc_BE07CA: FLdPr Me
  loc_BE07CD: VCallAd Control_ID_ItemNotaFlex
  loc_BE07D0: FStAdFunc var_960
  loc_BE07D3: FLdPr var_960
  loc_BE07D6: LateIdCall
  loc_BE07DE: FFreeStr var_F0 = ""
  loc_BE07E5: FFreeAd var_88 = "": var_BC = "": var_F4 = "": var_134 = "": var_188 = "": var_21C = "": var_224 = "": var_278 = "": var_30C = "": var_360 = "": var_474 = "": var_47C = "": var_4D0 = "": var_4E4 = "": var_568 = "": var_5BC = "": var_610 = "": var_618 = "": var_66C = "": var_700 = "": var_708 = "": var_75C = "": var_7F0 = "": var_7F8 = "": var_84C = ""
  loc_BE081C: FFreeVar var_6EC = "": var_718 = "": var_76C = "": var_77C = "": var_78C = "": var_7AC = "": var_6FC = "": var_7BC = "": var_7CC = "": var_7DC = "": var_808 = "": var_85C = "": var_86C = "": var_87C = "": var_89C = "": var_7EC = "": var_8AC = "": var_8BC = "": var_8CC = "": var_8DC = "": var_8FC = "": var_90C = "": var_91C = "": var_93C = "": var_94C = "": var_3F0 = "": var_410 = "": var_420 = "": var_430 = "": var_450 = "": var_460 = "": var_48C = "": var_4E0 = "": var_4F4 = "": var_504 = "": var_514 = "": var_524 = "": var_470 = "": var_534 = "": var_544 = "": var_554 = "": var_578 = "": var_5CC = "": var_564 = "": var_5DC = "": var_5EC = "": var_5FC = "": var_628 = "": var_67C = "": var_68C = "": var_69C = "": var_6BC = "": var_60C = "": var_6CC = "": var_6DC = "": var_98 = "": var_EC = "": var_104 = "": var_144 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_130 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_234 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_218 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_31C = "": var_370 = "": var_308 = "": var_380 = "": var_390 = "": var_3A0 = "": var_3B0 = "": var_3D0 = ""
  loc_BE08C9: FLdPr Me
  loc_BE08CC: VCallAd Control_ID_ItemNotaFlex
  loc_BE08CF: FStAdFunc var_88
  loc_BE08D2: FLdPr var_88
  loc_BE08D5: LateIdLdVar var_98 DispID_10 0
  loc_BE08DC: CI4Var
  loc_BE08DE: LitI4 1
  loc_BE08E3: AddI4
  loc_BE08E4: CVarI4
  loc_BE08E8: PopAdLdVar
  loc_BE08E9: FLdPr Me
  loc_BE08EC: VCallAd Control_ID_ItemNotaFlex
  loc_BE08EF: FStAdFunc var_BC
  loc_BE08F2: FLdPr var_BC
  loc_BE08F5: LateIdSt
  loc_BE08FA: FFreeAd var_88 = ""
  loc_BE0901: FFree1Var var_98 = ""
  loc_BE0904: LitVarI4
  loc_BE090C: PopAdLdVar
  loc_BE090D: FLdPr Me
  loc_BE0910: VCallAd Control_ID_ItemNotaFlex
  loc_BE0913: FStAdFunc var_88
  loc_BE0916: FLdPr var_88
  loc_BE0919: LateIdSt
  loc_BE091E: FFree1Ad var_88
  loc_BE0921: FLdPr Me
  loc_BE0924: VCallAd Control_ID_ItemNotaFlex
  loc_BE0927: FStAdFunc var_88
  loc_BE092A: FLdPr var_88
  loc_BE092D: LateIdCall
  loc_BE0935: FFree1Ad var_88
  loc_BE0938: ExitProcHresult
  loc_BE093B: CDateR8
End Function
