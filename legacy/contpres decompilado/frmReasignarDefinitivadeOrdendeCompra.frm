VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmReasignarDefinitivadeOrdendeCompra
  Caption = "Reasignar Definitiva de Orden de Compra"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmReasignarDefinitivadeOrdendeCompra.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15885
  ClientHeight = 9135
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
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "frmReasignarDefinitivadeOrdendeCompra.frx":08CA
    End
  End
  Begin VB.Frame Frame1
    Caption = " Reasignar Definitiva de Orden de Compra "
    Left = 120
    Top = 3720
    Width = 15255
    Height = 5895
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox CodiUngaTxt
      Left = 2400
      Top = 2400
      Width = 1335
      Height = 360
      TabIndex = 17
      MaxLength = 70
      DataField = "CodiUnga"
    End
    Begin VB.TextBox CucuPersTxt
      Left = 2400
      Top = 4440
      Width = 1815
      Height = 360
      TabIndex = 33
      MaxLength = 70
      DataField = "CucuPers"
    End
    Begin VB.TextBox ImpoImpuTxt
      Left = 9960
      Top = 3960
      Width = 1815
      Height = 360
      TabIndex = 29
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
    Begin VB.TextBox DetaImpuTxt
      Left = 2400
      Top = 5400
      Width = 10935
      Height = 360
      TabIndex = 44
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
    Begin MSMask.MaskEdBox ExorImpuMsk
      Left = 2400
      Top = 457
      Width = 2175
      Height = 360
      TabIndex = 6
      OleObjectBlob = "frmReasignarDefinitivadeOrdendeCompra.frx":0952
      DataField = "ExorImpu"
    End
    Begin MSMask.MaskEdBox CodiInsuMsk
      Left = 2400
      Top = 960
      Width = 1335
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmReasignarDefinitivadeOrdendeCompra.frx":09B2
      DataField = "CodiInsu"
    End
    Begin VB.TextBox CantImpuTxt
      Left = 2400
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 25
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
    Begin VB.TextBox ImunImpuTxt
      Left = 6360
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 27
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
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 2400
      Top = 2880
      Width = 1575
      Height = 360
      TabIndex = 20
      OleObjectBlob = "frmReasignarDefinitivadeOrdendeCompra.frx":0A22
      DataField = "CodiFifu"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2400
      Top = 1920
      Width = 1335
      Height = 360
      TabIndex = 14
      OleObjectBlob = "frmReasignarDefinitivadeOrdendeCompra.frx":0AAA
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 2400
      Top = 1440
      Width = 1575
      Height = 360
      TabIndex = 11
      OleObjectBlob = "frmReasignarDefinitivadeOrdendeCompra.frx":0B32
      DataField = "CodiPart"
    End
    Begin MSMask.MaskEdBox FechImpuMsk
      Left = 2400
      Top = 3450
      Width = 1335
      Height = 360
      TabIndex = 23
      OleObjectBlob = "frmReasignarDefinitivadeOrdendeCompra.frx":0BBA
      DataField = "FechImpu"
    End
    Begin VB.Label DetaUngaLbl
      Left = 3855
      Top = 2400
      Width = 6495
      Height = 360
      TabIndex = 18
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
    Begin VB.Label Label19
      Caption = "Unidad de Gasto:"
      Left = 480
      Top = 2400
      Width = 1875
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
    End
    Begin VB.Label Label16
      Caption = "O.C.:"
      Left = 10500
      Top = 1440
      Width = 525
      Height = 300
      TabIndex = 39
      AutoSize = -1  'True
    End
    Begin VB.Label CodiOrcoLbl
      Left = 11100
      Top = 1440
      Width = 975
      Height = 360
      TabIndex = 40
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
    Begin VB.Label AlteItcoLbl
      Left = 12960
      Top = 1440
      Width = 975
      Height = 360
      TabIndex = 42
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
    Begin VB.Label Label25
      Caption = "Altern:"
      Left = 12120
      Top = 1440
      Width = 690
      Height = 300
      TabIndex = 41
      AutoSize = -1  'True
    End
    Begin VB.Label Label17
      Caption = "N.P.:"
      Left = 10560
      Top = 960
      Width = 495
      Height = 300
      TabIndex = 35
      AutoSize = -1  'True
    End
    Begin VB.Label CodiNopeLbl
      Left = 11145
      Top = 960
      Width = 975
      Height = 360
      TabIndex = 36
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
      Top = 960
      Width = 975
      Height = 360
      TabIndex = 38
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
      Top = 960
      Width = 540
      Height = 300
      TabIndex = 37
      AutoSize = -1  'True
    End
    Begin VB.Label Label18
      Caption = "Detalle:"
      Left = 1500
      Top = 5400
      Width = 810
      Height = 300
      TabIndex = 43
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Importe Total:"
      Left = 8400
      Top = 3960
      Width = 1470
      Height = 300
      TabIndex = 28
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Expediente Original:"
      Left = 240
      Top = 480
      Width = 2115
      Height = 300
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "Fecha:"
      Left = 1575
      Top = 3480
      Width = 735
      Height = 300
      TabIndex = 22
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
      TabIndex = 10
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
      Top = 960
      Width = 855
      Height = 300
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Organigrama:"
      Left = 870
      Top = 1920
      Width = 1440
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
    Begin VB.Label Label8
      Caption = "Finalidad-Función:"
      Left = 360
      Top = 2880
      Width = 1950
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
    Begin VB.Label Label14
      Caption = "Saldo:"
      Left = 12120
      Top = 3960
      Width = 675
      Height = 300
      TabIndex = 30
      AutoSize = -1  'True
    End
    Begin VB.Label Label15
      Caption = "Proveedor:"
      Left = 1200
      Top = 4440
      Width = 1140
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
    Begin VB.Label DetaPartLbl
      Left = 4080
      Top = 1440
      Width = 6255
      Height = 360
      TabIndex = 12
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
    Begin VB.Label DetaOrgaLbl
      Left = 3840
      Top = 1920
      Width = 6495
      Height = 360
      TabIndex = 15
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
    Begin VB.Label DetaFifuLbl
      Left = 4080
      Top = 2880
      Width = 6255
      Height = 360
      TabIndex = 21
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
    Begin VB.Label DetaProvLbl
      Left = 4320
      Top = 4440
      Width = 5655
      Height = 360
      TabIndex = 34
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
    Begin VB.Label DetaInsuLbl
      Left = 3840
      Top = 960
      Width = 6495
      Height = 360
      TabIndex = 9
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
    Begin VB.Label SaldImpuLbl
      Left = 12840
      Top = 3960
      Width = 1815
      Height = 360
      TabIndex = 31
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
    Begin VB.Label Label11
      Caption = "Cantidad:"
      Left = 1320
      Top = 3960
      Width = 1020
      Height = 300
      TabIndex = 24
      AutoSize = -1  'True
    End
    Begin VB.Label Label12
      Caption = "Importe Unitario:"
      Left = 4500
      Top = 3960
      Width = 1770
      Height = 300
      TabIndex = 26
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 15255
    Height = 1935
    TabIndex = 3
    OleObjectBlob = "frmReasignarDefinitivadeOrdendeCompra.frx":0C6A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmReasignarDefinitivadeOrdendeCompra.frx":14EA
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15885
    Height = 660
    TabIndex = 45
    OleObjectBlob = "frmReasignarDefinitivadeOrdendeCompra.frx":9068
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 46
      TabStop = 0   'False
      Picture = "frmReasignarDefinitivadeOrdendeCompra.frx":95C4
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmReasignarDefinitivadeOrdendeCompra"


Private Function CodiPartMsk_UnknownEvent_8(arg_C) 'AA98BC
  'Data Table: 4ECA40
  loc_AA940C: FLdRfVar var_92
  loc_AA940F: FLdPr Me
  loc_AA9412: VCallAd Control_ID_cmdCancelar
  loc_AA9415: FStAdFunc var_90
  loc_AA9418: FLdPr var_90
  loc_AA941B:  = Me.Value
  loc_AA9420: FLdI2 var_92
  loc_AA9423: NotI4
  loc_AA9424: FLdPr Me
  loc_AA9427: VCallAd Control_ID_CodiPartMsk
  loc_AA942A: FStAdFunc var_98
  loc_AA942D: FLdPr var_98
  loc_AA9430: LateIdLdVar var_A8 DispID_13 -32767
  loc_AA9437: CBoolVar
  loc_AA9439: AndI4
  loc_AA943A: FFreeAd var_90 = ""
  loc_AA9441: FFree1Var var_A8 = ""
  loc_AA9444: BranchF loc_AA98B8
  loc_AA9447: FLdPr Me
  loc_AA944A: VCallAd Control_ID_CodiPartMsk
  loc_AA944D: FStAdFunc var_90
  loc_AA9450: FLdRfVar var_90
  loc_AA9453: ImpAdCallFPR4 Proc_261_65_9A9668()
  loc_AA9458: FFree1Ad var_90
  loc_AA945B: FLdPr Me
  loc_AA945E: VCallAd Control_ID_CodiPartMsk
  loc_AA9461: FStAdFunc var_90
  loc_AA9464: FLdPr var_90
  loc_AA9467: LateIdLdVar var_A8 DispID_22 0
  loc_AA946E: PopAd
  loc_AA9470: FLdRfVar var_AC
  loc_AA9473: FLdPr Me
  loc_AA9476:  = Me.Name
  loc_AA947B: FLdPr Me
  loc_AA947E: MemLdRfVar from_stack_1.global_80
  loc_AA9481: NewIfNullRf
  loc_AA9485: ILdRf var_AC
  loc_AA9488: LitI2_Byte 0
  loc_AA948A: FLdRfVar var_A8
  loc_AA948D: CStrVarTmp
  loc_AA948E: FStStrNoPop var_B0
  loc_AA9491: ImpAdLdI2 MemVar_C3D064
  loc_AA9494: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_AA9499: FStStrNoPop var_B4
  loc_AA949C: FLdPr Me
  loc_AA949F: MemStStrCopy
  loc_AA94A3: FFreeStr var_B0 = "": var_AC = ""
  loc_AA94AC: FFree1Ad var_90
  loc_AA94AF: FFree1Var var_A8 = ""
  loc_AA94B2: FLdPr Me
  loc_AA94B5: VCallAd Control_ID_CodiPartMsk
  loc_AA94B8: FStAdFunc var_BC
  loc_AA94BB: FLdPr Me
  loc_AA94BE: VCallAd Control_ID_DetaPartLbl
  loc_AA94C1: FStAdFunc var_B8
  loc_AA94C4: FLdRfVar var_B8
  loc_AA94C7: FLdZeroAd var_BC
  loc_AA94CA: FStAdFuncNoPop
  loc_AA94CD: CastAd
  loc_AA94D0: FStAdFunc var_98
  loc_AA94D3: FLdRfVar var_98
  loc_AA94D6: FLdPr Me
  loc_AA94D9: MemLdRfVar from_stack_1.global_68
  loc_AA94DC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_AA94E1: IStI2 arg_C
  loc_AA94E4: FFreeAd var_90 = "": var_98 = "": var_B8 = ""
  loc_AA94EF: ILdI2 arg_C
  loc_AA94F2: NotI4
  loc_AA94F3: BranchF loc_AA95E9
  loc_AA94F6: FLdRfVar var_AC
  loc_AA94F9: FLdPr Me
  loc_AA94FC: MemLdRfVar from_stack_1.global_80
  loc_AA94FF: NewIfNullPr tblpartida
  loc_AA9502: from_stack_1v = tblpartida.DetaPartGet()
  loc_AA9507: ILdRf var_AC
  loc_AA950A: FLdPr Me
  loc_AA950D: VCallAd Control_ID_DetaPartLbl
  loc_AA9510: FStAdFunc var_90
  loc_AA9513: FLdPr var_90
  loc_AA9516: Me.Caption = from_stack_1
  loc_AA951B: FFree1Str var_AC
  loc_AA951E: FFree1Ad var_90
  loc_AA9521: LitI2_Byte 0
  loc_AA9523: BranchF loc_AA95E9
  loc_AA9526: LitStr "SELECT * FROM insupart WHERE PeriInfo = "
  loc_AA9529: ImpAdLdI2 MemVar_C3D064
  loc_AA952C: CStrUI1
  loc_AA952E: FStStrNoPop var_AC
  loc_AA9531: ConcatStr
  loc_AA9532: FStStrNoPop var_B0
  loc_AA9535: LitStr " AND CodiPart = '"
  loc_AA9538: ConcatStr
  loc_AA9539: FStStrNoPop var_B4
  loc_AA953C: FLdPr Me
  loc_AA953F: VCallAd Control_ID_CodiPartMsk
  loc_AA9542: FStAdFunc var_90
  loc_AA9545: FLdPr var_90
  loc_AA9548: LateIdLdVar var_A8 DispID_22 0
  loc_AA954F: CStrVarTmp
  loc_AA9550: FStStrNoPop var_C0
  loc_AA9553: ConcatStr
  loc_AA9554: FStStrNoPop var_C4
  loc_AA9557: LitStr "' AND CodiInsu = "
  loc_AA955A: ConcatStr
  loc_AA955B: FStStrNoPop var_D8
  loc_AA955E: FLdPr Me
  loc_AA9561: VCallAd Control_ID_CodiInsuMsk
  loc_AA9564: FStAdFunc var_98
  loc_AA9567: FLdPr var_98
  loc_AA956A: LateIdLdVar var_D4 DispID_0 0
  loc_AA9571: CStrVarTmp
  loc_AA9572: FStStrNoPop var_DC
  loc_AA9575: ConcatStr
  loc_AA9576: FStStrNoPop var_E0
  loc_AA9579: FLdPr Me
  loc_AA957C: MemLdRfVar from_stack_1.global_56
  loc_AA957F: NewIfNullPr clsinsupart
  loc_AA9582: Call clsinsupart.RedefineRS(from_stack_1v)
  loc_AA9587: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_C0 = "": var_C4 = "": var_D8 = "": var_DC = ""
  loc_AA959A: FFreeAd var_90 = ""
  loc_AA95A1: FFreeVar var_A8 = ""
  loc_AA95A8: FLdRfVar var_E4
  loc_AA95AB: FLdPr Me
  loc_AA95AE: MemLdRfVar from_stack_1.global_56
  loc_AA95B1: NewIfNullPr clsinsupart
  loc_AA95B4: from_stack_1 = clsinsupart.RecordCount
  loc_AA95B9: ILdRf var_E4
  loc_AA95BC: LitI4 0
  loc_AA95C1: EqI4
  loc_AA95C2: BranchF loc_AA95E9
  loc_AA95C5: LitI4 0
  loc_AA95CA: LitStr "La Partida NO Corresponde al Insumo. Reintente..."
  loc_AA95CD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AA95D2: FLdPr Me
  loc_AA95D5: VCallAd Control_ID_CodiPartMsk
  loc_AA95D8: CVarAd
  loc_AA95DC: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_AA95E1: FFree1Var var_A8 = ""
  loc_AA95E4: LitI2_Byte &HFF
  loc_AA95E6: IStI2 arg_C
  loc_AA95E9: ILdI2 arg_C
  loc_AA95EC: NotI4
  loc_AA95ED: BranchF loc_AA98B8
  loc_AA95F0: FLdRfVar var_194
  loc_AA95F3: FLdRfVar var_B8
  loc_AA95F6: LitVarStr var_F4, "ExorImpu"
  loc_AA95FB: PopAdLdVar
  loc_AA95FC: FLdRfVar var_98
  loc_AA95FF: FLdRfVar var_90
  loc_AA9602: FLdPr Me
  loc_AA9605: MemLdRfVar from_stack_1.global_52
  loc_AA9608: NewIfNullPr clsimputacion
  loc_AA960B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA9610: FLdPr var_90
  loc_AA9613:  = Me.Fields
  loc_AA9618: FLdPr var_98
  loc_AA961B: from_stack_2 = Me.Item(from_stack_1)
  loc_AA9620: FLdPr var_B8
  loc_AA9623:  = Me.Value
  loc_AA9628: FLdRfVar var_1A4
  loc_AA962B: FLdRfVar var_10C
  loc_AA962E: LitVarStr var_108, "CodiNope"
  loc_AA9633: PopAdLdVar
  loc_AA9634: FLdRfVar var_F8
  loc_AA9637: FLdRfVar var_BC
  loc_AA963A: FLdPr Me
  loc_AA963D: MemLdRfVar from_stack_1.global_52
  loc_AA9640: NewIfNullPr clsimputacion
  loc_AA9643: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA9648: FLdPr var_BC
  loc_AA964B:  = Me.Fields
  loc_AA9650: FLdPr var_F8
  loc_AA9653: from_stack_2 = Me.Item(from_stack_1)
  loc_AA9658: FLdPr var_10C
  loc_AA965B:  = Me.Value
  loc_AA9660: FLdRfVar var_1B4
  loc_AA9663: FLdRfVar var_128
  loc_AA9666: LitVarStr var_124, "Item"
  loc_AA966B: PopAdLdVar
  loc_AA966C: FLdRfVar var_114
  loc_AA966F: FLdRfVar var_110
  loc_AA9672: FLdPr Me
  loc_AA9675: MemLdRfVar from_stack_1.global_52
  loc_AA9678: NewIfNullPr clsimputacion
  loc_AA967B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA9680: FLdPr var_110
  loc_AA9683:  = Me.Fields
  loc_AA9688: FLdPr var_114
  loc_AA968B: from_stack_2 = Me.Item(from_stack_1)
  loc_AA9690: FLdPr var_128
  loc_AA9693:  = Me.Value
  loc_AA9698: FLdRfVar var_1C4
  loc_AA969B: FLdRfVar var_144
  loc_AA969E: LitVarStr var_140, "Altern"
  loc_AA96A3: PopAdLdVar
  loc_AA96A4: FLdRfVar var_130
  loc_AA96A7: FLdRfVar var_12C
  loc_AA96AA: FLdPr Me
  loc_AA96AD: MemLdRfVar from_stack_1.global_52
  loc_AA96B0: NewIfNullPr clsimputacion
  loc_AA96B3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA96B8: FLdPr var_12C
  loc_AA96BB:  = Me.Fields
  loc_AA96C0: FLdPr var_130
  loc_AA96C3: from_stack_2 = Me.Item(from_stack_1)
  loc_AA96C8: FLdPr var_144
  loc_AA96CB:  = Me.Value
  loc_AA96D0: FLdRfVar var_1D4
  loc_AA96D3: FLdRfVar var_160
  loc_AA96D6: LitVarStr var_15C, "CodiOrco"
  loc_AA96DB: PopAdLdVar
  loc_AA96DC: FLdRfVar var_14C
  loc_AA96DF: FLdRfVar var_148
  loc_AA96E2: FLdPr Me
  loc_AA96E5: MemLdRfVar from_stack_1.global_52
  loc_AA96E8: NewIfNullPr clsimputacion
  loc_AA96EB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA96F0: FLdPr var_148
  loc_AA96F3:  = Me.Fields
  loc_AA96F8: FLdPr var_14C
  loc_AA96FB: from_stack_2 = Me.Item(from_stack_1)
  loc_AA9700: FLdPr var_160
  loc_AA9703:  = Me.Value
  loc_AA9708: FLdRfVar var_1E4
  loc_AA970B: FLdRfVar var_17C
  loc_AA970E: LitVarStr var_178, "CodiRece"
  loc_AA9713: PopAdLdVar
  loc_AA9714: FLdRfVar var_168
  loc_AA9717: FLdRfVar var_164
  loc_AA971A: FLdPr Me
  loc_AA971D: MemLdRfVar from_stack_1.global_52
  loc_AA9720: NewIfNullPr clsimputacion
  loc_AA9723: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA9728: FLdPr var_164
  loc_AA972B:  = Me.Fields
  loc_AA9730: FLdPr var_168
  loc_AA9733: from_stack_2 = Me.Item(from_stack_1)
  loc_AA9738: FLdPr var_17C
  loc_AA973B:  = Me.Value
  loc_AA9740: FLdPr Me
  loc_AA9743: VCallAd Control_ID_CodiPartMsk
  loc_AA9746: FStAdFunc var_180
  loc_AA9749: FLdPr var_180
  loc_AA974C: LateIdLdVar var_A8 DispID_22 0
  loc_AA9753: PopAd
  loc_AA9755: FLdPr Me
  loc_AA9758: VCallAd Control_ID_CodiOrgaMsk
  loc_AA975B: FStAdFunc var_184
  loc_AA975E: FLdPr var_184
  loc_AA9761: LateIdLdVar var_D4 DispID_22 0
  loc_AA9768: PopAd
  loc_AA976A: FLdRfVar var_C0
  loc_AA976D: FLdRfVar var_D4
  loc_AA9770: CStrVarTmp
  loc_AA9771: FStStrNoPop var_B4
  loc_AA9774: FLdRfVar var_A8
  loc_AA9777: CStrVarTmp
  loc_AA9778: FStStrNoPop var_B0
  loc_AA977B: FLdRfVar var_1E4
  loc_AA977E: CI2Var
  loc_AA977F: FLdRfVar var_1D4
  loc_AA9782: CI2Var
  loc_AA9783: FLdRfVar var_1C4
  loc_AA9786: CI2Var
  loc_AA9787: FLdRfVar var_1B4
  loc_AA978A: CI2Var
  loc_AA978B: FLdRfVar var_1A4
  loc_AA978E: CI4Var
  loc_AA9790: FLdRfVar var_194
  loc_AA9793: CStrVarTmp
  loc_AA9794: FStStrNoPop var_AC
  loc_AA9797: LitI2_Byte 1
  loc_AA9799: ImpAdLdI2 MemVar_C3D064
  loc_AA979C: FLdPr Me
  loc_AA979F: MemLdRfVar from_stack_1.global_52
  loc_AA97A2: NewIfNullPr clsimputacion
  loc_AA97A5: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_AA97AA: ILdRf var_C0
  loc_AA97AD: CDateStr
  loc_AA97AF: FStFPR8 var_8C
  loc_AA97B2: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_AA97BD: FFreeAd var_90 = "": var_98 = "": var_BC = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_164 = "": var_168 = "": var_180 = "": var_184 = "": var_B8 = "": var_10C = "": var_128 = "": var_144 = "": var_160 = ""
  loc_AA97E8: FFreeVar var_A8 = "": var_D4 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = ""
  loc_AA97FB: FLdPr Me
  loc_AA97FE: VCallAd Control_ID_FechImpuMsk
  loc_AA9801: FStAdFunc var_90
  loc_AA9804: FLdPr var_90
  loc_AA9807: LateIdLdVar var_A8 DispID_15 0
  loc_AA980E: PopAd
  loc_AA9810: FLdPr Me
  loc_AA9813: VCallAd Control_ID_FechImpuMsk
  loc_AA9816: FStAdFunc var_98
  loc_AA9819: FLdPr var_98
  loc_AA981C: LateIdLdVar var_D4 DispID_22 0
  loc_AA9823: PopAd
  loc_AA9825: FLdRfVar var_8C
  loc_AA9828: CVarRef
  loc_AA982D: FLdRfVar var_D4
  loc_AA9830: CStrVarTmp
  loc_AA9831: CVarStr var_194
  loc_AA9834: FLdRfVar var_A8
  loc_AA9837: CStrVarTmp
  loc_AA9838: FStStrNoPop var_AC
  loc_AA983B: CDateStr
  loc_AA983D: FLdFPR8 var_8C
  loc_AA9840: GtR4
  loc_AA9841: CVarBoolI2 var_F4
  loc_AA9845: FLdRfVar var_1A4
  loc_AA9848: ImpAdCallFPR4  = IIf(, , )
  loc_AA984D: FLdRfVar var_1A4
  loc_AA9850: CStrVarTmp
  loc_AA9851: CVarStr var_1B4
  loc_AA9854: PopAdLdVar
  loc_AA9855: FLdPr Me
  loc_AA9858: VCallAd Control_ID_FechImpuMsk
  loc_AA985B: FStAdFunc var_B8
  loc_AA985E: FLdPr var_B8
  loc_AA9861: LateIdSt
  loc_AA9866: FFree1Str var_AC
  loc_AA9869: FFreeAd var_90 = "": var_98 = ""
  loc_AA9872: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_194 = "": var_1A4 = ""
  loc_AA9881: FLdPr Me
  loc_AA9884: VCallAd Control_ID_FechImpuMsk
  loc_AA9887: FStAdFunc var_90
  loc_AA988A: FLdPr var_90
  loc_AA988D: LateIdLdVar var_A8 DispID_15 0
  loc_AA9894: CStrVarTmp
  loc_AA9895: CVarStr var_D4
  loc_AA9898: PopAdLdVar
  loc_AA9899: FLdPr Me
  loc_AA989C: VCallAd Control_ID_FechImpuMsk
  loc_AA989F: FStAdFunc var_98
  loc_AA98A2: FLdPr var_98
  loc_AA98A5: LateIdSt
  loc_AA98AA: FFreeAd var_90 = ""
  loc_AA98B1: FFreeVar var_A8 = ""
  loc_AA98B8: ExitProcHresult
  loc_AA98B9: StAryRecMove
End Function

Private Sub CodiPartMsk_KeyPress(KeyAscii As Integer) 'A11120
  'Data Table: 4ECA40
  loc_A10FB8: ILdI2 KeyAscii
  loc_A10FBB: CI4UI1
  loc_A10FBC: LitI4 &H20
  loc_A10FC1: EqI4
  loc_A10FC2: BranchF loc_A1111F
  loc_A10FC5: FLdPr Me
  loc_A10FC8: VCallAd Control_ID_CodiInsuMsk
  loc_A10FCB: FStAdFunc var_88
  loc_A10FCE: FLdPr var_88
  loc_A10FD1: LateIdLdVar var_98 DispID_22 0
  loc_A10FD8: CStrVarTmp
  loc_A10FD9: FStStrNoPop var_9C
  loc_A10FDC: CI4Str
  loc_A10FDD: ImpAdLdRf MemVar_C3D724
  loc_A10FE0: NewIfNullPr bscPartida
  loc_A10FE3: Call bscPartida.iCodiInsuPut(from_stack_1v)
  loc_A10FE8: FFree1Str var_9C
  loc_A10FEB: FFree1Ad var_88
  loc_A10FEE: FFree1Var var_98 = ""
  loc_A10FF1: LitNothing
  loc_A10FF3: CastAd
  loc_A10FF6: FStAdFuncNoPop
  loc_A10FF9: ImpAdLdRf MemVar_C3D724
  loc_A10FFC: NewIfNullPr bscPartida
  loc_A10FFF: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_A11004: FFree1Ad var_88
  loc_A11007: LitVar_Missing var_BC
  loc_A1100A: PopAdLdVar
  loc_A1100B: LitVarI4
  loc_A11013: PopAdLdVar
  loc_A11014: ImpAdLdRf MemVar_C3D724
  loc_A11017: NewIfNullPr bscPartida
  loc_A1101A: bscPartida.Show from_stack_1, from_stack_2
  loc_A1101F: FLdRfVar var_C0
  loc_A11022: FLdRfVar var_88
  loc_A11025: ImpAdLdRf MemVar_C3D724
  loc_A11028: NewIfNullPr bscPartida
  loc_A1102B: from_stack_1v = bscPartida.global_4332396Get()
  loc_A11030: FLdPr var_88
  loc_A11033: from_stack_1 = clsbase.RecordCount
  loc_A11038: ILdRf var_C0
  loc_A1103B: LitI4 0
  loc_A11040: GtI4
  loc_A11041: FFree1Ad var_88
  loc_A11044: BranchF loc_A1111F
  loc_A11047: FLdRfVar var_98
  loc_A1104A: FLdRfVar var_CC
  loc_A1104D: LitVarStr var_AC, "CodiPart"
  loc_A11052: PopAdLdVar
  loc_A11053: FLdRfVar var_C8
  loc_A11056: FLdRfVar var_C4
  loc_A11059: FLdRfVar var_88
  loc_A1105C: ImpAdLdRf MemVar_C3D724
  loc_A1105F: NewIfNullPr bscPartida
  loc_A11062: from_stack_1v = bscPartida.global_4332396Get()
  loc_A11067: FLdPr var_88
  loc_A1106A: from_stack_1v = clsbase.RsFrmGet()
  loc_A1106F: FLdPr var_C4
  loc_A11072:  = Me.Fields
  loc_A11077: FLdPr var_C8
  loc_A1107A: from_stack_2 = Me.Item(from_stack_1)
  loc_A1107F: FLdPr var_CC
  loc_A11082:  = Me.Value
  loc_A11087: FLdRfVar var_98
  loc_A1108A: CStrVarTmp
  loc_A1108B: CVarStr var_DC
  loc_A1108E: PopAdLdVar
  loc_A1108F: FLdPr Me
  loc_A11092: VCallAd Control_ID_CodiPartMsk
  loc_A11095: FStAdFunc var_E0
  loc_A11098: FLdPr var_E0
  loc_A1109B: LateIdSt
  loc_A110A0: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A110AD: FFreeVar var_98 = ""
  loc_A110B4: FLdRfVar var_98
  loc_A110B7: FLdRfVar var_CC
  loc_A110BA: LitVarStr var_AC, "DetaPart"
  loc_A110BF: PopAdLdVar
  loc_A110C0: FLdRfVar var_C8
  loc_A110C3: FLdRfVar var_C4
  loc_A110C6: FLdRfVar var_88
  loc_A110C9: ImpAdLdRf MemVar_C3D724
  loc_A110CC: NewIfNullPr bscPartida
  loc_A110CF: from_stack_1v = bscPartida.global_4332396Get()
  loc_A110D4: FLdPr var_88
  loc_A110D7: from_stack_1v = clsbase.RsFrmGet()
  loc_A110DC: FLdPr var_C4
  loc_A110DF:  = Me.Fields
  loc_A110E4: FLdPr var_C8
  loc_A110E7: from_stack_2 = Me.Item(from_stack_1)
  loc_A110EC: FLdPr var_CC
  loc_A110EF:  = Me.Value
  loc_A110F4: FLdRfVar var_98
  loc_A110F7: CStrVarTmp
  loc_A110F8: FStStrNoPop var_9C
  loc_A110FB: FLdPr Me
  loc_A110FE: VCallAd Control_ID_DetaPartLbl
  loc_A11101: FStAdFunc var_E0
  loc_A11104: FLdPr var_E0
  loc_A11107: Me.Caption = from_stack_1
  loc_A1110C: FFree1Str var_9C
  loc_A1110F: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A1111C: FFree1Var var_98 = ""
  loc_A1111F: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_0 '94CEF0
  'Data Table: 4ECA40
  loc_94CEDC: FLdPr Me
  loc_94CEDF: VCallAd Control_ID_FechImpuMsk
  loc_94CEE2: CVarAd
  loc_94CEE6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CEEB: FFree1Var var_94 = ""
  loc_94CEEE: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_8 'A3094C
  'Data Table: 4ECA40
  loc_A30798: FLdRfVar var_8A
  loc_A3079B: FLdPr Me
  loc_A3079E: VCallAd Control_ID_cmdCancelar
  loc_A307A1: FStAdFunc var_88
  loc_A307A4: FLdPr var_88
  loc_A307A7:  = Me.Value
  loc_A307AC: FLdI2 var_8A
  loc_A307AF: NotI4
  loc_A307B0: FLdPr Me
  loc_A307B3: VCallAd Control_ID_FechImpuMsk
  loc_A307B6: FStAdFunc var_90
  loc_A307B9: FLdPr var_90
  loc_A307BC: LateIdLdVar var_A0 DispID_13 -32767
  loc_A307C3: CBoolVar
  loc_A307C5: AndI4
  loc_A307C6: FFreeAd var_88 = ""
  loc_A307CD: FFree1Var var_A0 = ""
  loc_A307D0: BranchF loc_A30949
  loc_A307D3: FLdPr Me
  loc_A307D6: VCallAd Control_ID_FechImpuMsk
  loc_A307D9: FStAdFunc var_88
  loc_A307DC: FLdPr var_88
  loc_A307DF: LateIdLdVar var_A0 DispID_15 0
  loc_A307E6: PopAd
  loc_A307E8: FLdPr Me
  loc_A307EB: VCallAd Control_ID_FechImpuMsk
  loc_A307EE: FStAdFunc var_90
  loc_A307F1: FLdPr var_90
  loc_A307F4: LateIdLdVar var_B0 DispID_11 -32767
  loc_A307FB: PopAd
  loc_A307FD: FLdRfVar var_E0
  loc_A30800: FLdRfVar var_D0
  loc_A30803: LitVarStr var_CC, "FechImpu"
  loc_A30808: PopAdLdVar
  loc_A30809: FLdRfVar var_BC
  loc_A3080C: FLdRfVar var_B8
  loc_A3080F: FLdPr Me
  loc_A30812: MemLdRfVar from_stack_1.global_52
  loc_A30815: NewIfNullPr clsimputacion
  loc_A30818: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A3081D: FLdPr var_B8
  loc_A30820:  = Me.Fields
  loc_A30825: FLdPr var_BC
  loc_A30828: from_stack_2 = Me.Item(from_stack_1)
  loc_A3082D: FLdPr var_D0
  loc_A30830:  = Me.Value
  loc_A30835: FLdPr Me
  loc_A30838: VCallAd Control_ID_FechImpuMsk
  loc_A3083B: FStAdFunc var_E4
  loc_A3083E: FLdPr var_E4
  loc_A30841: LateIdLdVar var_F4 DispID_11 -32767
  loc_A30848: PopAd
  loc_A3084A: FLdRfVar var_110
  loc_A3084D: LitVarStr var_10C, "FechImpu"
  loc_A30852: PopAdLdVar
  loc_A30853: FLdRfVar var_FC
  loc_A30856: FLdRfVar var_F8
  loc_A30859: FLdPr Me
  loc_A3085C: MemLdRfVar from_stack_1.global_52
  loc_A3085F: NewIfNullPr clsimputacion
  loc_A30862: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A30867: FLdPr var_F8
  loc_A3086A:  = Me.Fields
  loc_A3086F: FLdPr var_FC
  loc_A30872: from_stack_2 = Me.Item(from_stack_1)
  loc_A30877: FLdZeroAd var_110
  loc_A3087A: CVarAd
  loc_A3087E: FLdRfVar var_F4
  loc_A30881: CStrVarTmp
  loc_A30882: CVarStr var_130
  loc_A30885: FLdRfVar var_B0
  loc_A30888: CStrVarTmp
  loc_A30889: FStStrNoPop var_B4
  loc_A3088C: CDateStr
  loc_A3088E: FLdRfVar var_E0
  loc_A30891: FnCDateVar
  loc_A30893: GtR4
  loc_A30894: CVarBoolI2 var_120
  loc_A30898: FLdRfVar var_150
  loc_A3089B: ImpAdCallFPR4  = IIf(, , )
  loc_A308A0: FLdPr Me
  loc_A308A3: VCallAd Control_ID_FechImpuMsk
  loc_A308A6: FStAdFunc var_164
  loc_A308A9: LitI2_Byte &HFF
  loc_A308AB: PopTmpLdAd2 var_8A
  loc_A308AE: FLdZeroAd var_164
  loc_A308B1: FStAdFunc var_15C
  loc_A308B4: FLdRfVar var_15C
  loc_A308B7: FLdRfVar var_150
  loc_A308BA: CStrVarVal var_158
  loc_A308BE: LitI2_Byte &HFF
  loc_A308C0: LitI2_Byte &HFF
  loc_A308C2: FLdRfVar var_A0
  loc_A308C5: CStrVarTmp
  loc_A308C6: FStStrNoPop var_154
  loc_A308C9: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A308CE: FStStrNoPop var_160
  loc_A308D1: FLdPr Me
  loc_A308D4: MemStStrCopy
  loc_A308D8: FFreeStr var_B4 = "": var_154 = "": var_158 = ""
  loc_A308E3: FFreeAd var_88 = "": var_90 = "": var_B8 = "": var_BC = "": var_D0 = "": var_E4 = "": var_F8 = "": var_FC = "": var_15C = ""
  loc_A308FA: FFreeVar var_A0 = "": var_B0 = "": var_E0 = "": var_F4 = "": var_120 = "": var_130 = "": var_140 = ""
  loc_A3090D: FLdPr Me
  loc_A30910: VCallAd Control_ID_FechImpuMsk
  loc_A30913: FStAdFunc var_BC
  loc_A30916: LitNothing
  loc_A30918: CastAd
  loc_A3091B: FStAdFunc var_B8
  loc_A3091E: FLdRfVar var_B8
  loc_A30921: FLdZeroAd var_BC
  loc_A30924: FStAdFuncNoPop
  loc_A30927: CastAd
  loc_A3092A: FStAdFunc var_90
  loc_A3092D: FLdRfVar var_90
  loc_A30930: FLdPr Me
  loc_A30933: MemLdRfVar from_stack_1.global_68
  loc_A30936: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A3093B: IStI2 KeyAscii
  loc_A3093E: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_A30949: ExitProcHresult
  loc_A3094A: Erase
End Sub

