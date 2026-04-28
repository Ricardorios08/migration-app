VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C0000C04E4C0A}#1.1#0"; "C:\Windows\SysWow64\TABCTL32.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmOrdendeCompraModificacion
  Caption = "Orden de Compra - Anulación y Modificación"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmOrdendeCompraModificacion.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 14385
  ClientHeight = 10065
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TabDlg.SSTab SSTab
    Left = 120
    Top = 3960
    Width = 14895
    Height = 3615
    TabIndex = 7
    OleObjectBlob = "frmOrdendeCompraModificacion.frx":08CA
    Begin VB.TextBox ExpeImpuGDEtxt
      ForeColor = &HFF0000&
      Left = 8160
      Top = 2070
      Width = 6495
      Height = 420
      TabIndex = 23
      MaxLength = 150
      DataField = "ExpeImpuGDE"
    End
    Begin VB.TextBox ExpeImpuTxt
      ForeColor = &HFF0000&
      Left = 9120
      Top = 577
      Width = 2295
      Height = 420
      TabIndex = 15
      MaxLength = 15
      DataField = "ExpeImpu"
    End
    Begin VB.TextBox SelloOrcoTxt
      Left = -72600
      Top = 1080
      Width = 2295
      Height = 420
      TabIndex = 37
      MaxLength = 8
      DataField = "SelloOrco"
    End
    Begin VB.TextBox AlivaOrcoTxt
      Left = -72600
      Top = 480
      Width = 2295
      Height = 420
      TabIndex = 36
      MaxLength = 4
      DataField = "AlivaOrco"
    End
    Begin VB.TextBox BajaMotiTxt
      ForeColor = &HFF0000&
      Left = -71715
      Top = 960
      Width = 11295
      Height = 420
      TabIndex = 30
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 50
      DataField = "BajaMoti"
    End
    Begin VB.TextBox DetaOrcoTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 1260
      Width = 11055
      Height = 735
      TabIndex = 19
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 200
      DataField = "DetaOrco"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2160
      Top = 2700
      Width = 1335
      Height = 360
      TabIndex = 25
      OleObjectBlob = "frmOrdendeCompraModificacion.frx":10CA
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 2160
      Top = 3180
      Width = 1815
      Height = 360
      TabIndex = 28
      OleObjectBlob = "frmOrdendeCompraModificacion.frx":1166
      DataField = "CucuPers"
    End
    Begin MSMask.MaskEdBox FeanOrcoMsk
      Left = -74100
      Top = 960
      Width = 1335
      Height = 360
      TabIndex = 31
      OleObjectBlob = "frmOrdendeCompraModificacion.frx":1204
      DataField = "FeanOrco"
    End
    Begin MSMask.MaskEdBox FechOrcoMsk
      Left = 3000
      Top = 607
      Width = 1335
      Height = 360
      TabIndex = 11
      OleObjectBlob = "frmOrdendeCompraModificacion.frx":12B4
      DataField = "FechOrco"
    End
    Begin MSMask.MaskEdBox FenoOrcoMsk
      Left = 6120
      Top = 600
      Width = 1335
      Height = 360
      TabIndex = 13
      OleObjectBlob = "frmOrdendeCompraModificacion.frx":1364
      DataField = "FenoOrco"
    End
    Begin VB.Label Label12
      Caption = "Total:"
      Left = 11880
      Top = 637
      Width = 585
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
    End
    Begin VB.Label lblTotalOrden
      Left = 12600
      Top = 600
      Width = 2025
      Height = 375
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      DataFormat = 80
    End
    Begin VB.Label CodiOrcoLbl
      Left = 960
      Top = 600
      Width = 975
      Height = 375
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      DataField = "CodiOrco"
    End
    Begin VB.Label Label6
      Caption = "Fecha:"
      Left = 2160
      Top = 637
      Width = 735
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
    Begin VB.Label Label13
      Caption = "Expediente:"
      Left = 7800
      Top = 637
      Width = 1260
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "O. C.:"
      Left = 120
      Top = 637
      Width = 690
      Height = 300
      TabIndex = 8
      AutoSize = -1  'True
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
      Caption = "Notificación:"
      Left = 4680
      Top = 630
      Width = 1290
      Height = 300
      TabIndex = 12
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
      Caption = "Importe de Sellos:"
      Left = -74640
      Top = 1080
      Width = 1935
      Height = 375
      TabIndex = 35
    End
    Begin VB.Label Label7
      Caption = "Alícuota:"
      Left = -73680
      Top = 600
      Width = 975
      Height = 375
      TabIndex = 34
    End
    Begin VB.Label Label4
      Caption = "Detalle:"
      Left = -72555
      Top = 960
      Width = 810
      Height = 300
      TabIndex = 33
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Fecha:"
      Left = -74880
      Top = 960
      Width = 735
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
    Begin VB.Label DetaOrgaLbl
      Left = 3600
      Top = 2700
      Width = 7815
      Height = 360
      TabIndex = 26
      BorderStyle = 1 'Fixed Single
      DataField = "DetaOrga"
    End
    Begin VB.Label Label14
      Caption = "Área Solicitante:"
      Left = 360
      Top = 2700
      Width = 1740
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
    Begin VB.Label Label15
      Caption = "Proveedor:"
      Left = 960
      Top = 3180
      Width = 1140
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
    Begin VB.Label DetaProvLbl
      Left = 4080
      Top = 3180
      Width = 10455
      Height = 360
      TabIndex = 29
      BorderStyle = 1 'Fixed Single
      DataField = "DetaProv"
    End
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 1305
      Top = 1260
      Width = 810
      Height = 300
      TabIndex = 18
      AutoSize = -1  'True
    End
    Begin VB.Label Label11
      Caption = "Tipo de Compra:"
      Left = 360
      Top = 2100
      Width = 1740
      Height = 300
      TabIndex = 20
      AutoSize = -1  'True
    End
    Begin VB.Label DetaTicoLbl
      Left = 2760
      Top = 2100
      Width = 5175
      Height = 360
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
      DataField = "DetaTico"
    End
    Begin VB.Label CodiTicoLbl
      Left = 2160
      Top = 2100
      Width = 495
      Height = 375
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      DataField = "CodiTico"
    End
  End
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
      OleObjectBlob = "frmOrdendeCompraModificacion.frx":1414
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 14895
    Height = 2175
    TabIndex = 3
    OleObjectBlob = "frmOrdendeCompraModificacion.frx":149C
  End
  Begin MSFlexGridLib.MSFlexGrid ItemCompraFlex
    Left = 120
    Top = 7680
    Width = 14895
    Height = 2415
    TabIndex = 4
    OleObjectBlob = "frmOrdendeCompraModificacion.frx":1CFE
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmOrdendeCompraModificacion.frx":1DEA
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14385
    Height = 660
    TabIndex = 5
    OleObjectBlob = "frmOrdendeCompraModificacion.frx":9968
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 6
      TabStop = 0   'False
      Picture = "frmOrdendeCompraModificacion.frx":9EC4
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmOrdendeCompraModificacion"


Private Sub ItemCompraFlex_UnknownEvent_0 '9580D0
  'Data Table: 4DABCC
  loc_9580B8: FLdPr Me
  loc_9580BB: VCallAd Control_ID_ItemCompraFlex
  loc_9580BE: FStAdFunc var_88
  loc_9580C1: FLdRfVar var_88
  loc_9580C4: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_9580C9: FFree1Ad var_88
  loc_9580CC: ExitProcHresult
End Sub

Private Sub ItemCompraFlex_UnknownEvent_1 '9620D4
  'Data Table: 4DABCC
  loc_9620BC: FLdPr Me
  loc_9620BF: VCallAd Control_ID_ItemCompraFlex
  loc_9620C2: FStAdFunc var_88
  loc_9620C5: FLdRfVar var_88
  loc_9620C8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9620CD: FFree1Ad var_88
  loc_9620D0: ExitProcHresult
End Sub

Private Sub ItemCompraFlex_UnknownEvent_8 'A73998
  'Data Table: 4DABCC
  loc_A73608: FLdPr Me
  loc_A7360B: MemLdUI1 global_60
  loc_A7360F: CI2UI1
  loc_A73611: LitI2_Byte 0
  loc_A73613: NeI2
  loc_A73614: BranchF loc_A73996
  loc_A73617: FLdPr Me
  loc_A7361A: VCallAd Control_ID_ItemCompraFlex
  loc_A7361D: FStAdFunc var_88
  loc_A73620: FLdPr var_88
  loc_A73623: LateIdLdVar var_98 DispID_13 -32767
  loc_A7362A: CBoolVar
  loc_A7362C: FFree1Ad var_88
  loc_A7362F: FFree1Var var_98 = ""
  loc_A73632: BranchF loc_A73996
  loc_A73635: FLdPr Me
  loc_A73638: VCallAd Control_ID_ItemCompraFlex
  loc_A7363B: FStAdFunc var_88
  loc_A7363E: FLdPr var_88
  loc_A73641: LateIdLdVar var_98 DispID_4 0
  loc_A73648: CI4Var
  loc_A7364A: LitI4 1
  loc_A7364F: GtI4
  loc_A73650: FFree1Ad var_88
  loc_A73653: FFree1Var var_98 = ""
  loc_A73656: BranchF loc_A73996
  loc_A73659: FLdPr Me
  loc_A7365C: VCallAd Control_ID_ItemCompraFlex
  loc_A7365F: FStAdFunc var_88
  loc_A73662: FLdPr var_88
  loc_A73665: LateIdLdVar var_98 DispID_10 0
  loc_A7366C: CI4Var
  loc_A7366E: CVarI4
  loc_A73672: PopAdLdVar
  loc_A73673: LitVarI4
  loc_A7367B: PopAdLdVar
  loc_A7367C: FLdPr Me
  loc_A7367F: VCallAd Control_ID_ItemCompraFlex
  loc_A73682: FStAdFunc var_DC
  loc_A73685: FLdPr var_DC
  loc_A73688: LateIdCallLdVar
  loc_A73692: PopAd
  loc_A73694: LitStr "0"
  loc_A73697: LitI2_Byte &HFF
  loc_A73699: LitI2_Byte 0
  loc_A7369B: LitI2_Byte 0
  loc_A7369D: FLdRfVar var_EC
  loc_A736A0: CStrVarTmp
  loc_A736A1: FStStrNoPop var_F0
  loc_A736A4: LitStr "Cantidad"
  loc_A736A7: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_A736AC: FStStrNoPop var_F4
  loc_A736AF: FLdPr Me
  loc_A736B2: MemStStrCopy
  loc_A736B6: FFreeStr var_F0 = ""
  loc_A736BD: FFreeAd var_88 = ""
  loc_A736C4: FFreeVar var_98 = ""
  loc_A736CB: FLdPr Me
  loc_A736CE: MemLdStr global_64
  loc_A736D1: LitStr vbNullString
  loc_A736D4: NeStr
  loc_A736D6: BranchF loc_A73706
  loc_A736D9: LitI4 0
  loc_A736DE: FLdPr Me
  loc_A736E1: MemLdStr global_64
  loc_A736E4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A736E9: FLdPr Me
  loc_A736EC: VCallAd Control_ID_ItemCompraFlex
  loc_A736EF: FStAdFunc var_88
  loc_A736F2: FLdPr var_88
  loc_A736F5: LateIdCall
  loc_A736FD: FFree1Ad var_88
  loc_A73700: LitI2_Byte &HFF
  loc_A73702: IStI2 KeyAscii
  loc_A73705: ExitProcHresult
  loc_A73706: FLdPr Me
  loc_A73709: VCallAd Control_ID_ItemCompraFlex
  loc_A7370C: FStAdFunc var_88
  loc_A7370F: FLdPr var_88
  loc_A73712: LateIdLdVar var_98 DispID_10 0
  loc_A73719: CI4Var
  loc_A7371B: CVarI4
  loc_A7371F: PopAdLdVar
  loc_A73720: LitVarI4
  loc_A73728: PopAdLdVar
  loc_A73729: FLdPr Me
  loc_A7372C: VCallAd Control_ID_ItemCompraFlex
  loc_A7372F: FStAdFunc var_DC
  loc_A73732: FLdPr var_DC
  loc_A73735: LateIdCallLdVar
  loc_A7373F: PopAd
  loc_A73741: LitStr "0"
  loc_A73744: LitI2_Byte &HFF
  loc_A73746: LitI2_Byte 0
  loc_A73748: LitI2_Byte 0
  loc_A7374A: FLdRfVar var_EC
  loc_A7374D: CStrVarTmp
  loc_A7374E: FStStrNoPop var_F0
  loc_A73751: LitStr "Importe Unitario"
  loc_A73754: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_A73759: FStStrNoPop var_F4
  loc_A7375C: FLdPr Me
  loc_A7375F: MemStStrCopy
  loc_A73763: FFreeStr var_F0 = ""
  loc_A7376A: FFreeAd var_88 = ""
  loc_A73771: FFreeVar var_98 = ""
  loc_A73778: FLdPr Me
  loc_A7377B: MemLdStr global_64
  loc_A7377E: LitStr vbNullString
  loc_A73781: NeStr
  loc_A73783: BranchF loc_A737B3
  loc_A73786: LitI4 0
  loc_A7378B: FLdPr Me
  loc_A7378E: MemLdStr global_64
  loc_A73791: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A73796: FLdPr Me
  loc_A73799: VCallAd Control_ID_ItemCompraFlex
  loc_A7379C: FStAdFunc var_88
  loc_A7379F: FLdPr var_88
  loc_A737A2: LateIdCall
  loc_A737AA: FFree1Ad var_88
  loc_A737AD: LitI2_Byte &HFF
  loc_A737AF: IStI2 KeyAscii
  loc_A737B2: ExitProcHresult
  loc_A737B3: FLdPr Me
  loc_A737B6: VCallAd Control_ID_ItemCompraFlex
  loc_A737B9: FStAdFunc var_88
  loc_A737BC: FLdPr var_88
  loc_A737BF: LateIdLdVar var_98 DispID_10 0
  loc_A737C6: CI4Var
  loc_A737C8: CVarI4
  loc_A737CC: PopAdLdVar
  loc_A737CD: LitVarI4
  loc_A737D5: PopAdLdVar
  loc_A737D6: FLdPr Me
  loc_A737D9: VCallAd Control_ID_ItemCompraFlex
  loc_A737DC: FStAdFunc var_DC
  loc_A737DF: FLdPr var_DC
  loc_A737E2: LateIdCallLdVar
  loc_A737EC: CStrVarTmp
  loc_A737ED: CVarStr var_104
  loc_A737F0: ImpAdCallI2 IsNumeric()
  loc_A737F5: FLdPr Me
  loc_A737F8: VCallAd Control_ID_ItemCompraFlex
  loc_A737FB: FStAdFunc var_108
  loc_A737FE: FLdPr var_108
  loc_A73801: LateIdLdVar var_118 DispID_10 0
  loc_A73808: CI4Var
  loc_A7380A: CVarI4
  loc_A7380E: PopAdLdVar
  loc_A7380F: LitVarI4
  loc_A73817: PopAdLdVar
  loc_A73818: FLdPr Me
  loc_A7381B: VCallAd Control_ID_ItemCompraFlex
  loc_A7381E: FStAdFunc var_15C
  loc_A73821: FLdPr var_15C
  loc_A73824: LateIdCallLdVar
  loc_A7382E: CStrVarTmp
  loc_A7382F: CVarStr var_17C
  loc_A73832: ImpAdCallI2 IsNumeric()
  loc_A73837: AndI4
  loc_A73838: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_A73843: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_118 = "": var_16C = ""
  loc_A73852: BranchF loc_A73996
  loc_A73855: FLdPr Me
  loc_A73858: VCallAd Control_ID_ItemCompraFlex
  loc_A7385B: FStAdFunc var_88
  loc_A7385E: FLdPr var_88
  loc_A73861: LateIdLdVar var_98 DispID_10 0
  loc_A73868: CI4Var
  loc_A7386A: CVarI4
  loc_A7386E: PopAdLdVar
  loc_A7386F: LitVarI4
  loc_A73877: PopAdLdVar
  loc_A73878: FLdPr Me
  loc_A7387B: VCallAd Control_ID_ItemCompraFlex
  loc_A7387E: FStAdFunc var_DC
  loc_A73881: FLdPr var_DC
  loc_A73884: LateIdCallLdVar
  loc_A7388E: PopAd
  loc_A73890: LitI4 3
  loc_A73895: FLdRfVar var_EC
  loc_A73898: CStrVarTmp
  loc_A73899: FStStrNoPop var_F0
  loc_A7389C: CR8Str
  loc_A7389E: CVarR8
  loc_A738A2: FLdRfVar var_118
  loc_A738A5: ImpAdCallFPR4  = Round(, )
  loc_A738AA: FLdPr Me
  loc_A738AD: VCallAd Control_ID_ItemCompraFlex
  loc_A738B0: FStAdFunc var_108
  loc_A738B3: FLdPr var_108
  loc_A738B6: LateIdLdVar var_16C DispID_10 0
  loc_A738BD: CI4Var
  loc_A738BF: CVarI4
  loc_A738C3: PopAdLdVar
  loc_A738C4: LitVarI4
  loc_A738CC: PopAdLdVar
  loc_A738CD: FLdPr Me
  loc_A738D0: VCallAd Control_ID_ItemCompraFlex
  loc_A738D3: FStAdFunc var_15C
  loc_A738D6: FLdPr var_15C
  loc_A738D9: LateIdCallLdVar
  loc_A738E3: PopAd
  loc_A738E5: LitI4 3
  loc_A738EA: FLdRfVar var_17C
  loc_A738ED: CStrVarTmp
  loc_A738EE: FStStrNoPop var_F4
  loc_A738F1: CR8Str
  loc_A738F3: CVarR8
  loc_A738F7: FLdRfVar var_1BC
  loc_A738FA: ImpAdCallFPR4  = Round(, )
  loc_A738FF: FLdPr Me
  loc_A73902: VCallAd Control_ID_ItemCompraFlex
  loc_A73905: FStAdFunc var_200
  loc_A73908: FLdPr var_200
  loc_A7390B: LateIdLdVar var_210 DispID_10 0
  loc_A73912: CI4Var
  loc_A73914: CVarI4
  loc_A73918: PopAdLdVar
  loc_A73919: LitVarI4
  loc_A73921: PopAdLdVar
  loc_A73922: LitI4 1
  loc_A73927: LitI4 1
  loc_A7392C: LitVarStr var_1EC, "###,###,##0.000"
  loc_A73931: FStVarCopyObj var_1FC
  loc_A73934: FLdRfVar var_1FC
  loc_A73937: FLdRfVar var_118
  loc_A7393A: FLdRfVar var_1BC
  loc_A7393D: MulVar var_1CC
  loc_A73941: FStVar var_1DC
  loc_A73945: FLdRfVar var_1DC
  loc_A73948: ImpAdCallI2 Format$(, )
  loc_A7394D: CVarStr var_260
  loc_A73950: PopAdLdVar
  loc_A73951: FLdPr Me
  loc_A73954: VCallAd Control_ID_ItemCompraFlex
  loc_A73957: FStAdFunc var_274
  loc_A7395A: FLdPr var_274
  loc_A7395D: LateIdCallSt
  loc_A73965: FFreeStr var_F0 = ""
  loc_A7396C: FFreeAd var_88 = "": var_DC = "": var_108 = "": var_15C = "": var_200 = ""
  loc_A7397B: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_16C = "": var_17C = "": var_1AC = "": var_118 = "": var_1BC = "": var_1DC = "": var_1FC = "": var_210 = ""
  loc_A73996: ExitProcHresult
End Sub

Private Sub ItemCompraFlex_DblClick() '9E4ABC
  'Data Table: 4DABCC
  loc_9E49AC: FLdPr Me
  loc_9E49AF: MemLdUI1 global_60
  loc_9E49B3: CI2UI1
  loc_9E49B5: LitI2_Byte 0
  loc_9E49B7: NeI2
  loc_9E49B8: BranchF loc_9E4ABB
  loc_9E49BB: FLdPr Me
  loc_9E49BE: VCallAd Control_ID_ItemCompraFlex
  loc_9E49C1: FStAdFunc var_88
  loc_9E49C4: FLdPr var_88
  loc_9E49C7: LateIdLdVar var_98 DispID_10 0
  loc_9E49CE: CI4Var
  loc_9E49D0: CVarI4
  loc_9E49D4: PopAdLdVar
  loc_9E49D5: LitVarI4
  loc_9E49DD: PopAdLdVar
  loc_9E49DE: FLdPr Me
  loc_9E49E1: VCallAd Control_ID_ItemCompraFlex
  loc_9E49E4: FStAdFunc var_DC
  loc_9E49E7: FLdPr var_DC
  loc_9E49EA: LateIdCallLdVar
  loc_9E49F4: CStrVarTmp
  loc_9E49F5: FStStrNoPop var_F0
  loc_9E49F8: ImpAdLdRf MemVar_C3D814
  loc_9E49FB: NewIfNullPr dlgDetalleNotaPedido
  loc_9E49FE: VCallAd Control_ID_CaraItnoTxt
  loc_9E4A01: FStAdFunc var_F4
  loc_9E4A04: FLdPr var_F4
  loc_9E4A07: dlgDetalleNotaPedido.TextBox.Text = from_stack_1
  loc_9E4A0C: FFree1Str var_F0
  loc_9E4A0F: FFreeAd var_88 = "": var_DC = ""
  loc_9E4A18: FFreeVar var_98 = ""
  loc_9E4A1F: LitStr "Detalle del Item de la Orden de Compra"
  loc_9E4A22: ImpAdLdRf MemVar_C3D814
  loc_9E4A25: NewIfNullPr dlgDetalleNotaPedido
  loc_9E4A28: dlgDetalleNotaPedido.Caption = from_stack_1
  loc_9E4A2D: LitVar_Missing var_B8
  loc_9E4A30: PopAdLdVar
  loc_9E4A31: LitVarI4
  loc_9E4A39: PopAdLdVar
  loc_9E4A3A: ImpAdLdRf MemVar_C3D814
  loc_9E4A3D: NewIfNullPr dlgDetalleNotaPedido
  loc_9E4A40: dlgDetalleNotaPedido.Show from_stack_1, from_stack_2
  loc_9E4A45: FLdRfVar var_F0
  loc_9E4A48: ImpAdLdRf MemVar_C3D814
  loc_9E4A4B: NewIfNullPr dlgDetalleNotaPedido
  loc_9E4A4E: from_stack_1v = dlgDetalleNotaPedido.sPasaDetalleGet()
  loc_9E4A53: ILdRf var_F0
  loc_9E4A56: LitStr vbNullString
  loc_9E4A59: NeStr
  loc_9E4A5B: FFree1Str var_F0
  loc_9E4A5E: BranchF loc_9E4ABB
  loc_9E4A61: FLdPr Me
  loc_9E4A64: VCallAd Control_ID_
  loc_9E4A67: FStAdFunc var_88
  loc_9E4A6A: FLdPr var_88
  loc_9E4A6D: LateIdLdVar var_98 DispID_10 0
  loc_9E4A74: CI4Var
  loc_9E4A76: CVarI4
  loc_9E4A7A: PopAdLdVar
  loc_9E4A7B: LitVarI4
  loc_9E4A83: PopAdLdVar
  loc_9E4A84: FLdRfVar var_F0
  loc_9E4A87: ImpAdLdRf MemVar_C3D814
  loc_9E4A8A: NewIfNullPr dlgDetalleNotaPedido
  loc_9E4A8D: from_stack_1v = dlgDetalleNotaPedido.sPasaDetalleGet()
  loc_9E4A92: FLdZeroAd var_F0
  loc_9E4A95: CVarStr var_EC
  loc_9E4A98: PopAdLdVar
  loc_9E4A99: FLdPr Me
  loc_9E4A9C: VCallAd Control_ID_
  loc_9E4A9F: FStAdFunc var_DC
  loc_9E4AA2: FLdPr var_DC
  loc_9E4AA5: LateIdCallSt
  loc_9E4AAD: FFreeAd var_88 = ""
  loc_9E4AB4: FFreeVar var_98 = ""
  loc_9E4ABB: ExitProcHresult
End Sub

Private Sub ItemCompraFlex_KeyPress(KeyAscii As Integer) 'A34E40
  'Data Table: 4DABCC
  loc_A34C44: FLdPr Me
  loc_A34C47: MemLdUI1 global_60
  loc_A34C4B: CI2UI1
  loc_A34C4D: LitI2_Byte 0
  loc_A34C4F: NeI2
  loc_A34C50: BranchF loc_A34E3C
  loc_A34C53: ILdI2 KeyAscii
  loc_A34C56: CI4UI1
  loc_A34C57: LitI4 8
  loc_A34C5C: EqI4
  loc_A34C5D: BranchF loc_A34D57
  loc_A34C60: FLdPr Me
  loc_A34C63: VCallAd Control_ID_ItemCompraFlex
  loc_A34C66: FStAdFunc var_88
  loc_A34C69: FLdPr var_88
  loc_A34C6C: LateIdLdVar var_98 DispID_11 0
  loc_A34C73: CI4Var
  loc_A34C75: FStR4 var_9C
  loc_A34C78: FFree1Ad var_88
  loc_A34C7B: FFree1Var var_98 = ""
  loc_A34C7E: ILdRf var_9C
  loc_A34C81: LitI4 6
  loc_A34C86: EqI4
  loc_A34C87: BranchT loc_A34C96
  loc_A34C8A: ILdRf var_9C
  loc_A34C8D: LitI4 5
  loc_A34C92: EqI4
  loc_A34C93: BranchF loc_A34D54
  loc_A34C96: FLdPr Me
  loc_A34C99: VCallAd Control_ID_ItemCompraFlex
  loc_A34C9C: FStAdFunc var_88
  loc_A34C9F: FLdPr var_88
  loc_A34CA2: LateIdLdVar var_98 DispID_0 0
  loc_A34CA9: CStrVarTmp
  loc_A34CAA: FStStrNoPop var_A0
  loc_A34CAD: LitStr vbNullString
  loc_A34CB0: NeStr
  loc_A34CB2: FLdPr Me
  loc_A34CB5: VCallAd Control_ID_ItemCompraFlex
  loc_A34CB8: FStAdFunc var_A4
  loc_A34CBB: FLdPr var_A4
  loc_A34CBE: LateIdLdVar var_B4 DispID_0 0
  loc_A34CC5: CStrVarTmp
  loc_A34CC6: FStStrNoPop var_B8
  loc_A34CC9: LitStr " "
  loc_A34CCC: NeStr
  loc_A34CCE: AndI4
  loc_A34CCF: FFreeStr var_A0 = ""
  loc_A34CD6: FFreeAd var_88 = ""
  loc_A34CDD: FFreeVar var_98 = ""
  loc_A34CE4: BranchF loc_A34D54
  loc_A34CE7: FLdPr Me
  loc_A34CEA: VCallAd Control_ID_ItemCompraFlex
  loc_A34CED: FStAdFunc var_88
  loc_A34CF0: FLdPr var_88
  loc_A34CF3: LateIdLdVar var_98 DispID_0 0
  loc_A34CFA: PopAd
  loc_A34CFC: FLdPr Me
  loc_A34CFF: VCallAd Control_ID_ItemCompraFlex
  loc_A34D02: FStAdFunc var_A4
  loc_A34D05: FLdPr var_A4
  loc_A34D08: LateIdLdVar var_B4 DispID_0 0
  loc_A34D0F: CStrVarTmp
  loc_A34D10: FStStrNoPop var_A0
  loc_A34D13: FnLenStr
  loc_A34D14: LitI4 1
  loc_A34D19: SubI4
  loc_A34D1A: FLdRfVar var_98
  loc_A34D1D: CStrVarTmp
  loc_A34D1E: FStStrNoPop var_B8
  loc_A34D21: ImpAdCallI2 Left$(, )
  loc_A34D26: CVarStr var_C8
  loc_A34D29: PopAdLdVar
  loc_A34D2A: FLdPr Me
  loc_A34D2D: VCallAd Control_ID_ItemCompraFlex
  loc_A34D30: FStAdFunc var_DC
  loc_A34D33: FLdPr var_DC
  loc_A34D36: LateIdSt
  loc_A34D3B: FFreeStr var_A0 = ""
  loc_A34D42: FFreeAd var_88 = "": var_A4 = ""
  loc_A34D4B: FFreeVar var_98 = "": var_B4 = ""
  loc_A34D54: Branch loc_A34E3C
  loc_A34D57: FLdPr Me
  loc_A34D5A: VCallAd Control_ID_ItemCompraFlex
  loc_A34D5D: FStAdFunc var_88
  loc_A34D60: FLdPr var_88
  loc_A34D63: LateIdLdVar var_98 DispID_11 0
  loc_A34D6A: CI4Var
  loc_A34D6C: FStR4 var_E0
  loc_A34D6F: FFree1Ad var_88
  loc_A34D72: FFree1Var var_98 = ""
  loc_A34D75: ILdRf var_E0
  loc_A34D78: LitI4 6
  loc_A34D7D: EqI4
  loc_A34D7E: BranchT loc_A34D8D
  loc_A34D81: ILdRf var_E0
  loc_A34D84: LitI4 5
  loc_A34D89: EqI4
  loc_A34D8A: BranchF loc_A34E3C
  loc_A34D8D: ILdI2 KeyAscii
  loc_A34D90: LitStr "."
  loc_A34D93: ImpAdCallI2 Asc()
  loc_A34D98: EqI2
  loc_A34D99: BranchF loc_A34DA7
  loc_A34D9C: LitStr ","
  loc_A34D9F: ImpAdCallI2 Asc()
  loc_A34DA4: IStI2 KeyAscii
  loc_A34DA7: LitStr "1234567890,"
  loc_A34DAA: FStStrCopy var_A0
  loc_A34DAD: FLdRfVar var_A0
  loc_A34DB0: ILdRf KeyAscii
  loc_A34DB3: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_A34DB8: IStI2 KeyAscii
  loc_A34DBB: FFree1Str var_A0
  loc_A34DBE: FLdPr Me
  loc_A34DC1: VCallAd Control_ID_ItemCompraFlex
  loc_A34DC4: FStAdFunc var_88
  loc_A34DC7: FLdPr var_88
  loc_A34DCA: LateIdLdVar var_98 DispID_0 0
  loc_A34DD1: CStrVarTmp
  loc_A34DD2: FStStrNoPop var_A0
  loc_A34DD5: FnLenStr
  loc_A34DD6: LitI4 &HC
  loc_A34DDB: LeI4
  loc_A34DDC: FFree1Str var_A0
  loc_A34DDF: FFree1Ad var_88
  loc_A34DE2: FFree1Var var_98 = ""
  loc_A34DE5: BranchF loc_A34E3C
  loc_A34DE8: FLdPr Me
  loc_A34DEB: VCallAd Control_ID_ItemCompraFlex
  loc_A34DEE: FStAdFunc var_88
  loc_A34DF1: FLdPr var_88
  loc_A34DF4: LateIdLdVar var_98 DispID_0 0
  loc_A34DFB: CStrVarTmp
  loc_A34DFC: CVarStr var_C8
  loc_A34DFF: ILdI2 KeyAscii
  loc_A34E02: CI4UI1
  loc_A34E03: FLdRfVar var_B4
  loc_A34E06: ImpAdCallFPR4  = Chr()
  loc_A34E0B: FLdRfVar var_B4
  loc_A34E0E: AddVar var_F0
  loc_A34E12: CStrVarTmp
  loc_A34E13: CVarStr var_100
  loc_A34E16: PopAdLdVar
  loc_A34E17: FLdPr Me
  loc_A34E1A: VCallAd Control_ID_ItemCompraFlex
  loc_A34E1D: FStAdFunc var_A4
  loc_A34E20: FLdPr var_A4
  loc_A34E23: LateIdSt
  loc_A34E28: FFreeAd var_88 = ""
  loc_A34E2F: FFreeVar var_98 = "": var_C8 = "": var_B4 = "": var_F0 = ""
  loc_A34E3C: ExitProcHresult
