VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmPasaraResiduosPasivos
  Caption = "Pasar a Residuos Pasivos"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmPasaraResiduosPasivos.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 16080
  ClientHeight = 9135
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
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
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
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
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmPasaraResiduosPasivos.frx":08CA
    End
  End
  Begin VB.Frame Frame1
    Caption = " Pasar a Residuos Pasivos "
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
    Begin VB.Frame FrameCoes
      Left = 9840
      Top = 840
      Width = 5295
      Height = 2655
      TabIndex = 26
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13,5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin MSMask.MaskEdBox CoesPartMsk
        Left = 120
        Top = 480
        Width = 1575
        Height = 360
        TabIndex = 27
        OleObjectBlob = "frmPasaraResiduosPasivos.frx":0952
        DataField = "CoesPart"
      End
      Begin MSMask.MaskEdBox CoesOrgaMsk
        Left = 240
        Top = 960
        Width = 1455
        Height = 360
        TabIndex = 29
        OleObjectBlob = "frmPasaraResiduosPasivos.frx":09DA
        DataField = "CoesOrga"
      End
      Begin MSMask.MaskEdBox CoesFifuMsk
        Left = 120
        Top = 1920
        Width = 1575
        Height = 360
        TabIndex = 31
        OleObjectBlob = "frmPasaraResiduosPasivos.frx":0A62
        DataField = "CoesFifu"
      End
      Begin VB.Label DeesFifuLbl
        Left = 1800
        Top = 1920
        Width = 3375
        Height = 360
        TabIndex = 32
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label DeesOrgaLbl
        Left = 1800
        Top = 960
        Width = 3375
        Height = 360
        TabIndex = 30
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label DeesPartLbl
        Left = 1800
        Top = 480
        Width = 3375
        Height = 360
        TabIndex = 28
        BorderStyle = 1 'Fixed Single
      End
    End
    Begin VB.TextBox CucuPersMsk
      Left = 2400
      Top = 4440
      Width = 1815
      Height = 360
      TabIndex = 46
      MaxLength = 11
      DataField = "CucuPers"
    End
    Begin VB.TextBox ImpoImpuTxt
      Left = 9960
      Top = 3960
      Width = 2055
      Height = 360
      TabIndex = 42
      MaxLength = 16
      DataField = "ImpoImpu"
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox DetaImpuTxt
      Left = 2400
      Top = 5400
      Width = 10935
      Height = 360
      TabIndex = 53
      MaxLength = 100
      DataField = "DetaImpu"
    End
    Begin MSMask.MaskEdBox ExorImpuMsk
      Left = 2400
      Top = 457
      Width = 2175
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmPasaraResiduosPasivos.frx":0AEA
      DataField = "ExorImpu"
    End
    Begin MSMask.MaskEdBox CodiInsuMsk
      Left = 2400
      Top = 960
      Width = 1335
      Height = 360
      TabIndex = 12
      OleObjectBlob = "frmPasaraResiduosPasivos.frx":0B4A
      DataField = "CodiInsu"
    End
    Begin VB.ComboBox TifaDeveCbo
      Left = 2400
      Top = 4920
      Width = 975
      Height = 360
      TabIndex = 49
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
    Begin VB.TextBox SufaDeveTxt
      Left = 3480
      Top = 4920
      Width = 855
      Height = 360
      TabIndex = 50
      MaxLength = 4
      DataField = "SufaDeve"
    End
    Begin VB.TextBox NufaDeveTxt
      Left = 4440
      Top = 4920
      Width = 1575
      Height = 360
      TabIndex = 51
      MaxLength = 8
      DataField = "NufaDeve"
    End
    Begin VB.TextBox ExpeImpuTxt
      Left = 7080
      Top = 457
      Width = 2175
      Height = 360
      TabIndex = 10
      MaxLength = 15
      DataField = "ExpeImpu"
    End
    Begin VB.TextBox CantImpuTxt
      Left = 2400
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 38
      MaxLength = 14
      DataField = "CantImpu"
    End
    Begin VB.TextBox ImunImpuTxt
      Left = 6360
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 40
      MaxLength = 16
      DataField = "ImunImpu"
      DataFormat = 80
      DataFormat = 38
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 2400
      Top = 2880
      Width = 1575
      Height = 360
      TabIndex = 24
      OleObjectBlob = "frmPasaraResiduosPasivos.frx":0BE2
      DataField = "CodiFifu"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2400
      Top = 1920
      Width = 1335
      Height = 360
      TabIndex = 18
      OleObjectBlob = "frmPasaraResiduosPasivos.frx":0C6A
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 2400
      Top = 1440
      Width = 1575
      Height = 360
      TabIndex = 15
      OleObjectBlob = "frmPasaraResiduosPasivos.frx":0CF2
      DataField = "CodiPart"
    End
    Begin MSMask.MaskEdBox FechImpuMsk
      Left = 2400
      Top = 3450
      Width = 1335
      Height = 360
      TabIndex = 34
      OleObjectBlob = "frmPasaraResiduosPasivos.frx":0D7A
      DataField = "FechImpu"
    End
    Begin MSMask.MaskEdBox CodiUngaMsk
      Left = 2415
      Top = 2400
      Width = 1335
      Height = 360
      TabIndex = 21
      OleObjectBlob = "frmPasaraResiduosPasivos.frx":0E2A
      DataField = "CodiUnga"
    End
    Begin MSMask.MaskEdBox FefaDeveMsk
      Left = 6345
      Top = 3480
      Width = 1335
      Height = 360
      TabIndex = 36
      OleObjectBlob = "frmPasaraResiduosPasivos.frx":0EBA
      DataField = "FefaDeve"
    End
    Begin VB.Label lblTotal
      Left = 10680
      Top = 480
      Width = 3615
      Height = 375
      TabIndex = 55
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label5
      Caption = "Total:"
      Left = 9840
      Top = 480
      Width = 735
      Height = 375
      TabIndex = 54
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
      Caption = "Fecha Factura:"
      Left = 4680
      Top = 3510
      Width = 1620
      Height = 300
      TabIndex = 35
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
      Width = 5880
      Height = 360
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
      DataField = "DetaUnga"
    End
    Begin VB.Label Label19
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
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label18
      Caption = "Detalle:"
      Left = 1500
      Top = 5400
      Width = 810
      Height = 300
      TabIndex = 52
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
    Begin VB.Label Label13
      Caption = "Importe Total:"
      Left = 8400
      Top = 3960
      Width = 1470
      Height = 300
      TabIndex = 41
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
      Caption = "Expediente Original:"
      Left = 240
      Top = 480
      Width = 2115
      Height = 300
      TabIndex = 7
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
      Caption = "Fecha Devengado:"
      Left = 255
      Top = 3480
      Width = 2025
      Height = 300
      TabIndex = 33
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
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label3
      Caption = "Insumo:"
      Left = 1455
      Top = 960
      Width = 855
      Height = 300
      TabIndex = 11
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
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label8
      Caption = "Finalidad-Función:"
      Left = 360
      Top = 2880
      Width = 1950
      Height = 300
      TabIndex = 23
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
      Caption = "Saldo:"
      Left = 12120
      Top = 3960
      Width = 675
      Height = 300
      TabIndex = 43
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
    Begin VB.Label Label15
      Caption = "Proveedor:"
      Left = 1200
      Top = 4440
      Width = 1140
      Height = 300
      TabIndex = 45
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
    Begin VB.Label Label17
      Caption = "Factura:"
      Left = 1440
      Top = 4920
      Width = 885
      Height = 300
      TabIndex = 48
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
      Caption = "Expediente de Pago:"
      Left = 4800
      Top = 480
      Width = 2205
      Height = 300
      TabIndex = 9
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
    Begin VB.Label DetaPartLbl
      Left = 4080
      Top = 1440
      Width = 5655
      Height = 360
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      DataField = "DetaPart"
    End
    Begin VB.Label DetaOrgaLbl
      Left = 3840
      Top = 1920
      Width = 5895
      Height = 360
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
      DataField = "DetaOrga"
    End
    Begin VB.Label DetaFifuLbl
      Left = 4080
      Top = 2880
      Width = 5655
      Height = 360
      TabIndex = 25
      BorderStyle = 1 'Fixed Single
      DataField = "DetaFifu"
    End
    Begin VB.Label DetaProvLbl
      Left = 4320
      Top = 4440
      Width = 5655
      Height = 360
      TabIndex = 47
      BorderStyle = 1 'Fixed Single
      DataField = "DetaProv"
    End
    Begin VB.Label DetaInsuLbl
      Left = 3840
      Top = 960
      Width = 5895
      Height = 360
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
      DataField = "DetaInsu"
    End
    Begin VB.Label SaldImpuLbl
      Left = 12840
      Top = 3960
      Width = 1815
      Height = 360
      TabIndex = 44
      BorderStyle = 1 'Fixed Single
      DataField = "DeveImpu"
      DataFormat = 80
    End
    Begin VB.Label Label11
      Caption = "Cantidad:"
      Left = 1320
      Top = 3960
      Width = 1020
      Height = 300
      TabIndex = 37
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
    Begin VB.Label Label12
      Caption = "Importe Unitario:"
      Left = 4500
      Top = 3960
      Width = 1770
      Height = 300
      TabIndex = 39
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
    Top = 1680
    Width = 15255
    Height = 1935
    TabIndex = 5
    OleObjectBlob = "frmPasaraResiduosPasivos.frx":0F6A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmPasaraResiduosPasivos.frx":162A
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 16080
    Height = 630
    TabIndex = 0
    OleObjectBlob = "frmPasaraResiduosPasivos.frx":91A8
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmPasaraResiduosPasivos.frx":9704
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmPasaraResiduosPasivos"


Private Sub Form_Load() 'A3A3FC
  'Data Table: 4F588C
  loc_A3A1D8: ImpAdLdI2 MemVar_C3D064
  loc_A3A1DB: LitI2 2025
  loc_A3A1DE: LeI2
  loc_A3A1DF: BranchF loc_A3A1FF
  loc_A3A1E2: LitVarI4
  loc_A3A1EA: PopAdLdVar
  loc_A3A1EB: FLdPr Me
  loc_A3A1EE: VCallAd Control_ID_dgdABMS
  loc_A3A1F1: FStAdFunc var_A8
  loc_A3A1F4: FLdPr var_A8
  loc_A3A1F7: LateIdSt
  loc_A3A1FC: FFree1Ad var_A8
  loc_A3A1FF: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A3A204: PopAdLdVar
  loc_A3A205: FLdPr Me
  loc_A3A208: VCallAd Control_ID_CodiPartMsk
  loc_A3A20B: FStAdFunc var_A8
  loc_A3A20E: FLdPr var_A8
  loc_A3A211: LateIdSt
  loc_A3A216: FFree1Ad var_A8
  loc_A3A219: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A3A21E: PopAdLdVar
  loc_A3A21F: FLdPr Me
  loc_A3A222: VCallAd Control_ID_CoesPartMsk
  loc_A3A225: FStAdFunc var_A8
  loc_A3A228: FLdPr var_A8
  loc_A3A22B: LateIdSt
  loc_A3A230: FFree1Ad var_A8
  loc_A3A233: LitVarStr var_94, "######"
  loc_A3A238: PopAdLdVar
  loc_A3A239: FLdPr Me
  loc_A3A23C: VCallAd Control_ID_CodiOrgaMsk
  loc_A3A23F: FStAdFunc var_A8
  loc_A3A242: FLdPr var_A8
  loc_A3A245: LateIdSt
  loc_A3A24A: FFree1Ad var_A8
  loc_A3A24D: LitVarStr var_94, "######"
  loc_A3A252: PopAdLdVar
  loc_A3A253: FLdPr Me
  loc_A3A256: VCallAd Control_ID_CoesOrgaMsk
  loc_A3A259: FStAdFunc var_A8
  loc_A3A25C: FLdPr var_A8
  loc_A3A25F: LateIdSt
  loc_A3A264: FFree1Ad var_A8
  loc_A3A267: LitVarStr var_94, "##.##.##"
  loc_A3A26C: PopAdLdVar
  loc_A3A26D: FLdPr Me
  loc_A3A270: VCallAd Control_ID_CodiFifuMsk
  loc_A3A273: FStAdFunc var_A8
  loc_A3A276: FLdPr var_A8
  loc_A3A279: LateIdSt
  loc_A3A27E: FFree1Ad var_A8
  loc_A3A281: LitVarStr var_94, "##.##.##"
  loc_A3A286: PopAdLdVar
  loc_A3A287: FLdPr Me
  loc_A3A28A: VCallAd Control_ID_CoesFifuMsk
  loc_A3A28D: FStAdFunc var_A8
  loc_A3A290: FLdPr var_A8
  loc_A3A293: LateIdSt
  loc_A3A298: FFree1Ad var_A8
  loc_A3A29B: LitVarStr var_94, vbNullString
  loc_A3A2A0: PopAdLdVar
  loc_A3A2A1: FLdPr Me
  loc_A3A2A4: VCallAd Control_ID_ExorImpuMsk
  loc_A3A2A7: FStAdFunc var_A8
  loc_A3A2AA: FLdPr var_A8
  loc_A3A2AD: LateIdSt
  loc_A3A2B2: FFree1Ad var_A8
  loc_A3A2B5: ILdRf Me
  loc_A3A2B8: CastAd
  loc_A3A2BB: FStAdFunc var_A8
  loc_A3A2BE: FLdRfVar var_A8
  loc_A3A2C1: ImpAdCallFPR4 Proc_261_41_999BCC()
  loc_A3A2C6: FFree1Ad var_A8
  loc_A3A2C9: ILdRf Me
  loc_A3A2CC: CastAd
  loc_A3A2CF: FStAdFunc var_A8
  loc_A3A2D2: FLdRfVar var_A8
  loc_A3A2D5: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A3A2DA: FFree1Ad var_A8
  loc_A3A2DD: LitI2_Byte 0
  loc_A3A2DF: CR8I2
  loc_A3A2E0: PopFPR4
  loc_A3A2E1: FLdPr Me
  loc_A3A2E4: Me.Left = from_stack_1s
  loc_A3A2E9: LitI2_Byte 0
  loc_A3A2EB: CR8I2
  loc_A3A2EC: PopFPR4
  loc_A3A2ED: FLdPr Me
  loc_A3A2F0: Me.Top = from_stack_1s
  loc_A3A2F5: LitI2_Byte &HFF
  loc_A3A2F7: FLdPr Me
  loc_A3A2FA: VCallAd Control_ID_TifaDeveCbo
  loc_A3A2FD: FStAdFunc var_A8
  loc_A3A300: FLdRfVar var_A8
  loc_A3A303: ImpAdCallFPR4 Proc_261_56_9A8F4C(, )
  loc_A3A308: FFree1Ad var_A8
  loc_A3A30B: LitStr vbNullString
  loc_A3A30E: FLdPr Me
  loc_A3A311: MemStStrCopy
  loc_A3A315: ImpAdLdI2 MemVar_C3D064
  loc_A3A318: LitI2_Byte 1
  loc_A3A31A: AddI2
  loc_A3A31B: CStrUI1
  loc_A3A31D: FStStrNoPop var_AC
  loc_A3A320: LitStr " - solo Fondos de Terceros"
  loc_A3A323: ConcatStr
  loc_A3A324: FStStrNoPop var_B0
  loc_A3A327: FLdPr Me
  loc_A3A32A: VCallAd Control_ID_FrameCoes
  loc_A3A32D: FStAdFunc var_A8
  loc_A3A330: FLdPr var_A8
  loc_A3A333: Me.Caption = from_stack_1
  loc_A3A338: FFreeStr var_AC = ""
  loc_A3A33F: FFree1Ad var_A8
  loc_A3A342: Call Proc_133_16_A302C0()
  loc_A3A347: LitVarI2 var_94, 0
  loc_A3A34C: PopAdLdVar
  loc_A3A34D: LitStr "Expediente de Pago (comienza)"
  loc_A3A350: FLdPr Me
  loc_A3A353: VCallAd Control_ID_FiltroCbo
  loc_A3A356: FStAdFunc var_A8
  loc_A3A359: FLdPr var_A8
  loc_A3A35C: Me.AddItem from_stack_1, from_stack_2
  loc_A3A361: FFree1Ad var_A8
  loc_A3A364: LitVarI2 var_94, 1
  loc_A3A369: PopAdLdVar
  loc_A3A36A: LitStr "Expediente de Pago (termina)"
  loc_A3A36D: FLdPr Me
  loc_A3A370: VCallAd Control_ID_FiltroCbo
  loc_A3A373: FStAdFunc var_A8
  loc_A3A376: FLdPr var_A8
  loc_A3A379: Me.AddItem from_stack_1, from_stack_2
  loc_A3A37E: FFree1Ad var_A8
  loc_A3A381: LitI2_Byte 0
  loc_A3A383: FLdPr Me
  loc_A3A386: VCallAd Control_ID_FiltroCbo
  loc_A3A389: FStAdFunc var_A8
  loc_A3A38C: FLdPr var_A8
  loc_A3A38F: Me.ListIndex = from_stack_1
  loc_A3A394: FFree1Ad var_A8
  loc_A3A397: Call cmdCancelar_Click()
  loc_A3A39C: LitI4 0
  loc_A3A3A1: LitI4 1
  loc_A3A3A6: FLdRfVar var_B4
  loc_A3A3A9: Redim
  loc_A3A3B3: FLdPr Me
  loc_A3A3B6: MemLdRfVar from_stack_1.global_52
  loc_A3A3B9: NewIfNullAd
  loc_A3A3BC: FStAd var_A8 
  loc_A3A3C0: FLdRfVar var_A8
  loc_A3A3C3: CVarRef
  loc_A3A3C8: ParmAry1St
  loc_A3A3CE: FLdPr Me
  loc_A3A3D1: VCallAd Control_ID_dgdABMS
  loc_A3A3D4: CVarAd
  loc_A3A3D8: ParmAry1St
  loc_A3A3DE: FLdRfVar var_B4
  loc_A3A3E1: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3A3E6: ILdRf var_A8
  loc_A3A3E9: CastAd
  loc_A3A3EC: FLdPr Me
  loc_A3A3EF: MemStAdFunc
  loc_A3A3F3: FLdRfVar var_B4
  loc_A3A3F6: Erase
  loc_A3A3F7: FFree1Ad var_A8
  loc_A3A3FA: ExitProcHresult
  loc_A3A3FB: Ary1StCy
End Sub