Private Sub FechImpuMsk_KeyPress(KeyAscii As Integer) '98ABC8
  'Data Table: 4ECA40
  loc_98AB84: ILdI2 KeyAscii
  loc_98AB87: CI4UI1
  loc_98AB88: LitI4 &H20
  loc_98AB8D: EqI4
  loc_98AB8E: BranchF loc_98ABC4
  loc_98AB91: LitVar_Missing var_A4
  loc_98AB94: PopAdLdVar
  loc_98AB95: LitVarI4
  loc_98AB9D: PopAdLdVar
  loc_98AB9E: ImpAdLdRf MemVar_C3D9A8
  loc_98ABA1: NewIfNullPr frmCalendario
  loc_98ABA4: frmCalendario.Show from_stack_1, from_stack_2
  loc_98ABA9: ImpAdLdRf MemVar_C3D038
  loc_98ABAC: CDargRef
  loc_98ABB0: FLdPr Me
  loc_98ABB3: VCallAd Control_ID_FechImpuMsk
  loc_98ABB6: FStAdFunc var_A8
  loc_98ABB9: FLdPr var_A8
  loc_98ABBC: LateIdSt
  loc_98ABC1: FFree1Ad var_A8
  loc_98ABC4: ExitProcHresult
  loc_98ABC5: GtCy
  loc_98ABC6: CR8R8
End Sub

Private Sub CantImpuTxt_GotFocus() '98CBCC
  'Data Table: 4ECA40
  loc_98CB8C: FLdPr Me
  loc_98CB8F: MemLdUI1 global_64
  loc_98CB93: CI2UI1
  loc_98CB95: LitI2_Byte 3
  loc_98CB97: EqI2
  loc_98CB98: BranchF loc_98CBB9
  loc_98CB9B: LitI2_Byte 1
  loc_98CB9D: CStrUI1
  loc_98CB9F: FStStrNoPop var_88
  loc_98CBA2: FLdPr Me
  loc_98CBA5: VCallAd Control_ID_CantImpuTxt
  loc_98CBA8: FStAdFunc var_8C
  loc_98CBAB: FLdPr var_8C
  loc_98CBAE: Me.Text = from_stack_1
  loc_98CBB3: FFree1Str var_88
  loc_98CBB6: FFree1Ad var_8C
  loc_98CBB9: FLdPr Me
  loc_98CBBC: VCallAd Control_ID_CantImpuTxt
  loc_98CBBF: CVarAd
  loc_98CBC3: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_98CBC8: FFree1Var var_9C = ""
  loc_98CBCB: ExitProcHresult
End Sub

Private Sub CantImpuTxt_KeyPress(KeyAscii As Integer) '97E510
  'Data Table: 4ECA40
  loc_97E4DC: LitStr "1234567890,."
  loc_97E4DF: FStStrCopy var_88
  loc_97E4E2: FLdRfVar var_88
  loc_97E4E5: ILdRf KeyAscii
  loc_97E4E8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97E4ED: IStI2 KeyAscii
  loc_97E4F0: FFree1Str var_88
  loc_97E4F3: ILdI2 KeyAscii
  loc_97E4F6: LitStr "."
  loc_97E4F9: ImpAdCallI2 Asc()
  loc_97E4FE: EqI2
  loc_97E4FF: BranchF loc_97E50D
  loc_97E502: LitStr ","
  loc_97E505: ImpAdCallI2 Asc()
  loc_97E50A: IStI2 KeyAscii
  loc_97E50D: ExitProcHresult
  loc_97E50E: FStVarCopyObj var_3800
End Sub

Private Sub CantImpuTxt_Validate(Cancel As Boolean) '9BC0CC
  'Data Table: 4ECA40
  loc_9BC018: FLdRfVar var_8A
  loc_9BC01B: FLdPr Me
  loc_9BC01E: VCallAd Control_ID_cmdCancelar
  loc_9BC021: FStAdFunc var_88
  loc_9BC024: FLdPr var_88
  loc_9BC027:  = Me.Value
  loc_9BC02C: FLdI2 var_8A
  loc_9BC02F: NotI4
  loc_9BC030: FLdRfVar var_92
  loc_9BC033: FLdPr Me
  loc_9BC036: VCallAd Control_ID_CantImpuTxt
  loc_9BC039: FStAdFunc var_90
  loc_9BC03C: FLdPr var_90
  loc_9BC03F:  = Me.Enabled
  loc_9BC044: FLdI2 var_92
  loc_9BC047: AndI4
  loc_9BC048: FFreeAd var_88 = ""
  loc_9BC04F: BranchF loc_9BC0CA
  loc_9BC052: FLdRfVar var_98
  loc_9BC055: FLdPr Me
  loc_9BC058: VCallAd Control_ID_CantImpuTxt
  loc_9BC05B: FStAdFunc var_88
  loc_9BC05E: FLdPr var_88
  loc_9BC061:  = Me.Text
  loc_9BC066: LitStr "0"
  loc_9BC069: LitI2_Byte &HFF
  loc_9BC06B: LitI2_Byte 0
  loc_9BC06D: LitI2_Byte 0
  loc_9BC06F: ILdRf var_98
  loc_9BC072: LitStr "Cantidad"
  loc_9BC075: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9BC07A: FStStrNoPop var_9C
  loc_9BC07D: FLdPr Me
  loc_9BC080: MemStStrCopy
  loc_9BC084: FFreeStr var_98 = ""
  loc_9BC08B: FFree1Ad var_88
  loc_9BC08E: FLdPr Me
  loc_9BC091: VCallAd Control_ID_CantImpuTxt
  loc_9BC094: FStAdFunc var_A4
  loc_9BC097: LitNothing
  loc_9BC099: CastAd
  loc_9BC09C: FStAdFunc var_A0
  loc_9BC09F: FLdRfVar var_A0
  loc_9BC0A2: FLdZeroAd var_A4
  loc_9BC0A5: FStAdFuncNoPop
  loc_9BC0A8: CastAd
  loc_9BC0AB: FStAdFunc var_90
  loc_9BC0AE: FLdRfVar var_90
  loc_9BC0B1: FLdPr Me
  loc_9BC0B4: MemLdRfVar from_stack_1.global_68
  loc_9BC0B7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BC0BC: IStI2 Cancel
  loc_9BC0BF: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BC0CA: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_GotFocus() '9C1524
  'Data Table: 4ECA40
  loc_9C1468: FLdRfVar var_8C
  loc_9C146B: FLdPr Me
  loc_9C146E: VCallAd Control_ID_ImpoImpuTxt
  loc_9C1471: FStAdFunc var_88
  loc_9C1474: FLdPr var_88
  loc_9C1477:  = Me.Text
  loc_9C147C: FLdZeroAd var_8C
  loc_9C147F: CVarStr var_9C
  loc_9C1482: ImpAdCallI2 IsNumeric()
  loc_9C1487: FFree1Ad var_88
  loc_9C148A: FFree1Var var_9C = ""
  loc_9C148D: BranchF loc_9C1511
  loc_9C1490: FLdRfVar var_8C
  loc_9C1493: FLdPr Me
  loc_9C1496: VCallAd Control_ID_ImpoImpuTxt
  loc_9C1499: FStAdFunc var_88
  loc_9C149C: FLdPr var_88
  loc_9C149F:  = Me.Text
  loc_9C14A4: ILdRf var_8C
  loc_9C14A7: CR8Str
  loc_9C14A9: LitI2_Byte 0
  loc_9C14AB: CR8I2
  loc_9C14AC: GtR4
  loc_9C14AD: FFree1Str var_8C
  loc_9C14B0: FFree1Ad var_88
  loc_9C14B3: BranchF loc_9C1511
  loc_9C14B6: FLdRfVar var_A4
  loc_9C14B9: FLdPr Me
  loc_9C14BC: VCallAd Control_ID_CantImpuTxt
  loc_9C14BF: FStAdFunc var_A0
  loc_9C14C2: FLdPr var_A0
  loc_9C14C5:  = Me.Text
  loc_9C14CA: FLdRfVar var_8C
  loc_9C14CD: FLdPr Me
  loc_9C14D0: VCallAd Control_ID_ImpoImpuTxt
  loc_9C14D3: FStAdFunc var_88
  loc_9C14D6: FLdPr var_88
  loc_9C14D9:  = Me.Text
  loc_9C14DE: ILdRf var_8C
  loc_9C14E1: CR8Str
  loc_9C14E3: ILdRf var_A4
  loc_9C14E6: CR8Str
  loc_9C14E8: DivR8
  loc_9C14E9: CStrR8
  loc_9C14EB: FStStrNoPop var_A8
  loc_9C14EE: FLdPr Me
  loc_9C14F1: VCallAd Control_ID_ImunImpuTxt
  loc_9C14F4: FStAdFunc var_AC
  loc_9C14F7: FLdPr var_AC
  loc_9C14FA: Me.Text = from_stack_1
  loc_9C14FF: FFreeStr var_8C = "": var_A4 = ""
  loc_9C1508: FFreeAd var_88 = "": var_A0 = ""
  loc_9C1511: FLdPr Me
  loc_9C1514: VCallAd Control_ID_ImunImpuTxt
  loc_9C1517: CVarAd
  loc_9C151B: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9C1520: FFree1Var var_9C = ""
  loc_9C1523: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_KeyPress(KeyAscii As Integer) '97E718
  'Data Table: 4ECA40
  loc_97E6E4: LitStr "1234567890,."
  loc_97E6E7: FStStrCopy var_88
  loc_97E6EA: FLdRfVar var_88
  loc_97E6ED: ILdRf KeyAscii
  loc_97E6F0: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97E6F5: IStI2 KeyAscii
  loc_97E6F8: FFree1Str var_88
  loc_97E6FB: ILdI2 KeyAscii
  loc_97E6FE: LitStr "."
  loc_97E701: ImpAdCallI2 Asc()
  loc_97E706: EqI2
  loc_97E707: BranchF loc_97E715
  loc_97E70A: LitStr ","
  loc_97E70D: ImpAdCallI2 Asc()
  loc_97E712: IStI2 KeyAscii
  loc_97E715: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_Validate(Cancel As Boolean) '9B76B4
  'Data Table: 4ECA40
  loc_9B760C: FLdRfVar var_8A
  loc_9B760F: FLdPr Me
  loc_9B7612: VCallAd Control_ID_cmdCancelar
  loc_9B7615: FStAdFunc var_88
  loc_9B7618: FLdPr var_88
  loc_9B761B:  = Me.Value
  loc_9B7620: FLdI2 var_8A
  loc_9B7623: NotI4
  loc_9B7624: FFree1Ad var_88
  loc_9B7627: BranchF loc_9B76B3
  loc_9B762A: FLdRfVar var_90
  loc_9B762D: FLdPr Me
  loc_9B7630: VCallAd Control_ID_ImunImpuTxt
  loc_9B7633: FStAdFunc var_88
  loc_9B7636: FLdPr var_88
  loc_9B7639:  = Me.Text
  loc_9B763E: FLdRfVar var_94
  loc_9B7641: FLdPr Me
  loc_9B7644: MemLdUI1 global_64
  loc_9B7648: FLdPr Me
  loc_9B764B: MemLdRfVar from_stack_1.global_80
  loc_9B764E: NewIfNullRf
  loc_9B7652: ILdRf var_90
  loc_9B7655: FLdPr Me
  loc_9B7658: MemLdRfVar from_stack_1.global_52
  loc_9B765B: NewIfNullPr clsimputacion
  loc_9B765E: from_stack_4v = clsimputacion.ValidaImunImpuPreventiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9B7663: ILdRf var_94
  loc_9B7666: FLdPr Me
  loc_9B7669: MemStStrCopy
  loc_9B766D: FFreeStr var_90 = ""
  loc_9B7674: FFree1Ad var_88
  loc_9B7677: FLdPr Me
  loc_9B767A: VCallAd Control_ID_ImunImpuTxt
  loc_9B767D: FStAdFunc var_A0
  loc_9B7680: LitNothing
  loc_9B7682: CastAd
  loc_9B7685: FStAdFunc var_9C
  loc_9B7688: FLdRfVar var_9C
  loc_9B768B: FLdZeroAd var_A0
  loc_9B768E: FStAdFuncNoPop
  loc_9B7691: CastAd
  loc_9B7694: FStAdFunc var_98
  loc_9B7697: FLdRfVar var_98
  loc_9B769A: FLdPr Me
  loc_9B769D: MemLdRfVar from_stack_1.global_68
  loc_9B76A0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B76A5: IStI2 Cancel
  loc_9B76A8: FFreeAd var_88 = "": var_98 = "": var_9C = ""
  loc_9B76B3: ExitProcHresult
End Sub

Private Sub ImpoImpuTxt_GotFocus() '9A4E60
  'Data Table: 4ECA40
  loc_9A4DF0: FLdRfVar var_94
  loc_9A4DF3: FLdPr Me
  loc_9A4DF6: VCallAd Control_ID_CantImpuTxt
  loc_9A4DF9: FStAdFunc var_90
  loc_9A4DFC: FLdPr var_90
  loc_9A4DFF:  = Me.Text
  loc_9A4E04: FLdRfVar var_8C
  loc_9A4E07: FLdPr Me
  loc_9A4E0A: VCallAd Control_ID_ImunImpuTxt
  loc_9A4E0D: FStAdFunc var_88
  loc_9A4E10: FLdPr var_88
  loc_9A4E13:  = Me.Text
  loc_9A4E18: ILdRf var_8C
  loc_9A4E1B: CR8Str
  loc_9A4E1D: ILdRf var_94
  loc_9A4E20: CR8Str
  loc_9A4E22: MulR8
  loc_9A4E23: CStrR8
  loc_9A4E25: FStStrNoPop var_98
  loc_9A4E28: FLdPr Me
  loc_9A4E2B: VCallAd Control_ID_ImpoImpuTxt
  loc_9A4E2E: FStAdFunc var_9C
  loc_9A4E31: FLdPr var_9C
  loc_9A4E34: Me.Text = from_stack_1
  loc_9A4E39: FFreeStr var_8C = "": var_94 = ""
  loc_9A4E42: FFreeAd var_88 = "": var_90 = ""
  loc_9A4E4B: FLdPr Me
  loc_9A4E4E: VCallAd Control_ID_ImpoImpuTxt
  loc_9A4E51: CVarAd
  loc_9A4E55: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A4E5A: FFree1Var var_AC = ""
  loc_9A4E5D: ExitProcHresult
End Sub

Private Sub ImpoImpuTxt_KeyPress(KeyAscii As Integer) '97E5E0
  'Data Table: 4ECA40
  loc_97E5AC: LitStr "1234567890,."
  loc_97E5AF: FStStrCopy var_88
  loc_97E5B2: FLdRfVar var_88
  loc_97E5B5: ILdRf KeyAscii
  loc_97E5B8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97E5BD: IStI2 KeyAscii
  loc_97E5C0: FFree1Str var_88
  loc_97E5C3: ILdI2 KeyAscii
  loc_97E5C6: LitStr "."
  loc_97E5C9: ImpAdCallI2 Asc()
  loc_97E5CE: EqI2
  loc_97E5CF: BranchF loc_97E5DD
  loc_97E5D2: LitStr ","
  loc_97E5D5: ImpAdCallI2 Asc()
  loc_97E5DA: IStI2 KeyAscii
  loc_97E5DD: ExitProcHresult
End Sub