End Sub

Private Sub ItemCompraFlex_KeyUp(KeyCode As Integer, Shift As Integer) 'A13588
  'Data Table: 4DABCC
  loc_A13430: FLdPr Me
  loc_A13433: MemLdUI1 global_60
  loc_A13437: CI2UI1
  loc_A13439: LitI2_Byte 0
  loc_A1343B: NeI2
  loc_A1343C: BranchF loc_A13587
  loc_A1343F: ILdI2 KeyCode
  loc_A13442: CI4UI1
  loc_A13443: LitI4 &H2E
  loc_A13448: EqI4
  loc_A13449: BranchF loc_A13587
  loc_A1344C: FLdPr Me
  loc_A1344F: VCallAd Control_ID_ItemCompraFlex
  loc_A13452: FStAdFunc var_88
  loc_A13455: FLdPr var_88
  loc_A13458: LateIdLdVar var_98 DispID_10 0
  loc_A1345F: CI4Var
  loc_A13461: LitI4 0
  loc_A13466: NeI4
  loc_A13467: FFree1Ad var_88
  loc_A1346A: FFree1Var var_98 = ""
  loc_A1346D: BranchF loc_A13587
  loc_A13470: OnErrorGoto loc_A13587
  loc_A13473: FLdPr Me
  loc_A13476: VCallAd Control_ID_ItemCompraFlex
  loc_A13479: FStAdFunc var_88
  loc_A1347C: FLdPr var_88
  loc_A1347F: LateIdLdVar var_98 DispID_10 0
  loc_A13486: CI4Var
  loc_A13488: CVarI4
  loc_A1348C: PopAdLdVar
  loc_A1348D: LitVarI4
  loc_A13495: PopAdLdVar
  loc_A13496: FLdPr Me
  loc_A13499: VCallAd Control_ID_ItemCompraFlex
  loc_A1349C: FStAdFunc var_DC
  loc_A1349F: FLdPr var_DC
  loc_A134A2: LateIdCallLdVar
  loc_A134AC: PopAd
  loc_A134AE: FLdPr Me
  loc_A134B1: MemLdStr global_72
  loc_A134B4: LitStr ","
  loc_A134B7: ConcatStr
  loc_A134B8: FStStrNoPop var_158
  loc_A134BB: FLdPr Me
  loc_A134BE: VCallAd Control_ID_ItemCompraFlex
  loc_A134C1: FStAdFunc var_F0
  loc_A134C4: FLdPr var_F0
  loc_A134C7: LateIdLdVar var_100 DispID_10 0
  loc_A134CE: CI4Var
  loc_A134D0: CVarI4
  loc_A134D4: PopAdLdVar
  loc_A134D5: LitVarI4
  loc_A134DD: PopAdLdVar
  loc_A134DE: FLdPr Me
  loc_A134E1: VCallAd Control_ID_ItemCompraFlex
  loc_A134E4: FStAdFunc var_144
  loc_A134E7: FLdPr var_144
  loc_A134EA: LateIdCallLdVar
  loc_A134F4: CStrVarTmp
  loc_A134F5: FStStrNoPop var_15C
  loc_A134F8: ConcatStr
  loc_A134F9: CVarStr var_18C
  loc_A134FC: FLdRfVar var_EC
  loc_A134FF: CStrVarTmp
  loc_A13500: CVarStr var_17C
  loc_A13503: FLdPr Me
  loc_A13506: MemLdStr global_72
  loc_A13509: LitStr vbNullString
  loc_A1350C: EqStr
  loc_A1350E: CVarBoolI2 var_16C
  loc_A13512: FLdRfVar var_19C
  loc_A13515: ImpAdCallFPR4  = IIf(, , )
  loc_A1351A: FLdRfVar var_19C
  loc_A1351D: CStrVarTmp
  loc_A1351E: FStStrNoPop var_1A0
  loc_A13521: FLdPr Me
  loc_A13524: MemStStrCopy
  loc_A13528: FFreeStr var_158 = "": var_15C = ""
  loc_A13531: FFreeAd var_88 = "": var_DC = "": var_F0 = ""
  loc_A1353C: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_154 = "": var_16C = "": var_17C = "": var_18C = ""
  loc_A1354F: FLdPr Me
  loc_A13552: VCallAd Control_ID_ItemCompraFlex
  loc_A13555: FStAdFunc var_88
  loc_A13558: FLdPr var_88
  loc_A1355B: LateIdLdVar var_98 DispID_10 0
  loc_A13562: CI4Var
  loc_A13564: CVarI4
  loc_A13568: PopAdLdVar
  loc_A13569: FLdPr Me
  loc_A1356C: VCallAd Control_ID_ItemCompraFlex
  loc_A1356F: FStAdFunc var_DC
  loc_A13572: FLdPr var_DC
  loc_A13575: LateIdCall
  loc_A1357D: FFreeAd var_88 = ""
  loc_A13584: FFree1Var var_98 = ""
  loc_A13587: ExitProcHresult
End Sub

Private Sub ItemCompraFlex_LeaveCell() 'A970F4
  'Data Table: 4DABCC
  loc_A96C88: FLdPr Me
  loc_A96C8B: MemLdUI1 global_60
  loc_A96C8F: CI2UI1
  loc_A96C91: LitI2_Byte 0
  loc_A96C93: NeI2
  loc_A96C94: BranchF loc_A970F0
  loc_A96C97: FLdPr Me
  loc_A96C9A: VCallAd Control_ID_ItemCompraFlex
  loc_A96C9D: FStAdFunc var_88
  loc_A96CA0: FLdPr var_88
  loc_A96CA3: LateIdLdVar var_98 DispID_4 0
  loc_A96CAA: CI4Var
  loc_A96CAC: LitI4 0
  loc_A96CB1: GtI4
  loc_A96CB2: FFree1Ad var_88
  loc_A96CB5: FFree1Var var_98 = ""
  loc_A96CB8: BranchF loc_A970F0
  loc_A96CBB: FLdPr Me
  loc_A96CBE: VCallAd Control_ID_ItemCompraFlex
  loc_A96CC1: FStAdFunc var_88
  loc_A96CC4: FLdPr var_88
  loc_A96CC7: LateIdLdVar var_98 DispID_11 0
  loc_A96CCE: CI4Var
  loc_A96CD0: LitI4 5
  loc_A96CD5: EqI4
  loc_A96CD6: FFree1Ad var_88
  loc_A96CD9: FFree1Var var_98 = ""
  loc_A96CDC: BranchF loc_A96DE4
  loc_A96CDF: FLdPr Me
  loc_A96CE2: VCallAd Control_ID_ItemCompraFlex
  loc_A96CE5: FStAdFunc var_88
  loc_A96CE8: FLdPr var_88
  loc_A96CEB: LateIdLdVar var_98 DispID_10 0
  loc_A96CF2: CI4Var
  loc_A96CF4: CVarI4
  loc_A96CF8: PopAdLdVar
  loc_A96CF9: LitVarI4
  loc_A96D01: PopAdLdVar
  loc_A96D02: FLdPr Me
  loc_A96D05: VCallAd Control_ID_ItemCompraFlex
  loc_A96D08: FStAdFunc var_DC
  loc_A96D0B: FLdPr var_DC
  loc_A96D0E: LateIdCallLdVar
  loc_A96D18: PopAd
  loc_A96D1A: LitStr "0"
  loc_A96D1D: LitI2_Byte &HFF
  loc_A96D1F: LitI2_Byte 0
  loc_A96D21: LitI2_Byte 0
  loc_A96D23: FLdRfVar var_EC
  loc_A96D26: CStrVarTmp
  loc_A96D27: FStStrNoPop var_F0
  loc_A96D2A: LitStr "cantidad"
  loc_A96D2D: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_A96D32: FStStrNoPop var_F4
  loc_A96D35: FLdPr Me
  loc_A96D38: MemStStrCopy
  loc_A96D3C: FFreeStr var_F0 = ""
  loc_A96D43: FFreeAd var_88 = ""
  loc_A96D4A: FFreeVar var_98 = ""
  loc_A96D51: FLdPr Me
  loc_A96D54: MemLdStr global_64
  loc_A96D57: LitStr vbNullString
  loc_A96D5A: NeStr
  loc_A96D5C: BranchF loc_A96D87
  loc_A96D5F: LitI4 0
  loc_A96D64: FLdPr Me
  loc_A96D67: MemLdStr global_64
  loc_A96D6A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A96D6F: FLdPr Me
  loc_A96D72: VCallAd Control_ID_ItemCompraFlex
  loc_A96D75: FStAdFunc var_88
  loc_A96D78: FLdPr var_88
  loc_A96D7B: LateIdCall
  loc_A96D83: FFree1Ad var_88
  loc_A96D86: ExitProcHresult
  loc_A96D87: FLdPr Me
  loc_A96D8A: VCallAd Control_ID_ItemCompraFlex
  loc_A96D8D: FStAdFunc var_88
  loc_A96D90: FLdPr var_88
  loc_A96D93: LateIdLdVar var_98 DispID_0 0
  loc_A96D9A: PopAd
  loc_A96D9C: LitI4 1
  loc_A96DA1: LitI4 1
  loc_A96DA6: LitVarStr var_A8, "0.000"
  loc_A96DAB: FStVarCopyObj var_104
  loc_A96DAE: FLdRfVar var_104
  loc_A96DB1: FLdRfVar var_98
  loc_A96DB4: CStrVarTmp
  loc_A96DB5: CVarStr var_EC
  loc_A96DB8: ImpAdCallI2 Format$(, )
  loc_A96DBD: CVarStr var_114
  loc_A96DC0: PopAdLdVar
  loc_A96DC1: FLdPr Me
  loc_A96DC4: VCallAd Control_ID_ItemCompraFlex
  loc_A96DC7: FStAdFunc var_DC
  loc_A96DCA: FLdPr var_DC
  loc_A96DCD: LateIdSt
  loc_A96DD2: FFreeAd var_88 = ""
  loc_A96DD9: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_A96DE4: FLdPr Me
  loc_A96DE7: VCallAd Control_ID_ItemCompraFlex
  loc_A96DEA: FStAdFunc var_88
  loc_A96DED: FLdPr var_88
  loc_A96DF0: LateIdLdVar var_98 DispID_11 0
  loc_A96DF7: CI4Var
  loc_A96DF9: LitI4 6
  loc_A96DFE: EqI4
  loc_A96DFF: FFree1Ad var_88
  loc_A96E02: FFree1Var var_98 = ""
  loc_A96E05: BranchF loc_A96F0D
  loc_A96E08: FLdPr Me
  loc_A96E0B: VCallAd Control_ID_ItemCompraFlex
  loc_A96E0E: FStAdFunc var_88
  loc_A96E11: FLdPr var_88
  loc_A96E14: LateIdLdVar var_98 DispID_10 0
  loc_A96E1B: CI4Var
  loc_A96E1D: CVarI4
  loc_A96E21: PopAdLdVar
  loc_A96E22: LitVarI4
  loc_A96E2A: PopAdLdVar
  loc_A96E2B: FLdPr Me
  loc_A96E2E: VCallAd Control_ID_ItemCompraFlex
  loc_A96E31: FStAdFunc var_DC
  loc_A96E34: FLdPr var_DC
  loc_A96E37: LateIdCallLdVar
  loc_A96E41: PopAd
  loc_A96E43: LitStr "0"
  loc_A96E46: LitI2_Byte &HFF
  loc_A96E48: LitI2_Byte 0
  loc_A96E4A: LitI2_Byte 0
  loc_A96E4C: FLdRfVar var_EC
  loc_A96E4F: CStrVarTmp
  loc_A96E50: FStStrNoPop var_F0
  loc_A96E53: LitStr "importe unitario"
  loc_A96E56: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_A96E5B: FStStrNoPop var_F4
  loc_A96E5E: FLdPr Me
  loc_A96E61: MemStStrCopy
  loc_A96E65: FFreeStr var_F0 = ""
  loc_A96E6C: FFreeAd var_88 = ""
  loc_A96E73: FFreeVar var_98 = ""
  loc_A96E7A: FLdPr Me
  loc_A96E7D: MemLdStr global_64
  loc_A96E80: LitStr vbNullString
  loc_A96E83: NeStr
  loc_A96E85: BranchF loc_A96EB0
  loc_A96E88: LitI4 0
  loc_A96E8D: FLdPr Me
  loc_A96E90: MemLdStr global_64
  loc_A96E93: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A96E98: FLdPr Me
  loc_A96E9B: VCallAd Control_ID_ItemCompraFlex
  loc_A96E9E: FStAdFunc var_88
  loc_A96EA1: FLdPr var_88
  loc_A96EA4: LateIdCall
  loc_A96EAC: FFree1Ad var_88
  loc_A96EAF: ExitProcHresult
  loc_A96EB0: FLdPr Me
  loc_A96EB3: VCallAd Control_ID_ItemCompraFlex
  loc_A96EB6: FStAdFunc var_88
  loc_A96EB9: FLdPr var_88
  loc_A96EBC: LateIdLdVar var_98 DispID_0 0
  loc_A96EC3: PopAd
  loc_A96EC5: LitI4 1
  loc_A96ECA: LitI4 1
  loc_A96ECF: LitVarStr var_A8, "0.000"
  loc_A96ED4: FStVarCopyObj var_104
  loc_A96ED7: FLdRfVar var_104
  loc_A96EDA: FLdRfVar var_98
  loc_A96EDD: CStrVarTmp
  loc_A96EDE: CVarStr var_EC
  loc_A96EE1: ImpAdCallI2 Format$(, )
  loc_A96EE6: CVarStr var_114
  loc_A96EE9: PopAdLdVar
  loc_A96EEA: FLdPr Me
  loc_A96EED: VCallAd Control_ID_ItemCompraFlex
  loc_A96EF0: FStAdFunc var_DC
  loc_A96EF3: FLdPr var_DC
  loc_A96EF6: LateIdSt
  loc_A96EFB: FFreeAd var_88 = ""
  loc_A96F02: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_A96F0D: FLdPr Me
  loc_A96F10: VCallAd Control_ID_ItemCompraFlex
  loc_A96F13: FStAdFunc var_88
  loc_A96F16: FLdPr var_88
  loc_A96F19: LateIdLdVar var_98 DispID_10 0
  loc_A96F20: CI4Var
  loc_A96F22: CVarI4
  loc_A96F26: PopAdLdVar
  loc_A96F27: LitVarI4
  loc_A96F2F: PopAdLdVar
  loc_A96F30: FLdPr Me
  loc_A96F33: VCallAd Control_ID_ItemCompraFlex
  loc_A96F36: FStAdFunc var_DC
  loc_A96F39: FLdPr var_DC
  loc_A96F3C: LateIdCallLdVar
  loc_A96F46: CStrVarTmp
  loc_A96F47: CVarStr var_104
  loc_A96F4A: ImpAdCallI2 IsNumeric()
  loc_A96F4F: FLdPr Me
  loc_A96F52: VCallAd Control_ID_ItemCompraFlex
  loc_A96F55: FStAdFunc var_118
  loc_A96F58: FLdPr var_118
  loc_A96F5B: LateIdLdVar var_114 DispID_10 0
  loc_A96F62: CI4Var
  loc_A96F64: CVarI4
  loc_A96F68: PopAdLdVar
  loc_A96F69: LitVarI4
  loc_A96F71: PopAdLdVar
  loc_A96F72: FLdPr Me
  loc_A96F75: VCallAd Control_ID_ItemCompraFlex
  loc_A96F78: FStAdFunc var_15C
  loc_A96F7B: FLdPr var_15C
  loc_A96F7E: LateIdCallLdVar
  loc_A96F88: CStrVarTmp
  loc_A96F89: CVarStr var_17C
  loc_A96F8C: ImpAdCallI2 IsNumeric()
  loc_A96F91: AndI4
  loc_A96F92: FFreeAd var_88 = "": var_DC = "": var_118 = ""
  loc_A96F9D: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_114 = "": var_16C = ""
  loc_A96FAC: BranchF loc_A970F0
  loc_A96FAF: FLdPr Me
  loc_A96FB2: VCallAd Control_ID_ItemCompraFlex
  loc_A96FB5: FStAdFunc var_88
  loc_A96FB8: FLdPr var_88
  loc_A96FBB: LateIdLdVar var_98 DispID_10 0
  loc_A96FC2: CI4Var
  loc_A96FC4: CVarI4
  loc_A96FC8: PopAdLdVar
  loc_A96FC9: LitVarI4
  loc_A96FD1: PopAdLdVar
  loc_A96FD2: FLdPr Me
  loc_A96FD5: VCallAd Control_ID_ItemCompraFlex
  loc_A96FD8: FStAdFunc var_DC
  loc_A96FDB: FLdPr var_DC
  loc_A96FDE: LateIdCallLdVar
  loc_A96FE8: PopAd
  loc_A96FEA: LitI4 3
  loc_A96FEF: FLdRfVar var_EC
  loc_A96FF2: CStrVarTmp
  loc_A96FF3: FStStrNoPop var_F0
  loc_A96FF6: CR8Str
  loc_A96FF8: CVarR8
  loc_A96FFC: FLdRfVar var_114
  loc_A96FFF: ImpAdCallFPR4  = Round(, )
  loc_A97004: FLdPr Me
  loc_A97007: VCallAd Control_ID_ItemCompraFlex
  loc_A9700A: FStAdFunc var_118
  loc_A9700D: FLdPr var_118
  loc_A97010: LateIdLdVar var_16C DispID_10 0
  loc_A97017: CI4Var
  loc_A97019: CVarI4
  loc_A9701D: PopAdLdVar
  loc_A9701E: LitVarI4
  loc_A97026: PopAdLdVar
  loc_A97027: FLdPr Me
  loc_A9702A: VCallAd Control_ID_ItemCompraFlex
  loc_A9702D: FStAdFunc var_15C
  loc_A97030: FLdPr var_15C
  loc_A97033: LateIdCallLdVar
  loc_A9703D: PopAd
  loc_A9703F: LitI4 3
  loc_A97044: FLdRfVar var_17C
  loc_A97047: CStrVarTmp
  loc_A97048: FStStrNoPop var_F4
  loc_A9704B: CR8Str
  loc_A9704D: CVarR8
  loc_A97051: FLdRfVar var_1BC
  loc_A97054: ImpAdCallFPR4  = Round(, )
  loc_A97059: FLdPr Me
  loc_A9705C: VCallAd Control_ID_ItemCompraFlex
  loc_A9705F: FStAdFunc var_200
  loc_A97062: FLdPr var_200
  loc_A97065: LateIdLdVar var_210 DispID_10 0
  loc_A9706C: CI4Var
  loc_A9706E: CVarI4
  loc_A97072: PopAdLdVar
  loc_A97073: LitVarI4
  loc_A9707B: PopAdLdVar
  loc_A9707C: LitI4 1
  loc_A97081: LitI4 1
  loc_A97086: LitVarStr var_1EC, "###,###,##0.000"
  loc_A9708B: FStVarCopyObj var_1FC
  loc_A9708E: FLdRfVar var_1FC
  loc_A97091: FLdRfVar var_114
  loc_A97094: FLdRfVar var_1BC
  loc_A97097: MulVar var_1CC
  loc_A9709B: FStVar var_1DC
  loc_A9709F: FLdRfVar var_1DC
  loc_A970A2: ImpAdCallI2 Format$(, )
  loc_A970A7: CVarStr var_260
  loc_A970AA: PopAdLdVar
  loc_A970AB: FLdPr Me
  loc_A970AE: VCallAd Control_ID_ItemCompraFlex
  loc_A970B1: FStAdFunc var_274
  loc_A970B4: FLdPr var_274
  loc_A970B7: LateIdCallSt
  loc_A970BF: FFreeStr var_F0 = ""
  loc_A970C6: FFreeAd var_88 = "": var_DC = "": var_118 = "": var_15C = "": var_200 = ""
  loc_A970D5: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_16C = "": var_17C = "": var_1AC = "": var_114 = "": var_1BC = "": var_1DC = "": var_1FC = "": var_210 = ""
  loc_A970F0: ExitProcHresult
End Sub

Private Sub FechOrcoMsk_UnknownEvent_0 '94A088
  'Data Table: 4DABCC
  loc_94A074: FLdPrThis
  loc_94A075: VCallAd Control_ID_FechOrcoMsk
  loc_94A078: CVarAd
  loc_94A07C: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A081: FFree1Var var_94 = ""
  loc_94A084: ExitProcHresult
End Sub

Private Function FechOrcoMsk_UnknownEvent_8(arg_C) '9C01D4
  'Data Table: 4DABCC
  loc_9C011C: FLdPr Me
  loc_9C011F: VCallAd Control_ID_FechOrcoMsk
  loc_9C0122: FStAdFunc var_88
  loc_9C0125: FLdPr var_88
  loc_9C0128: LateIdLdVar var_98 DispID_13 -32767
  loc_9C012F: CBoolVar
  loc_9C0131: FFree1Ad var_88
  loc_9C0134: FFree1Var var_98 = ""
  loc_9C0137: BranchF loc_9C01D2
  loc_9C013A: FLdPr Me
  loc_9C013D: VCallAd Control_ID_FechOrcoMsk
  loc_9C0140: FStAdFunc var_88
  loc_9C0143: FLdPr var_88
  loc_9C0146: LateIdLdVar var_98 DispID_15 0
  loc_9C014D: PopAd
  loc_9C014F: FLdPr Me
  loc_9C0152: VCallAd Control_ID_FechOrcoMsk
  loc_9C0155: FStAdFunc var_AC
  loc_9C0158: LitI2_Byte &HFF
  loc_9C015A: PopTmpLdAd2 var_A2
  loc_9C015D: FLdZeroAd var_AC
  loc_9C0160: FStAdFunc var_A0
  loc_9C0163: FLdRfVar var_A0
  loc_9C0166: LitStr "01/01/2018"
  loc_9C0169: LitI2_Byte 0
  loc_9C016B: LitI2_Byte &HFF
  loc_9C016D: FLdRfVar var_98
  loc_9C0170: CStrVarTmp
  loc_9C0171: FStStrNoPop var_9C
  loc_9C0174: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C0179: FStStrNoPop var_A8
  loc_9C017C: FLdPr Me
  loc_9C017F: MemStStrCopy
  loc_9C0183: FFreeStr var_9C = ""
  loc_9C018A: FFreeAd var_88 = "": var_A0 = ""
  loc_9C0193: FFree1Var var_98 = ""
  loc_9C0196: FLdPr Me
  loc_9C0199: VCallAd Control_ID_FechOrcoMsk
  loc_9C019C: FStAdFunc var_B0
  loc_9C019F: LitNothing
  loc_9C01A1: CastAd
  loc_9C01A4: FStAdFunc var_AC
  loc_9C01A7: FLdRfVar var_AC
  loc_9C01AA: FLdZeroAd var_B0
  loc_9C01AD: FStAdFuncNoPop
  loc_9C01B0: CastAd
  loc_9C01B3: FStAdFunc var_A0
  loc_9C01B6: FLdRfVar var_A0
  loc_9C01B9: FLdPr Me
  loc_9C01BC: MemLdRfVar from_stack_1.global_64
  loc_9C01BF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C01C4: IStI2 arg_C
  loc_9C01C7: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C01D2: ExitProcHresult
End Function

Private Sub FechOrcoMsk_KeyPress(KeyAscii As Integer) '989F20
  'Data Table: 4DABCC
  loc_989EDC: ILdI2 KeyAscii
  loc_989EDF: CI4UI1
  loc_989EE0: LitI4 &H20
  loc_989EE5: EqI4
  loc_989EE6: BranchF loc_989F1C
  loc_989EE9: LitVar_Missing var_A4
  loc_989EEC: PopAdLdVar
  loc_989EED: LitVarI4
  loc_989EF5: PopAdLdVar
  loc_989EF6: ImpAdLdRf MemVar_C3D9A8
  loc_989EF9: NewIfNullPr frmCalendario
  loc_989EFC: frmCalendario.Show from_stack_1, from_stack_2
  loc_989F01: ImpAdLdRf MemVar_C3D038
  loc_989F04: CDargRef
  loc_989F08: FLdPr Me
  loc_989F0B: VCallAd Control_ID_FechOrcoMsk
  loc_989F0E: FStAdFunc var_A8
  loc_989F11: FLdPr var_A8
  loc_989F14: LateIdSt
  loc_989F19: FFree1Ad var_A8
  loc_989F1C: ExitProcHresult
End Sub