Private Sub Form_Activate() '9A4DAC
  'Data Table: 4F588C
  loc_9A4D34: FLdRfVar var_C2
  loc_9A4D37: FLdRfVar var_C0
  loc_9A4D3A: LitVarI2 var_B8, 1
  loc_9A4D3F: FLdPr Me
  loc_9A4D42: VCallAd Control_ID_tlbABMS
  loc_9A4D45: FStAdFunc var_88
  loc_9A4D48: FLdPr var_88
  loc_9A4D4B: LateIdLdVar var_98 DispID_3 0
  loc_9A4D52: CastAdVar Me
  loc_9A4D56: FStAdFunc var_BC
  loc_9A4D59: FLdPr var_BC
  loc_9A4D5C:  = Me.Buttons.ControlDefault
  loc_9A4D61: FLdPr var_C0
  loc_9A4D64:  = Me.Enabled
  loc_9A4D69: FLdI2 var_C2
  loc_9A4D6C: FFreeAd var_88 = "": var_BC = ""
  loc_9A4D75: FFreeVar var_98 = ""
  loc_9A4D7C: BranchF loc_9A4D84
  loc_9A4D7F: Call Proc_133_16_A302C0()
  loc_9A4D84: ImpAdLdI2 MemVar_C3D064
  loc_9A4D87: LitI2 2025
  loc_9A4D8A: LeI2
  loc_9A4D8B: BranchF loc_9A4DAB
  loc_9A4D8E: LitVarI4
  loc_9A4D96: PopAdLdVar
  loc_9A4D97: FLdPr Me
  loc_9A4D9A: VCallAd Control_ID_dgdABMS
  loc_9A4D9D: FStAdFunc var_88
  loc_9A4DA0: FLdPr var_88
  loc_9A4DA3: LateIdSt
  loc_9A4DA8: FFree1Ad var_88
  loc_9A4DAB: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9480A4
  'Data Table: 4F588C
  loc_948090: ILdI2 KeyAscii
  loc_948093: CI4UI1
  loc_948094: LitI4 &HD
  loc_948099: EqI4
  loc_94809A: BranchF loc_9480A2
  loc_94809D: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9480A2: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95E314
  'Data Table: 4F588C
  loc_95E2FC: ILdI2 KeyCode
  loc_95E2FF: ILdRf Me
  loc_95E302: CastAd
  loc_95E305: FStAdFunc var_88
  loc_95E308: FLdRfVar var_88
  loc_95E30B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_95E310: FFree1Ad var_88
  loc_95E313: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94B7E0
  'Data Table: 4F588C
  loc_94B7CC: FLdPr Me
  loc_94B7CF: VCallAd Control_ID_FiltroMsk
  loc_94B7D2: CVarAd
  loc_94B7D6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B7DB: FFree1Var var_94 = ""
  loc_94B7DE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() '9D8B48
  'Data Table: 4F588C
  loc_9D8A4C: LitStr "Expediente que comience con: "
  loc_9D8A4F: FLdPr Me
  loc_9D8A52: VCallAd Control_ID_FiltroMsk
  loc_9D8A55: FStAdFunc var_88
  loc_9D8A58: FLdPr var_88
  loc_9D8A5B: LateIdLdVar var_98 DispID_22 0
  loc_9D8A62: CStrVarTmp
  loc_9D8A63: FStStrNoPop var_9C
  loc_9D8A66: ConcatStr
  loc_9D8A67: FStStrNoPop var_A0
  loc_9D8A6A: FLdPr Me
  loc_9D8A6D: MemStStrCopy
  loc_9D8A71: FFreeStr var_9C = ""
  loc_9D8A78: FFree1Ad var_88
  loc_9D8A7B: FFree1Var var_98 = ""
  loc_9D8A7E: FLdPr Me
  loc_9D8A81: VCallAd Control_ID_FiltroMsk
  loc_9D8A84: FStAdFunc var_88
  loc_9D8A87: FLdPr var_88
  loc_9D8A8A: LateIdLdVar var_98 DispID_22 0
  loc_9D8A91: CStrVarTmp
  loc_9D8A92: FStStrNoPop var_9C
  loc_9D8A95: LitStr vbNullString
  loc_9D8A98: EqStr
  loc_9D8A9A: FFree1Str var_9C
  loc_9D8A9D: FFree1Ad var_88
  loc_9D8AA0: FFree1Var var_98 = ""
  loc_9D8AA3: BranchF loc_9D8AB0
  loc_9D8AA6: Call Proc_133_16_A302C0()
  loc_9D8AAB: Call cmdCancelar_Click()
  loc_9D8AB0: FLdRfVar var_A2
  loc_9D8AB3: FLdPr Me
  loc_9D8AB6: VCallAd Control_ID_FiltroCbo
  loc_9D8AB9: FStAdFunc var_88
  loc_9D8ABC: FLdPr var_88
  loc_9D8ABF:  = Me.ListIndex
  loc_9D8AC4: FLdI2 var_A2
  loc_9D8AC7: FStI2 var_A4
  loc_9D8ACA: FFree1Ad var_88
  loc_9D8ACD: FLdI2 var_A4
  loc_9D8AD0: LitI2_Byte 0
  loc_9D8AD2: EqI2
  loc_9D8AD3: BranchF loc_9D8B0B
  loc_9D8AD6: LitStr "Expediente DE PAGO que comience con: "
  loc_9D8AD9: FLdPr Me
  loc_9D8ADC: VCallAd Control_ID_FiltroMsk
  loc_9D8ADF: FStAdFunc var_88
  loc_9D8AE2: FLdPr var_88
  loc_9D8AE5: LateIdLdVar var_98 DispID_22 0
  loc_9D8AEC: CStrVarTmp
  loc_9D8AED: FStStrNoPop var_9C
  loc_9D8AF0: ConcatStr
  loc_9D8AF1: FStStrNoPop var_A0
  loc_9D8AF4: FLdPr Me
  loc_9D8AF7: MemStStrCopy
  loc_9D8AFB: FFreeStr var_9C = ""
  loc_9D8B02: FFree1Ad var_88
  loc_9D8B05: FFree1Var var_98 = ""
  loc_9D8B08: Branch loc_9D8B46
  loc_9D8B0B: FLdI2 var_A4
  loc_9D8B0E: LitI2_Byte 1
  loc_9D8B10: EqI2
  loc_9D8B11: BranchF loc_9D8B46
  loc_9D8B14: LitStr "Expediente DE PAGO que termine con: "
  loc_9D8B17: FLdPr Me
  loc_9D8B1A: VCallAd Control_ID_FiltroMsk
  loc_9D8B1D: FStAdFunc var_88
  loc_9D8B20: FLdPr var_88
  loc_9D8B23: LateIdLdVar var_98 DispID_22 0
  loc_9D8B2A: CStrVarTmp
  loc_9D8B2B: FStStrNoPop var_9C
  loc_9D8B2E: ConcatStr
  loc_9D8B2F: FStStrNoPop var_A0
  loc_9D8B32: FLdPr Me
  loc_9D8B35: MemStStrCopy
  loc_9D8B39: FFreeStr var_9C = ""
  loc_9D8B40: FFree1Ad var_88
  loc_9D8B43: FFree1Var var_98 = ""
  loc_9D8B46: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '96D1B4
  'Data Table: 4F588C
  loc_96D18C: ILdI2 KeyAscii
  loc_96D18F: LitI2_Byte &H27
  loc_96D191: EqI2
  loc_96D192: BranchF loc_96D19A
  loc_96D195: LitI2_Byte 0
  loc_96D197: IStI2 KeyAscii
  loc_96D19A: ILdI2 KeyAscii
  loc_96D19D: CI4UI1
  loc_96D19E: LitI4 &HD
  loc_96D1A3: EqI4
  loc_96D1A4: BranchF loc_96D1B1
  loc_96D1A7: Call Proc_133_16_A302C0()
  loc_96D1AC: Call cmdCancelar_Click()
  loc_96D1B1: ExitProcHresult
  loc_96D1B2: ImpAdLdPr 120040
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B84AE0
  'Data Table: 4F588C
  loc_B83DA4: ILdRf Button
  loc_B83DA7: FStAd var_88 
  loc_B83DAB: FLdRfVar var_8C
  loc_B83DAE: FLdPr var_88
  loc_B83DB1:  = Me.Key
  loc_B83DB6: FLdZeroAd var_8C
  loc_B83DB9: FStStr var_90
  loc_B83DBC: ILdRf var_90
  loc_B83DBF: LitStr "btnCrear"
  loc_B83DC2: EqStr
  loc_B83DC4: BranchF loc_B8429B
  loc_B83DC7: LitStr vbNullString
  loc_B83DCA: FLdPr Me
  loc_B83DCD: MemStStrCopy
  loc_B83DD1: FLdRfVar var_94
  loc_B83DD4: FLdPr Me
  loc_B83DD7: MemLdRfVar from_stack_1.global_52
  loc_B83DDA: NewIfNullPr clsimputacion
  loc_B83DDD: from_stack_1 = clsimputacion.RecordCount
  loc_B83DE2: ILdRf var_94
  loc_B83DE5: LitI4 0
  loc_B83DEA: GtI4
  loc_B83DEB: BranchF loc_B84298
  loc_B83DEE: FLdPr Me
  loc_B83DF1: MemLdRfVar from_stack_1.global_76
  loc_B83DF4: NewIfNullRf
  loc_B83DF8: ImpAdLdI2 MemVar_C3D064
  loc_B83DFB: LitI2_Byte 1
  loc_B83DFD: AddI2
  loc_B83DFE: ImpAdCallFPR4 Proc_259_23_AE2098(, )
  loc_B83E03: FLdRfVar var_8C
  loc_B83E06: FLdPr Me
  loc_B83E09: MemLdRfVar from_stack_1.global_76
  loc_B83E0C: NewIfNullPr tblparaconta
  loc_B83E0F: from_stack_1v = tblparaconta.ParpPacoGet()
  loc_B83E14: ILdRf var_8C
  loc_B83E17: LitStr vbNullString
  loc_B83E1A: EqStr
  loc_B83E1C: FLdRfVar var_98
  loc_B83E1F: FLdPr Me
  loc_B83E22: MemLdRfVar from_stack_1.global_76
  loc_B83E25: NewIfNullPr tblparaconta
  loc_B83E28: from_stack_1v = tblparaconta.CcrpPacoGet()
  loc_B83E2D: ILdRf var_98
  loc_B83E30: LitStr vbNullString
  loc_B83E33: EqStr
  loc_B83E35: AndI4
  loc_B83E36: FFreeStr var_8C = ""
  loc_B83E3D: BranchF loc_B83E4E
  loc_B83E40: LitI4 0
  loc_B83E45: LitStr "Faltan Parámetros de Residuos Pasivos. Verifique..."
  loc_B83E48: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B83E4D: ExitProcHresult
  loc_B83E4E: FLdPr Me
  loc_B83E51: MemLdRfVar from_stack_1.global_52
  loc_B83E54: NewIfNullPr clsimputacion
  loc_B83E57: Call clsimputacion.MoveFirst()
  loc_B83E5C: FLdRfVar var_9A
  loc_B83E5F: FLdPr Me
  loc_B83E62: MemLdRfVar from_stack_1.global_52
  loc_B83E65: NewIfNullPr clsimputacion
  loc_B83E68: from_stack_1 = clsimputacion.EOF
  loc_B83E6D: FLdI2 var_9A
  loc_B83E70: NotI4
  loc_B83E71: BranchF loc_B8421E
  loc_B83E74: LitStr vbNullString
  loc_B83E77: FLdPr Me
  loc_B83E7A: MemStStrCopy
  loc_B83E7E: FLdRfVar var_C8
  loc_B83E81: FLdRfVar var_B8
  loc_B83E84: LitVarStr var_B4, "CoesOrga"
  loc_B83E89: PopAdLdVar
  loc_B83E8A: FLdRfVar var_A4
  loc_B83E8D: FLdRfVar var_A0
  loc_B83E90: FLdPr Me
  loc_B83E93: MemLdRfVar from_stack_1.global_52
  loc_B83E96: NewIfNullPr clsimputacion
  loc_B83E99: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B83E9E: FLdPr var_A0
  loc_B83EA1:  = Me.Fields
  loc_B83EA6: FLdPr var_A4
  loc_B83EA9: from_stack_2 = Me.Item(from_stack_1)
  loc_B83EAE: FLdPr var_B8
  loc_B83EB1:  = Me.Value
  loc_B83EB6: FLdRfVar var_8C
  loc_B83EB9: FLdPr Me
  loc_B83EBC:  = Me.Name
  loc_B83EC1: FLdPr Me
  loc_B83EC4: MemLdRfVar from_stack_1.global_80
  loc_B83EC7: NewIfNullRf
  loc_B83ECB: ILdRf var_8C
  loc_B83ECE: FLdRfVar var_C8
  loc_B83ED1: CStrVarTmp
  loc_B83ED2: FStStrNoPop var_98
  loc_B83ED5: ImpAdLdI2 MemVar_C3D064
  loc_B83ED8: LitI2_Byte 1
  loc_B83EDA: AddI2
  loc_B83EDB: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B83EE0: FStStrNoPop var_CC
  loc_B83EE3: FLdPr Me
  loc_B83EE6: MemStStrCopy
  loc_B83EEA: FFreeStr var_98 = "": var_8C = ""
  loc_B83EF3: FFreeAd var_A0 = "": var_A4 = ""
  loc_B83EFC: FFree1Var var_C8 = ""
  loc_B83EFF: FLdPr Me
  loc_B83F02: MemLdStr global_64
  loc_B83F05: LitStr vbNullString
  loc_B83F08: NeStr
  loc_B83F0A: BranchF loc_B83FBB
  loc_B83F0D: FLdPr Me
  loc_B83F10: MemLdStr global_64
  loc_B83F13: LitStr "Organigrama NO Autorizado para su Usuario. Verifique..."
  loc_B83F16: EqStr
  loc_B83F18: BranchF loc_B83FAA
  loc_B83F1B: LitI4 0
  loc_B83F20: LitStr "en el "
  loc_B83F23: ImpAdLdI2 MemVar_C3D064
  loc_B83F26: LitI2_Byte 1
  loc_B83F28: AddI2
  loc_B83F29: CStrUI1
  loc_B83F2B: FStStrNoPop var_8C
  loc_B83F2E: ConcatStr
  loc_B83F2F: FStStrNoPop var_98
  loc_B83F32: LitStr " !!! oficina "
  loc_B83F35: ConcatStr
  loc_B83F36: CVarStr var_DC
  loc_B83F39: FLdRfVar var_C8
  loc_B83F3C: FLdRfVar var_B8
  loc_B83F3F: LitVarStr var_B4, "CoesOrga"
  loc_B83F44: PopAdLdVar
  loc_B83F45: FLdRfVar var_A4
  loc_B83F48: FLdRfVar var_A0
  loc_B83F4B: FLdPr Me
  loc_B83F4E: MemLdRfVar from_stack_1.global_52
  loc_B83F51: NewIfNullPr clsimputacion
  loc_B83F54: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B83F59: FLdPr var_A0
  loc_B83F5C:  = Me.Fields
  loc_B83F61: FLdPr var_A4
  loc_B83F64: from_stack_2 = Me.Item(from_stack_1)
  loc_B83F69: FLdPr var_B8
  loc_B83F6C:  = Me.Value
  loc_B83F71: FLdRfVar var_C8
  loc_B83F74: ConcatVar var_EC
  loc_B83F78: LitVarStr var_FC, " NO autorizada. Solicite el permiso en >>> InfoGov 3 - PRESUPUESTO - PARÁMETRO - Organigrama por Usuario <<<"
  loc_B83F7D: ConcatVar var_10C
  loc_B83F81: CStrVarVal var_CC
  loc_B83F85: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B83F8A: FFreeStr var_8C = "": var_98 = ""
  loc_B83F93: FFreeAd var_A0 = "": var_A4 = ""
  loc_B83F9C: FFreeVar var_DC = "": var_C8 = "": var_EC = ""
  loc_B83FA7: Branch loc_B83FBA
  loc_B83FAA: LitI4 0
  loc_B83FAF: FLdPr Me
  loc_B83FB2: MemLdStr global_64
  loc_B83FB5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B83FBA: ExitProcHresult
  loc_B83FBB: FLdRfVar var_8C
  loc_B83FBE: FLdPr Me
  loc_B83FC1: MemLdRfVar from_stack_1.global_76
  loc_B83FC4: NewIfNullPr tblparaconta
  loc_B83FC7: from_stack_1v = tblparaconta.ParpPacoGet()
  loc_B83FCC: ILdRf var_8C
  loc_B83FCF: LitStr vbNullString
  loc_B83FD2: NeStr
  loc_B83FD4: FFree1Str var_8C
  loc_B83FD7: BranchF loc_B8406A
  loc_B83FDA: FLdRfVar var_C8
  loc_B83FDD: FLdRfVar var_B8
  loc_B83FE0: LitVarStr var_B4, "CoesFifu"
  loc_B83FE5: PopAdLdVar
  loc_B83FE6: FLdRfVar var_A4
  loc_B83FE9: FLdRfVar var_A0
  loc_B83FEC: FLdPr Me
  loc_B83FEF: MemLdRfVar from_stack_1.global_52
  loc_B83FF2: NewIfNullPr clsimputacion
  loc_B83FF5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B83FFA: FLdPr var_A0
  loc_B83FFD:  = Me.Fields
  loc_B84002: FLdPr var_A4
  loc_B84005: from_stack_2 = Me.Item(from_stack_1)
  loc_B8400A: FLdPr var_B8
  loc_B8400D:  = Me.Value
  loc_B84012: FLdPr Me
  loc_B84015: MemLdRfVar from_stack_1.global_84
  loc_B84018: NewIfNullRf
  loc_B8401C: FLdRfVar var_C8
  loc_B8401F: CStrVarTmp
  loc_B84020: FStStrNoPop var_8C
  loc_B84023: ImpAdLdI2 MemVar_C3D064
  loc_B84026: LitI2_Byte 1
  loc_B84028: AddI2
  loc_B84029: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B8402E: FStStrNoPop var_98
  loc_B84031: FLdPr Me
  loc_B84034: MemStStrCopy
  loc_B84038: FFreeStr var_8C = ""
  loc_B8403F: FFreeAd var_A0 = "": var_A4 = ""
  loc_B84048: FFree1Var var_C8 = ""
  loc_B8404B: FLdPr Me
  loc_B8404E: MemLdStr global_64
  loc_B84051: LitStr vbNullString
  loc_B84054: NeStr
  loc_B84056: BranchF loc_B8406A
  loc_B84059: LitI4 0
  loc_B8405E: FLdPr Me
  loc_B84061: MemLdStr global_64
  loc_B84064: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B84069: ExitProcHresult
  loc_B8406A: FLdRfVar var_B8
  loc_B8406D: LitVarStr var_B4, "CodiPart"
  loc_B84072: PopAdLdVar
  loc_B84073: FLdRfVar var_A4
  loc_B84076: FLdRfVar var_A0
  loc_B84079: FLdPr Me
  loc_B8407C: MemLdRfVar from_stack_1.global_52
  loc_B8407F: NewIfNullPr clsimputacion
  loc_B84082: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B84087: FLdPr var_A0
  loc_B8408A:  = Me.Fields
  loc_B8408F: FLdPr var_A4
  loc_B84092: from_stack_2 = Me.Item(from_stack_1)
  loc_B84097: LitI4 1
  loc_B8409C: FLdZeroAd var_B8
  loc_B8409F: CVarAd
  loc_B840A3: FLdRfVar var_DC
  loc_B840A6: ImpAdCallFPR4  = Left(, )
  loc_B840AB: FLdRfVar var_DC
  loc_B840AE: FLdRfVar var_8C
  loc_B840B1: FLdPr Me
  loc_B840B4: MemLdRfVar from_stack_1.global_76
  loc_B840B7: NewIfNullPr tblparaconta
  loc_B840BA: from_stack_1v = tblparaconta.PaexPacoGet()
  loc_B840BF: FLdZeroAd var_8C
  loc_B840C2: CVarStr var_EC
  loc_B840C5: HardType
  loc_B840C6: EqVarBool
  loc_B840C8: FFreeAd var_A0 = ""
  loc_B840CF: FFreeVar var_C8 = "": var_DC = ""
  loc_B840D8: BranchF loc_B8420D
  loc_B840DB: FLdRfVar var_C8
  loc_B840DE: FLdRfVar var_B8
  loc_B840E1: LitVarStr var_B4, "CoesPart"
  loc_B840E6: PopAdLdVar
  loc_B840E7: FLdRfVar var_A4
  loc_B840EA: FLdRfVar var_A0
  loc_B840ED: FLdPr Me
  loc_B840F0: MemLdRfVar from_stack_1.global_52
  loc_B840F3: NewIfNullPr clsimputacion
  loc_B840F6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B840FB: FLdPr var_A0
  loc_B840FE:  = Me.Fields
  loc_B84103: FLdPr var_A4
  loc_B84106: from_stack_2 = Me.Item(from_stack_1)
  loc_B8410B: FLdPr var_B8
  loc_B8410E:  = Me.Value
  loc_B84113: FLdRfVar var_8C
  loc_B84116: FLdPr Me
  loc_B84119:  = Me.Name
  loc_B8411E: FLdPr Me
  loc_B84121: MemLdRfVar from_stack_1.global_88
  loc_B84124: NewIfNullRf
  loc_B84128: ILdRf var_8C
  loc_B8412B: LitI2_Byte &HFF
  loc_B8412D: FLdRfVar var_C8
  loc_B84130: CStrVarTmp
  loc_B84131: FStStrNoPop var_98
  loc_B84134: ImpAdLdI2 MemVar_C3D064
  loc_B84137: LitI2_Byte 1
  loc_B84139: AddI2
  loc_B8413A: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B8413F: FStStrNoPop var_CC
  loc_B84142: FLdPr Me
  loc_B84145: MemStStrCopy
  loc_B84149: FFreeStr var_98 = "": var_8C = ""
  loc_B84152: FFreeAd var_A0 = "": var_A4 = ""
  loc_B8415B: FFree1Var var_C8 = ""
  loc_B8415E: FLdPr Me
  loc_B84161: MemLdStr global_64
  loc_B84164: LitStr vbNullString
  loc_B84167: NeStr
  loc_B84169: BranchF loc_B8417D
  loc_B8416C: LitI4 0
  loc_B84171: FLdPr Me
  loc_B84174: MemLdStr global_64
  loc_B84177: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B8417C: ExitProcHresult
  loc_B8417D: FLdRfVar var_C8
  loc_B84180: FLdRfVar var_B8
  loc_B84183: LitVarStr var_B4, "CoesFifu"
  loc_B84188: PopAdLdVar
  loc_B84189: FLdRfVar var_A4
  loc_B8418C: FLdRfVar var_A0
  loc_B8418F: FLdPr Me
  loc_B84192: MemLdRfVar from_stack_1.global_52
  loc_B84195: NewIfNullPr clsimputacion
  loc_B84198: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B8419D: FLdPr var_A0
  loc_B841A0:  = Me.Fields
  loc_B841A5: FLdPr var_A4
  loc_B841A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B841AD: FLdPr var_B8
  loc_B841B0:  = Me.Value
  loc_B841B5: FLdPr Me
  loc_B841B8: MemLdRfVar from_stack_1.global_84
  loc_B841BB: NewIfNullRf
  loc_B841BF: FLdRfVar var_C8
  loc_B841C2: CStrVarTmp
  loc_B841C3: FStStrNoPop var_8C
  loc_B841C6: ImpAdLdI2 MemVar_C3D064
  loc_B841C9: LitI2_Byte 1
  loc_B841CB: AddI2
  loc_B841CC: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B841D1: FStStrNoPop var_98
  loc_B841D4: FLdPr Me
  loc_B841D7: MemStStrCopy
  loc_B841DB: FFreeStr var_8C = ""
  loc_B841E2: FFreeAd var_A0 = "": var_A4 = ""
  loc_B841EB: FFree1Var var_C8 = ""
  loc_B841EE: FLdPr Me
  loc_B841F1: MemLdStr global_64
  loc_B841F4: LitStr vbNullString
  loc_B841F7: NeStr
  loc_B841F9: BranchF loc_B8420D
  loc_B841FC: LitI4 0
  loc_B84201: FLdPr Me
  loc_B84204: MemLdStr global_64
  loc_B84207: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B8420C: ExitProcHresult
  loc_B8420D: FLdPr Me
  loc_B84210: MemLdRfVar from_stack_1.global_52
  loc_B84213: NewIfNullPr clsimputacion
  loc_B84216: Call clsimputacion.MoveSiguiente()
  loc_B8421B: Branch loc_B83E5C
  loc_B8421E: FLdPr Me
  loc_B84221: MemLdRfVar from_stack_1.global_52
  loc_B84224: NewIfNullPr clsimputacion
  loc_B84227: Call clsimputacion.MoveFirst()
  loc_B8422C: LitI2_Byte &HFF
  loc_B8422E: PopTmpLdAd2 var_10E
  loc_B84231: LitI2_Byte &HFF
  loc_B84233: PopTmpLdAd2 var_9A
  loc_B84236: LitStr "¿Pasa los expedientes FILTRADOS como Residuos Pasivos?"
  loc_B84239: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B8423E: CI4UI1
  loc_B8423F: LitI4 6
  loc_B84244: EqI4
  loc_B84245: BranchF loc_B84298
  loc_B84248: LitI2_Byte 1
  loc_B8424A: FLdPr Me
  loc_B8424D: MemStUI1
  loc_B84251: ILdRf Me
  loc_B84254: CastAd
  loc_B84257: FStAdFunc var_A0
  loc_B8425A: FLdRfVar var_A0
  loc_B8425D: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B84262: FFree1Ad var_A0
  loc_B84265: LitI4 0
  loc_B8426A: LitI4 0
  loc_B8426F: FLdRfVar var_114
  loc_B84272: Redim
  loc_B8427C: FLdPr Me
  loc_B8427F: VCallAd Control_ID_dgdABMS
  loc_B84282: CVarAd
  loc_B84286: ParmAry1St
  loc_B8428C: FLdRfVar var_114
  loc_B8428F: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B84294: FLdRfVar var_114
  loc_B84297: Erase
  loc_B84298: Branch loc_B84ADD
  loc_B8429B: ILdRf var_90
  loc_B8429E: LitStr "btnModificar"
  loc_B842A1: EqStr
  loc_B842A3: BranchF loc_B842A9
  loc_B842A6: Branch loc_B84ADD
  loc_B842A9: ILdRf var_90
  loc_B842AC: LitStr "btnEliminar"
  loc_B842AF: EqStr
  loc_B842B1: BranchF loc_B842B7
  loc_B842B4: Branch loc_B84ADD
  loc_B842B7: ILdRf var_90
  loc_B842BA: LitStr "btnGuardar"
  loc_B842BD: EqStr
  loc_B842BF: BranchF loc_B84975
  loc_B842C2: LitStr "Municipalidad de Guaymallén"
  loc_B842C5: FStStrCopy var_124
  loc_B842C8: ILdRf var_124
  loc_B842CB: LitStr "Municipalidad de San Carlos"
  loc_B842CE: EqStr
  loc_B842D0: BranchF loc_B842E2
  loc_B842D3: LitStr "1"
  loc_B842D6: FStStrCopy var_11C
  loc_B842D9: LitStr "010700"
  loc_B842DC: FStStrCopy var_120
  loc_B842DF: Branch loc_B843D8
  loc_B842E2: ILdRf var_124
  loc_B842E5: LitStr "Municipalidad de Malargüe"
  loc_B842E8: EqStr
  loc_B842EA: BranchF loc_B842FC
  loc_B842ED: LitStr "1"
  loc_B842F0: FStStrCopy var_11C
  loc_B842F3: LitStr "019000"
  loc_B842F6: FStStrCopy var_120
  loc_B842F9: Branch loc_B843D8
  loc_B842FC: ILdRf var_124
  loc_B842FF: LitStr "Municipalidad de Maipú"
  loc_B84302: EqStr
  loc_B84304: BranchF loc_B84316
  loc_B84307: LitStr "1"
  loc_B8430A: FStStrCopy var_11C
  loc_B8430D: LitStr "80102002"
  loc_B84310: FStStrCopy var_120
  loc_B84313: Branch loc_B843D8
  loc_B84316: ILdRf var_124
  loc_B84319: LitStr "Municipalidad de Lavalle"
  loc_B8431C: EqStr
  loc_B8431E: BranchF loc_B84330
  loc_B84321: LitStr "1"
  loc_B84324: FStStrCopy var_11C
  loc_B84327: LitStr "010900"
  loc_B8432A: FStStrCopy var_120
  loc_B8432D: Branch loc_B843D8
  loc_B84330: ILdRf var_124
  loc_B84333: LitStr "Municipalidad de Rivadavia"
  loc_B84336: EqStr
  loc_B84338: BranchF loc_B8434A
  loc_B8433B: LitStr "1"
  loc_B8433E: FStStrCopy var_11C
  loc_B84341: LitStr "010900"
  loc_B84344: FStStrCopy var_120
  loc_B84347: Branch loc_B843D8
  loc_B8434A: ILdRf var_124
  loc_B8434D: LitStr "Municipalidad de Tunuyán"
  loc_B84350: EqStr
  loc_B84352: BranchF loc_B84364
  loc_B84355: LitStr "1"
  loc_B84358: FStStrCopy var_11C
  loc_B8435B: LitStr "010900"
  loc_B8435E: FStStrCopy var_120
  loc_B84361: Branch loc_B843D8
  loc_B84364: ILdRf var_124
  loc_B84367: LitStr "Municipalidad de General Alvear"
  loc_B8436A: EqStr
  loc_B8436C: BranchF loc_B8437E
  loc_B8436F: LitStr "1"
  loc_B84372: FStStrCopy var_11C
  loc_B84375: LitStr "019000"
  loc_B84378: FStStrCopy var_120
  loc_B8437B: Branch loc_B843D8
  loc_B8437E: ILdRf var_124
  loc_B84381: LitStr "Municipalidad de Tupungato"
  loc_B84384: EqStr
  loc_B84386: BranchF loc_B84398
  loc_B84389: LitStr "1"
  loc_B8438C: FStStrCopy var_11C
  loc_B8438F: LitStr "019000"
  loc_B84392: FStStrCopy var_120
  loc_B84395: Branch loc_B843D8
  loc_B84398: ILdRf var_124
  loc_B8439B: LitStr "Municipalidad de Guaymallén"
  loc_B8439E: EqStr
  loc_B843A0: BranchF loc_B843B2
  loc_B843A3: LitStr "23"
  loc_B843A6: FStStrCopy var_11C
  loc_B843A9: LitStr "019000"
  loc_B843AC: FStStrCopy var_120
  loc_B843AF: Branch loc_B843D8
  loc_B843B2: ILdRf var_124
  loc_B843B5: LitStr "Municipalidad de La Paz"
  loc_B843B8: EqStr
  loc_B843BA: BranchF loc_B843CC
  loc_B843BD: LitStr "1"
  loc_B843C0: FStStrCopy var_11C
  loc_B843C3: LitStr "119000"
  loc_B843C6: FStStrCopy var_120
  loc_B843C9: Branch loc_B843D8
  loc_B843CC: LitStr "1"
  loc_B843CF: FStStrCopy var_11C
  loc_B843D2: LitStr "019000"
  loc_B843D5: FStStrCopy var_120
  loc_B843D8: ILdRf var_11C
  loc_B843DB: LitStr vbNullString
  loc_B843DE: EqStr
  loc_B843E0: ILdRf var_120
  loc_B843E3: LitStr vbNullString
  loc_B843E6: EqStr
  loc_B843E8: OrI4
  loc_B843E9: BranchF loc_B843FA
  loc_B843EC: LitI4 0
  loc_B843F1: LitStr "Faltan datos de imputación. Verifique..."
  loc_B843F4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B843F9: ExitProcHresult
  loc_B843FA: FLdPr Me
  loc_B843FD: MemLdUI1 global_60
  loc_B84401: FStUI1 var_126
  loc_B84405: FLdUI1
  loc_B84409: LitI2_Byte 1
  loc_B8440B: EqI2
  loc_B8440C: BranchF loc_B8482B
  loc_B8440F: FLdPr Me
  loc_B84412: MemLdRfVar from_stack_1.global_76
  loc_B84415: NewIfNullRf
  loc_B84419: ImpAdLdI2 MemVar_C3D064
  loc_B8441C: LitI2_Byte 1
  loc_B8441E: AddI2
  loc_B8441F: ImpAdCallFPR4 Proc_259_23_AE2098(, )
  loc_B84424: FLdRfVar var_8C
  loc_B84427: FLdPr Me
  loc_B8442A: MemLdRfVar from_stack_1.global_76
  loc_B8442D: NewIfNullPr tblparaconta
  loc_B84430: from_stack_1v = tblparaconta.ParpPacoGet()
  loc_B84435: ILdRf var_8C
  loc_B84438: LitStr vbNullString
  loc_B8443B: EqStr
  loc_B8443D: FLdRfVar var_98
  loc_B84440: FLdPr Me
  loc_B84443: MemLdRfVar from_stack_1.global_76
  loc_B84446: NewIfNullPr tblparaconta
  loc_B84449: from_stack_1v = tblparaconta.CcrpPacoGet()
  loc_B8444E: ILdRf var_98
  loc_B84451: LitStr vbNullString
  loc_B84454: EqStr
  loc_B84456: AndI4
  loc_B84457: FFreeStr var_8C = ""
  loc_B8445E: BranchF loc_B8446F
  loc_B84461: LitI4 0
  loc_B84466: LitStr "Faltan datos de imputación. Verifique..."
  loc_B84469: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B8446E: ExitProcHresult
  loc_B8446F: FLdPr Me
  loc_B84472: MemLdRfVar from_stack_1.global_52
  loc_B84475: NewIfNullPr clsimputacion
  loc_B84478: Call clsimputacion.MoveFirst()
  loc_B8447D: FLdRfVar var_9A
  loc_B84480: FLdPr Me
  loc_B84483: MemLdRfVar from_stack_1.global_52
  loc_B84486: NewIfNullPr clsimputacion
  loc_B84489: from_stack_1 = clsimputacion.EOF
  loc_B8448E: FLdI2 var_9A
  loc_B84491: NotI4
  loc_B84492: BranchF loc_B84828
  loc_B84495: FLdPr Me
  loc_B84498: VCallAd Control_ID_CodiPartMsk
  loc_B8449B: FStAdFunc var_A0
  loc_B8449E: FLdPr var_A0
  loc_B844A1: LateIdLdVar var_C8 DispID_22 0
  loc_B844A8: PopAd
  loc_B844AA: LitI4 1
  loc_B844AF: FLdRfVar var_C8
  loc_B844B2: CStrVarTmp
  loc_B844B3: FStStrNoPop var_8C
  loc_B844B6: ImpAdCallI2 Left$(, )
  loc_B844BB: FStStrNoPop var_CC
  loc_B844BE: FLdRfVar var_98
  loc_B844C1: ImpAdLdI2 MemVar_C3D064
  loc_B844C4: FLdPr Me
  loc_B844C7: MemLdRfVar from_stack_1.global_52
  loc_B844CA: NewIfNullPr clsimputacion
  loc_B844CD: from_stack_1 = clsimputacion.PaexPaco
  loc_B844D2: ILdRf var_98
  loc_B844D5: NeStr
  loc_B844D7: FFreeStr var_8C = "": var_CC = ""
  loc_B844E0: FFree1Ad var_A0
  loc_B844E3: FFree1Var var_C8 = ""
  loc_B844E6: BranchF loc_B845F0
  loc_B844E9: FLdRfVar var_8C
  loc_B844EC: FLdPr Me
  loc_B844EF: MemLdRfVar from_stack_1.global_76
  loc_B844F2: NewIfNullPr tblparaconta
  loc_B844F5: from_stack_1v = tblparaconta.ParpPacoGet()
  loc_B844FA: ILdRf var_8C
  loc_B844FD: LitStr vbNullString
  loc_B84500: NeStr
  loc_B84502: FFree1Str var_8C
  loc_B84505: BranchF loc_B8457B
  loc_B84508: FLdRfVar var_8C
  loc_B8450B: FLdPr Me
  loc_B8450E: MemLdRfVar from_stack_1.global_76
  loc_B84511: NewIfNullPr tblparaconta
  loc_B84514: from_stack_1v = tblparaconta.ParpPacoGet()
  loc_B84519: FLdZeroAd var_8C
  loc_B8451C: FStStr var_118
  loc_B8451F: FLdRfVar var_C8
  loc_B84522: FLdRfVar var_B8
  loc_B84525: LitVarStr var_B4, "CoesOrga"
  loc_B8452A: PopAdLdVar
  loc_B8452B: FLdRfVar var_A4
  loc_B8452E: FLdRfVar var_A0
  loc_B84531: FLdPr Me
  loc_B84534: MemLdRfVar from_stack_1.global_52
  loc_B84537: NewIfNullPr clsimputacion
  loc_B8453A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B8453F: FLdPr var_A0
  loc_B84542:  = Me.Fields
  loc_B84547: FLdPr var_A4
  loc_B8454A: from_stack_2 = Me.Item(from_stack_1)
  loc_B8454F: FLdPr var_B8
  loc_B84552:  = Me.Value
  loc_B84557: ILdRf var_120
  loc_B8455A: FLdRfVar var_C8
  loc_B8455D: CStrVarTmp
  loc_B8455E: FStStrNoPop var_8C
  loc_B84561: ILdRf var_118
  loc_B84564: Call Proc_133_17_B390A4()
  loc_B84569: FFree1Str var_8C
  loc_B8456C: FFreeAd var_A0 = "": var_A4 = ""
  loc_B84575: FFree1Var var_C8 = ""
  loc_B84578: Branch loc_B845ED
  loc_B8457B: FLdRfVar var_8C
  loc_B8457E: FLdPr Me
  loc_B84581: MemLdRfVar from_stack_1.global_76
  loc_B84584: NewIfNullPr tblparaconta
  loc_B84587: from_stack_1v = tblparaconta.CcrpPacoGet()
  loc_B8458C: ILdRf var_8C
  loc_B8458F: LitStr vbNullString
  loc_B84592: NeStr
  loc_B84594: FFree1Str var_8C
  loc_B84597: BranchF loc_B845ED
  loc_B8459A: FLdRfVar var_C8
  loc_B8459D: FLdRfVar var_B8
  loc_B845A0: LitVarStr var_B4, "CoesOrga"
  loc_B845A5: PopAdLdVar
  loc_B845A6: FLdRfVar var_A4
  loc_B845A9: FLdRfVar var_A0
  loc_B845AC: FLdPr Me
  loc_B845AF: MemLdRfVar from_stack_1.global_52
  loc_B845B2: NewIfNullPr clsimputacion
  loc_B845B5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B845BA: FLdPr var_A0
  loc_B845BD:  = Me.Fields
  loc_B845C2: FLdPr var_A4
  loc_B845C5: from_stack_2 = Me.Item(from_stack_1)
  loc_B845CA: FLdPr var_B8
  loc_B845CD:  = Me.Value
  loc_B845D2: FLdRfVar var_C8
  loc_B845D5: CStrVarTmp
  loc_B845D6: FStStrNoPop var_8C
  loc_B845D9: Call Proc_133_18_A25E5C()
  loc_B845DE: FFree1Str var_8C
  loc_B845E1: FFreeAd var_A0 = "": var_A4 = ""
  loc_B845EA: FFree1Var var_C8 = ""
  loc_B845ED: Branch loc_B846D9
  loc_B845F0: FLdRfVar var_C8
  loc_B845F3: FLdRfVar var_B8
  loc_B845F6: LitVarStr var_B4, "CoesPart"
  loc_B845FB: PopAdLdVar
  loc_B845FC: FLdRfVar var_A4
  loc_B845FF: FLdRfVar var_A0
  loc_B84602: FLdPr Me
  loc_B84605: MemLdRfVar from_stack_1.global_52
  loc_B84608: NewIfNullPr clsimputacion
  loc_B8460B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B84610: FLdPr var_A0
  loc_B84613:  = Me.Fields
  loc_B84618: FLdPr var_A4
  loc_B8461B: from_stack_2 = Me.Item(from_stack_1)
  loc_B84620: FLdPr var_B8
  loc_B84623:  = Me.Value
  loc_B84628: FLdRfVar var_DC
  loc_B8462B: FLdRfVar var_134
  loc_B8462E: LitVarStr var_FC, "CoesOrga"
  loc_B84633: PopAdLdVar
  loc_B84634: FLdRfVar var_130
  loc_B84637: FLdRfVar var_12C
  loc_B8463A: FLdPr Me
  loc_B8463D: MemLdRfVar from_stack_1.global_52
  loc_B84640: NewIfNullPr clsimputacion
  loc_B84643: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B84648: FLdPr var_12C
  loc_B8464B:  = Me.Fields
  loc_B84650: FLdPr var_130
  loc_B84653: from_stack_2 = Me.Item(from_stack_1)
  loc_B84658: FLdPr var_134
  loc_B8465B:  = Me.Value
  loc_B84660: FLdRfVar var_EC
  loc_B84663: FLdRfVar var_150
  loc_B84666: LitVarStr var_14C, "CoesFifu"
  loc_B8466B: PopAdLdVar
  loc_B8466C: FLdRfVar var_13C
  loc_B8466F: FLdRfVar var_138
  loc_B84672: FLdPr Me
  loc_B84675: MemLdRfVar from_stack_1.global_52
  loc_B84678: NewIfNullPr clsimputacion
  loc_B8467B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B84680: FLdPr var_138
  loc_B84683:  = Me.Fields
  loc_B84688: FLdPr var_13C
  loc_B8468B: from_stack_2 = Me.Item(from_stack_1)
  loc_B84690: FLdPr var_150
  loc_B84693:  = Me.Value
  loc_B84698: FLdRfVar var_EC
  loc_B8469B: CStrVarTmp
  loc_B8469C: FStStrNoPop var_CC
  loc_B8469F: FLdRfVar var_DC
  loc_B846A2: CStrVarTmp
  loc_B846A3: FStStrNoPop var_98
  loc_B846A6: FLdRfVar var_C8
  loc_B846A9: CStrVarTmp
  loc_B846AA: FStStrNoPop var_8C
  loc_B846AD: Call Proc_133_17_B390A4()
  loc_B846B2: FFreeStr var_8C = "": var_98 = ""
  loc_B846BB: FFreeAd var_A0 = "": var_A4 = "": var_12C = "": var_130 = "": var_138 = "": var_13C = "": var_B8 = "": var_134 = ""
  loc_B846D0: FFreeVar var_C8 = "": var_DC = ""
  loc_B846D9: FLdRfVar var_C8
  loc_B846DC: FLdRfVar var_B8
  loc_B846DF: LitVarStr var_B4, "ExpeImpu"
  loc_B846E4: PopAdLdVar
  loc_B846E5: FLdRfVar var_A4
  loc_B846E8: FLdRfVar var_A0
  loc_B846EB: FLdPr Me
  loc_B846EE: MemLdRfVar from_stack_1.global_52
  loc_B846F1: NewIfNullPr clsimputacion
  loc_B846F4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B846F9: FLdPr var_A0
  loc_B846FC:  = Me.Fields
  loc_B84701: FLdPr var_A4
  loc_B84704: from_stack_2 = Me.Item(from_stack_1)
  loc_B84709: FLdPr var_B8
  loc_B8470C:  = Me.Value
  loc_B84711: FLdRfVar var_DC
  loc_B84714: FLdRfVar var_134
  loc_B84717: LitVarStr var_FC, "ExorImpu"
  loc_B8471C: PopAdLdVar
  loc_B8471D: FLdRfVar var_130
  loc_B84720: FLdRfVar var_12C
  loc_B84723: FLdPr Me
  loc_B84726: MemLdRfVar from_stack_1.global_52
  loc_B84729: NewIfNullPr clsimputacion
  loc_B8472C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B84731: FLdPr var_12C
  loc_B84734:  = Me.Fields
  loc_B84739: FLdPr var_130
  loc_B8473C: from_stack_2 = Me.Item(from_stack_1)
  loc_B84741: FLdPr var_134
  loc_B84744:  = Me.Value
  loc_B84749: FLdRfVar var_EC
  loc_B8474C: FLdRfVar var_150
  loc_B8474F: LitVarStr var_14C, "NumeFact"
  loc_B84754: PopAdLdVar
  loc_B84755: FLdRfVar var_13C
  loc_B84758: FLdRfVar var_138
  loc_B8475B: FLdPr Me
  loc_B8475E: MemLdRfVar from_stack_1.global_52
  loc_B84761: NewIfNullPr clsimputacion
  loc_B84764: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B84769: FLdPr var_138
  loc_B8476C:  = Me.Fields
  loc_B84771: FLdPr var_13C
  loc_B84774: from_stack_2 = Me.Item(from_stack_1)
  loc_B84779: FLdPr var_150
  loc_B8477C:  = Me.Value
  loc_B84781: FLdRfVar var_10C
  loc_B84784: FLdRfVar var_16C
  loc_B84787: LitVarStr var_168, "Item"
  loc_B8478C: PopAdLdVar
  loc_B8478D: FLdRfVar var_158
  loc_B84790: FLdRfVar var_154
  loc_B84793: FLdPr Me
  loc_B84796: MemLdRfVar from_stack_1.global_52
  loc_B84799: NewIfNullPr clsimputacion
  loc_B8479C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B847A1: FLdPr var_154
  loc_B847A4:  = Me.Fields
  loc_B847A9: FLdPr var_158
  loc_B847AC: from_stack_2 = Me.Item(from_stack_1)
  loc_B847B1: FLdPr var_16C
  loc_B847B4:  = Me.Value
  loc_B847B9: FLdRfVar var_10C
  loc_B847BC: CStrVarTmp
  loc_B847BD: FStStrNoPop var_170
  loc_B847C0: FLdRfVar var_EC
  loc_B847C3: CStrVarTmp
  loc_B847C4: FStStrNoPop var_CC
  loc_B847C7: FLdRfVar var_DC
  loc_B847CA: CStrVarTmp
  loc_B847CB: FStStrNoPop var_98
  loc_B847CE: FLdRfVar var_C8
  loc_B847D1: CStrVarTmp
  loc_B847D2: FStStrNoPop var_8C
  loc_B847D5: ImpAdLdI2 MemVar_C3D064
  loc_B847D8: FLdPr Me
  loc_B847DB: MemLdRfVar from_stack_1.global_52
  loc_B847DE: NewIfNullPr clsimputacion
  loc_B847E1: Call clsimputacion.PasaraResiduosPasivosMarcarDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_B847E6: FFreeStr var_8C = "": var_98 = "": var_CC = ""
  loc_B847F1: FFreeAd var_A0 = "": var_A4 = "": var_12C = "": var_130 = "": var_138 = "": var_13C = "": var_154 = "": var_158 = "": var_B8 = "": var_134 = "": var_150 = ""
  loc_B8480C: FFreeVar var_C8 = "": var_DC = "": var_EC = ""
  loc_B84817: FLdPr Me
  loc_B8481A: MemLdRfVar from_stack_1.global_52
  loc_B8481D: NewIfNullPr clsimputacion
  loc_B84820: Call clsimputacion.MoveSiguiente()
  loc_B84825: Branch loc_B8447D
  loc_B84828: Branch loc_B84842
  loc_B8482B: FLdUI1
  loc_B8482F: LitI2_Byte 2
  loc_B84831: EqI2
  loc_B84832: BranchF loc_B84838
  loc_B84835: Branch loc_B84842
  loc_B84838: FLdUI1
  loc_B8483C: LitI2_Byte 3
  loc_B8483E: EqI2
  loc_B8483F: BranchF loc_B84842
  loc_B84842: Call Proc_133_16_A302C0()
  loc_B84847: FLdPr Me
  loc_B8484A: MemLdStr global_68
  loc_B8484D: LitI4 0
  loc_B84852: GtI4
  loc_B84853: BranchF loc_B8496D
  loc_B84856: LitI2_Byte 0
  loc_B84858: PopTmpLdAd2 var_10E
  loc_B8485B: LitI2_Byte 0
  loc_B8485D: PopTmpLdAd2 var_9A
  loc_B84860: LitStr "¿Imprime el volante de imputaciones?"
  loc_B84863: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B84868: CI4UI1
  loc_B84869: LitI4 6
  loc_B8486E: EqI4
  loc_B8486F: BranchF loc_B8496D
  loc_B84872: LitStr "Municipalidad de Guaymallén"
  loc_B84875: LitStr "Municipalidad de Maipú"
  loc_B84878: EqStr
  loc_B8487A: BranchF loc_B84909
  loc_B8487D: ImpAdLdRf MemVar_C3DA98
  loc_B84880: NewIfNullAd
  loc_B84883: CastAd
  loc_B84886: FStAdFuncNoPop
  loc_B84889: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B8488E: FFree1Ad var_A0
  loc_B84891: ImpAdLdI2 MemVar_C3D064
  loc_B84894: LitI2_Byte 1
  loc_B84896: AddI2
  loc_B84897: CStrUI1
  loc_B84899: FStStrNoPop var_8C
  loc_B8489C: ImpAdLdRf MemVar_C3DA98
  loc_B8489F: NewIfNullPr rptVolantedeImputacionesExpdePago
  loc_B848A2: VCallAd Control_ID_cboPeriodo
  loc_B848A5: FStAdFunc var_A0
  loc_B848A8: FLdPr var_A0
  loc_B848AB: rptVolantedeImputacionesExpdePago.ComboBox.Text = from_stack_1
  loc_B848B0: FFree1Str var_8C
  loc_B848B3: FFree1Ad var_A0
  loc_B848B6: FLdPr Me
  loc_B848B9: VCallAd Control_ID_FiltroMsk
  loc_B848BC: FStAdFunc var_A0
  loc_B848BF: FLdPr var_A0
  loc_B848C2: LateIdLdVar var_C8 DispID_22 0
  loc_B848C9: CStrVarTmp
  loc_B848CA: FStStrNoPop var_8C
  loc_B848CD: ImpAdLdRf MemVar_C3DA98
  loc_B848D0: NewIfNullPr rptVolantedeImputacionesExpdePago
  loc_B848D3: VCallAd Control_ID_cboExpeImpu
  loc_B848D6: FStAdFunc var_A4
  loc_B848D9: FLdPr var_A4
  loc_B848DC: rptVolantedeImputacionesExpdePago.ComboBox.Text = from_stack_1
  loc_B848E1: FFree1Str var_8C
  loc_B848E4: FFreeAd var_A0 = ""
  loc_B848EB: FFree1Var var_C8 = ""
  loc_B848EE: LitVar_Missing var_FC
  loc_B848F1: PopAdLdVar
  loc_B848F2: LitVarI4
  loc_B848FA: PopAdLdVar
  loc_B848FB: ImpAdLdRf MemVar_C3DA98
  loc_B848FE: NewIfNullPr rptVolantedeImputacionesExpdePago
  loc_B84901: rptVolantedeImputacionesExpdePago.Show from_stack_1, from_stack_2
  loc_B84906: Branch loc_B8496D
  loc_B84909: ImpAdLdRf MemVar_C3D9BC
  loc_B8490C: NewIfNullAd
  loc_B8490F: CastAd
  loc_B84912: FStAdFuncNoPop
  loc_B84915: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B8491A: FFree1Ad var_A0
  loc_B8491D: FLdPr Me
  loc_B84920: VCallAd Control_ID_ExorImpuMsk
  loc_B84923: FStAdFunc var_A0
  loc_B84926: FLdPr var_A0
  loc_B84929: LateIdLdVar var_C8 DispID_15 0
  loc_B84930: CStrVarTmp
  loc_B84931: FStStrNoPop var_8C
  loc_B84934: ImpAdLdRf MemVar_C3D9BC
  loc_B84937: NewIfNullPr rptVolantedeImputaciones
  loc_B8493A: VCallAd Control_ID_cboExorImpu
  loc_B8493D: FStAdFunc var_A4
  loc_B84940: FLdPr var_A4
  loc_B84943: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B84948: FFree1Str var_8C
  loc_B8494B: FFreeAd var_A0 = ""
  loc_B84952: FFree1Var var_C8 = ""
  loc_B84955: LitVar_Missing var_FC
  loc_B84958: PopAdLdVar
  loc_B84959: LitVarI4
  loc_B84961: PopAdLdVar
  loc_B84962: ImpAdLdRf MemVar_C3D9BC
  loc_B84965: NewIfNullPr rptVolantedeImputaciones
  loc_B84968: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B8496D: Call cmdCancelar_Click()
  loc_B84972: Branch loc_B84ADD
  loc_B84975: ILdRf var_90
  loc_B84978: LitStr "btnCancelar"
  loc_B8497B: EqStr
  loc_B8497D: BranchF loc_B84988
  loc_B84980: Call cmdCancelar_Click()
  loc_B84985: Branch loc_B84ADD
  loc_B84988: ILdRf var_90
  loc_B8498B: LitStr "btnPrimero"
  loc_B8498E: EqStr
  loc_B84990: BranchF loc_B849A4
  loc_B84993: FLdPr Me
  loc_B84996: MemLdRfVar from_stack_1.global_52
  loc_B84999: NewIfNullPr clsimputacion
  loc_B8499C: Call clsimputacion.MoveFirst()
  loc_B849A1: Branch loc_B84ADD
  loc_B849A4: ILdRf var_90
  loc_B849A7: LitStr "btnAnterior"
  loc_B849AA: EqStr
  loc_B849AC: BranchF loc_B849C0
  loc_B849AF: FLdPr Me
  loc_B849B2: MemLdRfVar from_stack_1.global_52
  loc_B849B5: NewIfNullPr clsimputacion
  loc_B849B8: Call clsimputacion.MovePrevious()
  loc_B849BD: Branch loc_B84ADD
  loc_B849C0: ILdRf var_90
  loc_B849C3: LitStr "btnSiguiente"
  loc_B849C6: EqStr
  loc_B849C8: BranchF loc_B849DC
  loc_B849CB: FLdPr Me
  loc_B849CE: MemLdRfVar from_stack_1.global_52
  loc_B849D1: NewIfNullPr clsimputacion
  loc_B849D4: Call clsimputacion.MoveNext()
  loc_B849D9: Branch loc_B84ADD
  loc_B849DC: ILdRf var_90
  loc_B849DF: LitStr "btnUltimo"
  loc_B849E2: EqStr
  loc_B849E4: BranchF loc_B849F8
  loc_B849E7: FLdPr Me
  loc_B849EA: MemLdRfVar from_stack_1.global_52
  loc_B849ED: NewIfNullPr clsimputacion
  loc_B849F0: Call clsimputacion.MoveLast()
  loc_B849F5: Branch loc_B84ADD
  loc_B849F8: ILdRf var_90
  loc_B849FB: LitStr "btnFiltrar"
  loc_B849FE: EqStr
  loc_B84A00: BranchF loc_B84A06
  loc_B84A03: Branch loc_B84ADD
  loc_B84A06: ILdRf var_90
  loc_B84A09: LitStr "btnBuscar"
  loc_B84A0C: EqStr
  loc_B84A0E: BranchF loc_B84A14
  loc_B84A11: Branch loc_B84ADD
  loc_B84A14: ILdRf var_90
  loc_B84A17: LitStr "btnImprimir"
  loc_B84A1A: EqStr
  loc_B84A1C: BranchF loc_B84A86
  loc_B84A1F: ImpAdLdRf MemVar_C3D9BC
  loc_B84A22: NewIfNullAd
  loc_B84A25: CastAd
  loc_B84A28: FStAdFuncNoPop
  loc_B84A2B: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B84A30: FFree1Ad var_A0
  loc_B84A33: FLdPr Me
  loc_B84A36: VCallAd Control_ID_ExorImpuMsk
  loc_B84A39: FStAdFunc var_A0
  loc_B84A3C: FLdPr var_A0
  loc_B84A3F: LateIdLdVar var_C8 DispID_15 0
  loc_B84A46: CStrVarTmp
  loc_B84A47: FStStrNoPop var_8C
  loc_B84A4A: ImpAdLdRf MemVar_C3D9BC
  loc_B84A4D: NewIfNullPr rptVolantedeImputaciones
  loc_B84A50: VCallAd Control_ID_cboExorImpu
  loc_B84A53: FStAdFunc var_A4
  loc_B84A56: FLdPr var_A4
  loc_B84A59: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B84A5E: FFree1Str var_8C
  loc_B84A61: FFreeAd var_A0 = ""
  loc_B84A68: FFree1Var var_C8 = ""
  loc_B84A6B: LitVar_Missing var_FC
  loc_B84A6E: PopAdLdVar
  loc_B84A6F: LitVarI4
  loc_B84A77: PopAdLdVar
  loc_B84A78: ImpAdLdRf MemVar_C3D9BC
  loc_B84A7B: NewIfNullPr rptVolantedeImputaciones
  loc_B84A7E: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B84A83: Branch loc_B84ADD
  loc_B84A86: ILdRf var_90
  loc_B84A89: LitStr "btnAyuda"
  loc_B84A8C: EqStr
  loc_B84A8E: BranchF loc_B84ABD
  loc_B84A91: LitVar_Missing var_10C
  loc_B84A94: LitVar_Missing var_EC
  loc_B84A97: LitVar_Missing var_DC
  loc_B84A9A: LitI4 0
  loc_B84A9F: LitVarStr var_B4, "Opcion no disponible en esta version."
  loc_B84AA4: FStVarCopyObj var_C8
  loc_B84AA7: FLdRfVar var_C8
  loc_B84AAA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B84AAF: FFreeVar var_C8 = "": var_DC = "": var_EC = ""
  loc_B84ABA: Branch loc_B84ADD
  loc_B84ABD: ILdRf var_90
  loc_B84AC0: LitStr "btnSalir"
  loc_B84AC3: EqStr
  loc_B84AC5: BranchF loc_B84ADD
  loc_B84AC8: ILdRf Me
  loc_B84ACB: FStAdNoPop
  loc_B84ACF: ImpAdLdRf MemVar_C44F9C
  loc_B84AD2: NewIfNullPr Me
  loc_B84AD5: Me.Global.Unload from_stack_1
  loc_B84ADA: FFree1Ad var_A0
  loc_B84ADD: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_0 'A54030
  'Data Table: 4F588C
  loc_A53DD4: FLdPr Me
  loc_A53DD7: VCallAd Control_ID_FechImpuMsk
  loc_A53DDA: FStAdFunc var_88
  loc_A53DDD: FLdPr var_88
  loc_A53DE0: LateIdLdVar var_98 DispID_20 0
  loc_A53DE7: CStrVarTmp
  loc_A53DE8: FStStrNoPop var_9C
  loc_A53DEB: LitStr vbNullString
  loc_A53DEE: EqStr
  loc_A53DF0: FFree1Str var_9C
  loc_A53DF3: FFree1Ad var_88
  loc_A53DF6: FFree1Var var_98 = ""
  loc_A53DF9: BranchF loc_A5401C
  loc_A53DFC: FLdRfVar var_168
  loc_A53DFF: FLdRfVar var_B4
  loc_A53E02: LitVarStr var_B0, "ExorImpu"
  loc_A53E07: PopAdLdVar
  loc_A53E08: FLdRfVar var_A0
  loc_A53E0B: FLdRfVar var_88
  loc_A53E0E: FLdPr Me
  loc_A53E11: MemLdRfVar from_stack_1.global_52
  loc_A53E14: NewIfNullPr clsimputacion
  loc_A53E17: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A53E1C: FLdPr var_88
  loc_A53E1F:  = Me.Fields
  loc_A53E24: FLdPr var_A0
  loc_A53E27: from_stack_2 = Me.Item(from_stack_1)
  loc_A53E2C: FLdPr var_B4
  loc_A53E2F:  = Me.Value
  loc_A53E34: FLdRfVar var_178
  loc_A53E37: FLdRfVar var_D0
  loc_A53E3A: LitVarStr var_CC, "CodiNope"
  loc_A53E3F: PopAdLdVar
  loc_A53E40: FLdRfVar var_BC
  loc_A53E43: FLdRfVar var_B8
  loc_A53E46: FLdPr Me
  loc_A53E49: MemLdRfVar from_stack_1.global_52
  loc_A53E4C: NewIfNullPr clsimputacion
  loc_A53E4F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A53E54: FLdPr var_B8
  loc_A53E57:  = Me.Fields
  loc_A53E5C: FLdPr var_BC
  loc_A53E5F: from_stack_2 = Me.Item(from_stack_1)
  loc_A53E64: FLdPr var_D0
  loc_A53E67:  = Me.Value
  loc_A53E6C: FLdRfVar var_188
  loc_A53E6F: FLdRfVar var_EC
  loc_A53E72: LitVarStr var_E8, "Item"
  loc_A53E77: PopAdLdVar
  loc_A53E78: FLdRfVar var_D8
  loc_A53E7B: FLdRfVar var_D4
  loc_A53E7E: FLdPr Me
  loc_A53E81: MemLdRfVar from_stack_1.global_52
  loc_A53E84: NewIfNullPr clsimputacion
  loc_A53E87: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A53E8C: FLdPr var_D4
  loc_A53E8F:  = Me.Fields
  loc_A53E94: FLdPr var_D8
  loc_A53E97: from_stack_2 = Me.Item(from_stack_1)
  loc_A53E9C: FLdPr var_EC
  loc_A53E9F:  = Me.Value
  loc_A53EA4: FLdRfVar var_198
  loc_A53EA7: FLdRfVar var_108
  loc_A53EAA: LitVarStr var_104, "Altern"
  loc_A53EAF: PopAdLdVar
  loc_A53EB0: FLdRfVar var_F4
  loc_A53EB3: FLdRfVar var_F0
  loc_A53EB6: FLdPr Me
  loc_A53EB9: MemLdRfVar from_stack_1.global_52
  loc_A53EBC: NewIfNullPr clsimputacion
  loc_A53EBF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A53EC4: FLdPr var_F0
  loc_A53EC7:  = Me.Fields
  loc_A53ECC: FLdPr var_F4
  loc_A53ECF: from_stack_2 = Me.Item(from_stack_1)
  loc_A53ED4: FLdPr var_108
  loc_A53ED7:  = Me.Value
  loc_A53EDC: FLdRfVar var_1A8
  loc_A53EDF: FLdRfVar var_124
  loc_A53EE2: LitVarStr var_120, "CodiOrco"
  loc_A53EE7: PopAdLdVar
  loc_A53EE8: FLdRfVar var_110
  loc_A53EEB: FLdRfVar var_10C
  loc_A53EEE: FLdPr Me
  loc_A53EF1: MemLdRfVar from_stack_1.global_52
  loc_A53EF4: NewIfNullPr clsimputacion
  loc_A53EF7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A53EFC: FLdPr var_10C
  loc_A53EFF:  = Me.Fields
  loc_A53F04: FLdPr var_110
  loc_A53F07: from_stack_2 = Me.Item(from_stack_1)
  loc_A53F0C: FLdPr var_124
  loc_A53F0F:  = Me.Value
  loc_A53F14: FLdRfVar var_1B8
  loc_A53F17: FLdRfVar var_140
  loc_A53F1A: LitVarStr var_13C, "CodiRece"
  loc_A53F1F: PopAdLdVar
  loc_A53F20: FLdRfVar var_12C
  loc_A53F23: FLdRfVar var_128
  loc_A53F26: FLdPr Me
  loc_A53F29: MemLdRfVar from_stack_1.global_52
  loc_A53F2C: NewIfNullPr clsimputacion
  loc_A53F2F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A53F34: FLdPr var_128
  loc_A53F37:  = Me.Fields
  loc_A53F3C: FLdPr var_12C
  loc_A53F3F: from_stack_2 = Me.Item(from_stack_1)
  loc_A53F44: FLdPr var_140
  loc_A53F47:  = Me.Value
  loc_A53F4C: FLdPr Me
  loc_A53F4F: VCallAd Control_ID_CodiPartMsk
  loc_A53F52: FStAdFunc var_144
  loc_A53F55: FLdPr var_144
  loc_A53F58: LateIdLdVar var_98 DispID_22 0
  loc_A53F5F: PopAd
  loc_A53F61: FLdPr Me
  loc_A53F64: VCallAd Control_ID_CodiOrgaMsk
  loc_A53F67: FStAdFunc var_148
  loc_A53F6A: FLdPr var_148
  loc_A53F6D: LateIdLdVar var_158 DispID_22 0
  loc_A53F74: PopAd
  loc_A53F76: FLdRfVar var_1C4
  loc_A53F79: FLdRfVar var_158
  loc_A53F7C: CStrVarTmp
  loc_A53F7D: FStStrNoPop var_1C0
  loc_A53F80: FLdRfVar var_98
  loc_A53F83: CStrVarTmp
  loc_A53F84: FStStrNoPop var_1BC
  loc_A53F87: FLdRfVar var_1B8
  loc_A53F8A: CI2Var
  loc_A53F8B: FLdRfVar var_1A8
  loc_A53F8E: CI2Var
  loc_A53F8F: FLdRfVar var_198
  loc_A53F92: CI2Var
  loc_A53F93: FLdRfVar var_188
  loc_A53F96: CI2Var
  loc_A53F97: FLdRfVar var_178
  loc_A53F9A: CI4Var
  loc_A53F9C: FLdRfVar var_168
  loc_A53F9F: CStrVarTmp
  loc_A53FA0: FStStrNoPop var_9C
  loc_A53FA3: LitStr "Devengado"
  loc_A53FA6: CI2Str
  loc_A53FA8: ImpAdLdI2 MemVar_C3D064
  loc_A53FAB: FLdPr Me
  loc_A53FAE: MemLdRfVar from_stack_1.global_52
  loc_A53FB1: NewIfNullPr clsimputacion
  loc_A53FB4: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_A53FB9: FLdZeroAd var_1C4
  loc_A53FBC: CVarStr var_1D4
  loc_A53FBF: PopAdLdVar
  loc_A53FC0: FLdPr Me
  loc_A53FC3: VCallAd Control_ID_FechImpuMsk
  loc_A53FC6: FStAdFunc var_1E8
  loc_A53FC9: FLdPr var_1E8
  loc_A53FCC: LateIdSt
  loc_A53FD1: FFreeStr var_9C = "": var_1BC = ""
  loc_A53FDA: FFreeAd var_88 = "": var_A0 = "": var_B8 = "": var_BC = "": var_D4 = "": var_D8 = "": var_F0 = "": var_F4 = "": var_10C = "": var_110 = "": var_128 = "": var_12C = "": var_144 = "": var_148 = "": var_B4 = "": var_D0 = "": var_EC = "": var_108 = "": var_124 = "": var_140 = ""
  loc_A54007: FFreeVar var_98 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = ""
  loc_A5401C: FLdPr Me
  loc_A5401F: VCallAd Control_ID_FechImpuMsk
  loc_A54022: CVarAd
  loc_A54026: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A5402B: FFree1Var var_98 = ""
  loc_A5402E: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_8 'A5A900
  'Data Table: 4F588C
  loc_A5A66C: FLdRfVar var_8A
  loc_A5A66F: FLdPr Me
  loc_A5A672: VCallAd Control_ID_cmdCancelar
  loc_A5A675: FStAdFunc var_88
  loc_A5A678: FLdPr var_88
  loc_A5A67B:  = Me.Value
  loc_A5A680: FLdI2 var_8A
  loc_A5A683: NotI4
  loc_A5A684: FLdPr Me
  loc_A5A687: VCallAd Control_ID_FechImpuMsk
  loc_A5A68A: FStAdFunc var_90
  loc_A5A68D: FLdPr var_90
  loc_A5A690: LateIdLdVar var_A0 DispID_13 -32767
  loc_A5A697: CBoolVar
  loc_A5A699: AndI4
  loc_A5A69A: FFreeAd var_88 = ""
  loc_A5A6A1: FFree1Var var_A0 = ""
  loc_A5A6A4: BranchF loc_A5A8FD
  loc_A5A6A7: FLdPr Me
  loc_A5A6AA: VCallAd Control_ID_FechImpuMsk
  loc_A5A6AD: FStAdFunc var_88
  loc_A5A6B0: FLdPr var_88
  loc_A5A6B3: LateIdLdVar var_A0 DispID_15 0
  loc_A5A6BA: PopAd
  loc_A5A6BC: FLdRfVar var_154
  loc_A5A6BF: FLdRfVar var_B8
  loc_A5A6C2: LitVarStr var_B4, "ExorImpu"
  loc_A5A6C7: PopAdLdVar
  loc_A5A6C8: FLdRfVar var_A4
  loc_A5A6CB: FLdRfVar var_90
  loc_A5A6CE: FLdPr Me
  loc_A5A6D1: MemLdRfVar from_stack_1.global_52
  loc_A5A6D4: NewIfNullPr clsimputacion
  loc_A5A6D7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5A6DC: FLdPr var_90
  loc_A5A6DF:  = Me.Fields
  loc_A5A6E4: FLdPr var_A4
  loc_A5A6E7: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A6EC: FLdPr var_B8
  loc_A5A6EF:  = Me.Value
  loc_A5A6F4: FLdRfVar var_168
  loc_A5A6F7: FLdRfVar var_D4
  loc_A5A6FA: LitVarStr var_D0, "CodiNope"
  loc_A5A6FF: PopAdLdVar
  loc_A5A700: FLdRfVar var_C0
  loc_A5A703: FLdRfVar var_BC
  loc_A5A706: FLdPr Me
  loc_A5A709: MemLdRfVar from_stack_1.global_52
  loc_A5A70C: NewIfNullPr clsimputacion
  loc_A5A70F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5A714: FLdPr var_BC
  loc_A5A717:  = Me.Fields
  loc_A5A71C: FLdPr var_C0
  loc_A5A71F: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A724: FLdPr var_D4
  loc_A5A727:  = Me.Value
  loc_A5A72C: FLdRfVar var_178
  loc_A5A72F: FLdRfVar var_F0
  loc_A5A732: LitVarStr var_EC, "Item"
  loc_A5A737: PopAdLdVar
  loc_A5A738: FLdRfVar var_DC
  loc_A5A73B: FLdRfVar var_D8
  loc_A5A73E: FLdPr Me
  loc_A5A741: MemLdRfVar from_stack_1.global_52
  loc_A5A744: NewIfNullPr clsimputacion
  loc_A5A747: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5A74C: FLdPr var_D8
  loc_A5A74F:  = Me.Fields
  loc_A5A754: FLdPr var_DC
  loc_A5A757: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A75C: FLdPr var_F0
  loc_A5A75F:  = Me.Value
  loc_A5A764: FLdRfVar var_188
  loc_A5A767: FLdRfVar var_10C
  loc_A5A76A: LitVarStr var_108, "Altern"
  loc_A5A76F: PopAdLdVar
  loc_A5A770: FLdRfVar var_F8
  loc_A5A773: FLdRfVar var_F4
  loc_A5A776: FLdPr Me
  loc_A5A779: MemLdRfVar from_stack_1.global_52
  loc_A5A77C: NewIfNullPr clsimputacion
  loc_A5A77F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5A784: FLdPr var_F4
  loc_A5A787:  = Me.Fields
  loc_A5A78C: FLdPr var_F8
  loc_A5A78F: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A794: FLdPr var_10C
  loc_A5A797:  = Me.Value
  loc_A5A79C: FLdRfVar var_198
  loc_A5A79F: FLdRfVar var_128
  loc_A5A7A2: LitVarStr var_124, "CodiOrco"
  loc_A5A7A7: PopAdLdVar
  loc_A5A7A8: FLdRfVar var_114
  loc_A5A7AB: FLdRfVar var_110
  loc_A5A7AE: FLdPr Me
  loc_A5A7B1: MemLdRfVar from_stack_1.global_52
  loc_A5A7B4: NewIfNullPr clsimputacion
  loc_A5A7B7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5A7BC: FLdPr var_110
  loc_A5A7BF:  = Me.Fields
  loc_A5A7C4: FLdPr var_114
  loc_A5A7C7: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A7CC: FLdPr var_128
  loc_A5A7CF:  = Me.Value
  loc_A5A7D4: FLdRfVar var_1A8
  loc_A5A7D7: FLdRfVar var_144
  loc_A5A7DA: LitVarStr var_140, "CodiRece"
  loc_A5A7DF: PopAdLdVar
  loc_A5A7E0: FLdRfVar var_130
  loc_A5A7E3: FLdRfVar var_12C
  loc_A5A7E6: FLdPr Me
  loc_A5A7E9: MemLdRfVar from_stack_1.global_52
  loc_A5A7EC: NewIfNullPr clsimputacion
  loc_A5A7EF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5A7F4: FLdPr var_12C
  loc_A5A7F7:  = Me.Fields
  loc_A5A7FC: FLdPr var_130
  loc_A5A7FF: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A804: FLdPr var_144
  loc_A5A807:  = Me.Value
  loc_A5A80C: FLdRfVar var_1AC
  loc_A5A80F: LitStr vbNullString
  loc_A5A812: LitStr vbNullString
  loc_A5A815: FLdRfVar var_1A8
  loc_A5A818: CI2Var
  loc_A5A819: FLdRfVar var_198
  loc_A5A81C: CI2Var
  loc_A5A81D: FLdRfVar var_188
  loc_A5A820: CI2Var
  loc_A5A821: FLdRfVar var_178
  loc_A5A824: CI2Var
  loc_A5A825: FLdRfVar var_168
  loc_A5A828: CI4Var
  loc_A5A82A: FLdRfVar var_154
  loc_A5A82D: CStrVarTmp
  loc_A5A82E: FStStrNoPop var_158
  loc_A5A831: LitI2_Byte 7
  loc_A5A833: ImpAdLdI2 MemVar_C3D064
  loc_A5A836: FLdPr Me
  loc_A5A839: MemLdRfVar from_stack_1.global_52
  loc_A5A83C: NewIfNullPr clsimputacion
  loc_A5A83F: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_A5A844: FLdPr Me
  loc_A5A847: VCallAd Control_ID_FechImpuMsk
  loc_A5A84A: FStAdFunc var_1BC
  loc_A5A84D: LitI2_Byte &HFF
  loc_A5A84F: PopTmpLdAd2 var_8A
  loc_A5A852: FLdZeroAd var_1BC
  loc_A5A855: FStAdFunc var_1B4
  loc_A5A858: FLdRfVar var_1B4
  loc_A5A85B: ILdRf var_1AC
  loc_A5A85E: LitI2_Byte &HFF
  loc_A5A860: LitI2_Byte &HFF
  loc_A5A862: FLdRfVar var_A0
  loc_A5A865: CStrVarTmp
  loc_A5A866: FStStrNoPop var_1B0
  loc_A5A869: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A5A86E: FStStrNoPop var_1B8
  loc_A5A871: FLdPr Me
  loc_A5A874: MemStStrCopy
  loc_A5A878: FFreeStr var_158 = "": var_1B0 = "": var_1AC = ""
  loc_A5A883: FFreeAd var_88 = "": var_90 = "": var_A4 = "": var_BC = "": var_C0 = "": var_D8 = "": var_DC = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_B8 = "": var_D4 = "": var_F0 = "": var_10C = "": var_128 = "": var_144 = "": var_1B4 = ""
  loc_A5A8B0: FFreeVar var_A0 = "": var_154 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = ""
  loc_A5A8C1: FLdPr Me
  loc_A5A8C4: VCallAd Control_ID_FechImpuMsk
  loc_A5A8C7: FStAdFunc var_B8
  loc_A5A8CA: LitNothing
  loc_A5A8CC: CastAd
  loc_A5A8CF: FStAdFunc var_A4
  loc_A5A8D2: FLdRfVar var_A4
  loc_A5A8D5: FLdZeroAd var_B8
  loc_A5A8D8: FStAdFuncNoPop
  loc_A5A8DB: CastAd
  loc_A5A8DE: FStAdFunc var_90
  loc_A5A8E1: FLdRfVar var_90
  loc_A5A8E4: FLdPr Me
  loc_A5A8E7: MemLdRfVar from_stack_1.global_64
  loc_A5A8EA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A5A8EF: IStI2 Button
  loc_A5A8F2: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A5A8FD: ExitProcHresult
  loc_A5A8FE: ILdPr