Private Sub ImpoImpuTxt_Validate(Cancel As Boolean) 'A11B7C
  'Data Table: 4ECA40
  loc_A11A14: FLdRfVar var_8A
  loc_A11A17: FLdPr Me
  loc_A11A1A: VCallAd Control_ID_cmdCancelar
  loc_A11A1D: FStAdFunc var_88
  loc_A11A20: FLdPr var_88
  loc_A11A23:  = Me.Value
  loc_A11A28: FLdI2 var_8A
  loc_A11A2B: NotI4
  loc_A11A2C: FFree1Ad var_88
  loc_A11A2F: BranchF loc_A11B79
  loc_A11A32: FLdRfVar var_90
  loc_A11A35: FLdPr Me
  loc_A11A38: VCallAd Control_ID_ImpoImpuTxt
  loc_A11A3B: FStAdFunc var_88
  loc_A11A3E: FLdPr var_88
  loc_A11A41:  = Me.Text
  loc_A11A46: FLdPr Me
  loc_A11A49: VCallAd Control_ID_FechImpuMsk
  loc_A11A4C: FStAdFunc var_94
  loc_A11A4F: FLdPr var_94
  loc_A11A52: LateIdLdVar var_A4 DispID_15 0
  loc_A11A59: PopAd
  loc_A11A5B: FLdRfVar var_AC
  loc_A11A5E: FLdPr Me
  loc_A11A61: VCallAd Control_ID_SaldImpuLbl
  loc_A11A64: FStAdFunc var_A8
  loc_A11A67: FLdPr var_A8
  loc_A11A6A:  = Me.Caption
  loc_A11A6F: FLdRfVar var_B4
  loc_A11A72: LitI2_Byte 0
  loc_A11A74: PopTmpLdAd2 var_8A
  loc_A11A77: ILdRf var_AC
  loc_A11A7A: FLdRfVar var_A4
  loc_A11A7D: CStrVarTmp
  loc_A11A7E: FStStrNoPop var_B0
  loc_A11A81: FLdPr Me
  loc_A11A84: MemLdRfVar from_stack_1.global_92
  loc_A11A87: NewIfNullRf
  loc_A11A8B: FLdPr Me
  loc_A11A8E: MemLdRfVar from_stack_1.global_88
  loc_A11A91: NewIfNullRf
  loc_A11A95: FLdPr Me
  loc_A11A98: MemLdRfVar from_stack_1.global_84
  loc_A11A9B: NewIfNullRf
  loc_A11A9F: FLdPr Me
  loc_A11AA2: MemLdRfVar from_stack_1.global_80
  loc_A11AA5: NewIfNullRf
  loc_A11AA9: ILdRf var_90
  loc_A11AAC: FLdPr Me
  loc_A11AAF: MemLdRfVar from_stack_1.global_52
  loc_A11AB2: NewIfNullPr clsimputacion
  loc_A11AB5: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_A11ABA: ILdRf var_B4
  loc_A11ABD: FLdPr Me
  loc_A11AC0: MemStStrCopy
  loc_A11AC4: FFreeStr var_90 = "": var_B0 = "": var_AC = ""
  loc_A11ACF: FFreeAd var_88 = "": var_94 = ""
  loc_A11AD8: FFree1Var var_A4 = ""
  loc_A11ADB: FLdPr Me
  loc_A11ADE: VCallAd Control_ID_ImpoImpuTxt
  loc_A11AE1: FStAdFunc var_B8
  loc_A11AE4: LitNothing
  loc_A11AE6: CastAd
  loc_A11AE9: FStAdFunc var_A8
  loc_A11AEC: FLdRfVar var_A8
  loc_A11AEF: FLdZeroAd var_B8
  loc_A11AF2: FStAdFuncNoPop
  loc_A11AF5: CastAd
  loc_A11AF8: FStAdFunc var_94
  loc_A11AFB: FLdRfVar var_94
  loc_A11AFE: FLdPr Me
  loc_A11B01: MemLdRfVar from_stack_1.global_68
  loc_A11B04: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A11B09: IStI2 Cancel
  loc_A11B0C: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_A11B17: ILdI2 Cancel
  loc_A11B1A: NotI4
  loc_A11B1B: BranchF loc_A11B79
  loc_A11B1E: FLdRfVar var_AC
  loc_A11B21: FLdPr Me
  loc_A11B24: VCallAd Control_ID_CantImpuTxt
  loc_A11B27: FStAdFunc var_94
  loc_A11B2A: FLdPr var_94
  loc_A11B2D:  = Me.Text
  loc_A11B32: FLdRfVar var_90
  loc_A11B35: FLdPr Me
  loc_A11B38: VCallAd Control_ID_ImpoImpuTxt
  loc_A11B3B: FStAdFunc var_88
  loc_A11B3E: FLdPr var_88
  loc_A11B41:  = Me.Text
  loc_A11B46: ILdRf var_90
  loc_A11B49: CR8Str
  loc_A11B4B: ILdRf var_AC
  loc_A11B4E: CR8Str
  loc_A11B50: DivR8
  loc_A11B51: CStrR8
  loc_A11B53: FStStrNoPop var_B0
  loc_A11B56: FLdPr Me
  loc_A11B59: VCallAd Control_ID_ImunImpuTxt
  loc_A11B5C: FStAdFunc var_A8
  loc_A11B5F: FLdPr var_A8
  loc_A11B62: Me.Text = from_stack_1
  loc_A11B67: FFreeStr var_90 = "": var_AC = ""
  loc_A11B70: FFreeAd var_88 = "": var_94 = ""
  loc_A11B79: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '9A0408
  'Data Table: 4ECA40
  loc_9A0398: LitVarStr var_94, vbNullString
  loc_9A039D: PopAdLdVar
  loc_9A039E: FLdPr Me
  loc_9A03A1: VCallAd Control_ID_CodiOrgaMsk
  loc_9A03A4: FStAdFunc var_A8
  loc_9A03A7: FLdPr var_A8
  loc_9A03AA: LateIdSt
  loc_9A03AF: FFree1Ad var_A8
  loc_9A03B2: FLdPr Me
  loc_9A03B5: VCallAd Control_ID_CodiOrgaMsk
  loc_9A03B8: FStAdFunc var_A8
  loc_9A03BB: FLdPr var_A8
  loc_9A03BE: LateIdLdVar var_B8 DispID_22 0
  loc_9A03C5: CStrVarTmp
  loc_9A03C6: FStStrNoPop var_BC
  loc_9A03C9: LitStr vbNullString
  loc_9A03CC: EqStr
  loc_9A03CE: FFree1Str var_BC
  loc_9A03D1: FFree1Ad var_A8
  loc_9A03D4: FFree1Var var_B8 = ""
  loc_9A03D7: BranchF loc_9A03F4
  loc_9A03DA: LitVarStr var_94, vbNullString
  loc_9A03DF: PopAdLdVar
  loc_9A03E0: FLdPr Me
  loc_9A03E3: VCallAd Control_ID_CodiOrgaMsk
  loc_9A03E6: FStAdFunc var_A8
  loc_9A03E9: FLdPr var_A8
  loc_9A03EC: LateIdSt
  loc_9A03F1: FFree1Ad var_A8
  loc_9A03F4: FLdPr Me
  loc_9A03F7: VCallAd Control_ID_CodiOrgaMsk
  loc_9A03FA: CVarAd
  loc_9A03FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A0403: FFree1Var var_B8 = ""
  loc_9A0406: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_1 '98AB50
  'Data Table: 4ECA40
  loc_98AB0C: ImpAdLdI2 MemVar_C3D064
  loc_98AB0F: LitI2 2024
  loc_98AB12: GeI2
  loc_98AB13: BranchF loc_98AB33
  loc_98AB16: LitVarStr var_94, "###"
  loc_98AB1B: PopAdLdVar
  loc_98AB1C: FLdPr Me
  loc_98AB1F: VCallAd Control_ID_CodiOrgaMsk
  loc_98AB22: FStAdFunc var_A8
  loc_98AB25: FLdPr var_A8
  loc_98AB28: LateIdSt
  loc_98AB2D: FFree1Ad var_A8
  loc_98AB30: Branch loc_98AB4D
  loc_98AB33: LitVarStr var_94, "######"
  loc_98AB38: PopAdLdVar
  loc_98AB39: FLdPr Me
  loc_98AB3C: VCallAd Control_ID_CodiOrgaMsk
  loc_98AB3F: FStAdFunc var_A8
  loc_98AB42: FLdPr var_A8
  loc_98AB45: LateIdSt
  loc_98AB4A: FFree1Ad var_A8
  loc_98AB4D: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'B56FF8
  'Data Table: 4ECA40
  loc_B56510: FLdRfVar var_8A
  loc_B56513: FLdPr Me
  loc_B56516: VCallAd Control_ID_cmdCancelar
  loc_B56519: FStAdFunc var_88
  loc_B5651C: FLdPr var_88
  loc_B5651F:  = Me.Value
  loc_B56524: FLdI2 var_8A
  loc_B56527: NotI4
  loc_B56528: FLdPr Me
  loc_B5652B: VCallAd Control_ID_CodiOrgaMsk
  loc_B5652E: FStAdFunc var_90
  loc_B56531: FLdPr var_90
  loc_B56534: LateIdLdVar var_A0 DispID_13 -32767
  loc_B5653B: CBoolVar
  loc_B5653D: AndI4
  loc_B5653E: FFreeAd var_88 = ""
  loc_B56545: FFree1Var var_A0 = ""
  loc_B56548: BranchF loc_B56FF7
  loc_B5654B: FLdPr Me
  loc_B5654E: VCallAd Control_ID_CodiOrgaMsk
  loc_B56551: FStAdFunc var_88
  loc_B56554: FLdPr var_88
  loc_B56557: LateIdLdVar var_A0 DispID_22 0
  loc_B5655E: CStrVarTmp
  loc_B5655F: FStStrNoPop var_A4
  loc_B56562: ImpAdCallI2 Trim$()
  loc_B56567: FStStrNoPop var_A8
  loc_B5656A: LitStr vbNullString
  loc_B5656D: NeStr
  loc_B5656F: FFreeStr var_A4 = ""
  loc_B56576: FFree1Ad var_88
  loc_B56579: FFree1Var var_A0 = ""
  loc_B5657C: BranchF loc_B56DDC
  loc_B5657F: FLdPr Me
  loc_B56582: VCallAd Control_ID_CodiOrgaMsk
  loc_B56585: FStAdFunc var_88
  loc_B56588: FLdRfVar var_88
  loc_B5658B: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B56590: FFree1Ad var_88
  loc_B56593: BranchF loc_B569B9
  loc_B56596: FLdPr Me
  loc_B56599: VCallAd Control_ID_CodiOrgaMsk
  loc_B5659C: FStAdFunc var_88
  loc_B5659F: FLdPr var_88
  loc_B565A2: LateIdLdVar var_A0 DispID_22 0
  loc_B565A9: PopAd
  loc_B565AB: LitStr " AND o.CodiOrga = '"
  loc_B565AE: LitI4 0
  loc_B565B3: LitI4 -1
  loc_B565B8: LitI4 1
  loc_B565BD: LitStr vbNullString
  loc_B565C0: LitStr "."
  loc_B565C3: FLdRfVar var_A0
  loc_B565C6: CStrVarTmp
  loc_B565C7: FStStrNoPop var_A4
  loc_B565CA: ImpAdCallI2 Replace(, , , , , )
  loc_B565CF: FStStrNoPop var_A8
  loc_B565D2: ConcatStr
  loc_B565D3: FStStrNoPop var_AC
  loc_B565D6: LitStr "'"
  loc_B565D9: ConcatStr
  loc_B565DA: FStStrNoPop var_B0
  loc_B565DD: ImpAdLdI2 MemVar_C3D064
  loc_B565E0: ImpAdLdRf MemVar_C3D710
  loc_B565E3: NewIfNullPr bscOrganigrama
  loc_B565E6: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B565EB: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B565F6: FFree1Ad var_88
  loc_B565F9: FFree1Var var_A0 = ""
  loc_B565FC: FLdRfVar var_B4
  loc_B565FF: FLdRfVar var_90
  loc_B56602: FLdRfVar var_88
  loc_B56605: ImpAdLdRf MemVar_C3D710
  loc_B56608: NewIfNullPr bscOrganigrama
  loc_B5660B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56610: FLdPr var_88
  loc_B56613: from_stack_1v = clsbase.RsFrmGet()
  loc_B56618: FLdPr var_90
  loc_B5661B:  = Me.RecordCount
  loc_B56620: ILdRf var_B4
  loc_B56623: LitI4 1
  loc_B56628: EqI4
  loc_B56629: FFreeAd var_88 = ""
  loc_B56630: BranchF loc_B56755
  loc_B56633: FLdRfVar var_A0
  loc_B56636: FLdRfVar var_CC
  loc_B56639: LitVarStr var_C8, "CodiOrga"
  loc_B5663E: PopAdLdVar
  loc_B5663F: FLdRfVar var_B8
  loc_B56642: FLdRfVar var_90
  loc_B56645: FLdRfVar var_88
  loc_B56648: ImpAdLdRf MemVar_C3D710
  loc_B5664B: NewIfNullPr bscOrganigrama
  loc_B5664E: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56653: FLdPr var_88
  loc_B56656: from_stack_1v = clsbase.RsFrmGet()
  loc_B5665B: FLdPr var_90
  loc_B5665E:  = Me.Fields
  loc_B56663: FLdPr var_B8
  loc_B56666: from_stack_2 = Me.Item(from_stack_1)
  loc_B5666B: FLdPr var_CC
  loc_B5666E:  = Me.Value
  loc_B56673: FLdRfVar var_A4
  loc_B56676: FLdPr Me
  loc_B56679:  = Me.Name
  loc_B5667E: FLdPr Me
  loc_B56681: MemLdRfVar from_stack_1.global_84
  loc_B56684: NewIfNullRf
  loc_B56688: ILdRf var_A4
  loc_B5668B: FLdRfVar var_A0
  loc_B5668E: CStrVarTmp
  loc_B5668F: FStStrNoPop var_A8
  loc_B56692: ImpAdLdI2 MemVar_C3D064
  loc_B56695: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B5669A: FStStrNoPop var_AC
  loc_B5669D: FLdPr Me
  loc_B566A0: MemStStrCopy
  loc_B566A4: FFreeStr var_A8 = "": var_A4 = ""
  loc_B566AD: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B566B8: FFree1Var var_A0 = ""
  loc_B566BB: FLdRfVar var_A4
  loc_B566BE: FLdPr Me
  loc_B566C1: MemLdRfVar from_stack_1.global_84
  loc_B566C4: NewIfNullPr tblorganigrama
  loc_B566C7: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B566CC: FLdZeroAd var_A4
  loc_B566CF: CVarStr var_A0
  loc_B566D2: PopAdLdVar
  loc_B566D3: FLdPr Me
  loc_B566D6: VCallAd Control_ID_CodiOrgaMsk
  loc_B566D9: FStAdFunc var_88
  loc_B566DC: FLdPr var_88
  loc_B566DF: LateIdSt
  loc_B566E4: FFree1Ad var_88
  loc_B566E7: FFree1Var var_A0 = ""
  loc_B566EA: FLdRfVar var_A4
  loc_B566ED: FLdPr Me
  loc_B566F0: MemLdRfVar from_stack_1.global_84
  loc_B566F3: NewIfNullPr tblorganigrama
  loc_B566F6: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B566FB: ILdRf var_A4
  loc_B566FE: FLdPr Me
  loc_B56701: VCallAd Control_ID_DetaOrgaLbl
  loc_B56704: FStAdFunc var_88
  loc_B56707: FLdPr var_88
  loc_B5670A: Me.Caption = from_stack_1
  loc_B5670F: FFree1Str var_A4
  loc_B56712: FFree1Ad var_88
  loc_B56715: FLdPr Me
  loc_B56718: VCallAd Control_ID_CodiOrgaMsk
  loc_B5671B: FStAdFunc var_CC
  loc_B5671E: FLdPr Me
  loc_B56721: VCallAd Control_ID_DetaOrgaLbl
  loc_B56724: FStAdFunc var_B8
  loc_B56727: FLdRfVar var_B8
  loc_B5672A: FLdZeroAd var_CC
  loc_B5672D: FStAdFuncNoPop
  loc_B56730: CastAd
  loc_B56733: FStAdFunc var_90
  loc_B56736: FLdRfVar var_90
  loc_B56739: FLdPr Me
  loc_B5673C: MemLdRfVar from_stack_1.global_68
  loc_B5673F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56744: IStI2 Cancel
  loc_B56747: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56752: Branch loc_B569B6
  loc_B56755: FLdRfVar var_B4
  loc_B56758: FLdRfVar var_90
  loc_B5675B: FLdRfVar var_88
  loc_B5675E: ImpAdLdRf MemVar_C3D710
  loc_B56761: NewIfNullPr bscOrganigrama
  loc_B56764: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56769: FLdPr var_88
  loc_B5676C: from_stack_1v = clsbase.RsFrmGet()
  loc_B56771: FLdPr var_90
  loc_B56774:  = Me.RecordCount
  loc_B56779: ILdRf var_B4
  loc_B5677C: LitI4 1
  loc_B56781: GtI4
  loc_B56782: FFreeAd var_88 = ""
  loc_B56789: BranchF loc_B56938
  loc_B5678C: LitVar_Missing var_DC
  loc_B5678F: PopAdLdVar
  loc_B56790: LitVarI4
  loc_B56798: PopAdLdVar
  loc_B56799: ImpAdLdRf MemVar_C3D710
  loc_B5679C: NewIfNullPr bscOrganigrama
  loc_B5679F: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B567A4: FLdRfVar var_B4
  loc_B567A7: FLdRfVar var_88
  loc_B567AA: ImpAdLdRf MemVar_C3D710
  loc_B567AD: NewIfNullPr bscOrganigrama
  loc_B567B0: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B567B5: FLdPr var_88
  loc_B567B8: from_stack_1 = clsbase.RecordCount
  loc_B567BD: ILdRf var_B4
  loc_B567C0: LitI4 0
  loc_B567C5: GtI4
  loc_B567C6: FFree1Ad var_88
  loc_B567C9: BranchF loc_B568EE
  loc_B567CC: FLdRfVar var_A0
  loc_B567CF: FLdRfVar var_CC
  loc_B567D2: LitVarStr var_C8, "CodiOrga"
  loc_B567D7: PopAdLdVar
  loc_B567D8: FLdRfVar var_B8
  loc_B567DB: FLdRfVar var_90
  loc_B567DE: FLdRfVar var_88
  loc_B567E1: ImpAdLdRf MemVar_C3D710
  loc_B567E4: NewIfNullPr bscOrganigrama
  loc_B567E7: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B567EC: FLdPr var_88
  loc_B567EF: from_stack_1v = clsbase.RsFrmGet()
  loc_B567F4: FLdPr var_90
  loc_B567F7:  = Me.Fields
  loc_B567FC: FLdPr var_B8
  loc_B567FF: from_stack_2 = Me.Item(from_stack_1)
  loc_B56804: FLdPr var_CC
  loc_B56807:  = Me.Value
  loc_B5680C: FLdRfVar var_A4
  loc_B5680F: FLdPr Me
  loc_B56812:  = Me.Name
  loc_B56817: FLdPr Me
  loc_B5681A: MemLdRfVar from_stack_1.global_84
  loc_B5681D: NewIfNullRf
  loc_B56821: ILdRf var_A4
  loc_B56824: FLdRfVar var_A0
  loc_B56827: CStrVarTmp
  loc_B56828: FStStrNoPop var_A8
  loc_B5682B: ImpAdLdI2 MemVar_C3D064
  loc_B5682E: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B56833: FStStrNoPop var_AC
  loc_B56836: FLdPr Me
  loc_B56839: MemStStrCopy
  loc_B5683D: FFreeStr var_A8 = "": var_A4 = ""
  loc_B56846: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56851: FFree1Var var_A0 = ""
  loc_B56854: FLdRfVar var_A4
  loc_B56857: FLdPr Me
  loc_B5685A: MemLdRfVar from_stack_1.global_84
  loc_B5685D: NewIfNullPr tblorganigrama
  loc_B56860: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B56865: FLdZeroAd var_A4
  loc_B56868: CVarStr var_A0
  loc_B5686B: PopAdLdVar
  loc_B5686C: FLdPr Me
  loc_B5686F: VCallAd Control_ID_CodiOrgaMsk
  loc_B56872: FStAdFunc var_88
  loc_B56875: FLdPr var_88
  loc_B56878: LateIdSt
  loc_B5687D: FFree1Ad var_88
  loc_B56880: FFree1Var var_A0 = ""
  loc_B56883: FLdRfVar var_A4
  loc_B56886: FLdPr Me
  loc_B56889: MemLdRfVar from_stack_1.global_84
  loc_B5688C: NewIfNullPr tblorganigrama
  loc_B5688F: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B56894: ILdRf var_A4
  loc_B56897: FLdPr Me
  loc_B5689A: VCallAd Control_ID_DetaOrgaLbl
  loc_B5689D: FStAdFunc var_88
  loc_B568A0: FLdPr var_88
  loc_B568A3: Me.Caption = from_stack_1
  loc_B568A8: FFree1Str var_A4
  loc_B568AB: FFree1Ad var_88
  loc_B568AE: FLdPr Me
  loc_B568B1: VCallAd Control_ID_CodiOrgaMsk
  loc_B568B4: FStAdFunc var_CC
  loc_B568B7: FLdPr Me
  loc_B568BA: VCallAd Control_ID_DetaOrgaLbl
  loc_B568BD: FStAdFunc var_B8
  loc_B568C0: FLdRfVar var_B8
  loc_B568C3: FLdZeroAd var_CC
  loc_B568C6: FStAdFuncNoPop
  loc_B568C9: CastAd
  loc_B568CC: FStAdFunc var_90
  loc_B568CF: FLdRfVar var_90
  loc_B568D2: FLdPr Me
  loc_B568D5: MemLdRfVar from_stack_1.global_68
  loc_B568D8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B568DD: IStI2 Cancel
  loc_B568E0: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B568EB: Branch loc_B56935
  loc_B568EE: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B568F1: FLdPr Me
  loc_B568F4: MemStStrCopy
  loc_B568F8: FLdPr Me
  loc_B568FB: VCallAd Control_ID_CodiOrgaMsk
  loc_B568FE: FStAdFunc var_CC
  loc_B56901: FLdPr Me
  loc_B56904: VCallAd Control_ID_DetaOrgaLbl
  loc_B56907: FStAdFunc var_B8
  loc_B5690A: FLdRfVar var_B8
  loc_B5690D: FLdZeroAd var_CC
  loc_B56910: FStAdFuncNoPop
  loc_B56913: CastAd
  loc_B56916: FStAdFunc var_90
  loc_B56919: FLdRfVar var_90
  loc_B5691C: FLdPr Me
  loc_B5691F: MemLdRfVar from_stack_1.global_68
  loc_B56922: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56927: IStI2 Cancel
  loc_B5692A: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56935: Branch loc_B569B6
  loc_B56938: FLdRfVar var_B4
  loc_B5693B: FLdRfVar var_90
  loc_B5693E: FLdRfVar var_88
  loc_B56941: ImpAdLdRf MemVar_C3D710
  loc_B56944: NewIfNullPr bscOrganigrama
  loc_B56947: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5694C: FLdPr var_88
  loc_B5694F: from_stack_1v = clsbase.RsFrmGet()
  loc_B56954: FLdPr var_90
  loc_B56957:  = Me.RecordCount
  loc_B5695C: ILdRf var_B4
  loc_B5695F: LitI4 1
  loc_B56964: LtI4
  loc_B56965: FFreeAd var_88 = ""
  loc_B5696C: BranchF loc_B569B6
  loc_B5696F: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B56972: FLdPr Me
  loc_B56975: MemStStrCopy
  loc_B56979: FLdPr Me
  loc_B5697C: VCallAd Control_ID_CodiOrgaMsk
  loc_B5697F: FStAdFunc var_CC
  loc_B56982: FLdPr Me
  loc_B56985: VCallAd Control_ID_DetaOrgaLbl
  loc_B56988: FStAdFunc var_B8
  loc_B5698B: FLdRfVar var_B8
  loc_B5698E: FLdZeroAd var_CC
  loc_B56991: FStAdFuncNoPop
  loc_B56994: CastAd
  loc_B56997: FStAdFunc var_90
  loc_B5699A: FLdRfVar var_90
  loc_B5699D: FLdPr Me
  loc_B569A0: MemLdRfVar from_stack_1.global_68
  loc_B569A3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B569A8: IStI2 Cancel
  loc_B569AB: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B569B6: Branch loc_B56DD9
  loc_B569B9: FLdPr Me
  loc_B569BC: VCallAd Control_ID_CodiOrgaMsk
  loc_B569BF: FStAdFunc var_88
  loc_B569C2: FLdPr var_88
  loc_B569C5: LateIdLdVar var_A0 DispID_22 0
  loc_B569CC: PopAd
  loc_B569CE: LitStr " AND o.DetaOrga LIKE '" & Chr(37)
  loc_B569D1: LitI4 0
  loc_B569D6: LitI4 -1
  loc_B569DB: LitI4 1
  loc_B569E0: LitStr Chr(37)
  loc_B569E3: LitStr " "
  loc_B569E6: FLdRfVar var_A0
  loc_B569E9: CStrVarTmp
  loc_B569EA: FStStrNoPop var_A4
  loc_B569ED: ImpAdCallI2 Replace(, , , , , )
  loc_B569F2: FStStrNoPop var_A8
  loc_B569F5: ConcatStr
  loc_B569F6: FStStrNoPop var_AC
  loc_B569F9: LitStr Chr(37) & "'"
  loc_B569FC: ConcatStr
  loc_B569FD: FStStrNoPop var_B0
  loc_B56A00: ImpAdLdI2 MemVar_C3D064
  loc_B56A03: ImpAdLdRf MemVar_C3D710
  loc_B56A06: NewIfNullPr bscOrganigrama
  loc_B56A09: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B56A0E: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B56A19: FFree1Ad var_88
  loc_B56A1C: FFree1Var var_A0 = ""
  loc_B56A1F: FLdRfVar var_B4
  loc_B56A22: FLdRfVar var_90
  loc_B56A25: FLdRfVar var_88
  loc_B56A28: ImpAdLdRf MemVar_C3D710
  loc_B56A2B: NewIfNullPr bscOrganigrama
  loc_B56A2E: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56A33: FLdPr var_88
  loc_B56A36: from_stack_1v = clsbase.RsFrmGet()
  loc_B56A3B: FLdPr var_90
  loc_B56A3E:  = Me.RecordCount
  loc_B56A43: ILdRf var_B4
  loc_B56A46: LitI4 1
  loc_B56A4B: EqI4
  loc_B56A4C: FFreeAd var_88 = ""
  loc_B56A53: BranchF loc_B56B78
  loc_B56A56: FLdRfVar var_A0
  loc_B56A59: FLdRfVar var_CC
  loc_B56A5C: LitVarStr var_C8, "CodiOrga"
  loc_B56A61: PopAdLdVar
  loc_B56A62: FLdRfVar var_B8
  loc_B56A65: FLdRfVar var_90
  loc_B56A68: FLdRfVar var_88
  loc_B56A6B: ImpAdLdRf MemVar_C3D710
  loc_B56A6E: NewIfNullPr bscOrganigrama
  loc_B56A71: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56A76: FLdPr var_88
  loc_B56A79: from_stack_1v = clsbase.RsFrmGet()
  loc_B56A7E: FLdPr var_90
  loc_B56A81:  = Me.Fields
  loc_B56A86: FLdPr var_B8
  loc_B56A89: from_stack_2 = Me.Item(from_stack_1)
  loc_B56A8E: FLdPr var_CC
  loc_B56A91:  = Me.Value
  loc_B56A96: FLdRfVar var_A4
  loc_B56A99: FLdPr Me
  loc_B56A9C:  = Me.Name
  loc_B56AA1: FLdPr Me
  loc_B56AA4: MemLdRfVar from_stack_1.global_84
  loc_B56AA7: NewIfNullRf
  loc_B56AAB: ILdRf var_A4
  loc_B56AAE: FLdRfVar var_A0
  loc_B56AB1: CStrVarTmp
  loc_B56AB2: FStStrNoPop var_A8
  loc_B56AB5: ImpAdLdI2 MemVar_C3D064
  loc_B56AB8: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B56ABD: FStStrNoPop var_AC
  loc_B56AC0: FLdPr Me
  loc_B56AC3: MemStStrCopy
  loc_B56AC7: FFreeStr var_A8 = "": var_A4 = ""
  loc_B56AD0: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56ADB: FFree1Var var_A0 = ""
  loc_B56ADE: FLdRfVar var_A4
  loc_B56AE1: FLdPr Me
  loc_B56AE4: MemLdRfVar from_stack_1.global_84
  loc_B56AE7: NewIfNullPr tblorganigrama
  loc_B56AEA: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B56AEF: FLdZeroAd var_A4
  loc_B56AF2: CVarStr var_A0
  loc_B56AF5: PopAdLdVar
  loc_B56AF6: FLdPr Me
  loc_B56AF9: VCallAd Control_ID_CodiOrgaMsk
  loc_B56AFC: FStAdFunc var_88
  loc_B56AFF: FLdPr var_88
  loc_B56B02: LateIdSt
  loc_B56B07: FFree1Ad var_88
  loc_B56B0A: FFree1Var var_A0 = ""
  loc_B56B0D: FLdRfVar var_A4
  loc_B56B10: FLdPr Me
  loc_B56B13: MemLdRfVar from_stack_1.global_84
  loc_B56B16: NewIfNullPr tblorganigrama
  loc_B56B19: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B56B1E: ILdRf var_A4
  loc_B56B21: FLdPr Me
  loc_B56B24: VCallAd Control_ID_DetaOrgaLbl
  loc_B56B27: FStAdFunc var_88
  loc_B56B2A: FLdPr var_88
  loc_B56B2D: Me.Caption = from_stack_1
  loc_B56B32: FFree1Str var_A4
  loc_B56B35: FFree1Ad var_88
  loc_B56B38: FLdPr Me
  loc_B56B3B: VCallAd Control_ID_CodiOrgaMsk
  loc_B56B3E: FStAdFunc var_CC
  loc_B56B41: FLdPr Me
  loc_B56B44: VCallAd Control_ID_DetaOrgaLbl
  loc_B56B47: FStAdFunc var_B8
  loc_B56B4A: FLdRfVar var_B8
  loc_B56B4D: FLdZeroAd var_CC
  loc_B56B50: FStAdFuncNoPop
  loc_B56B53: CastAd
  loc_B56B56: FStAdFunc var_90
  loc_B56B59: FLdRfVar var_90
  loc_B56B5C: FLdPr Me
  loc_B56B5F: MemLdRfVar from_stack_1.global_68
  loc_B56B62: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56B67: IStI2 Cancel
  loc_B56B6A: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56B75: Branch loc_B56DD9
  loc_B56B78: FLdRfVar var_B4
  loc_B56B7B: FLdRfVar var_90
  loc_B56B7E: FLdRfVar var_88
  loc_B56B81: ImpAdLdRf MemVar_C3D710
  loc_B56B84: NewIfNullPr bscOrganigrama
  loc_B56B87: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56B8C: FLdPr var_88
  loc_B56B8F: from_stack_1v = clsbase.RsFrmGet()
  loc_B56B94: FLdPr var_90
  loc_B56B97:  = Me.RecordCount
  loc_B56B9C: ILdRf var_B4
  loc_B56B9F: LitI4 1
  loc_B56BA4: GtI4
  loc_B56BA5: FFreeAd var_88 = ""
  loc_B56BAC: BranchF loc_B56D5B
  loc_B56BAF: LitVar_Missing var_DC
  loc_B56BB2: PopAdLdVar
  loc_B56BB3: LitVarI4
  loc_B56BBB: PopAdLdVar
  loc_B56BBC: ImpAdLdRf MemVar_C3D710
  loc_B56BBF: NewIfNullPr bscOrganigrama
  loc_B56BC2: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B56BC7: FLdRfVar var_B4
  loc_B56BCA: FLdRfVar var_88
  loc_B56BCD: ImpAdLdRf MemVar_C3D710
  loc_B56BD0: NewIfNullPr bscOrganigrama
  loc_B56BD3: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56BD8: FLdPr var_88
  loc_B56BDB: from_stack_1 = clsbase.RecordCount
  loc_B56BE0: ILdRf var_B4
  loc_B56BE3: LitI4 0
  loc_B56BE8: GtI4
  loc_B56BE9: FFree1Ad var_88
  loc_B56BEC: BranchF loc_B56D11
  loc_B56BEF: FLdRfVar var_A0
  loc_B56BF2: FLdRfVar var_CC
  loc_B56BF5: LitVarStr var_C8, "CodiOrga"
  loc_B56BFA: PopAdLdVar
  loc_B56BFB: FLdRfVar var_B8
  loc_B56BFE: FLdRfVar var_90
  loc_B56C01: FLdRfVar var_88
  loc_B56C04: ImpAdLdRf MemVar_C3D710
  loc_B56C07: NewIfNullPr bscOrganigrama
  loc_B56C0A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56C0F: FLdPr var_88
  loc_B56C12: from_stack_1v = clsbase.RsFrmGet()
  loc_B56C17: FLdPr var_90
  loc_B56C1A:  = Me.Fields
  loc_B56C1F: FLdPr var_B8
  loc_B56C22: from_stack_2 = Me.Item(from_stack_1)
  loc_B56C27: FLdPr var_CC
  loc_B56C2A:  = Me.Value
  loc_B56C2F: FLdRfVar var_A4
  loc_B56C32: FLdPr Me
  loc_B56C35:  = Me.Name
  loc_B56C3A: FLdPr Me
  loc_B56C3D: MemLdRfVar from_stack_1.global_84
  loc_B56C40: NewIfNullRf
  loc_B56C44: ILdRf var_A4
  loc_B56C47: FLdRfVar var_A0
  loc_B56C4A: CStrVarTmp
  loc_B56C4B: FStStrNoPop var_A8
  loc_B56C4E: ImpAdLdI2 MemVar_C3D064
  loc_B56C51: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B56C56: FStStrNoPop var_AC
  loc_B56C59: FLdPr Me
  loc_B56C5C: MemStStrCopy
  loc_B56C60: FFreeStr var_A8 = "": var_A4 = ""
  loc_B56C69: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56C74: FFree1Var var_A0 = ""
  loc_B56C77: FLdRfVar var_A4
  loc_B56C7A: FLdPr Me
  loc_B56C7D: MemLdRfVar from_stack_1.global_84
  loc_B56C80: NewIfNullPr tblorganigrama
  loc_B56C83: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B56C88: FLdZeroAd var_A4
  loc_B56C8B: CVarStr var_A0
  loc_B56C8E: PopAdLdVar
  loc_B56C8F: FLdPr Me
  loc_B56C92: VCallAd Control_ID_CodiOrgaMsk
  loc_B56C95: FStAdFunc var_88
  loc_B56C98: FLdPr var_88
  loc_B56C9B: LateIdSt
  loc_B56CA0: FFree1Ad var_88
  loc_B56CA3: FFree1Var var_A0 = ""
  loc_B56CA6: FLdRfVar var_A4
  loc_B56CA9: FLdPr Me
  loc_B56CAC: MemLdRfVar from_stack_1.global_84
  loc_B56CAF: NewIfNullPr tblorganigrama
  loc_B56CB2: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B56CB7: ILdRf var_A4
  loc_B56CBA: FLdPr Me
  loc_B56CBD: VCallAd Control_ID_DetaOrgaLbl
  loc_B56CC0: FStAdFunc var_88
  loc_B56CC3: FLdPr var_88
  loc_B56CC6: Me.Caption = from_stack_1
  loc_B56CCB: FFree1Str var_A4
  loc_B56CCE: FFree1Ad var_88
  loc_B56CD1: FLdPr Me
  loc_B56CD4: VCallAd Control_ID_CodiOrgaMsk
  loc_B56CD7: FStAdFunc var_CC
  loc_B56CDA: FLdPr Me
  loc_B56CDD: VCallAd Control_ID_DetaOrgaLbl
  loc_B56CE0: FStAdFunc var_B8
  loc_B56CE3: FLdRfVar var_B8
  loc_B56CE6: FLdZeroAd var_CC
  loc_B56CE9: FStAdFuncNoPop
  loc_B56CEC: CastAd
  loc_B56CEF: FStAdFunc var_90
  loc_B56CF2: FLdRfVar var_90
  loc_B56CF5: FLdPr Me
  loc_B56CF8: MemLdRfVar from_stack_1.global_68
  loc_B56CFB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56D00: IStI2 Cancel
  loc_B56D03: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56D0E: Branch loc_B56D58
  loc_B56D11: LitStr "El Organigrama NO EXISTE. Verique..."
  loc_B56D14: FLdPr Me
  loc_B56D17: MemStStrCopy
  loc_B56D1B: FLdPr Me
  loc_B56D1E: VCallAd Control_ID_CodiOrgaMsk
  loc_B56D21: FStAdFunc var_CC
  loc_B56D24: FLdPr Me
  loc_B56D27: VCallAd Control_ID_DetaOrgaLbl
  loc_B56D2A: FStAdFunc var_B8
  loc_B56D2D: FLdRfVar var_B8
  loc_B56D30: FLdZeroAd var_CC
  loc_B56D33: FStAdFuncNoPop
  loc_B56D36: CastAd
  loc_B56D39: FStAdFunc var_90
  loc_B56D3C: FLdRfVar var_90
  loc_B56D3F: FLdPr Me
  loc_B56D42: MemLdRfVar from_stack_1.global_68
  loc_B56D45: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56D4A: IStI2 Cancel
  loc_B56D4D: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56D58: Branch loc_B56DD9
  loc_B56D5B: FLdRfVar var_B4
  loc_B56D5E: FLdRfVar var_90
  loc_B56D61: FLdRfVar var_88
  loc_B56D64: ImpAdLdRf MemVar_C3D710
  loc_B56D67: NewIfNullPr bscOrganigrama
  loc_B56D6A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56D6F: FLdPr var_88
  loc_B56D72: from_stack_1v = clsbase.RsFrmGet()
  loc_B56D77: FLdPr var_90
  loc_B56D7A:  = Me.RecordCount
  loc_B56D7F: ILdRf var_B4
  loc_B56D82: LitI4 1
  loc_B56D87: LtI4
  loc_B56D88: FFreeAd var_88 = ""
  loc_B56D8F: BranchF loc_B56DD9
  loc_B56D92: LitStr "El organigrama NO EXISTE. Verique..."
  loc_B56D95: FLdPr Me
  loc_B56D98: MemStStrCopy
  loc_B56D9C: FLdPr Me
  loc_B56D9F: VCallAd Control_ID_CodiOrgaMsk
  loc_B56DA2: FStAdFunc var_CC
  loc_B56DA5: FLdPr Me
  loc_B56DA8: VCallAd Control_ID_DetaOrgaLbl
  loc_B56DAB: FStAdFunc var_B8
  loc_B56DAE: FLdRfVar var_B8
  loc_B56DB1: FLdZeroAd var_CC
  loc_B56DB4: FStAdFuncNoPop
  loc_B56DB7: CastAd
  loc_B56DBA: FStAdFunc var_90
  loc_B56DBD: FLdRfVar var_90
  loc_B56DC0: FLdPr Me
  loc_B56DC3: MemLdRfVar from_stack_1.global_68
  loc_B56DC6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56DCB: IStI2 Cancel
  loc_B56DCE: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56DD9: Branch loc_B56FA8
  loc_B56DDC: LitI2_Byte 0
  loc_B56DDE: ImpAdLdRf MemVar_C3D710
  loc_B56DE1: NewIfNullPr bscOrganigrama
  loc_B56DE4: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_B56DE9: LitNothing
  loc_B56DEB: CastAd
  loc_B56DEE: FStAdFuncNoPop
  loc_B56DF1: ImpAdLdRf MemVar_C3D710
  loc_B56DF4: NewIfNullPr bscOrganigrama
  loc_B56DF7: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_B56DFC: FFree1Ad var_88
  loc_B56DFF: LitVar_Missing var_DC
  loc_B56E02: PopAdLdVar
  loc_B56E03: LitVarI4
  loc_B56E0B: PopAdLdVar
  loc_B56E0C: ImpAdLdRf MemVar_C3D710
  loc_B56E0F: NewIfNullPr bscOrganigrama
  loc_B56E12: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B56E17: FLdRfVar var_B4
  loc_B56E1A: FLdRfVar var_88
  loc_B56E1D: ImpAdLdRf MemVar_C3D710
  loc_B56E20: NewIfNullPr bscOrganigrama
  loc_B56E23: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56E28: FLdPr var_88
  loc_B56E2B: from_stack_1 = clsbase.RecordCount
  loc_B56E30: ILdRf var_B4
  loc_B56E33: LitI4 0
  loc_B56E38: GtI4
  loc_B56E39: FFree1Ad var_88
  loc_B56E3C: BranchF loc_B56F61
  loc_B56E3F: FLdRfVar var_A0
  loc_B56E42: FLdRfVar var_CC
  loc_B56E45: LitVarStr var_C8, "CodiOrga"
  loc_B56E4A: PopAdLdVar
  loc_B56E4B: FLdRfVar var_B8
  loc_B56E4E: FLdRfVar var_90
  loc_B56E51: FLdRfVar var_88
  loc_B56E54: ImpAdLdRf MemVar_C3D710
  loc_B56E57: NewIfNullPr bscOrganigrama
  loc_B56E5A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B56E5F: FLdPr var_88
  loc_B56E62: from_stack_1v = clsbase.RsFrmGet()
  loc_B56E67: FLdPr var_90
  loc_B56E6A:  = Me.Fields
  loc_B56E6F: FLdPr var_B8
  loc_B56E72: from_stack_2 = Me.Item(from_stack_1)
  loc_B56E77: FLdPr var_CC
  loc_B56E7A:  = Me.Value
  loc_B56E7F: FLdRfVar var_A4
  loc_B56E82: FLdPr Me
  loc_B56E85:  = Me.Name
  loc_B56E8A: FLdPr Me
  loc_B56E8D: MemLdRfVar from_stack_1.global_84
  loc_B56E90: NewIfNullRf
  loc_B56E94: ILdRf var_A4
  loc_B56E97: FLdRfVar var_A0
  loc_B56E9A: CStrVarTmp
  loc_B56E9B: FStStrNoPop var_A8
  loc_B56E9E: ImpAdLdI2 MemVar_C3D064
  loc_B56EA1: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B56EA6: FStStrNoPop var_AC
  loc_B56EA9: FLdPr Me
  loc_B56EAC: MemStStrCopy
  loc_B56EB0: FFreeStr var_A8 = "": var_A4 = ""
  loc_B56EB9: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56EC4: FFree1Var var_A0 = ""
  loc_B56EC7: FLdRfVar var_A4
  loc_B56ECA: FLdPr Me
  loc_B56ECD: MemLdRfVar from_stack_1.global_84
  loc_B56ED0: NewIfNullPr tblorganigrama
  loc_B56ED3: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B56ED8: FLdZeroAd var_A4
  loc_B56EDB: CVarStr var_A0
  loc_B56EDE: PopAdLdVar
  loc_B56EDF: FLdPr Me
  loc_B56EE2: VCallAd Control_ID_CodiOrgaMsk
  loc_B56EE5: FStAdFunc var_88
  loc_B56EE8: FLdPr var_88
  loc_B56EEB: LateIdSt
  loc_B56EF0: FFree1Ad var_88
  loc_B56EF3: FFree1Var var_A0 = ""
  loc_B56EF6: FLdRfVar var_A4
  loc_B56EF9: FLdPr Me
  loc_B56EFC: MemLdRfVar from_stack_1.global_84
  loc_B56EFF: NewIfNullPr tblorganigrama
  loc_B56F02: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B56F07: ILdRf var_A4
  loc_B56F0A: FLdPr Me
  loc_B56F0D: VCallAd Control_ID_DetaOrgaLbl
  loc_B56F10: FStAdFunc var_88
  loc_B56F13: FLdPr var_88
  loc_B56F16: Me.Caption = from_stack_1
  loc_B56F1B: FFree1Str var_A4
  loc_B56F1E: FFree1Ad var_88
  loc_B56F21: FLdPr Me
  loc_B56F24: VCallAd Control_ID_CodiOrgaMsk
  loc_B56F27: FStAdFunc var_CC
  loc_B56F2A: FLdPr Me
  loc_B56F2D: VCallAd Control_ID_DetaOrgaLbl
  loc_B56F30: FStAdFunc var_B8
  loc_B56F33: FLdRfVar var_B8
  loc_B56F36: FLdZeroAd var_CC
  loc_B56F39: FStAdFuncNoPop
  loc_B56F3C: CastAd
  loc_B56F3F: FStAdFunc var_90
  loc_B56F42: FLdRfVar var_90
  loc_B56F45: FLdPr Me
  loc_B56F48: MemLdRfVar from_stack_1.global_68
  loc_B56F4B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56F50: IStI2 Cancel
  loc_B56F53: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56F5E: Branch loc_B56FA8
  loc_B56F61: LitStr "El organigrama NO EXISTE. Verifique..."
  loc_B56F64: FLdPr Me
  loc_B56F67: MemStStrCopy
  loc_B56F6B: FLdPr Me
  loc_B56F6E: VCallAd Control_ID_CodiOrgaMsk
  loc_B56F71: FStAdFunc var_CC
  loc_B56F74: FLdPr Me
  loc_B56F77: VCallAd Control_ID_DetaOrgaLbl
  loc_B56F7A: FStAdFunc var_B8
  loc_B56F7D: FLdRfVar var_B8
  loc_B56F80: FLdZeroAd var_CC
  loc_B56F83: FStAdFuncNoPop
  loc_B56F86: CastAd
  loc_B56F89: FStAdFunc var_90
  loc_B56F8C: FLdRfVar var_90
  loc_B56F8F: FLdPr Me
  loc_B56F92: MemLdRfVar from_stack_1.global_68
  loc_B56F95: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56F9A: IStI2 Cancel
  loc_B56F9D: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B56FA8: ILdI2 Cancel
  loc_B56FAB: NotI4
  loc_B56FAC: BranchF loc_B56FDD
  loc_B56FAF: FLdRfVar var_A4
  loc_B56FB2: FLdPr Me
  loc_B56FB5: MemLdRfVar from_stack_1.global_84
  loc_B56FB8: NewIfNullPr tblorganigrama
  loc_B56FBB: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B56FC0: ILdRf var_A4
  loc_B56FC3: FLdPr Me
  loc_B56FC6: VCallAd Control_ID_DetaOrgaLbl
  loc_B56FC9: FStAdFunc var_88
  loc_B56FCC: FLdPr var_88
  loc_B56FCF: Me.Caption = from_stack_1
  loc_B56FD4: FFree1Str var_A4
  loc_B56FD7: FFree1Ad var_88
  loc_B56FDA: Branch loc_B56FF7
  loc_B56FDD: LitVarStr var_C8, vbNullString
  loc_B56FE2: PopAdLdVar
  loc_B56FE3: FLdPr Me
  loc_B56FE6: VCallAd Control_ID_CodiOrgaMsk
  loc_B56FE9: FStAdFunc var_88
  loc_B56FEC: FLdPr var_88
  loc_B56FEF: LateIdSt
  loc_B56FF4: FFree1Ad var_88
  loc_B56FF7: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyPress(KeyAscii As Integer) '9ACF7C
  'Data Table: 4ECA40
  loc_9ACEE0: FLdPr Me
  loc_9ACEE3: VCallAd Control_ID_CodiOrgaMsk
  loc_9ACEE6: FStAdFunc var_88
  loc_9ACEE9: FLdPr var_88
  loc_9ACEEC: LateIdLdVar var_98 DispID_22 0
  loc_9ACEF3: PopAd
  loc_9ACEF5: LitI4 0
  loc_9ACEFA: LitI4 -1
  loc_9ACEFF: LitI4 1
  loc_9ACF04: LitStr vbNullString
  loc_9ACF07: LitStr "."
  loc_9ACF0A: FLdRfVar var_98
  loc_9ACF0D: CStrVarTmp
  loc_9ACF0E: FStStrNoPop var_9C
  loc_9ACF11: ImpAdCallI2 Replace(, , , , , )
  loc_9ACF16: FStStrNoPop var_A0
  loc_9ACF19: FnLenStr
  loc_9ACF1A: LitI4 5
  loc_9ACF1F: GtI4
  loc_9ACF20: FFreeStr var_9C = ""
  loc_9ACF27: FFree1Ad var_88
  loc_9ACF2A: FFree1Var var_98 = ""
  loc_9ACF2D: BranchF loc_9ACF7B
  loc_9ACF30: FLdPr Me
  loc_9ACF33: VCallAd Control_ID_CodiOrgaMsk
  loc_9ACF36: FStAdFunc var_88
  loc_9ACF39: FLdRfVar var_88
  loc_9ACF3C: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9ACF41: FFree1Ad var_88
  loc_9ACF44: BranchF loc_9ACF7B
  loc_9ACF47: ILdI2 KeyAscii
  loc_9ACF4A: CI4UI1
  loc_9ACF4B: LitI4 8
  loc_9ACF50: NeI4
  loc_9ACF51: FLdPr Me
  loc_9ACF54: VCallAd Control_ID_CodiOrgaMsk
  loc_9ACF57: FStAdFunc var_88
  loc_9ACF5A: FLdPr var_88
  loc_9ACF5D: LateIdLdVar var_98 DispID_17 0
  loc_9ACF64: CI4Var
  loc_9ACF66: LitI4 0
  loc_9ACF6B: EqI4
  loc_9ACF6C: AndI4
  loc_9ACF6D: FFree1Ad var_88
  loc_9ACF70: FFree1Var var_98 = ""
  loc_9ACF73: BranchF loc_9ACF7B
  loc_9ACF76: LitI2_Byte 0
  loc_9ACF78: IStI2 KeyAscii
  loc_9ACF7B: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A03ADC
  'Data Table: 4ECA40
  loc_A03988: ILdI2 Shift
  loc_A0398B: CI4UI1
  loc_A0398C: LitI4 2
  loc_A03991: EqI4
  loc_A03992: ILdI2 KeyCode
  loc_A03995: CI4UI1
  loc_A03996: LitI4 &H42
  loc_A0399B: EqI4
  loc_A0399C: AndI4
  loc_A0399D: BranchF loc_A03ADB
  loc_A039A0: LitI2_Byte 0
  loc_A039A2: ImpAdLdRf MemVar_C3D710
  loc_A039A5: NewIfNullPr bscOrganigrama
  loc_A039A8: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A039AD: LitNothing
  loc_A039AF: CastAd
  loc_A039B2: FStAdFuncNoPop
  loc_A039B5: ImpAdLdRf MemVar_C3D710
  loc_A039B8: NewIfNullPr bscOrganigrama
  loc_A039BB: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A039C0: FFree1Ad var_88
  loc_A039C3: LitVar_Missing var_A8
  loc_A039C6: PopAdLdVar
  loc_A039C7: LitVarI4
  loc_A039CF: PopAdLdVar
  loc_A039D0: ImpAdLdRf MemVar_C3D710
  loc_A039D3: NewIfNullPr bscOrganigrama
  loc_A039D6: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A039DB: FLdRfVar var_AC
  loc_A039DE: FLdRfVar var_88
  loc_A039E1: ImpAdLdRf MemVar_C3D710
  loc_A039E4: NewIfNullPr bscOrganigrama
  loc_A039E7: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A039EC: FLdPr var_88
  loc_A039EF: from_stack_1 = clsbase.RecordCount
  loc_A039F4: ILdRf var_AC
  loc_A039F7: LitI4 0
  loc_A039FC: GtI4
  loc_A039FD: FFree1Ad var_88
  loc_A03A00: BranchF loc_A03ADB
  loc_A03A03: FLdRfVar var_C8
  loc_A03A06: FLdRfVar var_B8
  loc_A03A09: LitVarStr var_98, "CodiOrga"
  loc_A03A0E: PopAdLdVar
  loc_A03A0F: FLdRfVar var_B4
  loc_A03A12: FLdRfVar var_B0
  loc_A03A15: FLdRfVar var_88
  loc_A03A18: ImpAdLdRf MemVar_C3D710
  loc_A03A1B: NewIfNullPr bscOrganigrama
  loc_A03A1E: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A03A23: FLdPr var_88
  loc_A03A26: from_stack_1v = clsbase.RsFrmGet()
  loc_A03A2B: FLdPr var_B0
  loc_A03A2E:  = Me.Fields
  loc_A03A33: FLdPr var_B4
  loc_A03A36: from_stack_2 = Me.Item(from_stack_1)
  loc_A03A3B: FLdPr var_B8
  loc_A03A3E:  = Me.Value
  loc_A03A43: FLdRfVar var_C8
  loc_A03A46: CStrVarTmp
  loc_A03A47: CVarStr var_D8
  loc_A03A4A: PopAdLdVar
  loc_A03A4B: FLdPr Me
  loc_A03A4E: VCallAd Control_ID_CodiOrgaMsk
  loc_A03A51: FStAdFunc var_DC
  loc_A03A54: FLdPr var_DC
  loc_A03A57: LateIdSt
  loc_A03A5C: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A03A69: FFreeVar var_C8 = ""
  loc_A03A70: FLdRfVar var_C8
  loc_A03A73: FLdRfVar var_B8
  loc_A03A76: LitVarStr var_98, "DetaOrga"
  loc_A03A7B: PopAdLdVar
  loc_A03A7C: FLdRfVar var_B4
  loc_A03A7F: FLdRfVar var_B0
  loc_A03A82: FLdRfVar var_88
  loc_A03A85: ImpAdLdRf MemVar_C3D710
  loc_A03A88: NewIfNullPr bscOrganigrama
  loc_A03A8B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A03A90: FLdPr var_88
  loc_A03A93: from_stack_1v = clsbase.RsFrmGet()
  loc_A03A98: FLdPr var_B0
  loc_A03A9B:  = Me.Fields
  loc_A03AA0: FLdPr var_B4
  loc_A03AA3: from_stack_2 = Me.Item(from_stack_1)
  loc_A03AA8: FLdPr var_B8
  loc_A03AAB:  = Me.Value
  loc_A03AB0: FLdRfVar var_C8
  loc_A03AB3: CStrVarTmp
  loc_A03AB4: FStStrNoPop var_E0
  loc_A03AB7: FLdPr Me
  loc_A03ABA: VCallAd Control_ID_DetaOrgaLbl
  loc_A03ABD: FStAdFunc var_DC
  loc_A03AC0: FLdPr var_DC
  loc_A03AC3: Me.Caption = from_stack_1
  loc_A03AC8: FFree1Str var_E0
  loc_A03ACB: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A03AD8: FFree1Var var_C8 = ""
  loc_A03ADB: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9A04BC
  'Data Table: 4ECA40
  loc_9A0444: LitVarStr var_94, vbNullString
  loc_9A0449: PopAdLdVar
  loc_9A044A: FLdPr Me
  loc_9A044D: VCallAd Control_ID_FiltroMsk
  loc_9A0450: FStAdFunc var_A8
  loc_9A0453: FLdPr var_A8
  loc_9A0456: LateIdSt
  loc_9A045B: FFree1Ad var_A8
  loc_9A045E: FLdRfVar var_AA
  loc_9A0461: FLdPr Me
  loc_9A0464: VCallAd Control_ID_FiltroCbo
  loc_9A0467: FStAdFunc var_A8
  loc_9A046A: FLdPr var_A8
  loc_9A046D:  = Me.ListIndex
  loc_9A0472: FLdI2 var_AA
  loc_9A0475: FStI2 var_AC
  loc_9A0478: FFree1Ad var_A8
  loc_9A047B: FLdI2 var_AC
  loc_9A047E: LitI2_Byte 0
  loc_9A0480: EqI2
  loc_9A0481: BranchF loc_9A04A1
  loc_9A0484: LitVarStr var_94, "########"
  loc_9A0489: PopAdLdVar
  loc_9A048A: FLdPr Me
  loc_9A048D: VCallAd Control_ID_FiltroMsk
  loc_9A0490: FStAdFunc var_A8
  loc_9A0493: FLdPr var_A8
  loc_9A0496: LateIdSt
  loc_9A049B: FFree1Ad var_A8
  loc_9A049E: Branch loc_9A04BB
  loc_9A04A1: LitVarStr var_94, vbNullString
  loc_9A04A6: PopAdLdVar
  loc_9A04A7: FLdPr Me
  loc_9A04AA: VCallAd Control_ID_FiltroMsk
  loc_9A04AD: FStAdFunc var_A8
  loc_9A04B0: FLdPr var_A8
  loc_9A04B3: LateIdSt
  loc_9A04B8: FFree1Ad var_A8
  loc_9A04BB: ExitProcHresult
End Sub

Private Sub CodiUngaTxt_GotFocus() '992DB4
  'Data Table: 4ECA40
  loc_992D64: FLdRfVar var_8C
  loc_992D67: FLdPr Me
  loc_992D6A: VCallAd Control_ID_CodiUngaTxt
  loc_992D6D: FStAdFunc var_88
  loc_992D70: FLdPr var_88
  loc_992D73:  = Me.Text
  loc_992D78: ILdRf var_8C
  loc_992D7B: LitStr vbNullString
  loc_992D7E: EqStr
  loc_992D80: FFree1Str var_8C
  loc_992D83: FFree1Ad var_88
  loc_992D86: BranchF loc_992DA0
  loc_992D89: LitStr "1"
  loc_992D8C: FLdPr Me
  loc_992D8F: VCallAd Control_ID_CodiUngaTxt
  loc_992D92: FStAdFunc var_88
  loc_992D95: FLdPr var_88
  loc_992D98: Me.Text = from_stack_1
  loc_992D9D: FFree1Ad var_88
  loc_992DA0: FLdPr Me
  loc_992DA3: VCallAd Control_ID_CodiUngaTxt
  loc_992DA6: CVarAd
  loc_992DAA: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_992DAF: FFree1Var var_9C = ""
  loc_992DB2: ExitProcHresult
End Sub