Private Sub Form_Load() 'A75E80
  'Data Table: 4DABCC
  loc_A75ADC: LitStr "Municipalidad de Guaymallén"
  loc_A75ADF: LitStr "Municipalidad de General Alvear"
  loc_A75AE2: EqStr
  loc_A75AE4: BranchF loc_A75B00
  loc_A75AE7: LitI2_Byte &HFF
  loc_A75AE9: FLdPr Me
  loc_A75AEC: VCallAd Control_ID_ExpeImpuGDEtxt
  loc_A75AEF: FStAdFunc var_88
  loc_A75AF2: FLdPr var_88
  loc_A75AF5: Me.Visible = from_stack_1b
  loc_A75AFA: FFree1Ad var_88
  loc_A75AFD: Branch loc_A75B16
  loc_A75B00: LitI2_Byte 0
  loc_A75B02: FLdPr Me
  loc_A75B05: VCallAd Control_ID_ExpeImpuGDEtxt
  loc_A75B08: FStAdFunc var_88
  loc_A75B0B: FLdPr var_88
  loc_A75B0E: Me.Visible = from_stack_1b
  loc_A75B13: FFree1Ad var_88
  loc_A75B16: LitVarStr var_98, "######"
  loc_A75B1B: PopAdLdVar
  loc_A75B1C: FLdPr Me
  loc_A75B1F: VCallAd Control_ID_CodiOrgaMsk
  loc_A75B22: FStAdFunc var_88
  loc_A75B25: FLdPr var_88
  loc_A75B28: LateIdSt
  loc_A75B2D: FFree1Ad var_88
  loc_A75B30: LitI2_Byte 0
  loc_A75B32: CR8I2
  loc_A75B33: PopFPR4
  loc_A75B34: FLdPr Me
  loc_A75B37: Me.Left = from_stack_1s
  loc_A75B3C: LitI2_Byte 0
  loc_A75B3E: CR8I2
  loc_A75B3F: PopFPR4
  loc_A75B40: FLdPr Me
  loc_A75B43: Me.Top = from_stack_1s
  loc_A75B48: LitStr vbNullString
  loc_A75B4B: FLdPr Me
  loc_A75B4E: MemStStrCopy
  loc_A75B52: LitStr "SELECT oc.*, DetaTico, DetaOrga, DetaProv"
  loc_A75B55: LitStr " FROM ordencompra oc"
  loc_A75B58: ConcatStr
  loc_A75B59: FStStrNoPop var_AC
  loc_A75B5C: LitStr " INNER JOIN orgaxusua oxu ON oxu.PeriInfo = oc.PeriInfo AND oxu.CodiOrga = oc.CodiOrga AND oxu.CodiUsua = '"
  loc_A75B5F: ConcatStr
  loc_A75B60: FStStrNoPop var_B0
  loc_A75B63: ImpAdLdI4 MemVar_C3D03C
  loc_A75B66: ConcatStr
  loc_A75B67: FStStrNoPop var_B4
  loc_A75B6A: LitStr "'"
  loc_A75B6D: ConcatStr
  loc_A75B6E: FStStrNoPop var_B8
  loc_A75B71: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = oc.CodiTico "
  loc_A75B74: ConcatStr
  loc_A75B75: FStStrNoPop var_BC
  loc_A75B78: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = oc.PeriInfo AND o.CodiOrga = oc.CodiOrga "
  loc_A75B7B: ConcatStr
  loc_A75B7C: FStStrNoPop var_C0
  loc_A75B7F: LitStr " INNER JOIN proveedor p ON p.CucuPers = oc.CucuPers "
  loc_A75B82: ConcatStr
  loc_A75B83: FStStrNoPop var_C4
  loc_A75B86: LitStr " WHERE oc.PeriInfo = "
  loc_A75B89: ConcatStr
  loc_A75B8A: FStStrNoPop var_C8
  loc_A75B8D: ImpAdLdI2 MemVar_C3D064
  loc_A75B90: CStrUI1
  loc_A75B92: FStStrNoPop var_CC
  loc_A75B95: ConcatStr
  loc_A75B96: FStStrNoPop var_D0
  loc_A75B99: LitStr " AND FeanOrco IS NULL"
  loc_A75B9C: ConcatStr
  loc_A75B9D: FStStrNoPop var_D4
  loc_A75BA0: LitStr " ORDER BY CodiOrco;"
  loc_A75BA3: ConcatStr
  loc_A75BA4: FStStrNoPop var_D8
  loc_A75BA7: FLdPr Me
  loc_A75BAA: MemLdRfVar from_stack_1.global_52
  loc_A75BAD: NewIfNullPr clsordencompra
  loc_A75BB0: Call clsordencompra.RedefineRS(from_stack_1v)
  loc_A75BB5: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_A75BD0: FLdPr Me
  loc_A75BD3: VCallAd Control_ID_ItemCompraFlex
  loc_A75BD6: FStAdFunc var_DC
  loc_A75BD9: LitVarI4
  loc_A75BE1: PopAdLdVar
  loc_A75BE2: LitVarI4
  loc_A75BEA: PopAdLdVar
  loc_A75BEB: FLdPr var_DC
  loc_A75BEE: LateIdCallSt
  loc_A75BF6: LitVarI4
  loc_A75BFE: PopAdLdVar
  loc_A75BFF: LitVarI4
  loc_A75C07: PopAdLdVar
  loc_A75C08: FLdPr var_DC
  loc_A75C0B: LateIdCallSt
  loc_A75C13: LitVarI4
  loc_A75C1B: PopAdLdVar
  loc_A75C1C: LitVarI4
  loc_A75C24: PopAdLdVar
  loc_A75C25: FLdPr var_DC
  loc_A75C28: LateIdCallSt
  loc_A75C30: LitVarI4
  loc_A75C38: PopAdLdVar
  loc_A75C39: LitVarI4
  loc_A75C41: PopAdLdVar
  loc_A75C42: FLdPr var_DC
  loc_A75C45: LateIdCallSt
  loc_A75C4D: LitVarI4
  loc_A75C55: PopAdLdVar
  loc_A75C56: LitVarI4
  loc_A75C5E: PopAdLdVar
  loc_A75C5F: FLdPr var_DC
  loc_A75C62: LateIdCallSt
  loc_A75C6A: LitVarI4
  loc_A75C72: PopAdLdVar
  loc_A75C73: LitVarI4
  loc_A75C7B: PopAdLdVar
  loc_A75C7C: FLdPr var_DC
  loc_A75C7F: LateIdCallSt
  loc_A75C87: LitVarI4
  loc_A75C8F: PopAdLdVar
  loc_A75C90: LitVarI4
  loc_A75C98: PopAdLdVar
  loc_A75C99: FLdPr var_DC
  loc_A75C9C: LateIdCallSt
  loc_A75CA4: LitVarI4
  loc_A75CAC: PopAdLdVar
  loc_A75CAD: LitVarI4
  loc_A75CB5: PopAdLdVar
  loc_A75CB6: FLdPr var_DC
  loc_A75CB9: LateIdCallSt
  loc_A75CC1: LitVarI4
  loc_A75CC9: PopAdLdVar
  loc_A75CCA: LitVarI4
  loc_A75CD2: PopAdLdVar
  loc_A75CD3: FLdPr var_DC
  loc_A75CD6: LateIdCallSt
  loc_A75CDE: LitVarI4
  loc_A75CE6: PopAdLdVar
  loc_A75CE7: LitVarI4
  loc_A75CEF: PopAdLdVar
  loc_A75CF0: FLdPr var_DC
  loc_A75CF3: LateIdCallSt
  loc_A75CFB: LitVarI4
  loc_A75D03: PopAdLdVar
  loc_A75D04: LitVarI4
  loc_A75D0C: PopAdLdVar
  loc_A75D0D: FLdPr var_DC
  loc_A75D10: LateIdCallSt
  loc_A75D18: LitVarI4
  loc_A75D20: PopAdLdVar
  loc_A75D21: LitVarI4
  loc_A75D29: PopAdLdVar
  loc_A75D2A: FLdPr var_DC
  loc_A75D2D: LateIdCallSt
  loc_A75D35: LitVarI4
  loc_A75D3D: PopAdLdVar
  loc_A75D3E: LitVarI4
  loc_A75D46: PopAdLdVar
  loc_A75D47: FLdPr var_DC
  loc_A75D4A: LateIdCallSt
  loc_A75D52: LitVarI4
  loc_A75D5A: PopAdLdVar
  loc_A75D5B: LitVarI4
  loc_A75D63: PopAdLdVar
  loc_A75D64: FLdPr var_DC
  loc_A75D67: LateIdCallSt
  loc_A75D6F: LitVarI4
  loc_A75D77: PopAdLdVar
  loc_A75D78: LitVarI4
  loc_A75D80: PopAdLdVar
  loc_A75D81: FLdPr var_DC
  loc_A75D84: LateIdCallSt
  loc_A75D8C: LitNothing
  loc_A75D8E: FStAd var_DC 
  loc_A75D92: LitVarI2 var_98, 0
  loc_A75D97: PopAdLdVar
  loc_A75D98: LitStr "Orden de Compra"
  loc_A75D9B: FLdPr Me
  loc_A75D9E: VCallAd Control_ID_FiltroCbo
  loc_A75DA1: FStAdFunc var_88
  loc_A75DA4: FLdPr var_88
  loc_A75DA7: Me.AddItem from_stack_1, from_stack_2
  loc_A75DAC: FFree1Ad var_88
  loc_A75DAF: LitVarI2 var_98, 1
  loc_A75DB4: PopAdLdVar
  loc_A75DB5: LitStr "Expediente"
  loc_A75DB8: FLdPr Me
  loc_A75DBB: VCallAd Control_ID_FiltroCbo
  loc_A75DBE: FStAdFunc var_88
  loc_A75DC1: FLdPr var_88
  loc_A75DC4: Me.AddItem from_stack_1, from_stack_2
  loc_A75DC9: FFree1Ad var_88
  loc_A75DCC: LitVarI2 var_98, 2
  loc_A75DD1: PopAdLdVar
  loc_A75DD2: LitStr "Nota de Pedido"
  loc_A75DD5: FLdPr Me
  loc_A75DD8: VCallAd Control_ID_FiltroCbo
  loc_A75DDB: FStAdFunc var_88
  loc_A75DDE: FLdPr var_88
  loc_A75DE1: Me.AddItem from_stack_1, from_stack_2
  loc_A75DE6: FFree1Ad var_88
  loc_A75DE9: LitVarI2 var_98, 3
  loc_A75DEE: PopAdLdVar
  loc_A75DEF: LitStr "Cotización Nro"
  loc_A75DF2: FLdPr Me
  loc_A75DF5: VCallAd Control_ID_FiltroCbo
  loc_A75DF8: FStAdFunc var_88
  loc_A75DFB: FLdPr var_88
  loc_A75DFE: Me.AddItem from_stack_1, from_stack_2
  loc_A75E03: FFree1Ad var_88
  loc_A75E06: LitI2_Byte 0
  loc_A75E08: FLdPr Me
  loc_A75E0B: VCallAd Control_ID_FiltroCbo
  loc_A75E0E: FStAdFunc var_88
  loc_A75E11: FLdPr var_88
  loc_A75E14: Me.ListIndex = from_stack_1
  loc_A75E19: FFree1Ad var_88
  loc_A75E1C: Call cmdCancelar_Click()
  loc_A75E21: LitI4 0
  loc_A75E26: LitI4 1
  loc_A75E2B: FLdRfVar var_100
  loc_A75E2E: Redim
  loc_A75E38: FLdPr Me
  loc_A75E3B: MemLdRfVar from_stack_1.global_52
  loc_A75E3E: NewIfNullAd
  loc_A75E41: FStAd var_88 
  loc_A75E45: FLdRfVar var_88
  loc_A75E48: CVarRef
  loc_A75E4D: ParmAry1St
  loc_A75E53: FLdPr Me
  loc_A75E56: VCallAd Control_ID_dgdABMS
  loc_A75E59: CVarAd
  loc_A75E5D: ParmAry1St
  loc_A75E63: FLdRfVar var_100
  loc_A75E66: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A75E6B: ILdRf var_88
  loc_A75E6E: CastAd
  loc_A75E71: FLdPr Me
  loc_A75E74: MemStAdFunc
  loc_A75E78: FLdRfVar var_100
  loc_A75E7B: Erase
  loc_A75E7C: FFree1Ad var_88
  loc_A75E7F: ExitProcHresult
End Sub

Private Sub Form_Activate() '9A85C8
  'Data Table: 4DABCC
  loc_9A8544: FLdRfVar var_C2
  loc_9A8547: FLdRfVar var_C0
  loc_9A854A: LitVarI2 var_B8, 1
  loc_9A854F: FLdPr Me
  loc_9A8552: VCallAd Control_ID_tlbABMS
  loc_9A8555: FStAdFunc var_88
  loc_9A8558: FLdPr var_88
  loc_9A855B: LateIdLdVar var_98 DispID_3 0
  loc_9A8562: CastAdVar Me
  loc_9A8566: FStAdFunc var_BC
  loc_9A8569: FLdPr var_BC
  loc_9A856C:  = Me.Buttons.ControlDefault
  loc_9A8571: FLdPr var_C0
  loc_9A8574:  = Me.Enabled
  loc_9A8579: FLdI2 var_C2
  loc_9A857C: FFreeAd var_88 = "": var_BC = ""
  loc_9A8585: FFreeVar var_98 = ""
  loc_9A858C: BranchF loc_9A859D
  loc_9A858F: FLdPr Me
  loc_9A8592: MemLdRfVar from_stack_1.global_52
  loc_9A8595: NewIfNullPr clsordencompra
  loc_9A8598: Call clsordencompra.Requery()
  loc_9A859D: ImpAdLdI2 MemVar_C3D064
  loc_9A85A0: LitI2 2025
  loc_9A85A3: LeI2
  loc_9A85A4: BranchF loc_9A85C4
  loc_9A85A7: LitVarI4
  loc_9A85AF: PopAdLdVar
  loc_9A85B0: FLdPr Me
  loc_9A85B3: VCallAd Control_ID_dgdABMS
  loc_9A85B6: FStAdFunc var_88
  loc_9A85B9: FLdPr var_88
  loc_9A85BC: LateIdSt
  loc_9A85C1: FFree1Ad var_88
  loc_9A85C4: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '961754
  'Data Table: 4DABCC
  loc_96173C: ILdI2 KeyCode
  loc_96173F: ILdRf Me
  loc_961742: CastAd
  loc_961745: FStAdFunc var_88
  loc_961748: FLdRfVar var_88
  loc_96174B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_961750: FFree1Ad var_88
  loc_961753: ExitProcHresult
End Sub

Private Sub BajaMotiTxt_GotFocus() '94A628
  'Data Table: 4DABCC
  loc_94A614: FLdPr Me
  loc_94A617: VCallAd Control_ID_BajaMotiTxt
  loc_94A61A: CVarAd
  loc_94A61E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A623: FFree1Var var_94 = ""
  loc_94A626: ExitProcHresult
End Sub

Private Sub BajaMotiTxt_Validate(Cancel As Boolean) '9BFCC4
  'Data Table: 4DABCC
  loc_9BFC08: FLdRfVar var_8A
  loc_9BFC0B: FLdPr Me
  loc_9BFC0E: VCallAd Control_ID_cmdCancelar
  loc_9BFC11: FStAdFunc var_88
  loc_9BFC14: FLdPr var_88
  loc_9BFC17:  = Me.Value
  loc_9BFC1C: FLdI2 var_8A
  loc_9BFC1F: NotI4
  loc_9BFC20: FLdRfVar var_92
  loc_9BFC23: FLdPr Me
  loc_9BFC26: VCallAd Control_ID_BajaMotiTxt
  loc_9BFC29: FStAdFunc var_90
  loc_9BFC2C: FLdPr var_90
  loc_9BFC2F:  = Me.Enabled
  loc_9BFC34: FLdI2 var_92
  loc_9BFC37: AndI4
  loc_9BFC38: FFreeAd var_88 = ""
  loc_9BFC3F: BranchF loc_9BFCC0
  loc_9BFC42: FLdRfVar var_98
  loc_9BFC45: FLdPr Me
  loc_9BFC48: VCallAd Control_ID_BajaMotiTxt
  loc_9BFC4B: FStAdFunc var_88
  loc_9BFC4E: FLdPr var_88
  loc_9BFC51:  = Me.Text
  loc_9BFC56: LitI2_Byte 0
  loc_9BFC58: PopTmpLdAd2 var_9A
  loc_9BFC5B: LitI2_Byte 0
  loc_9BFC5D: PopTmpLdAd2 var_92
  loc_9BFC60: LitI2_Byte 0
  loc_9BFC62: PopTmpLdAd2 var_8A
  loc_9BFC65: ILdRf var_98
  loc_9BFC68: LitStr "Detalle de Anulación"
  loc_9BFC6B: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BFC70: FStStrNoPop var_A0
  loc_9BFC73: FLdPr Me
  loc_9BFC76: MemStStrCopy
  loc_9BFC7A: FFreeStr var_98 = ""
  loc_9BFC81: FFree1Ad var_88
  loc_9BFC84: FLdPr Me
  loc_9BFC87: VCallAd Control_ID_BajaMotiTxt
  loc_9BFC8A: FStAdFunc var_A8
  loc_9BFC8D: LitNothing
  loc_9BFC8F: CastAd
  loc_9BFC92: FStAdFunc var_A4
  loc_9BFC95: FLdRfVar var_A4
  loc_9BFC98: FLdZeroAd var_A8
  loc_9BFC9B: FStAdFuncNoPop
  loc_9BFC9E: CastAd
  loc_9BFCA1: FStAdFunc var_90
  loc_9BFCA4: FLdRfVar var_90
  loc_9BFCA7: FLdPr Me
  loc_9BFCAA: MemLdRfVar from_stack_1.global_64
  loc_9BFCAD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BFCB2: IStI2 Cancel
  loc_9BFCB5: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BFCC0: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '94A820
  'Data Table: 4DABCC
  loc_94A80C: FLdPr Me
  loc_94A80F: VCallAd Control_ID_CodiOrgaMsk
  loc_94A812: CVarAd
  loc_94A816: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A81B: FFree1Var var_94 = ""
  loc_94A81E: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 '9E6CE4
  'Data Table: 4DABCC
  loc_9E6BD0: FLdRfVar var_8A
  loc_9E6BD3: FLdPr Me
  loc_9E6BD6: VCallAd Control_ID_cmdCancelar
  loc_9E6BD9: FStAdFunc var_88
  loc_9E6BDC: FLdPr var_88
  loc_9E6BDF:  = Me.Value
  loc_9E6BE4: FLdI2 var_8A
  loc_9E6BE7: NotI4
  loc_9E6BE8: FLdPr Me
  loc_9E6BEB: VCallAd Control_ID_CodiOrgaMsk
  loc_9E6BEE: FStAdFunc var_90
  loc_9E6BF1: FLdPr var_90
  loc_9E6BF4: LateIdLdVar var_A0 DispID_13 -32767
  loc_9E6BFB: CBoolVar
  loc_9E6BFD: AndI4
  loc_9E6BFE: FFreeAd var_88 = ""
  loc_9E6C05: FFree1Var var_A0 = ""
  loc_9E6C08: BranchF loc_9E6CE3
  loc_9E6C0B: FLdPr Me
  loc_9E6C0E: VCallAd Control_ID_CodiOrgaMsk
  loc_9E6C11: FStAdFunc var_88
  loc_9E6C14: FLdRfVar var_88
  loc_9E6C17: ImpAdCallFPR4 Proc_261_66_9A99A8()
  loc_9E6C1C: FFree1Ad var_88
  loc_9E6C1F: FLdPr Me
  loc_9E6C22: VCallAd Control_ID_CodiOrgaMsk
  loc_9E6C25: FStAdFunc var_88
  loc_9E6C28: FLdPr var_88
  loc_9E6C2B: LateIdLdVar var_A0 DispID_22 0
  loc_9E6C32: PopAd
  loc_9E6C34: FLdRfVar var_A4
  loc_9E6C37: FLdPr Me
  loc_9E6C3A:  = Me.Name
  loc_9E6C3F: FLdPr Me
  loc_9E6C42: MemLdRfVar from_stack_1.global_76
  loc_9E6C45: NewIfNullRf
  loc_9E6C49: ILdRf var_A4
  loc_9E6C4C: FLdRfVar var_A0
  loc_9E6C4F: CStrVarTmp
  loc_9E6C50: FStStrNoPop var_A8
  loc_9E6C53: ImpAdLdI2 MemVar_C3D064
  loc_9E6C56: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_9E6C5B: FStStrNoPop var_AC
  loc_9E6C5E: FLdPr Me
  loc_9E6C61: MemStStrCopy
  loc_9E6C65: FFreeStr var_A8 = "": var_A4 = ""
  loc_9E6C6E: FFree1Ad var_88
  loc_9E6C71: FFree1Var var_A0 = ""
  loc_9E6C74: FLdPr Me
  loc_9E6C77: VCallAd Control_ID_CodiOrgaMsk
  loc_9E6C7A: FStAdFunc var_B4
  loc_9E6C7D: FLdPr Me
  loc_9E6C80: VCallAd Control_ID_DetaOrgaLbl
  loc_9E6C83: FStAdFunc var_B0
  loc_9E6C86: FLdRfVar var_B0
  loc_9E6C89: FLdZeroAd var_B4
  loc_9E6C8C: FStAdFuncNoPop
  loc_9E6C8F: CastAd
  loc_9E6C92: FStAdFunc var_90
  loc_9E6C95: FLdRfVar var_90
  loc_9E6C98: FLdPr Me
  loc_9E6C9B: MemLdRfVar from_stack_1.global_64
  loc_9E6C9E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E6CA3: IStI2 Cancel
  loc_9E6CA6: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9E6CB1: ILdI2 Cancel
  loc_9E6CB4: NotI4
  loc_9E6CB5: BranchF loc_9E6CE3
  loc_9E6CB8: FLdRfVar var_A4
  loc_9E6CBB: FLdPr Me
  loc_9E6CBE: MemLdRfVar from_stack_1.global_76
  loc_9E6CC1: NewIfNullPr tblorganigrama
  loc_9E6CC4: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_9E6CC9: ILdRf var_A4
  loc_9E6CCC: FLdPr Me
  loc_9E6CCF: VCallAd Control_ID_DetaOrgaLbl
  loc_9E6CD2: FStAdFunc var_88
  loc_9E6CD5: FLdPr var_88
  loc_9E6CD8: Me.Caption = from_stack_1
  loc_9E6CDD: FFree1Str var_A4
  loc_9E6CE0: FFree1Ad var_88
  loc_9E6CE3: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyPress(KeyAscii As Integer) 'A00A40
  'Data Table: 4DABCC
  loc_A008F4: ILdI2 KeyAscii
  loc_A008F7: CI4UI1
  loc_A008F8: LitI4 &H20
  loc_A008FD: EqI4
  loc_A008FE: BranchF loc_A00A3C
  loc_A00901: LitI2_Byte 0
  loc_A00903: ImpAdLdRf MemVar_C3D710
  loc_A00906: NewIfNullPr bscOrganigrama
  loc_A00909: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A0090E: LitNothing
  loc_A00910: CastAd
  loc_A00913: FStAdFuncNoPop
  loc_A00916: ImpAdLdRf MemVar_C3D710
  loc_A00919: NewIfNullPr bscOrganigrama
  loc_A0091C: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A00921: FFree1Ad var_88
  loc_A00924: LitVar_Missing var_A8
  loc_A00927: PopAdLdVar
  loc_A00928: LitVarI4
  loc_A00930: PopAdLdVar
  loc_A00931: ImpAdLdRf MemVar_C3D710
  loc_A00934: NewIfNullPr bscOrganigrama
  loc_A00937: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A0093C: FLdRfVar var_AC
  loc_A0093F: FLdRfVar var_88
  loc_A00942: ImpAdLdRf MemVar_C3D710
  loc_A00945: NewIfNullPr bscOrganigrama
  loc_A00948: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A0094D: FLdPr var_88
  loc_A00950: from_stack_1 = clsbase.RecordCount
  loc_A00955: ILdRf var_AC
  loc_A00958: LitI4 0
  loc_A0095D: GtI4
  loc_A0095E: FFree1Ad var_88
  loc_A00961: BranchF loc_A00A3C
  loc_A00964: FLdRfVar var_C8
  loc_A00967: FLdRfVar var_B8
  loc_A0096A: LitVarStr var_98, "CodiOrga"
  loc_A0096F: PopAdLdVar
  loc_A00970: FLdRfVar var_B4
  loc_A00973: FLdRfVar var_B0
  loc_A00976: FLdRfVar var_88
  loc_A00979: ImpAdLdRf MemVar_C3D710
  loc_A0097C: NewIfNullPr bscOrganigrama
  loc_A0097F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A00984: FLdPr var_88
  loc_A00987: from_stack_1v = clsbase.RsFrmGet()
  loc_A0098C: FLdPr var_B0
  loc_A0098F:  = Me.Fields
  loc_A00994: FLdPr var_B4
  loc_A00997: from_stack_2 = Me.Item(from_stack_1)
  loc_A0099C: FLdPr var_B8
  loc_A0099F:  = Me.Value
  loc_A009A4: FLdRfVar var_C8
  loc_A009A7: CStrVarTmp
  loc_A009A8: CVarStr var_D8
  loc_A009AB: PopAdLdVar
  loc_A009AC: FLdPr Me
  loc_A009AF: VCallAd Control_ID_CodiOrgaMsk
  loc_A009B2: FStAdFunc var_DC
  loc_A009B5: FLdPr var_DC
  loc_A009B8: LateIdSt
  loc_A009BD: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A009CA: FFreeVar var_C8 = ""
  loc_A009D1: FLdRfVar var_C8
  loc_A009D4: FLdRfVar var_B8
  loc_A009D7: LitVarStr var_98, "DetaOrga"
  loc_A009DC: PopAdLdVar
  loc_A009DD: FLdRfVar var_B4
  loc_A009E0: FLdRfVar var_B0
  loc_A009E3: FLdRfVar var_88
  loc_A009E6: ImpAdLdRf MemVar_C3D710
  loc_A009E9: NewIfNullPr bscOrganigrama
  loc_A009EC: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A009F1: FLdPr var_88
  loc_A009F4: from_stack_1v = clsbase.RsFrmGet()
  loc_A009F9: FLdPr var_B0
  loc_A009FC:  = Me.Fields
  loc_A00A01: FLdPr var_B4
  loc_A00A04: from_stack_2 = Me.Item(from_stack_1)
  loc_A00A09: FLdPr var_B8
  loc_A00A0C:  = Me.Value
  loc_A00A11: FLdRfVar var_C8
  loc_A00A14: CStrVarTmp
  loc_A00A15: FStStrNoPop var_E0
  loc_A00A18: FLdPr Me
  loc_A00A1B: VCallAd Control_ID_DetaOrgaLbl
  loc_A00A1E: FStAdFunc var_DC
  loc_A00A21: FLdPr var_DC
  loc_A00A24: Me.Caption = from_stack_1
  loc_A00A29: FFree1Str var_E0
  loc_A00A2C: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A00A39: FFree1Var var_C8 = ""
  loc_A00A3C: ExitProcHresult
  loc_A00A3D: FLdI2 var_B8
End Sub

Private Sub AlivaOrcoTxt_Validate(Cancel As Boolean) '9EB370
  'Data Table: 4DABCC
  loc_9EB248: FLdRfVar var_8A
  loc_9EB24B: FLdPr Me
  loc_9EB24E: VCallAd Control_ID_cmdCancelar
  loc_9EB251: FStAdFunc var_88
  loc_9EB254: FLdPr var_88
  loc_9EB257:  = Me.Value
  loc_9EB25C: FLdI2 var_8A
  loc_9EB25F: NotI4
  loc_9EB260: FLdRfVar var_92
  loc_9EB263: FLdPr Me
  loc_9EB266: VCallAd Control_ID_AlivaOrcoTxt
  loc_9EB269: FStAdFunc var_90
  loc_9EB26C: FLdPr var_90
  loc_9EB26F:  = Me.Enabled
  loc_9EB274: FLdI2 var_92
  loc_9EB277: AndI4
  loc_9EB278: FFreeAd var_88 = ""
  loc_9EB27F: BranchF loc_9EB36D
  loc_9EB282: FLdRfVar var_98
  loc_9EB285: FLdPr Me
  loc_9EB288: VCallAd Control_ID_AlivaOrcoTxt
  loc_9EB28B: FStAdFunc var_88
  loc_9EB28E: FLdPr var_88
  loc_9EB291:  = Me.Text
  loc_9EB296: LitStr "0"
  loc_9EB299: LitI2_Byte &HFF
  loc_9EB29B: LitI2_Byte &HFF
  loc_9EB29D: LitI2_Byte 0
  loc_9EB29F: ILdRf var_98
  loc_9EB2A2: LitStr "Alícuota"
  loc_9EB2A5: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9EB2AA: FStStrNoPop var_9C
  loc_9EB2AD: FLdPr Me
  loc_9EB2B0: MemStStrCopy
  loc_9EB2B4: FFreeStr var_98 = ""
  loc_9EB2BB: FFree1Ad var_88
  loc_9EB2BE: FLdPr Me
  loc_9EB2C1: VCallAd Control_ID_AlivaOrcoTxt
  loc_9EB2C4: FStAdFunc var_A4
  loc_9EB2C7: LitNothing
  loc_9EB2C9: CastAd
  loc_9EB2CC: FStAdFunc var_A0
  loc_9EB2CF: FLdRfVar var_A0
  loc_9EB2D2: FLdZeroAd var_A4
  loc_9EB2D5: FStAdFuncNoPop
  loc_9EB2D8: CastAd
  loc_9EB2DB: FStAdFunc var_90
  loc_9EB2DE: FLdRfVar var_90
  loc_9EB2E1: FLdPr Me
  loc_9EB2E4: MemLdRfVar from_stack_1.global_64
  loc_9EB2E7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9EB2EC: IStI2 Cancel
  loc_9EB2EF: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9EB2FA: ILdI2 Cancel
  loc_9EB2FD: NotI4
  loc_9EB2FE: BranchF loc_9EB36D
  loc_9EB301: FLdRfVar var_98
  loc_9EB304: FLdPr Me
  loc_9EB307: VCallAd Control_ID_AlivaOrcoTxt
  loc_9EB30A: FStAdFunc var_88
  loc_9EB30D: FLdPr var_88
  loc_9EB310:  = Me.Text
  loc_9EB315: ILdRf var_98
  loc_9EB318: CR8Str
  loc_9EB31A: LitI2_Byte &H1C
  loc_9EB31C: CR8I2
  loc_9EB31D: GtR4
  loc_9EB31E: FFree1Str var_98
  loc_9EB321: FFree1Ad var_88
  loc_9EB324: BranchF loc_9EB36D
  loc_9EB327: LitStr "La Alícuota no puede ser mayor a 28" & Chr(37) & ". Verifique..."
  loc_9EB32A: FLdPr Me
  loc_9EB32D: MemStStrCopy
  loc_9EB331: FLdPr Me
  loc_9EB334: VCallAd Control_ID_AlivaOrcoTxt
  loc_9EB337: FStAdFunc var_A4
  loc_9EB33A: LitNothing
  loc_9EB33C: CastAd
  loc_9EB33F: FStAdFunc var_A0
  loc_9EB342: FLdRfVar var_A0
  loc_9EB345: FLdZeroAd var_A4
  loc_9EB348: FStAdFuncNoPop
  loc_9EB34B: CastAd
  loc_9EB34E: FStAdFunc var_90
  loc_9EB351: FLdRfVar var_90
  loc_9EB354: FLdPr Me
  loc_9EB357: MemLdRfVar from_stack_1.global_64
  loc_9EB35A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9EB35F: IStI2 Cancel
  loc_9EB362: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9EB36D: ExitProcHresult
  loc_9EB36E: PopTmpLdAd2 arg_5400
End Sub

Private Sub DetaOrcoTxt_GotFocus() '94A3A0
  'Data Table: 4DABCC
  loc_94A38C: FLdPrThis
  loc_94A38D: VCallAd Control_ID_DetaOrcoTxt
  loc_94A390: CVarAd
  loc_94A394: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A399: FFree1Var var_94 = ""
  loc_94A39C: ExitProcHresult
  loc_94A39D: CStrVarTmp
  loc_94A39E: FStStrNoPop arg_5438