End Sub

Private Sub FechImpuMsk_KeyPress(KeyAscii As Integer) '98A4C0
  'Data Table: 4F588C
  loc_98A47C: ILdI2 KeyAscii
  loc_98A47F: CI4UI1
  loc_98A480: LitI4 &H20
  loc_98A485: EqI4
  loc_98A486: BranchF loc_98A4BC
  loc_98A489: LitVar_Missing var_A4
  loc_98A48C: PopAdLdVar
  loc_98A48D: LitVarI4
  loc_98A495: PopAdLdVar
  loc_98A496: ImpAdLdRf MemVar_C3D9A8
  loc_98A499: NewIfNullPr frmCalendario
  loc_98A49C: frmCalendario.Show from_stack_1, from_stack_2
  loc_98A4A1: ImpAdLdRf MemVar_C3D038
  loc_98A4A4: CDargRef
  loc_98A4A8: FLdPr Me
  loc_98A4AB: VCallAd Control_ID_FechImpuMsk
  loc_98A4AE: FStAdFunc var_A8
  loc_98A4B1: FLdPr var_A8
  loc_98A4B4: LateIdSt
  loc_98A4B9: FFree1Ad var_A8
  loc_98A4BC: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9B82F4
  'Data Table: 4F588C
  loc_9B823C: LitVarStr var_94, vbNullString
  loc_9B8241: PopAdLdVar
  loc_9B8242: FLdPr Me
  loc_9B8245: VCallAd Control_ID_FiltroMsk
  loc_9B8248: FStAdFunc var_A8
  loc_9B824B: FLdPr var_A8
  loc_9B824E: LateIdSt
  loc_9B8253: FFree1Ad var_A8
  loc_9B8256: FLdRfVar var_AA
  loc_9B8259: FLdPr Me
  loc_9B825C: VCallAd Control_ID_FiltroCbo
  loc_9B825F: FStAdFunc var_A8
  loc_9B8262: FLdPr var_A8
  loc_9B8265:  = Me.ListIndex
  loc_9B826A: FLdI2 var_AA
  loc_9B826D: FStI2 var_AC
  loc_9B8270: FFree1Ad var_A8
  loc_9B8273: FLdI2 var_AC
  loc_9B8276: LitI2_Byte 0
  loc_9B8278: EqI2
  loc_9B8279: BranchF loc_9B82B3
  loc_9B827C: LitVarStr var_94, vbNullString
  loc_9B8281: PopAdLdVar
  loc_9B8282: FLdPr Me
  loc_9B8285: VCallAd Control_ID_FiltroMsk
  loc_9B8288: FStAdFunc var_A8
  loc_9B828B: FLdPr var_A8
  loc_9B828E: LateIdSt
  loc_9B8293: FFree1Ad var_A8
  loc_9B8296: LitStr "ExpeImpu"
  loc_9B8299: FStStrCopy var_B0
  loc_9B829C: FLdRfVar var_B0
  loc_9B829F: FLdPr Me
  loc_9B82A2: MemLdRfVar from_stack_1.global_52
  loc_9B82A5: NewIfNullPr clsimputacion
  loc_9B82A8: Call clsimputacion.Sort(from_stack_1v)
  loc_9B82AD: FFree1Str var_B0
  loc_9B82B0: Branch loc_9B82F0
  loc_9B82B3: FLdI2 var_AC
  loc_9B82B6: LitI2_Byte 1
  loc_9B82B8: EqI2
  loc_9B82B9: BranchF loc_9B82F0
  loc_9B82BC: LitVarStr var_94, vbNullString
  loc_9B82C1: PopAdLdVar
  loc_9B82C2: FLdPr Me
  loc_9B82C5: VCallAd Control_ID_FiltroMsk
  loc_9B82C8: FStAdFunc var_A8
  loc_9B82CB: FLdPr var_A8
  loc_9B82CE: LateIdSt
  loc_9B82D3: FFree1Ad var_A8
  loc_9B82D6: LitStr "ExpeImpu"
  loc_9B82D9: FStStrCopy var_B0
  loc_9B82DC: FLdRfVar var_B0
  loc_9B82DF: FLdPr Me
  loc_9B82E2: MemLdRfVar from_stack_1.global_52
  loc_9B82E5: NewIfNullPr clsimputacion
  loc_9B82E8: Call clsimputacion.Sort(from_stack_1v)
  loc_9B82ED: FFree1Str var_B0
  loc_9B82F0: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9FFF04
  'Data Table: 4F588C
  loc_9FFDB8: LitI2_Byte 0
  loc_9FFDBA: CUI1I2
  loc_9FFDBC: FLdPr Me
  loc_9FFDBF: MemStUI1
  loc_9FFDC3: ILdRf Me
  loc_9FFDC6: CastAd
  loc_9FFDC9: FStAdFunc var_88
  loc_9FFDCC: FLdRfVar var_88
  loc_9FFDCF: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9FFDD4: FFree1Ad var_88
  loc_9FFDD7: LitI4 0
  loc_9FFDDC: LitI4 0
  loc_9FFDE1: FLdRfVar var_8C
  loc_9FFDE4: Redim
  loc_9FFDEE: FLdPr Me
  loc_9FFDF1: VCallAd Control_ID_dgdABMS
  loc_9FFDF4: CVarAd
  loc_9FFDF8: ParmAry1St
  loc_9FFDFE: FLdRfVar var_8C
  loc_9FFE01: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9FFE06: FLdRfVar var_8C
  loc_9FFE09: Erase
  loc_9FFE0A: FLdPr Me
  loc_9FFE0D: MemLdRfVar from_stack_1.global_52
  loc_9FFE10: NewIfNullAd
  loc_9FFE13: FStAd var_A0 
  loc_9FFE17: FLdRfVar var_A0
  loc_9FFE1A: CVarRef
  loc_9FFE1F: ILdRf Me
  loc_9FFE22: CastAd
  loc_9FFE25: FStAdFunc var_88
  loc_9FFE28: FLdRfVar var_88
  loc_9FFE2B: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9FFE30: ILdRf var_A0
  loc_9FFE33: CastAd
  loc_9FFE36: FLdPr Me
  loc_9FFE39: MemStAdFunc
  loc_9FFE3D: FFreeAd var_88 = ""
  loc_9FFE44: FLdRfVar var_B4
  loc_9FFE47: FLdPr Me
  loc_9FFE4A: MemLdRfVar from_stack_1.global_52
  loc_9FFE4D: NewIfNullPr clsimputacion
  loc_9FFE50: from_stack_1 = clsimputacion.RecordCount
  loc_9FFE55: ILdRf var_B4
  loc_9FFE58: LitI4 0
  loc_9FFE5D: EqI4
  loc_9FFE5E: BranchF loc_9FFEBC
  loc_9FFE61: ILdRf Me
  loc_9FFE64: CastAd
  loc_9FFE67: FStAdFunc var_88
  loc_9FFE6A: FLdRfVar var_88
  loc_9FFE6D: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_9FFE72: FFree1Ad var_88
  loc_9FFE75: ILdRf Me
  loc_9FFE78: CastAd
  loc_9FFE7B: FStAdFunc var_88
  loc_9FFE7E: FLdRfVar var_88
  loc_9FFE81: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_9FFE86: FFree1Ad var_88
  loc_9FFE89: LitI4 0
  loc_9FFE8E: LitI4 0
  loc_9FFE93: FLdRfVar var_8C
  loc_9FFE96: Redim
  loc_9FFEA0: FLdPr Me
  loc_9FFEA3: VCallAd Control_ID_dgdABMS
  loc_9FFEA6: CVarAd
  loc_9FFEAA: ParmAry1St
  loc_9FFEB0: FLdRfVar var_8C
  loc_9FFEB3: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9FFEB8: FLdRfVar var_8C
  loc_9FFEBB: Erase
  loc_9FFEBC: ILdRf Me
  loc_9FFEBF: CastAd
  loc_9FFEC2: FStAdFunc var_88
  loc_9FFEC5: FLdRfVar var_88
  loc_9FFEC8: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9FFECD: FFree1Ad var_88
  loc_9FFED0: FLdPr Me
  loc_9FFED3: VCallAd Control_ID_dgdABMS
  loc_9FFED6: FStAdFunc var_A0
  loc_9FFED9: LitI4 0
  loc_9FFEDE: FStStrCopy var_B8
  loc_9FFEE1: FLdRfVar var_B8
  loc_9FFEE4: FLdPr Me
  loc_9FFEE7: MemLdStr global_72
  loc_9FFEEA: FLdZeroAd var_A0
  loc_9FFEED: FStAdFunc var_88
  loc_9FFEF0: FLdRfVar var_88
  loc_9FFEF3: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9FFEF8: FFree1Str var_B8
  loc_9FFEFB: FFreeAd var_88 = ""
  loc_9FFF02: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95DAC4
  'Data Table: 4F588C
  loc_95DAAC: FLdPr Me
  loc_95DAAF: VCallAd Control_ID_dgdABMS
  loc_95DAB2: FStAdFunc var_88
  loc_95DAB5: FLdRfVar var_88
  loc_95DAB8: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95DABD: FFree1Ad var_88
  loc_95DAC0: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95E100
  'Data Table: 4F588C
  loc_95E0E8: FLdPr Me
  loc_95E0EB: VCallAd Control_ID_dgdABMS
  loc_95E0EE: FStAdFunc var_88
  loc_95E0F1: FLdRfVar var_88
  loc_95E0F4: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95E0F9: FFree1Ad var_88
  loc_95E0FC: ExitProcHresult
  loc_95E0FD: StAryRecMove
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A894
  'Data Table: 4F588C
  loc_99A838: FLdRfVar var_B4
  loc_99A83B: FLdRfVar var_B0
  loc_99A83E: FLdI2 ColIndex
  loc_99A841: CVarI2 var_A8
  loc_99A844: PopAdLdVar
  loc_99A845: FLdPr Me
  loc_99A848: VCallAd Control_ID_dgdABMS
  loc_99A84B: FStAdFunc var_88
  loc_99A84E: FLdPr var_88
  loc_99A851: LateIdLdVar var_98 DispID_105 0
  loc_99A858: CastAdVar Me
  loc_99A85C: FStAdFunc var_AC
  loc_99A85F: FLdPr var_AC
  loc_99A862: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A867: FLdPr var_B0
  loc_99A86A:  = Me.DataField
  loc_99A86F: FLdZeroAd var_B4
  loc_99A872: PopTmpLdAdStr
  loc_99A876: FLdPr Me
  loc_99A879: MemLdRfVar from_stack_1.global_52
  loc_99A87C: NewIfNullPr clsimputacion
  loc_99A87F: Call clsimputacion.Sort(from_stack_1v)
  loc_99A884: FFree1Str var_B8
  loc_99A887: FFreeAd var_88 = "": var_AC = ""
  loc_99A890: FFree1Var var_98 = ""
  loc_99A893: ExitProcHresult