Private Sub CodiUngaTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A01F38
  'Data Table: 4ECA40
  loc_A01DE4: ILdI2 Shift
  loc_A01DE7: CI4UI1
  loc_A01DE8: LitI4 2
  loc_A01DED: EqI4
  loc_A01DEE: ILdI2 KeyCode
  loc_A01DF1: CI4UI1
  loc_A01DF2: LitI4 &H42
  loc_A01DF7: EqI4
  loc_A01DF8: AndI4
  loc_A01DF9: BranchF loc_A01F35
  loc_A01DFC: LitI2_Byte 0
  loc_A01DFE: ImpAdLdRf MemVar_C3D7D8
  loc_A01E01: NewIfNullPr bscUnidadGasto
  loc_A01E04: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_A01E09: LitNothing
  loc_A01E0B: CastAd
  loc_A01E0E: FStAdFuncNoPop
  loc_A01E11: ImpAdLdRf MemVar_C3D7D8
  loc_A01E14: NewIfNullPr bscUnidadGasto
  loc_A01E17: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_A01E1C: FFree1Ad var_88
  loc_A01E1F: LitVar_Missing var_A8
  loc_A01E22: PopAdLdVar
  loc_A01E23: LitVarI4
  loc_A01E2B: PopAdLdVar
  loc_A01E2C: ImpAdLdRf MemVar_C3D7D8
  loc_A01E2F: NewIfNullPr bscUnidadGasto
  loc_A01E32: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_A01E37: FLdRfVar var_AC
  loc_A01E3A: FLdRfVar var_88
  loc_A01E3D: ImpAdLdRf MemVar_C3D7D8
  loc_A01E40: NewIfNullPr bscUnidadGasto
  loc_A01E43: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A01E48: FLdPr var_88
  loc_A01E4B: from_stack_1 = clsbase.RecordCount
  loc_A01E50: ILdRf var_AC
  loc_A01E53: LitI4 0
  loc_A01E58: GtI4
  loc_A01E59: FFree1Ad var_88
  loc_A01E5C: BranchF loc_A01F35
  loc_A01E5F: FLdRfVar var_C8
  loc_A01E62: FLdRfVar var_B8
  loc_A01E65: LitVarStr var_98, "CodiUnga"
  loc_A01E6A: PopAdLdVar
  loc_A01E6B: FLdRfVar var_B4
  loc_A01E6E: FLdRfVar var_B0
  loc_A01E71: FLdRfVar var_88
  loc_A01E74: ImpAdLdRf MemVar_C3D7D8
  loc_A01E77: NewIfNullPr bscUnidadGasto
  loc_A01E7A: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A01E7F: FLdPr var_88
  loc_A01E82: from_stack_1v = clsbase.RsFrmGet()
  loc_A01E87: FLdPr var_B0
  loc_A01E8A:  = Me.Fields
  loc_A01E8F: FLdPr var_B4
  loc_A01E92: from_stack_2 = Me.Item(from_stack_1)
  loc_A01E97: FLdPr var_B8
  loc_A01E9A:  = Me.Value
  loc_A01E9F: FLdRfVar var_C8
  loc_A01EA2: CStrVarTmp
  loc_A01EA3: FStStrNoPop var_CC
  loc_A01EA6: FLdPr Me
  loc_A01EA9: VCallAd Control_ID_CodiUngaTxt
  loc_A01EAC: FStAdFunc var_D0
  loc_A01EAF: FLdPr var_D0
  loc_A01EB2: Me.Text = from_stack_1
  loc_A01EB7: FFree1Str var_CC
  loc_A01EBA: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A01EC7: FFree1Var var_C8 = ""
  loc_A01ECA: FLdRfVar var_C8
  loc_A01ECD: FLdRfVar var_B8
  loc_A01ED0: LitVarStr var_98, "DetaUnga"
  loc_A01ED5: PopAdLdVar
  loc_A01ED6: FLdRfVar var_B4
  loc_A01ED9: FLdRfVar var_B0
  loc_A01EDC: FLdRfVar var_88
  loc_A01EDF: ImpAdLdRf MemVar_C3D7D8
  loc_A01EE2: NewIfNullPr bscUnidadGasto
  loc_A01EE5: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A01EEA: FLdPr var_88
  loc_A01EED: from_stack_1v = clsbase.RsFrmGet()
  loc_A01EF2: FLdPr var_B0
  loc_A01EF5:  = Me.Fields
  loc_A01EFA: FLdPr var_B4
  loc_A01EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A01F02: FLdPr var_B8
  loc_A01F05:  = Me.Value
  loc_A01F0A: FLdRfVar var_C8
  loc_A01F0D: CStrVarTmp
  loc_A01F0E: FStStrNoPop var_CC
  loc_A01F11: FLdPr Me
  loc_A01F14: VCallAd Control_ID_DetaUngaLbl
  loc_A01F17: FStAdFunc var_D0
  loc_A01F1A: FLdPr var_D0
  loc_A01F1D: Me.Caption = from_stack_1
  loc_A01F22: FFree1Str var_CC
  loc_A01F25: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A01F32: FFree1Var var_C8 = ""
  loc_A01F35: ExitProcHresult
  loc_A01F36: FLdRfVar var_3800
End Sub

Private Sub CodiUngaTxt_Validate(Cancel As Boolean) 'B8DB58
  'Data Table: 4ECA40
  loc_B8CCD8: FLdRfVar var_8A
  loc_B8CCDB: FLdPr Me
  loc_B8CCDE: VCallAd Control_ID_cmdCancelar
  loc_B8CCE1: FStAdFunc var_88
  loc_B8CCE4: FLdPr var_88
  loc_B8CCE7:  = Me.Value
  loc_B8CCEC: FLdI2 var_8A
  loc_B8CCEF: NotI4
  loc_B8CCF0: FLdRfVar var_92
  loc_B8CCF3: FLdPr Me
  loc_B8CCF6: VCallAd Control_ID_CodiUngaTxt
  loc_B8CCF9: FStAdFunc var_90
  loc_B8CCFC: FLdPr var_90
  loc_B8CCFF:  = Me.Enabled
  loc_B8CD04: FLdI2 var_92
  loc_B8CD07: AndI4
  loc_B8CD08: FFreeAd var_88 = ""
  loc_B8CD0F: BranchF loc_B8DB54
  loc_B8CD12: FLdRfVar var_98
  loc_B8CD15: FLdPr Me
  loc_B8CD18: VCallAd Control_ID_CodiUngaTxt
  loc_B8CD1B: FStAdFunc var_88
  loc_B8CD1E: FLdPr var_88
  loc_B8CD21:  = Me.Text
  loc_B8CD26: ILdRf var_98
  loc_B8CD29: ImpAdCallI2 Trim$()
  loc_B8CD2E: FStStrNoPop var_9C
  loc_B8CD31: LitStr vbNullString
  loc_B8CD34: NeStr
  loc_B8CD36: FFreeStr var_98 = ""
  loc_B8CD3D: FFree1Ad var_88
  loc_B8CD40: BranchF loc_B8D808
  loc_B8CD43: FLdPr Me
  loc_B8CD46: VCallAd Control_ID_CodiUngaTxt
  loc_B8CD49: FStAdFunc var_88
  loc_B8CD4C: FLdRfVar var_88
  loc_B8CD4F: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B8CD54: FFree1Ad var_88
  loc_B8CD57: BranchF loc_B8D0F0
  loc_B8CD5A: LitStr " AND ug.CodiUnga = '"
  loc_B8CD5D: FLdRfVar var_98
  loc_B8CD60: FLdPr Me
  loc_B8CD63: VCallAd Control_ID_CodiUngaTxt
  loc_B8CD66: FStAdFunc var_88
  loc_B8CD69: FLdPr var_88
  loc_B8CD6C:  = Me.Text
  loc_B8CD71: ILdRf var_98
  loc_B8CD74: ConcatStr
  loc_B8CD75: FStStrNoPop var_9C
  loc_B8CD78: LitStr "' ORDER BY ug.CodiUnga"
  loc_B8CD7B: ConcatStr
  loc_B8CD7C: FStStrNoPop var_A0
  loc_B8CD7F: ImpAdLdRf MemVar_C3D7D8
  loc_B8CD82: NewIfNullPr bscUnidadGasto
  loc_B8CD85: Call bscUnidadGasto.Constructor(from_stack_1v)
  loc_B8CD8A: FFreeStr var_98 = "": var_9C = ""
  loc_B8CD93: FFree1Ad var_88
  loc_B8CD96: FLdRfVar var_A4
  loc_B8CD99: FLdRfVar var_90
  loc_B8CD9C: FLdRfVar var_88
  loc_B8CD9F: ImpAdLdRf MemVar_C3D7D8
  loc_B8CDA2: NewIfNullPr bscUnidadGasto
  loc_B8CDA5: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8CDAA: FLdPr var_88
  loc_B8CDAD: from_stack_1v = clsbase.RsFrmGet()
  loc_B8CDB2: FLdPr var_90
  loc_B8CDB5:  = Me.RecordCount
  loc_B8CDBA: ILdRf var_A4
  loc_B8CDBD: LitI4 1
  loc_B8CDC2: EqI4
  loc_B8CDC3: FFreeAd var_88 = ""
  loc_B8CDCA: BranchF loc_B8D06F
  loc_B8CDCD: FLdRfVar var_CC
  loc_B8CDD0: FLdRfVar var_BC
  loc_B8CDD3: LitVarStr var_B8, "CodiUnga"
  loc_B8CDD8: PopAdLdVar
  loc_B8CDD9: FLdRfVar var_A8
  loc_B8CDDC: FLdRfVar var_90
  loc_B8CDDF: FLdRfVar var_88
  loc_B8CDE2: ImpAdLdRf MemVar_C3D7D8
  loc_B8CDE5: NewIfNullPr bscUnidadGasto
  loc_B8CDE8: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8CDED: FLdPr var_88
  loc_B8CDF0: from_stack_1v = clsbase.RsFrmGet()
  loc_B8CDF5: FLdPr var_90
  loc_B8CDF8:  = Me.Fields
  loc_B8CDFD: FLdPr var_A8
  loc_B8CE00: from_stack_2 = Me.Item(from_stack_1)
  loc_B8CE05: FLdPr var_BC
  loc_B8CE08:  = Me.Value
  loc_B8CE0D: FLdPr Me
  loc_B8CE10: MemLdRfVar from_stack_1.global_92
  loc_B8CE13: NewIfNullRf
  loc_B8CE17: FLdRfVar var_CC
  loc_B8CE1A: CStrVarTmp
  loc_B8CE1B: FStStrNoPop var_9C
  loc_B8CE1E: ImpAdLdI2 MemVar_C3D064
  loc_B8CE21: CStrUI1
  loc_B8CE23: FStStrNoPop var_98
  loc_B8CE26: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8CE2B: FStStrNoPop var_A0
  loc_B8CE2E: FLdPr Me
  loc_B8CE31: MemStStrCopy
  loc_B8CE35: FFreeStr var_98 = "": var_9C = ""
  loc_B8CE3E: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8CE49: FFree1Var var_CC = ""
  loc_B8CE4C: FLdRfVar var_98
  loc_B8CE4F: FLdPr Me
  loc_B8CE52: MemLdRfVar from_stack_1.global_92
  loc_B8CE55: NewIfNullPr tblunidadgasto
  loc_B8CE58: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8CE5D: ILdRf var_98
  loc_B8CE60: FLdPr Me
  loc_B8CE63: VCallAd Control_ID_CodiUngaTxt
  loc_B8CE66: FStAdFunc var_88
  loc_B8CE69: FLdPr var_88
  loc_B8CE6C: Me.Text = from_stack_1
  loc_B8CE71: FFree1Str var_98
  loc_B8CE74: FFree1Ad var_88
  loc_B8CE77: FLdRfVar var_98
  loc_B8CE7A: FLdPr Me
  loc_B8CE7D: MemLdRfVar from_stack_1.global_92
  loc_B8CE80: NewIfNullPr tblunidadgasto
  loc_B8CE83: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8CE88: ILdRf var_98
  loc_B8CE8B: FLdPr Me
  loc_B8CE8E: VCallAd Control_ID_DetaUngaLbl
  loc_B8CE91: FStAdFunc var_88
  loc_B8CE94: FLdPr var_88
  loc_B8CE97: Me.Caption = from_stack_1
  loc_B8CE9C: FFree1Str var_98
  loc_B8CE9F: FFree1Ad var_88
  loc_B8CEA2: FLdPr Me
  loc_B8CEA5: VCallAd Control_ID_CodiUngaTxt
  loc_B8CEA8: FStAdFunc var_BC
  loc_B8CEAB: FLdPr Me
  loc_B8CEAE: VCallAd Control_ID_DetaUngaLbl
  loc_B8CEB1: FStAdFunc var_A8
  loc_B8CEB4: FLdRfVar var_A8
  loc_B8CEB7: FLdZeroAd var_BC
  loc_B8CEBA: FStAdFuncNoPop
  loc_B8CEBD: CastAd
  loc_B8CEC0: FStAdFunc var_90
  loc_B8CEC3: FLdRfVar var_90
  loc_B8CEC6: FLdPr Me
  loc_B8CEC9: MemLdRfVar from_stack_1.global_68
  loc_B8CECC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8CED1: IStI2 Cancel
  loc_B8CED4: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8CEDF: ILdI2 Cancel
  loc_B8CEE2: NotI4
  loc_B8CEE3: BranchF loc_B8D06C
  loc_B8CEE6: FLdPr Me
  loc_B8CEE9: VCallAd Control_ID_CodiOrgaMsk
  loc_B8CEEC: FStAdFunc var_88
  loc_B8CEEF: FLdPr var_88
  loc_B8CEF2: LateIdLdVar var_CC DispID_22 0
  loc_B8CEF9: CStrVarTmp
  loc_B8CEFA: FStStrNoPop var_98
  loc_B8CEFD: LitStr vbNullString
  loc_B8CF00: EqStr
  loc_B8CF02: FFree1Str var_98
  loc_B8CF05: FFree1Ad var_88
  loc_B8CF08: FFree1Var var_CC = ""
  loc_B8CF0B: BranchF loc_B8CF68
  loc_B8CF0E: FLdRfVar var_98
  loc_B8CF11: FLdPr Me
  loc_B8CF14: MemLdRfVar from_stack_1.global_92
  loc_B8CF17: NewIfNullPr tblunidadgasto
  loc_B8CF1A: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8CF1F: FLdZeroAd var_98
  loc_B8CF22: CVarStr var_CC
  loc_B8CF25: PopAdLdVar
  loc_B8CF26: FLdPr Me
  loc_B8CF29: VCallAd Control_ID_CodiOrgaMsk
  loc_B8CF2C: FStAdFunc var_88
  loc_B8CF2F: FLdPr var_88
  loc_B8CF32: LateIdSt
  loc_B8CF37: FFree1Ad var_88
  loc_B8CF3A: FFree1Var var_CC = ""
  loc_B8CF3D: FLdRfVar var_98
  loc_B8CF40: FLdPr Me
  loc_B8CF43: MemLdRfVar from_stack_1.global_92
  loc_B8CF46: NewIfNullPr tblunidadgasto
  loc_B8CF49: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8CF4E: ILdRf var_98
  loc_B8CF51: FLdPr Me
  loc_B8CF54: VCallAd Control_ID_DetaOrgaLbl
  loc_B8CF57: FStAdFunc var_88
  loc_B8CF5A: FLdPr var_88
  loc_B8CF5D: Me.Caption = from_stack_1
  loc_B8CF62: FFree1Str var_98
  loc_B8CF65: FFree1Ad var_88
  loc_B8CF68: FLdPr Me
  loc_B8CF6B: VCallAd Control_ID_CodiPartMsk
  loc_B8CF6E: FStAdFunc var_88
  loc_B8CF71: FLdPr var_88
  loc_B8CF74: LateIdLdVar var_CC DispID_22 0
  loc_B8CF7B: CStrVarTmp
  loc_B8CF7C: FStStrNoPop var_98
  loc_B8CF7F: LitStr vbNullString
  loc_B8CF82: EqStr
  loc_B8CF84: FFree1Str var_98
  loc_B8CF87: FFree1Ad var_88
  loc_B8CF8A: FFree1Var var_CC = ""
  loc_B8CF8D: BranchF loc_B8CFEA
  loc_B8CF90: FLdRfVar var_98
  loc_B8CF93: FLdPr Me
  loc_B8CF96: MemLdRfVar from_stack_1.global_92
  loc_B8CF99: NewIfNullPr tblunidadgasto
  loc_B8CF9C: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8CFA1: FLdZeroAd var_98
  loc_B8CFA4: CVarStr var_CC
  loc_B8CFA7: PopAdLdVar
  loc_B8CFA8: FLdPr Me
  loc_B8CFAB: VCallAd Control_ID_CodiPartMsk
  loc_B8CFAE: FStAdFunc var_88
  loc_B8CFB1: FLdPr var_88
  loc_B8CFB4: LateIdSt
  loc_B8CFB9: FFree1Ad var_88
  loc_B8CFBC: FFree1Var var_CC = ""
  loc_B8CFBF: FLdRfVar var_98
  loc_B8CFC2: FLdPr Me
  loc_B8CFC5: MemLdRfVar from_stack_1.global_92
  loc_B8CFC8: NewIfNullPr tblunidadgasto
  loc_B8CFCB: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8CFD0: ILdRf var_98
  loc_B8CFD3: FLdPr Me
  loc_B8CFD6: VCallAd Control_ID_DetaPartLbl
  loc_B8CFD9: FStAdFunc var_88
  loc_B8CFDC: FLdPr var_88
  loc_B8CFDF: Me.Caption = from_stack_1
  loc_B8CFE4: FFree1Str var_98
  loc_B8CFE7: FFree1Ad var_88
  loc_B8CFEA: FLdPr Me
  loc_B8CFED: VCallAd Control_ID_CodiFifuMsk
  loc_B8CFF0: FStAdFunc var_88
  loc_B8CFF3: FLdPr var_88
  loc_B8CFF6: LateIdLdVar var_CC DispID_22 0
  loc_B8CFFD: CStrVarTmp
  loc_B8CFFE: FStStrNoPop var_98
  loc_B8D001: LitStr vbNullString
  loc_B8D004: EqStr
  loc_B8D006: FFree1Str var_98
  loc_B8D009: FFree1Ad var_88
  loc_B8D00C: FFree1Var var_CC = ""
  loc_B8D00F: BranchF loc_B8D06C
  loc_B8D012: FLdRfVar var_98
  loc_B8D015: FLdPr Me
  loc_B8D018: MemLdRfVar from_stack_1.global_92
  loc_B8D01B: NewIfNullPr tblunidadgasto
  loc_B8D01E: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8D023: FLdZeroAd var_98
  loc_B8D026: CVarStr var_CC
  loc_B8D029: PopAdLdVar
  loc_B8D02A: FLdPr Me
  loc_B8D02D: VCallAd Control_ID_CodiFifuMsk
  loc_B8D030: FStAdFunc var_88
  loc_B8D033: FLdPr var_88
  loc_B8D036: LateIdSt
  loc_B8D03B: FFree1Ad var_88
  loc_B8D03E: FFree1Var var_CC = ""
  loc_B8D041: FLdRfVar var_98
  loc_B8D044: FLdPr Me
  loc_B8D047: MemLdRfVar from_stack_1.global_92
  loc_B8D04A: NewIfNullPr tblunidadgasto
  loc_B8D04D: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8D052: ILdRf var_98
  loc_B8D055: FLdPr Me
  loc_B8D058: VCallAd Control_ID_DetaFifuLbl
  loc_B8D05B: FStAdFunc var_88
  loc_B8D05E: FLdPr var_88
  loc_B8D061: Me.Caption = from_stack_1
  loc_B8D066: FFree1Str var_98
  loc_B8D069: FFree1Ad var_88
  loc_B8D06C: Branch loc_B8D0ED
  loc_B8D06F: FLdRfVar var_A4
  loc_B8D072: FLdRfVar var_90
  loc_B8D075: FLdRfVar var_88
  loc_B8D078: ImpAdLdRf MemVar_C3D7D8
  loc_B8D07B: NewIfNullPr bscUnidadGasto
  loc_B8D07E: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8D083: FLdPr var_88
  loc_B8D086: from_stack_1v = clsbase.RsFrmGet()
  loc_B8D08B: FLdPr var_90
  loc_B8D08E:  = Me.RecordCount
  loc_B8D093: ILdRf var_A4
  loc_B8D096: LitI4 1
  loc_B8D09B: LtI4
  loc_B8D09C: FFreeAd var_88 = ""
  loc_B8D0A3: BranchF loc_B8D0ED
  loc_B8D0A6: LitStr "La Unidad de Gasto NO EXISTE. Verifique..."
  loc_B8D0A9: FLdPr Me
  loc_B8D0AC: MemStStrCopy
  loc_B8D0B0: FLdPr Me
  loc_B8D0B3: VCallAd Control_ID_CodiUngaTxt
  loc_B8D0B6: FStAdFunc var_BC
  loc_B8D0B9: FLdPr Me
  loc_B8D0BC: VCallAd Control_ID_DetaUngaLbl
  loc_B8D0BF: FStAdFunc var_A8
  loc_B8D0C2: FLdRfVar var_A8
  loc_B8D0C5: FLdZeroAd var_BC
  loc_B8D0C8: FStAdFuncNoPop
  loc_B8D0CB: CastAd
  loc_B8D0CE: FStAdFunc var_90
  loc_B8D0D1: FLdRfVar var_90
  loc_B8D0D4: FLdPr Me
  loc_B8D0D7: MemLdRfVar from_stack_1.global_68
  loc_B8D0DA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8D0DF: IStI2 Cancel
  loc_B8D0E2: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8D0ED: Branch loc_B8D805
  loc_B8D0F0: FLdRfVar var_98
  loc_B8D0F3: FLdPr Me
  loc_B8D0F6: VCallAd Control_ID_CodiUngaTxt
  loc_B8D0F9: FStAdFunc var_88
  loc_B8D0FC: FLdPr var_88
  loc_B8D0FF:  = Me.Text
  loc_B8D104: LitStr " AND DetaUnga LIKE '" & Chr(37)
  loc_B8D107: LitI4 0
  loc_B8D10C: LitI4 -1
  loc_B8D111: LitI4 1
  loc_B8D116: LitStr Chr(37)
  loc_B8D119: LitStr " "
  loc_B8D11C: ILdRf var_98
  loc_B8D11F: ImpAdCallI2 Replace(, , , , , )
  loc_B8D124: FStStrNoPop var_9C
  loc_B8D127: ConcatStr
  loc_B8D128: FStStrNoPop var_A0
  loc_B8D12B: LitStr Chr(37) & "' ORDER BY DetaUnga"
  loc_B8D12E: ConcatStr
  loc_B8D12F: FStStrNoPop var_D0
  loc_B8D132: ImpAdLdRf MemVar_C3D7D8
  loc_B8D135: NewIfNullPr bscUnidadGasto
  loc_B8D138: Call bscUnidadGasto.Constructor(from_stack_1v)
  loc_B8D13D: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_B8D148: FFree1Ad var_88
  loc_B8D14B: FLdRfVar var_A4
  loc_B8D14E: FLdRfVar var_90
  loc_B8D151: FLdRfVar var_88
  loc_B8D154: ImpAdLdRf MemVar_C3D7D8
  loc_B8D157: NewIfNullPr bscUnidadGasto
  loc_B8D15A: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8D15F: FLdPr var_88
  loc_B8D162: from_stack_1v = clsbase.RsFrmGet()
  loc_B8D167: FLdPr var_90
  loc_B8D16A:  = Me.RecordCount
  loc_B8D16F: ILdRf var_A4
  loc_B8D172: LitI4 1
  loc_B8D177: EqI4
  loc_B8D178: FFreeAd var_88 = ""
  loc_B8D17F: BranchF loc_B8D424
  loc_B8D182: FLdRfVar var_CC
  loc_B8D185: FLdRfVar var_BC
  loc_B8D188: LitVarStr var_B8, "CodiUnga"
  loc_B8D18D: PopAdLdVar
  loc_B8D18E: FLdRfVar var_A8
  loc_B8D191: FLdRfVar var_90
  loc_B8D194: FLdRfVar var_88
  loc_B8D197: ImpAdLdRf MemVar_C3D7D8
  loc_B8D19A: NewIfNullPr bscUnidadGasto
  loc_B8D19D: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8D1A2: FLdPr var_88
  loc_B8D1A5: from_stack_1v = clsbase.RsFrmGet()
  loc_B8D1AA: FLdPr var_90
  loc_B8D1AD:  = Me.Fields
  loc_B8D1B2: FLdPr var_A8
  loc_B8D1B5: from_stack_2 = Me.Item(from_stack_1)
  loc_B8D1BA: FLdPr var_BC
  loc_B8D1BD:  = Me.Value
  loc_B8D1C2: FLdPr Me
  loc_B8D1C5: MemLdRfVar from_stack_1.global_92
  loc_B8D1C8: NewIfNullRf
  loc_B8D1CC: FLdRfVar var_CC
  loc_B8D1CF: CStrVarTmp
  loc_B8D1D0: FStStrNoPop var_9C
  loc_B8D1D3: ImpAdLdI2 MemVar_C3D064
  loc_B8D1D6: CStrUI1
  loc_B8D1D8: FStStrNoPop var_98
  loc_B8D1DB: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8D1E0: FStStrNoPop var_A0
  loc_B8D1E3: FLdPr Me
  loc_B8D1E6: MemStStrCopy
  loc_B8D1EA: FFreeStr var_98 = "": var_9C = ""
  loc_B8D1F3: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8D1FE: FFree1Var var_CC = ""
  loc_B8D201: FLdRfVar var_98
  loc_B8D204: FLdPr Me
  loc_B8D207: MemLdRfVar from_stack_1.global_92
  loc_B8D20A: NewIfNullPr tblunidadgasto
  loc_B8D20D: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8D212: ILdRf var_98
  loc_B8D215: FLdPr Me
  loc_B8D218: VCallAd Control_ID_CodiUngaTxt
  loc_B8D21B: FStAdFunc var_88
  loc_B8D21E: FLdPr var_88
  loc_B8D221: Me.Text = from_stack_1
  loc_B8D226: FFree1Str var_98
  loc_B8D229: FFree1Ad var_88
  loc_B8D22C: FLdRfVar var_98
  loc_B8D22F: FLdPr Me
  loc_B8D232: MemLdRfVar from_stack_1.global_92
  loc_B8D235: NewIfNullPr tblunidadgasto
  loc_B8D238: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8D23D: ILdRf var_98
  loc_B8D240: FLdPr Me
  loc_B8D243: VCallAd Control_ID_DetaUngaLbl
  loc_B8D246: FStAdFunc var_88
  loc_B8D249: FLdPr var_88
  loc_B8D24C: Me.Caption = from_stack_1
  loc_B8D251: FFree1Str var_98
  loc_B8D254: FFree1Ad var_88
  loc_B8D257: FLdPr Me
  loc_B8D25A: VCallAd Control_ID_CodiUngaTxt
  loc_B8D25D: FStAdFunc var_BC
  loc_B8D260: FLdPr Me
  loc_B8D263: VCallAd Control_ID_DetaUngaLbl
  loc_B8D266: FStAdFunc var_A8
  loc_B8D269: FLdRfVar var_A8
  loc_B8D26C: FLdZeroAd var_BC
  loc_B8D26F: FStAdFuncNoPop
  loc_B8D272: CastAd
  loc_B8D275: FStAdFunc var_90
  loc_B8D278: FLdRfVar var_90
  loc_B8D27B: FLdPr Me
  loc_B8D27E: MemLdRfVar from_stack_1.global_68
  loc_B8D281: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8D286: IStI2 Cancel
  loc_B8D289: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8D294: ILdI2 Cancel
  loc_B8D297: NotI4
  loc_B8D298: BranchF loc_B8D421
  loc_B8D29B: FLdPr Me
  loc_B8D29E: VCallAd Control_ID_CodiOrgaMsk
  loc_B8D2A1: FStAdFunc var_88
  loc_B8D2A4: FLdPr var_88
  loc_B8D2A7: LateIdLdVar var_CC DispID_22 0
  loc_B8D2AE: CStrVarTmp
  loc_B8D2AF: FStStrNoPop var_98
  loc_B8D2B2: LitStr vbNullString
  loc_B8D2B5: EqStr
  loc_B8D2B7: FFree1Str var_98
  loc_B8D2BA: FFree1Ad var_88
  loc_B8D2BD: FFree1Var var_CC = ""
  loc_B8D2C0: BranchF loc_B8D31D
  loc_B8D2C3: FLdRfVar var_98
  loc_B8D2C6: FLdPr Me
  loc_B8D2C9: MemLdRfVar from_stack_1.global_92
  loc_B8D2CC: NewIfNullPr tblunidadgasto
  loc_B8D2CF: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8D2D4: FLdZeroAd var_98
  loc_B8D2D7: CVarStr var_CC
  loc_B8D2DA: PopAdLdVar
  loc_B8D2DB: FLdPr Me
  loc_B8D2DE: VCallAd Control_ID_CodiOrgaMsk
  loc_B8D2E1: FStAdFunc var_88
  loc_B8D2E4: FLdPr var_88
  loc_B8D2E7: LateIdSt
  loc_B8D2EC: FFree1Ad var_88
  loc_B8D2EF: FFree1Var var_CC = ""
  loc_B8D2F2: FLdRfVar var_98
  loc_B8D2F5: FLdPr Me
  loc_B8D2F8: MemLdRfVar from_stack_1.global_92
  loc_B8D2FB: NewIfNullPr tblunidadgasto
  loc_B8D2FE: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8D303: ILdRf var_98
  loc_B8D306: FLdPr Me
  loc_B8D309: VCallAd Control_ID_DetaOrgaLbl
  loc_B8D30C: FStAdFunc var_88
  loc_B8D30F: FLdPr var_88
  loc_B8D312: Me.Caption = from_stack_1
  loc_B8D317: FFree1Str var_98
  loc_B8D31A: FFree1Ad var_88
  loc_B8D31D: FLdPr Me
  loc_B8D320: VCallAd Control_ID_CodiPartMsk
  loc_B8D323: FStAdFunc var_88
  loc_B8D326: FLdPr var_88
  loc_B8D329: LateIdLdVar var_CC DispID_22 0
  loc_B8D330: CStrVarTmp
  loc_B8D331: FStStrNoPop var_98
  loc_B8D334: LitStr vbNullString
  loc_B8D337: EqStr
  loc_B8D339: FFree1Str var_98
  loc_B8D33C: FFree1Ad var_88
  loc_B8D33F: FFree1Var var_CC = ""
  loc_B8D342: BranchF loc_B8D39F
  loc_B8D345: FLdRfVar var_98
  loc_B8D348: FLdPr Me
  loc_B8D34B: MemLdRfVar from_stack_1.global_92
  loc_B8D34E: NewIfNullPr tblunidadgasto
  loc_B8D351: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8D356: FLdZeroAd var_98
  loc_B8D359: CVarStr var_CC
  loc_B8D35C: PopAdLdVar
  loc_B8D35D: FLdPr Me
  loc_B8D360: VCallAd Control_ID_CodiPartMsk
  loc_B8D363: FStAdFunc var_88
  loc_B8D366: FLdPr var_88
  loc_B8D369: LateIdSt
  loc_B8D36E: FFree1Ad var_88
  loc_B8D371: FFree1Var var_CC = ""
  loc_B8D374: FLdRfVar var_98
  loc_B8D377: FLdPr Me
  loc_B8D37A: MemLdRfVar from_stack_1.global_92
  loc_B8D37D: NewIfNullPr tblunidadgasto
  loc_B8D380: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8D385: ILdRf var_98
  loc_B8D388: FLdPr Me
  loc_B8D38B: VCallAd Control_ID_DetaPartLbl
  loc_B8D38E: FStAdFunc var_88
  loc_B8D391: FLdPr var_88
  loc_B8D394: Me.Caption = from_stack_1
  loc_B8D399: FFree1Str var_98
  loc_B8D39C: FFree1Ad var_88
  loc_B8D39F: FLdPr Me
  loc_B8D3A2: VCallAd Control_ID_CodiFifuMsk
  loc_B8D3A5: FStAdFunc var_88
  loc_B8D3A8: FLdPr var_88
  loc_B8D3AB: LateIdLdVar var_CC DispID_22 0
  loc_B8D3B2: CStrVarTmp
  loc_B8D3B3: FStStrNoPop var_98
  loc_B8D3B6: LitStr vbNullString
  loc_B8D3B9: EqStr
  loc_B8D3BB: FFree1Str var_98
  loc_B8D3BE: FFree1Ad var_88
  loc_B8D3C1: FFree1Var var_CC = ""
  loc_B8D3C4: BranchF loc_B8D421
  loc_B8D3C7: FLdRfVar var_98
  loc_B8D3CA: FLdPr Me
  loc_B8D3CD: MemLdRfVar from_stack_1.global_92
  loc_B8D3D0: NewIfNullPr tblunidadgasto
  loc_B8D3D3: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8D3D8: FLdZeroAd var_98
  loc_B8D3DB: CVarStr var_CC
  loc_B8D3DE: PopAdLdVar
  loc_B8D3DF: FLdPr Me
  loc_B8D3E2: VCallAd Control_ID_CodiFifuMsk
  loc_B8D3E5: FStAdFunc var_88
  loc_B8D3E8: FLdPr var_88
  loc_B8D3EB: LateIdSt
  loc_B8D3F0: FFree1Ad var_88
  loc_B8D3F3: FFree1Var var_CC = ""
  loc_B8D3F6: FLdRfVar var_98
  loc_B8D3F9: FLdPr Me
  loc_B8D3FC: MemLdRfVar from_stack_1.global_92
  loc_B8D3FF: NewIfNullPr tblunidadgasto
  loc_B8D402: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8D407: ILdRf var_98
  loc_B8D40A: FLdPr Me
  loc_B8D40D: VCallAd Control_ID_DetaFifuLbl
  loc_B8D410: FStAdFunc var_88
  loc_B8D413: FLdPr var_88
  loc_B8D416: Me.Caption = from_stack_1
  loc_B8D41B: FFree1Str var_98
  loc_B8D41E: FFree1Ad var_88
  loc_B8D421: Branch loc_B8D805
  loc_B8D424: FLdRfVar var_A4
  loc_B8D427: FLdRfVar var_90
  loc_B8D42A: FLdRfVar var_88
  loc_B8D42D: ImpAdLdRf MemVar_C3D7D8
  loc_B8D430: NewIfNullPr bscUnidadGasto
  loc_B8D433: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8D438: FLdPr var_88
  loc_B8D43B: from_stack_1v = clsbase.RsFrmGet()
  loc_B8D440: FLdPr var_90
  loc_B8D443:  = Me.RecordCount
  loc_B8D448: ILdRf var_A4
  loc_B8D44B: LitI4 1
  loc_B8D450: GtI4
  loc_B8D451: FFreeAd var_88 = ""
  loc_B8D458: BranchF loc_B8D787
  loc_B8D45B: LitVar_Missing var_E0
  loc_B8D45E: PopAdLdVar
  loc_B8D45F: LitVarI4
  loc_B8D467: PopAdLdVar
  loc_B8D468: ImpAdLdRf MemVar_C3D7D8
  loc_B8D46B: NewIfNullPr bscUnidadGasto
  loc_B8D46E: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_B8D473: FLdRfVar var_A4
  loc_B8D476: FLdRfVar var_88
  loc_B8D479: ImpAdLdRf MemVar_C3D7D8
  loc_B8D47C: NewIfNullPr bscUnidadGasto
  loc_B8D47F: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8D484: FLdPr var_88
  loc_B8D487: from_stack_1 = clsbase.RecordCount
  loc_B8D48C: ILdRf var_A4
  loc_B8D48F: LitI4 0
  loc_B8D494: GtI4
  loc_B8D495: FFree1Ad var_88
  loc_B8D498: BranchF loc_B8D73D
  loc_B8D49B: FLdRfVar var_CC
  loc_B8D49E: FLdRfVar var_BC
  loc_B8D4A1: LitVarStr var_B8, "CodiUnga"
  loc_B8D4A6: PopAdLdVar
  loc_B8D4A7: FLdRfVar var_A8
  loc_B8D4AA: FLdRfVar var_90
  loc_B8D4AD: FLdRfVar var_88
  loc_B8D4B0: ImpAdLdRf MemVar_C3D7D8
  loc_B8D4B3: NewIfNullPr bscUnidadGasto
  loc_B8D4B6: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8D4BB: FLdPr var_88
  loc_B8D4BE: from_stack_1v = clsbase.RsFrmGet()
  loc_B8D4C3: FLdPr var_90
  loc_B8D4C6:  = Me.Fields
  loc_B8D4CB: FLdPr var_A8
  loc_B8D4CE: from_stack_2 = Me.Item(from_stack_1)
  loc_B8D4D3: FLdPr var_BC
  loc_B8D4D6:  = Me.Value
  loc_B8D4DB: FLdPr Me
  loc_B8D4DE: MemLdRfVar from_stack_1.global_92
  loc_B8D4E1: NewIfNullRf
  loc_B8D4E5: FLdRfVar var_CC
  loc_B8D4E8: CStrVarTmp
  loc_B8D4E9: FStStrNoPop var_9C
  loc_B8D4EC: ImpAdLdI2 MemVar_C3D064
  loc_B8D4EF: CStrUI1
  loc_B8D4F1: FStStrNoPop var_98
  loc_B8D4F4: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8D4F9: FStStrNoPop var_A0
  loc_B8D4FC: FLdPr Me
  loc_B8D4FF: MemStStrCopy
  loc_B8D503: FFreeStr var_98 = "": var_9C = ""
  loc_B8D50C: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8D517: FFree1Var var_CC = ""
  loc_B8D51A: FLdRfVar var_98
  loc_B8D51D: FLdPr Me
  loc_B8D520: MemLdRfVar from_stack_1.global_92
  loc_B8D523: NewIfNullPr tblunidadgasto
  loc_B8D526: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8D52B: ILdRf var_98
  loc_B8D52E: FLdPr Me
  loc_B8D531: VCallAd Control_ID_CodiUngaTxt
  loc_B8D534: FStAdFunc var_88
  loc_B8D537: FLdPr var_88
  loc_B8D53A: Me.Text = from_stack_1
  loc_B8D53F: FFree1Str var_98
  loc_B8D542: FFree1Ad var_88
  loc_B8D545: FLdRfVar var_98
  loc_B8D548: FLdPr Me
  loc_B8D54B: MemLdRfVar from_stack_1.global_92
  loc_B8D54E: NewIfNullPr tblunidadgasto
  loc_B8D551: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8D556: ILdRf var_98
  loc_B8D559: FLdPr Me
  loc_B8D55C: VCallAd Control_ID_DetaUngaLbl
  loc_B8D55F: FStAdFunc var_88
  loc_B8D562: FLdPr var_88
  loc_B8D565: Me.Caption = from_stack_1
  loc_B8D56A: FFree1Str var_98
  loc_B8D56D: FFree1Ad var_88
  loc_B8D570: FLdPr Me
  loc_B8D573: VCallAd Control_ID_CodiUngaTxt
  loc_B8D576: FStAdFunc var_BC
  loc_B8D579: FLdPr Me
  loc_B8D57C: VCallAd Control_ID_DetaUngaLbl
  loc_B8D57F: FStAdFunc var_A8
  loc_B8D582: FLdRfVar var_A8
  loc_B8D585: FLdZeroAd var_BC
  loc_B8D588: FStAdFuncNoPop
  loc_B8D58B: CastAd
  loc_B8D58E: FStAdFunc var_90
  loc_B8D591: FLdRfVar var_90
  loc_B8D594: FLdPr Me
  loc_B8D597: MemLdRfVar from_stack_1.global_68
  loc_B8D59A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8D59F: IStI2 Cancel
  loc_B8D5A2: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8D5AD: ILdI2 Cancel
  loc_B8D5B0: NotI4
  loc_B8D5B1: BranchF loc_B8D73A
  loc_B8D5B4: FLdPr Me
  loc_B8D5B7: VCallAd Control_ID_CodiOrgaMsk
  loc_B8D5BA: FStAdFunc var_88
  loc_B8D5BD: FLdPr var_88
  loc_B8D5C0: LateIdLdVar var_CC DispID_22 0
  loc_B8D5C7: CStrVarTmp
  loc_B8D5C8: FStStrNoPop var_98
  loc_B8D5CB: LitStr vbNullString
  loc_B8D5CE: EqStr
  loc_B8D5D0: FFree1Str var_98
  loc_B8D5D3: FFree1Ad var_88
  loc_B8D5D6: FFree1Var var_CC = ""
  loc_B8D5D9: BranchF loc_B8D636
  loc_B8D5DC: FLdRfVar var_98
  loc_B8D5DF: FLdPr Me
  loc_B8D5E2: MemLdRfVar from_stack_1.global_92
  loc_B8D5E5: NewIfNullPr tblunidadgasto
  loc_B8D5E8: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8D5ED: FLdZeroAd var_98
  loc_B8D5F0: CVarStr var_CC
  loc_B8D5F3: PopAdLdVar
  loc_B8D5F4: FLdPr Me
  loc_B8D5F7: VCallAd Control_ID_CodiOrgaMsk
  loc_B8D5FA: FStAdFunc var_88
  loc_B8D5FD: FLdPr var_88
  loc_B8D600: LateIdSt
  loc_B8D605: FFree1Ad var_88
  loc_B8D608: FFree1Var var_CC = ""
  loc_B8D60B: FLdRfVar var_98
  loc_B8D60E: FLdPr Me
  loc_B8D611: MemLdRfVar from_stack_1.global_92
  loc_B8D614: NewIfNullPr tblunidadgasto
  loc_B8D617: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8D61C: ILdRf var_98
  loc_B8D61F: FLdPr Me
  loc_B8D622: VCallAd Control_ID_DetaOrgaLbl
  loc_B8D625: FStAdFunc var_88
  loc_B8D628: FLdPr var_88
  loc_B8D62B: Me.Caption = from_stack_1
  loc_B8D630: FFree1Str var_98
  loc_B8D633: FFree1Ad var_88
  loc_B8D636: FLdPr Me
  loc_B8D639: VCallAd Control_ID_CodiPartMsk
  loc_B8D63C: FStAdFunc var_88
  loc_B8D63F: FLdPr var_88
  loc_B8D642: LateIdLdVar var_CC DispID_22 0
  loc_B8D649: CStrVarTmp
  loc_B8D64A: FStStrNoPop var_98
  loc_B8D64D: LitStr vbNullString
  loc_B8D650: EqStr
  loc_B8D652: FFree1Str var_98
  loc_B8D655: FFree1Ad var_88
  loc_B8D658: FFree1Var var_CC = ""
  loc_B8D65B: BranchF loc_B8D6B8
  loc_B8D65E: FLdRfVar var_98
  loc_B8D661: FLdPr Me
  loc_B8D664: MemLdRfVar from_stack_1.global_92
  loc_B8D667: NewIfNullPr tblunidadgasto
  loc_B8D66A: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8D66F: FLdZeroAd var_98
  loc_B8D672: CVarStr var_CC
  loc_B8D675: PopAdLdVar
  loc_B8D676: FLdPr Me
  loc_B8D679: VCallAd Control_ID_CodiPartMsk
  loc_B8D67C: FStAdFunc var_88
  loc_B8D67F: FLdPr var_88
  loc_B8D682: LateIdSt
  loc_B8D687: FFree1Ad var_88
  loc_B8D68A: FFree1Var var_CC = ""
  loc_B8D68D: FLdRfVar var_98
  loc_B8D690: FLdPr Me
  loc_B8D693: MemLdRfVar from_stack_1.global_92
  loc_B8D696: NewIfNullPr tblunidadgasto
  loc_B8D699: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8D69E: ILdRf var_98
  loc_B8D6A1: FLdPr Me
  loc_B8D6A4: VCallAd Control_ID_DetaPartLbl
  loc_B8D6A7: FStAdFunc var_88
  loc_B8D6AA: FLdPr var_88
  loc_B8D6AD: Me.Caption = from_stack_1
  loc_B8D6B2: FFree1Str var_98
  loc_B8D6B5: FFree1Ad var_88
  loc_B8D6B8: FLdPr Me
  loc_B8D6BB: VCallAd Control_ID_CodiFifuMsk
  loc_B8D6BE: FStAdFunc var_88
  loc_B8D6C1: FLdPr var_88
  loc_B8D6C4: LateIdLdVar var_CC DispID_22 0
  loc_B8D6CB: CStrVarTmp
  loc_B8D6CC: FStStrNoPop var_98
  loc_B8D6CF: LitStr vbNullString
  loc_B8D6D2: EqStr
  loc_B8D6D4: FFree1Str var_98
  loc_B8D6D7: FFree1Ad var_88
  loc_B8D6DA: FFree1Var var_CC = ""
  loc_B8D6DD: BranchF loc_B8D73A
  loc_B8D6E0: FLdRfVar var_98
  loc_B8D6E3: FLdPr Me
  loc_B8D6E6: MemLdRfVar from_stack_1.global_92
  loc_B8D6E9: NewIfNullPr tblunidadgasto
  loc_B8D6EC: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8D6F1: FLdZeroAd var_98
  loc_B8D6F4: CVarStr var_CC
  loc_B8D6F7: PopAdLdVar
  loc_B8D6F8: FLdPr Me
  loc_B8D6FB: VCallAd Control_ID_CodiFifuMsk
  loc_B8D6FE: FStAdFunc var_88
  loc_B8D701: FLdPr var_88
  loc_B8D704: LateIdSt
  loc_B8D709: FFree1Ad var_88
  loc_B8D70C: FFree1Var var_CC = ""
  loc_B8D70F: FLdRfVar var_98
  loc_B8D712: FLdPr Me
  loc_B8D715: MemLdRfVar from_stack_1.global_92
  loc_B8D718: NewIfNullPr tblunidadgasto
  loc_B8D71B: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8D720: ILdRf var_98
  loc_B8D723: FLdPr Me
  loc_B8D726: VCallAd Control_ID_DetaFifuLbl
  loc_B8D729: FStAdFunc var_88
  loc_B8D72C: FLdPr var_88
  loc_B8D72F: Me.Caption = from_stack_1
  loc_B8D734: FFree1Str var_98
  loc_B8D737: FFree1Ad var_88
  loc_B8D73A: Branch loc_B8D784
  loc_B8D73D: LitStr "La Unidad de Gasto NO EXISTE. Verique..."
  loc_B8D740: FLdPr Me
  loc_B8D743: MemStStrCopy
  loc_B8D747: FLdPr Me
  loc_B8D74A: VCallAd Control_ID_CodiUngaTxt
  loc_B8D74D: FStAdFunc var_BC
  loc_B8D750: FLdPr Me
  loc_B8D753: VCallAd Control_ID_DetaUngaLbl
  loc_B8D756: FStAdFunc var_A8
  loc_B8D759: FLdRfVar var_A8
  loc_B8D75C: FLdZeroAd var_BC
  loc_B8D75F: FStAdFuncNoPop
  loc_B8D762: CastAd
  loc_B8D765: FStAdFunc var_90
  loc_B8D768: FLdRfVar var_90
  loc_B8D76B: FLdPr Me
  loc_B8D76E: MemLdRfVar from_stack_1.global_68
  loc_B8D771: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8D776: IStI2 Cancel
  loc_B8D779: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8D784: Branch loc_B8D805
  loc_B8D787: FLdRfVar var_A4
  loc_B8D78A: FLdRfVar var_90
  loc_B8D78D: FLdRfVar var_88
  loc_B8D790: ImpAdLdRf MemVar_C3D7D8
  loc_B8D793: NewIfNullPr bscUnidadGasto
  loc_B8D796: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8D79B: FLdPr var_88
  loc_B8D79E: from_stack_1v = clsbase.RsFrmGet()
  loc_B8D7A3: FLdPr var_90
  loc_B8D7A6:  = Me.RecordCount
  loc_B8D7AB: ILdRf var_A4
  loc_B8D7AE: LitI4 1
  loc_B8D7B3: LtI4
  loc_B8D7B4: FFreeAd var_88 = ""
  loc_B8D7BB: BranchF loc_B8D805
  loc_B8D7BE: LitStr "La Unidad El Proveedor NO EXISTE. Verique..."
  loc_B8D7C1: FLdPr Me
  loc_B8D7C4: MemStStrCopy
  loc_B8D7C8: FLdPr Me
  loc_B8D7CB: VCallAd Control_ID_CodiUngaTxt
  loc_B8D7CE: FStAdFunc var_BC
  loc_B8D7D1: FLdPr Me
  loc_B8D7D4: VCallAd Control_ID_DetaUngaLbl
  loc_B8D7D7: FStAdFunc var_A8
  loc_B8D7DA: FLdRfVar var_A8
  loc_B8D7DD: FLdZeroAd var_BC
  loc_B8D7E0: FStAdFuncNoPop
  loc_B8D7E3: CastAd
  loc_B8D7E6: FStAdFunc var_90
  loc_B8D7E9: FLdRfVar var_90
  loc_B8D7EC: FLdPr Me
  loc_B8D7EF: MemLdRfVar from_stack_1.global_68
  loc_B8D7F2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8D7F7: IStI2 Cancel
  loc_B8D7FA: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8D805: Branch loc_B8DB54
  loc_B8D808: LitI2_Byte 0
  loc_B8D80A: ImpAdLdRf MemVar_C3D7D8
  loc_B8D80D: NewIfNullPr bscUnidadGasto
  loc_B8D810: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_B8D815: LitNothing
  loc_B8D817: CastAd
  loc_B8D81A: FStAdFuncNoPop
  loc_B8D81D: ImpAdLdRf MemVar_C3D7D8
  loc_B8D820: NewIfNullPr bscUnidadGasto
  loc_B8D823: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_B8D828: FFree1Ad var_88
  loc_B8D82B: LitVar_Missing var_E0
  loc_B8D82E: PopAdLdVar
  loc_B8D82F: LitVarI4
  loc_B8D837: PopAdLdVar
  loc_B8D838: ImpAdLdRf MemVar_C3D7D8
  loc_B8D83B: NewIfNullPr bscUnidadGasto
  loc_B8D83E: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_B8D843: FLdRfVar var_A4
  loc_B8D846: FLdRfVar var_88
  loc_B8D849: ImpAdLdRf MemVar_C3D7D8
  loc_B8D84C: NewIfNullPr bscUnidadGasto
  loc_B8D84F: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8D854: FLdPr var_88
  loc_B8D857: from_stack_1 = clsbase.RecordCount
  loc_B8D85C: ILdRf var_A4
  loc_B8D85F: LitI4 0
  loc_B8D864: GtI4
  loc_B8D865: FFree1Ad var_88
  loc_B8D868: BranchF loc_B8DB0D
  loc_B8D86B: FLdRfVar var_CC
  loc_B8D86E: FLdRfVar var_BC
  loc_B8D871: LitVarStr var_B8, "CodiUnga"
  loc_B8D876: PopAdLdVar
  loc_B8D877: FLdRfVar var_A8
  loc_B8D87A: FLdRfVar var_90
  loc_B8D87D: FLdRfVar var_88
  loc_B8D880: ImpAdLdRf MemVar_C3D7D8
  loc_B8D883: NewIfNullPr bscUnidadGasto
  loc_B8D886: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8D88B: FLdPr var_88
  loc_B8D88E: from_stack_1v = clsbase.RsFrmGet()
  loc_B8D893: FLdPr var_90
  loc_B8D896:  = Me.Fields
  loc_B8D89B: FLdPr var_A8
  loc_B8D89E: from_stack_2 = Me.Item(from_stack_1)
  loc_B8D8A3: FLdPr var_BC
  loc_B8D8A6:  = Me.Value
  loc_B8D8AB: FLdPr Me
  loc_B8D8AE: MemLdRfVar from_stack_1.global_92
  loc_B8D8B1: NewIfNullRf
  loc_B8D8B5: FLdRfVar var_CC
  loc_B8D8B8: CStrVarTmp
  loc_B8D8B9: FStStrNoPop var_9C
  loc_B8D8BC: ImpAdLdI2 MemVar_C3D064
  loc_B8D8BF: CStrUI1
  loc_B8D8C1: FStStrNoPop var_98
  loc_B8D8C4: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8D8C9: FStStrNoPop var_A0
  loc_B8D8CC: FLdPr Me
  loc_B8D8CF: MemStStrCopy
  loc_B8D8D3: FFreeStr var_98 = "": var_9C = ""
  loc_B8D8DC: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8D8E7: FFree1Var var_CC = ""
  loc_B8D8EA: FLdRfVar var_98
  loc_B8D8ED: FLdPr Me
  loc_B8D8F0: MemLdRfVar from_stack_1.global_92
  loc_B8D8F3: NewIfNullPr tblunidadgasto
  loc_B8D8F6: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8D8FB: ILdRf var_98
  loc_B8D8FE: FLdPr Me
  loc_B8D901: VCallAd Control_ID_CodiUngaTxt
  loc_B8D904: FStAdFunc var_88
  loc_B8D907: FLdPr var_88
  loc_B8D90A: Me.Text = from_stack_1
  loc_B8D90F: FFree1Str var_98
  loc_B8D912: FFree1Ad var_88
  loc_B8D915: FLdRfVar var_98
  loc_B8D918: FLdPr Me
  loc_B8D91B: MemLdRfVar from_stack_1.global_92
  loc_B8D91E: NewIfNullPr tblunidadgasto
  loc_B8D921: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8D926: ILdRf var_98
  loc_B8D929: FLdPr Me
  loc_B8D92C: VCallAd Control_ID_DetaUngaLbl
  loc_B8D92F: FStAdFunc var_88
  loc_B8D932: FLdPr var_88
  loc_B8D935: Me.Caption = from_stack_1
  loc_B8D93A: FFree1Str var_98
  loc_B8D93D: FFree1Ad var_88
  loc_B8D940: FLdPr Me
  loc_B8D943: VCallAd Control_ID_CodiUngaTxt
  loc_B8D946: FStAdFunc var_BC
  loc_B8D949: FLdPr Me
  loc_B8D94C: VCallAd Control_ID_DetaUngaLbl
  loc_B8D94F: FStAdFunc var_A8
  loc_B8D952: FLdRfVar var_A8
  loc_B8D955: FLdZeroAd var_BC
  loc_B8D958: FStAdFuncNoPop
  loc_B8D95B: CastAd
  loc_B8D95E: FStAdFunc var_90
  loc_B8D961: FLdRfVar var_90
  loc_B8D964: FLdPr Me
  loc_B8D967: MemLdRfVar from_stack_1.global_68
  loc_B8D96A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8D96F: IStI2 Cancel
  loc_B8D972: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8D97D: ILdI2 Cancel
  loc_B8D980: NotI4
  loc_B8D981: BranchF loc_B8DB0A
  loc_B8D984: FLdPr Me
  loc_B8D987: VCallAd Control_ID_CodiOrgaMsk
  loc_B8D98A: FStAdFunc var_88
  loc_B8D98D: FLdPr var_88
  loc_B8D990: LateIdLdVar var_CC DispID_22 0
  loc_B8D997: CStrVarTmp
  loc_B8D998: FStStrNoPop var_98
  loc_B8D99B: LitStr vbNullString
  loc_B8D99E: EqStr
  loc_B8D9A0: FFree1Str var_98
  loc_B8D9A3: FFree1Ad var_88
  loc_B8D9A6: FFree1Var var_CC = ""
  loc_B8D9A9: BranchF loc_B8DA06
  loc_B8D9AC: FLdRfVar var_98
  loc_B8D9AF: FLdPr Me
  loc_B8D9B2: MemLdRfVar from_stack_1.global_92
  loc_B8D9B5: NewIfNullPr tblunidadgasto
  loc_B8D9B8: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8D9BD: FLdZeroAd var_98
  loc_B8D9C0: CVarStr var_CC
  loc_B8D9C3: PopAdLdVar
  loc_B8D9C4: FLdPr Me
  loc_B8D9C7: VCallAd Control_ID_CodiOrgaMsk
  loc_B8D9CA: FStAdFunc var_88
  loc_B8D9CD: FLdPr var_88
  loc_B8D9D0: LateIdSt
  loc_B8D9D5: FFree1Ad var_88
  loc_B8D9D8: FFree1Var var_CC = ""
  loc_B8D9DB: FLdRfVar var_98
  loc_B8D9DE: FLdPr Me
  loc_B8D9E1: MemLdRfVar from_stack_1.global_92
  loc_B8D9E4: NewIfNullPr tblunidadgasto
  loc_B8D9E7: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8D9EC: ILdRf var_98
  loc_B8D9EF: FLdPr Me
  loc_B8D9F2: VCallAd Control_ID_DetaOrgaLbl
  loc_B8D9F5: FStAdFunc var_88
  loc_B8D9F8: FLdPr var_88
  loc_B8D9FB: Me.Caption = from_stack_1
  loc_B8DA00: FFree1Str var_98
  loc_B8DA03: FFree1Ad var_88
  loc_B8DA06: FLdPr Me
  loc_B8DA09: VCallAd Control_ID_CodiPartMsk
  loc_B8DA0C: FStAdFunc var_88
  loc_B8DA0F: FLdPr var_88
  loc_B8DA12: LateIdLdVar var_CC DispID_22 0
  loc_B8DA19: CStrVarTmp
  loc_B8DA1A: FStStrNoPop var_98
  loc_B8DA1D: LitStr vbNullString
  loc_B8DA20: EqStr
  loc_B8DA22: FFree1Str var_98
  loc_B8DA25: FFree1Ad var_88
  loc_B8DA28: FFree1Var var_CC = ""
  loc_B8DA2B: BranchF loc_B8DA88
  loc_B8DA2E: FLdRfVar var_98
  loc_B8DA31: FLdPr Me
  loc_B8DA34: MemLdRfVar from_stack_1.global_92
  loc_B8DA37: NewIfNullPr tblunidadgasto
  loc_B8DA3A: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8DA3F: FLdZeroAd var_98
  loc_B8DA42: CVarStr var_CC
  loc_B8DA45: PopAdLdVar
  loc_B8DA46: FLdPr Me
  loc_B8DA49: VCallAd Control_ID_CodiPartMsk
  loc_B8DA4C: FStAdFunc var_88
  loc_B8DA4F: FLdPr var_88
  loc_B8DA52: LateIdSt
  loc_B8DA57: FFree1Ad var_88
  loc_B8DA5A: FFree1Var var_CC = ""
  loc_B8DA5D: FLdRfVar var_98
  loc_B8DA60: FLdPr Me
  loc_B8DA63: MemLdRfVar from_stack_1.global_92
  loc_B8DA66: NewIfNullPr tblunidadgasto
  loc_B8DA69: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8DA6E: ILdRf var_98
  loc_B8DA71: FLdPr Me
  loc_B8DA74: VCallAd Control_ID_DetaPartLbl
  loc_B8DA77: FStAdFunc var_88
  loc_B8DA7A: FLdPr var_88
  loc_B8DA7D: Me.Caption = from_stack_1
  loc_B8DA82: FFree1Str var_98
  loc_B8DA85: FFree1Ad var_88
  loc_B8DA88: FLdPr Me
  loc_B8DA8B: VCallAd Control_ID_CodiFifuMsk
  loc_B8DA8E: FStAdFunc var_88
  loc_B8DA91: FLdPr var_88
  loc_B8DA94: LateIdLdVar var_CC DispID_22 0
  loc_B8DA9B: CStrVarTmp
  loc_B8DA9C: FStStrNoPop var_98
  loc_B8DA9F: LitStr vbNullString
  loc_B8DAA2: EqStr
  loc_B8DAA4: FFree1Str var_98
  loc_B8DAA7: FFree1Ad var_88
  loc_B8DAAA: FFree1Var var_CC = ""
  loc_B8DAAD: BranchF loc_B8DB0A
  loc_B8DAB0: FLdRfVar var_98
  loc_B8DAB3: FLdPr Me
  loc_B8DAB6: MemLdRfVar from_stack_1.global_92
  loc_B8DAB9: NewIfNullPr tblunidadgasto
  loc_B8DABC: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8DAC1: FLdZeroAd var_98
  loc_B8DAC4: CVarStr var_CC
  loc_B8DAC7: PopAdLdVar
  loc_B8DAC8: FLdPr Me
  loc_B8DACB: VCallAd Control_ID_CodiFifuMsk
  loc_B8DACE: FStAdFunc var_88
  loc_B8DAD1: FLdPr var_88
  loc_B8DAD4: LateIdSt
  loc_B8DAD9: FFree1Ad var_88
  loc_B8DADC: FFree1Var var_CC = ""
  loc_B8DADF: FLdRfVar var_98
  loc_B8DAE2: FLdPr Me
  loc_B8DAE5: MemLdRfVar from_stack_1.global_92
  loc_B8DAE8: NewIfNullPr tblunidadgasto
  loc_B8DAEB: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8DAF0: ILdRf var_98
  loc_B8DAF3: FLdPr Me
  loc_B8DAF6: VCallAd Control_ID_DetaFifuLbl
  loc_B8DAF9: FStAdFunc var_88
  loc_B8DAFC: FLdPr var_88
  loc_B8DAFF: Me.Caption = from_stack_1
  loc_B8DB04: FFree1Str var_98
  loc_B8DB07: FFree1Ad var_88
  loc_B8DB0A: Branch loc_B8DB54
  loc_B8DB0D: LitStr "La Unidad de Gasto NO EXISTE. Verifique..."
  loc_B8DB10: FLdPr Me
  loc_B8DB13: MemStStrCopy
  loc_B8DB17: FLdPr Me
  loc_B8DB1A: VCallAd Control_ID_CodiUngaTxt
  loc_B8DB1D: FStAdFunc var_BC
  loc_B8DB20: FLdPr Me
  loc_B8DB23: VCallAd Control_ID_DetaUngaLbl
  loc_B8DB26: FStAdFunc var_A8
  loc_B8DB29: FLdRfVar var_A8
  loc_B8DB2C: FLdZeroAd var_BC
  loc_B8DB2F: FStAdFuncNoPop
  loc_B8DB32: CastAd
  loc_B8DB35: FStAdFunc var_90
  loc_B8DB38: FLdRfVar var_90
  loc_B8DB3B: FLdPr Me
  loc_B8DB3E: MemLdRfVar from_stack_1.global_68
  loc_B8DB41: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8DB46: IStI2 Cancel
  loc_B8DB49: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8DB54: ExitProcHresult