End Sub

Private Sub DetaOrcoTxt_Validate(Cancel As Boolean) '9BFECC
  'Data Table: 4DABCC
  loc_9BFE10: FLdRfVar var_8A
  loc_9BFE13: FLdPr Me
  loc_9BFE16: VCallAd Control_ID_cmdCancelar
  loc_9BFE19: FStAdFunc var_88
  loc_9BFE1C: FLdPr var_88
  loc_9BFE1F:  = Me.Value
  loc_9BFE24: FLdI2 var_8A
  loc_9BFE27: NotI4
  loc_9BFE28: FLdRfVar var_92
  loc_9BFE2B: FLdPr Me
  loc_9BFE2E: VCallAd Control_ID_DetaOrcoTxt
  loc_9BFE31: FStAdFunc var_90
  loc_9BFE34: FLdPr var_90
  loc_9BFE37:  = Me.Enabled
  loc_9BFE3C: FLdI2 var_92
  loc_9BFE3F: AndI4
  loc_9BFE40: FFreeAd var_88 = ""
  loc_9BFE47: BranchF loc_9BFEC8
  loc_9BFE4A: FLdRfVar var_98
  loc_9BFE4D: FLdPr Me
  loc_9BFE50: VCallAd Control_ID_DetaOrcoTxt
  loc_9BFE53: FStAdFunc var_88
  loc_9BFE56: FLdPr var_88
  loc_9BFE59:  = Me.Text
  loc_9BFE5E: LitI2_Byte 0
  loc_9BFE60: PopTmpLdAd2 var_9A
  loc_9BFE63: LitI2_Byte 0
  loc_9BFE65: PopTmpLdAd2 var_92
  loc_9BFE68: LitI2_Byte 0
  loc_9BFE6A: PopTmpLdAd2 var_8A
  loc_9BFE6D: ILdRf var_98
  loc_9BFE70: LitStr "Nota de Pedido"
  loc_9BFE73: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BFE78: FStStrNoPop var_A0
  loc_9BFE7B: FLdPr Me
  loc_9BFE7E: MemStStrCopy
  loc_9BFE82: FFreeStr var_98 = ""
  loc_9BFE89: FFree1Ad var_88
  loc_9BFE8C: FLdPr Me
  loc_9BFE8F: VCallAd Control_ID_DetaOrcoTxt
  loc_9BFE92: FStAdFunc var_A8
  loc_9BFE95: LitNothing
  loc_9BFE97: CastAd
  loc_9BFE9A: FStAdFunc var_A4
  loc_9BFE9D: FLdRfVar var_A4
  loc_9BFEA0: FLdZeroAd var_A8
  loc_9BFEA3: FStAdFuncNoPop
  loc_9BFEA6: CastAd
  loc_9BFEA9: FStAdFunc var_90
  loc_9BFEAC: FLdRfVar var_90
  loc_9BFEAF: FLdPr Me
  loc_9BFEB2: MemLdRfVar from_stack_1.global_64
  loc_9BFEB5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BFEBA: IStI2 Cancel
  loc_9BFEBD: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BFEC8: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_GotFocus() '94D328
  'Data Table: 4DABCC
  loc_94D314: FLdPr Me
  loc_94D317: VCallAd Control_ID_ExpeImpuTxt
  loc_94D31A: CVarAd
  loc_94D31E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D323: FFree1Var var_94 = ""
  loc_94D326: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9579FC
  'Data Table: 4DABCC
  loc_9579E4: FLdPr Me
  loc_9579E7: VCallAd Control_ID_dgdABMS
  loc_9579EA: FStAdFunc var_88
  loc_9579ED: FLdRfVar var_88
  loc_9579F0: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_9579F5: FFree1Ad var_88
  loc_9579F8: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '957B2C
  'Data Table: 4DABCC
  loc_957B14: FLdPr Me
  loc_957B17: VCallAd Control_ID_dgdABMS
  loc_957B1A: FStAdFunc var_88
  loc_957B1D: FLdRfVar var_88
  loc_957B20: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_957B25: FFree1Ad var_88
  loc_957B28: ExitProcHresult
  loc_957B29: ExitProcR8
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999E54
  'Data Table: 4DABCC
  loc_999DF8: FLdRfVar var_B4
  loc_999DFB: FLdRfVar var_B0
  loc_999DFE: FLdI2 ColIndex
  loc_999E01: CVarI2 var_A8
  loc_999E04: PopAdLdVar
  loc_999E05: FLdPr Me
  loc_999E08: VCallAd Control_ID_dgdABMS
  loc_999E0B: FStAdFunc var_88
  loc_999E0E: FLdPr var_88
  loc_999E11: LateIdLdVar var_98 DispID_105 0
  loc_999E18: CastAdVar Me
  loc_999E1C: FStAdFunc var_AC
  loc_999E1F: FLdPr var_AC
  loc_999E22: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_999E27: FLdPr var_B0
  loc_999E2A:  = Me.DataField
  loc_999E2F: FLdZeroAd var_B4
  loc_999E32: PopTmpLdAdStr
  loc_999E36: FLdPr Me
  loc_999E39: MemLdRfVar from_stack_1.global_52
  loc_999E3C: NewIfNullPr clsordencompra
  loc_999E3F: Call clsordencompra.Sort(from_stack_1v)
  loc_999E44: FFree1Str var_B8
  loc_999E47: FFreeAd var_88 = "": var_AC = ""
  loc_999E50: FFree1Var var_98 = ""
  loc_999E53: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'B3C3D0
  'Data Table: 4DABCC
  loc_B3BB5C: Call Proc_128_40_A3BCA4()
  loc_B3BB61: FLdPr Me
  loc_B3BB64: MemLdUI1 global_60
  loc_B3BB68: CI2UI1
  loc_B3BB6A: LitI2_Byte 0
  loc_B3BB6C: EqI2
  loc_B3BB6D: FLdRfVar var_88
  loc_B3BB70: FLdPr Me
  loc_B3BB73: MemLdRfVar from_stack_1.global_52
  loc_B3BB76: NewIfNullPr clsordencompra
  loc_B3BB79: from_stack_1 = clsordencompra.RecordCount
  loc_B3BB7E: ILdRf var_88
  loc_B3BB81: LitI4 0
  loc_B3BB86: GtI4
  loc_B3BB87: AndI4
  loc_B3BB88: BranchF loc_B3C3CF
  loc_B3BB8B: FLdRfVar var_8A
  loc_B3BB8E: FLdPr Me
  loc_B3BB91: MemLdRfVar from_stack_1.global_52
  loc_B3BB94: NewIfNullPr clsordencompra
  loc_B3BB97: from_stack_1 = clsordencompra.BOF
  loc_B3BB9C: FLdI2 var_8A
  loc_B3BB9F: BranchF loc_B3BBB0
  loc_B3BBA2: FLdPr Me
  loc_B3BBA5: MemLdRfVar from_stack_1.global_52
  loc_B3BBA8: NewIfNullPr clsordencompra
  loc_B3BBAB: Call clsordencompra.MoveFirst()
  loc_B3BBB0: FLdRfVar var_8A
  loc_B3BBB3: FLdPr Me
  loc_B3BBB6: MemLdRfVar from_stack_1.global_52
  loc_B3BBB9: NewIfNullPr clsordencompra
  loc_B3BBBC: from_stack_1 = clsordencompra.EOF
  loc_B3BBC1: FLdI2 var_8A
  loc_B3BBC4: BranchF loc_B3BBD5
  loc_B3BBC7: FLdPr Me
  loc_B3BBCA: MemLdRfVar from_stack_1.global_52
  loc_B3BBCD: NewIfNullPr clsordencompra
  loc_B3BBD0: Call clsordencompra.MoveLast()
  loc_B3BBD5: LitStr "SET @TotalOrden=0.00, @SumIdImpu=0;"
  loc_B3BBD8: FLdPr Me
  loc_B3BBDB: MemLdRfVar from_stack_1.global_56
  loc_B3BBDE: NewIfNullPr clsbase
  loc_B3BBE1: Call clsbase.RedefineRS(from_stack_1v)
  loc_B3BBE6: LitStr "SELECT itemcompra.*, DetaInsu"
  loc_B3BBE9: LitStr ", Round(CantItco*ImunItco,3) TotalItem"
  loc_B3BBEC: ConcatStr
  loc_B3BBED: FStStrNoPop var_90
  loc_B3BBF0: LitStr ", Round(@TotalOrden:=@TotalOrden+CantItco*ImunItco,3) TotalOrden"
  loc_B3BBF3: ConcatStr
  loc_B3BBF4: FStStrNoPop var_94
  loc_B3BBF7: LitStr ", @SumIdImpu:=@SumIdImpu+IdImpu SumIdImpu"
  loc_B3BBFA: ConcatStr
  loc_B3BBFB: FStStrNoPop var_98
  loc_B3BBFE: LitStr " FROM itemcompra "
  loc_B3BC01: ConcatStr
  loc_B3BC02: FStStrNoPop var_9C
  loc_B3BC05: LitStr " INNER JOIN infogov.insumo ON itemcompra.CodiInsu = insumo.CodiInsu "
  loc_B3BC08: ConcatStr
  loc_B3BC09: FStStrNoPop var_A0
  loc_B3BC0C: LitStr " WHERE itemcompra.PeriInfo = "
  loc_B3BC0F: ConcatStr
  loc_B3BC10: CVarStr var_DC
  loc_B3BC13: FLdRfVar var_CC
  loc_B3BC16: FLdRfVar var_BC
  loc_B3BC19: LitVarStr var_B8, "PeriInfo"
  loc_B3BC1E: PopAdLdVar
  loc_B3BC1F: FLdRfVar var_A8
  loc_B3BC22: FLdRfVar var_A4
  loc_B3BC25: FLdPr Me
  loc_B3BC28: MemLdRfVar from_stack_1.global_52
  loc_B3BC2B: NewIfNullPr clsordencompra
  loc_B3BC2E: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B3BC33: FLdPr var_A4
  loc_B3BC36:  = Me.Fields
  loc_B3BC3B: FLdPr var_A8
  loc_B3BC3E: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BC43: FLdPr var_BC
  loc_B3BC46:  = Me.Value
  loc_B3BC4B: FLdRfVar var_CC
  loc_B3BC4E: ConcatVar var_EC
  loc_B3BC52: LitVarStr var_FC, " AND itemcompra.CodiOrco = "
  loc_B3BC57: ConcatVar var_10C
  loc_B3BC5B: FLdRfVar var_138
  loc_B3BC5E: FLdRfVar var_128
  loc_B3BC61: LitVarStr var_124, "CodiOrco"
  loc_B3BC66: PopAdLdVar
  loc_B3BC67: FLdRfVar var_114
  loc_B3BC6A: FLdRfVar var_110
  loc_B3BC6D: FLdPr Me
  loc_B3BC70: MemLdRfVar from_stack_1.global_52
  loc_B3BC73: NewIfNullPr clsordencompra
  loc_B3BC76: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B3BC7B: FLdPr var_110
  loc_B3BC7E:  = Me.Fields
  loc_B3BC83: FLdPr var_114
  loc_B3BC86: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BC8B: FLdPr var_128
  loc_B3BC8E:  = Me.Value
  loc_B3BC93: FLdRfVar var_138
  loc_B3BC96: ConcatVar var_148
  loc_B3BC9A: LitVarStr var_158, " GROUP BY PeriInfo, CodiOrco, CodiItco, AlteItco;"
  loc_B3BC9F: ConcatVar var_168
  loc_B3BCA3: CStrVarVal var_16C
  loc_B3BCA7: FLdPr Me
  loc_B3BCAA: MemLdRfVar from_stack_1.global_56
  loc_B3BCAD: NewIfNullPr clsbase
  loc_B3BCB0: Call clsbase.RedefineRS(from_stack_1v)
  loc_B3BCB5: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B3BCC4: FFreeAd var_A4 = "": var_A8 = "": var_BC = "": var_110 = "": var_114 = ""
  loc_B3BCD3: FFreeVar var_DC = "": var_CC = "": var_EC = "": var_10C = "": var_138 = "": var_148 = ""
  loc_B3BCE4: FLdRfVar var_88
  loc_B3BCE7: FLdPr Me
  loc_B3BCEA: MemLdRfVar from_stack_1.global_56
  loc_B3BCED: NewIfNullPr clsbase
  loc_B3BCF0: from_stack_1 = clsbase.RecordCount
  loc_B3BCF5: ILdRf var_88
  loc_B3BCF8: LitI4 0
  loc_B3BCFD: GtI4
  loc_B3BCFE: BranchF loc_B3C3CF
  loc_B3BD01: FLdPr Me
  loc_B3BD04: MemLdRfVar from_stack_1.global_56
  loc_B3BD07: NewIfNullPr clsbase
  loc_B3BD0A: Call clsbase.MoveFirst()
  loc_B3BD0F: FLdRfVar var_8A
  loc_B3BD12: FLdPr Me
  loc_B3BD15: MemLdRfVar from_stack_1.global_56
  loc_B3BD18: NewIfNullPr clsbase
  loc_B3BD1B: from_stack_1 = clsbase.EOF
  loc_B3BD20: FLdI2 var_8A
  loc_B3BD23: NotI4
  loc_B3BD24: BranchF loc_B3C34C
  loc_B3BD27: FLdRfVar var_27C
  loc_B3BD2A: LitVarStr var_278, "CantItco"
  loc_B3BD2F: PopAdLdVar
  loc_B3BD30: FLdRfVar var_268
  loc_B3BD33: FLdRfVar var_264
  loc_B3BD36: FLdPr Me
  loc_B3BD39: MemLdRfVar from_stack_1.global_56
  loc_B3BD3C: NewIfNullPr clsbase
  loc_B3BD3F: from_stack_1v = clsbase.RsFrmGet()
  loc_B3BD44: FLdPr var_264
  loc_B3BD47:  = Me.Fields
  loc_B3BD4C: FLdPr var_268
  loc_B3BD4F: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BD54: FLdRfVar var_308
  loc_B3BD57: LitVarStr var_304, "ImunItco"
  loc_B3BD5C: PopAdLdVar
  loc_B3BD5D: FLdRfVar var_2F4
  loc_B3BD60: FLdRfVar var_2F0
  loc_B3BD63: FLdPr Me
  loc_B3BD66: MemLdRfVar from_stack_1.global_56
  loc_B3BD69: NewIfNullPr clsbase
  loc_B3BD6C: from_stack_1v = clsbase.RsFrmGet()
  loc_B3BD71: FLdPr var_2F0
  loc_B3BD74:  = Me.Fields
  loc_B3BD79: FLdPr var_2F4
  loc_B3BD7C: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BD81: FLdRfVar var_394
  loc_B3BD84: LitVarStr var_390, "TotalItem"
  loc_B3BD89: PopAdLdVar
  loc_B3BD8A: FLdRfVar var_380
  loc_B3BD8D: FLdRfVar var_37C
  loc_B3BD90: FLdPr Me
  loc_B3BD93: MemLdRfVar from_stack_1.global_56
  loc_B3BD96: NewIfNullPr clsbase
  loc_B3BD99: from_stack_1v = clsbase.RsFrmGet()
  loc_B3BD9E: FLdPr var_37C
  loc_B3BDA1:  = Me.Fields
  loc_B3BDA6: FLdPr var_380
  loc_B3BDA9: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BDAE: FLdRfVar var_648
  loc_B3BDB1: LitVarStr var_644, "CantItco"
  loc_B3BDB6: PopAdLdVar
  loc_B3BDB7: FLdRfVar var_634
  loc_B3BDBA: FLdRfVar var_630
  loc_B3BDBD: FLdPr Me
  loc_B3BDC0: MemLdRfVar from_stack_1.global_56
  loc_B3BDC3: NewIfNullPr clsbase
  loc_B3BDC6: from_stack_1v = clsbase.RsFrmGet()
  loc_B3BDCB: FLdPr var_630
  loc_B3BDCE:  = Me.Fields
  loc_B3BDD3: FLdPr var_634
  loc_B3BDD6: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BDDB: FLdRfVar var_DC
  loc_B3BDDE: FLdRfVar var_BC
  loc_B3BDE1: LitVarStr var_B8, "CodiItco"
  loc_B3BDE6: PopAdLdVar
  loc_B3BDE7: FLdRfVar var_A8
  loc_B3BDEA: FLdRfVar var_A4
  loc_B3BDED: FLdPr Me
  loc_B3BDF0: MemLdRfVar from_stack_1.global_56
  loc_B3BDF3: NewIfNullPr clsbase
  loc_B3BDF6: from_stack_1v = clsbase.RsFrmGet()
  loc_B3BDFB: FLdPr var_A4
  loc_B3BDFE:  = Me.Fields
  loc_B3BE03: FLdPr var_A8
  loc_B3BE06: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BE0B: FLdPr var_BC
  loc_B3BE0E:  = Me.Value
  loc_B3BE13: FLdRfVar var_DC
  loc_B3BE16: LitI4 9
  loc_B3BE1B: FLdRfVar var_CC
  loc_B3BE1E: ImpAdCallFPR4  = Chr()
  loc_B3BE23: FLdRfVar var_CC
  loc_B3BE26: ConcatVar var_EC
  loc_B3BE2A: FLdRfVar var_10C
  loc_B3BE2D: FLdRfVar var_128
  loc_B3BE30: LitVarStr var_FC, "AlteItco"
  loc_B3BE35: PopAdLdVar
  loc_B3BE36: FLdRfVar var_114
  loc_B3BE39: FLdRfVar var_110
  loc_B3BE3C: FLdPr Me
  loc_B3BE3F: MemLdRfVar from_stack_1.global_56
  loc_B3BE42: NewIfNullPr clsbase
  loc_B3BE45: from_stack_1v = clsbase.RsFrmGet()
  loc_B3BE4A: FLdPr var_110
  loc_B3BE4D:  = Me.Fields
  loc_B3BE52: FLdPr var_114
  loc_B3BE55: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BE5A: FLdPr var_128
  loc_B3BE5D:  = Me.Value
  loc_B3BE62: FLdRfVar var_10C
  loc_B3BE65: ConcatVar var_138
  loc_B3BE69: LitI4 9
  loc_B3BE6E: FLdRfVar var_148
  loc_B3BE71: ImpAdCallFPR4  = Chr()
  loc_B3BE76: FLdRfVar var_148
  loc_B3BE79: ConcatVar var_168
  loc_B3BE7D: FLdRfVar var_188
  loc_B3BE80: FLdRfVar var_178
  loc_B3BE83: LitVarStr var_124, "CodiInsu"
  loc_B3BE88: PopAdLdVar
  loc_B3BE89: FLdRfVar var_174
  loc_B3BE8C: FLdRfVar var_170
  loc_B3BE8F: FLdPr Me
  loc_B3BE92: MemLdRfVar from_stack_1.global_56
  loc_B3BE95: NewIfNullPr clsbase
  loc_B3BE98: from_stack_1v = clsbase.RsFrmGet()
  loc_B3BE9D: FLdPr var_170
  loc_B3BEA0:  = Me.Fields
  loc_B3BEA5: FLdPr var_174
  loc_B3BEA8: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BEAD: FLdPr var_178
  loc_B3BEB0:  = Me.Value
  loc_B3BEB5: FLdRfVar var_188
  loc_B3BEB8: ConcatVar var_198
  loc_B3BEBC: LitI4 9
  loc_B3BEC1: FLdRfVar var_1A8
  loc_B3BEC4: ImpAdCallFPR4  = Chr()
  loc_B3BEC9: FLdRfVar var_1A8
  loc_B3BECC: ConcatVar var_1B8
  loc_B3BED0: FLdRfVar var_1D4
  loc_B3BED3: FLdRfVar var_1C4
  loc_B3BED6: LitVarStr var_158, "DetaInsu"
  loc_B3BEDB: PopAdLdVar
  loc_B3BEDC: FLdRfVar var_1C0
  loc_B3BEDF: FLdRfVar var_1BC
  loc_B3BEE2: FLdPr Me
  loc_B3BEE5: MemLdRfVar from_stack_1.global_56
  loc_B3BEE8: NewIfNullPr clsbase
  loc_B3BEEB: from_stack_1v = clsbase.RsFrmGet()
  loc_B3BEF0: FLdPr var_1BC
  loc_B3BEF3:  = Me.Fields
  loc_B3BEF8: FLdPr var_1C0
  loc_B3BEFB: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BF00: FLdPr var_1C4
  loc_B3BF03:  = Me.Value
  loc_B3BF08: FLdRfVar var_1D4
  loc_B3BF0B: ConcatVar var_1E4
  loc_B3BF0F: LitI4 9
  loc_B3BF14: FLdRfVar var_1F4
  loc_B3BF17: ImpAdCallFPR4  = Chr()
  loc_B3BF1C: FLdRfVar var_1F4
  loc_B3BF1F: ConcatVar var_204
  loc_B3BF23: FLdRfVar var_230
  loc_B3BF26: FLdRfVar var_220
  loc_B3BF29: LitVarStr var_21C, "DetaItco"
  loc_B3BF2E: PopAdLdVar
  loc_B3BF2F: FLdRfVar var_20C
  loc_B3BF32: FLdRfVar var_208
  loc_B3BF35: FLdPr Me
  loc_B3BF38: MemLdRfVar from_stack_1.global_56
  loc_B3BF3B: NewIfNullPr clsbase
  loc_B3BF3E: from_stack_1v = clsbase.RsFrmGet()
  loc_B3BF43: FLdPr var_208
  loc_B3BF46:  = Me.Fields
  loc_B3BF4B: FLdPr var_20C
  loc_B3BF4E: from_stack_2 = Me.Item(from_stack_1)
  loc_B3BF53: FLdPr var_220
  loc_B3BF56:  = Me.Value
  loc_B3BF5B: FLdRfVar var_230
  loc_B3BF5E: ConcatVar var_240
  loc_B3BF62: LitI4 9
  loc_B3BF67: FLdRfVar var_250
  loc_B3BF6A: ImpAdCallFPR4  = Chr()
  loc_B3BF6F: FLdRfVar var_250
  loc_B3BF72: ConcatVar var_260
  loc_B3BF76: LitI4 1
  loc_B3BF7B: LitI4 1
  loc_B3BF80: LitVarStr var_29C, "0.000"
  loc_B3BF85: FStVarCopyObj var_2AC
  loc_B3BF88: FLdRfVar var_2AC
  loc_B3BF8B: FLdZeroAd var_27C
  loc_B3BF8E: CVarAd
  loc_B3BF92: ImpAdCallI2 Format$(, )
  loc_B3BF97: CVarStr var_2BC
  loc_B3BF9A: ConcatVar var_2CC
  loc_B3BF9E: LitI4 9
  loc_B3BFA3: FLdRfVar var_2DC
  loc_B3BFA6: ImpAdCallFPR4  = Chr()
  loc_B3BFAB: FLdRfVar var_2DC
  loc_B3BFAE: ConcatVar var_2EC
  loc_B3BFB2: LitI4 1
  loc_B3BFB7: LitI4 1
  loc_B3BFBC: LitVarStr var_328, "0.000"
  loc_B3BFC1: FStVarCopyObj var_338
  loc_B3BFC4: FLdRfVar var_338
  loc_B3BFC7: FLdZeroAd var_308
  loc_B3BFCA: CVarAd
  loc_B3BFCE: ImpAdCallI2 Format$(, )
  loc_B3BFD3: CVarStr var_348
  loc_B3BFD6: ConcatVar var_358
  loc_B3BFDA: LitI4 9
  loc_B3BFDF: FLdRfVar var_368
  loc_B3BFE2: ImpAdCallFPR4  = Chr()
  loc_B3BFE7: FLdRfVar var_368
  loc_B3BFEA: ConcatVar var_378
  loc_B3BFEE: LitI4 1
  loc_B3BFF3: LitI4 1
  loc_B3BFF8: LitVarStr var_3B4, "0.000"
  loc_B3BFFD: FStVarCopyObj var_3C4
  loc_B3C000: FLdRfVar var_3C4
  loc_B3C003: FLdZeroAd var_394
  loc_B3C006: CVarAd
  loc_B3C00A: ImpAdCallI2 Format$(, )
  loc_B3C00F: CVarStr var_3D4
  loc_B3C012: ConcatVar var_3E4
  loc_B3C016: LitI4 9
  loc_B3C01B: FLdRfVar var_3F4
  loc_B3C01E: ImpAdCallFPR4  = Chr()
  loc_B3C023: FLdRfVar var_3F4
  loc_B3C026: ConcatVar var_404
  loc_B3C02A: FLdRfVar var_430
  loc_B3C02D: FLdRfVar var_420
  loc_B3C030: LitVarStr var_41C, "CodiPart"
  loc_B3C035: PopAdLdVar
  loc_B3C036: FLdRfVar var_40C
  loc_B3C039: FLdRfVar var_408
  loc_B3C03C: FLdPr Me
  loc_B3C03F: MemLdRfVar from_stack_1.global_56
  loc_B3C042: NewIfNullPr clsbase
  loc_B3C045: from_stack_1v = clsbase.RsFrmGet()
  loc_B3C04A: FLdPr var_408
  loc_B3C04D:  = Me.Fields
  loc_B3C052: FLdPr var_40C
  loc_B3C055: from_stack_2 = Me.Item(from_stack_1)
  loc_B3C05A: FLdPr var_420
  loc_B3C05D:  = Me.Value
  loc_B3C062: FLdRfVar var_430
  loc_B3C065: ConcatVar var_440
  loc_B3C069: LitI4 9
  loc_B3C06E: FLdRfVar var_450
  loc_B3C071: ImpAdCallFPR4  = Chr()
  loc_B3C076: FLdRfVar var_450
  loc_B3C079: ConcatVar var_460
  loc_B3C07D: FLdRfVar var_48C
  loc_B3C080: FLdRfVar var_47C
  loc_B3C083: LitVarStr var_478, "CodiOrga"
  loc_B3C088: PopAdLdVar
  loc_B3C089: FLdRfVar var_468
  loc_B3C08C: FLdRfVar var_464
  loc_B3C08F: FLdPr Me
  loc_B3C092: MemLdRfVar from_stack_1.global_56
  loc_B3C095: NewIfNullPr clsbase
  loc_B3C098: from_stack_1v = clsbase.RsFrmGet()
  loc_B3C09D: FLdPr var_464
  loc_B3C0A0:  = Me.Fields
  loc_B3C0A5: FLdPr var_468
  loc_B3C0A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B3C0AD: FLdPr var_47C
  loc_B3C0B0:  = Me.Value
  loc_B3C0B5: FLdRfVar var_48C
  loc_B3C0B8: ConcatVar var_49C
  loc_B3C0BC: LitI4 9
  loc_B3C0C1: FLdRfVar var_4AC
  loc_B3C0C4: ImpAdCallFPR4  = Chr()
  loc_B3C0C9: FLdRfVar var_4AC
  loc_B3C0CC: ConcatVar var_4BC
  loc_B3C0D0: FLdRfVar var_4E8
  loc_B3C0D3: FLdRfVar var_4D8
  loc_B3C0D6: LitVarStr var_4D4, "CodiFifu"
  loc_B3C0DB: PopAdLdVar
  loc_B3C0DC: FLdRfVar var_4C4
  loc_B3C0DF: FLdRfVar var_4C0
  loc_B3C0E2: FLdPr Me
  loc_B3C0E5: MemLdRfVar from_stack_1.global_56
  loc_B3C0E8: NewIfNullPr clsbase
  loc_B3C0EB: from_stack_1v = clsbase.RsFrmGet()
  loc_B3C0F0: FLdPr var_4C0
  loc_B3C0F3:  = Me.Fields
  loc_B3C0F8: FLdPr var_4C4
  loc_B3C0FB: from_stack_2 = Me.Item(from_stack_1)
  loc_B3C100: FLdPr var_4D8
  loc_B3C103:  = Me.Value
  loc_B3C108: FLdRfVar var_4E8
  loc_B3C10B: ConcatVar var_4F8
  loc_B3C10F: LitI4 9
  loc_B3C114: FLdRfVar var_508
  loc_B3C117: ImpAdCallFPR4  = Chr()
  loc_B3C11C: FLdRfVar var_508
  loc_B3C11F: ConcatVar var_518
  loc_B3C123: FLdRfVar var_544
  loc_B3C126: FLdRfVar var_534
  loc_B3C129: LitVarStr var_530, "CaraItco"
  loc_B3C12E: PopAdLdVar
  loc_B3C12F: FLdRfVar var_520
  loc_B3C132: FLdRfVar var_51C
  loc_B3C135: FLdPr Me
  loc_B3C138: MemLdRfVar from_stack_1.global_56
  loc_B3C13B: NewIfNullPr clsbase
  loc_B3C13E: from_stack_1v = clsbase.RsFrmGet()
  loc_B3C143: FLdPr var_51C
  loc_B3C146:  = Me.Fields
  loc_B3C14B: FLdPr var_520
  loc_B3C14E: from_stack_2 = Me.Item(from_stack_1)
  loc_B3C153: FLdPr var_534
  loc_B3C156:  = Me.Value
  loc_B3C15B: FLdRfVar var_544
  loc_B3C15E: ConcatVar var_554
  loc_B3C162: LitI4 9
  loc_B3C167: FLdRfVar var_564
  loc_B3C16A: ImpAdCallFPR4  = Chr()
  loc_B3C16F: FLdRfVar var_564
  loc_B3C172: ConcatVar var_574
  loc_B3C176: FLdRfVar var_5A0
  loc_B3C179: FLdRfVar var_590
  loc_B3C17C: LitVarStr var_58C, "CodiUnga"
  loc_B3C181: PopAdLdVar
  loc_B3C182: FLdRfVar var_57C
  loc_B3C185: FLdRfVar var_578
  loc_B3C188: FLdPr Me
  loc_B3C18B: MemLdRfVar from_stack_1.global_56
  loc_B3C18E: NewIfNullPr clsbase
  loc_B3C191: from_stack_1v = clsbase.RsFrmGet()
  loc_B3C196: FLdPr var_578
  loc_B3C199:  = Me.Fields
  loc_B3C19E: FLdPr var_57C
  loc_B3C1A1: from_stack_2 = Me.Item(from_stack_1)
  loc_B3C1A6: FLdPr var_590
  loc_B3C1A9:  = Me.Value
  loc_B3C1AE: FLdRfVar var_5A0
  loc_B3C1B1: ConcatVar var_5B0
  loc_B3C1B5: LitI4 9
  loc_B3C1BA: FLdRfVar var_5C0
  loc_B3C1BD: ImpAdCallFPR4  = Chr()
  loc_B3C1C2: FLdRfVar var_5C0
  loc_B3C1C5: ConcatVar var_5D0
  loc_B3C1C9: FLdRfVar var_5FC
  loc_B3C1CC: FLdRfVar var_5EC
  loc_B3C1CF: LitVarStr var_5E8, "IdImpu"
  loc_B3C1D4: PopAdLdVar
  loc_B3C1D5: FLdRfVar var_5D8
  loc_B3C1D8: FLdRfVar var_5D4
  loc_B3C1DB: FLdPr Me
  loc_B3C1DE: MemLdRfVar from_stack_1.global_56
  loc_B3C1E1: NewIfNullPr clsbase
  loc_B3C1E4: from_stack_1v = clsbase.RsFrmGet()
  loc_B3C1E9: FLdPr var_5D4
  loc_B3C1EC:  = Me.Fields
  loc_B3C1F1: FLdPr var_5D8
  loc_B3C1F4: from_stack_2 = Me.Item(from_stack_1)
  loc_B3C1F9: FLdPr var_5EC
  loc_B3C1FC:  = Me.Value
  loc_B3C201: FLdRfVar var_5FC
  loc_B3C204: ConcatVar var_60C
  loc_B3C208: LitI4 9
  loc_B3C20D: FLdRfVar var_61C
  loc_B3C210: ImpAdCallFPR4  = Chr()
  loc_B3C215: FLdRfVar var_61C
  loc_B3C218: ConcatVar var_62C
  loc_B3C21C: LitI4 1
  loc_B3C221: LitI4 1
  loc_B3C226: LitVarStr var_668, "0.000"
  loc_B3C22B: FStVarCopyObj var_678
  loc_B3C22E: FLdRfVar var_678
  loc_B3C231: FLdZeroAd var_648
  loc_B3C234: CVarAd
  loc_B3C238: ImpAdCallI2 Format$(, )
  loc_B3C23D: CVarStr var_688
  loc_B3C240: ConcatVar var_698
  loc_B3C244: CStrVarTmp
  loc_B3C245: CVarStr var_6A8
  loc_B3C248: PopAdLdVar
  loc_B3C249: FLdPr Me
  loc_B3C24C: VCallAd Control_ID_ItemCompraFlex
  loc_B3C24F: FStAdFunc var_6BC
  loc_B3C252: FLdPr var_6BC
  loc_B3C255: LateIdCall
  loc_B3C25D: FFreeAd var_51C = "": var_520 = "": var_534 = "": var_578 = "": var_57C = "": var_590 = "": var_5D4 = "": var_5D8 = "": var_5EC = "": var_630 = "": var_634 = "": var_6BC = "": var_A4 = "": var_A8 = "": var_BC = "": var_110 = "": var_114 = "": var_128 = "": var_170 = "": var_174 = "": var_178 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_208 = "": var_20C = "": var_220 = "": var_264 = "": var_268 = "": var_2F0 = "": var_2F4 = "": var_37C = "": var_380 = "": var_408 = "": var_40C = "": var_420 = "": var_464 = "": var_468 = "": var_47C = "": var_4C0 = "": var_4C4 = ""
  loc_B3C2B4: FFreeVar var_658 = "": var_678 = "": var_62C = "": var_688 = "": var_698 = "": var_6A8 = "": var_3A4 = "": var_3C4 = "": var_378 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_404 = "": var_430 = "": var_440 = "": var_450 = "": var_460 = "": var_48C = "": var_49C = "": var_4AC = "": var_4BC = "": var_4E8 = "": var_4F8 = "": var_508 = "": var_518 = "": var_544 = "": var_554 = "": var_564 = "": var_574 = "": var_5A0 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5FC = "": var_60C = "": var_61C = "": var_DC = "": var_CC = "": var_EC = "": var_10C = "": var_138 = "": var_148 = "": var_168 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_230 = "": var_240 = "": var_250 = "": var_28C = "": var_2AC = "": var_260 = "": var_2BC = "": var_2CC = "": var_2DC = "": var_318 = "": var_338 = "": var_2EC = "": var_348 = "": var_358 = ""
  loc_B3C33B: FLdPr Me
  loc_B3C33E: MemLdRfVar from_stack_1.global_56
  loc_B3C341: NewIfNullPr clsbase
  loc_B3C344: Call clsbase.MoveSiguiente()
  loc_B3C349: Branch loc_B3BD0F
  loc_B3C34C: FLdPr Me
  loc_B3C34F: MemLdRfVar from_stack_1.global_56
  loc_B3C352: NewIfNullPr clsbase
  loc_B3C355: Call clsbase.MoveLast()
  loc_B3C35A: FLdRfVar var_BC
  loc_B3C35D: LitVarStr var_B8, "TotalOrden"
  loc_B3C362: PopAdLdVar
  loc_B3C363: FLdRfVar var_A8
  loc_B3C366: FLdRfVar var_A4
  loc_B3C369: FLdPr Me
  loc_B3C36C: MemLdRfVar from_stack_1.global_56
  loc_B3C36F: NewIfNullPr clsbase
  loc_B3C372: from_stack_1v = clsbase.RsFrmGet()
  loc_B3C377: FLdPr var_A4
  loc_B3C37A:  = Me.Fields
  loc_B3C37F: FLdPr var_A8
  loc_B3C382: from_stack_2 = Me.Item(from_stack_1)
  loc_B3C387: LitI4 1
  loc_B3C38C: LitI4 1
  loc_B3C391: LitVarStr var_FC, "currency"
  loc_B3C396: FStVarCopyObj var_DC
  loc_B3C399: FLdRfVar var_DC
  loc_B3C39C: FLdZeroAd var_BC
  loc_B3C39F: CVarAd
  loc_B3C3A3: ImpAdCallI2 Format$(, )
  loc_B3C3A8: FStStrNoPop var_90
  loc_B3C3AB: FLdPr Me
  loc_B3C3AE: VCallAd Control_ID_lblTotalOrden
  loc_B3C3B1: FStAdFunc var_110
  loc_B3C3B4: FLdPr var_110
  loc_B3C3B7: Me.Caption = from_stack_1
  loc_B3C3BC: FFree1Str var_90
  loc_B3C3BF: FFreeAd var_A4 = "": var_A8 = ""
  loc_B3C3C8: FFreeVar var_CC = ""
  loc_B3C3CF: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9EB940
  'Data Table: 4DABCC
  loc_9EB808: LitVarStr var_94, vbNullString
  loc_9EB80D: PopAdLdVar
  loc_9EB80E: FLdPr Me
  loc_9EB811: VCallAd Control_ID_FiltroMsk
  loc_9EB814: FStAdFunc var_A8
  loc_9EB817: FLdPr var_A8
  loc_9EB81A: LateIdSt
  loc_9EB81F: FFree1Ad var_A8
  loc_9EB822: FLdRfVar var_AA
  loc_9EB825: FLdPr Me
  loc_9EB828: VCallAd Control_ID_FiltroCbo
  loc_9EB82B: FStAdFunc var_A8
  loc_9EB82E: FLdPr var_A8
  loc_9EB831:  = Me.ListIndex
  loc_9EB836: FLdI2 var_AA
  loc_9EB839: FStI2 var_AC
  loc_9EB83C: FFree1Ad var_A8
  loc_9EB83F: FLdI2 var_AC
  loc_9EB842: LitI2_Byte 0
  loc_9EB844: EqI2
  loc_9EB845: BranchF loc_9EB87F
  loc_9EB848: LitVarStr var_94, "########"
  loc_9EB84D: PopAdLdVar
  loc_9EB84E: FLdPr Me
  loc_9EB851: VCallAd Control_ID_FiltroMsk
  loc_9EB854: FStAdFunc var_A8
  loc_9EB857: FLdPr var_A8
  loc_9EB85A: LateIdSt
  loc_9EB85F: FFree1Ad var_A8
  loc_9EB862: LitStr "CodiOrco"
  loc_9EB865: FStStrCopy var_B0
  loc_9EB868: FLdRfVar var_B0
  loc_9EB86B: FLdPr Me
  loc_9EB86E: MemLdRfVar from_stack_1.global_52
  loc_9EB871: NewIfNullPr clsordencompra
  loc_9EB874: Call clsordencompra.Sort(from_stack_1v)
  loc_9EB879: FFree1Str var_B0
  loc_9EB87C: Branch loc_9EB93C
  loc_9EB87F: FLdI2 var_AC
  loc_9EB882: LitI2_Byte 1
  loc_9EB884: EqI2
  loc_9EB885: BranchF loc_9EB8BF
  loc_9EB888: LitVarStr var_94, vbNullString
  loc_9EB88D: PopAdLdVar
  loc_9EB88E: FLdPr Me
  loc_9EB891: VCallAd Control_ID_FiltroMsk
  loc_9EB894: FStAdFunc var_A8
  loc_9EB897: FLdPr var_A8
  loc_9EB89A: LateIdSt
  loc_9EB89F: FFree1Ad var_A8
  loc_9EB8A2: LitStr "ExpeImpu"
  loc_9EB8A5: FStStrCopy var_B0
  loc_9EB8A8: FLdRfVar var_B0
  loc_9EB8AB: FLdPr Me
  loc_9EB8AE: MemLdRfVar from_stack_1.global_52
  loc_9EB8B1: NewIfNullPr clsordencompra
  loc_9EB8B4: Call clsordencompra.Sort(from_stack_1v)
  loc_9EB8B9: FFree1Str var_B0
  loc_9EB8BC: Branch loc_9EB93C
  loc_9EB8BF: FLdI2 var_AC
  loc_9EB8C2: LitI2_Byte 2
  loc_9EB8C4: EqI2
  loc_9EB8C5: BranchF loc_9EB8FF
  loc_9EB8C8: LitVarStr var_94, "########"
  loc_9EB8CD: PopAdLdVar
  loc_9EB8CE: FLdPr Me
  loc_9EB8D1: VCallAd Control_ID_FiltroMsk
  loc_9EB8D4: FStAdFunc var_A8
  loc_9EB8D7: FLdPr var_A8
  loc_9EB8DA: LateIdSt
  loc_9EB8DF: FFree1Ad var_A8
  loc_9EB8E2: LitStr "CodiNope"
  loc_9EB8E5: FStStrCopy var_B0
  loc_9EB8E8: FLdRfVar var_B0
  loc_9EB8EB: FLdPr Me
  loc_9EB8EE: MemLdRfVar from_stack_1.global_52
  loc_9EB8F1: NewIfNullPr clsordencompra
  loc_9EB8F4: Call clsordencompra.Sort(from_stack_1v)
  loc_9EB8F9: FFree1Str var_B0
  loc_9EB8FC: Branch loc_9EB93C
  loc_9EB8FF: FLdI2 var_AC
  loc_9EB902: LitI2_Byte 3
  loc_9EB904: EqI2
  loc_9EB905: BranchF loc_9EB93C
  loc_9EB908: LitVarStr var_94, "########"
  loc_9EB90D: PopAdLdVar
  loc_9EB90E: FLdPr Me
  loc_9EB911: VCallAd Control_ID_FiltroMsk
  loc_9EB914: FStAdFunc var_A8
  loc_9EB917: FLdPr var_A8
  loc_9EB91A: LateIdSt
  loc_9EB91F: FFree1Ad var_A8
  loc_9EB922: LitStr "IdCoti"
  loc_9EB925: FStStrCopy var_B0
  loc_9EB928: FLdRfVar var_B0
  loc_9EB92B: FLdPr Me
  loc_9EB92E: MemLdRfVar from_stack_1.global_52
  loc_9EB931: NewIfNullPr clsordencompra
  loc_9EB934: Call clsordencompra.Sort(from_stack_1v)
  loc_9EB939: FFree1Str var_B0
  loc_9EB93C: ExitProcHresult