End Sub

Private Function Proc_133_16_A302C0() 'A302C0
  'Data Table: 4F588C
  loc_A300E4: LitI2_Byte 0
  loc_A300E6: CR8I2
  loc_A300E7: FLdPr Me
  loc_A300EA: MemStFPR8 global_96
  loc_A300ED: LitI4 &HB
  loc_A300F2: CI2I4
  loc_A300F3: FLdPr Me
  loc_A300F6: Me.MousePointer = from_stack_1
  loc_A300FB: FLdPr Me
  loc_A300FE: VCallAd Control_ID_FiltroMsk
  loc_A30101: FStAdFunc var_88
  loc_A30104: FLdPr var_88
  loc_A30107: LateIdLdVar var_98 DispID_22 0
  loc_A3010E: PopAd
  loc_A30110: LitVarI2 var_DC, 0
  loc_A30115: ImpAdLdRf MemVar_C3D064
  loc_A30118: CVarRef
  loc_A3011D: FLdRfVar var_98
  loc_A30120: CStrVarTmp
  loc_A30121: FStStrNoPop var_9C
  loc_A30124: LitStr vbNullString
  loc_A30127: NeStr
  loc_A30129: CVarBoolI2 var_AC
  loc_A3012D: FLdRfVar var_EC
  loc_A30130: ImpAdCallFPR4  = IIf(, , )
  loc_A30135: FLdPr Me
  loc_A30138: VCallAd Control_ID_FiltroMsk
  loc_A3013B: FStAdFunc var_F0
  loc_A3013E: FLdPr var_F0
  loc_A30141: LateIdLdVar var_100 DispID_22 0
  loc_A30148: PopAd
  loc_A3014A: FLdPr Me
  loc_A3014D: VCallAd Control_ID_FiltroMsk
  loc_A30150: FStAdFunc var_104
  loc_A30153: FLdPr var_104
  loc_A30156: LateIdLdVar var_114 DispID_22 0
  loc_A3015D: PopAd
  loc_A3015F: FLdPr Me
  loc_A30162: VCallAd Control_ID_FiltroCbo
  loc_A30165: FStAdFunc var_120
  loc_A30168: FLdRfVar var_120
  loc_A3016B: FLdRfVar var_114
  loc_A3016E: CStrVarTmp
  loc_A3016F: FStStrNoPop var_11C
  loc_A30172: FLdRfVar var_100
  loc_A30175: CStrVarTmp
  loc_A30176: FStStrNoPop var_118
  loc_A30179: FLdRfVar var_EC
  loc_A3017C: CI2Var
  loc_A3017D: FLdPr Me
  loc_A30180: MemLdRfVar from_stack_1.global_52
  loc_A30183: NewIfNullPr clsimputacion
  loc_A30186: Call clsimputacion.PasaraResiduosPasivos(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A3018B: FFreeStr var_9C = "": var_118 = ""
  loc_A30194: FFreeAd var_88 = "": var_F0 = "": var_104 = ""
  loc_A3019F: FFreeVar var_98 = "": var_AC = "": var_DC = "": var_100 = "": var_114 = ""
  loc_A301AE: FLdRfVar var_124
  loc_A301B1: FLdPr Me
  loc_A301B4: MemLdRfVar from_stack_1.global_52
  loc_A301B7: NewIfNullPr clsimputacion
  loc_A301BA: from_stack_1 = clsimputacion.RecordCount
  loc_A301BF: ILdRf var_124
  loc_A301C2: LitI4 0
  loc_A301C7: GtI4
  loc_A301C8: BranchF loc_A30262
  loc_A301CB: FLdPr Me
  loc_A301CE: MemLdRfVar from_stack_1.global_52
  loc_A301D1: NewIfNullPr clsimputacion
  loc_A301D4: Call clsimputacion.MoveFirst()
  loc_A301D9: FLdRfVar var_126
  loc_A301DC: FLdPr Me
  loc_A301DF: MemLdRfVar from_stack_1.global_52
  loc_A301E2: NewIfNullPr clsimputacion
  loc_A301E5: from_stack_1 = clsimputacion.EOF
  loc_A301EA: FLdI2 var_126
  loc_A301ED: NotI4
  loc_A301EE: BranchF loc_A30262
  loc_A301F1: FLdPr Me
  loc_A301F4: MemLdFPR8 global_96
  loc_A301F7: CVarR8
  loc_A301FB: FLdRfVar var_98
  loc_A301FE: FLdRfVar var_104
  loc_A30201: LitVarStr var_AC, "DeveImpu"
  loc_A30206: PopAdLdVar
  loc_A30207: FLdRfVar var_F0
  loc_A3020A: FLdRfVar var_88
  loc_A3020D: FLdPr Me
  loc_A30210: MemLdRfVar from_stack_1.global_52
  loc_A30213: NewIfNullPr clsimputacion
  loc_A30216: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A3021B: FLdPr var_88
  loc_A3021E:  = Me.Fields
  loc_A30223: FLdPr var_F0
  loc_A30226: from_stack_2 = Me.Item(from_stack_1)
  loc_A3022B: FLdPr var_104
  loc_A3022E:  = Me.Value
  loc_A30233: FLdRfVar var_98
  loc_A30236: AddVar var_DC
  loc_A3023A: CR4Var
  loc_A3023B: FLdPr Me
  loc_A3023E: MemStFPR8 global_96
  loc_A30241: FFreeAd var_88 = "": var_F0 = ""
  loc_A3024A: FFreeVar var_98 = ""
  loc_A30251: FLdPr Me
  loc_A30254: MemLdRfVar from_stack_1.global_52
  loc_A30257: NewIfNullPr clsimputacion
  loc_A3025A: Call clsimputacion.MoveSiguiente()
  loc_A3025F: Branch loc_A301D9
  loc_A30262: LitI4 1
  loc_A30267: LitI4 1
  loc_A3026C: LitVarStr var_BC, "###,###,##0.00"
  loc_A30271: FStVarCopyObj var_98
  loc_A30274: FLdRfVar var_98
  loc_A30277: FLdPr Me
  loc_A3027A: MemLdRfVar from_stack_1.global_96
  loc_A3027D: CVarRef
  loc_A30282: FLdRfVar var_DC
  loc_A30285: ImpAdCallFPR4  = Format(, )
  loc_A3028A: FLdRfVar var_DC
  loc_A3028D: CStrVarVal var_9C
  loc_A30291: FLdPr Me
  loc_A30294: VCallAd Control_ID_lblTotal
  loc_A30297: FStAdFunc var_88
  loc_A3029A: FLdPr var_88
  loc_A3029D: Me.Caption = from_stack_1
  loc_A302A2: FFree1Str var_9C
  loc_A302A5: FFree1Ad var_88
  loc_A302A8: FFreeVar var_98 = ""
  loc_A302AF: LitI4 0
  loc_A302B4: CI2I4
  loc_A302B5: FLdPr Me
  loc_A302B8: Me.MousePointer = from_stack_1
  loc_A302BD: ExitProcHresult
  loc_A302BE: CCyI2
  loc_A302BF: LitI2_Byte &H14
End Function

Private Function Proc_133_17_B390A4(arg_C, arg_10, arg_14) 'B390A4
  'Data Table: 4F588C
  loc_B38778: ILdRf arg_C
  loc_B3877B: FStStrCopy var_88
  loc_B3877E: ILdRf arg_10
  loc_B38781: FStStrCopy var_8C
  loc_B38784: ILdRf arg_14
  loc_B38787: FStStrCopy var_90
  loc_B3878A: ILdRf var_88
  loc_B3878D: LitStr vbNullString
  loc_B38790: EqStr
  loc_B38792: ILdRf var_8C
  loc_B38795: LitStr vbNullString
  loc_B38798: EqStr
  loc_B3879A: OrI4
  loc_B3879B: ILdRf var_90
  loc_B3879E: LitStr vbNullString
  loc_B387A1: EqStr
  loc_B387A3: OrI4
  loc_B387A4: BranchF loc_B387B5
  loc_B387A7: LitI4 0
  loc_B387AC: LitStr "Faltan datos para la imputacion. Verifique..."
  loc_B387AF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B387B4: ExitProcHresult
  loc_B387B5: FLdRfVar var_DC
  loc_B387B8: FLdRfVar var_B0
  loc_B387BB: LitVarStr var_AC, "ExorImpu"
  loc_B387C0: PopAdLdVar
  loc_B387C1: FLdRfVar var_9C
  loc_B387C4: FLdRfVar var_98
  loc_B387C7: FLdPr Me
  loc_B387CA: MemLdRfVar from_stack_1.global_52
  loc_B387CD: NewIfNullPr clsimputacion
  loc_B387D0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B387D5: FLdPr var_98
  loc_B387D8:  = Me.Fields
  loc_B387DD: FLdPr var_9C
  loc_B387E0: from_stack_2 = Me.Item(from_stack_1)
  loc_B387E5: FLdPr var_B0
  loc_B387E8:  = Me.Value
  loc_B387ED: FLdRfVar var_F0
  loc_B387F0: FLdRfVar var_CC
  loc_B387F3: LitVarStr var_C8, "CodiPart"
  loc_B387F8: PopAdLdVar
  loc_B387F9: FLdRfVar var_B8
  loc_B387FC: FLdRfVar var_B4
  loc_B387FF: FLdPr Me
  loc_B38802: MemLdRfVar from_stack_1.global_52
  loc_B38805: NewIfNullPr clsimputacion
  loc_B38808: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B3880D: FLdPr var_B4
  loc_B38810:  = Me.Fields
  loc_B38815: FLdPr var_B8
  loc_B38818: from_stack_2 = Me.Item(from_stack_1)
  loc_B3881D: FLdPr var_CC
  loc_B38820:  = Me.Value
  loc_B38825: FLdRfVar var_F8
  loc_B38828: ILdRf var_8C
  loc_B3882B: FLdRfVar var_F0
  loc_B3882E: CStrVarTmp
  loc_B3882F: FStStrNoPop var_F4
  loc_B38832: LitI2_Byte 0
  loc_B38834: LitI2_Byte 0
  loc_B38836: LitI2_Byte 0
  loc_B38838: LitI2_Byte 0
  loc_B3883A: LitI4 0
  loc_B3883F: FLdRfVar var_DC
  loc_B38842: CStrVarTmp
  loc_B38843: FStStrNoPop var_E0
  loc_B38846: LitI2_Byte 1
  loc_B38848: ImpAdLdI2 MemVar_C3D064
  loc_B3884B: LitI2_Byte 1
  loc_B3884D: AddI2
  loc_B3884E: FLdPr Me
  loc_B38851: MemLdRfVar from_stack_1.global_52
  loc_B38854: NewIfNullPr clsimputacion
  loc_B38857: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_B3885C: FLdZeroAd var_F8
  loc_B3885F: FStStr var_94
  loc_B38862: FFreeStr var_E0 = ""
  loc_B38869: FFreeAd var_98 = "": var_9C = "": var_B4 = "": var_B8 = "": var_B0 = ""
  loc_B38878: FFreeVar var_DC = ""
  loc_B3887F: FLdRfVar var_138
  loc_B38882: FLdRfVar var_B0
  loc_B38885: LitVarStr var_AC, "CodiUnga"
  loc_B3888A: PopAdLdVar
  loc_B3888B: FLdRfVar var_9C
  loc_B3888E: FLdRfVar var_98
  loc_B38891: FLdPr Me
  loc_B38894: MemLdRfVar from_stack_1.global_52
  loc_B38897: NewIfNullPr clsimputacion
  loc_B3889A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B3889F: FLdPr var_98
  loc_B388A2:  = Me.Fields
  loc_B388A7: FLdPr var_9C
  loc_B388AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B388AF: FLdPr var_B0
  loc_B388B2:  = Me.Value
  loc_B388B7: FLdPr Me
  loc_B388BA: VCallAd Control_ID_CodiInsuMsk
  loc_B388BD: FStAdFunc var_B4
  loc_B388C0: FLdPr var_B4
  loc_B388C3: LateIdLdVar var_DC DispID_22 0
  loc_B388CA: PopAd
  loc_B388CC: FLdPr Me
  loc_B388CF: VCallAd Control_ID_ExorImpuMsk
  loc_B388D2: FStAdFunc var_B8
  loc_B388D5: FLdPr var_B8
  loc_B388D8: LateIdLdVar var_F0 DispID_15 0
  loc_B388DF: PopAd
  loc_B388E1: FLdRfVar var_E0
  loc_B388E4: FLdPr Me
  loc_B388E7: VCallAd Control_ID_CantImpuTxt
  loc_B388EA: FStAdFunc var_CC
  loc_B388ED: FLdPr var_CC
  loc_B388F0:  = Me.Text
  loc_B388F5: FLdRfVar var_F4
  loc_B388F8: FLdPr Me
  loc_B388FB: VCallAd Control_ID_ImunImpuTxt
  loc_B388FE: FStAdFunc var_FC
  loc_B38901: FLdPr var_FC
  loc_B38904:  = Me.Text
  loc_B38909: FLdRfVar var_F8
  loc_B3890C: FLdPr Me
  loc_B3890F: VCallAd Control_ID_ImpoImpuTxt
  loc_B38912: FStAdFunc var_100
  loc_B38915: FLdPr var_100
  loc_B38918:  = Me.Text
  loc_B3891D: FLdRfVar var_148
  loc_B38920: FLdPr Me
  loc_B38923: VCallAd Control_ID_DetaImpuTxt
  loc_B38926: FStAdFunc var_144
  loc_B38929: FLdPr var_144
  loc_B3892C:  = Me.Text
  loc_B38931: FLdRfVar var_158
  loc_B38934: FLdRfVar var_10C
  loc_B38937: LitVarStr var_C8, "CodiNope"
  loc_B3893C: PopAdLdVar
  loc_B3893D: FLdRfVar var_108
  loc_B38940: FLdRfVar var_104
  loc_B38943: FLdPr Me
  loc_B38946: MemLdRfVar from_stack_1.global_52
  loc_B38949: NewIfNullPr clsimputacion
  loc_B3894C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38951: FLdPr var_104
  loc_B38954:  = Me.Fields
  loc_B38959: FLdPr var_108
  loc_B3895C: from_stack_2 = Me.Item(from_stack_1)
  loc_B38961: FLdPr var_10C
  loc_B38964:  = Me.Value
  loc_B38969: FLdRfVar var_168
  loc_B3896C: FLdRfVar var_128
  loc_B3896F: LitVarStr var_124, "Item"
  loc_B38974: PopAdLdVar
  loc_B38975: FLdRfVar var_114
  loc_B38978: FLdRfVar var_110
  loc_B3897B: FLdPr Me
  loc_B3897E: MemLdRfVar from_stack_1.global_52
  loc_B38981: NewIfNullPr clsimputacion
  loc_B38984: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38989: FLdPr var_110
  loc_B3898C:  = Me.Fields
  loc_B38991: FLdPr var_114
  loc_B38994: from_stack_2 = Me.Item(from_stack_1)
  loc_B38999: FLdPr var_128
  loc_B3899C:  = Me.Value
  loc_B389A1: FLdRfVar var_16C
  loc_B389A4: LitI2_Byte 0
  loc_B389A6: LitI2_Byte &HFF
  loc_B389A8: LitI2_Byte 0
  loc_B389AA: LitI4 0
  loc_B389AF: FLdRfVar var_168
  loc_B389B2: CI2Var
  loc_B389B3: FLdRfVar var_158
  loc_B389B6: CI4Var
  loc_B389B8: ILdRf var_148
  loc_B389BB: ILdRf var_F8
  loc_B389BE: CR8Str
  loc_B389C0: PopFPR8
  loc_B389C1: ILdRf var_F4
  loc_B389C4: CR8Str
  loc_B389C6: PopFPR8
  loc_B389C7: ILdRf var_E0
  loc_B389CA: CR8Str
  loc_B389CC: PopFPR8
  loc_B389CD: FLdRfVar var_F0
  loc_B389D0: CStrVarTmp
  loc_B389D1: FStStrNoPop var_140
  loc_B389D4: ILdRf var_94
  loc_B389D7: ILdRf var_90
  loc_B389DA: FLdRfVar var_DC
  loc_B389DD: CStrVarTmp
  loc_B389DE: FStStrNoPop var_13C
  loc_B389E1: CI4Str
  loc_B389E2: FLdRfVar var_138
  loc_B389E5: CI2Var
  loc_B389E6: ILdRf var_8C
  loc_B389E9: ILdRf var_88
  loc_B389EC: FLdPr Me
  loc_B389EF: MemLdRfVar from_stack_1.global_52
  loc_B389F2: NewIfNullPr clsimputacion
  loc_B389F5: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B389FA: ILdRf var_16C
  loc_B389FD: FLdPr Me
  loc_B38A00: MemStI4 global_68
  loc_B38A03: FFreeStr var_13C = "": var_140 = "": var_E0 = "": var_F4 = "": var_F8 = ""
  loc_B38A12: FFreeAd var_98 = "": var_9C = "": var_B4 = "": var_B8 = "": var_CC = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_110 = "": var_114 = "": var_B0 = "": var_144 = "": var_10C = ""
  loc_B38A33: FFreeVar var_DC = "": var_F0 = "": var_138 = "": var_158 = ""
  loc_B38A40: FLdPr Me
  loc_B38A43: MemLdStr global_68
  loc_B38A46: LitI4 0
  loc_B38A4B: EqI4
  loc_B38A4C: BranchF loc_B38A5F
  loc_B38A4F: LitI4 0
  loc_B38A54: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B38A57: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B38A5C: Branch loc_B390A0
  loc_B38A5F: FLdRfVar var_138
  loc_B38A62: FLdRfVar var_B0
  loc_B38A65: LitVarStr var_AC, "CodiUnga"
  loc_B38A6A: PopAdLdVar
  loc_B38A6B: FLdRfVar var_9C
  loc_B38A6E: FLdRfVar var_98
  loc_B38A71: FLdPr Me
  loc_B38A74: MemLdRfVar from_stack_1.global_52
  loc_B38A77: NewIfNullPr clsimputacion
  loc_B38A7A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38A7F: FLdPr var_98
  loc_B38A82:  = Me.Fields
  loc_B38A87: FLdPr var_9C
  loc_B38A8A: from_stack_2 = Me.Item(from_stack_1)
  loc_B38A8F: FLdPr var_B0
  loc_B38A92:  = Me.Value
  loc_B38A97: FLdPr Me
  loc_B38A9A: VCallAd Control_ID_CodiInsuMsk
  loc_B38A9D: FStAdFunc var_B4
  loc_B38AA0: FLdPr var_B4
  loc_B38AA3: LateIdLdVar var_DC DispID_22 0
  loc_B38AAA: PopAd
  loc_B38AAC: FLdPr Me
  loc_B38AAF: VCallAd Control_ID_ExorImpuMsk
  loc_B38AB2: FStAdFunc var_B8
  loc_B38AB5: FLdPr var_B8
  loc_B38AB8: LateIdLdVar var_F0 DispID_15 0
  loc_B38ABF: PopAd
  loc_B38AC1: FLdRfVar var_E0
  loc_B38AC4: FLdPr Me
  loc_B38AC7: VCallAd Control_ID_CantImpuTxt
  loc_B38ACA: FStAdFunc var_CC
  loc_B38ACD: FLdPr var_CC
  loc_B38AD0:  = Me.Text
  loc_B38AD5: FLdRfVar var_F4
  loc_B38AD8: FLdPr Me
  loc_B38ADB: VCallAd Control_ID_ImunImpuTxt
  loc_B38ADE: FStAdFunc var_FC
  loc_B38AE1: FLdPr var_FC
  loc_B38AE4:  = Me.Text
  loc_B38AE9: FLdRfVar var_F8
  loc_B38AEC: FLdPr Me
  loc_B38AEF: VCallAd Control_ID_ImpoImpuTxt
  loc_B38AF2: FStAdFunc var_100
  loc_B38AF5: FLdPr var_100
  loc_B38AF8:  = Me.Text
  loc_B38AFD: FLdRfVar var_13C
  loc_B38B00: FLdPr Me
  loc_B38B03: VCallAd Control_ID_DetaImpuTxt
  loc_B38B06: FStAdFunc var_104
  loc_B38B09: FLdPr var_104
  loc_B38B0C:  = Me.Text
  loc_B38B11: FLdRfVar var_158
  loc_B38B14: FLdRfVar var_110
  loc_B38B17: LitVarStr var_C8, "CodiNope"
  loc_B38B1C: PopAdLdVar
  loc_B38B1D: FLdRfVar var_10C
  loc_B38B20: FLdRfVar var_108
  loc_B38B23: FLdPr Me
  loc_B38B26: MemLdRfVar from_stack_1.global_52
  loc_B38B29: NewIfNullPr clsimputacion
  loc_B38B2C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38B31: FLdPr var_108
  loc_B38B34:  = Me.Fields
  loc_B38B39: FLdPr var_10C
  loc_B38B3C: from_stack_2 = Me.Item(from_stack_1)
  loc_B38B41: FLdPr var_110
  loc_B38B44:  = Me.Value
  loc_B38B49: FLdRfVar var_168
  loc_B38B4C: FLdRfVar var_144
  loc_B38B4F: LitVarStr var_124, "CodiOrco"
  loc_B38B54: PopAdLdVar
  loc_B38B55: FLdRfVar var_128
  loc_B38B58: FLdRfVar var_114
  loc_B38B5B: FLdPr Me
  loc_B38B5E: MemLdRfVar from_stack_1.global_52
  loc_B38B61: NewIfNullPr clsimputacion
  loc_B38B64: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38B69: FLdPr var_114
  loc_B38B6C:  = Me.Fields
  loc_B38B71: FLdPr var_128
  loc_B38B74: from_stack_2 = Me.Item(from_stack_1)
  loc_B38B79: FLdPr var_144
  loc_B38B7C:  = Me.Value
  loc_B38B81: FLdRfVar var_1D0
  loc_B38B84: FLdRfVar var_188
  loc_B38B87: LitVarStr var_184, "Item"
  loc_B38B8C: PopAdLdVar
  loc_B38B8D: FLdRfVar var_174
  loc_B38B90: FLdRfVar var_170
  loc_B38B93: FLdPr Me
  loc_B38B96: MemLdRfVar from_stack_1.global_52
  loc_B38B99: NewIfNullPr clsimputacion
  loc_B38B9C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38BA1: FLdPr var_170
  loc_B38BA4:  = Me.Fields
  loc_B38BA9: FLdPr var_174
  loc_B38BAC: from_stack_2 = Me.Item(from_stack_1)
  loc_B38BB1: FLdPr var_188
  loc_B38BB4:  = Me.Value
  loc_B38BB9: FLdRfVar var_1E0
  loc_B38BBC: FLdRfVar var_1A4
  loc_B38BBF: LitVarStr var_1A0, "Altern"
  loc_B38BC4: PopAdLdVar
  loc_B38BC5: FLdRfVar var_190
  loc_B38BC8: FLdRfVar var_18C
  loc_B38BCB: FLdPr Me
  loc_B38BCE: MemLdRfVar from_stack_1.global_52
  loc_B38BD1: NewIfNullPr clsimputacion
  loc_B38BD4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38BD9: FLdPr var_18C
  loc_B38BDC:  = Me.Fields
  loc_B38BE1: FLdPr var_190
  loc_B38BE4: from_stack_2 = Me.Item(from_stack_1)
  loc_B38BE9: FLdPr var_1A4
  loc_B38BEC:  = Me.Value
  loc_B38BF1: FLdRfVar var_1F0
  loc_B38BF4: FLdRfVar var_1C0
  loc_B38BF7: LitVarStr var_1BC, "CucuPers"
  loc_B38BFC: PopAdLdVar
  loc_B38BFD: FLdRfVar var_1AC
  loc_B38C00: FLdRfVar var_1A8
  loc_B38C03: FLdPr Me
  loc_B38C06: MemLdRfVar from_stack_1.global_52
  loc_B38C09: NewIfNullPr clsimputacion
  loc_B38C0C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38C11: FLdPr var_1A8
  loc_B38C14:  = Me.Fields
  loc_B38C19: FLdPr var_1AC
  loc_B38C1C: from_stack_2 = Me.Item(from_stack_1)
  loc_B38C21: FLdPr var_1C0
  loc_B38C24:  = Me.Value
  loc_B38C29: FLdRfVar var_16C
  loc_B38C2C: LitI2_Byte 0
  loc_B38C2E: LitI2_Byte &HFF
  loc_B38C30: LitI2_Byte 0
  loc_B38C32: LitI4 0
  loc_B38C37: FLdRfVar var_1F0
  loc_B38C3A: CStrVarTmp
  loc_B38C3B: FStStrNoPop var_1F4
  loc_B38C3E: FLdRfVar var_1E0
  loc_B38C41: CUI1Var
  loc_B38C43: FLdRfVar var_1D0
  loc_B38C46: CI2Var
  loc_B38C47: FLdRfVar var_168
  loc_B38C4A: CI4Var
  loc_B38C4C: FLdRfVar var_158
  loc_B38C4F: CI4Var
  loc_B38C51: ILdRf var_13C
  loc_B38C54: ILdRf var_F8
  loc_B38C57: CR8Str
  loc_B38C59: PopFPR8
  loc_B38C5A: ILdRf var_F4
  loc_B38C5D: CR8Str
  loc_B38C5F: PopFPR8
  loc_B38C60: ILdRf var_E0
  loc_B38C63: CR8Str
  loc_B38C65: PopFPR8
  loc_B38C66: FLdRfVar var_F0
  loc_B38C69: CStrVarTmp
  loc_B38C6A: FStStrNoPop var_148
  loc_B38C6D: ILdRf var_94
  loc_B38C70: ILdRf var_90
  loc_B38C73: FLdRfVar var_DC
  loc_B38C76: CStrVarTmp
  loc_B38C77: FStStrNoPop var_140
  loc_B38C7A: CI4Str
  loc_B38C7B: FLdRfVar var_138
  loc_B38C7E: CI2Var
  loc_B38C7F: ILdRf var_8C
  loc_B38C82: ILdRf var_88
  loc_B38C85: FLdPr Me
  loc_B38C88: MemLdRfVar from_stack_1.global_52
  loc_B38C8B: NewIfNullPr clsimputacion
  loc_B38C8E: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B38C93: ILdRf var_16C
  loc_B38C96: FLdPr Me
  loc_B38C99: MemStI4 global_68
  loc_B38C9C: FFreeStr var_140 = "": var_148 = "": var_E0 = "": var_F4 = "": var_F8 = "": var_13C = ""
  loc_B38CAD: FFreeAd var_98 = "": var_9C = "": var_B4 = "": var_B8 = "": var_CC = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_128 = "": var_170 = "": var_174 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_B0 = "": var_110 = "": var_144 = "": var_188 = "": var_1A4 = ""
  loc_B38CE0: FFreeVar var_DC = "": var_F0 = "": var_138 = "": var_158 = "": var_168 = "": var_1D0 = "": var_1E0 = ""
  loc_B38CF3: FLdPr Me
  loc_B38CF6: MemLdStr global_68
  loc_B38CF9: LitI4 0
  loc_B38CFE: EqI4
  loc_B38CFF: BranchF loc_B38D12
  loc_B38D02: LitI4 0
  loc_B38D07: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B38D0A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B38D0F: Branch loc_B390A0
  loc_B38D12: FLdRfVar var_158
  loc_B38D15: FLdRfVar var_B0
  loc_B38D18: LitVarStr var_AC, "CodiUnga"
  loc_B38D1D: PopAdLdVar
  loc_B38D1E: FLdRfVar var_9C
  loc_B38D21: FLdRfVar var_98
  loc_B38D24: FLdPr Me
  loc_B38D27: MemLdRfVar from_stack_1.global_52
  loc_B38D2A: NewIfNullPr clsimputacion
  loc_B38D2D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38D32: FLdPr var_98
  loc_B38D35:  = Me.Fields
  loc_B38D3A: FLdPr var_9C
  loc_B38D3D: from_stack_2 = Me.Item(from_stack_1)
  loc_B38D42: FLdPr var_B0
  loc_B38D45:  = Me.Value
  loc_B38D4A: FLdPr Me
  loc_B38D4D: VCallAd Control_ID_CodiInsuMsk
  loc_B38D50: FStAdFunc var_B4
  loc_B38D53: FLdPr var_B4
  loc_B38D56: LateIdLdVar var_DC DispID_22 0
  loc_B38D5D: PopAd
  loc_B38D5F: FLdPr Me
  loc_B38D62: VCallAd Control_ID_FefaDeveMsk
  loc_B38D65: FStAdFunc var_B8
  loc_B38D68: FLdPr var_B8
  loc_B38D6B: LateIdLdVar var_F0 DispID_15 0
  loc_B38D72: PopAd
  loc_B38D74: FLdPr Me
  loc_B38D77: VCallAd Control_ID_ExorImpuMsk
  loc_B38D7A: FStAdFunc var_CC
  loc_B38D7D: FLdPr var_CC
  loc_B38D80: LateIdLdVar var_138 DispID_15 0
  loc_B38D87: PopAd
  loc_B38D89: FLdRfVar var_E0
  loc_B38D8C: FLdPr Me
  loc_B38D8F: VCallAd Control_ID_ExpeImpuTxt
  loc_B38D92: FStAdFunc var_FC
  loc_B38D95: FLdPr var_FC
  loc_B38D98:  = Me.Text
  loc_B38D9D: FLdRfVar var_F4
  loc_B38DA0: FLdPr Me
  loc_B38DA3: VCallAd Control_ID_CantImpuTxt
  loc_B38DA6: FStAdFunc var_100
  loc_B38DA9: FLdPr var_100
  loc_B38DAC:  = Me.Text
  loc_B38DB1: FLdRfVar var_F8
  loc_B38DB4: FLdPr Me
  loc_B38DB7: VCallAd Control_ID_ImunImpuTxt
  loc_B38DBA: FStAdFunc var_104
  loc_B38DBD: FLdPr var_104
  loc_B38DC0:  = Me.Text
  loc_B38DC5: FLdRfVar var_13C
  loc_B38DC8: FLdPr Me
  loc_B38DCB: VCallAd Control_ID_ImpoImpuTxt
  loc_B38DCE: FStAdFunc var_108
  loc_B38DD1: FLdPr var_108
  loc_B38DD4:  = Me.Text
  loc_B38DD9: FLdRfVar var_140
  loc_B38DDC: FLdPr Me
  loc_B38DDF: VCallAd Control_ID_DetaImpuTxt
  loc_B38DE2: FStAdFunc var_10C
  loc_B38DE5: FLdPr var_10C
  loc_B38DE8:  = Me.Text
  loc_B38DED: FLdRfVar var_168
  loc_B38DF0: FLdRfVar var_128
  loc_B38DF3: LitVarStr var_C8, "CodiNope"
  loc_B38DF8: PopAdLdVar
  loc_B38DF9: FLdRfVar var_114
  loc_B38DFC: FLdRfVar var_110
  loc_B38DFF: FLdPr Me
  loc_B38E02: MemLdRfVar from_stack_1.global_52
  loc_B38E05: NewIfNullPr clsimputacion
  loc_B38E08: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38E0D: FLdPr var_110
  loc_B38E10:  = Me.Fields
  loc_B38E15: FLdPr var_114
  loc_B38E18: from_stack_2 = Me.Item(from_stack_1)
  loc_B38E1D: FLdPr var_128
  loc_B38E20:  = Me.Value
  loc_B38E25: FLdRfVar var_1D0
  loc_B38E28: FLdRfVar var_174
  loc_B38E2B: LitVarStr var_124, "CodiOrco"
  loc_B38E30: PopAdLdVar
  loc_B38E31: FLdRfVar var_170
  loc_B38E34: FLdRfVar var_144
  loc_B38E37: FLdPr Me
  loc_B38E3A: MemLdRfVar from_stack_1.global_52
  loc_B38E3D: NewIfNullPr clsimputacion
  loc_B38E40: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38E45: FLdPr var_144
  loc_B38E48:  = Me.Fields
  loc_B38E4D: FLdPr var_170
  loc_B38E50: from_stack_2 = Me.Item(from_stack_1)
  loc_B38E55: FLdPr var_174
  loc_B38E58:  = Me.Value
  loc_B38E5D: FLdRfVar var_1E0
  loc_B38E60: FLdRfVar var_190
  loc_B38E63: LitVarStr var_184, "CodiRece"
  loc_B38E68: PopAdLdVar
  loc_B38E69: FLdRfVar var_18C
  loc_B38E6C: FLdRfVar var_188
  loc_B38E6F: FLdPr Me
  loc_B38E72: MemLdRfVar from_stack_1.global_52
  loc_B38E75: NewIfNullPr clsimputacion
  loc_B38E78: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38E7D: FLdPr var_188
  loc_B38E80:  = Me.Fields
  loc_B38E85: FLdPr var_18C
  loc_B38E88: from_stack_2 = Me.Item(from_stack_1)
  loc_B38E8D: FLdPr var_190
  loc_B38E90:  = Me.Value
  loc_B38E95: FLdRfVar var_1F0
  loc_B38E98: FLdRfVar var_1AC
  loc_B38E9B: LitVarStr var_1A0, "Item"
  loc_B38EA0: PopAdLdVar
  loc_B38EA1: FLdRfVar var_1A8
  loc_B38EA4: FLdRfVar var_1A4
  loc_B38EA7: FLdPr Me
  loc_B38EAA: MemLdRfVar from_stack_1.global_52
  loc_B38EAD: NewIfNullPr clsimputacion
  loc_B38EB0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38EB5: FLdPr var_1A4
  loc_B38EB8:  = Me.Fields
  loc_B38EBD: FLdPr var_1A8
  loc_B38EC0: from_stack_2 = Me.Item(from_stack_1)
  loc_B38EC5: FLdPr var_1AC
  loc_B38EC8:  = Me.Value
  loc_B38ECD: FLdRfVar var_254
  loc_B38ED0: FLdRfVar var_1FC
  loc_B38ED3: LitVarStr var_1BC, "Altern"
  loc_B38ED8: PopAdLdVar
  loc_B38ED9: FLdRfVar var_1F8
  loc_B38EDC: FLdRfVar var_1C0
  loc_B38EDF: FLdPr Me
  loc_B38EE2: MemLdRfVar from_stack_1.global_52
  loc_B38EE5: NewIfNullPr clsimputacion
  loc_B38EE8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38EED: FLdPr var_1C0
  loc_B38EF0:  = Me.Fields
  loc_B38EF5: FLdPr var_1F8
  loc_B38EF8: from_stack_2 = Me.Item(from_stack_1)
  loc_B38EFD: FLdPr var_1FC
  loc_B38F00:  = Me.Value
  loc_B38F05: FLdRfVar var_268
  loc_B38F08: FLdRfVar var_218
  loc_B38F0B: LitVarStr var_214, "CucuPers"
  loc_B38F10: PopAdLdVar
  loc_B38F11: FLdRfVar var_204
  loc_B38F14: FLdRfVar var_200
  loc_B38F17: FLdPr Me
  loc_B38F1A: MemLdRfVar from_stack_1.global_52
  loc_B38F1D: NewIfNullPr clsimputacion
  loc_B38F20: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38F25: FLdPr var_200
  loc_B38F28:  = Me.Fields
  loc_B38F2D: FLdPr var_204
  loc_B38F30: from_stack_2 = Me.Item(from_stack_1)
  loc_B38F35: FLdPr var_218
  loc_B38F38:  = Me.Value
  loc_B38F3D: FLdRfVar var_27C
  loc_B38F40: FLdRfVar var_234
  loc_B38F43: LitVarStr var_230, "NumeFact"
  loc_B38F48: PopAdLdVar
  loc_B38F49: FLdRfVar var_220
  loc_B38F4C: FLdRfVar var_21C
  loc_B38F4F: FLdPr Me
  loc_B38F52: MemLdRfVar from_stack_1.global_52
  loc_B38F55: NewIfNullPr clsimputacion
  loc_B38F58: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38F5D: FLdPr var_21C
  loc_B38F60:  = Me.Fields
  loc_B38F65: FLdPr var_220
  loc_B38F68: from_stack_2 = Me.Item(from_stack_1)
  loc_B38F6D: FLdPr var_234
  loc_B38F70:  = Me.Value
  loc_B38F75: FLdRfVar var_16C
  loc_B38F78: LitI2_Byte 0
  loc_B38F7A: LitI2_Byte 0
  loc_B38F7C: LitI2_Byte &HFF
  loc_B38F7E: LitStr vbNullString
  loc_B38F81: LitI4 0
  loc_B38F86: FLdRfVar var_27C
  loc_B38F89: CStrVarTmp
  loc_B38F8A: FStStrNoPop var_280
  loc_B38F8D: FLdRfVar var_268
  loc_B38F90: CStrVarTmp
  loc_B38F91: FStStrNoPop var_26C
  loc_B38F94: FLdRfVar var_254
  loc_B38F97: CStrVarTmp
  loc_B38F98: FStStrNoPop var_258
  loc_B38F9B: FLdRfVar var_1F0
  loc_B38F9E: CStrVarTmp
  loc_B38F9F: FStStrNoPop var_244
  loc_B38FA2: FLdRfVar var_1E0
  loc_B38FA5: CI2Var
  loc_B38FA6: FLdRfVar var_1D0
  loc_B38FA9: CStrVarTmp
  loc_B38FAA: FStStrNoPop var_240
  loc_B38FAD: FLdRfVar var_168
  loc_B38FB0: CStrVarTmp
  loc_B38FB1: FStStrNoPop var_23C
  loc_B38FB4: ILdRf var_140
  loc_B38FB7: ILdRf var_13C
  loc_B38FBA: CR8Str
  loc_B38FBC: PopFPR8
  loc_B38FBD: ILdRf var_F8
  loc_B38FC0: CR8Str
  loc_B38FC2: PopFPR8
  loc_B38FC3: ILdRf var_F4
  loc_B38FC6: CR8Str
  loc_B38FC8: PopFPR8
  loc_B38FC9: ILdRf var_E0
  loc_B38FCC: FLdRfVar var_138
  loc_B38FCF: CStrVarTmp
  loc_B38FD0: FStStrNoPop var_238
  loc_B38FD3: FLdRfVar var_F0
  loc_B38FD6: CStrVarTmp
  loc_B38FD7: FStStrNoPop var_1F4
  loc_B38FDA: ILdRf var_94
  loc_B38FDD: ILdRf var_90
  loc_B38FE0: FLdRfVar var_DC
  loc_B38FE3: CStrVarTmp
  loc_B38FE4: FStStrNoPop var_148
  loc_B38FE7: CI4Str
  loc_B38FE8: FLdRfVar var_158
  loc_B38FEB: CI2Var
  loc_B38FEC: ILdRf var_8C
  loc_B38FEF: ILdRf var_88
  loc_B38FF2: FLdPr Me
  loc_B38FF5: MemLdRfVar from_stack_1.global_52
  loc_B38FF8: NewIfNullPr clsimputacion
  loc_B38FFB: from_stack_16v = clsimputacion.AddNewDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B39000: ILdRf var_16C
  loc_B39003: FLdPr Me
  loc_B39006: MemStI4 global_68
  loc_B39009: FFreeStr var_148 = "": var_1F4 = "": var_238 = "": var_E0 = "": var_F4 = "": var_F8 = "": var_13C = "": var_140 = "": var_23C = "": var_240 = "": var_244 = "": var_258 = "": var_26C = ""
  loc_B39028: FFreeAd var_218 = "": var_234 = "": var_98 = "": var_9C = "": var_B4 = "": var_B8 = "": var_CC = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_144 = "": var_170 = "": var_188 = "": var_18C = "": var_1A4 = "": var_1A8 = "": var_1C0 = "": var_1F8 = "": var_200 = "": var_204 = "": var_21C = "": var_220 = "": var_B0 = "": var_128 = "": var_174 = "": var_190 = "": var_1AC = ""
  loc_B3906B: FFreeVar var_DC = "": var_F0 = "": var_138 = "": var_158 = "": var_168 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_254 = "": var_268 = ""
  loc_B39084: FLdPr Me
  loc_B39087: MemLdStr global_68
  loc_B3908A: LitI4 0
  loc_B3908F: EqI4
  loc_B39090: BranchF loc_B390A0
  loc_B39093: LitI4 0
  loc_B39098: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B3909B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B390A0: ExitProcHresult
End Function

Private Function Proc_133_18_A25E5C(arg_C) 'A25E5C
  'Data Table: 4F588C
  loc_A25CE8: ILdRf arg_C
  loc_A25CEB: FStStrCopy var_88
  loc_A25CEE: FLdRfVar var_94
  loc_A25CF1: ImpAdLdI2 MemVar_C3D064
  loc_A25CF4: LitI2_Byte 1
  loc_A25CF6: AddI2
  loc_A25CF7: FLdPr Me
  loc_A25CFA: MemLdRfVar from_stack_1.global_56
  loc_A25CFD: NewIfNullPr clsdebito
  loc_A25D00: from_stack_2v = clsdebito.UltimaFechDebi(from_stack_1v)
  loc_A25D05: FLdZeroAd var_94
  loc_A25D08: FStStr var_8C
  loc_A25D0B: FLdPr Me
  loc_A25D0E: VCallAd Control_ID_ExorImpuMsk
  loc_A25D11: FStAdFunc var_98
  loc_A25D14: FLdPr var_98
  loc_A25D17: LateIdLdVar var_A8 DispID_15 0
  loc_A25D1E: CStrVarTmp
  loc_A25D1F: FStStrNoPop var_94
  loc_A25D22: ImpAdCallI2 Trim$()
  loc_A25D27: FStStr var_F8
  loc_A25D2A: FLdRfVar var_B0
  loc_A25D2D: FLdPr Me
  loc_A25D30: VCallAd Control_ID_ExpeImpuTxt
  loc_A25D33: FStAdFunc var_AC
  loc_A25D36: FLdPr var_AC
  loc_A25D39:  = Me.Text
  loc_A25D3E: ILdRf var_B0
  loc_A25D41: ImpAdCallI2 Trim$()
  loc_A25D46: FStStr var_FC
  loc_A25D49: FLdRfVar var_B4
  loc_A25D4C: FLdPr Me
  loc_A25D4F: MemLdRfVar from_stack_1.global_76
  loc_A25D52: NewIfNullPr tblparaconta
  loc_A25D55: from_stack_1v = tblparaconta.CcrpPacoGet()
  loc_A25D5A: FLdRfVar var_BC
  loc_A25D5D: FLdPr Me
  loc_A25D60: VCallAd Control_ID_CucuPersMsk
  loc_A25D63: FStAdFunc var_B8
  loc_A25D66: FLdPr var_B8
  loc_A25D69:  = Me.Text
  loc_A25D6E: FLdRfVar var_C4
  loc_A25D71: FLdPr Me
  loc_A25D74: VCallAd Control_ID_ImpoImpuTxt
  loc_A25D77: FStAdFunc var_C0
  loc_A25D7A: FLdPr var_C0
  loc_A25D7D:  = Me.Text
  loc_A25D82: FLdRfVar var_CC
  loc_A25D85: FLdPr Me
  loc_A25D88: VCallAd Control_ID_TifaDeveCbo
  loc_A25D8B: FStAdFunc var_C8
  loc_A25D8E: FLdPr var_C8
  loc_A25D91:  = Me.Text
  loc_A25D96: FLdRfVar var_D4
  loc_A25D99: FLdPr Me
  loc_A25D9C: VCallAd Control_ID_SufaDeveTxt
  loc_A25D9F: FStAdFunc var_D0
  loc_A25DA2: FLdPr var_D0
  loc_A25DA5:  = Me.Text
  loc_A25DAA: FLdRfVar var_DC
  loc_A25DAD: FLdPr Me
  loc_A25DB0: VCallAd Control_ID_NufaDeveTxt
  loc_A25DB3: FStAdFunc var_D8
  loc_A25DB6: FLdPr var_D8
  loc_A25DB9:  = Me.Text
  loc_A25DBE: FLdRfVar var_E4
  loc_A25DC1: FLdPr Me
  loc_A25DC4: VCallAd Control_ID_DetaImpuTxt
  loc_A25DC7: FStAdFunc var_E0
  loc_A25DCA: FLdPr var_E0
  loc_A25DCD:  = Me.Text
  loc_A25DD2: FLdRfVar var_F2
  loc_A25DD5: LitI2_Byte 0
  loc_A25DD7: LitI2_Byte 0
  loc_A25DD9: CStrUI1
  loc_A25DDB: FStStrNoPop var_F0
  loc_A25DDE: ILdRf var_E4
  loc_A25DE1: ILdRf var_88
  loc_A25DE4: ILdRf var_DC
  loc_A25DE7: ILdRf var_D4
  loc_A25DEA: ILdRf var_CC
  loc_A25DED: ILdRf var_C4
  loc_A25DF0: CR8Str
  loc_A25DF2: PopFPR8
  loc_A25DF3: ILdRf var_BC
  loc_A25DF6: LitI2_Byte 0
  loc_A25DF8: ILdRf var_B4
  loc_A25DFB: FLdZeroAd var_FC
  loc_A25DFE: FStStrNoPop var_EC
  loc_A25E01: FLdZeroAd var_F8
  loc_A25E04: FStStrNoPop var_E8
  loc_A25E07: ILdRf var_8C
  loc_A25E0A: ImpAdLdI2 MemVar_C3D064
  loc_A25E0D: LitI2_Byte 1
  loc_A25E0F: AddI2
  loc_A25E10: FLdPr Me
  loc_A25E13: MemLdRfVar from_stack_1.global_56
  loc_A25E16: NewIfNullPr clsdebito
  loc_A25E19: from_stack_16v = clsdebito.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_A25E1E: FLdI2 var_F2
  loc_A25E21: FStI2 var_8E
  loc_A25E24: FFreeStr var_94 = "": var_B0 = "": var_E8 = "": var_EC = "": var_B4 = "": var_BC = "": var_C4 = "": var_CC = "": var_D4 = "": var_DC = "": var_E4 = "": var_F0 = "": var_F8 = ""
  loc_A25E43: FFreeAd var_98 = "": var_AC = "": var_B8 = "": var_C0 = "": var_C8 = "": var_D0 = "": var_D8 = ""
  loc_A25E56: FFree1Var var_A8 = ""
  loc_A25E59: ExitProcHresult
  loc_A25E5A: CastAd
End Function