End Sub

Private Sub Form_Load() 'A405C8
  'Data Table: 4ECA40
  loc_A403C0: LitVarStr var_94, "######"
  loc_A403C5: PopAdLdVar
  loc_A403C6: FLdPr Me
  loc_A403C9: VCallAd Control_ID_CodiOrgaMsk
  loc_A403CC: FStAdFunc var_A8
  loc_A403CF: FLdPr var_A8
  loc_A403D2: LateIdSt
  loc_A403D7: FFree1Ad var_A8
  loc_A403DA: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A403DF: PopAdLdVar
  loc_A403E0: FLdPr Me
  loc_A403E3: VCallAd Control_ID_CodiPartMsk
  loc_A403E6: FStAdFunc var_A8
  loc_A403E9: FLdPr var_A8
  loc_A403EC: LateIdSt
  loc_A403F1: FFree1Ad var_A8
  loc_A403F4: LitVarStr var_94, "##.##.##"
  loc_A403F9: PopAdLdVar
  loc_A403FA: FLdPr Me
  loc_A403FD: VCallAd Control_ID_CodiFifuMsk
  loc_A40400: FStAdFunc var_A8
  loc_A40403: FLdPr var_A8
  loc_A40406: LateIdSt
  loc_A4040B: FFree1Ad var_A8
  loc_A4040E: LitVarStr var_94, vbNullString
  loc_A40413: PopAdLdVar
  loc_A40414: FLdPr Me
  loc_A40417: VCallAd Control_ID_ExorImpuMsk
  loc_A4041A: FStAdFunc var_A8
  loc_A4041D: FLdPr var_A8
  loc_A40420: LateIdSt
  loc_A40425: FFree1Ad var_A8
  loc_A40428: ILdRf Me
  loc_A4042B: CastAd
  loc_A4042E: FStAdFunc var_A8
  loc_A40431: FLdRfVar var_A8
  loc_A40434: ImpAdCallFPR4 Proc_261_41_999BCC()
  loc_A40439: FFree1Ad var_A8
  loc_A4043C: ILdRf Me
  loc_A4043F: CastAd
  loc_A40442: FStAdFunc var_A8
  loc_A40445: FLdRfVar var_A8
  loc_A40448: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A4044D: FFree1Ad var_A8
  loc_A40450: LitI2_Byte 0
  loc_A40452: CR8I2
  loc_A40453: PopFPR4
  loc_A40454: FLdPr Me
  loc_A40457: Me.Left = from_stack_1s
  loc_A4045C: LitI2_Byte 0
  loc_A4045E: CR8I2
  loc_A4045F: PopFPR4
  loc_A40460: FLdPr Me
  loc_A40463: Me.Top = from_stack_1s
  loc_A40468: LitStr vbNullString
  loc_A4046B: FLdPr Me
  loc_A4046E: MemStStrCopy
  loc_A40472: LitStr "SELECT tbl.*, DetaInsu, DetaProv, DetaPart, DetaOrga, DetaUnga, DetaFifu"
  loc_A40475: LitStr " FROM ("
  loc_A40478: ConcatStr
  loc_A40479: FStStrNoPop var_AC
  loc_A4047C: LitStr " SELECT i.*"
  loc_A4047F: ConcatStr
  loc_A40480: FStStrNoPop var_B0
  loc_A40483: LitStr " , Sum(DefiImpu-DeveImpu) SaldImpu, Sum(DefiImpu) SumDefiImpu, Count(0) cuenta"
  loc_A40486: ConcatStr
  loc_A40487: FStStrNoPop var_B4
  loc_A4048A: LitStr " FROM imputacion i"
  loc_A4048D: ConcatStr
  loc_A4048E: FStStrNoPop var_B8
  loc_A40491: LitStr " WHERE i.PeriInfo = "
  loc_A40494: ConcatStr
  loc_A40495: FStStrNoPop var_BC
  loc_A40498: ImpAdLdI2 MemVar_C3D064
  loc_A4049B: CStrUI1
  loc_A4049D: FStStrNoPop var_C0
  loc_A404A0: ConcatStr
  loc_A404A1: FStStrNoPop var_C4
  loc_A404A4: LitStr " AND (DefiImpu != 0 OR DeveImpu != 0)"
  loc_A404A7: ConcatStr
  loc_A404A8: FStStrNoPop var_C8
  loc_A404AB: LitStr " AND CodiOrco > 0"
  loc_A404AE: ConcatStr
  loc_A404AF: FStStrNoPop var_CC
  loc_A404B2: LitStr " GROUP BY i.PeriInfo, i.CodiOrco, i.Item, i.Altern, i.CodiPart, i.CodiOrga, i.CodiFifu, i.CodiInsu, i.CodiUnga"
  loc_A404B5: ConcatStr
  loc_A404B6: FStStrNoPop var_D0
  loc_A404B9: LitStr " HAVING SaldImpu > 0 AND SaldImpu = SumDefiImpu /*AND cuenta = 1*/"
  loc_A404BC: ConcatStr
  loc_A404BD: FStStrNoPop var_D4
  loc_A404C0: LitStr " ) AS tbl"
  loc_A404C3: ConcatStr
  loc_A404C4: FStStrNoPop var_D8
  loc_A404C7: LitStr " INNER JOIN partida p ON p.PeriInfo = tbl.PeriInfo AND p.CodiPart = tbl.CodiPart"
  loc_A404CA: ConcatStr
  loc_A404CB: FStStrNoPop var_DC
  loc_A404CE: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = tbl.PeriInfo AND o.CodiOrga = tbl.CodiOrga"
  loc_A404D1: ConcatStr
  loc_A404D2: FStStrNoPop var_E0
  loc_A404D5: LitStr " INNER JOIN unidadgasto ug ON ug.CodiUnga = tbl.CodiUnga"
  loc_A404D8: ConcatStr
  loc_A404D9: FStStrNoPop var_E4
  loc_A404DC: LitStr " INNER JOIN finalidad f ON f.PeriInfo = tbl.PeriInfo AND f.CodiFifu = tbl.CodiFifu"
  loc_A404DF: ConcatStr
  loc_A404E0: FStStrNoPop var_E8
  loc_A404E3: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = tbl.CucuPers"
  loc_A404E6: ConcatStr
  loc_A404E7: FStStrNoPop var_EC
  loc_A404EA: LitStr " INNER JOIN infogov.insumo ii ON ii.CodiInsu = tbl.CodiInsu"
  loc_A404ED: ConcatStr
  loc_A404EE: FStStrNoPop var_F0
  loc_A404F1: LitStr " ORDER BY PeriInfo, CodiOrco, Item, Altern;"
  loc_A404F4: ConcatStr
  loc_A404F5: FStStrNoPop var_F4
  loc_A404F8: FLdPr Me
  loc_A404FB: MemLdRfVar from_stack_1.global_52
  loc_A404FE: NewIfNullPr clsimputacion
  loc_A40501: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A40506: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_A4052F: LitVarI2 var_94, 0
  loc_A40534: PopAdLdVar
  loc_A40535: LitStr "Orden de Compra"
  loc_A40538: FLdPr Me
  loc_A4053B: VCallAd Control_ID_FiltroCbo
  loc_A4053E: FStAdFunc var_A8
  loc_A40541: FLdPr var_A8
  loc_A40544: Me.AddItem from_stack_1, from_stack_2
  loc_A40549: FFree1Ad var_A8
  loc_A4054C: LitI2_Byte 0
  loc_A4054E: FLdPr Me
  loc_A40551: VCallAd Control_ID_FiltroCbo
  loc_A40554: FStAdFunc var_A8
  loc_A40557: FLdPr var_A8
  loc_A4055A: Me.ListIndex = from_stack_1
  loc_A4055F: FFree1Ad var_A8
  loc_A40562: Call cmdCancelar_Click()
  loc_A40567: LitI4 0
  loc_A4056C: LitI4 1
  loc_A40571: FLdRfVar var_F8
  loc_A40574: Redim
  loc_A4057E: FLdPr Me
  loc_A40581: MemLdRfVar from_stack_1.global_52
  loc_A40584: NewIfNullAd
  loc_A40587: FStAd var_A8 
  loc_A4058B: FLdRfVar var_A8
  loc_A4058E: CVarRef
  loc_A40593: ParmAry1St
  loc_A40599: FLdPr Me
  loc_A4059C: VCallAd Control_ID_dgdABMS
  loc_A4059F: CVarAd
  loc_A405A3: ParmAry1St
  loc_A405A9: FLdRfVar var_F8
  loc_A405AC: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A405B1: ILdRf var_A8
  loc_A405B4: CastAd
  loc_A405B7: FLdPr Me
  loc_A405BA: MemStAdFunc
  loc_A405BE: FLdRfVar var_F8
  loc_A405C1: Erase
  loc_A405C2: FFree1Ad var_A8
  loc_A405C5: ExitProcHresult
  loc_A405C6: Ary1LdCy
End Sub