End Sub

Private Sub FeanOrcoMsk_UnknownEvent_0 '94A0D0
  'Data Table: 4DABCC
  loc_94A0BC: FLdPr Me
  loc_94A0BF: VCallAd Control_ID_FeanOrcoMsk
  loc_94A0C2: CVarAd
  loc_94A0C6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A0CB: FFree1Var var_94 = ""
  loc_94A0CE: ExitProcHresult
End Sub

Private Function FeanOrcoMsk_UnknownEvent_8(arg_C) '9EFED8
  'Data Table: 4DABCC
  loc_9EFDBC: FLdRfVar var_8A
  loc_9EFDBF: FLdPr Me
  loc_9EFDC2: VCallAd Control_ID_cmdCancelar
  loc_9EFDC5: FStAdFunc var_88
  loc_9EFDC8: FLdPr var_88
  loc_9EFDCB:  = Me.Value
  loc_9EFDD0: FLdI2 var_8A
  loc_9EFDD3: NotI4
  loc_9EFDD4: FLdPr Me
  loc_9EFDD7: VCallAd Control_ID_FeanOrcoMsk
  loc_9EFDDA: FStAdFunc var_90
  loc_9EFDDD: FLdPr var_90
  loc_9EFDE0: LateIdLdVar var_A0 DispID_13 -32767
  loc_9EFDE7: CBoolVar
  loc_9EFDE9: AndI4
  loc_9EFDEA: FFreeAd var_88 = ""
  loc_9EFDF1: FFree1Var var_A0 = ""
  loc_9EFDF4: BranchF loc_9EFED7
  loc_9EFDF7: FLdPr Me
  loc_9EFDFA: VCallAd Control_ID_FeanOrcoMsk
  loc_9EFDFD: FStAdFunc var_88
  loc_9EFE00: FLdPr var_88
  loc_9EFE03: LateIdLdVar var_A0 DispID_15 0
  loc_9EFE0A: PopAd
  loc_9EFE0C: FLdRfVar var_CC
  loc_9EFE0F: FLdRfVar var_B8
  loc_9EFE12: LitVarStr var_B4, "FechOrco"
  loc_9EFE17: PopAdLdVar
  loc_9EFE18: FLdRfVar var_A4
  loc_9EFE1B: FLdRfVar var_90
  loc_9EFE1E: FLdPr Me
  loc_9EFE21: MemLdRfVar from_stack_1.global_52
  loc_9EFE24: NewIfNullPr clsordencompra
  loc_9EFE27: from_stack_1v = clsordencompra.RsFrmGet()
  loc_9EFE2C: FLdPr var_90
  loc_9EFE2F:  = Me.Fields
  loc_9EFE34: FLdPr var_A4
  loc_9EFE37: from_stack_2 = Me.Item(from_stack_1)
  loc_9EFE3C: FLdPr var_B8
  loc_9EFE3F:  = Me.Value
  loc_9EFE44: FLdPr Me
  loc_9EFE47: VCallAd Control_ID_FeanOrcoMsk
  loc_9EFE4A: FStAdFunc var_DC
  loc_9EFE4D: LitI2_Byte &HFF
  loc_9EFE4F: PopTmpLdAd2 var_8A
  loc_9EFE52: FLdZeroAd var_DC
  loc_9EFE55: FStAdFunc var_D4
  loc_9EFE58: FLdRfVar var_D4
  loc_9EFE5B: FLdRfVar var_CC
  loc_9EFE5E: CStrVarTmp
  loc_9EFE5F: FStStrNoPop var_D0
  loc_9EFE62: LitI2_Byte &HFF
  loc_9EFE64: LitI2_Byte &HFF
  loc_9EFE66: FLdRfVar var_A0
  loc_9EFE69: CStrVarTmp
  loc_9EFE6A: FStStrNoPop var_BC
  loc_9EFE6D: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9EFE72: FStStrNoPop var_D8
  loc_9EFE75: FLdPr Me
  loc_9EFE78: MemStStrCopy
  loc_9EFE7C: FFreeStr var_BC = "": var_D0 = ""
  loc_9EFE85: FFreeAd var_88 = "": var_90 = "": var_A4 = "": var_B8 = "": var_D4 = ""
  loc_9EFE94: FFreeVar var_A0 = ""
  loc_9EFE9B: FLdPr Me
  loc_9EFE9E: VCallAd Control_ID_FeanOrcoMsk
  loc_9EFEA1: FStAdFunc var_B8
  loc_9EFEA4: LitNothing
  loc_9EFEA6: CastAd
  loc_9EFEA9: FStAdFunc var_A4
  loc_9EFEAC: FLdRfVar var_A4
  loc_9EFEAF: FLdZeroAd var_B8
  loc_9EFEB2: FStAdFuncNoPop
  loc_9EFEB5: CastAd
  loc_9EFEB8: FStAdFunc var_90
  loc_9EFEBB: FLdRfVar var_90
  loc_9EFEBE: FLdPr Me
  loc_9EFEC1: MemLdRfVar from_stack_1.global_64
  loc_9EFEC4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9EFEC9: IStI2 arg_C
  loc_9EFECC: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9EFED7: ExitProcHresult
End Function

Private Sub FeanOrcoMsk_KeyPress(KeyAscii As Integer) '989EA8
  'Data Table: 4DABCC
  loc_989E64: ILdI2 KeyAscii
  loc_989E67: CI4UI1
  loc_989E68: LitI4 &H20
  loc_989E6D: EqI4
  loc_989E6E: BranchF loc_989EA4
  loc_989E71: LitVar_Missing var_A4
  loc_989E74: PopAdLdVar
  loc_989E75: LitVarI4
  loc_989E7D: PopAdLdVar
  loc_989E7E: ImpAdLdRf MemVar_C3D9A8
  loc_989E81: NewIfNullPr frmCalendario
  loc_989E84: frmCalendario.Show from_stack_1, from_stack_2
  loc_989E89: ImpAdLdRf MemVar_C3D038
  loc_989E8C: CDargRef
  loc_989E90: FLdPr Me
  loc_989E93: VCallAd Control_ID_FeanOrcoMsk
  loc_989E96: FStAdFunc var_A8
  loc_989E99: FLdPr var_A8
  loc_989E9C: LateIdSt
  loc_989EA1: FFree1Ad var_A8
  loc_989EA4: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94A1A8
  'Data Table: 4DABCC
  loc_94A194: FLdPr Me
  loc_94A197: VCallAd Control_ID_FiltroMsk
  loc_94A19A: CVarAd
  loc_94A19E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A1A3: FFree1Var var_94 = ""
  loc_94A1A6: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A735B4
  'Data Table: 4DABCC
  loc_A731F4: ILdRf Me
  loc_A731F7: CastAd
  loc_A731FA: FStAdFunc var_88
  loc_A731FD: FLdRfVar var_88
  loc_A73200: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A73205: FFree1Ad var_88
  loc_A73208: FLdPr Me
  loc_A7320B: VCallAd Control_ID_FiltroMsk
  loc_A7320E: FStAdFunc var_88
  loc_A73211: FLdPr var_88
  loc_A73214: LateIdLdVar var_98 DispID_22 0
  loc_A7321B: CStrVarTmp
  loc_A7321C: FStStrNoPop var_9C
  loc_A7321F: ImpAdCallI2 Trim$()
  loc_A73224: FStStrNoPop var_A0
  loc_A73227: LitStr vbNullString
  loc_A7322A: NeStr
  loc_A7322C: FFreeStr var_9C = ""
  loc_A73233: FFree1Ad var_88
  loc_A73236: FFree1Var var_98 = ""
  loc_A73239: BranchF loc_A73481
  loc_A7323C: FLdRfVar var_A2
  loc_A7323F: FLdPr Me
  loc_A73242: VCallAd Control_ID_FiltroCbo
  loc_A73245: FStAdFunc var_88
  loc_A73248: FLdPr var_88
  loc_A7324B:  = Me.ListIndex
  loc_A73250: FLdI2 var_A2
  loc_A73253: LitI2_Byte 0
  loc_A73255: EqI2
  loc_A73256: FFree1Ad var_88
  loc_A73259: BranchF loc_A732CB
  loc_A7325C: LitStr "CodiOrco = "
  loc_A7325F: FLdPr Me
  loc_A73262: VCallAd Control_ID_FiltroMsk
  loc_A73265: FStAdFunc var_88
  loc_A73268: FLdPr var_88
  loc_A7326B: LateIdLdVar var_98 DispID_22 0
  loc_A73272: CStrVarTmp
  loc_A73273: FStStrNoPop var_9C
  loc_A73276: ConcatStr
  loc_A73277: PopTmpLdAdStr
  loc_A7327B: FLdPr Me
  loc_A7327E: MemLdRfVar from_stack_1.global_52
  loc_A73281: NewIfNullPr clsordencompra
  loc_A73284: Call clsordencompra.Filter(from_stack_1v)
  loc_A73289: FFreeStr var_9C = ""
  loc_A73290: FFree1Ad var_88
  loc_A73293: FFree1Var var_98 = ""
  loc_A73296: LitStr "la Orden de Compra sea igual a: "
  loc_A73299: FLdPr Me
  loc_A7329C: VCallAd Control_ID_FiltroMsk
  loc_A7329F: FStAdFunc var_88
  loc_A732A2: FLdPr var_88
  loc_A732A5: LateIdLdVar var_98 DispID_22 0
  loc_A732AC: CStrVarTmp
  loc_A732AD: FStStrNoPop var_9C
  loc_A732B0: ConcatStr
  loc_A732B1: FStStrNoPop var_A0
  loc_A732B4: FLdPr Me
  loc_A732B7: MemStStrCopy
  loc_A732BB: FFreeStr var_9C = ""
  loc_A732C2: FFree1Ad var_88
  loc_A732C5: FFree1Var var_98 = ""
  loc_A732C8: Branch loc_A7347E
  loc_A732CB: FLdRfVar var_A2
  loc_A732CE: FLdPr Me
  loc_A732D1: VCallAd Control_ID_FiltroCbo
  loc_A732D4: FStAdFunc var_88
  loc_A732D7: FLdPr var_88
  loc_A732DA:  = Me.ListIndex
  loc_A732DF: FLdI2 var_A2
  loc_A732E2: LitI2_Byte 1
  loc_A732E4: EqI2
  loc_A732E5: FFree1Ad var_88
  loc_A732E8: BranchF loc_A73363
  loc_A732EB: LitStr "ExpeImpu LIKE '"
  loc_A732EE: FLdPr Me
  loc_A732F1: VCallAd Control_ID_FiltroMsk
  loc_A732F4: FStAdFunc var_88
  loc_A732F7: FLdPr var_88
  loc_A732FA: LateIdLdVar var_98 DispID_22 0
  loc_A73301: CStrVarTmp
  loc_A73302: FStStrNoPop var_9C
  loc_A73305: ConcatStr
  loc_A73306: FStStrNoPop var_A0
  loc_A73309: LitStr Chr(37) & "'"
  loc_A7330C: ConcatStr
  loc_A7330D: PopTmpLdAdStr
  loc_A73311: FLdPr Me
  loc_A73314: MemLdRfVar from_stack_1.global_52
  loc_A73317: NewIfNullPr clsordencompra
  loc_A7331A: Call clsordencompra.Filter(from_stack_1v)
  loc_A7331F: FFreeStr var_9C = "": var_A0 = ""
  loc_A73328: FFree1Ad var_88
  loc_A7332B: FFree1Var var_98 = ""
  loc_A7332E: LitStr "Expediente comience con: "
  loc_A73331: FLdPr Me
  loc_A73334: VCallAd Control_ID_FiltroMsk
  loc_A73337: FStAdFunc var_88
  loc_A7333A: FLdPr var_88
  loc_A7333D: LateIdLdVar var_98 DispID_22 0
  loc_A73344: CStrVarTmp
  loc_A73345: FStStrNoPop var_9C
  loc_A73348: ConcatStr
  loc_A73349: FStStrNoPop var_A0
  loc_A7334C: FLdPr Me
  loc_A7334F: MemStStrCopy
  loc_A73353: FFreeStr var_9C = ""
  loc_A7335A: FFree1Ad var_88
  loc_A7335D: FFree1Var var_98 = ""
  loc_A73360: Branch loc_A7347E
  loc_A73363: FLdRfVar var_A2
  loc_A73366: FLdPr Me
  loc_A73369: VCallAd Control_ID_FiltroCbo
  loc_A7336C: FStAdFunc var_88
  loc_A7336F: FLdPr var_88
  loc_A73372:  = Me.ListIndex
  loc_A73377: FLdI2 var_A2
  loc_A7337A: LitI2_Byte 2
  loc_A7337C: EqI2
  loc_A7337D: FFree1Ad var_88
  loc_A73380: BranchF loc_A733F2
  loc_A73383: LitStr "CodiNope = "
  loc_A73386: FLdPr Me
  loc_A73389: VCallAd Control_ID_FiltroMsk
  loc_A7338C: FStAdFunc var_88
  loc_A7338F: FLdPr var_88
  loc_A73392: LateIdLdVar var_98 DispID_22 0
  loc_A73399: CStrVarTmp
  loc_A7339A: FStStrNoPop var_9C
  loc_A7339D: ConcatStr
  loc_A7339E: PopTmpLdAdStr
  loc_A733A2: FLdPr Me
  loc_A733A5: MemLdRfVar from_stack_1.global_52
  loc_A733A8: NewIfNullPr clsordencompra
  loc_A733AB: Call clsordencompra.Filter(from_stack_1v)
  loc_A733B0: FFreeStr var_9C = ""
  loc_A733B7: FFree1Ad var_88
  loc_A733BA: FFree1Var var_98 = ""
  loc_A733BD: LitStr "la Nota de Pedido sea igual a: "
  loc_A733C0: FLdPr Me
  loc_A733C3: VCallAd Control_ID_FiltroMsk
  loc_A733C6: FStAdFunc var_88
  loc_A733C9: FLdPr var_88
  loc_A733CC: LateIdLdVar var_98 DispID_22 0
  loc_A733D3: CStrVarTmp
  loc_A733D4: FStStrNoPop var_9C
  loc_A733D7: ConcatStr
  loc_A733D8: FStStrNoPop var_A0
  loc_A733DB: FLdPr Me
  loc_A733DE: MemStStrCopy
  loc_A733E2: FFreeStr var_9C = ""
  loc_A733E9: FFree1Ad var_88
  loc_A733EC: FFree1Var var_98 = ""
  loc_A733EF: Branch loc_A7347E
  loc_A733F2: FLdRfVar var_A2
  loc_A733F5: FLdPr Me
  loc_A733F8: VCallAd Control_ID_FiltroCbo
  loc_A733FB: FStAdFunc var_88
  loc_A733FE: FLdPr var_88
  loc_A73401:  = Me.ListIndex
  loc_A73406: FLdI2 var_A2
  loc_A73409: LitI2_Byte 3
  loc_A7340B: EqI2
  loc_A7340C: FFree1Ad var_88
  loc_A7340F: BranchF loc_A7347E
  loc_A73412: LitStr "IdCoti = "
  loc_A73415: FLdPr Me
  loc_A73418: VCallAd Control_ID_FiltroMsk
  loc_A7341B: FStAdFunc var_88
  loc_A7341E: FLdPr var_88
  loc_A73421: LateIdLdVar var_98 DispID_22 0
  loc_A73428: CStrVarTmp
  loc_A73429: FStStrNoPop var_9C
  loc_A7342C: ConcatStr
  loc_A7342D: PopTmpLdAdStr
  loc_A73431: FLdPr Me
  loc_A73434: MemLdRfVar from_stack_1.global_52
  loc_A73437: NewIfNullPr clsordencompra
  loc_A7343A: Call clsordencompra.Filter(from_stack_1v)
  loc_A7343F: FFreeStr var_9C = ""
  loc_A73446: FFree1Ad var_88
  loc_A73449: FFree1Var var_98 = ""
  loc_A7344C: LitStr "Cotización Nro. igual a: "
  loc_A7344F: FLdPr Me
  loc_A73452: VCallAd Control_ID_FiltroMsk
  loc_A73455: FStAdFunc var_88
  loc_A73458: FLdPr var_88
  loc_A7345B: LateIdLdVar var_98 DispID_22 0
  loc_A73462: CStrVarTmp
  loc_A73463: FStStrNoPop var_9C
  loc_A73466: ConcatStr
  loc_A73467: FStStrNoPop var_A0
  loc_A7346A: FLdPr Me
  loc_A7346D: MemStStrCopy
  loc_A73471: FFreeStr var_9C = ""
  loc_A73478: FFree1Ad var_88
  loc_A7347B: FFree1Var var_98 = ""
  loc_A7347E: Branch loc_A734A5
  loc_A73481: LitStr vbNullString
  loc_A73484: FStStrCopy var_9C
  loc_A73487: FLdRfVar var_9C
  loc_A7348A: FLdPr Me
  loc_A7348D: MemLdRfVar from_stack_1.global_52
  loc_A73490: NewIfNullPr clsordencompra
  loc_A73493: Call clsordencompra.Filter(from_stack_1v)
  loc_A73498: FFree1Str var_9C
  loc_A7349B: LitStr vbNullString
  loc_A7349E: FLdPr Me
  loc_A734A1: MemStStrCopy
  loc_A734A5: FLdRfVar var_AC
  loc_A734A8: FLdPr Me
  loc_A734AB: MemLdRfVar from_stack_1.global_52
  loc_A734AE: NewIfNullPr clsordencompra
  loc_A734B1: from_stack_1 = clsordencompra.RecordCount
  loc_A734B6: ILdRf var_AC
  loc_A734B9: LitI4 0
  loc_A734BE: GtI4
  loc_A734BF: BranchF loc_A7356C
  loc_A734C2: FLdPr Me
  loc_A734C5: MemLdRfVar from_stack_1.global_52
  loc_A734C8: NewIfNullAd
  loc_A734CB: FStAd var_B0 
  loc_A734CF: FLdRfVar var_B0
  loc_A734D2: CVarRef
  loc_A734D7: ILdRf Me
  loc_A734DA: CastAd
  loc_A734DD: FStAdFunc var_88
  loc_A734E0: FLdRfVar var_88
  loc_A734E3: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A734E8: ILdRf var_B0
  loc_A734EB: CastAd
  loc_A734EE: FLdPr Me
  loc_A734F1: MemStAdFunc
  loc_A734F5: FFreeAd var_88 = ""
  loc_A734FC: LitI4 0
  loc_A73501: LitI4 1
  loc_A73506: FLdRfVar var_C4
  loc_A73509: Redim
  loc_A73513: FLdPr Me
  loc_A73516: MemLdRfVar from_stack_1.global_52
  loc_A73519: NewIfNullAd
  loc_A7351C: FStAd var_88 
  loc_A73520: FLdRfVar var_88
  loc_A73523: CVarRef
  loc_A73528: ParmAry1St
  loc_A7352E: FLdPr Me
  loc_A73531: VCallAd Control_ID_dgdABMS
  loc_A73534: CVarAd
  loc_A73538: ParmAry1St
  loc_A7353E: FLdRfVar var_C4
  loc_A73541: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A73546: ILdRf var_88
  loc_A73549: CastAd
  loc_A7354C: FLdPr Me
  loc_A7354F: MemStAdFunc
  loc_A73553: FLdRfVar var_C4
  loc_A73556: Erase
  loc_A73557: FFree1Ad var_88
  loc_A7355A: LitI2_Byte 0
  loc_A7355C: LitVarI2 var_98, 0
  loc_A73561: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A73566: FFree1Var var_98 = ""
  loc_A73569: Branch loc_A73580
  loc_A7356C: ILdRf Me
  loc_A7356F: CastAd
  loc_A73572: FStAdFunc var_88
  loc_A73575: FLdRfVar var_88
  loc_A73578: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A7357D: FFree1Ad var_88
  loc_A73580: FLdPr Me
  loc_A73583: VCallAd Control_ID_dgdABMS
  loc_A73586: FStAdFunc var_B0
  loc_A73589: LitI4 0
  loc_A7358E: FStStrCopy var_9C
  loc_A73591: FLdRfVar var_9C
  loc_A73594: FLdPr Me
  loc_A73597: MemLdStr global_68
  loc_A7359A: FLdZeroAd var_B0
  loc_A7359D: FStAdFunc var_88
  loc_A735A0: FLdRfVar var_88
  loc_A735A3: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A735A8: FFree1Str var_9C
  loc_A735AB: FFreeAd var_88 = ""
  loc_A735B2: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '996E04
  'Data Table: 4DABCC
  loc_996DA0: ILdI2 KeyAscii
  loc_996DA3: LitI2_Byte &H27
  loc_996DA5: EqI2
  loc_996DA6: BranchF loc_996DAE
  loc_996DA9: LitI2_Byte 0
  loc_996DAB: IStI2 KeyAscii
  loc_996DAE: FLdRfVar var_88
  loc_996DB1: FLdPr Me
  loc_996DB4: MemLdRfVar from_stack_1.global_52
  loc_996DB7: NewIfNullPr clsordencompra
  loc_996DBA: from_stack_1 = clsordencompra.RecordCount
  loc_996DBF: ILdRf var_88
  loc_996DC2: LitI4 0
  loc_996DC7: EqI4
  loc_996DC8: ILdI2 KeyAscii
  loc_996DCB: CI4UI1
  loc_996DCC: LitI4 8
  loc_996DD1: NeI4
  loc_996DD2: AndI4
  loc_996DD3: FLdPr Me
  loc_996DD6: VCallAd Control_ID_FiltroMsk
  loc_996DD9: FStAdFunc var_8C
  loc_996DDC: FLdPr var_8C
  loc_996DDF: LateIdLdVar var_9C DispID_16 0
  loc_996DE6: CStrVarTmp
  loc_996DE7: FStStrNoPop var_A0
  loc_996DEA: LitStr vbNullString
  loc_996DED: EqStr
  loc_996DEF: AndI4
  loc_996DF0: FFree1Str var_A0
  loc_996DF3: FFree1Ad var_8C
  loc_996DF6: FFree1Var var_9C = ""
  loc_996DF9: BranchF loc_996E01
  loc_996DFC: LitI2_Byte 0
  loc_996DFE: IStI2 KeyAscii
  loc_996E01: ExitProcHresult
  loc_996E02: LitI2FP 21758