Private Sub Form_Activate() '99757C
  'Data Table: 4ECA40
  loc_997520: FLdRfVar var_C2
  loc_997523: FLdRfVar var_C0
  loc_997526: LitVarI2 var_B8, 1
  loc_99752B: FLdPr Me
  loc_99752E: VCallAd Control_ID_tlbABMS
  loc_997531: FStAdFunc var_88
  loc_997534: FLdPr var_88
  loc_997537: LateIdLdVar var_98 DispID_3 0
  loc_99753E: CastAdVar Me
  loc_997542: FStAdFunc var_BC
  loc_997545: FLdPr var_BC
  loc_997548:  = Me.Buttons.ControlDefault
  loc_99754D: FLdPr var_C0
  loc_997550:  = Me.Enabled
  loc_997555: FLdI2 var_C2
  loc_997558: FFreeAd var_88 = "": var_BC = ""
  loc_997561: FFreeVar var_98 = ""
  loc_997568: BranchF loc_997579
  loc_99756B: FLdPr Me
  loc_99756E: MemLdRfVar from_stack_1.global_52
  loc_997571: NewIfNullPr clsimputacion
  loc_997574: Call clsimputacion.Requery()
  loc_997579: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9488E0
  'Data Table: 4ECA40
  loc_9488CC: ILdI2 KeyAscii
  loc_9488CF: CI4UI1
  loc_9488D0: LitI4 &HD
  loc_9488D5: EqI4
  loc_9488D6: BranchF loc_9488DE
  loc_9488D9: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9488DE: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '964688
  'Data Table: 4ECA40
  loc_964670: ILdI2 KeyCode
  loc_964673: ILdRf Me
  loc_964676: CastAd
  loc_964679: FStAdFunc var_88
  loc_96467C: FLdRfVar var_88
  loc_96467F: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_964684: FFree1Ad var_88
  loc_964687: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '94CE18
  'Data Table: 4ECA40
  loc_94CE04: FLdPr Me
  loc_94CE07: VCallAd Control_ID_CucuPersTxt
  loc_94CE0A: CVarAd
  loc_94CE0E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CE13: FFree1Var var_94 = ""
  loc_94CE16: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0C2F0
  'Data Table: 4ECA40
  loc_A0C18C: ILdI2 Shift
  loc_A0C18F: CI4UI1
  loc_A0C190: LitI4 2
  loc_A0C195: EqI4
  loc_A0C196: ILdI2 KeyCode
  loc_A0C199: CI4UI1
  loc_A0C19A: LitI4 &H42
  loc_A0C19F: EqI4
  loc_A0C1A0: AndI4
  loc_A0C1A1: BranchF loc_A0C2EC
  loc_A0C1A4: LitI2_Byte 0
  loc_A0C1A6: ImpAdLdRf MemVar_C3D74C
  loc_A0C1A9: NewIfNullPr bscProveedor
  loc_A0C1AC: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0C1B1: LitNothing
  loc_A0C1B3: CastAd
  loc_A0C1B6: FStAdFuncNoPop
  loc_A0C1B9: FLdRfVar var_88
  loc_A0C1BC: ImpAdLdRf MemVar_C3D74C
  loc_A0C1BF: NewIfNullPr bscProveedor
  loc_A0C1C2: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C1C7: FLdPr var_88
  loc_A0C1CA: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0C1CF: FFreeAd var_8C = ""
  loc_A0C1D6: LitVar_Missing var_AC
  loc_A0C1D9: PopAdLdVar
  loc_A0C1DA: LitVarI4
  loc_A0C1E2: PopAdLdVar
  loc_A0C1E3: ImpAdLdRf MemVar_C3D74C
  loc_A0C1E6: NewIfNullPr bscProveedor
  loc_A0C1E9: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0C1EE: FLdRfVar var_B0
  loc_A0C1F1: FLdRfVar var_88
  loc_A0C1F4: ImpAdLdRf MemVar_C3D74C
  loc_A0C1F7: NewIfNullPr bscProveedor
  loc_A0C1FA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C1FF: FLdPr var_88
  loc_A0C202: from_stack_1 = clsbase.RecordCount
  loc_A0C207: ILdRf var_B0
  loc_A0C20A: LitI4 0
  loc_A0C20F: GtI4
  loc_A0C210: FFree1Ad var_88
  loc_A0C213: BranchF loc_A0C2EC
  loc_A0C216: FLdRfVar var_C8
  loc_A0C219: FLdRfVar var_B8
  loc_A0C21C: LitVarStr var_9C, "CucuPers"
  loc_A0C221: PopAdLdVar
  loc_A0C222: FLdRfVar var_B4
  loc_A0C225: FLdRfVar var_8C
  loc_A0C228: FLdRfVar var_88
  loc_A0C22B: ImpAdLdRf MemVar_C3D74C
  loc_A0C22E: NewIfNullPr bscProveedor
  loc_A0C231: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C236: FLdPr var_88
  loc_A0C239: from_stack_1v = clsbase.RsFrmGet()
  loc_A0C23E: FLdPr var_8C
  loc_A0C241:  = Me.Fields
  loc_A0C246: FLdPr var_B4
  loc_A0C249: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C24E: FLdPr var_B8
  loc_A0C251:  = Me.Value
  loc_A0C256: FLdRfVar var_C8
  loc_A0C259: CStrVarTmp
  loc_A0C25A: FStStrNoPop var_CC
  loc_A0C25D: FLdPr Me
  loc_A0C260: VCallAd Control_ID_CucuPersTxt
  loc_A0C263: FStAdFunc var_D0
  loc_A0C266: FLdPr var_D0
  loc_A0C269: Me.Text = from_stack_1
  loc_A0C26E: FFree1Str var_CC
  loc_A0C271: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0C27E: FFree1Var var_C8 = ""
  loc_A0C281: FLdRfVar var_C8
  loc_A0C284: FLdRfVar var_B8
  loc_A0C287: LitVarStr var_9C, "DetaProv"
  loc_A0C28C: PopAdLdVar
  loc_A0C28D: FLdRfVar var_B4
  loc_A0C290: FLdRfVar var_8C
  loc_A0C293: FLdRfVar var_88
  loc_A0C296: ImpAdLdRf MemVar_C3D74C
  loc_A0C299: NewIfNullPr bscProveedor
  loc_A0C29C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C2A1: FLdPr var_88
  loc_A0C2A4: from_stack_1v = clsbase.RsFrmGet()
  loc_A0C2A9: FLdPr var_8C
  loc_A0C2AC:  = Me.Fields
  loc_A0C2B1: FLdPr var_B4
  loc_A0C2B4: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C2B9: FLdPr var_B8
  loc_A0C2BC:  = Me.Value
  loc_A0C2C1: FLdRfVar var_C8
  loc_A0C2C4: CStrVarTmp
  loc_A0C2C5: FStStrNoPop var_CC
  loc_A0C2C8: FLdPr Me
  loc_A0C2CB: VCallAd Control_ID_DetaProvLbl
  loc_A0C2CE: FStAdFunc var_D0
  loc_A0C2D1: FLdPr var_D0
  loc_A0C2D4: Me.Caption = from_stack_1
  loc_A0C2D9: FFree1Str var_CC
  loc_A0C2DC: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0C2E9: FFree1Var var_C8 = ""
  loc_A0C2EC: ExitProcHresult
  loc_A0C2ED: FStAdFunc var_88
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B491C4
  'Data Table: 4ECA40
  loc_B4871C: FLdRfVar var_8A
  loc_B4871F: FLdPr Me
  loc_B48722: VCallAd Control_ID_cmdCancelar
  loc_B48725: FStAdFunc var_88
  loc_B48728: FLdPr var_88
  loc_B4872B:  = Me.Value
  loc_B48730: FLdI2 var_8A
  loc_B48733: NotI4
  loc_B48734: FLdRfVar var_92
  loc_B48737: FLdPr Me
  loc_B4873A: VCallAd Control_ID_CucuPersTxt
  loc_B4873D: FStAdFunc var_90
  loc_B48740: FLdPr var_90
  loc_B48743:  = Me.Enabled
  loc_B48748: FLdI2 var_92
  loc_B4874B: AndI4
  loc_B4874C: FFreeAd var_88 = ""
  loc_B48753: BranchF loc_B491C3
  loc_B48756: FLdRfVar var_98
  loc_B48759: FLdPr Me
  loc_B4875C: VCallAd Control_ID_CucuPersTxt
  loc_B4875F: FStAdFunc var_88
  loc_B48762: FLdPr var_88
  loc_B48765:  = Me.Text
  loc_B4876A: ILdRf var_98
  loc_B4876D: ImpAdCallI2 Trim$()
  loc_B48772: FStStrNoPop var_9C
  loc_B48775: LitStr vbNullString
  loc_B48778: NeStr
  loc_B4877A: FFreeStr var_98 = ""
  loc_B48781: FFree1Ad var_88
  loc_B48784: BranchF loc_B49012
  loc_B48787: FLdPr Me
  loc_B4878A: VCallAd Control_ID_CucuPersTxt
  loc_B4878D: FStAdFunc var_88
  loc_B48790: FLdRfVar var_88
  loc_B48793: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B48798: FFree1Ad var_88
  loc_B4879B: BranchF loc_B48BD8
  loc_B4879E: LitStr "SELECT * FROM proveedor WHERE CucuPers LIKE '" & Chr(37)
  loc_B487A1: FLdRfVar var_98
  loc_B487A4: FLdPr Me
  loc_B487A7: VCallAd Control_ID_CucuPersTxt
  loc_B487AA: FStAdFunc var_88
  loc_B487AD: FLdPr var_88
  loc_B487B0:  = Me.Text
  loc_B487B5: ILdRf var_98
  loc_B487B8: ConcatStr
  loc_B487B9: FStStrNoPop var_9C
  loc_B487BC: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B487BF: ConcatStr
  loc_B487C0: FStStrNoPop var_A0
  loc_B487C3: ImpAdLdRf MemVar_C3D74C
  loc_B487C6: NewIfNullPr bscProveedor
  loc_B487C9: Call bscProveedor.Constructor(from_stack_1v)
  loc_B487CE: FFreeStr var_98 = "": var_9C = ""
  loc_B487D7: FFree1Ad var_88
  loc_B487DA: FLdRfVar var_A4
  loc_B487DD: FLdRfVar var_90
  loc_B487E0: FLdRfVar var_88
  loc_B487E3: ImpAdLdRf MemVar_C3D74C
  loc_B487E6: NewIfNullPr bscProveedor
  loc_B487E9: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B487EE: FLdPr var_88
  loc_B487F1: from_stack_1v = clsbase.RsFrmGet()
  loc_B487F6: FLdPr var_90
  loc_B487F9:  = Me.RecordCount
  loc_B487FE: ILdRf var_A4
  loc_B48801: LitI4 1
  loc_B48806: EqI4
  loc_B48807: FFreeAd var_88 = ""
  loc_B4880E: BranchF loc_B48931
  loc_B48811: FLdRfVar var_CC
  loc_B48814: FLdRfVar var_BC
  loc_B48817: LitVarStr var_B8, "CucuPers"
  loc_B4881C: PopAdLdVar
  loc_B4881D: FLdRfVar var_A8
  loc_B48820: FLdRfVar var_90
  loc_B48823: FLdRfVar var_88
  loc_B48826: ImpAdLdRf MemVar_C3D74C
  loc_B48829: NewIfNullPr bscProveedor
  loc_B4882C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48831: FLdPr var_88
  loc_B48834: from_stack_1v = clsbase.RsFrmGet()
  loc_B48839: FLdPr var_90
  loc_B4883C:  = Me.Fields
  loc_B48841: FLdPr var_A8
  loc_B48844: from_stack_2 = Me.Item(from_stack_1)
  loc_B48849: FLdPr var_BC
  loc_B4884C:  = Me.Value
  loc_B48851: FLdRfVar var_CC
  loc_B48854: CStrVarTmp
  loc_B48855: FStStrNoPop var_98
  loc_B48858: FLdPr Me
  loc_B4885B: VCallAd Control_ID_CucuPersTxt
  loc_B4885E: FStAdFunc var_D0
  loc_B48861: FLdPr var_D0
  loc_B48864: Me.Text = from_stack_1
  loc_B48869: FFree1Str var_98
  loc_B4886C: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B48879: FFree1Var var_CC = ""
  loc_B4887C: FLdRfVar var_CC
  loc_B4887F: FLdRfVar var_BC
  loc_B48882: LitVarStr var_B8, "DetaProv"
  loc_B48887: PopAdLdVar
  loc_B48888: FLdRfVar var_A8
  loc_B4888B: FLdRfVar var_90
  loc_B4888E: FLdRfVar var_88
  loc_B48891: ImpAdLdRf MemVar_C3D74C
  loc_B48894: NewIfNullPr bscProveedor
  loc_B48897: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4889C: FLdPr var_88
  loc_B4889F: from_stack_1v = clsbase.RsFrmGet()
  loc_B488A4: FLdPr var_90
  loc_B488A7:  = Me.Fields
  loc_B488AC: FLdPr var_A8
  loc_B488AF: from_stack_2 = Me.Item(from_stack_1)
  loc_B488B4: FLdPr var_BC
  loc_B488B7:  = Me.Value
  loc_B488BC: FLdRfVar var_CC
  loc_B488BF: CStrVarTmp
  loc_B488C0: FStStrNoPop var_98
  loc_B488C3: FLdPr Me
  loc_B488C6: VCallAd Control_ID_DetaProvLbl
  loc_B488C9: FStAdFunc var_D0
  loc_B488CC: FLdPr var_D0
  loc_B488CF: Me.Caption = from_stack_1
  loc_B488D4: FFree1Str var_98
  loc_B488D7: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B488E4: FFree1Var var_CC = ""
  loc_B488E7: LitStr vbNullString
  loc_B488EA: FLdPr Me
  loc_B488ED: MemStStrCopy
  loc_B488F1: FLdPr Me
  loc_B488F4: VCallAd Control_ID_CucuPersTxt
  loc_B488F7: FStAdFunc var_BC
  loc_B488FA: FLdPr Me
  loc_B488FD: VCallAd Control_ID_DetaProvLbl
  loc_B48900: FStAdFunc var_A8
  loc_B48903: FLdRfVar var_A8
  loc_B48906: FLdZeroAd var_BC
  loc_B48909: FStAdFuncNoPop
  loc_B4890C: CastAd
  loc_B4890F: FStAdFunc var_90
  loc_B48912: FLdRfVar var_90
  loc_B48915: FLdPr Me
  loc_B48918: MemLdRfVar from_stack_1.global_68
  loc_B4891B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B48920: IStI2 Cancel
  loc_B48923: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B4892E: Branch loc_B48BD5
  loc_B48931: FLdRfVar var_A4
  loc_B48934: FLdRfVar var_90
  loc_B48937: FLdRfVar var_88
  loc_B4893A: ImpAdLdRf MemVar_C3D74C
  loc_B4893D: NewIfNullPr bscProveedor
  loc_B48940: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48945: FLdPr var_88
  loc_B48948: from_stack_1v = clsbase.RsFrmGet()
  loc_B4894D: FLdPr var_90
  loc_B48950:  = Me.RecordCount
  loc_B48955: ILdRf var_A4
  loc_B48958: LitI4 1
  loc_B4895D: GtI4
  loc_B4895E: FFreeAd var_88 = ""
  loc_B48965: BranchF loc_B48B40
  loc_B48968: LitVar_Missing var_E0
  loc_B4896B: PopAdLdVar
  loc_B4896C: LitVarI4
  loc_B48974: PopAdLdVar
  loc_B48975: ImpAdLdRf MemVar_C3D74C
  loc_B48978: NewIfNullPr bscProveedor
  loc_B4897B: bscProveedor.Show from_stack_1, from_stack_2
  loc_B48980: FLdRfVar var_A4
  loc_B48983: FLdRfVar var_88
  loc_B48986: ImpAdLdRf MemVar_C3D74C
  loc_B48989: NewIfNullPr bscProveedor
  loc_B4898C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48991: FLdPr var_88
  loc_B48994: from_stack_1 = clsbase.RecordCount
  loc_B48999: ILdRf var_A4
  loc_B4899C: LitI4 0
  loc_B489A1: GtI4
  loc_B489A2: FFree1Ad var_88
  loc_B489A5: BranchF loc_B48AC8
  loc_B489A8: FLdRfVar var_CC
  loc_B489AB: FLdRfVar var_BC
  loc_B489AE: LitVarStr var_B8, "CucuPers"
  loc_B489B3: PopAdLdVar
  loc_B489B4: FLdRfVar var_A8
  loc_B489B7: FLdRfVar var_90
  loc_B489BA: FLdRfVar var_88
  loc_B489BD: ImpAdLdRf MemVar_C3D74C
  loc_B489C0: NewIfNullPr bscProveedor
  loc_B489C3: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B489C8: FLdPr var_88
  loc_B489CB: from_stack_1v = clsbase.RsFrmGet()
  loc_B489D0: FLdPr var_90
  loc_B489D3:  = Me.Fields
  loc_B489D8: FLdPr var_A8
  loc_B489DB: from_stack_2 = Me.Item(from_stack_1)
  loc_B489E0: FLdPr var_BC
  loc_B489E3:  = Me.Value
  loc_B489E8: FLdRfVar var_CC
  loc_B489EB: CStrVarTmp
  loc_B489EC: FStStrNoPop var_98
  loc_B489EF: FLdPr Me
  loc_B489F2: VCallAd Control_ID_CucuPersTxt
  loc_B489F5: FStAdFunc var_D0
  loc_B489F8: FLdPr var_D0
  loc_B489FB: Me.Text = from_stack_1
  loc_B48A00: FFree1Str var_98
  loc_B48A03: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B48A10: FFree1Var var_CC = ""
  loc_B48A13: FLdRfVar var_CC
  loc_B48A16: FLdRfVar var_BC
  loc_B48A19: LitVarStr var_B8, "DetaProv"
  loc_B48A1E: PopAdLdVar
  loc_B48A1F: FLdRfVar var_A8
  loc_B48A22: FLdRfVar var_90
  loc_B48A25: FLdRfVar var_88
  loc_B48A28: ImpAdLdRf MemVar_C3D74C
  loc_B48A2B: NewIfNullPr bscProveedor
  loc_B48A2E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48A33: FLdPr var_88
  loc_B48A36: from_stack_1v = clsbase.RsFrmGet()
  loc_B48A3B: FLdPr var_90
  loc_B48A3E:  = Me.Fields
  loc_B48A43: FLdPr var_A8
  loc_B48A46: from_stack_2 = Me.Item(from_stack_1)
  loc_B48A4B: FLdPr var_BC
  loc_B48A4E:  = Me.Value
  loc_B48A53: FLdRfVar var_CC
  loc_B48A56: CStrVarTmp
  loc_B48A57: FStStrNoPop var_98
  loc_B48A5A: FLdPr Me
  loc_B48A5D: VCallAd Control_ID_DetaProvLbl
  loc_B48A60: FStAdFunc var_D0
  loc_B48A63: FLdPr var_D0
  loc_B48A66: Me.Caption = from_stack_1
  loc_B48A6B: FFree1Str var_98
  loc_B48A6E: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B48A7B: FFree1Var var_CC = ""
  loc_B48A7E: LitStr vbNullString
  loc_B48A81: FLdPr Me
  loc_B48A84: MemStStrCopy
  loc_B48A88: FLdPr Me
  loc_B48A8B: VCallAd Control_ID_CucuPersTxt
  loc_B48A8E: FStAdFunc var_BC
  loc_B48A91: FLdPr Me
  loc_B48A94: VCallAd Control_ID_DetaProvLbl
  loc_B48A97: FStAdFunc var_A8
  loc_B48A9A: FLdRfVar var_A8
  loc_B48A9D: FLdZeroAd var_BC
  loc_B48AA0: FStAdFuncNoPop
  loc_B48AA3: CastAd
  loc_B48AA6: FStAdFunc var_90
  loc_B48AA9: FLdRfVar var_90
  loc_B48AAC: FLdPr Me
  loc_B48AAF: MemLdRfVar from_stack_1.global_68
  loc_B48AB2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B48AB7: IStI2 Cancel
  loc_B48ABA: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B48AC5: Branch loc_B48B3D
  loc_B48AC8: LitStr vbNullString
  loc_B48ACB: FLdPr Me
  loc_B48ACE: VCallAd Control_ID_CucuPersTxt
  loc_B48AD1: FStAdFunc var_88
  loc_B48AD4: FLdPr var_88
  loc_B48AD7: Me.Text = from_stack_1
  loc_B48ADC: FFree1Ad var_88
  loc_B48ADF: LitStr vbNullString
  loc_B48AE2: FLdPr Me
  loc_B48AE5: VCallAd Control_ID_DetaProvLbl
  loc_B48AE8: FStAdFunc var_88
  loc_B48AEB: FLdPr var_88
  loc_B48AEE: Me.Caption = from_stack_1
  loc_B48AF3: FFree1Ad var_88
  loc_B48AF6: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B48AF9: FLdPr Me
  loc_B48AFC: MemStStrCopy
  loc_B48B00: FLdPr Me
  loc_B48B03: VCallAd Control_ID_CucuPersTxt
  loc_B48B06: FStAdFunc var_BC
  loc_B48B09: FLdPr Me
  loc_B48B0C: VCallAd Control_ID_DetaProvLbl
  loc_B48B0F: FStAdFunc var_A8
  loc_B48B12: FLdRfVar var_A8
  loc_B48B15: FLdZeroAd var_BC
  loc_B48B18: FStAdFuncNoPop
  loc_B48B1B: CastAd
  loc_B48B1E: FStAdFunc var_90
  loc_B48B21: FLdRfVar var_90
  loc_B48B24: FLdPr Me
  loc_B48B27: MemLdRfVar from_stack_1.global_68
  loc_B48B2A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B48B2F: IStI2 Cancel
  loc_B48B32: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B48B3D: Branch loc_B48BD5
  loc_B48B40: FLdRfVar var_A4
  loc_B48B43: FLdRfVar var_90
  loc_B48B46: FLdRfVar var_88
  loc_B48B49: ImpAdLdRf MemVar_C3D74C
  loc_B48B4C: NewIfNullPr bscProveedor
  loc_B48B4F: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48B54: FLdPr var_88
  loc_B48B57: from_stack_1v = clsbase.RsFrmGet()
  loc_B48B5C: FLdPr var_90
  loc_B48B5F:  = Me.RecordCount
  loc_B48B64: ILdRf var_A4
  loc_B48B67: LitI4 1
  loc_B48B6C: LtI4
  loc_B48B6D: FFreeAd var_88 = ""
  loc_B48B74: BranchF loc_B48BD5
  loc_B48B77: LitStr vbNullString
  loc_B48B7A: FLdPr Me
  loc_B48B7D: VCallAd Control_ID_DetaProvLbl
  loc_B48B80: FStAdFunc var_88
  loc_B48B83: FLdPr var_88
  loc_B48B86: Me.Caption = from_stack_1
  loc_B48B8B: FFree1Ad var_88
  loc_B48B8E: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B48B91: FLdPr Me
  loc_B48B94: MemStStrCopy
  loc_B48B98: FLdPr Me
  loc_B48B9B: VCallAd Control_ID_CucuPersTxt
  loc_B48B9E: FStAdFunc var_BC
  loc_B48BA1: FLdPr Me
  loc_B48BA4: VCallAd Control_ID_DetaProvLbl
  loc_B48BA7: FStAdFunc var_A8
  loc_B48BAA: FLdRfVar var_A8
  loc_B48BAD: FLdZeroAd var_BC
  loc_B48BB0: FStAdFuncNoPop
  loc_B48BB3: CastAd
  loc_B48BB6: FStAdFunc var_90
  loc_B48BB9: FLdRfVar var_90
  loc_B48BBC: FLdPr Me
  loc_B48BBF: MemLdRfVar from_stack_1.global_68
  loc_B48BC2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B48BC7: IStI2 Cancel
  loc_B48BCA: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B48BD5: Branch loc_B4900F
  loc_B48BD8: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B48BDB: FLdRfVar var_98
  loc_B48BDE: FLdPr Me
  loc_B48BE1: VCallAd Control_ID_CucuPersTxt
  loc_B48BE4: FStAdFunc var_88
  loc_B48BE7: FLdPr var_88
  loc_B48BEA:  = Me.Text
  loc_B48BEF: ILdRf var_98
  loc_B48BF2: ConcatStr
  loc_B48BF3: FStStrNoPop var_9C
  loc_B48BF6: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B48BF9: ConcatStr
  loc_B48BFA: FStStrNoPop var_A0
  loc_B48BFD: ImpAdLdRf MemVar_C3D74C
  loc_B48C00: NewIfNullPr bscProveedor
  loc_B48C03: Call bscProveedor.Constructor(from_stack_1v)
  loc_B48C08: FFreeStr var_98 = "": var_9C = ""
  loc_B48C11: FFree1Ad var_88
  loc_B48C14: FLdRfVar var_A4
  loc_B48C17: FLdRfVar var_90
  loc_B48C1A: FLdRfVar var_88
  loc_B48C1D: ImpAdLdRf MemVar_C3D74C
  loc_B48C20: NewIfNullPr bscProveedor
  loc_B48C23: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48C28: FLdPr var_88
  loc_B48C2B: from_stack_1v = clsbase.RsFrmGet()
  loc_B48C30: FLdPr var_90
  loc_B48C33:  = Me.RecordCount
  loc_B48C38: ILdRf var_A4
  loc_B48C3B: LitI4 1
  loc_B48C40: EqI4
  loc_B48C41: FFreeAd var_88 = ""
  loc_B48C48: BranchF loc_B48D6B
  loc_B48C4B: FLdRfVar var_CC
  loc_B48C4E: FLdRfVar var_BC
  loc_B48C51: LitVarStr var_B8, "CucuPers"
  loc_B48C56: PopAdLdVar
  loc_B48C57: FLdRfVar var_A8
  loc_B48C5A: FLdRfVar var_90
  loc_B48C5D: FLdRfVar var_88
  loc_B48C60: ImpAdLdRf MemVar_C3D74C
  loc_B48C63: NewIfNullPr bscProveedor
  loc_B48C66: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48C6B: FLdPr var_88
  loc_B48C6E: from_stack_1v = clsbase.RsFrmGet()
  loc_B48C73: FLdPr var_90
  loc_B48C76:  = Me.Fields
  loc_B48C7B: FLdPr var_A8
  loc_B48C7E: from_stack_2 = Me.Item(from_stack_1)
  loc_B48C83: FLdPr var_BC
  loc_B48C86:  = Me.Value
  loc_B48C8B: FLdRfVar var_CC
  loc_B48C8E: CStrVarTmp
  loc_B48C8F: FStStrNoPop var_98
  loc_B48C92: FLdPr Me
  loc_B48C95: VCallAd Control_ID_CucuPersTxt
  loc_B48C98: FStAdFunc var_D0
  loc_B48C9B: FLdPr var_D0
  loc_B48C9E: Me.Text = from_stack_1
  loc_B48CA3: FFree1Str var_98
  loc_B48CA6: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B48CB3: FFree1Var var_CC = ""
  loc_B48CB6: FLdRfVar var_CC
  loc_B48CB9: FLdRfVar var_BC
  loc_B48CBC: LitVarStr var_B8, "DetaProv"
  loc_B48CC1: PopAdLdVar
  loc_B48CC2: FLdRfVar var_A8
  loc_B48CC5: FLdRfVar var_90
  loc_B48CC8: FLdRfVar var_88
  loc_B48CCB: ImpAdLdRf MemVar_C3D74C
  loc_B48CCE: NewIfNullPr bscProveedor
  loc_B48CD1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48CD6: FLdPr var_88
  loc_B48CD9: from_stack_1v = clsbase.RsFrmGet()
  loc_B48CDE: FLdPr var_90
  loc_B48CE1:  = Me.Fields
  loc_B48CE6: FLdPr var_A8
  loc_B48CE9: from_stack_2 = Me.Item(from_stack_1)
  loc_B48CEE: FLdPr var_BC
  loc_B48CF1:  = Me.Value
  loc_B48CF6: FLdRfVar var_CC
  loc_B48CF9: CStrVarTmp
  loc_B48CFA: FStStrNoPop var_98
  loc_B48CFD: FLdPr Me
  loc_B48D00: VCallAd Control_ID_DetaProvLbl
  loc_B48D03: FStAdFunc var_D0
  loc_B48D06: FLdPr var_D0
  loc_B48D09: Me.Caption = from_stack_1
  loc_B48D0E: FFree1Str var_98
  loc_B48D11: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B48D1E: FFree1Var var_CC = ""
  loc_B48D21: LitStr vbNullString
  loc_B48D24: FLdPr Me
  loc_B48D27: MemStStrCopy
  loc_B48D2B: FLdPr Me
  loc_B48D2E: VCallAd Control_ID_CucuPersTxt
  loc_B48D31: FStAdFunc var_BC
  loc_B48D34: FLdPr Me
  loc_B48D37: VCallAd Control_ID_DetaProvLbl
  loc_B48D3A: FStAdFunc var_A8
  loc_B48D3D: FLdRfVar var_A8
  loc_B48D40: FLdZeroAd var_BC
  loc_B48D43: FStAdFuncNoPop
  loc_B48D46: CastAd
  loc_B48D49: FStAdFunc var_90
  loc_B48D4C: FLdRfVar var_90
  loc_B48D4F: FLdPr Me
  loc_B48D52: MemLdRfVar from_stack_1.global_68
  loc_B48D55: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B48D5A: IStI2 Cancel
  loc_B48D5D: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B48D68: Branch loc_B4900F
  loc_B48D6B: FLdRfVar var_A4
  loc_B48D6E: FLdRfVar var_90
  loc_B48D71: FLdRfVar var_88
  loc_B48D74: ImpAdLdRf MemVar_C3D74C
  loc_B48D77: NewIfNullPr bscProveedor
  loc_B48D7A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48D7F: FLdPr var_88
  loc_B48D82: from_stack_1v = clsbase.RsFrmGet()
  loc_B48D87: FLdPr var_90
  loc_B48D8A:  = Me.RecordCount
  loc_B48D8F: ILdRf var_A4
  loc_B48D92: LitI4 1
  loc_B48D97: GtI4
  loc_B48D98: FFreeAd var_88 = ""
  loc_B48D9F: BranchF loc_B48F7A
  loc_B48DA2: LitVar_Missing var_E0
  loc_B48DA5: PopAdLdVar
  loc_B48DA6: LitVarI4
  loc_B48DAE: PopAdLdVar
  loc_B48DAF: ImpAdLdRf MemVar_C3D74C
  loc_B48DB2: NewIfNullPr bscProveedor
  loc_B48DB5: bscProveedor.Show from_stack_1, from_stack_2
  loc_B48DBA: FLdRfVar var_A4
  loc_B48DBD: FLdRfVar var_88
  loc_B48DC0: ImpAdLdRf MemVar_C3D74C
  loc_B48DC3: NewIfNullPr bscProveedor
  loc_B48DC6: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48DCB: FLdPr var_88
  loc_B48DCE: from_stack_1 = clsbase.RecordCount
  loc_B48DD3: ILdRf var_A4
  loc_B48DD6: LitI4 0
  loc_B48DDB: GtI4
  loc_B48DDC: FFree1Ad var_88
  loc_B48DDF: BranchF loc_B48F02
  loc_B48DE2: FLdRfVar var_CC
  loc_B48DE5: FLdRfVar var_BC
  loc_B48DE8: LitVarStr var_B8, "CucuPers"
  loc_B48DED: PopAdLdVar
  loc_B48DEE: FLdRfVar var_A8
  loc_B48DF1: FLdRfVar var_90
  loc_B48DF4: FLdRfVar var_88
  loc_B48DF7: ImpAdLdRf MemVar_C3D74C
  loc_B48DFA: NewIfNullPr bscProveedor
  loc_B48DFD: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48E02: FLdPr var_88
  loc_B48E05: from_stack_1v = clsbase.RsFrmGet()
  loc_B48E0A: FLdPr var_90
  loc_B48E0D:  = Me.Fields
  loc_B48E12: FLdPr var_A8
  loc_B48E15: from_stack_2 = Me.Item(from_stack_1)
  loc_B48E1A: FLdPr var_BC
  loc_B48E1D:  = Me.Value
  loc_B48E22: FLdRfVar var_CC
  loc_B48E25: CStrVarTmp
  loc_B48E26: FStStrNoPop var_98
  loc_B48E29: FLdPr Me
  loc_B48E2C: VCallAd Control_ID_CucuPersTxt
  loc_B48E2F: FStAdFunc var_D0
  loc_B48E32: FLdPr var_D0
  loc_B48E35: Me.Text = from_stack_1
  loc_B48E3A: FFree1Str var_98
  loc_B48E3D: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B48E4A: FFree1Var var_CC = ""
  loc_B48E4D: FLdRfVar var_CC
  loc_B48E50: FLdRfVar var_BC
  loc_B48E53: LitVarStr var_B8, "DetaProv"
  loc_B48E58: PopAdLdVar
  loc_B48E59: FLdRfVar var_A8
  loc_B48E5C: FLdRfVar var_90
  loc_B48E5F: FLdRfVar var_88
  loc_B48E62: ImpAdLdRf MemVar_C3D74C
  loc_B48E65: NewIfNullPr bscProveedor
  loc_B48E68: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48E6D: FLdPr var_88
  loc_B48E70: from_stack_1v = clsbase.RsFrmGet()
  loc_B48E75: FLdPr var_90
  loc_B48E78:  = Me.Fields
  loc_B48E7D: FLdPr var_A8
  loc_B48E80: from_stack_2 = Me.Item(from_stack_1)
  loc_B48E85: FLdPr var_BC
  loc_B48E88:  = Me.Value
  loc_B48E8D: FLdRfVar var_CC
  loc_B48E90: CStrVarTmp
  loc_B48E91: FStStrNoPop var_98
  loc_B48E94: FLdPr Me
  loc_B48E97: VCallAd Control_ID_DetaProvLbl
  loc_B48E9A: FStAdFunc var_D0
  loc_B48E9D: FLdPr var_D0
  loc_B48EA0: Me.Caption = from_stack_1
  loc_B48EA5: FFree1Str var_98
  loc_B48EA8: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B48EB5: FFree1Var var_CC = ""
  loc_B48EB8: LitStr vbNullString
  loc_B48EBB: FLdPr Me
  loc_B48EBE: MemStStrCopy
  loc_B48EC2: FLdPr Me
  loc_B48EC5: VCallAd Control_ID_CucuPersTxt
  loc_B48EC8: FStAdFunc var_BC
  loc_B48ECB: FLdPr Me
  loc_B48ECE: VCallAd Control_ID_DetaProvLbl
  loc_B48ED1: FStAdFunc var_A8
  loc_B48ED4: FLdRfVar var_A8
  loc_B48ED7: FLdZeroAd var_BC
  loc_B48EDA: FStAdFuncNoPop
  loc_B48EDD: CastAd
  loc_B48EE0: FStAdFunc var_90
  loc_B48EE3: FLdRfVar var_90
  loc_B48EE6: FLdPr Me
  loc_B48EE9: MemLdRfVar from_stack_1.global_68
  loc_B48EEC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B48EF1: IStI2 Cancel
  loc_B48EF4: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B48EFF: Branch loc_B48F77
  loc_B48F02: LitStr vbNullString
  loc_B48F05: FLdPr Me
  loc_B48F08: VCallAd Control_ID_CucuPersTxt
  loc_B48F0B: FStAdFunc var_88
  loc_B48F0E: FLdPr var_88
  loc_B48F11: Me.Text = from_stack_1
  loc_B48F16: FFree1Ad var_88
  loc_B48F19: LitStr vbNullString
  loc_B48F1C: FLdPr Me
  loc_B48F1F: VCallAd Control_ID_DetaProvLbl
  loc_B48F22: FStAdFunc var_88
  loc_B48F25: FLdPr var_88
  loc_B48F28: Me.Caption = from_stack_1
  loc_B48F2D: FFree1Ad var_88
  loc_B48F30: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B48F33: FLdPr Me
  loc_B48F36: MemStStrCopy
  loc_B48F3A: FLdPr Me
  loc_B48F3D: VCallAd Control_ID_CucuPersTxt
  loc_B48F40: FStAdFunc var_BC
  loc_B48F43: FLdPr Me
  loc_B48F46: VCallAd Control_ID_DetaProvLbl
  loc_B48F49: FStAdFunc var_A8
  loc_B48F4C: FLdRfVar var_A8
  loc_B48F4F: FLdZeroAd var_BC
  loc_B48F52: FStAdFuncNoPop
  loc_B48F55: CastAd
  loc_B48F58: FStAdFunc var_90
  loc_B48F5B: FLdRfVar var_90
  loc_B48F5E: FLdPr Me
  loc_B48F61: MemLdRfVar from_stack_1.global_68
  loc_B48F64: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B48F69: IStI2 Cancel
  loc_B48F6C: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B48F77: Branch loc_B4900F
  loc_B48F7A: FLdRfVar var_A4
  loc_B48F7D: FLdRfVar var_90
  loc_B48F80: FLdRfVar var_88
  loc_B48F83: ImpAdLdRf MemVar_C3D74C
  loc_B48F86: NewIfNullPr bscProveedor
  loc_B48F89: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48F8E: FLdPr var_88
  loc_B48F91: from_stack_1v = clsbase.RsFrmGet()
  loc_B48F96: FLdPr var_90
  loc_B48F99:  = Me.RecordCount
  loc_B48F9E: ILdRf var_A4
  loc_B48FA1: LitI4 1
  loc_B48FA6: LtI4
  loc_B48FA7: FFreeAd var_88 = ""
  loc_B48FAE: BranchF loc_B4900F
  loc_B48FB1: LitStr vbNullString
  loc_B48FB4: FLdPr Me
  loc_B48FB7: VCallAd Control_ID_DetaProvLbl
  loc_B48FBA: FStAdFunc var_88
  loc_B48FBD: FLdPr var_88
  loc_B48FC0: Me.Caption = from_stack_1
  loc_B48FC5: FFree1Ad var_88
  loc_B48FC8: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B48FCB: FLdPr Me
  loc_B48FCE: MemStStrCopy
  loc_B48FD2: FLdPr Me
  loc_B48FD5: VCallAd Control_ID_CucuPersTxt
  loc_B48FD8: FStAdFunc var_BC
  loc_B48FDB: FLdPr Me
  loc_B48FDE: VCallAd Control_ID_DetaProvLbl
  loc_B48FE1: FStAdFunc var_A8
  loc_B48FE4: FLdRfVar var_A8
  loc_B48FE7: FLdZeroAd var_BC
  loc_B48FEA: FStAdFuncNoPop
  loc_B48FED: CastAd
  loc_B48FF0: FStAdFunc var_90
  loc_B48FF3: FLdRfVar var_90
  loc_B48FF6: FLdPr Me
  loc_B48FF9: MemLdRfVar from_stack_1.global_68
  loc_B48FFC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B49001: IStI2 Cancel
  loc_B49004: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B4900F: Branch loc_B491C3
  loc_B49012: LitI2_Byte 0
  loc_B49014: ImpAdLdRf MemVar_C3D74C
  loc_B49017: NewIfNullPr bscProveedor
  loc_B4901A: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B4901F: LitNothing
  loc_B49021: CastAd
  loc_B49024: FStAdFuncNoPop
  loc_B49027: ImpAdLdRf MemVar_C3D74C
  loc_B4902A: NewIfNullPr bscProveedor
  loc_B4902D: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_B49032: FFree1Ad var_88
  loc_B49035: LitVar_Missing var_E0
  loc_B49038: PopAdLdVar
  loc_B49039: LitVarI4
  loc_B49041: PopAdLdVar
  loc_B49042: ImpAdLdRf MemVar_C3D74C
  loc_B49045: NewIfNullPr bscProveedor
  loc_B49048: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4904D: FLdRfVar var_A4
  loc_B49050: FLdRfVar var_88
  loc_B49053: ImpAdLdRf MemVar_C3D74C
  loc_B49056: NewIfNullPr bscProveedor
  loc_B49059: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4905E: FLdPr var_88
  loc_B49061: from_stack_1 = clsbase.RecordCount
  loc_B49066: ILdRf var_A4
  loc_B49069: LitI4 0
  loc_B4906E: GtI4
  loc_B4906F: FFree1Ad var_88
  loc_B49072: BranchF loc_B4914E
  loc_B49075: FLdRfVar var_CC
  loc_B49078: FLdRfVar var_BC
  loc_B4907B: LitVarStr var_B8, "CucuPers"
  loc_B49080: PopAdLdVar
  loc_B49081: FLdRfVar var_A8
  loc_B49084: FLdRfVar var_90
  loc_B49087: FLdRfVar var_88
  loc_B4908A: ImpAdLdRf MemVar_C3D74C
  loc_B4908D: NewIfNullPr bscProveedor
  loc_B49090: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49095: FLdPr var_88
  loc_B49098: from_stack_1v = clsbase.RsFrmGet()
  loc_B4909D: FLdPr var_90
  loc_B490A0:  = Me.Fields
  loc_B490A5: FLdPr var_A8
  loc_B490A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B490AD: FLdPr var_BC
  loc_B490B0:  = Me.Value
  loc_B490B5: FLdRfVar var_CC
  loc_B490B8: CStrVarTmp
  loc_B490B9: FStStrNoPop var_98
  loc_B490BC: FLdPr Me
  loc_B490BF: VCallAd Control_ID_CucuPersTxt
  loc_B490C2: FStAdFunc var_D0
  loc_B490C5: FLdPr var_D0
  loc_B490C8: Me.Text = from_stack_1
  loc_B490CD: FFree1Str var_98
  loc_B490D0: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B490DD: FFree1Var var_CC = ""
  loc_B490E0: FLdRfVar var_CC
  loc_B490E3: FLdRfVar var_BC
  loc_B490E6: LitVarStr var_B8, "DetaProv"
  loc_B490EB: PopAdLdVar
  loc_B490EC: FLdRfVar var_A8
  loc_B490EF: FLdRfVar var_90
  loc_B490F2: FLdRfVar var_88
  loc_B490F5: ImpAdLdRf MemVar_C3D74C
  loc_B490F8: NewIfNullPr bscProveedor
  loc_B490FB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49100: FLdPr var_88
  loc_B49103: from_stack_1v = clsbase.RsFrmGet()
  loc_B49108: FLdPr var_90
  loc_B4910B:  = Me.Fields
  loc_B49110: FLdPr var_A8
  loc_B49113: from_stack_2 = Me.Item(from_stack_1)
  loc_B49118: FLdPr var_BC
  loc_B4911B:  = Me.Value
  loc_B49120: FLdRfVar var_CC
  loc_B49123: CStrVarTmp
  loc_B49124: FStStrNoPop var_98
  loc_B49127: FLdPr Me
  loc_B4912A: VCallAd Control_ID_DetaProvLbl
  loc_B4912D: FStAdFunc var_D0
  loc_B49130: FLdPr var_D0
  loc_B49133: Me.Caption = from_stack_1
  loc_B49138: FFree1Str var_98
  loc_B4913B: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B49148: FFree1Var var_CC = ""
  loc_B4914B: Branch loc_B491C3
  loc_B4914E: LitStr vbNullString
  loc_B49151: FLdPr Me
  loc_B49154: VCallAd Control_ID_CucuPersTxt
  loc_B49157: FStAdFunc var_88
  loc_B4915A: FLdPr var_88
  loc_B4915D: Me.Text = from_stack_1
  loc_B49162: FFree1Ad var_88
  loc_B49165: LitStr vbNullString
  loc_B49168: FLdPr Me
  loc_B4916B: VCallAd Control_ID_DetaProvLbl
  loc_B4916E: FStAdFunc var_88
  loc_B49171: FLdPr var_88
  loc_B49174: Me.Caption = from_stack_1
  loc_B49179: FFree1Ad var_88
  loc_B4917C: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B4917F: FLdPr Me
  loc_B49182: MemStStrCopy
  loc_B49186: FLdPr Me
  loc_B49189: VCallAd Control_ID_CucuPersTxt
  loc_B4918C: FStAdFunc var_BC
  loc_B4918F: FLdPr Me
  loc_B49192: VCallAd Control_ID_DetaProvLbl
  loc_B49195: FStAdFunc var_A8
  loc_B49198: FLdRfVar var_A8
  loc_B4919B: FLdZeroAd var_BC
  loc_B4919E: FStAdFuncNoPop
  loc_B491A1: CastAd
  loc_B491A4: FStAdFunc var_90
  loc_B491A7: FLdRfVar var_90
  loc_B491AA: FLdPr Me
  loc_B491AD: MemLdRfVar from_stack_1.global_68
  loc_B491B0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B491B5: IStI2 Cancel
  loc_B491B8: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B491C3: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '963AA8
  'Data Table: 4ECA40
  loc_963A90: FLdPr Me
  loc_963A93: VCallAd Control_ID_dgdABMS
  loc_963A96: FStAdFunc var_88
  loc_963A99: FLdRfVar var_88
  loc_963A9C: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_963AA1: FFree1Ad var_88
  loc_963AA4: ExitProcHresult
  loc_963AA5: FLdPr var_90
End Sub

Private Sub dgdABMS_UnknownEvent_1 '964098
  'Data Table: 4ECA40
  loc_964080: FLdPr Me
  loc_964083: VCallAd Control_ID_dgdABMS
  loc_964086: FStAdFunc var_88
  loc_964089: FLdRfVar var_88
  loc_96408C: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_964091: FFree1Ad var_88
  loc_964094: ExitProcHresult
  loc_964095: FnAbsCy
  loc_964096: MulI4
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99C2D8
  'Data Table: 4ECA40
  loc_99C27C: FLdRfVar var_B4
  loc_99C27F: FLdRfVar var_B0
  loc_99C282: FLdI2 ColIndex
  loc_99C285: CVarI2 var_A8
  loc_99C288: PopAdLdVar
  loc_99C289: FLdPr Me
  loc_99C28C: VCallAd Control_ID_dgdABMS
  loc_99C28F: FStAdFunc var_88
  loc_99C292: FLdPr var_88
  loc_99C295: LateIdLdVar var_98 DispID_105 0
  loc_99C29C: CastAdVar Me
  loc_99C2A0: FStAdFunc var_AC
  loc_99C2A3: FLdPr var_AC
  loc_99C2A6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99C2AB: FLdPr var_B0
  loc_99C2AE:  = Me.DataField
  loc_99C2B3: FLdZeroAd var_B4
  loc_99C2B6: PopTmpLdAdStr
  loc_99C2BA: FLdPr Me
  loc_99C2BD: MemLdRfVar from_stack_1.global_52
  loc_99C2C0: NewIfNullPr clsimputacion
  loc_99C2C3: Call clsimputacion.Sort(from_stack_1v)
  loc_99C2C8: FFree1Str var_B8
  loc_99C2CB: FFreeAd var_88 = "": var_AC = ""
  loc_99C2D4: FFree1Var var_98 = ""
  loc_99C2D7: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9E5F10
  'Data Table: 4ECA40
  loc_9E5DFC: LitI2_Byte 0
  loc_9E5DFE: CUI1I2
  loc_9E5E00: FLdPr Me
  loc_9E5E03: MemStUI1
  loc_9E5E07: ILdRf Me
  loc_9E5E0A: CastAd
  loc_9E5E0D: FStAdFunc var_88
  loc_9E5E10: FLdRfVar var_88
  loc_9E5E13: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9E5E18: FFree1Ad var_88
  loc_9E5E1B: LitI4 0
  loc_9E5E20: LitI4 0
  loc_9E5E25: FLdRfVar var_8C
  loc_9E5E28: Redim
  loc_9E5E32: FLdPr Me
  loc_9E5E35: VCallAd Control_ID_dgdABMS
  loc_9E5E38: CVarAd
  loc_9E5E3C: ParmAry1St
  loc_9E5E42: FLdRfVar var_8C
  loc_9E5E45: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E5E4A: FLdRfVar var_8C
  loc_9E5E4D: Erase
  loc_9E5E4E: FLdPr Me
  loc_9E5E51: MemLdRfVar from_stack_1.global_52
  loc_9E5E54: NewIfNullAd
  loc_9E5E57: FStAd var_A0 
  loc_9E5E5B: FLdRfVar var_A0
  loc_9E5E5E: CVarRef
  loc_9E5E63: ILdRf Me
  loc_9E5E66: CastAd
  loc_9E5E69: FStAdFunc var_88
  loc_9E5E6C: FLdRfVar var_88
  loc_9E5E6F: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9E5E74: ILdRf var_A0
  loc_9E5E77: CastAd
  loc_9E5E7A: FLdPr Me
  loc_9E5E7D: MemStAdFunc
  loc_9E5E81: FFreeAd var_88 = ""
  loc_9E5E88: FLdRfVar var_B4
  loc_9E5E8B: FLdPr Me
  loc_9E5E8E: MemLdRfVar from_stack_1.global_52
  loc_9E5E91: NewIfNullPr clsimputacion
  loc_9E5E94: from_stack_1 = clsimputacion.RecordCount
  loc_9E5E99: ILdRf var_B4
  loc_9E5E9C: LitI4 0
  loc_9E5EA1: EqI4
  loc_9E5EA2: BranchF loc_9E5EB9
  loc_9E5EA5: ILdRf Me
  loc_9E5EA8: CastAd
  loc_9E5EAB: FStAdFunc var_88
  loc_9E5EAE: FLdRfVar var_88
  loc_9E5EB1: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_9E5EB6: FFree1Ad var_88
  loc_9E5EB9: ILdRf Me
  loc_9E5EBC: CastAd
  loc_9E5EBF: FStAdFunc var_88
  loc_9E5EC2: FLdRfVar var_88
  loc_9E5EC5: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9E5ECA: FFree1Ad var_88
  loc_9E5ECD: FLdPr Me
  loc_9E5ED0: MemLdRfVar from_stack_1.global_52
  loc_9E5ED3: NewIfNullPr clsimputacion
  loc_9E5ED6: Call clsimputacion.Requery()
  loc_9E5EDB: FLdPr Me
  loc_9E5EDE: VCallAd Control_ID_dgdABMS
  loc_9E5EE1: FStAdFunc var_A0
  loc_9E5EE4: LitI4 0
  loc_9E5EE9: FStStrCopy var_B8
  loc_9E5EEC: FLdRfVar var_B8
  loc_9E5EEF: FLdPr Me
  loc_9E5EF2: MemLdStr global_76
  loc_9E5EF5: FLdZeroAd var_A0
  loc_9E5EF8: FStAdFunc var_88
  loc_9E5EFB: FLdRfVar var_88
  loc_9E5EFE: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9E5F03: FFree1Str var_B8
  loc_9E5F06: FFreeAd var_88 = ""
  loc_9E5F0D: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_0 '94CDD0
  'Data Table: 4ECA40
  loc_94CDBC: FLdPr Me
  loc_94CDBF: VCallAd Control_ID_CodiFifuMsk
  loc_94CDC2: CVarAd
  loc_94CDC6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CDCB: FFree1Var var_94 = ""
  loc_94CDCE: ExitProcHresult
End Sub

Private Function CodiFifuMsk_UnknownEvent_8(arg_C) '9E12D0
  'Data Table: 4ECA40
  loc_9E11CC: FLdRfVar var_8A
  loc_9E11CF: FLdPr Me
  loc_9E11D2: VCallAd Control_ID_cmdCancelar
  loc_9E11D5: FStAdFunc var_88
  loc_9E11D8: FLdPr var_88
  loc_9E11DB:  = Me.Value
  loc_9E11E0: FLdI2 var_8A
  loc_9E11E3: NotI4
  loc_9E11E4: FLdPr Me
  loc_9E11E7: VCallAd Control_ID_CodiFifuMsk
  loc_9E11EA: FStAdFunc var_90
  loc_9E11ED: FLdPr var_90
  loc_9E11F0: LateIdLdVar var_A0 DispID_13 -32767
  loc_9E11F7: CBoolVar
  loc_9E11F9: AndI4
  loc_9E11FA: FFreeAd var_88 = ""
  loc_9E1201: FFree1Var var_A0 = ""
  loc_9E1204: BranchF loc_9E12CF
  loc_9E1207: FLdPr Me
  loc_9E120A: VCallAd Control_ID_CodiFifuMsk
  loc_9E120D: FStAdFunc var_88
  loc_9E1210: FLdRfVar var_88
  loc_9E1213: ImpAdCallFPR4 Proc_261_67_9A9E88()
  loc_9E1218: FFree1Ad var_88
  loc_9E121B: FLdPr Me
  loc_9E121E: VCallAd Control_ID_CodiFifuMsk
  loc_9E1221: FStAdFunc var_88
  loc_9E1224: FLdPr var_88
  loc_9E1227: LateIdLdVar var_A0 DispID_22 0
  loc_9E122E: PopAd
  loc_9E1230: FLdPr Me
  loc_9E1233: MemLdRfVar from_stack_1.global_88
  loc_9E1236: NewIfNullRf
  loc_9E123A: FLdRfVar var_A0
  loc_9E123D: CStrVarTmp
  loc_9E123E: FStStrNoPop var_A4
  loc_9E1241: ImpAdLdI2 MemVar_C3D064
  loc_9E1244: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_9E1249: FStStrNoPop var_A8
  loc_9E124C: FLdPr Me
  loc_9E124F: MemStStrCopy
  loc_9E1253: FFreeStr var_A4 = ""
  loc_9E125A: FFree1Ad var_88
  loc_9E125D: FFree1Var var_A0 = ""
  loc_9E1260: FLdPr Me
  loc_9E1263: VCallAd Control_ID_CodiFifuMsk
  loc_9E1266: FStAdFunc var_B0
  loc_9E1269: FLdPr Me
  loc_9E126C: VCallAd Control_ID_DetaFifuLbl
  loc_9E126F: FStAdFunc var_AC
  loc_9E1272: FLdRfVar var_AC
  loc_9E1275: FLdZeroAd var_B0
  loc_9E1278: FStAdFuncNoPop
  loc_9E127B: CastAd
  loc_9E127E: FStAdFunc var_90
  loc_9E1281: FLdRfVar var_90
  loc_9E1284: FLdPr Me
  loc_9E1287: MemLdRfVar from_stack_1.global_68
  loc_9E128A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E128F: IStI2 arg_C
  loc_9E1292: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9E129D: ILdI2 arg_C
  loc_9E12A0: NotI4
  loc_9E12A1: BranchF loc_9E12CF
  loc_9E12A4: FLdRfVar var_A4
  loc_9E12A7: FLdPr Me
  loc_9E12AA: MemLdRfVar from_stack_1.global_88
  loc_9E12AD: NewIfNullPr tblfinalidad
  loc_9E12B0: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_9E12B5: ILdRf var_A4
  loc_9E12B8: FLdPr Me
  loc_9E12BB: VCallAd Control_ID_DetaFifuLbl
  loc_9E12BE: FStAdFunc var_88
  loc_9E12C1: FLdPr var_88
  loc_9E12C4: Me.Caption = from_stack_1
  loc_9E12C9: FFree1Str var_A4
  loc_9E12CC: FFree1Ad var_88
  loc_9E12CF: ExitProcHresult
End Function