End Sub

Private Sub SelloOrcoTxt_Validate(Cancel As Boolean) '9FAA34
  'Data Table: 4DABCC
  loc_9FA8F0: FLdRfVar var_8A
  loc_9FA8F3: FLdPr Me
  loc_9FA8F6: VCallAd Control_ID_cmdCancelar
  loc_9FA8F9: FStAdFunc var_88
  loc_9FA8FC: FLdPr var_88
  loc_9FA8FF:  = Me.Value
  loc_9FA904: FLdI2 var_8A
  loc_9FA907: NotI4
  loc_9FA908: FLdRfVar var_92
  loc_9FA90B: FLdPr Me
  loc_9FA90E: VCallAd Control_ID_SelloOrcoTxt
  loc_9FA911: FStAdFunc var_90
  loc_9FA914: FLdPr var_90
  loc_9FA917:  = Me.Enabled
  loc_9FA91C: FLdI2 var_92
  loc_9FA91F: AndI4
  loc_9FA920: FFreeAd var_88 = ""
  loc_9FA927: BranchF loc_9FAA33
  loc_9FA92A: FLdRfVar var_98
  loc_9FA92D: FLdPr Me
  loc_9FA930: VCallAd Control_ID_SelloOrcoTxt
  loc_9FA933: FStAdFunc var_88
  loc_9FA936: FLdPr var_88
  loc_9FA939:  = Me.Text
  loc_9FA93E: LitStr "0"
  loc_9FA941: LitI2_Byte &HFF
  loc_9FA943: LitI2_Byte &HFF
  loc_9FA945: LitI2_Byte 0
  loc_9FA947: ILdRf var_98
  loc_9FA94A: LitStr "Importe Sellos"
  loc_9FA94D: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9FA952: FStStrNoPop var_9C
  loc_9FA955: FLdPr Me
  loc_9FA958: MemStStrCopy
  loc_9FA95C: FFreeStr var_98 = ""
  loc_9FA963: FFree1Ad var_88
  loc_9FA966: FLdPr Me
  loc_9FA969: VCallAd Control_ID_SelloOrcoTxt
  loc_9FA96C: FStAdFunc var_A4
  loc_9FA96F: LitNothing
  loc_9FA971: CastAd
  loc_9FA974: FStAdFunc var_A0
  loc_9FA977: FLdRfVar var_A0
  loc_9FA97A: FLdZeroAd var_A4
  loc_9FA97D: FStAdFuncNoPop
  loc_9FA980: CastAd
  loc_9FA983: FStAdFunc var_90
  loc_9FA986: FLdRfVar var_90
  loc_9FA989: FLdPr Me
  loc_9FA98C: MemLdRfVar from_stack_1.global_64
  loc_9FA98F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FA994: IStI2 Cancel
  loc_9FA997: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9FA9A2: ILdI2 Cancel
  loc_9FA9A5: NotI4
  loc_9FA9A6: BranchF loc_9FAA33
  loc_9FA9A9: FLdRfVar var_9C
  loc_9FA9AC: FLdPr Me
  loc_9FA9AF: VCallAd Control_ID_lblTotalOrden
  loc_9FA9B2: FStAdFunc var_90
  loc_9FA9B5: FLdPr var_90
  loc_9FA9B8:  = Me.Caption
  loc_9FA9BD: FLdRfVar var_98
  loc_9FA9C0: FLdPr Me
  loc_9FA9C3: VCallAd Control_ID_SelloOrcoTxt
  loc_9FA9C6: FStAdFunc var_88
  loc_9FA9C9: FLdPr var_88
  loc_9FA9CC:  = Me.Text
  loc_9FA9D1: ILdRf var_98
  loc_9FA9D4: CR8Str
  loc_9FA9D6: ILdRf var_9C
  loc_9FA9D9: CR8Str
  loc_9FA9DB: GtR4
  loc_9FA9DC: FFreeStr var_98 = ""
  loc_9FA9E3: FFreeAd var_88 = ""
  loc_9FA9EA: BranchF loc_9FAA33
  loc_9FA9ED: LitStr "El importe supera el total de la Orden de Compra. Verifique..."
  loc_9FA9F0: FLdPr Me
  loc_9FA9F3: MemStStrCopy
  loc_9FA9F7: FLdPr Me
  loc_9FA9FA: VCallAd Control_ID_SelloOrcoTxt
  loc_9FA9FD: FStAdFunc var_A4
  loc_9FAA00: LitNothing
  loc_9FAA02: CastAd
  loc_9FAA05: FStAdFunc var_A0
  loc_9FAA08: FLdRfVar var_A0
  loc_9FAA0B: FLdZeroAd var_A4
  loc_9FAA0E: FStAdFuncNoPop
  loc_9FAA11: CastAd
  loc_9FAA14: FStAdFunc var_90
  loc_9FAA17: FLdRfVar var_90
  loc_9FAA1A: FLdPr Me
  loc_9FAA1D: MemLdRfVar from_stack_1.global_64
  loc_9FAA20: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FAA25: IStI2 Cancel
  loc_9FAA28: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9FAA33: ExitProcHresult
End Sub

Private Sub FenoOrcoMsk_UnknownEvent_8 'A1AA98
  'Data Table: 4DABCC
  loc_A1A910: FLdPr Me
  loc_A1A913: VCallAd Control_ID_FenoOrcoMsk
  loc_A1A916: FStAdFunc var_88
  loc_A1A919: FLdPr var_88
  loc_A1A91C: LateIdLdVar var_98 DispID_13 -32767
  loc_A1A923: CBoolVar
  loc_A1A925: FFree1Ad var_88
  loc_A1A928: FFree1Var var_98 = ""
  loc_A1A92B: BranchF loc_A1AA96
  loc_A1A92E: LitStr "Municipalidad de Guaymallén"
  loc_A1A931: LitStr "Municipalidad de Tupungato"
  loc_A1A934: EqStr
  loc_A1A936: ImpAdLdI4 MemVar_C3D03C
  loc_A1A939: LitStr "ysagas"
  loc_A1A93C: EqStr
  loc_A1A93E: ImpAdLdI4 MemVar_C3D03C
  loc_A1A941: LitStr "lcarmona"
  loc_A1A944: EqStr
  loc_A1A946: OrI4
  loc_A1A947: ImpAdLdI4 MemVar_C3D03C
  loc_A1A94A: LitStr "mbalde"
  loc_A1A94D: EqStr
  loc_A1A94F: OrI4
  loc_A1A950: ImpAdLdI4 MemVar_C3D03C
  loc_A1A953: LitStr "root"
  loc_A1A956: EqStr
  loc_A1A958: OrI4
  loc_A1A959: AndI4
  loc_A1A95A: BranchF loc_A1A9DD
  loc_A1A95D: FLdPr Me
  loc_A1A960: VCallAd Control_ID_FenoOrcoMsk
  loc_A1A963: FStAdFunc var_88
  loc_A1A966: FLdPr var_88
  loc_A1A969: LateIdLdVar var_98 DispID_15 0
  loc_A1A970: PopAd
  loc_A1A972: FLdPr Me
  loc_A1A975: VCallAd Control_ID_FenoOrcoMsk
  loc_A1A978: FStAdFunc var_9C
  loc_A1A97B: FLdPr var_9C
  loc_A1A97E: LateIdLdVar var_AC DispID_15 0
  loc_A1A985: PopAd
  loc_A1A987: FLdPr Me
  loc_A1A98A: VCallAd Control_ID_FenoOrcoMsk
  loc_A1A98D: FStAdFunc var_C4
  loc_A1A990: LitI2_Byte &HFF
  loc_A1A992: PopTmpLdAd2 var_BA
  loc_A1A995: FLdZeroAd var_C4
  loc_A1A998: FStAdFunc var_B8
  loc_A1A99B: FLdRfVar var_B8
  loc_A1A99E: FLdRfVar var_AC
  loc_A1A9A1: CStrVarTmp
  loc_A1A9A2: FStStrNoPop var_B4
  loc_A1A9A5: LitI2_Byte 0
  loc_A1A9A7: LitI2_Byte &HFF
  loc_A1A9A9: FLdRfVar var_98
  loc_A1A9AC: CStrVarTmp
  loc_A1A9AD: FStStrNoPop var_B0
  loc_A1A9B0: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A1A9B5: FStStrNoPop var_C0
  loc_A1A9B8: FLdPr Me
  loc_A1A9BB: MemStStrCopy
  loc_A1A9BF: FFreeStr var_B0 = "": var_B4 = ""
  loc_A1A9C8: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_A1A9D3: FFreeVar var_98 = ""
  loc_A1A9DA: Branch loc_A1AA5A
  loc_A1A9DD: FLdPr Me
  loc_A1A9E0: VCallAd Control_ID_FenoOrcoMsk
  loc_A1A9E3: FStAdFunc var_88
  loc_A1A9E6: FLdPr var_88
  loc_A1A9E9: LateIdLdVar var_98 DispID_15 0
  loc_A1A9F0: PopAd
  loc_A1A9F2: FLdPr Me
  loc_A1A9F5: VCallAd Control_ID_FechOrcoMsk
  loc_A1A9F8: FStAdFunc var_9C
  loc_A1A9FB: FLdPr var_9C
  loc_A1A9FE: LateIdLdVar var_AC DispID_15 0
  loc_A1AA05: PopAd
  loc_A1AA07: FLdPr Me
  loc_A1AA0A: VCallAd Control_ID_FenoOrcoMsk
  loc_A1AA0D: FStAdFunc var_C4
  loc_A1AA10: LitI2_Byte &HFF
  loc_A1AA12: PopTmpLdAd2 var_BA
  loc_A1AA15: FLdZeroAd var_C4
  loc_A1AA18: FStAdFunc var_B8
  loc_A1AA1B: FLdRfVar var_B8
  loc_A1AA1E: FLdRfVar var_AC
  loc_A1AA21: CStrVarTmp
  loc_A1AA22: FStStrNoPop var_B4
  loc_A1AA25: LitI2_Byte 0
  loc_A1AA27: LitI2_Byte &HFF
  loc_A1AA29: FLdRfVar var_98
  loc_A1AA2C: CStrVarTmp
  loc_A1AA2D: FStStrNoPop var_B0
  loc_A1AA30: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A1AA35: FStStrNoPop var_C0
  loc_A1AA38: FLdPr Me
  loc_A1AA3B: MemStStrCopy
  loc_A1AA3F: FFreeStr var_B0 = "": var_B4 = ""
  loc_A1AA48: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_A1AA53: FFreeVar var_98 = ""
  loc_A1AA5A: FLdPr Me
  loc_A1AA5D: VCallAd Control_ID_FenoOrcoMsk
  loc_A1AA60: FStAdFunc var_C4
  loc_A1AA63: LitNothing
  loc_A1AA65: CastAd
  loc_A1AA68: FStAdFunc var_B8
  loc_A1AA6B: FLdRfVar var_B8
  loc_A1AA6E: FLdZeroAd var_C4
  loc_A1AA71: FStAdFuncNoPop
  loc_A1AA74: CastAd
  loc_A1AA77: FStAdFunc var_9C
  loc_A1AA7A: FLdRfVar var_9C
  loc_A1AA7D: FLdPr Me
  loc_A1AA80: MemLdRfVar from_stack_1.global_64
  loc_A1AA83: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A1AA88: IStI2 Cancel
  loc_A1AA8B: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_A1AA96: ExitProcHresult
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '94A310
  'Data Table: 4DABCC
  loc_94A2FC: FLdPr Me
  loc_94A2FF: VCallAd Control_ID_CucuPersMsk
  loc_94A302: CVarAd
  loc_94A306: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A30B: FFree1Var var_94 = ""
  loc_94A30E: ExitProcHresult
End Sub

Private Sub CucuPersMsk_UnknownEvent_8 '9DA2F4
  'Data Table: 4DABCC
  loc_9DA200: FLdRfVar var_8A
  loc_9DA203: FLdPr Me
  loc_9DA206: VCallAd Control_ID_cmdCancelar
  loc_9DA209: FStAdFunc var_88
  loc_9DA20C: FLdPr var_88
  loc_9DA20F:  = Me.Value
  loc_9DA214: FLdI2 var_8A
  loc_9DA217: NotI4
  loc_9DA218: FLdPr Me
  loc_9DA21B: VCallAd Control_ID_CucuPersMsk
  loc_9DA21E: FStAdFunc var_90
  loc_9DA221: FLdPr var_90
  loc_9DA224: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DA22B: CBoolVar
  loc_9DA22D: AndI4
  loc_9DA22E: FFreeAd var_88 = ""
  loc_9DA235: FFree1Var var_A0 = ""
  loc_9DA238: BranchF loc_9DA2F3
  loc_9DA23B: FLdPr Me
  loc_9DA23E: VCallAd Control_ID_CucuPersMsk
  loc_9DA241: FStAdFunc var_88
  loc_9DA244: FLdPr var_88
  loc_9DA247: LateIdLdVar var_A0 DispID_0 0
  loc_9DA24E: PopAd
  loc_9DA250: FLdPr Me
  loc_9DA253: MemLdRfVar from_stack_1.global_80
  loc_9DA256: NewIfNullRf
  loc_9DA25A: FLdRfVar var_A0
  loc_9DA25D: CStrVarTmp
  loc_9DA25E: FStStrNoPop var_A4
  loc_9DA261: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_9DA266: FStStrNoPop var_A8
  loc_9DA269: FLdPr Me
  loc_9DA26C: MemStStrCopy
  loc_9DA270: FFreeStr var_A4 = ""
  loc_9DA277: FFree1Ad var_88
  loc_9DA27A: FFree1Var var_A0 = ""
  loc_9DA27D: FLdPr Me
  loc_9DA280: VCallAd Control_ID_CucuPersMsk
  loc_9DA283: FStAdFunc var_B0
  loc_9DA286: FLdPr Me
  loc_9DA289: VCallAd Control_ID_DetaProvLbl
  loc_9DA28C: FStAdFunc var_AC
  loc_9DA28F: FLdRfVar var_AC
  loc_9DA292: FLdZeroAd var_B0
  loc_9DA295: FStAdFuncNoPop
  loc_9DA298: CastAd
  loc_9DA29B: FStAdFunc var_90
  loc_9DA29E: FLdRfVar var_90
  loc_9DA2A1: FLdPr Me
  loc_9DA2A4: MemLdRfVar from_stack_1.global_64
  loc_9DA2A7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DA2AC: IStI2 Cancel
  loc_9DA2AF: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9DA2BA: ILdI2 Cancel
  loc_9DA2BD: NotI4
  loc_9DA2BE: BranchF loc_9DA2F3
  loc_9DA2C1: ILdI2 Cancel
  loc_9DA2C4: NotI4
  loc_9DA2C5: BranchF loc_9DA2F3
  loc_9DA2C8: FLdRfVar var_A4
  loc_9DA2CB: FLdPr Me
  loc_9DA2CE: MemLdRfVar from_stack_1.global_80
  loc_9DA2D1: NewIfNullPr tblproveedor
  loc_9DA2D4: from_stack_1v = tblproveedor.DetaProvGet()
  loc_9DA2D9: ILdRf var_A4
  loc_9DA2DC: FLdPr Me
  loc_9DA2DF: VCallAd Control_ID_DetaProvLbl
  loc_9DA2E2: FStAdFunc var_88
  loc_9DA2E5: FLdPr var_88
  loc_9DA2E8: Me.Caption = from_stack_1
  loc_9DA2ED: FFree1Str var_A4
  loc_9DA2F0: FFree1Ad var_88
  loc_9DA2F3: ExitProcHresult
End Sub