Private Sub CodiFifuMsk_KeyPress(KeyAscii As Integer) 'A1CA80
  'Data Table: 4ECA40
  loc_A1C8EC: ILdI2 KeyAscii
  loc_A1C8EF: CI4UI1
  loc_A1C8F0: LitI4 &H20
  loc_A1C8F5: EqI4
  loc_A1C8F6: BranchF loc_A1CA7D
  loc_A1C8F9: FLdPr Me
  loc_A1C8FC: VCallAd Control_ID_CodiPartMsk
  loc_A1C8FF: FStAdFunc var_88
  loc_A1C902: FLdPr var_88
  loc_A1C905: LateIdLdVar var_98 DispID_22 0
  loc_A1C90C: CStrVarTmp
  loc_A1C90D: FStStrNoPop var_9C
  loc_A1C910: ImpAdLdRf MemVar_C3D6E8
  loc_A1C913: NewIfNullPr bscFinalidad
  loc_A1C916: Call bscFinalidad.sCodiPartPut(from_stack_1v)
  loc_A1C91B: FFree1Str var_9C
  loc_A1C91E: FFree1Ad var_88
  loc_A1C921: FFree1Var var_98 = ""
  loc_A1C924: FLdPr Me
  loc_A1C927: VCallAd Control_ID_
  loc_A1C92A: FStAdFunc var_88
  loc_A1C92D: FLdPr var_88
  loc_A1C930: LateIdLdVar var_98 DispID_22 0
  loc_A1C937: CStrVarTmp
  loc_A1C938: FStStrNoPop var_9C
  loc_A1C93B: ImpAdLdRf MemVar_C3D6E8
  loc_A1C93E: NewIfNullPr bscFinalidad
  loc_A1C941: Call bscFinalidad.sCodiOrgaPut(from_stack_1v)
  loc_A1C946: FFree1Str var_9C
  loc_A1C949: FFree1Ad var_88
  loc_A1C94C: FFree1Var var_98 = ""
  loc_A1C94F: LitNothing
  loc_A1C951: CastAd
  loc_A1C954: FStAdFuncNoPop
  loc_A1C957: ImpAdLdRf MemVar_C3D6E8
  loc_A1C95A: NewIfNullPr bscFinalidad
  loc_A1C95D: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_A1C962: FFree1Ad var_88
  loc_A1C965: LitVar_Missing var_BC
  loc_A1C968: PopAdLdVar
  loc_A1C969: LitVarI4
  loc_A1C971: PopAdLdVar
  loc_A1C972: ImpAdLdRf MemVar_C3D6E8
  loc_A1C975: NewIfNullPr bscFinalidad
  loc_A1C978: bscFinalidad.Show from_stack_1, from_stack_2
  loc_A1C97D: FLdRfVar var_C0
  loc_A1C980: FLdRfVar var_88
  loc_A1C983: ImpAdLdRf MemVar_C3D6E8
  loc_A1C986: NewIfNullPr bscFinalidad
  loc_A1C989: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A1C98E: FLdPr var_88
  loc_A1C991: from_stack_1 = clsbase.RecordCount
  loc_A1C996: ILdRf var_C0
  loc_A1C999: LitI4 0
  loc_A1C99E: GtI4
  loc_A1C99F: FFree1Ad var_88
  loc_A1C9A2: BranchF loc_A1CA7D
  loc_A1C9A5: FLdRfVar var_98
  loc_A1C9A8: FLdRfVar var_CC
  loc_A1C9AB: LitVarStr var_AC, "CodiFifu"
  loc_A1C9B0: PopAdLdVar
  loc_A1C9B1: FLdRfVar var_C8
  loc_A1C9B4: FLdRfVar var_C4
  loc_A1C9B7: FLdRfVar var_88
  loc_A1C9BA: ImpAdLdRf MemVar_C3D6E8
  loc_A1C9BD: NewIfNullPr bscFinalidad
  loc_A1C9C0: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A1C9C5: FLdPr var_88
  loc_A1C9C8: from_stack_1v = clsbase.RsFrmGet()
  loc_A1C9CD: FLdPr var_C4
  loc_A1C9D0:  = Me.Fields
  loc_A1C9D5: FLdPr var_C8
  loc_A1C9D8: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C9DD: FLdPr var_CC
  loc_A1C9E0:  = Me.Value
  loc_A1C9E5: FLdRfVar var_98
  loc_A1C9E8: CStrVarTmp
  loc_A1C9E9: CVarStr var_DC
  loc_A1C9EC: PopAdLdVar
  loc_A1C9ED: FLdPr Me
  loc_A1C9F0: VCallAd Control_ID_CodiFifuMsk
  loc_A1C9F3: FStAdFunc var_E0
  loc_A1C9F6: FLdPr var_E0
  loc_A1C9F9: LateIdSt
  loc_A1C9FE: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A1CA0B: FFreeVar var_98 = ""
  loc_A1CA12: FLdRfVar var_98
  loc_A1CA15: FLdRfVar var_CC
  loc_A1CA18: LitVarStr var_AC, "DetaFifu"
  loc_A1CA1D: PopAdLdVar
  loc_A1CA1E: FLdRfVar var_C8
  loc_A1CA21: FLdRfVar var_C4
  loc_A1CA24: FLdRfVar var_88
  loc_A1CA27: ImpAdLdRf MemVar_C3D6E8
  loc_A1CA2A: NewIfNullPr bscFinalidad
  loc_A1CA2D: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A1CA32: FLdPr var_88
  loc_A1CA35: from_stack_1v = clsbase.RsFrmGet()
  loc_A1CA3A: FLdPr var_C4
  loc_A1CA3D:  = Me.Fields
  loc_A1CA42: FLdPr var_C8
  loc_A1CA45: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CA4A: FLdPr var_CC
  loc_A1CA4D:  = Me.Value
  loc_A1CA52: FLdRfVar var_98
  loc_A1CA55: CStrVarTmp
  loc_A1CA56: FStStrNoPop var_9C
  loc_A1CA59: FLdPr Me
  loc_A1CA5C: VCallAd Control_ID_DetaFifuLbl
  loc_A1CA5F: FStAdFunc var_E0
  loc_A1CA62: FLdPr var_E0
  loc_A1CA65: Me.Caption = from_stack_1
  loc_A1CA6A: FFree1Str var_9C
  loc_A1CA6D: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A1CA7A: FFree1Var var_98 = ""
  loc_A1CA7D: ExitProcHresult
  loc_A1CA7E: GtI4
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94CF38
  'Data Table: 4ECA40
  loc_94CF24: FLdPr Me
  loc_94CF27: VCallAd Control_ID_FiltroMsk
  loc_94CF2A: CVarAd
  loc_94CF2E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CF33: FFree1Var var_94 = ""
  loc_94CF36: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A3AB4C
  'Data Table: 4ECA40
  loc_A3A92C: ILdRf Me
  loc_A3A92F: CastAd
  loc_A3A932: FStAdFunc var_88
  loc_A3A935: FLdRfVar var_88
  loc_A3A938: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A3A93D: FFree1Ad var_88
  loc_A3A940: FLdPr Me
  loc_A3A943: VCallAd Control_ID_FiltroMsk
  loc_A3A946: FStAdFunc var_88
  loc_A3A949: FLdPr var_88
  loc_A3A94C: LateIdLdVar var_98 DispID_22 0
  loc_A3A953: CStrVarTmp
  loc_A3A954: FStStrNoPop var_9C
  loc_A3A957: ImpAdCallI2 Trim$()
  loc_A3A95C: FStStrNoPop var_A0
  loc_A3A95F: LitStr vbNullString
  loc_A3A962: NeStr
  loc_A3A964: FFreeStr var_9C = ""
  loc_A3A96B: FFree1Ad var_88
  loc_A3A96E: FFree1Var var_98 = ""
  loc_A3A971: BranchF loc_A3AA26
  loc_A3A974: FLdRfVar var_A2
  loc_A3A977: FLdPr Me
  loc_A3A97A: VCallAd Control_ID_FiltroCbo
  loc_A3A97D: FStAdFunc var_88
  loc_A3A980: FLdPr var_88
  loc_A3A983:  = Me.ListIndex
  loc_A3A988: FLdI2 var_A2
  loc_A3A98B: LitI2_Byte 0
  loc_A3A98D: EqI2
  loc_A3A98E: FFree1Ad var_88
  loc_A3A991: BranchF loc_A3AA23
  loc_A3A994: LitStr "CodiOrco = '"
  loc_A3A997: FLdPr Me
  loc_A3A99A: VCallAd Control_ID_FiltroMsk
  loc_A3A99D: FStAdFunc var_88
  loc_A3A9A0: FLdPr var_88
  loc_A3A9A3: LateIdLdVar var_98 DispID_22 0
  loc_A3A9AA: CStrVarTmp
  loc_A3A9AB: FStStrNoPop var_9C
  loc_A3A9AE: ConcatStr
  loc_A3A9AF: FStStrNoPop var_A0
  loc_A3A9B2: LitStr "'"
  loc_A3A9B5: ConcatStr
  loc_A3A9B6: PopTmpLdAdStr
  loc_A3A9BA: FLdPr Me
  loc_A3A9BD: MemLdRfVar from_stack_1.global_52
  loc_A3A9C0: NewIfNullPr clsimputacion
  loc_A3A9C3: Call clsimputacion.Filter(from_stack_1v)
  loc_A3A9C8: FFreeStr var_9C = "": var_A0 = ""
  loc_A3A9D1: FFree1Ad var_88
  loc_A3A9D4: FFree1Var var_98 = ""
  loc_A3A9D7: LitStr "CodiOrco"
  loc_A3A9DA: FStStrCopy var_9C
  loc_A3A9DD: FLdRfVar var_9C
  loc_A3A9E0: FLdPr Me
  loc_A3A9E3: MemLdRfVar from_stack_1.global_52
  loc_A3A9E6: NewIfNullPr clsimputacion
  loc_A3A9E9: Call clsimputacion.Sort(from_stack_1v)
  loc_A3A9EE: FFree1Str var_9C
  loc_A3A9F1: LitStr "Orden de Compra sea igual a: "
  loc_A3A9F4: FLdPr Me
  loc_A3A9F7: VCallAd Control_ID_FiltroMsk
  loc_A3A9FA: FStAdFunc var_88
  loc_A3A9FD: FLdPr var_88
  loc_A3AA00: LateIdLdVar var_98 DispID_22 0
  loc_A3AA07: CStrVarTmp
  loc_A3AA08: FStStrNoPop var_9C
  loc_A3AA0B: ConcatStr
  loc_A3AA0C: FStStrNoPop var_A0
  loc_A3AA0F: FLdPr Me
  loc_A3AA12: MemStStrCopy
  loc_A3AA16: FFreeStr var_9C = ""
  loc_A3AA1D: FFree1Ad var_88
  loc_A3AA20: FFree1Var var_98 = ""
  loc_A3AA23: Branch loc_A3AA4A
  loc_A3AA26: LitStr vbNullString
  loc_A3AA29: FStStrCopy var_9C
  loc_A3AA2C: FLdRfVar var_9C
  loc_A3AA2F: FLdPr Me
  loc_A3AA32: MemLdRfVar from_stack_1.global_52
  loc_A3AA35: NewIfNullPr clsimputacion
  loc_A3AA38: Call clsimputacion.Filter(from_stack_1v)
  loc_A3AA3D: FFree1Str var_9C
  loc_A3AA40: LitStr vbNullString
  loc_A3AA43: FLdPr Me
  loc_A3AA46: MemStStrCopy
  loc_A3AA4A: FLdRfVar var_AC
  loc_A3AA4D: FLdPr Me
  loc_A3AA50: MemLdRfVar from_stack_1.global_52
  loc_A3AA53: NewIfNullPr clsimputacion
  loc_A3AA56: from_stack_1 = clsimputacion.RecordCount
  loc_A3AA5B: ILdRf var_AC
  loc_A3AA5E: LitI4 0
  loc_A3AA63: GtI4
  loc_A3AA64: BranchF loc_A3AB02
  loc_A3AA67: FLdPr Me
  loc_A3AA6A: MemLdRfVar from_stack_1.global_52
  loc_A3AA6D: NewIfNullAd
  loc_A3AA70: FStAd var_B0 
  loc_A3AA74: FLdRfVar var_B0
  loc_A3AA77: CVarRef
  loc_A3AA7C: ILdRf Me
  loc_A3AA7F: CastAd
  loc_A3AA82: FStAdFunc var_88
  loc_A3AA85: FLdRfVar var_88
  loc_A3AA88: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A3AA8D: ILdRf var_B0
  loc_A3AA90: CastAd
  loc_A3AA93: FLdPr Me
  loc_A3AA96: MemStAdFunc
  loc_A3AA9A: FFreeAd var_88 = ""
  loc_A3AAA1: LitI4 0
  loc_A3AAA6: LitI4 1
  loc_A3AAAB: FLdRfVar var_C4
  loc_A3AAAE: Redim
  loc_A3AAB8: FLdPr Me
  loc_A3AABB: MemLdRfVar from_stack_1.global_52
  loc_A3AABE: NewIfNullAd
  loc_A3AAC1: FStAd var_88 
  loc_A3AAC5: FLdRfVar var_88
  loc_A3AAC8: CVarRef
  loc_A3AACD: ParmAry1St
  loc_A3AAD3: FLdPr Me
  loc_A3AAD6: VCallAd Control_ID_dgdABMS
  loc_A3AAD9: CVarAd
  loc_A3AADD: ParmAry1St
  loc_A3AAE3: FLdRfVar var_C4
  loc_A3AAE6: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3AAEB: ILdRf var_88
  loc_A3AAEE: CastAd
  loc_A3AAF1: FLdPr Me
  loc_A3AAF4: MemStAdFunc
  loc_A3AAF8: FLdRfVar var_C4
  loc_A3AAFB: Erase
  loc_A3AAFC: FFree1Ad var_88
  loc_A3AAFF: Branch loc_A3AB16
  loc_A3AB02: ILdRf Me
  loc_A3AB05: CastAd
  loc_A3AB08: FStAdFunc var_88
  loc_A3AB0B: FLdRfVar var_88
  loc_A3AB0E: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A3AB13: FFree1Ad var_88
  loc_A3AB16: FLdPr Me
  loc_A3AB19: VCallAd Control_ID_dgdABMS
  loc_A3AB1C: FStAdFunc var_B0
  loc_A3AB1F: LitI4 0
  loc_A3AB24: FStStrCopy var_9C
  loc_A3AB27: FLdRfVar var_9C
  loc_A3AB2A: FLdPr Me
  loc_A3AB2D: MemLdStr global_76
  loc_A3AB30: FLdZeroAd var_B0
  loc_A3AB33: FStAdFunc var_88
  loc_A3AB36: FLdRfVar var_88
  loc_A3AB39: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A3AB3E: FFree1Str var_9C
  loc_A3AB41: FFreeAd var_88 = ""
  loc_A3AB48: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9974E4
  'Data Table: 4ECA40
  loc_997480: ILdI2 KeyAscii
  loc_997483: LitI2_Byte &H27
  loc_997485: EqI2
  loc_997486: BranchF loc_99748E
  loc_997489: LitI2_Byte 0
  loc_99748B: IStI2 KeyAscii
  loc_99748E: FLdRfVar var_88
  loc_997491: FLdPr Me
  loc_997494: MemLdRfVar from_stack_1.global_52
  loc_997497: NewIfNullPr clsimputacion
  loc_99749A: from_stack_1 = clsimputacion.RecordCount
  loc_99749F: ILdRf var_88
  loc_9974A2: LitI4 0
  loc_9974A7: EqI4
  loc_9974A8: ILdI2 KeyAscii
  loc_9974AB: CI4UI1
  loc_9974AC: LitI4 8
  loc_9974B1: NeI4
  loc_9974B2: AndI4
  loc_9974B3: FLdPr Me
  loc_9974B6: VCallAd Control_ID_FiltroMsk
  loc_9974B9: FStAdFunc var_8C
  loc_9974BC: FLdPr var_8C
  loc_9974BF: LateIdLdVar var_9C DispID_16 0
  loc_9974C6: CStrVarTmp
  loc_9974C7: FStStrNoPop var_A0
  loc_9974CA: LitStr vbNullString
  loc_9974CD: EqStr
  loc_9974CF: AndI4
  loc_9974D0: FFree1Str var_A0
  loc_9974D3: FFree1Ad var_8C
  loc_9974D6: FFree1Var var_9C = ""
  loc_9974D9: BranchF loc_9974E1
  loc_9974DC: LitI2_Byte 0
  loc_9974DE: IStI2 KeyAscii
  loc_9974E1: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_GotFocus() '94CE60
  'Data Table: 4ECA40
  loc_94CE4C: FLdPr Me
  loc_94CE4F: VCallAd Control_ID_DetaImpuTxt
  loc_94CE52: CVarAd
  loc_94CE56: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CE5B: FFree1Var var_94 = ""
  loc_94CE5E: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_Validate(Cancel As Boolean) '9B9AC0
  'Data Table: 4ECA40
  loc_9B9A0C: FLdRfVar var_8A
  loc_9B9A0F: FLdPr Me
  loc_9B9A12: VCallAd Control_ID_cmdCancelar
  loc_9B9A15: FStAdFunc var_88
  loc_9B9A18: FLdPr var_88
  loc_9B9A1B:  = Me.Value
  loc_9B9A20: FLdI2 var_8A
  loc_9B9A23: NotI4
  loc_9B9A24: FLdRfVar var_92
  loc_9B9A27: FLdPr Me
  loc_9B9A2A: VCallAd Control_ID_DetaImpuTxt
  loc_9B9A2D: FStAdFunc var_90
  loc_9B9A30: FLdPr var_90
  loc_9B9A33:  = Me.Enabled
  loc_9B9A38: FLdI2 var_92
  loc_9B9A3B: AndI4
  loc_9B9A3C: FFreeAd var_88 = ""
  loc_9B9A43: BranchF loc_9B9ABD
  loc_9B9A46: FLdRfVar var_98
  loc_9B9A49: FLdPr Me
  loc_9B9A4C: VCallAd Control_ID_DetaImpuTxt
  loc_9B9A4F: FStAdFunc var_88
  loc_9B9A52: FLdPr var_88
  loc_9B9A55:  = Me.Text
  loc_9B9A5A: LitI2_Byte 0
  loc_9B9A5C: PopTmpLdAd2 var_9A
  loc_9B9A5F: LitI2_Byte 0
  loc_9B9A61: PopTmpLdAd2 var_92
  loc_9B9A64: LitI2_Byte 0
  loc_9B9A66: PopTmpLdAd2 var_8A
  loc_9B9A69: ILdRf var_98
  loc_9B9A6C: LitStr "Detalle"
  loc_9B9A6F: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9B9A74: FStStrNoPop var_A0
  loc_9B9A77: FLdPr Me
  loc_9B9A7A: MemStStrCopy
  loc_9B9A7E: FFreeStr var_98 = ""
  loc_9B9A85: FFree1Ad var_88
  loc_9B9A88: FLdPr Me
  loc_9B9A8B: MemLdStr global_68
  loc_9B9A8E: LitStr vbNullString
  loc_9B9A91: NeStr
  loc_9B9A93: BranchF loc_9B9ABD
  loc_9B9A96: LitI4 0
  loc_9B9A9B: FLdPr Me
  loc_9B9A9E: MemLdStr global_68
  loc_9B9AA1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9B9AA6: FLdPr Me
  loc_9B9AA9: VCallAd Control_ID_DetaImpuTxt
  loc_9B9AAC: CVarAd
  loc_9B9AB0: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9B9AB5: FFree1Var var_B0 = ""
  loc_9B9AB8: LitI2_Byte &HFF
  loc_9B9ABA: IStI2 Cancel
  loc_9B9ABD: ExitProcHresult
  loc_9B9ABE: FFreeStr  = ""
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B78D14
  'Data Table: 4ECA40
  loc_B780D4: ILdRf Button
  loc_B780D7: FStAd var_88 
  loc_B780DB: FLdRfVar var_8C
  loc_B780DE: FLdPr var_88
  loc_B780E1:  = Me.Key
  loc_B780E6: FLdZeroAd var_8C
  loc_B780E9: FStStr var_90
  loc_B780EC: ILdRf var_90
  loc_B780EF: LitStr "btnCrear"
  loc_B780F2: EqStr
  loc_B780F4: BranchF loc_B786CB
  loc_B780F7: FLdRfVar var_94
  loc_B780FA: FLdPr Me
  loc_B780FD: MemLdRfVar from_stack_1.global_52
  loc_B78100: NewIfNullPr clsimputacion
  loc_B78103: from_stack_1 = clsimputacion.RecordCount
  loc_B78108: ILdRf var_94
  loc_B7810B: LitI4 0
  loc_B78110: GtI4
  loc_B78111: BranchF loc_B786C8
  loc_B78114: LitI2_Byte 1
  loc_B78116: FLdPr Me
  loc_B78119: MemStUI1
  loc_B7811D: ILdRf Me
  loc_B78120: CastAd
  loc_B78123: FStAdFunc var_98
  loc_B78126: FLdRfVar var_98
  loc_B78129: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B7812E: FFree1Ad var_98
  loc_B78131: LitI4 0
  loc_B78136: LitI4 0
  loc_B7813B: FLdRfVar var_9C
  loc_B7813E: Redim
  loc_B78148: FLdPr Me
  loc_B7814B: VCallAd Control_ID_dgdABMS
  loc_B7814E: CVarAd
  loc_B78152: ParmAry1St
  loc_B78158: FLdRfVar var_9C
  loc_B7815B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B78160: FLdRfVar var_9C
  loc_B78163: Erase
  loc_B78164: ILdRf Me
  loc_B78167: CastAd
  loc_B7816A: FStAdFunc var_98
  loc_B7816D: FLdRfVar var_98
  loc_B78170: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B78175: FFree1Ad var_98
  loc_B78178: FLdPr Me
  loc_B7817B: MemLdStr global_76
  loc_B7817E: LitStr vbNullString
  loc_B78181: NeStr
  loc_B78183: FLdRfVar var_94
  loc_B78186: FLdPr Me
  loc_B78189: MemLdRfVar from_stack_1.global_52
  loc_B7818C: NewIfNullPr clsimputacion
  loc_B7818F: from_stack_1 = clsimputacion.RecordCount
  loc_B78194: ILdRf var_94
  loc_B78197: LitI4 0
  loc_B7819C: GtI4
  loc_B7819D: AndI4
  loc_B7819E: BranchF loc_B783F1
  loc_B781A1: FLdRfVar var_AC
  loc_B781A4: FLdRfVar var_C4
  loc_B781A7: LitVarStr var_C0, "CodiInsu"
  loc_B781AC: PopAdLdVar
  loc_B781AD: FLdRfVar var_B0
  loc_B781B0: FLdRfVar var_98
  loc_B781B3: FLdPr Me
  loc_B781B6: MemLdRfVar from_stack_1.global_52
  loc_B781B9: NewIfNullPr clsimputacion
  loc_B781BC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B781C1: FLdPr var_98
  loc_B781C4:  = Me.Fields
  loc_B781C9: FLdPr var_B0
  loc_B781CC: from_stack_2 = Me.Item(from_stack_1)
  loc_B781D1: FLdPr var_C4
  loc_B781D4:  = Me.Value
  loc_B781D9: FLdRfVar var_AC
  loc_B781DC: CStrVarTmp
  loc_B781DD: CVarStr var_D4
  loc_B781E0: PopAdLdVar
  loc_B781E1: FLdPr Me
  loc_B781E4: VCallAd Control_ID_CodiInsuMsk
  loc_B781E7: FStAdFunc var_E8
  loc_B781EA: FLdPr var_E8
  loc_B781ED: LateIdSt
  loc_B781F2: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B781FD: FFreeVar var_AC = ""
  loc_B78204: FLdRfVar var_AC
  loc_B78207: FLdRfVar var_C4
  loc_B7820A: LitVarStr var_C0, "CodiPart"
  loc_B7820F: PopAdLdVar
  loc_B78210: FLdRfVar var_B0
  loc_B78213: FLdRfVar var_98
  loc_B78216: FLdPr Me
  loc_B78219: MemLdRfVar from_stack_1.global_52
  loc_B7821C: NewIfNullPr clsimputacion
  loc_B7821F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B78224: FLdPr var_98
  loc_B78227:  = Me.Fields
  loc_B7822C: FLdPr var_B0
  loc_B7822F: from_stack_2 = Me.Item(from_stack_1)
  loc_B78234: FLdPr var_C4
  loc_B78237:  = Me.Value
  loc_B7823C: FLdRfVar var_AC
  loc_B7823F: CStrVarTmp
  loc_B78240: CVarStr var_D4
  loc_B78243: PopAdLdVar
  loc_B78244: FLdPr Me
  loc_B78247: VCallAd Control_ID_CodiPartMsk
  loc_B7824A: FStAdFunc var_E8
  loc_B7824D: FLdPr var_E8
  loc_B78250: LateIdSt
  loc_B78255: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B78260: FFreeVar var_AC = ""
  loc_B78267: FLdRfVar var_AC
  loc_B7826A: FLdRfVar var_C4
  loc_B7826D: LitVarStr var_C0, "CodiOrga"
  loc_B78272: PopAdLdVar
  loc_B78273: FLdRfVar var_B0
  loc_B78276: FLdRfVar var_98
  loc_B78279: FLdPr Me
  loc_B7827C: MemLdRfVar from_stack_1.global_52
  loc_B7827F: NewIfNullPr clsimputacion
  loc_B78282: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B78287: FLdPr var_98
  loc_B7828A:  = Me.Fields
  loc_B7828F: FLdPr var_B0
  loc_B78292: from_stack_2 = Me.Item(from_stack_1)
  loc_B78297: FLdPr var_C4
  loc_B7829A:  = Me.Value
  loc_B7829F: FLdRfVar var_AC
  loc_B782A2: CStrVarTmp
  loc_B782A3: CVarStr var_D4
  loc_B782A6: PopAdLdVar
  loc_B782A7: FLdPr Me
  loc_B782AA: VCallAd Control_ID_CodiOrgaMsk
  loc_B782AD: FStAdFunc var_E8
  loc_B782B0: FLdPr var_E8
  loc_B782B3: LateIdSt
  loc_B782B8: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B782C3: FFreeVar var_AC = ""
  loc_B782CA: FLdRfVar var_AC
  loc_B782CD: FLdRfVar var_C4
  loc_B782D0: LitVarStr var_C0, "CodiFifu"
  loc_B782D5: PopAdLdVar
  loc_B782D6: FLdRfVar var_B0
  loc_B782D9: FLdRfVar var_98
  loc_B782DC: FLdPr Me
  loc_B782DF: MemLdRfVar from_stack_1.global_52
  loc_B782E2: NewIfNullPr clsimputacion
  loc_B782E5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B782EA: FLdPr var_98
  loc_B782ED:  = Me.Fields
  loc_B782F2: FLdPr var_B0
  loc_B782F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B782FA: FLdPr var_C4
  loc_B782FD:  = Me.Value
  loc_B78302: FLdRfVar var_AC
  loc_B78305: CStrVarTmp
  loc_B78306: CVarStr var_D4
  loc_B78309: PopAdLdVar
  loc_B7830A: FLdPr Me
  loc_B7830D: VCallAd Control_ID_CodiFifuMsk
  loc_B78310: FStAdFunc var_E8
  loc_B78313: FLdPr var_E8
  loc_B78316: LateIdSt
  loc_B7831B: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B78326: FFreeVar var_AC = ""
  loc_B7832D: FLdRfVar var_AC
  loc_B78330: FLdRfVar var_C4
  loc_B78333: LitVarStr var_C0, "ExorImpu"
  loc_B78338: PopAdLdVar
  loc_B78339: FLdRfVar var_B0
  loc_B7833C: FLdRfVar var_98
  loc_B7833F: FLdPr Me
  loc_B78342: MemLdRfVar from_stack_1.global_52
  loc_B78345: NewIfNullPr clsimputacion
  loc_B78348: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B7834D: FLdPr var_98
  loc_B78350:  = Me.Fields
  loc_B78355: FLdPr var_B0
  loc_B78358: from_stack_2 = Me.Item(from_stack_1)
  loc_B7835D: FLdPr var_C4
  loc_B78360:  = Me.Value
  loc_B78365: FLdRfVar var_AC
  loc_B78368: CStrVarTmp
  loc_B78369: CVarStr var_D4
  loc_B7836C: PopAdLdVar
  loc_B7836D: FLdPr Me
  loc_B78370: VCallAd Control_ID_ExorImpuMsk
  loc_B78373: FStAdFunc var_E8
  loc_B78376: FLdPr var_E8
  loc_B78379: LateIdSt
  loc_B7837E: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B78389: FFreeVar var_AC = ""
  loc_B78390: FLdRfVar var_AC
  loc_B78393: FLdRfVar var_C4
  loc_B78396: LitVarStr var_C0, "DetaImpu"
  loc_B7839B: PopAdLdVar
  loc_B7839C: FLdRfVar var_B0
  loc_B7839F: FLdRfVar var_98
  loc_B783A2: FLdPr Me
  loc_B783A5: MemLdRfVar from_stack_1.global_52
  loc_B783A8: NewIfNullPr clsimputacion
  loc_B783AB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B783B0: FLdPr var_98
  loc_B783B3:  = Me.Fields
  loc_B783B8: FLdPr var_B0
  loc_B783BB: from_stack_2 = Me.Item(from_stack_1)
  loc_B783C0: FLdPr var_C4
  loc_B783C3:  = Me.Value
  loc_B783C8: FLdRfVar var_AC
  loc_B783CB: CStrVarTmp
  loc_B783CC: FStStrNoPop var_8C
  loc_B783CF: FLdPr Me
  loc_B783D2: VCallAd Control_ID_DetaImpuTxt
  loc_B783D5: FStAdFunc var_E8
  loc_B783D8: FLdPr var_E8
  loc_B783DB: Me.Text = from_stack_1
  loc_B783E0: FFree1Str var_8C
  loc_B783E3: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B783EE: FFree1Var var_AC = ""
  loc_B783F1: FLdRfVar var_178
  loc_B783F4: FLdRfVar var_C4
  loc_B783F7: LitVarStr var_C0, "ExorImpu"
  loc_B783FC: PopAdLdVar
  loc_B783FD: FLdRfVar var_B0
  loc_B78400: FLdRfVar var_98
  loc_B78403: FLdPr Me
  loc_B78406: MemLdRfVar from_stack_1.global_52
  loc_B78409: NewIfNullPr clsimputacion
  loc_B7840C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B78411: FLdPr var_98
  loc_B78414:  = Me.Fields
  loc_B78419: FLdPr var_B0
  loc_B7841C: from_stack_2 = Me.Item(from_stack_1)
  loc_B78421: FLdPr var_C4
  loc_B78424:  = Me.Value
  loc_B78429: FLdRfVar var_188
  loc_B7842C: FLdRfVar var_F0
  loc_B7842F: LitVarStr var_E4, "CodiNope"
  loc_B78434: PopAdLdVar
  loc_B78435: FLdRfVar var_EC
  loc_B78438: FLdRfVar var_E8
  loc_B7843B: FLdPr Me
  loc_B7843E: MemLdRfVar from_stack_1.global_52
  loc_B78441: NewIfNullPr clsimputacion
  loc_B78444: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B78449: FLdPr var_E8
  loc_B7844C:  = Me.Fields
  loc_B78451: FLdPr var_EC
  loc_B78454: from_stack_2 = Me.Item(from_stack_1)
  loc_B78459: FLdPr var_F0
  loc_B7845C:  = Me.Value
  loc_B78461: FLdRfVar var_198
  loc_B78464: FLdRfVar var_10C
  loc_B78467: LitVarStr var_108, "Item"
  loc_B7846C: PopAdLdVar
  loc_B7846D: FLdRfVar var_F8
  loc_B78470: FLdRfVar var_F4
  loc_B78473: FLdPr Me
  loc_B78476: MemLdRfVar from_stack_1.global_52
  loc_B78479: NewIfNullPr clsimputacion
  loc_B7847C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B78481: FLdPr var_F4
  loc_B78484:  = Me.Fields
  loc_B78489: FLdPr var_F8
  loc_B7848C: from_stack_2 = Me.Item(from_stack_1)
  loc_B78491: FLdPr var_10C
  loc_B78494:  = Me.Value
  loc_B78499: FLdRfVar var_1A8
  loc_B7849C: FLdRfVar var_128
  loc_B7849F: LitVarStr var_124, "Altern"
  loc_B784A4: PopAdLdVar
  loc_B784A5: FLdRfVar var_114
  loc_B784A8: FLdRfVar var_110
  loc_B784AB: FLdPr Me
  loc_B784AE: MemLdRfVar from_stack_1.global_52
  loc_B784B1: NewIfNullPr clsimputacion
  loc_B784B4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B784B9: FLdPr var_110
  loc_B784BC:  = Me.Fields
  loc_B784C1: FLdPr var_114
  loc_B784C4: from_stack_2 = Me.Item(from_stack_1)
  loc_B784C9: FLdPr var_128
  loc_B784CC:  = Me.Value
  loc_B784D1: FLdRfVar var_1B8
  loc_B784D4: FLdRfVar var_144
  loc_B784D7: LitVarStr var_140, "CodiOrco"
  loc_B784DC: PopAdLdVar
  loc_B784DD: FLdRfVar var_130
  loc_B784E0: FLdRfVar var_12C
  loc_B784E3: FLdPr Me
  loc_B784E6: MemLdRfVar from_stack_1.global_52
  loc_B784E9: NewIfNullPr clsimputacion
  loc_B784EC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B784F1: FLdPr var_12C
  loc_B784F4:  = Me.Fields
  loc_B784F9: FLdPr var_130
  loc_B784FC: from_stack_2 = Me.Item(from_stack_1)
  loc_B78501: FLdPr var_144
  loc_B78504:  = Me.Value
  loc_B78509: FLdRfVar var_1C8
  loc_B7850C: FLdRfVar var_160
  loc_B7850F: LitVarStr var_15C, "CodiRece"
  loc_B78514: PopAdLdVar
  loc_B78515: FLdRfVar var_14C
  loc_B78518: FLdRfVar var_148
  loc_B7851B: FLdPr Me
  loc_B7851E: MemLdRfVar from_stack_1.global_52
  loc_B78521: NewIfNullPr clsimputacion
  loc_B78524: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B78529: FLdPr var_148
  loc_B7852C:  = Me.Fields
  loc_B78531: FLdPr var_14C
  loc_B78534: from_stack_2 = Me.Item(from_stack_1)
  loc_B78539: FLdPr var_160
  loc_B7853C:  = Me.Value
  loc_B78541: FLdPr Me
  loc_B78544: VCallAd Control_ID_CodiPartMsk
  loc_B78547: FStAdFunc var_164
  loc_B7854A: FLdPr var_164
  loc_B7854D: LateIdLdVar var_AC DispID_22 0
  loc_B78554: PopAd
  loc_B78556: FLdPr Me
  loc_B78559: VCallAd Control_ID_CodiOrgaMsk
  loc_B7855C: FStAdFunc var_168
  loc_B7855F: FLdPr var_168
  loc_B78562: LateIdLdVar var_D4 DispID_22 0
  loc_B78569: PopAd
  loc_B7856B: FLdRfVar var_1D4
  loc_B7856E: FLdRfVar var_D4
  loc_B78571: CStrVarTmp
  loc_B78572: FStStrNoPop var_1D0
  loc_B78575: FLdRfVar var_AC
  loc_B78578: CStrVarTmp
  loc_B78579: FStStrNoPop var_1CC
  loc_B7857C: FLdRfVar var_1C8
  loc_B7857F: CI2Var
  loc_B78580: FLdRfVar var_1B8
  loc_B78583: CI2Var
  loc_B78584: FLdRfVar var_1A8
  loc_B78587: CI2Var
  loc_B78588: FLdRfVar var_198
  loc_B7858B: CI2Var
  loc_B7858C: FLdRfVar var_188
  loc_B7858F: CI4Var
  loc_B78591: FLdRfVar var_178
  loc_B78594: CStrVarTmp
  loc_B78595: FStStrNoPop var_8C
  loc_B78598: LitI2_Byte 1
  loc_B7859A: ImpAdLdI2 MemVar_C3D064
  loc_B7859D: FLdPr Me
  loc_B785A0: MemLdRfVar from_stack_1.global_52
  loc_B785A3: NewIfNullPr clsimputacion
  loc_B785A6: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_B785AB: FLdZeroAd var_1D4
  loc_B785AE: CVarStr var_1E4
  loc_B785B1: PopAdLdVar
  loc_B785B2: FLdPr Me
  loc_B785B5: VCallAd Control_ID_FechImpuMsk
  loc_B785B8: FStAdFunc var_1F8
  loc_B785BB: FLdPr var_1F8
  loc_B785BE: LateIdSt
  loc_B785C3: FFreeStr var_8C = "": var_1CC = ""
  loc_B785CC: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_164 = "": var_168 = "": var_C4 = "": var_F0 = "": var_10C = "": var_128 = "": var_144 = "": var_160 = ""
  loc_B785F9: FFreeVar var_AC = "": var_D4 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = ""
  loc_B7860E: FLdPr Me
  loc_B78611: VCallAd Control_ID_FechImpuMsk
  loc_B78614: FStAdFunc var_98
  loc_B78617: FLdPr var_98
  loc_B7861A: LateIdLdVar var_AC DispID_15 0
  loc_B78621: CStrVarTmp
  loc_B78622: CVarStr var_D4
  loc_B78625: PopAdLdVar
  loc_B78626: FLdPr Me
  loc_B78629: VCallAd Control_ID_FechImpuMsk
  loc_B7862C: FStAdFunc var_B0
  loc_B7862F: FLdPr var_B0
  loc_B78632: LateIdSt
  loc_B78637: FFreeAd var_98 = ""
  loc_B7863E: FFreeVar var_AC = ""
  loc_B78645: LitI4 0
  loc_B7864A: LitI4 5
  loc_B7864F: FLdRfVar var_9C
  loc_B78652: Redim
  loc_B7865C: FLdPr Me
  loc_B7865F: VCallAd Control_ID_CodiPartMsk
  loc_B78662: CVarAd
  loc_B78666: ParmAry1St
  loc_B7866C: FLdPr Me
  loc_B7866F: VCallAd Control_ID_CodiOrgaMsk
  loc_B78672: CVarAd
  loc_B78676: ParmAry1St
  loc_B7867C: FLdPr Me
  loc_B7867F: VCallAd Control_ID_CodiFifuMsk
  loc_B78682: CVarAd
  loc_B78686: ParmAry1St
  loc_B7868C: FLdPr Me
  loc_B7868F: VCallAd Control_ID_DetaImpuTxt
  loc_B78692: CVarAd
  loc_B78696: ParmAry1St
  loc_B7869C: FLdPr Me
  loc_B7869F: VCallAd Control_ID_FechImpuMsk
  loc_B786A2: CVarAd
  loc_B786A6: ParmAry1St
  loc_B786AC: FLdPr Me
  loc_B786AF: VCallAd Control_ID_CodiUngaTxt
  loc_B786B2: CVarAd
  loc_B786B6: ParmAry1St
  loc_B786BC: FLdRfVar var_9C
  loc_B786BF: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B786C4: FLdRfVar var_9C
  loc_B786C7: Erase
  loc_B786C8: Branch loc_B78D11
  loc_B786CB: ILdRf var_90
  loc_B786CE: LitStr "btnModificar"
  loc_B786D1: EqStr
  loc_B786D3: BranchF loc_B786D9
  loc_B786D6: Branch loc_B78D11
  loc_B786D9: ILdRf var_90
  loc_B786DC: LitStr "btnEliminar"
  loc_B786DF: EqStr
  loc_B786E1: BranchF loc_B786E7
  loc_B786E4: Branch loc_B78D11
  loc_B786E7: ILdRf var_90
  loc_B786EA: LitStr "btnGuardar"
  loc_B786ED: EqStr
  loc_B786EF: BranchF loc_B78BA9
  loc_B786F2: LitStr vbNullString
  loc_B786F5: FLdPr Me
  loc_B786F8: MemStStrCopy
  loc_B786FC: LitI2_Byte 0
  loc_B786FE: PopTmpLdAd2 var_1FA
  loc_B78701: from_stack_2v = CodiPartMsk_UnknownEvent_8(from_stack_1v)
  loc_B78706: FLdPr Me
  loc_B78709: MemLdStr global_68
  loc_B7870C: LitStr vbNullString
  loc_B7870F: NeStr
  loc_B78711: BranchF loc_B78715
  loc_B78714: ExitProcHresult
  loc_B78715: LitI2_Byte 0
  loc_B78717: PopTmpLdAd2 var_1FA
  loc_B7871A: Call CodiOrgaMsk_UnknownEvent_8()
  loc_B7871F: FLdPr Me
  loc_B78722: MemLdStr global_68
  loc_B78725: LitStr vbNullString
  loc_B78728: NeStr
  loc_B7872A: BranchF loc_B7872E
  loc_B7872D: ExitProcHresult
  loc_B7872E: LitI2_Byte 0
  loc_B78730: PopTmpLdAd2 var_1FA
  loc_B78733: from_stack_2v = CodiFifuMsk_UnknownEvent_8(from_stack_1v)
  loc_B78738: FLdPr Me
  loc_B7873B: MemLdStr global_68
  loc_B7873E: LitStr vbNullString
  loc_B78741: NeStr
  loc_B78743: BranchF loc_B78747
  loc_B78746: ExitProcHresult
  loc_B78747: LitI2_Byte 0
  loc_B78749: PopTmpLdAd2 var_1FA
  loc_B7874C: Call DetaImpuTxt_Validate(from_stack_1v)
  loc_B78751: FLdPr Me
  loc_B78754: MemLdStr global_68
  loc_B78757: LitStr vbNullString
  loc_B7875A: NeStr
  loc_B7875C: BranchF loc_B78760
  loc_B7875F: ExitProcHresult
  loc_B78760: LitI2_Byte 0
  loc_B78762: PopTmpLdAd2 var_1FA
  loc_B78765: Call FechImpuMsk_UnknownEvent_8()
  loc_B7876A: FLdPr Me
  loc_B7876D: MemLdStr global_68
  loc_B78770: LitStr vbNullString
  loc_B78773: NeStr
  loc_B78775: BranchF loc_B78779
  loc_B78778: ExitProcHresult
  loc_B78779: LitI2_Byte 0
  loc_B7877B: PopTmpLdAd2 var_1FA
  loc_B7877E: Call CodiUngaTxt_Validate(from_stack_1v)
  loc_B78783: FLdPr Me
  loc_B78786: MemLdStr global_68
  loc_B78789: LitStr vbNullString
  loc_B7878C: NeStr
  loc_B7878E: BranchF loc_B78792
  loc_B78791: ExitProcHresult
  loc_B78792: FLdRfVar var_D4
  loc_B78795: FLdRfVar var_C4
  loc_B78798: LitVarStr var_C0, "CodiPart"
  loc_B7879D: PopAdLdVar
  loc_B7879E: FLdRfVar var_B0
  loc_B787A1: FLdRfVar var_98
  loc_B787A4: FLdPr Me
  loc_B787A7: MemLdRfVar from_stack_1.global_52
  loc_B787AA: NewIfNullPr clsimputacion
  loc_B787AD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B787B2: FLdPr var_98
  loc_B787B5:  = Me.Fields
  loc_B787BA: FLdPr var_B0
  loc_B787BD: from_stack_2 = Me.Item(from_stack_1)
  loc_B787C2: FLdPr var_C4
  loc_B787C5:  = Me.Value
  loc_B787CA: FLdRfVar var_D4
  loc_B787CD: FLdPr Me
  loc_B787D0: VCallAd Control_ID_CodiPartMsk
  loc_B787D3: FStAdFunc var_E8
  loc_B787D6: FLdPr var_E8
  loc_B787D9: LateIdLdVar var_AC DispID_22 0
  loc_B787E0: CStrVarTmp
  loc_B787E1: CVarStr var_178
  loc_B787E4: HardType
  loc_B787E5: EqVar var_188
  loc_B787E9: FLdRfVar var_1A8
  loc_B787EC: FLdRfVar var_F4
  loc_B787EF: LitVarStr var_E4, "CodiOrga"
  loc_B787F4: PopAdLdVar
  loc_B787F5: FLdRfVar var_F0
  loc_B787F8: FLdRfVar var_EC
  loc_B787FB: FLdPr Me
  loc_B787FE: MemLdRfVar from_stack_1.global_52
  loc_B78801: NewIfNullPr clsimputacion
  loc_B78804: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B78809: FLdPr var_EC
  loc_B7880C:  = Me.Fields
  loc_B78811: FLdPr var_F0
  loc_B78814: from_stack_2 = Me.Item(from_stack_1)
  loc_B78819: FLdPr var_F4
  loc_B7881C:  = Me.Value
  loc_B78821: FLdRfVar var_1A8
  loc_B78824: FLdPr Me
  loc_B78827: VCallAd Control_ID_CodiOrgaMsk
  loc_B7882A: FStAdFunc var_F8
  loc_B7882D: FLdPr var_F8
  loc_B78830: LateIdLdVar var_198 DispID_22 0
  loc_B78837: CStrVarTmp
  loc_B78838: CVarStr var_1B8
  loc_B7883B: HardType
  loc_B7883C: EqVar var_1C8
  loc_B78840: AndVar var_1E4
  loc_B78844: FLdRfVar var_21C
  loc_B78847: FLdRfVar var_114
  loc_B7884A: LitVarStr var_108, "CodiFifu"
  loc_B7884F: PopAdLdVar
  loc_B78850: FLdRfVar var_110
  loc_B78853: FLdRfVar var_10C
  loc_B78856: FLdPr Me
  loc_B78859: MemLdRfVar from_stack_1.global_52
  loc_B7885C: NewIfNullPr clsimputacion
  loc_B7885F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B78864: FLdPr var_10C
  loc_B78867:  = Me.Fields
  loc_B7886C: FLdPr var_110
  loc_B7886F: from_stack_2 = Me.Item(from_stack_1)
  loc_B78874: FLdPr var_114
  loc_B78877:  = Me.Value
  loc_B7887C: FLdRfVar var_21C
  loc_B7887F: FLdPr Me
  loc_B78882: VCallAd Control_ID_CodiFifuMsk
  loc_B78885: FStAdFunc var_128
  loc_B78888: FLdPr var_128
  loc_B7888B: LateIdLdVar var_20C DispID_22 0
  loc_B78892: CStrVarTmp
  loc_B78893: CVarStr var_22C
  loc_B78896: HardType
  loc_B78897: EqVar var_23C
  loc_B7889B: AndVar var_24C
  loc_B7889F: FLdRfVar var_25C
  loc_B788A2: FLdRfVar var_144
  loc_B788A5: LitVarStr var_124, "CodiUnga"
  loc_B788AA: PopAdLdVar
  loc_B788AB: FLdRfVar var_130
  loc_B788AE: FLdRfVar var_12C
  loc_B788B1: FLdPr Me
  loc_B788B4: MemLdRfVar from_stack_1.global_52
  loc_B788B7: NewIfNullPr clsimputacion
  loc_B788BA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B788BF: FLdPr var_12C
  loc_B788C2:  = Me.Fields
  loc_B788C7: FLdPr var_130
  loc_B788CA: from_stack_2 = Me.Item(from_stack_1)
  loc_B788CF: FLdPr var_144
  loc_B788D2:  = Me.Value
  loc_B788D7: FLdRfVar var_25C
  loc_B788DA: FnCStrVar
  loc_B788DC: FStStrNoPop var_1CC
  loc_B788DF: FLdRfVar var_8C
  loc_B788E2: FLdPr Me
  loc_B788E5: VCallAd Control_ID_CodiUngaTxt
  loc_B788E8: FStAdFunc var_148
  loc_B788EB: FLdPr var_148
  loc_B788EE:  = Me.Text
  loc_B788F3: ILdRf var_8C
  loc_B788F6: EqStr
  loc_B788F8: CVarBoolI2 var_140
  loc_B788FC: AndVar var_26C
  loc_B78900: CBoolVarNull
  loc_B78902: FFreeStr var_1CC = ""
  loc_B78909: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_C4 = "": var_EC = "": var_F0 = "": var_F8 = "": var_F4 = "": var_10C = "": var_110 = "": var_128 = "": var_114 = "": var_12C = "": var_130 = "": var_144 = ""
  loc_B7892C: FFreeVar var_AC = "": var_D4 = "": var_178 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_20C = "": var_21C = "": var_22C = "": var_25C = ""
  loc_B78945: BranchF loc_B78956
  loc_B78948: LitI4 0
  loc_B7894D: LitStr "Debe cambiar la Partida, el Organigrama o el Programa de Gestión. Verifique..."
  loc_B78950: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B78955: ExitProcHresult
  loc_B78956: LitI2_Byte 0
  loc_B78958: PopTmpLdAd2 var_1FA
  loc_B7895B: Call ImunImpuTxt_Validate(from_stack_1v)
  loc_B78960: FLdPr Me
  loc_B78963: MemLdStr global_68
  loc_B78966: LitStr vbNullString
  loc_B78969: NeStr
  loc_B7896B: BranchF loc_B7896F
  loc_B7896E: ExitProcHresult
  loc_B7896F: LitI2_Byte 0
  loc_B78971: PopTmpLdAd2 var_1FA
  loc_B78974: Call ImpoImpuTxt_Validate(from_stack_1v)
  loc_B78979: FLdPr Me
  loc_B7897C: MemLdStr global_68
  loc_B7897F: LitStr vbNullString
  loc_B78982: NeStr
  loc_B78984: BranchF loc_B78988
  loc_B78987: ExitProcHresult
  loc_B78988: FLdPr Me
  loc_B7898B: MemLdUI1 global_64
  loc_B7898F: FStUI1 var_26E
  loc_B78993: FLdUI1
  loc_B78997: LitI2_Byte 1
  loc_B78999: EqI2
  loc_B7899A: BranchF loc_B78B8A
  loc_B7899D: FLdRfVar var_198
  loc_B789A0: FLdRfVar var_C4
  loc_B789A3: LitVarStr var_C0, "IdImpu"
  loc_B789A8: PopAdLdVar
  loc_B789A9: FLdRfVar var_B0
  loc_B789AC: FLdRfVar var_98
  loc_B789AF: FLdPr Me
  loc_B789B2: MemLdRfVar from_stack_1.global_52
  loc_B789B5: NewIfNullPr clsimputacion
  loc_B789B8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B789BD: FLdPr var_98
  loc_B789C0:  = Me.Fields
  loc_B789C5: FLdPr var_B0
  loc_B789C8: from_stack_2 = Me.Item(from_stack_1)
  loc_B789CD: FLdPr var_C4
  loc_B789D0:  = Me.Value
  loc_B789D5: FLdPr Me
  loc_B789D8: VCallAd Control_ID_FechImpuMsk
  loc_B789DB: FStAdFunc var_E8
  loc_B789DE: FLdPr var_E8
  loc_B789E1: LateIdLdVar var_AC DispID_15 0
  loc_B789E8: PopAd
  loc_B789EA: FLdPr Me
  loc_B789ED: VCallAd Control_ID_CodiPartMsk
  loc_B789F0: FStAdFunc var_EC
  loc_B789F3: FLdPr var_EC
  loc_B789F6: LateIdLdVar var_D4 DispID_22 0
  loc_B789FD: PopAd
  loc_B789FF: FLdPr Me
  loc_B78A02: VCallAd Control_ID_CodiOrgaMsk
  loc_B78A05: FStAdFunc var_F0
  loc_B78A08: FLdPr var_F0
  loc_B78A0B: LateIdLdVar var_178 DispID_22 0
  loc_B78A12: PopAd
  loc_B78A14: FLdRfVar var_8C
  loc_B78A17: FLdPr Me
  loc_B78A1A: VCallAd Control_ID_CodiUngaTxt
  loc_B78A1D: FStAdFunc var_F4
  loc_B78A20: FLdPr var_F4
  loc_B78A23:  = Me.Text
  loc_B78A28: FLdPr Me
  loc_B78A2B: VCallAd Control_ID_CodiFifuMsk
  loc_B78A2E: FStAdFunc var_F8
  loc_B78A31: FLdPr var_F8
  loc_B78A34: LateIdLdVar var_188 DispID_22 0
  loc_B78A3B: PopAd
  loc_B78A3D: FLdRfVar var_1CC
  loc_B78A40: FLdPrThis
  loc_B78A41: VCallAd Control_ID_ImpoImpuTxt
  loc_B78A44: FStAdFunc var_10C
  loc_B78A47: FLdPr var_10C
  loc_B78A4A:  = Me.Text
  loc_B78A4F: FLdRfVar var_94
  loc_B78A52: LitI2_Byte &HFF
  loc_B78A54: ILdRf var_1CC
  loc_B78A57: FLdRfVar var_188
  loc_B78A5A: CStrVarTmp
  loc_B78A5B: FStStrNoPop var_278
  loc_B78A5E: ILdRf var_8C
  loc_B78A61: FLdRfVar var_178
  loc_B78A64: CStrVarTmp
  loc_B78A65: FStStrNoPop var_274
  loc_B78A68: FLdRfVar var_D4
  loc_B78A6B: CStrVarTmp
  loc_B78A6C: FStStrNoPop var_1D4
  loc_B78A6F: FLdRfVar var_AC
  loc_B78A72: CStrVarTmp
  loc_B78A73: FStStrNoPop var_1D0
  loc_B78A76: FLdRfVar var_198
  loc_B78A79: CI4Var
  loc_B78A7B: FLdPr Me
  loc_B78A7E: MemLdRfVar from_stack_1.global_52
  loc_B78A81: NewIfNullPr clsimputacion
  loc_B78A84: from_stack_9v = clsimputacion.ReasignarDefinitivadeOC(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B78A89: ILdRf var_94
  loc_B78A8C: FLdPr Me
  loc_B78A8F: MemStI4 global_72
  loc_B78A92: FFreeStr var_1D0 = "": var_1D4 = "": var_274 = "": var_8C = "": var_278 = ""
  loc_B78AA1: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_10C = ""
  loc_B78AB6: FFreeVar var_AC = "": var_D4 = "": var_178 = "": var_188 = ""
  loc_B78AC3: LitI2_Byte &HFF
  loc_B78AC5: PopTmpLdAd2 var_27A
  loc_B78AC8: LitI2_Byte 0
  loc_B78ACA: PopTmpLdAd2 var_1FA
  loc_B78ACD: LitStr "¿Imprime el Volante de Imputación?"
  loc_B78AD0: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B78AD5: CI4UI1
  loc_B78AD6: LitI4 6
  loc_B78ADB: EqI4
  loc_B78ADC: BranchF loc_B78B87
  loc_B78ADF: ImpAdLdRf MemVar_C3D9BC
  loc_B78AE2: NewIfNullAd
  loc_B78AE5: FStAdNoPop
  loc_B78AE9: ImpAdLdRf MemVar_C44F9C
  loc_B78AEC: NewIfNullPr Me
  loc_B78AEF: Me.Global.Load from_stack_1
  loc_B78AF4: FFree1Ad var_98
  loc_B78AF7: ImpAdLdRf MemVar_C3D9BC
  loc_B78AFA: NewIfNullAd
  loc_B78AFD: CastAd
  loc_B78B00: FStAdFuncNoPop
  loc_B78B03: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B78B08: FFree1Ad var_98
  loc_B78B0B: FLdRfVar var_AC
  loc_B78B0E: FLdRfVar var_C4
  loc_B78B11: LitVarStr var_C0, "ExorImpu"
  loc_B78B16: PopAdLdVar
  loc_B78B17: FLdRfVar var_B0
  loc_B78B1A: FLdRfVar var_98
  loc_B78B1D: FLdPr Me
  loc_B78B20: MemLdRfVar from_stack_1.global_52
  loc_B78B23: NewIfNullPr clsimputacion
  loc_B78B26: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B78B2B: FLdPr var_98
  loc_B78B2E:  = Me.Fields
  loc_B78B33: FLdPr var_B0
  loc_B78B36: from_stack_2 = Me.Item(from_stack_1)
  loc_B78B3B: FLdPr var_C4
  loc_B78B3E:  = Me.Value
  loc_B78B43: FLdRfVar var_AC
  loc_B78B46: CStrVarTmp
  loc_B78B47: FStStrNoPop var_8C
  loc_B78B4A: ImpAdLdRf MemVar_C3D9BC
  loc_B78B4D: NewIfNullPr rptVolantedeImputaciones
  loc_B78B50: VCallAd Control_ID_cboExorImpu
  loc_B78B53: FStAdFunc var_E8
  loc_B78B56: FLdPr var_E8
  loc_B78B59: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B78B5E: FFree1Str var_8C
  loc_B78B61: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B78B6C: FFree1Var var_AC = ""
  loc_B78B6F: LitVar_Missing var_E4
  loc_B78B72: PopAdLdVar
  loc_B78B73: LitVarI4
  loc_B78B7B: PopAdLdVar
  loc_B78B7C: ImpAdLdRf MemVar_C3D9BC
  loc_B78B7F: NewIfNullPr rptVolantedeImputaciones
  loc_B78B82: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B78B87: Branch loc_B78BA1
  loc_B78B8A: FLdUI1
  loc_B78B8E: LitI2_Byte 2
  loc_B78B90: EqI2
  loc_B78B91: BranchF loc_B78B97
  loc_B78B94: Branch loc_B78BA1
  loc_B78B97: FLdUI1
  loc_B78B9B: LitI2_Byte 3
  loc_B78B9D: EqI2
  loc_B78B9E: BranchF loc_B78BA1
  loc_B78BA1: Call cmdCancelar_Click()
  loc_B78BA6: Branch loc_B78D11
  loc_B78BA9: ILdRf var_90
  loc_B78BAC: LitStr "btnCancelar"
  loc_B78BAF: EqStr
  loc_B78BB1: BranchF loc_B78BBC
  loc_B78BB4: Call cmdCancelar_Click()
  loc_B78BB9: Branch loc_B78D11
  loc_B78BBC: ILdRf var_90
  loc_B78BBF: LitStr "btnPrimero"
  loc_B78BC2: EqStr
  loc_B78BC4: BranchF loc_B78BD8
  loc_B78BC7: FLdPr Me
  loc_B78BCA: MemLdRfVar from_stack_1.global_52
  loc_B78BCD: NewIfNullPr clsimputacion
  loc_B78BD0: Call clsimputacion.MoveFirst()
  loc_B78BD5: Branch loc_B78D11
  loc_B78BD8: ILdRf var_90
  loc_B78BDB: LitStr "btnAnterior"
  loc_B78BDE: EqStr
  loc_B78BE0: BranchF loc_B78BF4
  loc_B78BE3: FLdPr Me
  loc_B78BE6: MemLdRfVar from_stack_1.global_52
  loc_B78BE9: NewIfNullPr clsimputacion
  loc_B78BEC: Call clsimputacion.MovePrevious()
  loc_B78BF1: Branch loc_B78D11
  loc_B78BF4: ILdRf var_90
  loc_B78BF7: LitStr "btnSiguiente"
  loc_B78BFA: EqStr
  loc_B78BFC: BranchF loc_B78C10
  loc_B78BFF: FLdPr Me
  loc_B78C02: MemLdRfVar from_stack_1.global_52
  loc_B78C05: NewIfNullPr clsimputacion
  loc_B78C08: Call clsimputacion.MoveNext()
  loc_B78C0D: Branch loc_B78D11
  loc_B78C10: ILdRf var_90
  loc_B78C13: LitStr "btnUltimo"
  loc_B78C16: EqStr
  loc_B78C18: BranchF loc_B78C2C
  loc_B78C1B: FLdPr Me
  loc_B78C1E: MemLdRfVar from_stack_1.global_52
  loc_B78C21: NewIfNullPr clsimputacion
  loc_B78C24: Call clsimputacion.MoveLast()
  loc_B78C29: Branch loc_B78D11
  loc_B78C2C: ILdRf var_90
  loc_B78C2F: LitStr "btnFiltrar"
  loc_B78C32: EqStr
  loc_B78C34: BranchF loc_B78C3A
  loc_B78C37: Branch loc_B78D11
  loc_B78C3A: ILdRf var_90
  loc_B78C3D: LitStr "btnBuscar"
  loc_B78C40: EqStr
  loc_B78C42: BranchF loc_B78C48
  loc_B78C45: Branch loc_B78D11
  loc_B78C48: ILdRf var_90
  loc_B78C4B: LitStr "btnImprimir"
  loc_B78C4E: EqStr
  loc_B78C50: BranchF loc_B78CBA
  loc_B78C53: ImpAdLdRf MemVar_C3D9BC
  loc_B78C56: NewIfNullAd
  loc_B78C59: CastAd
  loc_B78C5C: FStAdFuncNoPop
  loc_B78C5F: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B78C64: FFree1Ad var_98
  loc_B78C67: FLdPr Me
  loc_B78C6A: VCallAd Control_ID_ExorImpuMsk
  loc_B78C6D: FStAdFunc var_98
  loc_B78C70: FLdPr var_98
  loc_B78C73: LateIdLdVar var_AC DispID_15 0
  loc_B78C7A: CStrVarTmp
  loc_B78C7B: FStStrNoPop var_8C
  loc_B78C7E: ImpAdLdRf MemVar_C3D9BC
  loc_B78C81: NewIfNullPr rptVolantedeImputaciones
  loc_B78C84: VCallAd Control_ID_cboExorImpu
  loc_B78C87: FStAdFunc var_B0
  loc_B78C8A: FLdPr var_B0
  loc_B78C8D: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B78C92: FFree1Str var_8C
  loc_B78C95: FFreeAd var_98 = ""
  loc_B78C9C: FFree1Var var_AC = ""
  loc_B78C9F: LitVar_Missing var_E4
  loc_B78CA2: PopAdLdVar
  loc_B78CA3: LitVarI4
  loc_B78CAB: PopAdLdVar
  loc_B78CAC: ImpAdLdRf MemVar_C3D9BC
  loc_B78CAF: NewIfNullPr rptVolantedeImputaciones
  loc_B78CB2: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B78CB7: Branch loc_B78D11
  loc_B78CBA: ILdRf var_90
  loc_B78CBD: LitStr "btnAyuda"
  loc_B78CC0: EqStr
  loc_B78CC2: BranchF loc_B78CF1
  loc_B78CC5: LitVar_Missing var_188
  loc_B78CC8: LitVar_Missing var_178
  loc_B78CCB: LitVar_Missing var_D4
  loc_B78CCE: LitI4 0
  loc_B78CD3: LitVarStr var_C0, "Opcion no disponible en esta version."
  loc_B78CD8: FStVarCopyObj var_AC
  loc_B78CDB: FLdRfVar var_AC
  loc_B78CDE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B78CE3: FFreeVar var_AC = "": var_D4 = "": var_178 = ""
  loc_B78CEE: Branch loc_B78D11
  loc_B78CF1: ILdRf var_90
  loc_B78CF4: LitStr "btnSalir"
  loc_B78CF7: EqStr
  loc_B78CF9: BranchF loc_B78D11
  loc_B78CFC: ILdRf Me
  loc_B78CFF: FStAdNoPop
  loc_B78D03: ImpAdLdRf MemVar_C44F9C
  loc_B78D06: NewIfNullPr Me
  loc_B78D09: Me.Global.Unload from_stack_1
  loc_B78D0E: FFree1Ad var_98
  loc_B78D11: ExitProcHresult
  loc_B78D12: ILdRf var_37F8
End Sub