Private Sub CucuPersMsk_KeyPress(KeyAscii As Integer) 'A00BDC
  'Data Table: 4DABCC
  loc_A00A90: ILdI2 KeyAscii
  loc_A00A93: CI4UI1
  loc_A00A94: LitI4 &H20
  loc_A00A99: EqI4
  loc_A00A9A: BranchF loc_A00BD8
  loc_A00A9D: LitI2_Byte 0
  loc_A00A9F: ImpAdLdRf MemVar_C3D74C
  loc_A00AA2: NewIfNullPr bscProveedor
  loc_A00AA5: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A00AAA: LitNothing
  loc_A00AAC: CastAd
  loc_A00AAF: FStAdFuncNoPop
  loc_A00AB2: ImpAdLdRf MemVar_C3D74C
  loc_A00AB5: NewIfNullPr bscProveedor
  loc_A00AB8: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_A00ABD: FFree1Ad var_88
  loc_A00AC0: LitVar_Missing var_A8
  loc_A00AC3: PopAdLdVar
  loc_A00AC4: LitVarI4
  loc_A00ACC: PopAdLdVar
  loc_A00ACD: ImpAdLdRf MemVar_C3D74C
  loc_A00AD0: NewIfNullPr bscProveedor
  loc_A00AD3: bscProveedor.Show from_stack_1, from_stack_2
  loc_A00AD8: FLdRfVar var_AC
  loc_A00ADB: FLdRfVar var_88
  loc_A00ADE: ImpAdLdRf MemVar_C3D74C
  loc_A00AE1: NewIfNullPr bscProveedor
  loc_A00AE4: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A00AE9: FLdPr var_88
  loc_A00AEC: from_stack_1 = clsbase.RecordCount
  loc_A00AF1: ILdRf var_AC
  loc_A00AF4: LitI4 0
  loc_A00AF9: GtI4
  loc_A00AFA: FFree1Ad var_88
  loc_A00AFD: BranchF loc_A00BD8
  loc_A00B00: FLdRfVar var_C8
  loc_A00B03: FLdRfVar var_B8
  loc_A00B06: LitVarStr var_98, "CucuPers"
  loc_A00B0B: PopAdLdVar
  loc_A00B0C: FLdRfVar var_B4
  loc_A00B0F: FLdRfVar var_B0
  loc_A00B12: FLdRfVar var_88
  loc_A00B15: ImpAdLdRf MemVar_C3D74C
  loc_A00B18: NewIfNullPr bscProveedor
  loc_A00B1B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A00B20: FLdPr var_88
  loc_A00B23: from_stack_1v = clsbase.RsFrmGet()
  loc_A00B28: FLdPr var_B0
  loc_A00B2B:  = Me.Fields
  loc_A00B30: FLdPr var_B4
  loc_A00B33: from_stack_2 = Me.Item(from_stack_1)
  loc_A00B38: FLdPr var_B8
  loc_A00B3B:  = Me.Value
  loc_A00B40: FLdRfVar var_C8
  loc_A00B43: CStrVarTmp
  loc_A00B44: CVarStr var_D8
  loc_A00B47: PopAdLdVar
  loc_A00B48: FLdPr Me
  loc_A00B4B: VCallAd Control_ID_CucuPersMsk
  loc_A00B4E: FStAdFunc var_DC
  loc_A00B51: FLdPr var_DC
  loc_A00B54: LateIdSt
  loc_A00B59: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A00B66: FFreeVar var_C8 = ""
  loc_A00B6D: FLdRfVar var_C8
  loc_A00B70: FLdRfVar var_B8
  loc_A00B73: LitVarStr var_98, "DetaProv"
  loc_A00B78: PopAdLdVar
  loc_A00B79: FLdRfVar var_B4
  loc_A00B7C: FLdRfVar var_B0
  loc_A00B7F: FLdRfVar var_88
  loc_A00B82: ImpAdLdRf MemVar_C3D74C
  loc_A00B85: NewIfNullPr bscProveedor
  loc_A00B88: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A00B8D: FLdPr var_88
  loc_A00B90: from_stack_1v = clsbase.RsFrmGet()
  loc_A00B95: FLdPr var_B0
  loc_A00B98:  = Me.Fields
  loc_A00B9D: FLdPr var_B4
  loc_A00BA0: from_stack_2 = Me.Item(from_stack_1)
  loc_A00BA5: FLdPr var_B8
  loc_A00BA8:  = Me.Value
  loc_A00BAD: FLdRfVar var_C8
  loc_A00BB0: CStrVarTmp
  loc_A00BB1: FStStrNoPop var_E0
  loc_A00BB4: FLdPr Me
  loc_A00BB7: VCallAd Control_ID_DetaProvLbl
  loc_A00BBA: FStAdFunc var_DC
  loc_A00BBD: FLdPr var_DC
  loc_A00BC0: Me.Caption = from_stack_1
  loc_A00BC5: FFree1Str var_E0
  loc_A00BC8: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A00BD5: FFree1Var var_C8 = ""
  loc_A00BD8: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A203DC
  'Data Table: 4DABCC
  loc_A20240: LitI2_Byte 0
  loc_A20242: CUI1I2
  loc_A20244: FLdPr Me
  loc_A20247: MemStUI1
  loc_A2024B: LitVarI2 var_94, 0
  loc_A20250: PopAdLdVar
  loc_A20251: FLdPr Me
  loc_A20254: VCallAd Control_ID_SSTab
  loc_A20257: FStAdFunc var_A8
  loc_A2025A: FLdPr var_A8
  loc_A2025D: LateIdSt
  loc_A20262: FFree1Ad var_A8
  loc_A20265: ILdRf Me
  loc_A20268: CastAd
  loc_A2026B: FStAdFunc var_A8
  loc_A2026E: FLdRfVar var_A8
  loc_A20271: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A20276: FFree1Ad var_A8
  loc_A20279: LitI4 0
  loc_A2027E: LitI4 0
  loc_A20283: FLdRfVar var_AC
  loc_A20286: Redim
  loc_A20290: FLdPr Me
  loc_A20293: VCallAd Control_ID_dgdABMS
  loc_A20296: CVarAd
  loc_A2029A: ParmAry1St
  loc_A202A0: FLdRfVar var_AC
  loc_A202A3: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A202A8: FLdRfVar var_AC
  loc_A202AB: Erase
  loc_A202AC: LitI4 0
  loc_A202B1: LitI4 0
  loc_A202B6: FLdRfVar var_AC
  loc_A202B9: Redim
  loc_A202C3: FLdPr Me
  loc_A202C6: VCallAd Control_ID_ItemCompraFlex
  loc_A202C9: CVarAd
  loc_A202CD: ParmAry1St
  loc_A202D3: FLdRfVar var_AC
  loc_A202D6: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A202DB: FLdRfVar var_AC
  loc_A202DE: Erase
  loc_A202DF: FLdPr Me
  loc_A202E2: MemLdRfVar from_stack_1.global_52
  loc_A202E5: NewIfNullAd
  loc_A202E8: FStAd var_C0 
  loc_A202EC: FLdRfVar var_C0
  loc_A202EF: CVarRef
  loc_A202F4: ILdRf Me
  loc_A202F7: CastAd
  loc_A202FA: FStAdFunc var_A8
  loc_A202FD: FLdRfVar var_A8
  loc_A20300: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A20305: ILdRf var_C0
  loc_A20308: CastAd
  loc_A2030B: FLdPr Me
  loc_A2030E: MemStAdFunc
  loc_A20312: FFreeAd var_A8 = ""
  loc_A20319: ILdRf Me
  loc_A2031C: CastAd
  loc_A2031F: FStAdFunc var_A8
  loc_A20322: FLdRfVar var_A8
  loc_A20325: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A2032A: FFree1Ad var_A8
  loc_A2032D: FLdPr Me
  loc_A20330: MemLdStr global_68
  loc_A20333: LitStr vbNullString
  loc_A20336: NeStr
  loc_A20338: BranchF loc_A20390
  loc_A2033B: LitStr "Filtro: "
  loc_A2033E: FLdPr Me
  loc_A20341: MemLdStr global_68
  loc_A20344: ConcatStr
  loc_A20345: FStStrNoPop var_C4
  loc_A20348: LitStr " - Registro/s: "
  loc_A2034B: ConcatStr
  loc_A2034C: FStStrNoPop var_CC
  loc_A2034F: FLdRfVar var_C8
  loc_A20352: FLdPr Me
  loc_A20355: MemLdRfVar from_stack_1.global_52
  loc_A20358: NewIfNullPr clsordencompra
  loc_A2035B: from_stack_1 = clsordencompra.RecordCount
  loc_A20360: ILdRf var_C8
  loc_A20363: CStrI4
  loc_A20365: FStStrNoPop var_D0
  loc_A20368: ConcatStr
  loc_A20369: CVarStr var_BC
  loc_A2036C: PopAdLdVar
  loc_A2036D: FLdPr Me
  loc_A20370: VCallAd Control_ID_dgdABMS
  loc_A20373: FStAdFunc var_A8
  loc_A20376: FLdPr var_A8
  loc_A20379: LateIdSt
  loc_A2037E: FFreeStr var_C4 = "": var_CC = ""
  loc_A20387: FFree1Ad var_A8
  loc_A2038A: FFree1Var var_BC = ""
  loc_A2038D: Branch loc_A203CB
  loc_A20390: LitStr "Registro/s: "
  loc_A20393: FLdRfVar var_C8
  loc_A20396: FLdPr Me
  loc_A20399: MemLdRfVar from_stack_1.global_52
  loc_A2039C: NewIfNullPr clsordencompra
  loc_A2039F: from_stack_1 = clsordencompra.RecordCount
  loc_A203A4: ILdRf var_C8
  loc_A203A7: CStrI4
  loc_A203A9: FStStrNoPop var_C4
  loc_A203AC: ConcatStr
  loc_A203AD: CVarStr var_BC
  loc_A203B0: PopAdLdVar
  loc_A203B1: FLdPr Me
  loc_A203B4: VCallAd Control_ID_dgdABMS
  loc_A203B7: FStAdFunc var_A8
  loc_A203BA: FLdPr var_A8
  loc_A203BD: LateIdSt
  loc_A203C2: FFree1Str var_C4
  loc_A203C5: FFree1Ad var_A8
  loc_A203C8: FFree1Var var_BC = ""
  loc_A203CB: LitI2_Byte 0
  loc_A203CD: LitVarI2 var_BC, 0
  loc_A203D2: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A203D7: FFree1Var var_BC = ""
  loc_A203DA: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B88300
  'Data Table: 4DABCC
  loc_B87574: ILdRf Button
  loc_B87577: FStAd var_88 
  loc_B8757B: FLdRfVar var_90
  loc_B8757E: FLdPr var_88
  loc_B87581:  = Me.Key
  loc_B87586: FLdZeroAd var_90
  loc_B87589: FStStr var_94
  loc_B8758C: ILdRf var_94
  loc_B8758F: LitStr "btnCrear"
  loc_B87592: EqStr
  loc_B87594: BranchF loc_B875A7
  loc_B87597: LitI4 0
  loc_B8759C: LitStr "Opción no disponible en esta pantalla..."
  loc_B8759F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B875A4: Branch loc_B882FE
  loc_B875A7: ILdRf var_94
  loc_B875AA: LitStr "btnModificar"
  loc_B875AD: EqStr
  loc_B875AF: BranchF loc_B87ACF
  loc_B875B2: FLdRfVar var_98
  loc_B875B5: FLdPr Me
  loc_B875B8: MemLdRfVar from_stack_1.global_52
  loc_B875BB: NewIfNullPr clsordencompra
  loc_B875BE: from_stack_1 = clsordencompra.RecordCount
  loc_B875C3: ILdRf var_98
  loc_B875C6: LitI4 0
  loc_B875CB: GtI4
  loc_B875CC: BranchF loc_B87ACC
  loc_B875CF: FLdRfVar var_C4
  loc_B875D2: FLdRfVar var_B4
  loc_B875D5: LitVarStr var_B0, "CodiOrco"
  loc_B875DA: PopAdLdVar
  loc_B875DB: FLdRfVar var_A0
  loc_B875DE: FLdRfVar var_9C
  loc_B875E1: FLdPr Me
  loc_B875E4: MemLdRfVar from_stack_1.global_52
  loc_B875E7: NewIfNullPr clsordencompra
  loc_B875EA: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B875EF: FLdPr var_9C
  loc_B875F2:  = Me.Fields
  loc_B875F7: FLdPr var_A0
  loc_B875FA: from_stack_2 = Me.Item(from_stack_1)
  loc_B875FF: FLdPr var_B4
  loc_B87602:  = Me.Value
  loc_B87607: FLdRfVar var_C6
  loc_B8760A: FLdRfVar var_C4
  loc_B8760D: CI4Var
  loc_B8760F: ImpAdLdI2 MemVar_C3D064
  loc_B87612: FLdPr Me
  loc_B87615: MemLdRfVar from_stack_1.global_52
  loc_B87618: NewIfNullPr clsordencompra
  loc_B8761B: from_stack_3v = clsordencompra.TieneRecepcionValida(from_stack_1v, from_stack_2v)
  loc_B87620: FLdI2 var_C6
  loc_B87623: NotI4
  loc_B87624: FFreeAd var_9C = "": var_A0 = ""
  loc_B8762D: FFree1Var var_C4 = ""
  loc_B87630: BranchF loc_B87ABF
  loc_B87633: FLdRfVar var_B4
  loc_B87636: LitVarStr var_B0, "FeanOrco"
  loc_B8763B: PopAdLdVar
  loc_B8763C: FLdRfVar var_A0
  loc_B8763F: FLdRfVar var_9C
  loc_B87642: FLdPr Me
  loc_B87645: MemLdRfVar from_stack_1.global_52
  loc_B87648: NewIfNullPr clsordencompra
  loc_B8764B: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B87650: FLdPr var_9C
  loc_B87653:  = Me.Fields
  loc_B87658: FLdPr var_A0
  loc_B8765B: from_stack_2 = Me.Item(from_stack_1)
  loc_B87660: FLdZeroAd var_B4
  loc_B87663: CVarAd
  loc_B87667: ImpAdCallI2 IsNull()
  loc_B8766C: CVarBoolI2 var_124
  loc_B87670: FLdRfVar var_F4
  loc_B87673: FLdRfVar var_E4
  loc_B87676: LitVarStr var_E0, "FeanOrco"
  loc_B8767B: PopAdLdVar
  loc_B8767C: FLdRfVar var_D0
  loc_B8767F: FLdRfVar var_CC
  loc_B87682: FLdPr Me
  loc_B87685: MemLdRfVar from_stack_1.global_52
  loc_B87688: NewIfNullPr clsordencompra
  loc_B8768B: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B87690: FLdPr var_CC
  loc_B87693:  = Me.Fields
  loc_B87698: FLdPr var_D0
  loc_B8769B: from_stack_2 = Me.Item(from_stack_1)
  loc_B876A0: FLdPr var_E4
  loc_B876A3:  = Me.Value
  loc_B876A8: FLdRfVar var_F4
  loc_B876AB: LitVarStr var_104, vbNullString
  loc_B876B0: HardType
  loc_B876B1: EqVar var_114
  loc_B876B5: OrVar var_134
  loc_B876B9: CBoolVarNull
  loc_B876BB: FFreeAd var_9C = "": var_A0 = "": var_CC = "": var_D0 = ""
  loc_B876C8: FFreeVar var_C4 = "": var_F4 = ""
  loc_B876D1: BranchF loc_B87AAF
  loc_B876D4: FLdRfVar var_C4
  loc_B876D7: FLdRfVar var_B4
  loc_B876DA: LitVarStr var_B0, "CodiOrco"
  loc_B876DF: PopAdLdVar
  loc_B876E0: FLdRfVar var_A0
  loc_B876E3: FLdRfVar var_9C
  loc_B876E6: FLdPr Me
  loc_B876E9: MemLdRfVar from_stack_1.global_52
  loc_B876EC: NewIfNullPr clsordencompra
  loc_B876EF: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B876F4: FLdPr var_9C
  loc_B876F7:  = Me.Fields
  loc_B876FC: FLdPr var_A0
  loc_B876FF: from_stack_2 = Me.Item(from_stack_1)
  loc_B87704: FLdPr var_B4
  loc_B87707:  = Me.Value
  loc_B8770C: FLdRfVar var_F4
  loc_B8770F: FLdRfVar var_E4
  loc_B87712: LitVarStr var_E0, "IdCoti"
  loc_B87717: PopAdLdVar
  loc_B87718: FLdRfVar var_D0
  loc_B8771B: FLdRfVar var_CC
  loc_B8771E: FLdPr Me
  loc_B87721: MemLdRfVar from_stack_1.global_52
  loc_B87724: NewIfNullPr clsordencompra
  loc_B87727: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B8772C: FLdPr var_CC
  loc_B8772F:  = Me.Fields
  loc_B87734: FLdPr var_D0
  loc_B87737: from_stack_2 = Me.Item(from_stack_1)
  loc_B8773C: FLdPr var_E4
  loc_B8773F:  = Me.Value
  loc_B87744: FLdRfVar var_90
  loc_B87747: FLdRfVar var_F4
  loc_B8774A: CI4Var
  loc_B8774C: FLdRfVar var_C4
  loc_B8774F: CI4Var
  loc_B87751: ImpAdLdI2 MemVar_C3D064
  loc_B87754: FLdPr Me
  loc_B87757: MemLdRfVar from_stack_1.global_52
  loc_B8775A: NewIfNullPr clsordencompra
  loc_B8775D: from_stack_4v = clsordencompra.TieneOCdeIdCoti(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B87762: FLdZeroAd var_90
  loc_B87765: FStStr var_8C
  loc_B87768: FFreeAd var_9C = "": var_A0 = "": var_CC = "": var_D0 = "": var_B4 = ""
  loc_B87777: FFreeVar var_C4 = ""
  loc_B8777E: ILdRf var_8C
  loc_B87781: LitStr vbNullString
  loc_B87784: NeStr
  loc_B87786: BranchF loc_B87799
  loc_B87789: LitI4 0
  loc_B8778E: ILdRf var_8C
  loc_B87791: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B87796: Branch loc_B87AAC
  loc_B87799: LitI2_Byte 2
  loc_B8779B: FLdPr Me
  loc_B8779E: MemStUI1
  loc_B877A2: ILdRf Me
  loc_B877A5: CastAd
  loc_B877A8: FStAdFunc var_9C
  loc_B877AB: FLdRfVar var_9C
  loc_B877AE: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B877B3: FFree1Ad var_9C
  loc_B877B6: LitI4 0
  loc_B877BB: LitI4 0
  loc_B877C0: FLdRfVar var_138
  loc_B877C3: Redim
  loc_B877CD: FLdPr Me
  loc_B877D0: VCallAd Control_ID_dgdABMS
  loc_B877D3: CVarAd
  loc_B877D7: ParmAry1St
  loc_B877DD: FLdRfVar var_138
  loc_B877E0: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B877E5: FLdRfVar var_138
  loc_B877E8: Erase
  loc_B877E9: ILdRf Me
  loc_B877EC: CastAd
  loc_B877EF: FStAdFunc var_9C
  loc_B877F2: FLdRfVar var_9C
  loc_B877F5: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B877FA: FFree1Ad var_9C
  loc_B877FD: LitI4 0
  loc_B87802: LitI4 2
  loc_B87807: FLdRfVar var_138
  loc_B8780A: Redim
  loc_B87814: FLdPr Me
  loc_B87817: VCallAd Control_ID_DetaOrcoTxt
  loc_B8781A: CVarAd
  loc_B8781E: ParmAry1St
  loc_B87824: FLdPr Me
  loc_B87827: VCallAd Control_ID_AlivaOrcoTxt
  loc_B8782A: CVarAd
  loc_B8782E: ParmAry1St
  loc_B87834: FLdPr Me
  loc_B87837: VCallAd Control_ID_SelloOrcoTxt
  loc_B8783A: CVarAd
  loc_B8783E: ParmAry1St
  loc_B87844: FLdRfVar var_138
  loc_B87847: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B8784C: FLdRfVar var_138
  loc_B8784F: Erase
  loc_B87850: LitStr vbNullString
  loc_B87853: FLdPr Me
  loc_B87856: MemStStrCopy
  loc_B8785A: FLdRfVar var_F4
  loc_B8785D: FLdRfVar var_E4
  loc_B87860: LitVarStr var_E0, "CodiOrco"
  loc_B87865: PopAdLdVar
  loc_B87866: FLdRfVar var_D0
  loc_B87869: FLdRfVar var_CC
  loc_B8786C: FLdPr Me
  loc_B8786F: MemLdRfVar from_stack_1.global_52
  loc_B87872: NewIfNullPr clsordencompra
  loc_B87875: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B8787A: FLdPr var_CC
  loc_B8787D:  = Me.Fields
  loc_B87882: FLdPr var_D0
  loc_B87885: from_stack_2 = Me.Item(from_stack_1)
  loc_B8788A: FLdPr var_E4
  loc_B8788D:  = Me.Value
  loc_B87892: FLdRfVar var_114
  loc_B87895: FLdRfVar var_144
  loc_B87898: LitVarStr var_104, "CodiOrco"
  loc_B8789D: PopAdLdVar
  loc_B8789E: FLdRfVar var_140
  loc_B878A1: FLdRfVar var_13C
  loc_B878A4: FLdPr Me
  loc_B878A7: MemLdRfVar from_stack_1.global_52
  loc_B878AA: NewIfNullPr clsordencompra
  loc_B878AD: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B878B2: FLdPr var_13C
  loc_B878B5:  = Me.Fields
  loc_B878BA: FLdPr var_140
  loc_B878BD: from_stack_2 = Me.Item(from_stack_1)
  loc_B878C2: FLdPr var_144
  loc_B878C5:  = Me.Value
  loc_B878CA: FLdRfVar var_C4
  loc_B878CD: FLdRfVar var_B4
  loc_B878D0: LitVarStr var_B0, "SumIdImpu"
  loc_B878D5: PopAdLdVar
  loc_B878D6: FLdRfVar var_A0
  loc_B878D9: FLdRfVar var_9C
  loc_B878DC: FLdPr Me
  loc_B878DF: MemLdRfVar from_stack_1.global_56
  loc_B878E2: NewIfNullPr clsbase
  loc_B878E5: from_stack_1v = clsbase.RsFrmGet()
  loc_B878EA: FLdPr var_9C
  loc_B878ED:  = Me.Fields
  loc_B878F2: FLdPr var_A0
  loc_B878F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B878FA: FLdPr var_B4
  loc_B878FD:  = Me.Value
  loc_B87902: FLdRfVar var_C4
  loc_B87905: FnCLngVar
  loc_B87907: LitI4 0
  loc_B8790C: EqI4
  loc_B8790D: FLdRfVar var_C6
  loc_B87910: FLdRfVar var_F4
  loc_B87913: CI4Var
  loc_B87915: ImpAdLdI2 MemVar_C3D064
  loc_B87918: FLdPr Me
  loc_B8791B: MemLdRfVar from_stack_1.global_52
  loc_B8791E: NewIfNullPr clsordencompra
  loc_B87921: from_stack_3v = clsordencompra.UsuarioEnOC(from_stack_1v, from_stack_2v)
  loc_B87926: FLdI2 var_C6
  loc_B87929: OrI4
  loc_B8792A: FLdRfVar var_146
  loc_B8792D: FLdRfVar var_114
  loc_B87930: CI4Var
  loc_B87932: ImpAdLdI2 MemVar_C3D064
  loc_B87935: FLdPr Me
  loc_B87938: MemLdRfVar from_stack_1.global_52
  loc_B8793B: NewIfNullPr clsordencompra
  loc_B8793E: from_stack_3v = clsordencompra.NoTieneImpuBalCerrado(from_stack_1v, from_stack_2v)
  loc_B87943: FLdI2 var_146
  loc_B87946: AndI4
  loc_B87947: CVarBoolI2 var_124
  loc_B8794B: PopAdLdVar
  loc_B8794C: FLdPr Me
  loc_B8794F: VCallAd Control_ID_CucuPersMsk
  loc_B87952: FStAdFunc var_15C
  loc_B87955: FLdPr var_15C
  loc_B87958: LateIdSt
  loc_B8795D: FFreeAd var_9C = "": var_A0 = "": var_B4 = "": var_CC = "": var_D0 = "": var_E4 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_B87974: FFreeVar var_C4 = "": var_F4 = "": var_114 = ""
  loc_B8797F: FLdPr Me
  loc_B87982: VCallAd Control_ID_CucuPersMsk
  loc_B87985: FStAdFunc var_9C
  loc_B87988: FLdPr var_9C
  loc_B8798B: LateIdLdVar var_C4 DispID_13 -32767
  loc_B87992: CBoolVar
  loc_B87994: CVarBoolI2 var_B0
  loc_B87998: PopAdLdVar
  loc_B87999: FLdPr Me
  loc_B8799C: VCallAd Control_ID_ItemCompraFlex
  loc_B8799F: FStAdFunc var_A0
  loc_B879A2: FLdPr var_A0
  loc_B879A5: LateIdSt
  loc_B879AA: FFreeAd var_9C = ""
  loc_B879B1: FFreeVar var_C4 = ""
  loc_B879B8: LitStr "Municipalidad de Guaymallén"
  loc_B879BB: FStStrCopy var_160
  loc_B879BE: ILdRf var_160
  loc_B879C1: LitStr "Municipalidad de Guaymallén"
  loc_B879C4: EqStr
  loc_B879C6: BranchT loc_B879D4
  loc_B879C9: ILdRf var_160
  loc_B879CC: LitStr "Municipalidad de Malargüe"
  loc_B879CF: EqStr
  loc_B879D1: BranchF loc_B87A16
  loc_B879D4: LitI2_Byte 0
  loc_B879D6: PopTmpLdAd2 var_C6
  loc_B879D9: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_B879DE: CStrDate
  loc_B879E0: CVarStr var_C4
  loc_B879E3: PopAdLdVar
  loc_B879E4: FLdPr Me
  loc_B879E7: VCallAd Control_ID_FenoOrcoMsk
  loc_B879EA: FStAdFunc var_9C
  loc_B879ED: FLdPr var_9C
  loc_B879F0: LateIdSt
  loc_B879F5: FFree1Ad var_9C
  loc_B879F8: FFree1Var var_C4 = ""
  loc_B879FB: LitVar_TRUE var_B0
  loc_B879FE: PopAdLdVar
  loc_B879FF: FLdPr Me
  loc_B87A02: VCallAd Control_ID_FenoOrcoMsk
  loc_B87A05: FStAdFunc var_9C
  loc_B87A08: FLdPr var_9C
  loc_B87A0B: LateIdSt
  loc_B87A10: FFree1Ad var_9C
  loc_B87A13: Branch loc_B87AAC
  loc_B87A16: ILdRf var_160
  loc_B87A19: LitStr "Municipalidad de San Carlos"
  loc_B87A1C: EqStr
  loc_B87A1E: BranchF loc_B87A3C
  loc_B87A21: LitVar_TRUE var_B0
  loc_B87A24: PopAdLdVar
  loc_B87A25: FLdPr Me
  loc_B87A28: VCallAd Control_ID_FenoOrcoMsk
  loc_B87A2B: FStAdFunc var_9C
  loc_B87A2E: FLdPr var_9C
  loc_B87A31: LateIdSt
  loc_B87A36: FFree1Ad var_9C
  loc_B87A39: Branch loc_B87AAC
  loc_B87A3C: ILdRf var_160
  loc_B87A3F: LitStr "Municipalidad de General Alvear"
  loc_B87A42: EqStr
  loc_B87A44: BranchF loc_B87A60
  loc_B87A47: LitI2_Byte &HFF
  loc_B87A49: FLdPr Me
  loc_B87A4C: VCallAd Control_ID_ExpeImpuGDEtxt
  loc_B87A4F: FStAdFunc var_9C
  loc_B87A52: FLdPr var_9C
  loc_B87A55: Me.Enabled = from_stack_1b
  loc_B87A5A: FFree1Ad var_9C
  loc_B87A5D: Branch loc_B87AAC
  loc_B87A60: ILdRf var_160
  loc_B87A63: LitStr "Municipalidad de Tupungato"
  loc_B87A66: EqStr
  loc_B87A68: BranchF loc_B87AAC
  loc_B87A6B: ImpAdLdI4 MemVar_C3D03C
  loc_B87A6E: LitStr "ysagas"
  loc_B87A71: EqStr
  loc_B87A73: ImpAdLdI4 MemVar_C3D03C
  loc_B87A76: LitStr "lcarmona"
  loc_B87A79: EqStr
  loc_B87A7B: OrI4
  loc_B87A7C: ImpAdLdI4 MemVar_C3D03C
  loc_B87A7F: LitStr "mbalde"
  loc_B87A82: EqStr
  loc_B87A84: OrI4
  loc_B87A85: ImpAdLdI4 MemVar_C3D03C
  loc_B87A88: LitStr "root"
  loc_B87A8B: EqStr
  loc_B87A8D: OrI4
  loc_B87A8E: BranchF loc_B87AA9
  loc_B87A91: LitVar_TRUE var_B0
  loc_B87A94: PopAdLdVar
  loc_B87A95: FLdPr Me
  loc_B87A98: VCallAd Control_ID_FenoOrcoMsk
  loc_B87A9B: FStAdFunc var_9C
  loc_B87A9E: FLdPr var_9C
  loc_B87AA1: LateIdSt
  loc_B87AA6: FFree1Ad var_9C
  loc_B87AA9: Branch loc_B87AAC
  loc_B87AAC: Branch loc_B87ABC
  loc_B87AAF: LitI4 0
  loc_B87AB4: LitStr "La Orden de Compra está Anulada. Verifique..."
  loc_B87AB7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B87ABC: Branch loc_B87ACC
  loc_B87ABF: LitI4 0
  loc_B87AC4: LitStr "La Orden de Compra tiene recepciones. Verifique..."
  loc_B87AC7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B87ACC: Branch loc_B882FE
  loc_B87ACF: ILdRf var_94
  loc_B87AD2: LitStr "btnEliminar"
  loc_B87AD5: EqStr
  loc_B87AD7: BranchF loc_B87E16
  loc_B87ADA: FLdRfVar var_98
  loc_B87ADD: FLdPr Me
  loc_B87AE0: MemLdRfVar from_stack_1.global_52
  loc_B87AE3: NewIfNullPr clsordencompra
  loc_B87AE6: from_stack_1 = clsordencompra.RecordCount
  loc_B87AEB: ILdRf var_98
  loc_B87AEE: LitI4 0
  loc_B87AF3: GtI4
  loc_B87AF4: BranchF loc_B87E13
  loc_B87AF7: FLdRfVar var_B4
  loc_B87AFA: LitVarStr var_B0, "FeanOrco"
  loc_B87AFF: PopAdLdVar
  loc_B87B00: FLdRfVar var_A0
  loc_B87B03: FLdRfVar var_9C
  loc_B87B06: FLdPr Me
  loc_B87B09: MemLdRfVar from_stack_1.global_52
  loc_B87B0C: NewIfNullPr clsordencompra
  loc_B87B0F: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B87B14: FLdPr var_9C
  loc_B87B17:  = Me.Fields
  loc_B87B1C: FLdPr var_A0
  loc_B87B1F: from_stack_2 = Me.Item(from_stack_1)
  loc_B87B24: FLdZeroAd var_B4
  loc_B87B27: CVarAd
  loc_B87B2B: ImpAdCallI2 IsNull()
  loc_B87B30: CVarBoolI2 var_124
  loc_B87B34: FLdRfVar var_F4
  loc_B87B37: FLdRfVar var_E4
  loc_B87B3A: LitVarStr var_E0, "FeanOrco"
  loc_B87B3F: PopAdLdVar
  loc_B87B40: FLdRfVar var_D0
  loc_B87B43: FLdRfVar var_CC
  loc_B87B46: FLdPr Me
  loc_B87B49: MemLdRfVar from_stack_1.global_52
  loc_B87B4C: NewIfNullPr clsordencompra
  loc_B87B4F: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B87B54: FLdPr var_CC
  loc_B87B57:  = Me.Fields
  loc_B87B5C: FLdPr var_D0
  loc_B87B5F: from_stack_2 = Me.Item(from_stack_1)
  loc_B87B64: FLdPr var_E4
  loc_B87B67:  = Me.Value
  loc_B87B6C: FLdRfVar var_F4
  loc_B87B6F: LitVarStr var_104, vbNullString
  loc_B87B74: HardType
  loc_B87B75: EqVar var_114
  loc_B87B79: OrVar var_134
  loc_B87B7D: CBoolVarNull
  loc_B87B7F: FFreeAd var_9C = "": var_A0 = "": var_CC = "": var_D0 = ""
  loc_B87B8C: FFreeVar var_C4 = "": var_F4 = ""
  loc_B87B95: BranchF loc_B87E06
  loc_B87B98: FLdRfVar var_C4
  loc_B87B9B: FLdRfVar var_B4
  loc_B87B9E: LitVarStr var_B0, "PeriInfo"
  loc_B87BA3: PopAdLdVar
  loc_B87BA4: FLdRfVar var_A0
  loc_B87BA7: FLdRfVar var_9C
  loc_B87BAA: FLdPr Me
  loc_B87BAD: MemLdRfVar from_stack_1.global_52
  loc_B87BB0: NewIfNullPr clsordencompra
  loc_B87BB3: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B87BB8: FLdPr var_9C
  loc_B87BBB:  = Me.Fields
  loc_B87BC0: FLdPr var_A0
  loc_B87BC3: from_stack_2 = Me.Item(from_stack_1)
  loc_B87BC8: FLdPr var_B4
  loc_B87BCB:  = Me.Value
  loc_B87BD0: FLdRfVar var_F4
  loc_B87BD3: FLdRfVar var_E4
  loc_B87BD6: LitVarStr var_E0, "CodiOrco"
  loc_B87BDB: PopAdLdVar
  loc_B87BDC: FLdRfVar var_D0
  loc_B87BDF: FLdRfVar var_CC
  loc_B87BE2: FLdPr Me
  loc_B87BE5: MemLdRfVar from_stack_1.global_52
  loc_B87BE8: NewIfNullPr clsordencompra
  loc_B87BEB: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B87BF0: FLdPr var_CC
  loc_B87BF3:  = Me.Fields
  loc_B87BF8: FLdPr var_D0
  loc_B87BFB: from_stack_2 = Me.Item(from_stack_1)
  loc_B87C00: FLdPr var_E4
  loc_B87C03:  = Me.Value
  loc_B87C08: FLdRfVar var_90
  loc_B87C0B: FLdRfVar var_F4
  loc_B87C0E: CI4Var
  loc_B87C10: FLdRfVar var_C4
  loc_B87C13: CI2Var
  loc_B87C14: FLdPr Me
  loc_B87C17: MemLdRfVar from_stack_1.global_52
  loc_B87C1A: NewIfNullPr clsordencompra
  loc_B87C1D: from_stack_3v = clsordencompra.ValidaAnular(from_stack_1v, from_stack_2v)
  loc_B87C22: FLdZeroAd var_90
  loc_B87C25: FStStr var_8C
  loc_B87C28: FFreeAd var_9C = "": var_A0 = "": var_CC = "": var_D0 = "": var_B4 = ""
  loc_B87C37: FFreeVar var_C4 = ""
  loc_B87C3E: ILdRf var_8C
  loc_B87C41: LitStr vbNullString
  loc_B87C44: NeStr
  loc_B87C46: BranchF loc_B87C59
  loc_B87C49: LitI4 0
  loc_B87C4E: ILdRf var_8C
  loc_B87C51: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B87C56: Branch loc_B87E03
  loc_B87C59: FLdRfVar var_C4
  loc_B87C5C: FLdRfVar var_B4
  loc_B87C5F: LitVarStr var_B0, "CodiOrco"
  loc_B87C64: PopAdLdVar
  loc_B87C65: FLdRfVar var_A0
  loc_B87C68: FLdRfVar var_9C
  loc_B87C6B: FLdPr Me
  loc_B87C6E: MemLdRfVar from_stack_1.global_52
  loc_B87C71: NewIfNullPr clsordencompra
  loc_B87C74: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B87C79: FLdPr var_9C
  loc_B87C7C:  = Me.Fields
  loc_B87C81: FLdPr var_A0
  loc_B87C84: from_stack_2 = Me.Item(from_stack_1)
  loc_B87C89: FLdPr var_B4
  loc_B87C8C:  = Me.Value
  loc_B87C91: LitI2_Byte 0
  loc_B87C93: PopTmpLdAd2 var_146
  loc_B87C96: LitI2_Byte &HFF
  loc_B87C98: PopTmpLdAd2 var_C6
  loc_B87C9B: LitVarStr var_E0, "¿Desea ANULAR la Orden de Compra "
  loc_B87CA0: FLdRfVar var_C4
  loc_B87CA3: ConcatVar var_F4
  loc_B87CA7: LitVarStr var_104, " ?"
  loc_B87CAC: ConcatVar var_114
  loc_B87CB0: CStrVarVal var_90
  loc_B87CB4: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B87CB9: CI4UI1
  loc_B87CBA: LitI4 6
  loc_B87CBF: EqI4
  loc_B87CC0: FFree1Str var_90
  loc_B87CC3: FFreeAd var_9C = "": var_A0 = ""
  loc_B87CCC: FFreeVar var_C4 = "": var_F4 = ""
  loc_B87CD5: BranchF loc_B87E03
  loc_B87CD8: LitI2_Byte 3
  loc_B87CDA: FLdPr Me
  loc_B87CDD: MemStUI1
  loc_B87CE1: LitVarI2 var_B0, 2
  loc_B87CE6: PopAdLdVar
  loc_B87CE7: FLdPr Me
  loc_B87CEA: VCallAd Control_ID_SSTab
  loc_B87CED: FStAdFunc var_9C
  loc_B87CF0: FLdPr var_9C
  loc_B87CF3: LateIdSt
  loc_B87CF8: FFree1Ad var_9C
  loc_B87CFB: ILdRf Me
  loc_B87CFE: CastAd
  loc_B87D01: FStAdFunc var_9C
  loc_B87D04: FLdRfVar var_9C
  loc_B87D07: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B87D0C: FFree1Ad var_9C
  loc_B87D0F: LitI4 0
  loc_B87D14: LitI4 0
  loc_B87D19: FLdRfVar var_138
  loc_B87D1C: Redim
  loc_B87D26: FLdPr Me
  loc_B87D29: VCallAd Control_ID_dgdABMS
  loc_B87D2C: CVarAd
  loc_B87D30: ParmAry1St
  loc_B87D36: FLdRfVar var_138
  loc_B87D39: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B87D3E: FLdRfVar var_138
  loc_B87D41: Erase
  loc_B87D42: LitI4 0
  loc_B87D47: LitI4 0
  loc_B87D4C: FLdRfVar var_138
  loc_B87D4F: Redim
  loc_B87D59: FLdPr Me
  loc_B87D5C: VCallAd Control_ID_ItemCompraFlex
  loc_B87D5F: CVarAd
  loc_B87D63: ParmAry1St
  loc_B87D69: FLdRfVar var_138
  loc_B87D6C: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B87D71: FLdRfVar var_138
  loc_B87D74: Erase
  loc_B87D75: ILdRf Me
  loc_B87D78: CastAd
  loc_B87D7B: FStAdFunc var_9C
  loc_B87D7E: FLdRfVar var_9C
  loc_B87D81: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B87D86: FFree1Ad var_9C
  loc_B87D89: ImpAdLdFPR8 MemVar_C3D04C
  loc_B87D8C: CStrDate
  loc_B87D8E: CVarStr var_C4
  loc_B87D91: PopAdLdVar
  loc_B87D92: FLdPr Me
  loc_B87D95: VCallAd Control_ID_FeanOrcoMsk
  loc_B87D98: FStAdFunc var_9C
  loc_B87D9B: FLdPr var_9C
  loc_B87D9E: LateIdSt
  loc_B87DA3: FFree1Ad var_9C
  loc_B87DA6: FFree1Var var_C4 = ""
  loc_B87DA9: LitStr "Por error en "
  loc_B87DAC: FLdPr Me
  loc_B87DAF: VCallAd Control_ID_BajaMotiTxt
  loc_B87DB2: FStAdFunc var_9C
  loc_B87DB5: FLdPr var_9C
  loc_B87DB8: Me.Text = from_stack_1
  loc_B87DBD: FFree1Ad var_9C
  loc_B87DC0: LitI4 0
  loc_B87DC5: LitI4 1
  loc_B87DCA: FLdRfVar var_138
  loc_B87DCD: Redim
  loc_B87DD7: FLdPr Me
  loc_B87DDA: VCallAd Control_ID_FeanOrcoMsk
  loc_B87DDD: CVarAd
  loc_B87DE1: ParmAry1St
  loc_B87DE7: FLdPr Me
  loc_B87DEA: VCallAd Control_ID_BajaMotiTxt
  loc_B87DED: CVarAd
  loc_B87DF1: ParmAry1St
  loc_B87DF7: FLdRfVar var_138
  loc_B87DFA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B87DFF: FLdRfVar var_138
  loc_B87E02: Erase
  loc_B87E03: Branch loc_B87E13
  loc_B87E06: LitI4 0
  loc_B87E0B: LitStr "La Orden de Compra está Anulada. Reintente..."
  loc_B87E0E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B87E13: Branch loc_B882FE
  loc_B87E16: ILdRf var_94
  loc_B87E19: LitStr "btnGuardar"
  loc_B87E1C: EqStr
  loc_B87E1E: BranchF loc_B881E2
  loc_B87E21: LitI2_Byte 0
  loc_B87E23: PopTmpLdAd2 var_C6
  loc_B87E26: Call ItemCompraFlex_UnknownEvent_8()
  loc_B87E2B: ILdRf var_8C
  loc_B87E2E: LitStr vbNullString
  loc_B87E31: NeStr
  loc_B87E33: BranchF loc_B87E37
  loc_B87E36: ExitProcHresult
  loc_B87E37: LitI2_Byte 0
  loc_B87E39: PopTmpLdAd2 var_C6
  loc_B87E3C: Call DetaOrcoTxt_Validate(from_stack_1v)
  loc_B87E41: ILdRf var_8C
  loc_B87E44: LitStr vbNullString
  loc_B87E47: NeStr
  loc_B87E49: BranchF loc_B87E4D
  loc_B87E4C: ExitProcHresult
  loc_B87E4D: LitI2_Byte 0
  loc_B87E4F: PopTmpLdAd2 var_C6
  loc_B87E52: from_stack_2v = FechOrcoMsk_UnknownEvent_8(from_stack_1v)
  loc_B87E57: ILdRf var_8C
  loc_B87E5A: LitStr vbNullString
  loc_B87E5D: NeStr
  loc_B87E5F: BranchF loc_B87E63
  loc_B87E62: ExitProcHresult
  loc_B87E63: LitI2_Byte 0
  loc_B87E65: PopTmpLdAd2 var_C6
  loc_B87E68: Call FenoOrcoMsk_UnknownEvent_8()
  loc_B87E6D: ILdRf var_8C
  loc_B87E70: LitStr vbNullString
  loc_B87E73: NeStr
  loc_B87E75: BranchF loc_B87E79
  loc_B87E78: ExitProcHresult
  loc_B87E79: LitI2_Byte 0
  loc_B87E7B: PopTmpLdAd2 var_C6
  loc_B87E7E: Call AlivaOrcoTxt_Validate(from_stack_1v)
  loc_B87E83: ILdRf var_8C
  loc_B87E86: LitStr vbNullString
  loc_B87E89: NeStr
  loc_B87E8B: BranchF loc_B87E8F
  loc_B87E8E: ExitProcHresult
  loc_B87E8F: LitI2_Byte 0
  loc_B87E91: PopTmpLdAd2 var_C6
  loc_B87E94: Call SelloOrcoTxt_Validate(from_stack_1v)
  loc_B87E99: ILdRf var_8C
  loc_B87E9C: LitStr vbNullString
  loc_B87E9F: NeStr
  loc_B87EA1: BranchF loc_B87EA5
  loc_B87EA4: ExitProcHresult
  loc_B87EA5: LitI2_Byte 0
  loc_B87EA7: PopTmpLdAd2 var_C6
  loc_B87EAA: Call CucuPersMsk_UnknownEvent_8()
  loc_B87EAF: ILdRf var_8C
  loc_B87EB2: LitStr vbNullString
  loc_B87EB5: NeStr
  loc_B87EB7: BranchF loc_B87EBB
  loc_B87EBA: ExitProcHresult
  loc_B87EBB: FLdPr Me
  loc_B87EBE: MemLdUI1 global_60
  loc_B87EC2: FStUI1 var_162
  loc_B87EC6: FLdUI1
  loc_B87ECA: LitI2_Byte 1
  loc_B87ECC: EqI2
  loc_B87ECD: BranchF loc_B87ED3
  loc_B87ED0: Branch loc_B881DA
  loc_B87ED3: FLdUI1
  loc_B87ED7: LitI2_Byte 2
  loc_B87ED9: EqI2
  loc_B87EDA: BranchF loc_B88132
  loc_B87EDD: LitStr "Municipalidad de Guaymallén"
  loc_B87EE0: LitStr "Municipalidad de General Alvear"
  loc_B87EE3: EqStr
  loc_B87EE5: BranchF loc_B88019
  loc_B87EE8: FLdRfVar var_114
  loc_B87EEB: FLdRfVar var_B4
  loc_B87EEE: LitVarStr var_B0, "CodiOrco"
  loc_B87EF3: PopAdLdVar
  loc_B87EF4: FLdRfVar var_A0
  loc_B87EF7: FLdRfVar var_9C
  loc_B87EFA: FLdPr Me
  loc_B87EFD: MemLdRfVar from_stack_1.global_52
  loc_B87F00: NewIfNullPr clsordencompra
  loc_B87F03: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B87F08: FLdPr var_9C
  loc_B87F0B:  = Me.Fields
  loc_B87F10: FLdPr var_A0
  loc_B87F13: from_stack_2 = Me.Item(from_stack_1)
  loc_B87F18: FLdPr var_B4
  loc_B87F1B:  = Me.Value
  loc_B87F20: FLdPr Me
  loc_B87F23: VCallAd Control_ID_FenoOrcoMsk
  loc_B87F26: FStAdFunc var_CC
  loc_B87F29: FLdPr var_CC
  loc_B87F2C: LateIdLdVar var_C4 DispID_15 0
  loc_B87F33: PopAd
  loc_B87F35: FLdRfVar var_90
  loc_B87F38: FLdPr Me
  loc_B87F3B: VCallAd Control_ID_DetaOrcoTxt
  loc_B87F3E: FStAdFunc var_D0
  loc_B87F41: FLdPr var_D0
  loc_B87F44:  = Me.Text
  loc_B87F49: FLdPr Me
  loc_B87F4C: VCallAd Control_ID_CucuPersMsk
  loc_B87F4F: FStAdFunc var_E4
  loc_B87F52: FLdPr var_E4
  loc_B87F55: LateIdLdVar var_F4 DispID_22 0
  loc_B87F5C: PopAd
  loc_B87F5E: FLdRfVar var_168
  loc_B87F61: FLdPr Me
  loc_B87F64: VCallAd Control_ID_AlivaOrcoTxt
  loc_B87F67: FStAdFunc var_13C
  loc_B87F6A: FLdPr var_13C
  loc_B87F6D:  = Me.Text
  loc_B87F72: FLdRfVar var_16C
  loc_B87F75: FLdPr Me
  loc_B87F78: VCallAd Control_ID_SelloOrcoTxt
  loc_B87F7B: FStAdFunc var_140
  loc_B87F7E: FLdPr var_140
  loc_B87F81:  = Me.Text
  loc_B87F86: FLdPr Me
  loc_B87F89: VCallAd Control_ID_ItemCompraFlex
  loc_B87F8C: FStAdFunc var_17C
  loc_B87F8F: FLdRfVar var_170
  loc_B87F92: FLdPr Me
  loc_B87F95: VCallAd Control_ID_ExpeImpuGDEtxt
  loc_B87F98: FStAdFunc var_144
  loc_B87F9B: FLdPr var_144
  loc_B87F9E:  = Me.Text
  loc_B87FA3: FLdRfVar var_C6
  loc_B87FA6: ILdRf var_170
  loc_B87FA9: FLdPr Me
  loc_B87FAC: MemLdStr global_72
  loc_B87FAF: FLdZeroAd var_17C
  loc_B87FB2: FStAdFunc var_15C
  loc_B87FB5: FLdRfVar var_15C
  loc_B87FB8: ILdRf var_16C
  loc_B87FBB: ILdRf var_168
  loc_B87FBE: FLdRfVar var_F4
  loc_B87FC1: CStrVarTmp
  loc_B87FC2: FStStrNoPop var_178
  loc_B87FC5: ILdRf var_90
  loc_B87FC8: FLdRfVar var_C4
  loc_B87FCB: CStrVarTmp
  loc_B87FCC: FStStrNoPop var_174
  loc_B87FCF: FLdRfVar var_114
  loc_B87FD2: CI4Var
  loc_B87FD4: ImpAdLdI2 MemVar_C3D064
  loc_B87FD7: FLdPr Me
  loc_B87FDA: MemLdRfVar from_stack_1.global_52
  loc_B87FDD: NewIfNullPr clsordencompra
  loc_B87FE0: from_stack_11v = clsordencompra.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_B87FE5: FFreeStr var_174 = "": var_90 = "": var_178 = "": var_168 = "": var_16C = ""
  loc_B87FF4: FFreeAd var_9C = "": var_A0 = "": var_CC = "": var_D0 = "": var_E4 = "": var_13C = "": var_140 = "": var_144 = "": var_B4 = "": var_15C = ""
  loc_B8800D: FFreeVar var_C4 = "": var_F4 = ""
  loc_B88016: Branch loc_B8812F
  loc_B88019: FLdRfVar var_114
  loc_B8801C: FLdRfVar var_B4
  loc_B8801F: LitVarStr var_B0, "CodiOrco"
  loc_B88024: PopAdLdVar
  loc_B88025: FLdRfVar var_A0
  loc_B88028: FLdRfVar var_9C
  loc_B8802B: FLdPr Me
  loc_B8802E: MemLdRfVar from_stack_1.global_52
  loc_B88031: NewIfNullPr clsordencompra
  loc_B88034: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B88039: FLdPr var_9C
  loc_B8803C:  = Me.Fields
  loc_B88041: FLdPr var_A0
  loc_B88044: from_stack_2 = Me.Item(from_stack_1)
  loc_B88049: FLdPr var_B4
  loc_B8804C:  = Me.Value
  loc_B88051: FLdPr Me
  loc_B88054: VCallAd Control_ID_FenoOrcoMsk
  loc_B88057: FStAdFunc var_CC
  loc_B8805A: FLdPr var_CC
  loc_B8805D: LateIdLdVar var_C4 DispID_15 0
  loc_B88064: PopAd
  loc_B88066: FLdRfVar var_90
  loc_B88069: FLdPr Me
  loc_B8806C: VCallAd Control_ID_DetaOrcoTxt
  loc_B8806F: FStAdFunc var_D0
  loc_B88072: FLdPr var_D0
  loc_B88075:  = Me.Text
  loc_B8807A: FLdPr Me
  loc_B8807D: VCallAd Control_ID_CucuPersMsk
  loc_B88080: FStAdFunc var_E4
  loc_B88083: FLdPr var_E4
  loc_B88086: LateIdLdVar var_F4 DispID_22 0
  loc_B8808D: PopAd
  loc_B8808F: FLdRfVar var_168
  loc_B88092: FLdPr Me
  loc_B88095: VCallAd Control_ID_AlivaOrcoTxt
  loc_B88098: FStAdFunc var_13C
  loc_B8809B: FLdPr var_13C
  loc_B8809E:  = Me.Text
  loc_B880A3: FLdRfVar var_16C
  loc_B880A6: FLdPr Me
  loc_B880A9: VCallAd Control_ID_SelloOrcoTxt
  loc_B880AC: FStAdFunc var_140
  loc_B880AF: FLdPr var_140
  loc_B880B2:  = Me.Text
  loc_B880B7: FLdPr Me
  loc_B880BA: VCallAd Control_ID_ItemCompraFlex
  loc_B880BD: FStAdFunc var_15C
  loc_B880C0: FLdRfVar var_C6
  loc_B880C3: LitStr vbNullString
  loc_B880C6: FLdPr Me
  loc_B880C9: MemLdStr global_72
  loc_B880CC: FLdZeroAd var_15C
  loc_B880CF: FStAdFunc var_144
  loc_B880D2: FLdRfVar var_144
  loc_B880D5: ILdRf var_16C
  loc_B880D8: ILdRf var_168
  loc_B880DB: FLdRfVar var_F4
  loc_B880DE: CStrVarTmp
  loc_B880DF: FStStrNoPop var_174
  loc_B880E2: ILdRf var_90
  loc_B880E5: FLdRfVar var_C4
  loc_B880E8: CStrVarTmp
  loc_B880E9: FStStrNoPop var_170
  loc_B880EC: FLdRfVar var_114
  loc_B880EF: CI4Var
  loc_B880F1: ImpAdLdI2 MemVar_C3D064
  loc_B880F4: FLdPr Me
  loc_B880F7: MemLdRfVar from_stack_1.global_52
  loc_B880FA: NewIfNullPr clsordencompra
  loc_B880FD: from_stack_11v = clsordencompra.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_B88102: FFreeStr var_170 = "": var_90 = "": var_174 = "": var_168 = ""
  loc_B8810F: FFreeAd var_9C = "": var_A0 = "": var_CC = "": var_D0 = "": var_E4 = "": var_13C = "": var_140 = "": var_B4 = "": var_144 = ""
  loc_B88126: FFreeVar var_C4 = "": var_F4 = ""
  loc_B8812F: Branch loc_B881DA
  loc_B88132: FLdUI1
  loc_B88136: LitI2_Byte 3
  loc_B88138: EqI2
  loc_B88139: BranchF loc_B881DA
  loc_B8813C: FLdRfVar var_F4
  loc_B8813F: FLdRfVar var_B4
  loc_B88142: LitVarStr var_B0, "CodiOrco"
  loc_B88147: PopAdLdVar
  loc_B88148: FLdRfVar var_A0
  loc_B8814B: FLdRfVar var_9C
  loc_B8814E: FLdPr Me
  loc_B88151: MemLdRfVar from_stack_1.global_52
  loc_B88154: NewIfNullPr clsordencompra
  loc_B88157: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B8815C: FLdPr var_9C
  loc_B8815F:  = Me.Fields
  loc_B88164: FLdPr var_A0
  loc_B88167: from_stack_2 = Me.Item(from_stack_1)
  loc_B8816C: FLdPr var_B4
  loc_B8816F:  = Me.Value
  loc_B88174: FLdPr Me
  loc_B88177: VCallAd Control_ID_FeanOrcoMsk
  loc_B8817A: FStAdFunc var_CC
  loc_B8817D: FLdPr var_CC
  loc_B88180: LateIdLdVar var_C4 DispID_15 0
  loc_B88187: PopAd
  loc_B88189: FLdRfVar var_90
  loc_B8818C: FLdPr Me
  loc_B8818F: VCallAd Control_ID_BajaMotiTxt
  loc_B88192: FStAdFunc var_D0
  loc_B88195: FLdPr var_D0
  loc_B88198:  = Me.Text
  loc_B8819D: FLdRfVar var_C6
  loc_B881A0: ILdRf var_90
  loc_B881A3: FLdRfVar var_C4
  loc_B881A6: CStrVarTmp
  loc_B881A7: FStStrNoPop var_168
  loc_B881AA: FLdRfVar var_F4
  loc_B881AD: CI2Var
  loc_B881AE: ImpAdLdI2 MemVar_C3D064
  loc_B881B1: FLdPr Me
  loc_B881B4: MemLdRfVar from_stack_1.global_52
  loc_B881B7: NewIfNullPr clsordencompra
  loc_B881BA: from_stack_5v = clsordencompra.Anular(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B881BF: FFreeStr var_168 = ""
  loc_B881C6: FFreeAd var_9C = "": var_A0 = "": var_CC = "": var_D0 = ""
  loc_B881D3: FFreeVar var_C4 = ""
  loc_B881DA: Call cmdCancelar_Click()
  loc_B881DF: Branch loc_B882FE
  loc_B881E2: ILdRf var_94
  loc_B881E5: LitStr "btnCancelar"
  loc_B881E8: EqStr
  loc_B881EA: BranchF loc_B881F5
  loc_B881ED: Call cmdCancelar_Click()
  loc_B881F2: Branch loc_B882FE
  loc_B881F5: ILdRf var_94
  loc_B881F8: LitStr "btnPrimero"
  loc_B881FB: EqStr
  loc_B881FD: BranchF loc_B88211
  loc_B88200: FLdPr Me
  loc_B88203: MemLdRfVar from_stack_1.global_52
  loc_B88206: NewIfNullPr clsordencompra
  loc_B88209: Call clsordencompra.MoveFirst()
  loc_B8820E: Branch loc_B882FE
  loc_B88211: ILdRf var_94
  loc_B88214: LitStr "btnAnterior"
  loc_B88217: EqStr
  loc_B88219: BranchF loc_B8822D
  loc_B8821C: FLdPr Me
  loc_B8821F: MemLdRfVar from_stack_1.global_52
  loc_B88222: NewIfNullPr clsordencompra
  loc_B88225: Call clsordencompra.MovePrevious()
  loc_B8822A: Branch loc_B882FE
  loc_B8822D: ILdRf var_94
  loc_B88230: LitStr "btnSiguiente"
  loc_B88233: EqStr
  loc_B88235: BranchF loc_B88249
  loc_B88238: FLdPr Me
  loc_B8823B: MemLdRfVar from_stack_1.global_52
  loc_B8823E: NewIfNullPr clsordencompra
  loc_B88241: Call clsordencompra.MoveNext()
  loc_B88246: Branch loc_B882FE
  loc_B88249: ILdRf var_94
  loc_B8824C: LitStr "btnUltimo"
  loc_B8824F: EqStr
  loc_B88251: BranchF loc_B88265
  loc_B88254: FLdPr Me
  loc_B88257: MemLdRfVar from_stack_1.global_52
  loc_B8825A: NewIfNullPr clsordencompra
  loc_B8825D: Call clsordencompra.MoveLast()
  loc_B88262: Branch loc_B882FE
  loc_B88265: ILdRf var_94
  loc_B88268: LitStr "btnFiltrar"
  loc_B8826B: EqStr
  loc_B8826D: BranchF loc_B88273
  loc_B88270: Branch loc_B882FE
  loc_B88273: ILdRf var_94
  loc_B88276: LitStr "btnBuscar"
  loc_B88279: EqStr
  loc_B8827B: BranchF loc_B88281
  loc_B8827E: Branch loc_B882FE
  loc_B88281: ILdRf var_94
  loc_B88284: LitStr "btnImprimir"
  loc_B88287: EqStr
  loc_B88289: BranchF loc_B882A7
  loc_B8828C: LitVar_Missing var_E0
  loc_B8828F: PopAdLdVar
  loc_B88290: LitVarI4
  loc_B88298: PopAdLdVar
  loc_B88299: ImpAdLdRf MemVar_C3DCB4
  loc_B8829C: NewIfNullPr rptOrdendeCompra
  loc_B8829F: rptOrdendeCompra.Show from_stack_1, from_stack_2
  loc_B882A4: Branch loc_B882FE
  loc_B882A7: ILdRf var_94
  loc_B882AA: LitStr "btnAyuda"
  loc_B882AD: EqStr
  loc_B882AF: BranchF loc_B882DE
  loc_B882B2: LitVar_Missing var_134
  loc_B882B5: LitVar_Missing var_114
  loc_B882B8: LitVar_Missing var_F4
  loc_B882BB: LitI4 0
  loc_B882C0: LitVarStr var_B0, "Opcion no disponible en esta version."
  loc_B882C5: FStVarCopyObj var_C4
  loc_B882C8: FLdRfVar var_C4
  loc_B882CB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B882D0: FFreeVar var_C4 = "": var_F4 = "": var_114 = ""
  loc_B882DB: Branch loc_B882FE
  loc_B882DE: ILdRf var_94
  loc_B882E1: LitStr "btnSalir"
  loc_B882E4: EqStr
  loc_B882E6: BranchF loc_B882FE
  loc_B882E9: ILdRf Me
  loc_B882EC: FStAdNoPop
  loc_B882F0: ImpAdLdRf MemVar_C44F9C
  loc_B882F3: NewIfNullPr Me
  loc_B882F6: Me.Global.Unload from_stack_1
  loc_B882FB: FFree1Ad var_9C
  loc_B882FE: ExitProcHresult
End Sub

Private Function Proc_128_40_A3BCA4() 'A3BCA4
  'Data Table: 4DABCC
  loc_A3BA60: FLdPr Me
  loc_A3BA63: VCallAd Control_ID_ItemCompraFlex
  loc_A3BA66: FStAdFunc var_88
  loc_A3BA69: FLdPr var_88
  loc_A3BA6C: LateIdCall
  loc_A3BA74: LitVarI4
  loc_A3BA7C: PopAdLdVar
  loc_A3BA7D: FLdPr var_88
  loc_A3BA80: LateIdSt
  loc_A3BA85: LitVarI4
  loc_A3BA8D: PopAdLdVar
  loc_A3BA8E: LitVarI4
  loc_A3BA96: PopAdLdVar
  loc_A3BA97: LitVarStr var_D8, "Item"
  loc_A3BA9C: PopAdLdVar
  loc_A3BA9D: FLdPr var_88
  loc_A3BAA0: LateIdCallSt
  loc_A3BAA8: LitVarI4
  loc_A3BAB0: PopAdLdVar
  loc_A3BAB1: LitVarI4
  loc_A3BAB9: PopAdLdVar
  loc_A3BABA: LitVarStr var_D8, "Alt."
  loc_A3BABF: PopAdLdVar
  loc_A3BAC0: FLdPr var_88
  loc_A3BAC3: LateIdCallSt
  loc_A3BACB: LitVarI4
  loc_A3BAD3: PopAdLdVar
  loc_A3BAD4: LitVarI4
  loc_A3BADC: PopAdLdVar
  loc_A3BADD: LitVarStr var_D8, "Codigo"
  loc_A3BAE2: PopAdLdVar
  loc_A3BAE3: FLdPr var_88
  loc_A3BAE6: LateIdCallSt
  loc_A3BAEE: LitVarI4
  loc_A3BAF6: PopAdLdVar
  loc_A3BAF7: LitVarI4
  loc_A3BAFF: PopAdLdVar
  loc_A3BB00: LitVarStr var_D8, "Detalle del Insumo"
  loc_A3BB05: PopAdLdVar
  loc_A3BB06: FLdPr var_88
  loc_A3BB09: LateIdCallSt
  loc_A3BB11: LitVarI4
  loc_A3BB19: PopAdLdVar
  loc_A3BB1A: LitVarI4
  loc_A3BB22: PopAdLdVar
  loc_A3BB23: LitVarStr var_D8, "Detalle AMPLIADO del Insumo"
  loc_A3BB28: PopAdLdVar
  loc_A3BB29: FLdPr var_88
  loc_A3BB2C: LateIdCallSt
  loc_A3BB34: LitVarI4
  loc_A3BB3C: PopAdLdVar
  loc_A3BB3D: LitVarI4
  loc_A3BB45: PopAdLdVar
  loc_A3BB46: LitVarStr var_D8, "Cantidad"
  loc_A3BB4B: PopAdLdVar
  loc_A3BB4C: FLdPr var_88
  loc_A3BB4F: LateIdCallSt
  loc_A3BB57: LitVarI4
  loc_A3BB5F: PopAdLdVar
  loc_A3BB60: LitVarI4
  loc_A3BB68: PopAdLdVar
  loc_A3BB69: LitVarStr var_D8, "Pr. Unitario"
  loc_A3BB6E: PopAdLdVar
  loc_A3BB6F: FLdPr var_88
  loc_A3BB72: LateIdCallSt
  loc_A3BB7A: LitVarI4
  loc_A3BB82: PopAdLdVar
  loc_A3BB83: LitVarI4
  loc_A3BB8B: PopAdLdVar
  loc_A3BB8C: LitVarStr var_D8, "Total"
  loc_A3BB91: PopAdLdVar
  loc_A3BB92: FLdPr var_88
  loc_A3BB95: LateIdCallSt
  loc_A3BB9D: LitVarI4
  loc_A3BBA5: PopAdLdVar
  loc_A3BBA6: LitVarI4
  loc_A3BBAE: PopAdLdVar
  loc_A3BBAF: LitVarStr var_D8, "Partida"
  loc_A3BBB4: PopAdLdVar
  loc_A3BBB5: FLdPr var_88
  loc_A3BBB8: LateIdCallSt
  loc_A3BBC0: LitVarI4
  loc_A3BBC8: PopAdLdVar
  loc_A3BBC9: LitVarI4
  loc_A3BBD1: PopAdLdVar
  loc_A3BBD2: LitVarStr var_D8, "Organigrama"
  loc_A3BBD7: PopAdLdVar
  loc_A3BBD8: FLdPr var_88
  loc_A3BBDB: LateIdCallSt
  loc_A3BBE3: LitVarI4
  loc_A3BBEB: PopAdLdVar
  loc_A3BBEC: LitVarI4
  loc_A3BBF4: PopAdLdVar
  loc_A3BBF5: LitVarStr var_D8, "Fin. y Fun."
  loc_A3BBFA: PopAdLdVar
  loc_A3BBFB: FLdPr var_88
  loc_A3BBFE: LateIdCallSt
  loc_A3BC06: LitVarI4
  loc_A3BC0E: PopAdLdVar
  loc_A3BC0F: LitVarI4
  loc_A3BC17: PopAdLdVar
  loc_A3BC18: LitVarStr var_D8, "Cara"
  loc_A3BC1D: PopAdLdVar
  loc_A3BC1E: FLdPr var_88
  loc_A3BC21: LateIdCallSt
  loc_A3BC29: LitVarI4
  loc_A3BC31: PopAdLdVar
  loc_A3BC32: LitVarI4
  loc_A3BC3A: PopAdLdVar
  loc_A3BC3B: LitVarStr var_D8, "Un.Gasto"
  loc_A3BC40: PopAdLdVar
  loc_A3BC41: FLdPr var_88
  loc_A3BC44: LateIdCallSt
  loc_A3BC4C: LitVarI4
  loc_A3BC54: PopAdLdVar
  loc_A3BC55: LitVarI4
  loc_A3BC5D: PopAdLdVar
  loc_A3BC5E: LitVarStr var_D8, "Imp.Def."
  loc_A3BC63: PopAdLdVar
  loc_A3BC64: FLdPr var_88
  loc_A3BC67: LateIdCallSt
  loc_A3BC6F: LitVarI4
  loc_A3BC77: PopAdLdVar
  loc_A3BC78: LitVarI4
  loc_A3BC80: PopAdLdVar
  loc_A3BC81: LitVarStr var_D8, "cantidad de control"
  loc_A3BC86: PopAdLdVar
  loc_A3BC87: FLdPr var_88
  loc_A3BC8A: LateIdCallSt
  loc_A3BC92: FLdPr var_88
  loc_A3BC95: LateIdCall
  loc_A3BC9D: LitNothing
  loc_A3BC9F: FStAd var_88 
  loc_A3BCA3: ExitProcHresult
End Function
