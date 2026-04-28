VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmModificacionyBajadeRecepcion
  Caption = "Modificación y Baja de Recepción de Facturas"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmModificacionyBajadeRecepcion.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15270
  ClientHeight = 10365
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
      OleObjectBlob = "frmModificacionyBajadeRecepcion.frx":08CA
    End
  End
  Begin VB.TextBox TotaReceTxt
    Left = 10080
    Top = 9720
    Width = 1815
    Height = 480
    TabIndex = 26
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13,5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Frame Frame1
    Caption = " Modificación y Baja de Recepción de Facturas "
    Left = 120
    Top = 3960
    Width = 15015
    Height = 2655
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
    Begin VB.TextBox ExpeImpuGDETxt
      Left = 8400
      Top = 1080
      Width = 5775
      Height = 375
      TabIndex = 19
      DataField = "ExpeImpuGDE"
    End
    Begin VB.TextBox ExpeImpuTxt
      ForeColor = &HFF0000&
      Left = 9480
      Top = 480
      Width = 4335
      Height = 360
      TabIndex = 12
      MaxLength = 50
      DataField = "ExpeImpu"
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
    Begin VB.ComboBox TifaReceCbo
      Left = 4920
      Top = 1080
      Width = 975
      Height = 360
      TabIndex = 16
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataField = "TifaRece"
    End
    Begin VB.TextBox MoanReceTxt
      ForeColor = &HFF0000&
      Left = 6840
      Top = 1920
      Width = 6735
      Height = 360
      TabIndex = 23
      MaxLength = 50
      DataField = "BajaMoti"
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
    Begin MSMask.MaskEdBox FechReceMsk
      Left = 960
      Top = 480
      Width = 1335
      Height = 345
      TabIndex = 8
      OleObjectBlob = "frmModificacionyBajadeRecepcion.frx":0952
      DataField = "FechRece"
    End
    Begin MSMask.MaskEdBox NufaReceMsk
      Left = 6840
      Top = 1080
      Width = 1215
      Height = 345
      TabIndex = 18
      Verb = 14416
    End
    Begin MSMask.MaskEdBox SufaReceMsk
      Left = 6000
      Top = 1080
      Width = 735
      Height = 345
      TabIndex = 17
      Verb = 14416
    End
    Begin MSMask.MaskEdBox FefaReceMsk
      Left = 2160
      Top = 1080
      Width = 1335
      Height = 345
      TabIndex = 14
      OleObjectBlob = "frmModificacionyBajadeRecepcion.frx":0A02
      DataField = "FefaRece"
    End
    Begin MSMask.MaskEdBox FeanReceMsk
      Left = 2520
      Top = 1920
      Width = 1335
      Height = 360
      TabIndex = 21
      OleObjectBlob = "frmModificacionyBajadeRecepcion.frx":0AB2
      DataField = "FeanRece"
    End
    Begin MSMask.MaskEdBox FepaReceMsk
      Left = 4920
      Top = 480
      Width = 1335
      Height = 345
      TabIndex = 10
      OleObjectBlob = "frmModificacionyBajadeRecepcion.frx":0B62
      DataField = "FepaRece"
    End
    Begin VB.Label Label3
      Caption = "Expediente de Pago:"
      Left = 7200
      Top = 480
      Width = 2205
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
    Begin VB.Label Label2
      Caption = "Fecha de pago:"
      Left = 3180
      Top = 480
      Width = 1665
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
    Begin VB.Label Label4
      Caption = "Fecha de Anulación:"
      Left = 240
      Top = 1920
      Width = 2175
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
    Begin VB.Label Label5
      Caption = "Motivo de Anulación:"
      Left = 4560
      Top = 1920
      Width = 2190
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
    Begin VB.Label Label1
      Caption = "Fecha de Factura:"
      Left = 135
      Top = 1080
      Width = 1950
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
    Begin VB.Label Label15
      Caption = "Factura:"
      Left = 3960
      Top = 1080
      Width = 885
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
    Begin VB.Label Label6
      Caption = "Fecha:"
      Left = 120
      Top = 480
      Width = 735
      Height = 300
      TabIndex = 7
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 15015
    Height = 2175
    TabIndex = 5
    OleObjectBlob = "frmModificacionyBajadeRecepcion.frx":0C12
  End
  Begin MSFlexGridLib.MSFlexGrid ItemCompraFlex
    Left = 120
    Top = 6720
    Width = 15135
    Height = 2895
    TabIndex = 24
    OleObjectBlob = "frmModificacionyBajadeRecepcion.frx":12CC
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmModificacionyBajadeRecepcion.frx":13B8
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15270
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmModificacionyBajadeRecepcion.frx":8F36
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmModificacionyBajadeRecepcion.frx":9492
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label Label12
    Caption = "Total de la Recepción:"
    Left = 7560
    Top = 9840
    Width = 2355
    Height = 300
    TabIndex = 25
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

Attribute VB_Name = "frmModificacionyBajadeRecepcion"


Private Sub dgdABMS_UnknownEvent_0 '93FA80
  'Data Table: 4BE560
  loc_93FA7C: ExitProcHresult
  loc_93FA7D: VCallAd Control_ID_Label12
End Sub

Private Sub dgdABMS_UnknownEvent_1 '93FAE8
  'Data Table: 4BE560
  loc_93FAE4: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99C0EC
  'Data Table: 4BE560
  loc_99C090: FLdRfVar var_B4
  loc_99C093: FLdRfVar var_B0
  loc_99C096: FLdI2 ColIndex
  loc_99C099: CVarI2 var_A8
  loc_99C09C: PopAdLdVar
  loc_99C09D: FLdPr Me
  loc_99C0A0: VCallAd Control_ID_dgdABMS
  loc_99C0A3: FStAdFunc var_88
  loc_99C0A6: FLdPr var_88
  loc_99C0A9: LateIdLdVar var_98 DispID_105 0
  loc_99C0B0: CastAdVar Me
  loc_99C0B4: FStAdFunc var_AC
  loc_99C0B7: FLdPr var_AC
  loc_99C0BA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99C0BF: FLdPr var_B0
  loc_99C0C2:  = Me.DataField
  loc_99C0C7: FLdZeroAd var_B4
  loc_99C0CA: PopTmpLdAdStr
  loc_99C0CE: FLdPr Me
  loc_99C0D1: MemLdRfVar from_stack_1.global_52
  loc_99C0D4: NewIfNullPr clsrecepcion
  loc_99C0D7: Call clsrecepcion.Sort(from_stack_1v)
  loc_99C0DC: FFree1Str var_B8
  loc_99C0DF: FFreeAd var_88 = "": var_AC = ""
  loc_99C0E8: FFree1Var var_98 = ""
  loc_99C0EB: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'B43958
  'Data Table: 4BE560
  loc_B43048: FLdPr Me
  loc_B4304B: MemLdUI1 global_76
  loc_B4304F: CI2UI1
  loc_B43051: LitI2_Byte 0
  loc_B43053: EqI2
  loc_B43054: FLdRfVar var_88
  loc_B43057: FLdPr Me
  loc_B4305A: MemLdRfVar from_stack_1.global_52
  loc_B4305D: NewIfNullPr clsrecepcion
  loc_B43060: from_stack_1 = clsrecepcion.RecordCount
  loc_B43065: ILdRf var_88
  loc_B43068: LitI4 0
  loc_B4306D: GtI4
  loc_B4306E: AndI4
  loc_B4306F: BranchF loc_B438E3
  loc_B43072: FLdRfVar var_8A
  loc_B43075: FLdPr Me
  loc_B43078: MemLdRfVar from_stack_1.global_52
  loc_B4307B: NewIfNullPr clsrecepcion
  loc_B4307E: from_stack_1 = clsrecepcion.BOF
  loc_B43083: FLdI2 var_8A
  loc_B43086: BranchF loc_B43097
  loc_B43089: FLdPr Me
  loc_B4308C: MemLdRfVar from_stack_1.global_52
  loc_B4308F: NewIfNullPr clsrecepcion
  loc_B43092: Call clsrecepcion.MoveFirst()
  loc_B43097: FLdRfVar var_8A
  loc_B4309A: FLdPr Me
  loc_B4309D: MemLdRfVar from_stack_1.global_52
  loc_B430A0: NewIfNullPr clsrecepcion
  loc_B430A3: from_stack_1 = clsrecepcion.EOF
  loc_B430A8: FLdI2 var_8A
  loc_B430AB: BranchF loc_B430BC
  loc_B430AE: FLdPr Me
  loc_B430B1: MemLdRfVar from_stack_1.global_52
  loc_B430B4: NewIfNullPr clsrecepcion
  loc_B430B7: Call clsrecepcion.MoveLast()
  loc_B430BC: Call Proc_125_43_A2E850()
  loc_B430C1: LitStr "SELECT itr.*, DetaInsu, itc.ImunItco, itc.DetaItco"
  loc_B430C4: LitStr " FROM itemrecepcion itr"
  loc_B430C7: ConcatStr
  loc_B430C8: FStStrNoPop var_90
  loc_B430CB: LitStr " INNER JOIN infogov.insumo i ON i.CodiInsu = itr.CodiInsu "
  loc_B430CE: ConcatStr
  loc_B430CF: FStStrNoPop var_94
  loc_B430D2: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = itr.PeriInfo AND itc.CodiOrco = itr.CodiOrco AND itc.CodiItco = itr.CodiItco AND itc.AlteItco = itr.AlteItco "
  loc_B430D5: ConcatStr
  loc_B430D6: FStStrNoPop var_98
  loc_B430D9: LitStr " WHERE itr.PeriInfo = "
  loc_B430DC: ConcatStr
  loc_B430DD: CVarStr var_D4
  loc_B430E0: FLdRfVar var_C4
  loc_B430E3: FLdRfVar var_B4
  loc_B430E6: LitVarStr var_B0, "PeriInfo"
  loc_B430EB: PopAdLdVar
  loc_B430EC: FLdRfVar var_A0
  loc_B430EF: FLdRfVar var_9C
  loc_B430F2: FLdPr Me
  loc_B430F5: MemLdRfVar from_stack_1.global_52
  loc_B430F8: NewIfNullPr clsrecepcion
  loc_B430FB: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B43100: FLdPr var_9C
  loc_B43103:  = Me.Fields
  loc_B43108: FLdPr var_A0
  loc_B4310B: from_stack_2 = Me.Item(from_stack_1)
  loc_B43110: FLdPr var_B4
  loc_B43113:  = Me.Value
  loc_B43118: FLdRfVar var_C4
  loc_B4311B: ConcatVar var_E4
  loc_B4311F: LitVarStr var_F4, " AND itr.CodiOrco = "
  loc_B43124: ConcatVar var_104
  loc_B43128: FLdRfVar var_130
  loc_B4312B: FLdRfVar var_120
  loc_B4312E: LitVarStr var_11C, "CodiOrco"
  loc_B43133: PopAdLdVar
  loc_B43134: FLdRfVar var_10C
  loc_B43137: FLdRfVar var_108
  loc_B4313A: FLdPr Me
  loc_B4313D: MemLdRfVar from_stack_1.global_52
  loc_B43140: NewIfNullPr clsrecepcion
  loc_B43143: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B43148: FLdPr var_108
  loc_B4314B:  = Me.Fields
  loc_B43150: FLdPr var_10C
  loc_B43153: from_stack_2 = Me.Item(from_stack_1)
  loc_B43158: FLdPr var_120
  loc_B4315B:  = Me.Value
  loc_B43160: FLdRfVar var_130
  loc_B43163: ConcatVar var_140
  loc_B43167: LitVarStr var_150, " AND itr.CodiRece = "
  loc_B4316C: ConcatVar var_160
  loc_B43170: FLdRfVar var_18C
  loc_B43173: FLdRfVar var_17C
  loc_B43176: LitVarStr var_178, "CodiRece"
  loc_B4317B: PopAdLdVar
  loc_B4317C: FLdRfVar var_168
  loc_B4317F: FLdRfVar var_164
  loc_B43182: FLdPr Me
  loc_B43185: MemLdRfVar from_stack_1.global_52
  loc_B43188: NewIfNullPr clsrecepcion
  loc_B4318B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B43190: FLdPr var_164
  loc_B43193:  = Me.Fields
  loc_B43198: FLdPr var_168
  loc_B4319B: from_stack_2 = Me.Item(from_stack_1)
  loc_B431A0: FLdPr var_17C
  loc_B431A3:  = Me.Value
  loc_B431A8: FLdRfVar var_18C
  loc_B431AB: ConcatVar var_19C
  loc_B431AF: LitVarStr var_1AC, " ORDER BY itr.PeriInfo, itr.CodiOrco, itr.CodiRece, itr.CodiItco, itr.AlteItco;"
  loc_B431B4: ConcatVar var_1BC
  loc_B431B8: CStrVarVal var_1C0
  loc_B431BC: FLdPr Me
  loc_B431BF: MemLdRfVar from_stack_1.global_56
  loc_B431C2: NewIfNullPr clsrecepcion
  loc_B431C5: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_B431CA: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_B431D5: FFreeAd var_9C = "": var_A0 = "": var_B4 = "": var_108 = "": var_10C = "": var_120 = "": var_164 = "": var_168 = ""
  loc_B431EA: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_130 = "": var_140 = "": var_160 = "": var_18C = "": var_19C = ""
  loc_B43201: FLdRfVar var_88
  loc_B43204: FLdPr Me
  loc_B43207: MemLdRfVar from_stack_1.global_56
  loc_B4320A: NewIfNullPr clsrecepcion
  loc_B4320D: from_stack_1 = clsrecepcion.RecordCount
  loc_B43212: ILdRf var_88
  loc_B43215: LitI4 0
  loc_B4321A: GtI4
  loc_B4321B: BranchF loc_B438E0
  loc_B4321E: FLdPr Me
  loc_B43221: MemLdRfVar from_stack_1.global_56
  loc_B43224: NewIfNullPr clsrecepcion
  loc_B43227: Call clsrecepcion.MoveFirst()
  loc_B4322C: LitI2_Byte 0
  loc_B4322E: CR8I2
  loc_B4322F: FLdPr Me
  loc_B43232: MemStFPR8 global_96
  loc_B43235: FLdRfVar var_8A
  loc_B43238: FLdPr Me
  loc_B4323B: MemLdRfVar from_stack_1.global_56
  loc_B4323E: NewIfNullPr clsrecepcion
  loc_B43241: from_stack_1 = clsrecepcion.EOF
  loc_B43246: FLdI2 var_8A
  loc_B43249: NotI4
  loc_B4324A: BranchF loc_B438E0
  loc_B4324D: FLdRfVar var_C4
  loc_B43250: FLdRfVar var_B4
  loc_B43253: LitVarStr var_B0, "CantItre"
  loc_B43258: PopAdLdVar
  loc_B43259: FLdRfVar var_A0
  loc_B4325C: FLdRfVar var_9C
  loc_B4325F: FLdPr Me
  loc_B43262: MemLdRfVar from_stack_1.global_56
  loc_B43265: NewIfNullPr clsrecepcion
  loc_B43268: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4326D: FLdPr var_9C
  loc_B43270:  = Me.Fields
  loc_B43275: FLdPr var_A0
  loc_B43278: from_stack_2 = Me.Item(from_stack_1)
  loc_B4327D: FLdPr var_B4
  loc_B43280:  = Me.Value
  loc_B43285: LitI4 3
  loc_B4328A: FLdRfVar var_C4
  loc_B4328D: FnCDblVar
  loc_B4328F: CVarR8
  loc_B43293: FLdRfVar var_E4
  loc_B43296: ImpAdCallFPR4  = Round(, )
  loc_B4329B: FLdRfVar var_104
  loc_B4329E: FLdRfVar var_120
  loc_B432A1: LitVarStr var_11C, "ImpoItre"
  loc_B432A6: PopAdLdVar
  loc_B432A7: FLdRfVar var_10C
  loc_B432AA: FLdRfVar var_108
  loc_B432AD: FLdPr Me
  loc_B432B0: MemLdRfVar from_stack_1.global_56
  loc_B432B3: NewIfNullPr clsrecepcion
  loc_B432B6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B432BB: FLdPr var_108
  loc_B432BE:  = Me.Fields
  loc_B432C3: FLdPr var_10C
  loc_B432C6: from_stack_2 = Me.Item(from_stack_1)
  loc_B432CB: FLdPr var_120
  loc_B432CE:  = Me.Value
  loc_B432D3: LitI4 3
  loc_B432D8: FLdRfVar var_104
  loc_B432DB: FnCDblVar
  loc_B432DD: CVarR8
  loc_B432E1: FLdRfVar var_140
  loc_B432E4: ImpAdCallFPR4  = Round(, )
  loc_B432E9: LitI4 1
  loc_B432EE: LitI4 1
  loc_B432F3: LitVarStr var_178, "###,###,##0.000"
  loc_B432F8: FStVarCopyObj var_19C
  loc_B432FB: FLdRfVar var_19C
  loc_B432FE: FLdRfVar var_E4
  loc_B43301: FLdRfVar var_140
  loc_B43304: MulVar var_160
  loc_B43308: FStVar var_18C
  loc_B4330C: FLdRfVar var_18C
  loc_B4330F: FLdRfVar var_1BC
  loc_B43312: ImpAdCallFPR4  = Format(, )
  loc_B43317: FLdRfVar var_1BC
  loc_B4331A: CR4Var
  loc_B4331B: FLdPr Me
  loc_B4331E: MemStFPR8 global_60
  loc_B43321: FFreeAd var_9C = "": var_A0 = "": var_B4 = "": var_108 = "": var_10C = ""
  loc_B43330: FFreeVar var_C4 = "": var_D4 = "": var_104 = "": var_130 = "": var_E4 = "": var_140 = "": var_18C = "": var_19C = ""
  loc_B43345: LitI4 3
  loc_B4334A: FLdPr Me
  loc_B4334D: MemLdFPR8 global_96
  loc_B43350: FLdPr Me
  loc_B43353: MemLdFPR8 global_60
  loc_B43356: AddR8
  loc_B43357: CVarR8
  loc_B4335B: FLdRfVar var_D4
  loc_B4335E: ImpAdCallFPR4  = Round(, )
  loc_B43363: FLdRfVar var_D4
  loc_B43366: CR4Var
  loc_B43367: FLdPr Me
  loc_B4336A: MemStFPR8 global_96
  loc_B4336D: FFreeVar var_C4 = ""
  loc_B43374: FLdRfVar var_274
  loc_B43377: LitVarStr var_1AC, "CantItre"
  loc_B4337C: PopAdLdVar
  loc_B4337D: FLdRfVar var_270
  loc_B43380: FLdRfVar var_26C
  loc_B43383: FLdPr Me
  loc_B43386: MemLdRfVar from_stack_1.global_56
  loc_B43389: NewIfNullPr clsrecepcion
  loc_B4338C: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B43391: FLdPr var_26C
  loc_B43394:  = Me.Fields
  loc_B43399: FLdPr var_270
  loc_B4339C: from_stack_2 = Me.Item(from_stack_1)
  loc_B433A1: FLdRfVar var_300
  loc_B433A4: LitVarStr var_2FC, "ImpoItre"
  loc_B433A9: PopAdLdVar
  loc_B433AA: FLdRfVar var_2EC
  loc_B433AD: FLdRfVar var_2E8
  loc_B433B0: FLdPr Me
  loc_B433B3: MemLdRfVar from_stack_1.global_56
  loc_B433B6: NewIfNullPr clsrecepcion
  loc_B433B9: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B433BE: FLdPr var_2E8
  loc_B433C1:  = Me.Fields
  loc_B433C6: FLdPr var_2EC
  loc_B433C9: from_stack_2 = Me.Item(from_stack_1)
  loc_B433CE: FLdRfVar var_57C
  loc_B433D1: FLdRfVar var_56C
  loc_B433D4: LitVarStr var_568, "IdImpu"
  loc_B433D9: PopAdLdVar
  loc_B433DA: FLdRfVar var_558
  loc_B433DD: FLdRfVar var_554
  loc_B433E0: FLdPr Me
  loc_B433E3: MemLdRfVar from_stack_1.global_56
  loc_B433E6: NewIfNullPr clsrecepcion
  loc_B433E9: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B433EE: FLdPr var_554
  loc_B433F1:  = Me.Fields
  loc_B433F6: FLdPr var_558
  loc_B433F9: from_stack_2 = Me.Item(from_stack_1)
  loc_B433FE: FLdPr var_56C
  loc_B43401:  = Me.Value
  loc_B43406: FLdRfVar var_D4
  loc_B43409: FLdRfVar var_B4
  loc_B4340C: LitVarStr var_B0, "CodiItco"
  loc_B43411: PopAdLdVar
  loc_B43412: FLdRfVar var_A0
  loc_B43415: FLdRfVar var_9C
  loc_B43418: FLdPr Me
  loc_B4341B: MemLdRfVar from_stack_1.global_56
  loc_B4341E: NewIfNullPr clsrecepcion
  loc_B43421: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B43426: FLdPr var_9C
  loc_B43429:  = Me.Fields
  loc_B4342E: FLdPr var_A0
  loc_B43431: from_stack_2 = Me.Item(from_stack_1)
  loc_B43436: FLdPr var_B4
  loc_B43439:  = Me.Value
  loc_B4343E: FLdRfVar var_D4
  loc_B43441: LitI4 9
  loc_B43446: FLdRfVar var_C4
  loc_B43449: ImpAdCallFPR4  = Chr()
  loc_B4344E: FLdRfVar var_C4
  loc_B43451: ConcatVar var_E4
  loc_B43455: FLdRfVar var_104
  loc_B43458: FLdRfVar var_120
  loc_B4345B: LitVarStr var_F4, "AlteItco"
  loc_B43460: PopAdLdVar
  loc_B43461: FLdRfVar var_10C
  loc_B43464: FLdRfVar var_108
  loc_B43467: FLdPr Me
  loc_B4346A: MemLdRfVar from_stack_1.global_56
  loc_B4346D: NewIfNullPr clsrecepcion
  loc_B43470: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B43475: FLdPr var_108
  loc_B43478:  = Me.Fields
  loc_B4347D: FLdPr var_10C
  loc_B43480: from_stack_2 = Me.Item(from_stack_1)
  loc_B43485: FLdPr var_120
  loc_B43488:  = Me.Value
  loc_B4348D: FLdRfVar var_104
  loc_B43490: ConcatVar var_130
  loc_B43494: LitI4 9
  loc_B43499: FLdRfVar var_140
  loc_B4349C: ImpAdCallFPR4  = Chr()
  loc_B434A1: FLdRfVar var_140
  loc_B434A4: ConcatVar var_160
  loc_B434A8: FLdRfVar var_18C
  loc_B434AB: FLdRfVar var_17C
  loc_B434AE: LitVarStr var_11C, "CodiInsu"
  loc_B434B3: PopAdLdVar
  loc_B434B4: FLdRfVar var_168
  loc_B434B7: FLdRfVar var_164
  loc_B434BA: FLdPr Me
  loc_B434BD: MemLdRfVar from_stack_1.global_56
  loc_B434C0: NewIfNullPr clsrecepcion
  loc_B434C3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B434C8: FLdPr var_164
  loc_B434CB:  = Me.Fields
  loc_B434D0: FLdPr var_168
  loc_B434D3: from_stack_2 = Me.Item(from_stack_1)
  loc_B434D8: FLdPr var_17C
  loc_B434DB:  = Me.Value
  loc_B434E0: FLdRfVar var_18C
  loc_B434E3: ConcatVar var_19C
  loc_B434E7: LitI4 9
  loc_B434EC: FLdRfVar var_1BC
  loc_B434EF: ImpAdCallFPR4  = Chr()
  loc_B434F4: FLdRfVar var_1BC
  loc_B434F7: ConcatVar var_1D0
  loc_B434FB: FLdRfVar var_1EC
  loc_B434FE: FLdRfVar var_1DC
  loc_B43501: LitVarStr var_150, "DetaInsu"
  loc_B43506: PopAdLdVar
  loc_B43507: FLdRfVar var_1D8
  loc_B4350A: FLdRfVar var_1D4
  loc_B4350D: FLdPr Me
  loc_B43510: MemLdRfVar from_stack_1.global_56
  loc_B43513: NewIfNullPr clsrecepcion
  loc_B43516: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4351B: FLdPr var_1D4
  loc_B4351E:  = Me.Fields
  loc_B43523: FLdPr var_1D8
  loc_B43526: from_stack_2 = Me.Item(from_stack_1)
  loc_B4352B: FLdPr var_1DC
  loc_B4352E:  = Me.Value
  loc_B43533: FLdRfVar var_1EC
  loc_B43536: ConcatVar var_1FC
  loc_B4353A: LitI4 9
  loc_B4353F: FLdRfVar var_20C
  loc_B43542: ImpAdCallFPR4  = Chr()
  loc_B43547: FLdRfVar var_20C
  loc_B4354A: ConcatVar var_21C
  loc_B4354E: FLdRfVar var_238
  loc_B43551: FLdRfVar var_228
  loc_B43554: LitVarStr var_178, "DetaItco"
  loc_B43559: PopAdLdVar
  loc_B4355A: FLdRfVar var_224
  loc_B4355D: FLdRfVar var_220
  loc_B43560: FLdPr Me
  loc_B43563: MemLdRfVar from_stack_1.global_56
  loc_B43566: NewIfNullPr clsrecepcion
  loc_B43569: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4356E: FLdPr var_220
  loc_B43571:  = Me.Fields
  loc_B43576: FLdPr var_224
  loc_B43579: from_stack_2 = Me.Item(from_stack_1)
  loc_B4357E: FLdPr var_228
  loc_B43581:  = Me.Value
  loc_B43586: FLdRfVar var_238
  loc_B43589: ConcatVar var_248
  loc_B4358D: LitI4 9
  loc_B43592: FLdRfVar var_258
  loc_B43595: ImpAdCallFPR4  = Chr()
  loc_B4359A: FLdRfVar var_258
  loc_B4359D: ConcatVar var_268
  loc_B435A1: LitI4 1
  loc_B435A6: LitI4 1
  loc_B435AB: LitVarStr var_294, "0.000"
  loc_B435B0: FStVarCopyObj var_2A4
  loc_B435B3: FLdRfVar var_2A4
  loc_B435B6: FLdZeroAd var_274
  loc_B435B9: CVarAd
  loc_B435BD: FLdRfVar var_2B4
  loc_B435C0: ImpAdCallFPR4  = Format(, )
  loc_B435C5: FLdRfVar var_2B4
  loc_B435C8: ConcatVar var_2C4
  loc_B435CC: LitI4 9
  loc_B435D1: FLdRfVar var_2D4
  loc_B435D4: ImpAdCallFPR4  = Chr()
  loc_B435D9: FLdRfVar var_2D4
  loc_B435DC: ConcatVar var_2E4
  loc_B435E0: LitI4 1
  loc_B435E5: LitI4 1
  loc_B435EA: LitVarStr var_320, "0.000"
  loc_B435EF: FStVarCopyObj var_330
  loc_B435F2: FLdRfVar var_330
  loc_B435F5: FLdZeroAd var_300
  loc_B435F8: CVarAd
  loc_B435FC: FLdRfVar var_340
  loc_B435FF: ImpAdCallFPR4  = Format(, )
  loc_B43604: FLdRfVar var_340
  loc_B43607: ConcatVar var_350
  loc_B4360B: LitI4 9
  loc_B43610: FLdRfVar var_360
  loc_B43613: ImpAdCallFPR4  = Chr()
  loc_B43618: FLdRfVar var_360
  loc_B4361B: ConcatVar var_370
  loc_B4361F: LitI4 1
  loc_B43624: LitI4 1
  loc_B43629: LitVarStr var_390, "0.000"
  loc_B4362E: FStVarCopyObj var_3A0
  loc_B43631: FLdRfVar var_3A0
  loc_B43634: FLdPr Me
  loc_B43637: MemLdRfVar from_stack_1.global_60
  loc_B4363A: CVarRef
  loc_B4363F: FLdRfVar var_3B0
  loc_B43642: ImpAdCallFPR4  = Format(, )
  loc_B43647: FLdRfVar var_3B0
  loc_B4364A: ConcatVar var_3C0
  loc_B4364E: LitI4 9
  loc_B43653: FLdRfVar var_3D0
  loc_B43656: ImpAdCallFPR4  = Chr()
  loc_B4365B: FLdRfVar var_3D0
  loc_B4365E: ConcatVar var_3E0
  loc_B43662: FLdRfVar var_40C
  loc_B43665: FLdRfVar var_3FC
  loc_B43668: LitVarStr var_3F8, "CodiPart"
  loc_B4366D: PopAdLdVar
  loc_B4366E: FLdRfVar var_3E8
  loc_B43671: FLdRfVar var_3E4
  loc_B43674: FLdPr Me
  loc_B43677: MemLdRfVar from_stack_1.global_56
  loc_B4367A: NewIfNullPr clsrecepcion
  loc_B4367D: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B43682: FLdPr var_3E4
  loc_B43685:  = Me.Fields
  loc_B4368A: FLdPr var_3E8
  loc_B4368D: from_stack_2 = Me.Item(from_stack_1)
  loc_B43692: FLdPr var_3FC
  loc_B43695:  = Me.Value
  loc_B4369A: FLdRfVar var_40C
  loc_B4369D: ConcatVar var_41C
  loc_B436A1: LitI4 9
  loc_B436A6: FLdRfVar var_42C
  loc_B436A9: ImpAdCallFPR4  = Chr()
  loc_B436AE: FLdRfVar var_42C
  loc_B436B1: ConcatVar var_43C
  loc_B436B5: FLdRfVar var_468
  loc_B436B8: FLdRfVar var_458
  loc_B436BB: LitVarStr var_454, "CodiOrga"
  loc_B436C0: PopAdLdVar
  loc_B436C1: FLdRfVar var_444
  loc_B436C4: FLdRfVar var_440
  loc_B436C7: FLdPr Me
  loc_B436CA: MemLdRfVar from_stack_1.global_56
  loc_B436CD: NewIfNullPr clsrecepcion
  loc_B436D0: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B436D5: FLdPr var_440
  loc_B436D8:  = Me.Fields
  loc_B436DD: FLdPr var_444
  loc_B436E0: from_stack_2 = Me.Item(from_stack_1)
  loc_B436E5: FLdPr var_458
  loc_B436E8:  = Me.Value
  loc_B436ED: FLdRfVar var_468
  loc_B436F0: ConcatVar var_478
  loc_B436F4: LitI4 9
  loc_B436F9: FLdRfVar var_488
  loc_B436FC: ImpAdCallFPR4  = Chr()
  loc_B43701: FLdRfVar var_488
  loc_B43704: ConcatVar var_498
  loc_B43708: FLdRfVar var_4C4
  loc_B4370B: FLdRfVar var_4B4
  loc_B4370E: LitVarStr var_4B0, "CodiUnga"
  loc_B43713: PopAdLdVar
  loc_B43714: FLdRfVar var_4A0
  loc_B43717: FLdRfVar var_49C
  loc_B4371A: FLdPr Me
  loc_B4371D: MemLdRfVar from_stack_1.global_56
  loc_B43720: NewIfNullPr clsrecepcion
  loc_B43723: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B43728: FLdPr var_49C
  loc_B4372B:  = Me.Fields
  loc_B43730: FLdPr var_4A0
  loc_B43733: from_stack_2 = Me.Item(from_stack_1)
  loc_B43738: FLdPr var_4B4
  loc_B4373B:  = Me.Value
  loc_B43740: FLdRfVar var_4C4
  loc_B43743: ConcatVar var_4D4
  loc_B43747: LitI4 9
  loc_B4374C: FLdRfVar var_4E4
  loc_B4374F: ImpAdCallFPR4  = Chr()
  loc_B43754: FLdRfVar var_4E4
  loc_B43757: ConcatVar var_4F4
  loc_B4375B: FLdRfVar var_520
  loc_B4375E: FLdRfVar var_510
  loc_B43761: LitVarStr var_50C, "CodiFifu"
  loc_B43766: PopAdLdVar
  loc_B43767: FLdRfVar var_4FC
  loc_B4376A: FLdRfVar var_4F8
  loc_B4376D: FLdPr Me
  loc_B43770: MemLdRfVar from_stack_1.global_56
  loc_B43773: NewIfNullPr clsrecepcion
  loc_B43776: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4377B: FLdPr var_4F8
  loc_B4377E:  = Me.Fields
  loc_B43783: FLdPr var_4FC
  loc_B43786: from_stack_2 = Me.Item(from_stack_1)
  loc_B4378B: FLdPr var_510
  loc_B4378E:  = Me.Value
  loc_B43793: FLdRfVar var_520
  loc_B43796: ConcatVar var_530
  loc_B4379A: LitI4 9
  loc_B4379F: FLdRfVar var_540
  loc_B437A2: ImpAdCallFPR4  = Chr()
  loc_B437A7: FLdRfVar var_540
  loc_B437AA: ConcatVar var_550
  loc_B437AE: LitVarStr var_5BC, "Si"
  loc_B437B3: FStVarCopyObj var_5CC
  loc_B437B6: FLdRfVar var_5CC
  loc_B437B9: LitVarStr var_59C, "No"
  loc_B437BE: FStVarCopyObj var_5AC
  loc_B437C1: FLdRfVar var_5AC
  loc_B437C4: FLdRfVar var_57C
  loc_B437C7: FnCLngVar
  loc_B437C9: LitI4 0
  loc_B437CE: EqI4
  loc_B437CF: CVarBoolI2 var_58C
  loc_B437D3: FLdRfVar var_5DC
  loc_B437D6: ImpAdCallFPR4  = IIf(, , )
  loc_B437DB: FLdRfVar var_5DC
  loc_B437DE: ConcatVar var_5EC
  loc_B437E2: CStrVarTmp
  loc_B437E3: FStStrNoPop var_90
  loc_B437E6: FLdPr Me
  loc_B437E9: MemStStrCopy
  loc_B437ED: FFree1Str var_90
  loc_B437F0: FFreeAd var_510 = "": var_554 = "": var_558 = "": var_56C = "": var_9C = "": var_A0 = "": var_B4 = "": var_108 = "": var_10C = "": var_120 = "": var_164 = "": var_168 = "": var_17C = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_220 = "": var_224 = "": var_228 = "": var_26C = "": var_270 = "": var_2E8 = "": var_2EC = "": var_3E4 = "": var_3E8 = "": var_3FC = "": var_440 = "": var_444 = "": var_458 = "": var_49C = "": var_4A0 = "": var_4B4 = "": var_4F8 = ""
  loc_B43837: FFreeVar var_3A0 = "": var_370 = "": var_3B0 = "": var_3C0 = "": var_3D0 = "": var_3E0 = "": var_40C = "": var_41C = "": var_42C = "": var_43C = "": var_468 = "": var_478 = "": var_488 = "": var_498 = "": var_4C4 = "": var_4D4 = "": var_4E4 = "": var_4F4 = "": var_520 = "": var_530 = "": var_540 = "": var_57C = "": var_58C = "": var_5AC = "": var_5CC = "": var_550 = "": var_5DC = "": var_5EC = "": var_D4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_130 = "": var_140 = "": var_160 = "": var_18C = "": var_19C = "": var_1BC = "": var_1D0 = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_238 = "": var_248 = "": var_258 = "": var_284 = "": var_2A4 = "": var_268 = "": var_2B4 = "": var_2C4 = "": var_2D4 = "": var_310 = "": var_330 = "": var_2E4 = "": var_340 = "": var_350 = ""
  loc_B438AE: FLdPr Me
  loc_B438B1: MemLdRfVar from_stack_1.global_72
  loc_B438B4: CDargRef
  loc_B438B8: FLdPr Me
  loc_B438BB: VCallAd Control_ID_ItemCompraFlex
  loc_B438BE: FStAdFunc var_9C
  loc_B438C1: FLdPr var_9C
  loc_B438C4: LateIdCall
  loc_B438CC: FFree1Ad var_9C
  loc_B438CF: FLdPr Me
  loc_B438D2: MemLdRfVar from_stack_1.global_56
  loc_B438D5: NewIfNullPr clsrecepcion
  loc_B438D8: Call clsrecepcion.MoveSiguiente()
  loc_B438DD: Branch loc_B43235
  loc_B438E0: Branch loc_B43912
  loc_B438E3: FLdPr Me
  loc_B438E6: MemLdUI1 global_76
  loc_B438EA: CI2UI1
  loc_B438EC: LitI2_Byte 0
  loc_B438EE: EqI2
  loc_B438EF: FLdRfVar var_88
  loc_B438F2: FLdPr Me
  loc_B438F5: MemLdRfVar from_stack_1.global_52
  loc_B438F8: NewIfNullPr clsrecepcion
  loc_B438FB: from_stack_1 = clsrecepcion.RecordCount
  loc_B43900: ILdRf var_88
  loc_B43903: LitI4 0
  loc_B43908: LeI4
  loc_B43909: AndI4
  loc_B4390A: BranchF loc_B43912
  loc_B4390D: Call Proc_125_43_A2E850()
  loc_B43912: LitI4 1
  loc_B43917: LitI4 1
  loc_B4391C: LitVarStr var_F4, "currency"
  loc_B43921: FStVarCopyObj var_C4
  loc_B43924: FLdRfVar var_C4
  loc_B43927: FLdPr Me
  loc_B4392A: MemLdRfVar from_stack_1.global_96
  loc_B4392D: CVarRef
  loc_B43932: ImpAdCallI2 Format$(, )
  loc_B43937: FStStrNoPop var_90
  loc_B4393A: FLdPr Me
  loc_B4393D: VCallAd Control_ID_TotaReceTxt
  loc_B43940: FStAdFunc var_9C
  loc_B43943: FLdPr var_9C
  loc_B43946: Me.Text = from_stack_1
  loc_B4394B: FFree1Str var_90
  loc_B4394E: FFree1Ad var_9C
  loc_B43951: FFree1Var var_C4 = ""
  loc_B43954: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB3B74
  'Data Table: 4BE560
  loc_AB3630: ImpAdLdI2 MemVar_C3D064
  loc_AB3633: LitI2 2025
  loc_AB3636: LeI2
  loc_AB3637: BranchF loc_AB3657
  loc_AB363A: LitVarI4
  loc_AB3642: PopAdLdVar
  loc_AB3643: FLdPr Me
  loc_AB3646: VCallAd Control_ID_dgdABMS
  loc_AB3649: FStAdFunc var_A8
  loc_AB364C: FLdPr var_A8
  loc_AB364F: LateIdSt
  loc_AB3654: FFree1Ad var_A8
  loc_AB3657: LitStr "Municipalidad de Guaymallén"
  loc_AB365A: LitStr "Municipalidad de Maipú"
  loc_AB365D: EqStr
  loc_AB365F: BranchF loc_AB367B
  loc_AB3662: LitI2_Byte &HFF
  loc_AB3664: FLdPr Me
  loc_AB3667: VCallAd Control_ID_ExpeImpuGDETxt
  loc_AB366A: FStAdFunc var_A8
  loc_AB366D: FLdPr var_A8
  loc_AB3670: Me.Visible = from_stack_1b
  loc_AB3675: FFree1Ad var_A8
  loc_AB3678: Branch loc_AB3691
  loc_AB367B: LitI2_Byte 0
  loc_AB367D: FLdPr Me
  loc_AB3680: VCallAd Control_ID_ExpeImpuGDETxt
  loc_AB3683: FStAdFunc var_A8
  loc_AB3686: FLdPr var_A8
  loc_AB3689: Me.Visible = from_stack_1b
  loc_AB368E: FFree1Ad var_A8
  loc_AB3691: ILdRf Me
  loc_AB3694: CastAd
  loc_AB3697: FStAdFunc var_A8
  loc_AB369A: FLdRfVar var_A8
  loc_AB369D: ImpAdCallFPR4 Proc_261_41_999BCC()
  loc_AB36A2: FFree1Ad var_A8
  loc_AB36A5: ILdRf Me
  loc_AB36A8: CastAd
  loc_AB36AB: FStAdFunc var_A8
  loc_AB36AE: FLdRfVar var_A8
  loc_AB36B1: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_AB36B6: FFree1Ad var_A8
  loc_AB36B9: LitI2_Byte 0
  loc_AB36BB: CR8I2
  loc_AB36BC: PopFPR4
  loc_AB36BD: FLdPr Me
  loc_AB36C0: Me.Left = from_stack_1s
  loc_AB36C5: LitI2_Byte 0
  loc_AB36C7: CR8I2
  loc_AB36C8: PopFPR4
  loc_AB36C9: FLdPr Me
  loc_AB36CC: Me.Top = from_stack_1s
  loc_AB36D1: LitStr "SELECT r.*, oc.CucuPers, DetaProv, DetaOrga, Left(NumeFact,3) TifaRece, Mid(NumeFact,4,4) SufaRece, Right(NumeFact,8) NufaRece, np.ExpeImpu ExorImpu"
  loc_AB36D4: LitStr " FROM recepcion r"
  loc_AB36D7: ConcatStr
  loc_AB36D8: FStStrNoPop var_AC
  loc_AB36DB: LitStr " INNER JOIN itemrecepcion itr ON itr.PeriInfo = r.PeriInfo AND itr.CodiOrco = r.CodiOrco AND itr.CodiRece = r.CodiRece"
  loc_AB36DE: ConcatStr
  loc_AB36DF: FStStrNoPop var_B0
  loc_AB36E2: LitStr " AND itr.IdImpu = 0"
  loc_AB36E5: ConcatStr
  loc_AB36E6: FStStrNoPop var_B4
  loc_AB36E9: LitStr " INNER JOIN ordencompra oc ON oc.PeriInfo = r.PeriInfo AND oc.CodiOrco = r.CodiOrco"
  loc_AB36EC: ConcatStr
  loc_AB36ED: FStStrNoPop var_B8
  loc_AB36F0: LitStr " INNER JOIN notapedido np ON np.PeriInfo = oc.PeriInfo AND np.CodiNope = oc.CodiNope"
  loc_AB36F3: ConcatStr
  loc_AB36F4: FStStrNoPop var_BC
  loc_AB36F7: LitStr " INNER JOIN proveedor p ON p.CucuPers = oc.CucuPers"
  loc_AB36FA: ConcatStr
  loc_AB36FB: FStStrNoPop var_C0
  loc_AB36FE: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = oc.PeriInfo AND o.CodiOrga = oc.CodiOrga"
  loc_AB3701: ConcatStr
  loc_AB3702: FStStrNoPop var_C4
  loc_AB3705: LitStr " WHERE r.PeriInfo = "
  loc_AB3708: ConcatStr
  loc_AB3709: FStStrNoPop var_C8
  loc_AB370C: ImpAdLdI2 MemVar_C3D064
  loc_AB370F: CStrUI1
  loc_AB3711: FStStrNoPop var_CC
  loc_AB3714: ConcatStr
  loc_AB3715: FStStrNoPop var_D0
  loc_AB3718: LitStr " AND FeanRece IS NULL"
  loc_AB371B: ConcatStr
  loc_AB371C: FStStrNoPop var_D4
  loc_AB371F: LitStr " GROUP BY r.PeriInfo, r.CodiOrco, r.CodiRece"
  loc_AB3722: ConcatStr
  loc_AB3723: FStStrNoPop var_D8
  loc_AB3726: LitStr " ORDER BY r.PeriInfo, r.CodiOrco, r.CodiRece;"
  loc_AB3729: ConcatStr
  loc_AB372A: FStStrNoPop var_DC
  loc_AB372D: FLdPr Me
  loc_AB3730: MemLdRfVar from_stack_1.global_52
  loc_AB3733: NewIfNullPr clsrecepcion
  loc_AB3736: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_AB373B: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_AB3758: FLdPr Me
  loc_AB375B: VCallAd Control_ID_ItemCompraFlex
  loc_AB375E: FStAdFunc var_E0
  loc_AB3761: LitVarI4
  loc_AB3769: PopAdLdVar
  loc_AB376A: LitVarI4
  loc_AB3772: PopAdLdVar
  loc_AB3773: FLdPr var_E0
  loc_AB3776: LateIdCallSt
  loc_AB377E: LitVarI4
  loc_AB3786: PopAdLdVar
  loc_AB3787: LitVarI4
  loc_AB378F: PopAdLdVar
  loc_AB3790: FLdPr var_E0
  loc_AB3793: LateIdCallSt
  loc_AB379B: LitVarI4
  loc_AB37A3: PopAdLdVar
  loc_AB37A4: LitVarI4
  loc_AB37AC: PopAdLdVar
  loc_AB37AD: FLdPr var_E0
  loc_AB37B0: LateIdCallSt
  loc_AB37B8: LitVarI4
  loc_AB37C0: PopAdLdVar
  loc_AB37C1: LitVarI4
  loc_AB37C9: PopAdLdVar
  loc_AB37CA: FLdPr var_E0
  loc_AB37CD: LateIdCallSt
  loc_AB37D5: LitVarI4
  loc_AB37DD: PopAdLdVar
  loc_AB37DE: LitVarI4
  loc_AB37E6: PopAdLdVar
  loc_AB37E7: FLdPr var_E0
  loc_AB37EA: LateIdCallSt
  loc_AB37F2: LitVarI4
  loc_AB37FA: PopAdLdVar
  loc_AB37FB: LitVarI4
  loc_AB3803: PopAdLdVar
  loc_AB3804: FLdPr var_E0
  loc_AB3807: LateIdCallSt
  loc_AB380F: LitVarI4
  loc_AB3817: PopAdLdVar
  loc_AB3818: LitVarI4
  loc_AB3820: PopAdLdVar
  loc_AB3821: FLdPr var_E0
  loc_AB3824: LateIdCallSt
  loc_AB382C: LitVarI4
  loc_AB3834: PopAdLdVar
  loc_AB3835: LitVarI4
  loc_AB383D: PopAdLdVar
  loc_AB383E: FLdPr var_E0
  loc_AB3841: LateIdCallSt
  loc_AB3849: LitVarI4
  loc_AB3851: PopAdLdVar
  loc_AB3852: LitVarI4
  loc_AB385A: PopAdLdVar
  loc_AB385B: FLdPr var_E0
  loc_AB385E: LateIdCallSt
  loc_AB3866: LitVarI4
  loc_AB386E: PopAdLdVar
  loc_AB386F: LitVarI4
  loc_AB3877: PopAdLdVar
  loc_AB3878: FLdPr var_E0
  loc_AB387B: LateIdCallSt
  loc_AB3883: LitVarI4
  loc_AB388B: PopAdLdVar
  loc_AB388C: LitVarI4
  loc_AB3894: PopAdLdVar
  loc_AB3895: FLdPr var_E0
  loc_AB3898: LateIdCallSt
  loc_AB38A0: LitVarI4
  loc_AB38A8: PopAdLdVar
  loc_AB38A9: LitVarI4
  loc_AB38B1: PopAdLdVar
  loc_AB38B2: FLdPr var_E0
  loc_AB38B5: LateIdCallSt
  loc_AB38BD: LitVarI4
  loc_AB38C5: PopAdLdVar
  loc_AB38C6: LitVarI4
  loc_AB38CE: PopAdLdVar
  loc_AB38CF: FLdPr var_E0
  loc_AB38D2: LateIdCallSt
  loc_AB38DA: LitVarI4
  loc_AB38E2: PopAdLdVar
  loc_AB38E3: LitVarI4
  loc_AB38EB: PopAdLdVar
  loc_AB38EC: LitVarStr var_110, "Item"
  loc_AB38F1: PopAdLdVar
  loc_AB38F2: FLdPr var_E0
  loc_AB38F5: LateIdCallSt
  loc_AB38FD: LitVarI4
  loc_AB3905: PopAdLdVar
  loc_AB3906: LitVarI4
  loc_AB390E: PopAdLdVar
  loc_AB390F: LitVarStr var_110, "Alt."
  loc_AB3914: PopAdLdVar
  loc_AB3915: FLdPr var_E0
  loc_AB3918: LateIdCallSt
  loc_AB3920: LitVarI4
  loc_AB3928: PopAdLdVar
  loc_AB3929: LitVarI4
  loc_AB3931: PopAdLdVar
  loc_AB3932: LitVarStr var_110, "Código"
  loc_AB3937: PopAdLdVar
  loc_AB3938: FLdPr var_E0
  loc_AB393B: LateIdCallSt
  loc_AB3943: LitVarI4
  loc_AB394B: PopAdLdVar
  loc_AB394C: LitVarI4
  loc_AB3954: PopAdLdVar
  loc_AB3955: LitVarStr var_110, "Detalle del Insumo"
  loc_AB395A: PopAdLdVar
  loc_AB395B: FLdPr var_E0
  loc_AB395E: LateIdCallSt
  loc_AB3966: LitVarI4
  loc_AB396E: PopAdLdVar
  loc_AB396F: LitVarI4
  loc_AB3977: PopAdLdVar
  loc_AB3978: LitVarStr var_110, "Detalle AMPLIADO del Insumo"
  loc_AB397D: PopAdLdVar
  loc_AB397E: FLdPr var_E0
  loc_AB3981: LateIdCallSt
  loc_AB3989: LitVarI4
  loc_AB3991: PopAdLdVar
  loc_AB3992: LitVarI4
  loc_AB399A: PopAdLdVar
  loc_AB399B: LitVarStr var_110, "Cantidad"
  loc_AB39A0: PopAdLdVar
  loc_AB39A1: FLdPr var_E0
  loc_AB39A4: LateIdCallSt
  loc_AB39AC: LitVarI4
  loc_AB39B4: PopAdLdVar
  loc_AB39B5: LitVarI4
  loc_AB39BD: PopAdLdVar
  loc_AB39BE: LitVarStr var_110, "Pr. Unitario"
  loc_AB39C3: PopAdLdVar
  loc_AB39C4: FLdPr var_E0
  loc_AB39C7: LateIdCallSt
  loc_AB39CF: LitVarI4
  loc_AB39D7: PopAdLdVar
  loc_AB39D8: LitVarI4
  loc_AB39E0: PopAdLdVar
  loc_AB39E1: LitVarStr var_110, "Total"
  loc_AB39E6: PopAdLdVar
  loc_AB39E7: FLdPr var_E0
  loc_AB39EA: LateIdCallSt
  loc_AB39F2: LitVarI4
  loc_AB39FA: PopAdLdVar
  loc_AB39FB: LitVarI4
  loc_AB3A03: PopAdLdVar
  loc_AB3A04: LitVarStr var_110, "Partida"
  loc_AB3A09: PopAdLdVar
  loc_AB3A0A: FLdPr var_E0
  loc_AB3A0D: LateIdCallSt
  loc_AB3A15: LitVarI4
  loc_AB3A1D: PopAdLdVar
  loc_AB3A1E: LitVarI4
  loc_AB3A26: PopAdLdVar
  loc_AB3A27: LitVarStr var_110, "Organigrama"
  loc_AB3A2C: PopAdLdVar
  loc_AB3A2D: FLdPr var_E0
  loc_AB3A30: LateIdCallSt
  loc_AB3A38: LitVarI4
  loc_AB3A40: PopAdLdVar
  loc_AB3A41: LitVarI4
  loc_AB3A49: PopAdLdVar
  loc_AB3A4A: LitVarStr var_110, "Un.Gasto"
  loc_AB3A4F: PopAdLdVar
  loc_AB3A50: FLdPr var_E0
  loc_AB3A53: LateIdCallSt
  loc_AB3A5B: LitVarI4
  loc_AB3A63: PopAdLdVar
  loc_AB3A64: LitVarI4
  loc_AB3A6C: PopAdLdVar
  loc_AB3A6D: LitVarStr var_110, "Fin. y Fun."
  loc_AB3A72: PopAdLdVar
  loc_AB3A73: FLdPr var_E0
  loc_AB3A76: LateIdCallSt
  loc_AB3A7E: LitVarI4
  loc_AB3A86: PopAdLdVar
  loc_AB3A87: LitVarI4
  loc_AB3A8F: PopAdLdVar
  loc_AB3A90: LitVarStr var_110, "Imput."
  loc_AB3A95: PopAdLdVar
  loc_AB3A96: FLdPr var_E0
  loc_AB3A99: LateIdCallSt
  loc_AB3AA1: LitNothing
  loc_AB3AA3: FStAd var_E0 
  loc_AB3AA7: LitI2_Byte &HFF
  loc_AB3AA9: FLdPr Me
  loc_AB3AAC: VCallAd Control_ID_TifaReceCbo
  loc_AB3AAF: FStAdFunc var_A8
  loc_AB3AB2: FLdRfVar var_A8
  loc_AB3AB5: ImpAdCallFPR4 Proc_261_56_9A8F4C(, )
  loc_AB3ABA: FFree1Ad var_A8
  loc_AB3ABD: LitVarI2 var_94, 0
  loc_AB3AC2: PopAdLdVar
  loc_AB3AC3: LitStr "Orden de Compra"
  loc_AB3AC6: FLdPr Me
  loc_AB3AC9: VCallAd Control_ID_FiltroCbo
  loc_AB3ACC: FStAdFunc var_A8
  loc_AB3ACF: FLdPr var_A8
  loc_AB3AD2: Me.AddItem from_stack_1, from_stack_2
  loc_AB3AD7: FFree1Ad var_A8
  loc_AB3ADA: LitVarI2 var_94, 1
  loc_AB3ADF: PopAdLdVar
  loc_AB3AE0: LitStr "Expediente"
  loc_AB3AE3: FLdPr Me
  loc_AB3AE6: VCallAd Control_ID_FiltroCbo
  loc_AB3AE9: FStAdFunc var_A8
  loc_AB3AEC: FLdPr var_A8
  loc_AB3AEF: Me.AddItem from_stack_1, from_stack_2
  loc_AB3AF4: FFree1Ad var_A8
  loc_AB3AF7: LitI2_Byte 0
  loc_AB3AF9: FLdPr Me
  loc_AB3AFC: VCallAd Control_ID_FiltroCbo
  loc_AB3AFF: FStAdFunc var_A8
  loc_AB3B02: FLdPr var_A8
  loc_AB3B05: Me.ListIndex = from_stack_1
  loc_AB3B0A: FFree1Ad var_A8
  loc_AB3B0D: Call cmdCancelar_Click()
  loc_AB3B12: LitI4 0
  loc_AB3B17: LitI4 1
  loc_AB3B1C: FLdRfVar var_124
  loc_AB3B1F: Redim
  loc_AB3B29: FLdPr Me
  loc_AB3B2C: MemLdRfVar from_stack_1.global_52
  loc_AB3B2F: NewIfNullAd
  loc_AB3B32: FStAd var_A8 
  loc_AB3B36: FLdRfVar var_A8
  loc_AB3B39: CVarRef
  loc_AB3B3E: ParmAry1St
  loc_AB3B44: FLdPr Me
  loc_AB3B47: VCallAd Control_ID_dgdABMS
  loc_AB3B4A: CVarAd
  loc_AB3B4E: ParmAry1St
  loc_AB3B54: FLdRfVar var_124
  loc_AB3B57: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_AB3B5C: ILdRf var_A8
  loc_AB3B5F: CastAd
  loc_AB3B62: FLdPr Me
  loc_AB3B65: MemStAdFunc
  loc_AB3B69: FLdRfVar var_124
  loc_AB3B6C: Erase
  loc_AB3B6D: FFree1Ad var_A8
  loc_AB3B70: ExitProcHresult
End Sub

Private Sub Form_Activate() '9A4668
  'Data Table: 4BE560
  loc_9A45F8: FLdRfVar var_C2
  loc_9A45FB: FLdRfVar var_C0
  loc_9A45FE: LitVarI2 var_B8, 1
  loc_9A4603: FLdPr Me
  loc_9A4606: VCallAd Control_ID_tlbABMS
  loc_9A4609: FStAdFunc var_88
  loc_9A460C: FLdPr var_88
  loc_9A460F: LateIdLdVar var_98 DispID_3 0
  loc_9A4616: CastAdVar Me
  loc_9A461A: FStAdFunc var_BC
  loc_9A461D: FLdPr var_BC
  loc_9A4620:  = Me.Buttons.ControlDefault
  loc_9A4625: FLdPr var_C0
  loc_9A4628:  = Me.Enabled
  loc_9A462D: FLdI2 var_C2
  loc_9A4630: FFreeAd var_88 = "": var_BC = ""
  loc_9A4639: FFreeVar var_98 = ""
  loc_9A4640: BranchF loc_9A4664
  loc_9A4643: LitI2_Byte &HFF
  loc_9A4645: LitStr "0"
  loc_9A4648: LitStr "0"
  loc_9A464B: ImpAdLdI2 MemVar_C3D064
  loc_9A464E: CStrUI1
  loc_9A4650: FStStrNoPop var_C8
  loc_9A4653: FLdPr Me
  loc_9A4656: MemLdRfVar from_stack_1.global_52
  loc_9A4659: NewIfNullPr clsrecepcion
  loc_9A465C: Call clsrecepcion.Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_9A4661: FFree1Str var_C8
  loc_9A4664: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949AAC
  'Data Table: 4BE560
  loc_949A98: ILdI2 KeyAscii
  loc_949A9B: CI4UI1
  loc_949A9C: LitI4 &HD
  loc_949AA1: EqI4
  loc_949AA2: BranchF loc_949AAA
  loc_949AA5: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949AAA: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '959E80
  'Data Table: 4BE560
  loc_959E68: ILdI2 KeyCode
  loc_959E6B: ILdRf Me
  loc_959E6E: CastAd
  loc_959E71: FStAdFunc var_88
  loc_959E74: FLdRfVar var_88
  loc_959E77: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_959E7C: FFree1Ad var_88
  loc_959E7F: ExitProcHresult
End Sub

Private Sub FepaReceMsk_UnknownEvent_0 '9B8F30
  'Data Table: 4BE560
  loc_9B8E88: FLdPr Me
  loc_9B8E8B: VCallAd Control_ID_FepaReceMsk
  loc_9B8E8E: FStAdFunc var_88
  loc_9B8E91: FLdPr var_88
  loc_9B8E94: LateIdLdVar var_98 DispID_20 0
  loc_9B8E9B: CStrVarTmp
  loc_9B8E9C: FStStrNoPop var_9C
  loc_9B8E9F: LitStr vbNullString
  loc_9B8EA2: EqStr
  loc_9B8EA4: FFree1Str var_9C
  loc_9B8EA7: FFree1Ad var_88
  loc_9B8EAA: FFree1Var var_98 = ""
  loc_9B8EAD: BranchF loc_9B8F1A
  loc_9B8EB0: FLdPr Me
  loc_9B8EB3: VCallAd Control_ID_FechReceMsk
  loc_9B8EB6: FStAdFunc var_88
  loc_9B8EB9: FLdPr var_88
  loc_9B8EBC: LateIdLdVar var_98 DispID_15 0
  loc_9B8EC3: CStrVarTmp
  loc_9B8EC4: FStStrNoPop var_9C
  loc_9B8EC7: CDateStr
  loc_9B8EC9: CVarDate var_BC
  loc_9B8ECD: FLdRfVar var_AC
  loc_9B8ED0: LitI4 0
  loc_9B8ED5: LitI4 0
  loc_9B8EDA: FLdPr Me
  loc_9B8EDD: MemLdRfVar from_stack_1.global_52
  loc_9B8EE0: NewIfNullPr clsrecepcion
  loc_9B8EE3: from_stack_3v = clsrecepcion.BuscaDepaTico(from_stack_1v, from_stack_2v)
  loc_9B8EE8: FLdRfVar var_AC
  loc_9B8EEB: AddVar var_CC
  loc_9B8EEF: CStrVarTmp
  loc_9B8EF0: CVarStr var_DC
  loc_9B8EF3: PopAdLdVar
  loc_9B8EF4: FLdPr Me
  loc_9B8EF7: VCallAd Control_ID_FepaReceMsk
  loc_9B8EFA: FStAdFunc var_F0
  loc_9B8EFD: FLdPr var_F0
  loc_9B8F00: LateIdSt
  loc_9B8F05: FFree1Str var_9C
  loc_9B8F08: FFreeAd var_88 = ""
  loc_9B8F0F: FFreeVar var_98 = "": var_AC = "": var_CC = ""
  loc_9B8F1A: FLdPr Me
  loc_9B8F1D: VCallAd Control_ID_FepaReceMsk
  loc_9B8F20: CVarAd
  loc_9B8F24: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9B8F29: FFree1Var var_98 = ""
  loc_9B8F2C: ExitProcHresult
  loc_9B8F2D: FLdZeroAd arg_2500
End Sub

Private Sub FepaReceMsk_UnknownEvent_8 '9DEB9C
  'Data Table: 4BE560
  loc_9DEAA4: FLdRfVar var_8A
  loc_9DEAA7: FLdPr Me
  loc_9DEAAA: VCallAd Control_ID_cmdCancelar
  loc_9DEAAD: FStAdFunc var_88
  loc_9DEAB0: FLdPr var_88
  loc_9DEAB3:  = Me.Value
  loc_9DEAB8: FLdI2 var_8A
  loc_9DEABB: NotI4
  loc_9DEABC: FLdPr Me
  loc_9DEABF: VCallAd Control_ID_FepaReceMsk
  loc_9DEAC2: FStAdFunc var_90
  loc_9DEAC5: FLdPr var_90
  loc_9DEAC8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DEACF: CBoolVar
  loc_9DEAD1: AndI4
  loc_9DEAD2: FFreeAd var_88 = ""
  loc_9DEAD9: FFree1Var var_A0 = ""
  loc_9DEADC: BranchF loc_9DEB98
  loc_9DEADF: FLdPr Me
  loc_9DEAE2: VCallAd Control_ID_FepaReceMsk
  loc_9DEAE5: FStAdFunc var_88
  loc_9DEAE8: FLdPr var_88
  loc_9DEAEB: LateIdLdVar var_A0 DispID_15 0
  loc_9DEAF2: PopAd
  loc_9DEAF4: FLdPr Me
  loc_9DEAF7: VCallAd Control_ID_FechReceMsk
  loc_9DEAFA: FStAdFunc var_90
  loc_9DEAFD: FLdPr var_90
  loc_9DEB00: LateIdLdVar var_B0 DispID_15 0
  loc_9DEB07: PopAd
  loc_9DEB09: FLdPr Me
  loc_9DEB0C: VCallAd Control_ID_FepaReceMsk
  loc_9DEB0F: FStAdFunc var_C4
  loc_9DEB12: LitI2_Byte 0
  loc_9DEB14: PopTmpLdAd2 var_8A
  loc_9DEB17: FLdZeroAd var_C4
  loc_9DEB1A: FStAdFunc var_BC
  loc_9DEB1D: FLdRfVar var_BC
  loc_9DEB20: FLdRfVar var_B0
  loc_9DEB23: CStrVarTmp
  loc_9DEB24: FStStrNoPop var_B8
  loc_9DEB27: LitI2_Byte 0
  loc_9DEB29: LitI2_Byte 0
  loc_9DEB2B: FLdRfVar var_A0
  loc_9DEB2E: CStrVarTmp
  loc_9DEB2F: FStStrNoPop var_B4
  loc_9DEB32: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DEB37: FStStrNoPop var_C0
  loc_9DEB3A: FLdPr Me
  loc_9DEB3D: MemStStrCopy
  loc_9DEB41: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DEB4A: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DEB55: FFreeVar var_A0 = ""
  loc_9DEB5C: FLdPr Me
  loc_9DEB5F: VCallAd Control_ID_FepaReceMsk
  loc_9DEB62: FStAdFunc var_C4
  loc_9DEB65: LitNothing
  loc_9DEB67: CastAd
  loc_9DEB6A: FStAdFunc var_BC
  loc_9DEB6D: FLdRfVar var_BC
  loc_9DEB70: FLdZeroAd var_C4
  loc_9DEB73: FStAdFuncNoPop
  loc_9DEB76: CastAd
  loc_9DEB79: FStAdFunc var_90
  loc_9DEB7C: FLdRfVar var_90
  loc_9DEB7F: FLdPr Me
  loc_9DEB82: MemLdRfVar from_stack_1.global_92
  loc_9DEB85: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DEB8A: IStI2 KeyCode
  loc_9DEB8D: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DEB98: ExitProcHresult
End Sub

Private Sub FepaReceMsk_KeyPress(KeyAscii As Integer) '989098
  'Data Table: 4BE560
  loc_989054: ILdI2 KeyAscii
  loc_989057: CI4UI1
  loc_989058: LitI4 &H20
  loc_98905D: EqI4
  loc_98905E: BranchF loc_989094
  loc_989061: LitVar_Missing var_A4
  loc_989064: PopAdLdVar
  loc_989065: LitVarI4
  loc_98906D: PopAdLdVar
  loc_98906E: ImpAdLdRf MemVar_C3D9A8
  loc_989071: NewIfNullPr frmCalendario
  loc_989074: frmCalendario.Show from_stack_1, from_stack_2
  loc_989079: ImpAdLdRf MemVar_C3D038
  loc_98907C: CDargRef
  loc_989080: FLdPr Me
  loc_989083: VCallAd Control_ID_FepaReceMsk
  loc_989086: FStAdFunc var_A8
  loc_989089: FLdPr var_A8
  loc_98908C: LateIdSt
  loc_989091: FFree1Ad var_A8
  loc_989094: ExitProcHresult
End Sub

Private Sub TifaReceCbo_GotFocus() '9A9B54
  'Data Table: 4BE560
  loc_9A9AC8: FLdRfVar var_B0
  loc_9A9ACB: FLdRfVar var_A0
  loc_9A9ACE: LitVarStr var_9C, "CucuPers"
  loc_9A9AD3: PopAdLdVar
  loc_9A9AD4: FLdRfVar var_8C
  loc_9A9AD7: FLdRfVar var_88
  loc_9A9ADA: FLdPr Me
  loc_9A9ADD: MemLdRfVar from_stack_1.global_52
  loc_9A9AE0: NewIfNullPr clsrecepcion
  loc_9A9AE3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_9A9AE8: FLdPr var_88
  loc_9A9AEB:  = Me.Fields
  loc_9A9AF0: FLdPr var_8C
  loc_9A9AF3: from_stack_2 = Me.Item(from_stack_1)
  loc_9A9AF8: FLdPr var_A0
  loc_9A9AFB:  = Me.Value
  loc_9A9B00: FLdPr Me
  loc_9A9B03: MemLdRfVar from_stack_1.global_112
  loc_9A9B06: NewIfNullRf
  loc_9A9B0A: FLdRfVar var_B0
  loc_9A9B0D: CStrVarTmp
  loc_9A9B0E: FStStrNoPop var_B4
  loc_9A9B11: ImpAdCallFPR4 Proc_259_26_B6A94C(, )
  loc_9A9B16: FFree1Str var_B4
  loc_9A9B19: FFreeAd var_88 = "": var_8C = ""
  loc_9A9B22: FFree1Var var_B0 = ""
  loc_9A9B25: FLdRfVar var_B4
  loc_9A9B28: FLdPr Me
  loc_9A9B2B: MemLdRfVar from_stack_1.global_112
  loc_9A9B2E: NewIfNullPr tblproveedor
  loc_9A9B31: from_stack_1v = tblproveedor.FactProvGet()
  loc_9A9B36: ILdRf var_B4
  loc_9A9B39: FLdPr Me
  loc_9A9B3C: VCallAd Control_ID_TifaReceCbo
  loc_9A9B3F: FStAdFunc var_88
  loc_9A9B42: FLdPr var_88
  loc_9A9B45: Me.Text = from_stack_1
  loc_9A9B4A: FFree1Str var_B4
  loc_9A9B4D: FFree1Ad var_88
  loc_9A9B50: ExitProcHresult
  loc_9A9B51: FLdPr arg_600
End Sub

Private Sub TifaReceCbo_KeyPress(KeyAscii As Integer) '957588
  'Data Table: 4BE560
  loc_957570: LitStr "fsrm"
  loc_957573: FStStrCopy var_88
  loc_957576: FLdRfVar var_88
  loc_957579: ILdRf KeyAscii
  loc_95757C: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_957581: IStI2 KeyAscii
  loc_957584: FFree1Str var_88
  loc_957587: ExitProcHresult
End Sub

Private Sub TifaReceCbo_Validate(Cancel As Boolean) '9F6E3C
  'Data Table: 4BE560
  loc_9F6D18: FLdRfVar var_8A
  loc_9F6D1B: FLdPr Me
  loc_9F6D1E: VCallAd Control_ID_cmdCancelar
  loc_9F6D21: FStAdFunc var_88
  loc_9F6D24: FLdPr var_88
  loc_9F6D27:  = Me.Value
  loc_9F6D2C: FLdI2 var_8A
  loc_9F6D2F: NotI4
  loc_9F6D30: FLdRfVar var_92
  loc_9F6D33: FLdPr Me
  loc_9F6D36: VCallAd Control_ID_TifaReceCbo
  loc_9F6D39: FStAdFunc var_90
  loc_9F6D3C: FLdPr var_90
  loc_9F6D3F:  = Me.Enabled
  loc_9F6D44: FLdI2 var_92
  loc_9F6D47: AndI4
  loc_9F6D48: FFreeAd var_88 = ""
  loc_9F6D4F: BranchF loc_9F6E38
  loc_9F6D52: FLdRfVar var_98
  loc_9F6D55: FLdPr Me
  loc_9F6D58: VCallAd Control_ID_TifaReceCbo
  loc_9F6D5B: FStAdFunc var_88
  loc_9F6D5E: FLdPr var_88
  loc_9F6D61:  = Me.Text
  loc_9F6D66: FLdRfVar var_D4
  loc_9F6D69: FLdRfVar var_B0
  loc_9F6D6C: LitVarStr var_AC, "CucuPers"
  loc_9F6D71: PopAdLdVar
  loc_9F6D72: FLdRfVar var_9C
  loc_9F6D75: FLdRfVar var_90
  loc_9F6D78: FLdPr Me
  loc_9F6D7B: MemLdRfVar from_stack_1.global_52
  loc_9F6D7E: NewIfNullPr clsrecepcion
  loc_9F6D81: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_9F6D86: FLdPr var_90
  loc_9F6D89:  = Me.Fields
  loc_9F6D8E: FLdPr var_9C
  loc_9F6D91: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6D96: FLdPr var_B0
  loc_9F6D99:  = Me.Value
  loc_9F6D9E: FLdPr Me
  loc_9F6DA1: VCallAd Control_ID_FechReceMsk
  loc_9F6DA4: FStAdFunc var_B4
  loc_9F6DA7: FLdPr var_B4
  loc_9F6DAA: LateIdLdVar var_C4 DispID_15 0
  loc_9F6DB1: PopAd
  loc_9F6DB3: FLdPr Me
  loc_9F6DB6: MemLdRfVar from_stack_1.global_112
  loc_9F6DB9: NewIfNullRf
  loc_9F6DBD: FLdRfVar var_C4
  loc_9F6DC0: CStrVarTmp
  loc_9F6DC1: FStStrNoPop var_DC
  loc_9F6DC4: FLdRfVar var_D4
  loc_9F6DC7: CStrVarTmp
  loc_9F6DC8: FStStrNoPop var_D8
  loc_9F6DCB: ILdRf var_98
  loc_9F6DCE: ImpAdCallI2 Proc_266_23_A2F578(, , , )
  loc_9F6DD3: FStStrNoPop var_E0
  loc_9F6DD6: FLdPr Me
  loc_9F6DD9: MemStStrCopy
  loc_9F6DDD: FFreeStr var_98 = "": var_D8 = "": var_DC = ""
  loc_9F6DE8: FFreeAd var_88 = "": var_90 = "": var_9C = "": var_B4 = ""
  loc_9F6DF5: FFreeVar var_C4 = ""
  loc_9F6DFC: FLdPr Me
  loc_9F6DFF: VCallAd Control_ID_TifaReceCbo
  loc_9F6E02: FStAdFunc var_B0
  loc_9F6E05: LitNothing
  loc_9F6E07: CastAd
  loc_9F6E0A: FStAdFunc var_9C
  loc_9F6E0D: FLdRfVar var_9C
  loc_9F6E10: FLdZeroAd var_B0
  loc_9F6E13: FStAdFuncNoPop
  loc_9F6E16: CastAd
  loc_9F6E19: FStAdFunc var_90
  loc_9F6E1C: FLdRfVar var_90
  loc_9F6E1F: FLdPr Me
  loc_9F6E22: MemLdRfVar from_stack_1.global_92
  loc_9F6E25: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F6E2A: IStI2 Cancel
  loc_9F6E2D: FFreeAd var_88 = "": var_90 = "": var_9C = ""
  loc_9F6E38: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94C4D0
  'Data Table: 4BE560
  loc_94C4BC: FLdPr Me
  loc_94C4BF: VCallAd Control_ID_FiltroMsk
  loc_94C4C2: CVarAd
  loc_94C4C6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C4CB: FFree1Var var_94 = ""
  loc_94C4CE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A50718
  'Data Table: 4BE560
  loc_A50474: ILdRf Me
  loc_A50477: CastAd
  loc_A5047A: FStAdFunc var_88
  loc_A5047D: FLdRfVar var_88
  loc_A50480: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A50485: FFree1Ad var_88
  loc_A50488: FLdPr Me
  loc_A5048B: VCallAd Control_ID_FiltroMsk
  loc_A5048E: FStAdFunc var_88
  loc_A50491: FLdPr var_88
  loc_A50494: LateIdLdVar var_98 DispID_22 0
  loc_A5049B: CStrVarTmp
  loc_A5049C: FStStrNoPop var_9C
  loc_A5049F: ImpAdCallI2 Trim$()
  loc_A504A4: FStStrNoPop var_A0
  loc_A504A7: LitStr vbNullString
  loc_A504AA: NeStr
  loc_A504AC: FFreeStr var_9C = ""
  loc_A504B3: FFree1Ad var_88
  loc_A504B6: FFree1Var var_98 = ""
  loc_A504B9: BranchF loc_A505E3
  loc_A504BC: FLdRfVar var_A2
  loc_A504BF: FLdPr Me
  loc_A504C2: VCallAd Control_ID_FiltroCbo
  loc_A504C5: FStAdFunc var_88
  loc_A504C8: FLdPr var_88
  loc_A504CB:  = Me.ListIndex
  loc_A504D0: FLdI2 var_A2
  loc_A504D3: LitI2_Byte 0
  loc_A504D5: EqI2
  loc_A504D6: FFree1Ad var_88
  loc_A504D9: BranchF loc_A5054B
  loc_A504DC: LitStr "CodiOrco = "
  loc_A504DF: FLdPr Me
  loc_A504E2: VCallAd Control_ID_FiltroMsk
  loc_A504E5: FStAdFunc var_88
  loc_A504E8: FLdPr var_88
  loc_A504EB: LateIdLdVar var_98 DispID_22 0
  loc_A504F2: CStrVarTmp
  loc_A504F3: FStStrNoPop var_9C
  loc_A504F6: ConcatStr
  loc_A504F7: PopTmpLdAdStr
  loc_A504FB: FLdPr Me
  loc_A504FE: MemLdRfVar from_stack_1.global_52
  loc_A50501: NewIfNullPr clsrecepcion
  loc_A50504: Call clsrecepcion.Filter(from_stack_1v)
  loc_A50509: FFreeStr var_9C = ""
  loc_A50510: FFree1Ad var_88
  loc_A50513: FFree1Var var_98 = ""
  loc_A50516: LitStr "número de la Orden de Compra sea igual a:"
  loc_A50519: FLdPr Me
  loc_A5051C: VCallAd Control_ID_FiltroMsk
  loc_A5051F: FStAdFunc var_88
  loc_A50522: FLdPr var_88
  loc_A50525: LateIdLdVar var_98 DispID_22 0
  loc_A5052C: CStrVarTmp
  loc_A5052D: FStStrNoPop var_9C
  loc_A50530: ConcatStr
  loc_A50531: FStStrNoPop var_A0
  loc_A50534: FLdPr Me
  loc_A50537: MemStStrCopy
  loc_A5053B: FFreeStr var_9C = ""
  loc_A50542: FFree1Ad var_88
  loc_A50545: FFree1Var var_98 = ""
  loc_A50548: Branch loc_A505E0
  loc_A5054B: FLdRfVar var_A2
  loc_A5054E: FLdPr Me
  loc_A50551: VCallAd Control_ID_FiltroCbo
  loc_A50554: FStAdFunc var_88
  loc_A50557: FLdPr var_88
  loc_A5055A:  = Me.ListIndex
  loc_A5055F: FLdI2 var_A2
  loc_A50562: LitI2_Byte 1
  loc_A50564: EqI2
  loc_A50565: FFree1Ad var_88
  loc_A50568: BranchF loc_A505E0
  loc_A5056B: LitStr "ExpeImpu LIKE '"
  loc_A5056E: FLdPr Me
  loc_A50571: VCallAd Control_ID_FiltroMsk
  loc_A50574: FStAdFunc var_88
  loc_A50577: FLdPr var_88
  loc_A5057A: LateIdLdVar var_98 DispID_22 0
  loc_A50581: CStrVarTmp
  loc_A50582: FStStrNoPop var_9C
  loc_A50585: ConcatStr
  loc_A50586: FStStrNoPop var_A0
  loc_A50589: LitStr Chr(37) & "'"
  loc_A5058C: ConcatStr
  loc_A5058D: PopTmpLdAdStr
  loc_A50591: FLdPr Me
  loc_A50594: MemLdRfVar from_stack_1.global_52
  loc_A50597: NewIfNullPr clsrecepcion
  loc_A5059A: Call clsrecepcion.Filter(from_stack_1v)
  loc_A5059F: FFreeStr var_9C = "": var_A0 = ""
  loc_A505A8: FFree1Ad var_88
  loc_A505AB: FFree1Var var_98 = ""
  loc_A505AE: LitStr "Expediente comienza con: "
  loc_A505B1: FLdPr Me
  loc_A505B4: VCallAd Control_ID_FiltroMsk
  loc_A505B7: FStAdFunc var_88
  loc_A505BA: FLdPr var_88
  loc_A505BD: LateIdLdVar var_98 DispID_22 0
  loc_A505C4: CStrVarTmp
  loc_A505C5: FStStrNoPop var_9C
  loc_A505C8: ConcatStr
  loc_A505C9: FStStrNoPop var_A0
  loc_A505CC: FLdPr Me
  loc_A505CF: MemStStrCopy
  loc_A505D3: FFreeStr var_9C = ""
  loc_A505DA: FFree1Ad var_88
  loc_A505DD: FFree1Var var_98 = ""
  loc_A505E0: Branch loc_A50607
  loc_A505E3: LitStr vbNullString
  loc_A505E6: FStStrCopy var_9C
  loc_A505E9: FLdRfVar var_9C
  loc_A505EC: FLdPr Me
  loc_A505EF: MemLdRfVar from_stack_1.global_52
  loc_A505F2: NewIfNullPr clsrecepcion
  loc_A505F5: Call clsrecepcion.Filter(from_stack_1v)
  loc_A505FA: FFree1Str var_9C
  loc_A505FD: LitStr vbNullString
  loc_A50600: FLdPr Me
  loc_A50603: MemStStrCopy
  loc_A50607: FLdRfVar var_AC
  loc_A5060A: FLdPr Me
  loc_A5060D: MemLdRfVar from_stack_1.global_52
  loc_A50610: NewIfNullPr clsrecepcion
  loc_A50613: from_stack_1 = clsrecepcion.RecordCount
  loc_A50618: ILdRf var_AC
  loc_A5061B: LitI4 0
  loc_A50620: GtI4
  loc_A50621: BranchF loc_A506CE
  loc_A50624: FLdPr Me
  loc_A50627: MemLdRfVar from_stack_1.global_52
  loc_A5062A: NewIfNullAd
  loc_A5062D: FStAd var_B0 
  loc_A50631: FLdRfVar var_B0
  loc_A50634: CVarRef
  loc_A50639: ILdRf Me
  loc_A5063C: CastAd
  loc_A5063F: FStAdFunc var_88
  loc_A50642: FLdRfVar var_88
  loc_A50645: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A5064A: ILdRf var_B0
  loc_A5064D: CastAd
  loc_A50650: FLdPr Me
  loc_A50653: MemStAdFunc
  loc_A50657: FFreeAd var_88 = ""
  loc_A5065E: LitI4 0
  loc_A50663: LitI4 1
  loc_A50668: FLdRfVar var_C4
  loc_A5066B: Redim
  loc_A50675: FLdPr Me
  loc_A50678: MemLdRfVar from_stack_1.global_52
  loc_A5067B: NewIfNullAd
  loc_A5067E: FStAd var_88 
  loc_A50682: FLdRfVar var_88
  loc_A50685: CVarRef
  loc_A5068A: ParmAry1St
  loc_A50690: FLdPr Me
  loc_A50693: VCallAd Control_ID_dgdABMS
  loc_A50696: CVarAd
  loc_A5069A: ParmAry1St
  loc_A506A0: FLdRfVar var_C4
  loc_A506A3: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A506A8: ILdRf var_88
  loc_A506AB: CastAd
  loc_A506AE: FLdPr Me
  loc_A506B1: MemStAdFunc
  loc_A506B5: FLdRfVar var_C4
  loc_A506B8: Erase
  loc_A506B9: FFree1Ad var_88
  loc_A506BC: LitI2_Byte 0
  loc_A506BE: LitVarI2 var_98, 0
  loc_A506C3: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A506C8: FFree1Var var_98 = ""
  loc_A506CB: Branch loc_A506E2
  loc_A506CE: ILdRf Me
  loc_A506D1: CastAd
  loc_A506D4: FStAdFunc var_88
  loc_A506D7: FLdRfVar var_88
  loc_A506DA: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A506DF: FFree1Ad var_88
  loc_A506E2: FLdPr Me
  loc_A506E5: VCallAd Control_ID_dgdABMS
  loc_A506E8: FStAdFunc var_B0
  loc_A506EB: LitI4 0
  loc_A506F0: FStStrCopy var_9C
  loc_A506F3: FLdRfVar var_9C
  loc_A506F6: FLdPr Me
  loc_A506F9: MemLdStr global_104
  loc_A506FC: FLdZeroAd var_B0
  loc_A506FF: FStAdFunc var_88
  loc_A50702: FLdRfVar var_88
  loc_A50705: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A5070A: FFree1Str var_9C
  loc_A5070D: FFreeAd var_88 = ""
  loc_A50714: ExitProcHresult
  loc_A50717: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '996AE4
  'Data Table: 4BE560
  loc_996A80: ILdI2 KeyAscii
  loc_996A83: LitI2_Byte &H27
  loc_996A85: EqI2
  loc_996A86: BranchF loc_996A8E
  loc_996A89: LitI2_Byte 0
  loc_996A8B: IStI2 KeyAscii
  loc_996A8E: FLdRfVar var_88
  loc_996A91: FLdPr Me
  loc_996A94: MemLdRfVar from_stack_1.global_52
  loc_996A97: NewIfNullPr clsrecepcion
  loc_996A9A: from_stack_1 = clsrecepcion.RecordCount
  loc_996A9F: ILdRf var_88
  loc_996AA2: LitI4 0
  loc_996AA7: EqI4
  loc_996AA8: ILdI2 KeyAscii
  loc_996AAB: CI4UI1
  loc_996AAC: LitI4 8
  loc_996AB1: NeI4
  loc_996AB2: AndI4
  loc_996AB3: FLdPr Me
  loc_996AB6: VCallAd Control_ID_FiltroMsk
  loc_996AB9: FStAdFunc var_8C
  loc_996ABC: FLdPr var_8C
  loc_996ABF: LateIdLdVar var_9C DispID_16 0
  loc_996AC6: CStrVarTmp
  loc_996AC7: FStStrNoPop var_A0
  loc_996ACA: LitStr vbNullString
  loc_996ACD: EqStr
  loc_996ACF: AndI4
  loc_996AD0: FFree1Str var_A0
  loc_996AD3: FFree1Ad var_8C
  loc_996AD6: FFree1Var var_9C = ""
  loc_996AD9: BranchF loc_996AE1
  loc_996ADC: LitI2_Byte 0
  loc_996ADE: IStI2 KeyAscii
  loc_996AE1: ExitProcHresult
End Sub

Private Sub MoanReceTxt_Validate(Cancel As Boolean) '9BEB80
  'Data Table: 4BE560
  loc_9BEAC4: FLdRfVar var_8A
  loc_9BEAC7: FLdPr Me
  loc_9BEACA: VCallAd Control_ID_cmdCancelar
  loc_9BEACD: FStAdFunc var_88
  loc_9BEAD0: FLdPr var_88
  loc_9BEAD3:  = Me.Value
  loc_9BEAD8: FLdI2 var_8A
  loc_9BEADB: NotI4
  loc_9BEADC: FLdRfVar var_92
  loc_9BEADF: FLdPr Me
  loc_9BEAE2: VCallAd Control_ID_MoanReceTxt
  loc_9BEAE5: FStAdFunc var_90
  loc_9BEAE8: FLdPr var_90
  loc_9BEAEB:  = Me.Enabled
  loc_9BEAF0: FLdI2 var_92
  loc_9BEAF3: AndI4
  loc_9BEAF4: FFreeAd var_88 = ""
  loc_9BEAFB: BranchF loc_9BEB7C
  loc_9BEAFE: FLdRfVar var_98
  loc_9BEB01: FLdPr Me
  loc_9BEB04: VCallAd Control_ID_MoanReceTxt
  loc_9BEB07: FStAdFunc var_88
  loc_9BEB0A: FLdPr var_88
  loc_9BEB0D:  = Me.Text
  loc_9BEB12: LitI2_Byte 0
  loc_9BEB14: PopTmpLdAd2 var_9A
  loc_9BEB17: LitI2_Byte 0
  loc_9BEB19: PopTmpLdAd2 var_92
  loc_9BEB1C: LitI2_Byte 0
  loc_9BEB1E: PopTmpLdAd2 var_8A
  loc_9BEB21: ILdRf var_98
  loc_9BEB24: LitStr "el motivo de baja"
  loc_9BEB27: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BEB2C: FStStrNoPop var_A0
  loc_9BEB2F: FLdPr Me
  loc_9BEB32: MemStStrCopy
  loc_9BEB36: FFreeStr var_98 = ""
  loc_9BEB3D: FFree1Ad var_88
  loc_9BEB40: FLdPr Me
  loc_9BEB43: VCallAd Control_ID_MoanReceTxt
  loc_9BEB46: FStAdFunc var_A8
  loc_9BEB49: LitNothing
  loc_9BEB4B: CastAd
  loc_9BEB4E: FStAdFunc var_A4
  loc_9BEB51: FLdRfVar var_A4
  loc_9BEB54: FLdZeroAd var_A8
  loc_9BEB57: FStAdFuncNoPop
  loc_9BEB5A: CastAd
  loc_9BEB5D: FStAdFunc var_90
  loc_9BEB60: FLdRfVar var_90
  loc_9BEB63: FLdPr Me
  loc_9BEB66: MemLdRfVar from_stack_1.global_92
  loc_9BEB69: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BEB6E: IStI2 Cancel
  loc_9BEB71: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BEB7C: ExitProcHresult
End Sub

Private Sub NufaReceMsk_UnknownEvent_0 '94C3B0
  'Data Table: 4BE560
  loc_94C39C: FLdPr Me
  loc_94C39F: VCallAd Control_ID_NufaReceMsk
  loc_94C3A2: CVarAd
  loc_94C3A6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C3AB: FFree1Var var_94 = ""
  loc_94C3AE: ExitProcHresult
End Sub

Private Sub NufaReceMsk_UnknownEvent_1 '9A3D28
  'Data Table: 4BE560
  loc_9A3CC0: FLdPr Me
  loc_9A3CC3: VCallAd Control_ID_NufaReceMsk
  loc_9A3CC6: FStAdFunc var_88
  loc_9A3CC9: FLdPr var_88
  loc_9A3CCC: LateIdLdVar var_98 DispID_22 0
  loc_9A3CD3: PopAd
  loc_9A3CD5: LitI4 1
  loc_9A3CDA: LitI4 1
  loc_9A3CDF: LitVarStr var_B8, "00000000"
  loc_9A3CE4: FStVarCopyObj var_C8
  loc_9A3CE7: FLdRfVar var_C8
  loc_9A3CEA: FLdRfVar var_98
  loc_9A3CED: CStrVarTmp
  loc_9A3CEE: CVarStr var_A8
  loc_9A3CF1: FLdRfVar var_D8
  loc_9A3CF4: ImpAdCallFPR4  = Format(, )
  loc_9A3CF9: FLdRfVar var_D8
  loc_9A3CFC: CStrVarTmp
  loc_9A3CFD: CVarStr var_E8
  loc_9A3D00: PopAdLdVar
  loc_9A3D01: FLdPr Me
  loc_9A3D04: VCallAd Control_ID_NufaReceMsk
  loc_9A3D07: FStAdFunc var_FC
  loc_9A3D0A: FLdPr var_FC
  loc_9A3D0D: LateIdSt
  loc_9A3D12: FFreeAd var_88 = ""
  loc_9A3D19: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = ""
  loc_9A3D26: ExitProcHresult
End Sub

Private Sub NufaReceMsk_UnknownEvent_8 'A46E5C
  'Data Table: 4BE560
  loc_A46C3C: FLdRfVar var_8A
  loc_A46C3F: FLdPr Me
  loc_A46C42: VCallAd Control_ID_cmdCancelar
  loc_A46C45: FStAdFunc var_88
  loc_A46C48: FLdPr var_88
  loc_A46C4B:  = Me.Value
  loc_A46C50: FLdI2 var_8A
  loc_A46C53: NotI4
  loc_A46C54: FLdPr Me
  loc_A46C57: VCallAd Control_ID_NufaReceMsk
  loc_A46C5A: FStAdFunc var_90
  loc_A46C5D: FLdPr var_90
  loc_A46C60: LateIdLdVar var_A0 DispID_13 -32767
  loc_A46C67: CBoolVar
  loc_A46C69: AndI4
  loc_A46C6A: FFreeAd var_88 = ""
  loc_A46C71: FFree1Var var_A0 = ""
  loc_A46C74: BranchF loc_A46E5A
  loc_A46C77: FLdRfVar var_144
  loc_A46C7A: FLdRfVar var_B4
  loc_A46C7D: LitVarStr var_B0, "ExpeImpu"
  loc_A46C82: PopAdLdVar
  loc_A46C83: FLdRfVar var_90
  loc_A46C86: FLdRfVar var_88
  loc_A46C89: FLdPr Me
  loc_A46C8C: MemLdRfVar from_stack_1.global_52
  loc_A46C8F: NewIfNullPr clsrecepcion
  loc_A46C92: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A46C97: FLdPr var_88
  loc_A46C9A:  = Me.Fields
  loc_A46C9F: FLdPr var_90
  loc_A46CA2: from_stack_2 = Me.Item(from_stack_1)
  loc_A46CA7: FLdPr var_B4
  loc_A46CAA:  = Me.Value
  loc_A46CAF: FLdRfVar var_158
  loc_A46CB2: FLdRfVar var_D0
  loc_A46CB5: LitVarStr var_CC, "CucuPers"
  loc_A46CBA: PopAdLdVar
  loc_A46CBB: FLdRfVar var_BC
  loc_A46CBE: FLdRfVar var_B8
  loc_A46CC1: FLdPr Me
  loc_A46CC4: MemLdRfVar from_stack_1.global_52
  loc_A46CC7: NewIfNullPr clsrecepcion
  loc_A46CCA: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A46CCF: FLdPr var_B8
  loc_A46CD2:  = Me.Fields
  loc_A46CD7: FLdPr var_BC
  loc_A46CDA: from_stack_2 = Me.Item(from_stack_1)
  loc_A46CDF: FLdPr var_D0
  loc_A46CE2:  = Me.Value
  loc_A46CE7: FLdRfVar var_D8
  loc_A46CEA: FLdPr Me
  loc_A46CED: VCallAd Control_ID_TifaReceCbo
  loc_A46CF0: FStAdFunc var_D4
  loc_A46CF3: FLdPr var_D4
  loc_A46CF6:  = Me.Text
  loc_A46CFB: FLdPr Me
  loc_A46CFE: VCallAd Control_ID_SufaReceMsk
  loc_A46D01: FStAdFunc var_DC
  loc_A46D04: FLdPr var_DC
  loc_A46D07: LateIdLdVar var_A0 DispID_22 0
  loc_A46D0E: PopAd
  loc_A46D10: FLdPr Me
  loc_A46D13: VCallAd Control_ID_NufaReceMsk
  loc_A46D16: FStAdFunc var_E4
  loc_A46D19: FLdPr var_E4
  loc_A46D1C: LateIdLdVar var_F4 DispID_22 0
  loc_A46D23: PopAd
  loc_A46D25: FLdRfVar var_170
  loc_A46D28: FLdRfVar var_118
  loc_A46D2B: LitVarStr var_114, "CodiOrco"
  loc_A46D30: PopAdLdVar
  loc_A46D31: FLdRfVar var_104
  loc_A46D34: FLdRfVar var_100
  loc_A46D37: FLdPr Me
  loc_A46D3A: MemLdRfVar from_stack_1.global_52
  loc_A46D3D: NewIfNullPr clsrecepcion
  loc_A46D40: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A46D45: FLdPr var_100
  loc_A46D48:  = Me.Fields
  loc_A46D4D: FLdPr var_104
  loc_A46D50: from_stack_2 = Me.Item(from_stack_1)
  loc_A46D55: FLdPr var_118
  loc_A46D58:  = Me.Value
  loc_A46D5D: FLdRfVar var_180
  loc_A46D60: FLdRfVar var_134
  loc_A46D63: LitVarStr var_130, "CodiRece"
  loc_A46D68: PopAdLdVar
  loc_A46D69: FLdRfVar var_120
  loc_A46D6C: FLdRfVar var_11C
  loc_A46D6F: FLdPr Me
  loc_A46D72: MemLdRfVar from_stack_1.global_52
  loc_A46D75: NewIfNullPr clsrecepcion
  loc_A46D78: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A46D7D: FLdPr var_11C
  loc_A46D80:  = Me.Fields
  loc_A46D85: FLdPr var_120
  loc_A46D88: from_stack_2 = Me.Item(from_stack_1)
  loc_A46D8D: FLdPr var_134
  loc_A46D90:  = Me.Value
  loc_A46D95: FLdRfVar var_180
  loc_A46D98: CI2Var
  loc_A46D99: FLdRfVar var_170
  loc_A46D9C: CI2Var
  loc_A46D9D: ILdRf var_D8
  loc_A46DA0: FLdRfVar var_A0
  loc_A46DA3: CStrVarTmp
  loc_A46DA4: FStStrNoPop var_E0
  loc_A46DA7: ConcatStr
  loc_A46DA8: FStStrNoPop var_F8
  loc_A46DAB: FLdRfVar var_F4
  loc_A46DAE: CStrVarTmp
  loc_A46DAF: FStStrNoPop var_FC
  loc_A46DB2: ConcatStr
  loc_A46DB3: FStStrNoPop var_160
  loc_A46DB6: FLdRfVar var_158
  loc_A46DB9: CStrVarTmp
  loc_A46DBA: FStStrNoPop var_15C
  loc_A46DBD: FLdRfVar var_144
  loc_A46DC0: CStrVarTmp
  loc_A46DC1: FStStrNoPop var_148
  loc_A46DC4: LitI4 0
  loc_A46DC9: ImpAdLdI2 MemVar_C3D064
  loc_A46DCC: ImpAdCallI2 Proc_266_24_AF5868(, , , , , , )
  loc_A46DD1: FStStrNoPop var_184
  loc_A46DD4: FLdPr Me
  loc_A46DD7: MemStStrCopy
  loc_A46DDB: FFreeStr var_D8 = "": var_E0 = "": var_F8 = "": var_FC = "": var_148 = "": var_15C = "": var_160 = ""
  loc_A46DEE: FFreeAd var_88 = "": var_90 = "": var_B8 = "": var_BC = "": var_D4 = "": var_DC = "": var_E4 = "": var_100 = "": var_104 = "": var_11C = "": var_120 = "": var_B4 = "": var_D0 = "": var_118 = ""
  loc_A46E0F: FFreeVar var_A0 = "": var_F4 = "": var_144 = "": var_158 = "": var_170 = ""
  loc_A46E1E: FLdPr Me
  loc_A46E21: VCallAd Control_ID_NufaReceMsk
  loc_A46E24: FStAdFunc var_B8
  loc_A46E27: LitNothing
  loc_A46E29: CastAd
  loc_A46E2C: FStAdFunc var_B4
  loc_A46E2F: FLdRfVar var_B4
  loc_A46E32: FLdZeroAd var_B8
  loc_A46E35: FStAdFuncNoPop
  loc_A46E38: CastAd
  loc_A46E3B: FStAdFunc var_90
  loc_A46E3E: FLdRfVar var_90
  loc_A46E41: FLdPr Me
  loc_A46E44: MemLdRfVar from_stack_1.global_92
  loc_A46E47: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A46E4C: IStI2 Cancel
  loc_A46E4F: FFreeAd var_88 = "": var_90 = "": var_B4 = ""
  loc_A46E5A: ExitProcHresult
End Sub

Private Sub NufaReceMsk_KeyPress(KeyAscii As Integer) '959468
  'Data Table: 4BE560
  loc_959450: LitStr "0123456789"
  loc_959453: FStStrCopy var_88
  loc_959456: FLdRfVar var_88
  loc_959459: ILdRf KeyAscii
  loc_95945C: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_959461: IStI2 KeyAscii
  loc_959464: FFree1Str var_88
  loc_959467: ExitProcHresult
End Sub

Private Sub SufaReceMsk_UnknownEvent_0 '94C2D8
  'Data Table: 4BE560
  loc_94C2C4: FLdPr Me
  loc_94C2C7: VCallAd Control_ID_SufaReceMsk
  loc_94C2CA: CVarAd
  loc_94C2CE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C2D3: FFree1Var var_94 = ""
  loc_94C2D6: ExitProcHresult
End Sub

Private Sub SufaReceMsk_UnknownEvent_1 '9A3DDC
  'Data Table: 4BE560
  loc_9A3D74: FLdPr Me
  loc_9A3D77: VCallAd Control_ID_SufaReceMsk
  loc_9A3D7A: FStAdFunc var_88
  loc_9A3D7D: FLdPr var_88
  loc_9A3D80: LateIdLdVar var_98 DispID_22 0
  loc_9A3D87: PopAd
  loc_9A3D89: LitI4 1
  loc_9A3D8E: LitI4 1
  loc_9A3D93: LitVarStr var_B8, "0000"
  loc_9A3D98: FStVarCopyObj var_C8
  loc_9A3D9B: FLdRfVar var_C8
  loc_9A3D9E: FLdRfVar var_98
  loc_9A3DA1: CStrVarTmp
  loc_9A3DA2: CVarStr var_A8
  loc_9A3DA5: FLdRfVar var_D8
  loc_9A3DA8: ImpAdCallFPR4  = Format(, )
  loc_9A3DAD: FLdRfVar var_D8
  loc_9A3DB0: CStrVarTmp
  loc_9A3DB1: CVarStr var_E8
  loc_9A3DB4: PopAdLdVar
  loc_9A3DB5: FLdPr Me
  loc_9A3DB8: VCallAd Control_ID_SufaReceMsk
  loc_9A3DBB: FStAdFunc var_FC
  loc_9A3DBE: FLdPr var_FC
  loc_9A3DC1: LateIdSt
  loc_9A3DC6: FFreeAd var_88 = ""
  loc_9A3DCD: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = ""
  loc_9A3DDA: ExitProcHresult
End Sub

Private Sub SufaReceMsk_UnknownEvent_8 '9C9D64
  'Data Table: 4BE560
  loc_9C9C94: FLdRfVar var_8A
  loc_9C9C97: FLdPr Me
  loc_9C9C9A: VCallAd Control_ID_cmdCancelar
  loc_9C9C9D: FStAdFunc var_88
  loc_9C9CA0: FLdPr var_88
  loc_9C9CA3:  = Me.Value
  loc_9C9CA8: FLdI2 var_8A
  loc_9C9CAB: NotI4
  loc_9C9CAC: FLdPr Me
  loc_9C9CAF: VCallAd Control_ID_SufaReceMsk
  loc_9C9CB2: FStAdFunc var_90
  loc_9C9CB5: FLdPr var_90
  loc_9C9CB8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C9CBF: CBoolVar
  loc_9C9CC1: AndI4
  loc_9C9CC2: FFreeAd var_88 = ""
  loc_9C9CC9: FFree1Var var_A0 = ""
  loc_9C9CCC: BranchF loc_9C9D60
  loc_9C9CCF: FLdPr Me
  loc_9C9CD2: VCallAd Control_ID_SufaReceMsk
  loc_9C9CD5: FStAdFunc var_88
  loc_9C9CD8: FLdPr var_88
  loc_9C9CDB: LateIdLdVar var_A0 DispID_22 0
  loc_9C9CE2: PopAd
  loc_9C9CE4: FLdRfVar var_A4
  loc_9C9CE7: FLdPr Me
  loc_9C9CEA: VCallAd Control_ID_TifaReceCbo
  loc_9C9CED: FStAdFunc var_90
  loc_9C9CF0: FLdPr var_90
  loc_9C9CF3:  = Me.Text
  loc_9C9CF8: ILdRf var_A4
  loc_9C9CFB: FLdRfVar var_A0
  loc_9C9CFE: CStrVarTmp
  loc_9C9CFF: FStStrNoPop var_A8
  loc_9C9D02: ImpAdCallI2 Proc_266_22_990D68(, )
  loc_9C9D07: FStStrNoPop var_AC
  loc_9C9D0A: FLdPr Me
  loc_9C9D0D: MemStStrCopy
  loc_9C9D11: FFreeStr var_A8 = "": var_A4 = ""
  loc_9C9D1A: FFreeAd var_88 = ""
  loc_9C9D21: FFree1Var var_A0 = ""
  loc_9C9D24: FLdPr Me
  loc_9C9D27: VCallAd Control_ID_SufaReceMsk
  loc_9C9D2A: FStAdFunc var_B4
  loc_9C9D2D: LitNothing
  loc_9C9D2F: CastAd
  loc_9C9D32: FStAdFunc var_B0
  loc_9C9D35: FLdRfVar var_B0
  loc_9C9D38: FLdZeroAd var_B4
  loc_9C9D3B: FStAdFuncNoPop
  loc_9C9D3E: CastAd
  loc_9C9D41: FStAdFunc var_90
  loc_9C9D44: FLdRfVar var_90
  loc_9C9D47: FLdPr Me
  loc_9C9D4A: MemLdRfVar from_stack_1.global_92
  loc_9C9D4D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C9D52: IStI2 KeyAscii
  loc_9C9D55: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9C9D60: ExitProcHresult
  loc_9C9D61: ConcatVar var_17C4
End Sub

Private Sub SufaReceMsk_KeyPress(KeyAscii As Integer) '954E0C
  'Data Table: 4BE560
  loc_954DF4: LitStr "0123456789"
  loc_954DF7: FStStrCopy var_88
  loc_954DFA: FLdRfVar var_88
  loc_954DFD: ILdRf KeyAscii
  loc_954E00: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_954E05: IStI2 KeyAscii
  loc_954E08: FFree1Str var_88
  loc_954E0B: ExitProcHresult
End Sub

Private Sub ItemCompraFlex_UnknownEvent_8 'ADFCCC
  'Data Table: 4BE560
  loc_ADF644: FLdPr Me
  loc_ADF647: VCallAd Control_ID_ItemCompraFlex
  loc_ADF64A: FStAdFunc var_88
  loc_ADF64D: FLdPr var_88
  loc_ADF650: LateIdLdVar var_98 DispID_13 -32767
  loc_ADF657: CBoolVar
  loc_ADF659: FFree1Ad var_88
  loc_ADF65C: FFree1Var var_98 = ""
  loc_ADF65F: BranchF loc_ADFCC4
  loc_ADF662: FLdPr Me
  loc_ADF665: VCallAd Control_ID_ItemCompraFlex
  loc_ADF668: FStAdFunc var_88
  loc_ADF66B: FLdPr var_88
  loc_ADF66E: LateIdLdVar var_98 DispID_10 0
  loc_ADF675: CI4Var
  loc_ADF677: LitI4 0
  loc_ADF67C: GtI4
  loc_ADF67D: FFree1Ad var_88
  loc_ADF680: FFree1Var var_98 = ""
  loc_ADF683: BranchF loc_ADFCC4
  loc_ADF686: FLdPr Me
  loc_ADF689: VCallAd Control_ID_ItemCompraFlex
  loc_ADF68C: FStAdFunc var_88
  loc_ADF68F: FLdPr var_88
  loc_ADF692: LateIdLdVar var_98 DispID_10 0
  loc_ADF699: CI4Var
  loc_ADF69B: CVarI4
  loc_ADF69F: PopAdLdVar
  loc_ADF6A0: LitVarI4
  loc_ADF6A8: PopAdLdVar
  loc_ADF6A9: FLdPr Me
  loc_ADF6AC: VCallAd Control_ID_ItemCompraFlex
  loc_ADF6AF: FStAdFunc var_DC
  loc_ADF6B2: FLdPr var_DC
  loc_ADF6B5: LateIdCallLdVar
  loc_ADF6BF: PopAd
  loc_ADF6C1: LitStr "0"
  loc_ADF6C4: LitI2_Byte &HFF
  loc_ADF6C6: LitI2_Byte 0
  loc_ADF6C8: LitI2_Byte 0
  loc_ADF6CA: FLdRfVar var_EC
  loc_ADF6CD: CStrVarTmp
  loc_ADF6CE: FStStrNoPop var_F0
  loc_ADF6D1: LitStr "decimal"
  loc_ADF6D4: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_ADF6D9: FStStrNoPop var_F4
  loc_ADF6DC: FLdPr Me
  loc_ADF6DF: MemStStrCopy
  loc_ADF6E3: FFreeStr var_F0 = ""
  loc_ADF6EA: FFreeAd var_88 = ""
  loc_ADF6F1: FFreeVar var_98 = ""
  loc_ADF6F8: FLdPr Me
  loc_ADF6FB: MemLdStr global_92
  loc_ADF6FE: LitStr vbNullString
  loc_ADF701: NeStr
  loc_ADF703: BranchF loc_ADF733
  loc_ADF706: LitI4 0
  loc_ADF70B: FLdPr Me
  loc_ADF70E: MemLdStr global_92
  loc_ADF711: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ADF716: FLdPr Me
  loc_ADF719: VCallAd Control_ID_ItemCompraFlex
  loc_ADF71C: FStAdFunc var_88
  loc_ADF71F: FLdPr var_88
  loc_ADF722: LateIdCall
  loc_ADF72A: FFree1Ad var_88
  loc_ADF72D: LitI2_Byte &HFF
  loc_ADF72F: IStI2 KeyAscii
  loc_ADF732: ExitProcHresult
  loc_ADF733: FLdPr Me
  loc_ADF736: VCallAd Control_ID_ItemCompraFlex
  loc_ADF739: FStAdFunc var_88
  loc_ADF73C: FLdPr var_88
  loc_ADF73F: LateIdLdVar var_98 DispID_10 0
  loc_ADF746: CI4Var
  loc_ADF748: CVarI4
  loc_ADF74C: PopAdLdVar
  loc_ADF74D: LitVarI4
  loc_ADF755: PopAdLdVar
  loc_ADF756: FLdPr Me
  loc_ADF759: VCallAd Control_ID_ItemCompraFlex
  loc_ADF75C: FStAdFunc var_DC
  loc_ADF75F: FLdPr var_DC
  loc_ADF762: LateIdCallLdVar
  loc_ADF76C: CStrVarTmp
  loc_ADF76D: CVarStr var_104
  loc_ADF770: ImpAdCallI2 IsNumeric()
  loc_ADF775: FLdPr Me
  loc_ADF778: VCallAd Control_ID_ItemCompraFlex
  loc_ADF77B: FStAdFunc var_108
  loc_ADF77E: FLdPr var_108
  loc_ADF781: LateIdLdVar var_118 DispID_10 0
  loc_ADF788: CI4Var
  loc_ADF78A: CVarI4
  loc_ADF78E: PopAdLdVar
  loc_ADF78F: LitVarI4
  loc_ADF797: PopAdLdVar
  loc_ADF798: FLdPr Me
  loc_ADF79B: VCallAd Control_ID_ItemCompraFlex
  loc_ADF79E: FStAdFunc var_15C
  loc_ADF7A1: FLdPr var_15C
  loc_ADF7A4: LateIdCallLdVar
  loc_ADF7AE: CStrVarTmp
  loc_ADF7AF: CVarStr var_17C
  loc_ADF7B2: ImpAdCallI2 IsNumeric()
  loc_ADF7B7: AndI4
  loc_ADF7B8: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_ADF7C3: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_118 = "": var_16C = ""
  loc_ADF7D2: BranchF loc_ADF91F
  loc_ADF7D5: FLdPr Me
  loc_ADF7D8: VCallAd Control_ID_ItemCompraFlex
  loc_ADF7DB: FStAdFunc var_88
  loc_ADF7DE: FLdPr var_88
  loc_ADF7E1: LateIdLdVar var_98 DispID_10 0
  loc_ADF7E8: CI4Var
  loc_ADF7EA: CVarI4
  loc_ADF7EE: PopAdLdVar
  loc_ADF7EF: LitVarI4
  loc_ADF7F7: PopAdLdVar
  loc_ADF7F8: FLdPr Me
  loc_ADF7FB: VCallAd Control_ID_ItemCompraFlex
  loc_ADF7FE: FStAdFunc var_DC
  loc_ADF801: FLdPr var_DC
  loc_ADF804: LateIdCallLdVar
  loc_ADF80E: PopAd
  loc_ADF810: LitI4 3
  loc_ADF815: FLdRfVar var_EC
  loc_ADF818: CStrVarTmp
  loc_ADF819: FStStrNoPop var_F0
  loc_ADF81C: CR8Str
  loc_ADF81E: CVarR8
  loc_ADF822: FLdRfVar var_118
  loc_ADF825: ImpAdCallFPR4  = Round(, )
  loc_ADF82A: FLdPr Me
  loc_ADF82D: VCallAd Control_ID_ItemCompraFlex
  loc_ADF830: FStAdFunc var_108
  loc_ADF833: FLdPr var_108
  loc_ADF836: LateIdLdVar var_16C DispID_10 0
  loc_ADF83D: CI4Var
  loc_ADF83F: CVarI4
  loc_ADF843: PopAdLdVar
  loc_ADF844: LitVarI4
  loc_ADF84C: PopAdLdVar
  loc_ADF84D: FLdPr Me
  loc_ADF850: VCallAd Control_ID_ItemCompraFlex
  loc_ADF853: FStAdFunc var_15C
  loc_ADF856: FLdPr var_15C
  loc_ADF859: LateIdCallLdVar
  loc_ADF863: PopAd
  loc_ADF865: LitI4 3
  loc_ADF86A: FLdRfVar var_17C
  loc_ADF86D: CStrVarTmp
  loc_ADF86E: FStStrNoPop var_F4
  loc_ADF871: CR8Str
  loc_ADF873: CVarR8
  loc_ADF877: FLdRfVar var_1BC
  loc_ADF87A: ImpAdCallFPR4  = Round(, )
  loc_ADF87F: FLdPr Me
  loc_ADF882: VCallAd Control_ID_ItemCompraFlex
  loc_ADF885: FStAdFunc var_210
  loc_ADF888: FLdPr var_210
  loc_ADF88B: LateIdLdVar var_220 DispID_10 0
  loc_ADF892: CI4Var
  loc_ADF894: CVarI4
  loc_ADF898: PopAdLdVar
  loc_ADF899: LitVarI4
  loc_ADF8A1: PopAdLdVar
  loc_ADF8A2: LitI4 1
  loc_ADF8A7: LitI4 1
  loc_ADF8AC: LitVarStr var_1EC, "###,###,##0.000"
  loc_ADF8B1: FStVarCopyObj var_1FC
  loc_ADF8B4: FLdRfVar var_1FC
  loc_ADF8B7: FLdRfVar var_118
  loc_ADF8BA: FLdRfVar var_1BC
  loc_ADF8BD: MulVar var_1CC
  loc_ADF8C1: FStVar var_1DC
  loc_ADF8C5: FLdRfVar var_1DC
  loc_ADF8C8: FLdRfVar var_20C
  loc_ADF8CB: ImpAdCallFPR4  = Format(, )
  loc_ADF8D0: FLdRfVar var_20C
  loc_ADF8D3: CStrVarTmp
  loc_ADF8D4: CVarStr var_270
  loc_ADF8D7: PopAdLdVar
  loc_ADF8D8: FLdPr Me
  loc_ADF8DB: VCallAd Control_ID_ItemCompraFlex
  loc_ADF8DE: FStAdFunc var_284
  loc_ADF8E1: FLdPr var_284
  loc_ADF8E4: LateIdCallSt
  loc_ADF8EC: FFreeStr var_F0 = ""
  loc_ADF8F3: FFreeAd var_88 = "": var_DC = "": var_108 = "": var_15C = "": var_210 = ""
  loc_ADF902: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_16C = "": var_17C = "": var_1AC = "": var_118 = "": var_1BC = "": var_1DC = "": var_1FC = "": var_220 = "": var_20C = ""
  loc_ADF91F: FLdPr Me
  loc_ADF922: VCallAd Control_ID_ItemCompraFlex
  loc_ADF925: FStAdFunc var_88
  loc_ADF928: FLdPr var_88
  loc_ADF92B: LateIdLdVar var_98 DispID_10 0
  loc_ADF932: CI4Var
  loc_ADF934: CVarI4
  loc_ADF938: PopAdLdVar
  loc_ADF939: LitVarI4
  loc_ADF941: PopAdLdVar
  loc_ADF942: FLdPr Me
  loc_ADF945: VCallAd Control_ID_ItemCompraFlex
  loc_ADF948: FStAdFunc var_DC
  loc_ADF94B: FLdPr var_DC
  loc_ADF94E: LateIdCallLdVar
  loc_ADF958: CStrVarTmp
  loc_ADF959: FStStrNoPop var_F0
  loc_ADF95C: LitStr vbNullString
  loc_ADF95F: NeStr
  loc_ADF961: FFree1Str var_F0
  loc_ADF964: FFreeAd var_88 = ""
  loc_ADF96B: FFreeVar var_98 = ""
  loc_ADF972: BranchF loc_ADFA2F
  loc_ADF975: FLdPr Me
  loc_ADF978: VCallAd Control_ID_ItemCompraFlex
  loc_ADF97B: FStAdFunc var_88
  loc_ADF97E: FLdPr var_88
  loc_ADF981: LateIdLdVar var_98 DispID_10 0
  loc_ADF988: CI4Var
  loc_ADF98A: CVarI4
  loc_ADF98E: PopAdLdVar
  loc_ADF98F: LitVarI4
  loc_ADF997: PopAdLdVar
  loc_ADF998: FLdPr Me
  loc_ADF99B: VCallAd Control_ID_ItemCompraFlex
  loc_ADF99E: FStAdFunc var_DC
  loc_ADF9A1: FLdPr var_DC
  loc_ADF9A4: LateIdCallLdVar
  loc_ADF9AE: PopAd
  loc_ADF9B0: FLdPr Me
  loc_ADF9B3: VCallAd Control_ID_ItemCompraFlex
  loc_ADF9B6: FStAdFunc var_108
  loc_ADF9B9: FLdPr var_108
  loc_ADF9BC: LateIdLdVar var_17C DispID_10 0
  loc_ADF9C3: CI4Var
  loc_ADF9C5: CVarI4
  loc_ADF9C9: PopAdLdVar
  loc_ADF9CA: LitVarI4
  loc_ADF9D2: PopAdLdVar
  loc_ADF9D3: LitI4 1
  loc_ADF9D8: LitI4 1
  loc_ADF9DD: LitVarStr var_128, "0.000"
  loc_ADF9E2: FStVarCopyObj var_118
  loc_ADF9E5: FLdRfVar var_118
  loc_ADF9E8: FLdRfVar var_EC
  loc_ADF9EB: CStrVarTmp
  loc_ADF9EC: CVarStr var_104
  loc_ADF9EF: FLdRfVar var_16C
  loc_ADF9F2: ImpAdCallFPR4  = Format(, )
  loc_ADF9F7: FLdRfVar var_16C
  loc_ADF9FA: CStrVarTmp
  loc_ADF9FB: CVarStr var_1AC
  loc_ADF9FE: PopAdLdVar
  loc_ADF9FF: FLdPr Me
  loc_ADFA02: VCallAd Control_ID_ItemCompraFlex
  loc_ADFA05: FStAdFunc var_15C
  loc_ADFA08: FLdPr var_15C
  loc_ADFA0B: LateIdCallSt
  loc_ADFA13: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_ADFA1E: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_118 = "": var_17C = "": var_16C = ""
  loc_ADFA2F: LitI2_Byte 1
  loc_ADFA31: FLdPr Me
  loc_ADFA34: MemLdRfVar from_stack_1.global_68
  loc_ADFA37: FLdPr Me
  loc_ADFA3A: VCallAd Control_ID_ItemCompraFlex
  loc_ADFA3D: FStAdFunc var_88
  loc_ADFA40: FLdPr var_88
  loc_ADFA43: LateIdLdVar var_98 DispID_4 0
  loc_ADFA4A: CI4Var
  loc_ADFA4C: LitI4 1
  loc_ADFA51: SubI4
  loc_ADFA52: CI2I4
  loc_ADFA53: FFree1Ad var_88
  loc_ADFA56: FFree1Var var_98 = ""
  loc_ADFA59: ForI2 var_288
  loc_ADFA5F: FLdPr Me
  loc_ADFA62: MemLdI2 global_68
  loc_ADFA65: CI4UI1
  loc_ADFA66: CVarI4
  loc_ADFA6A: PopAdLdVar
  loc_ADFA6B: LitVarI4
  loc_ADFA73: PopAdLdVar
  loc_ADFA74: FLdPr Me
  loc_ADFA77: VCallAd Control_ID_ItemCompraFlex
  loc_ADFA7A: FStAdFunc var_88
  loc_ADFA7D: FLdPr var_88
  loc_ADFA80: LateIdCallLdVar
  loc_ADFA8A: CStrVarTmp
  loc_ADFA8B: FStStrNoPop var_F0
  loc_ADFA8E: CI2Str
  loc_ADFA90: FLdPr Me
  loc_ADFA93: MemStI2 global_88
  loc_ADFA96: FFree1Str var_F0
  loc_ADFA99: FFree1Ad var_88
  loc_ADFA9C: FFree1Var var_98 = ""
  loc_ADFA9F: LitI2_Byte 0
  loc_ADFAA1: CR8I2
  loc_ADFAA2: FLdPr Me
  loc_ADFAA5: MemStFPR8 global_80
  loc_ADFAA8: LitI2_Byte 1
  loc_ADFAAA: FLdPr Me
  loc_ADFAAD: MemLdRfVar from_stack_1.global_70
  loc_ADFAB0: FLdPr Me
  loc_ADFAB3: VCallAd Control_ID_ItemCompraFlex
  loc_ADFAB6: FStAdFunc var_88
  loc_ADFAB9: FLdPr var_88
  loc_ADFABC: LateIdLdVar var_98 DispID_4 0
  loc_ADFAC3: CI4Var
  loc_ADFAC5: LitI4 1
  loc_ADFACA: SubI4
  loc_ADFACB: CI2I4
  loc_ADFACC: FFree1Ad var_88
  loc_ADFACF: FFree1Var var_98 = ""
  loc_ADFAD2: ForI2 var_28C
  loc_ADFAD8: FLdPr Me
  loc_ADFADB: MemLdI2 global_70
  loc_ADFADE: CI4UI1
  loc_ADFADF: CVarI4
  loc_ADFAE3: PopAdLdVar
  loc_ADFAE4: LitVarI4
  loc_ADFAEC: PopAdLdVar
  loc_ADFAED: FLdPr Me
  loc_ADFAF0: VCallAd Control_ID_ItemCompraFlex
  loc_ADFAF3: FStAdFunc var_88
  loc_ADFAF6: FLdPr var_88
  loc_ADFAF9: LateIdCallLdVar
  loc_ADFB03: CStrVarTmp
  loc_ADFB04: FStStrNoPop var_F0
  loc_ADFB07: CR8Str
  loc_ADFB09: FLdPr Me
  loc_ADFB0C: MemLdI2 global_88
  loc_ADFB0F: CR8I2
  loc_ADFB10: EqR4
  loc_ADFB11: FFree1Str var_F0
  loc_ADFB14: FFree1Ad var_88
  loc_ADFB17: FFree1Var var_98 = ""
  loc_ADFB1A: BranchF loc_ADFB84
  loc_ADFB1D: FLdPr Me
  loc_ADFB20: MemLdI2 global_70
  loc_ADFB23: CI4UI1
  loc_ADFB24: CVarI4
  loc_ADFB28: PopAdLdVar
  loc_ADFB29: LitVarI4
  loc_ADFB31: PopAdLdVar
  loc_ADFB32: FLdPr Me
  loc_ADFB35: VCallAd Control_ID_ItemCompraFlex
  loc_ADFB38: FStAdFunc var_88
  loc_ADFB3B: FLdPr var_88
  loc_ADFB3E: LateIdCallLdVar
  loc_ADFB48: PopAd
  loc_ADFB4A: LitI4 2
  loc_ADFB4F: FLdPr Me
  loc_ADFB52: MemLdFPR8 global_80
  loc_ADFB55: FLdRfVar var_98
  loc_ADFB58: CStrVarTmp
  loc_ADFB59: FStStrNoPop var_F0
  loc_ADFB5C: CR8Str
  loc_ADFB5E: AddR8
  loc_ADFB5F: CVarR8
  loc_ADFB63: FLdRfVar var_104
  loc_ADFB66: ImpAdCallFPR4  = Round(, )
  loc_ADFB6B: FLdRfVar var_104
  loc_ADFB6E: CR4Var
  loc_ADFB6F: FLdPr Me
  loc_ADFB72: MemStFPR8 global_80
  loc_ADFB75: FFree1Str var_F0
  loc_ADFB78: FFree1Ad var_88
  loc_ADFB7B: FFreeVar var_98 = "": var_EC = ""
  loc_ADFB84: FLdPr Me
  loc_ADFB87: MemLdRfVar from_stack_1.global_70
  loc_ADFB8A: NextI2 var_28C, loc_ADFAD8
  loc_ADFB8F: FLdRfVar var_290
  loc_ADFB92: FLdPr Me
  loc_ADFB95: MemLdRfVar from_stack_1.global_56
  loc_ADFB98: NewIfNullPr clsrecepcion
  loc_ADFB9B: from_stack_1 = clsrecepcion.AbsolutePosition
  loc_ADFBA0: ILdRf var_290
  loc_ADFBA3: LitI4 0
  loc_ADFBA8: GtI4
  loc_ADFBA9: BranchF loc_ADFCB9
  loc_ADFBAC: FLdPr Me
  loc_ADFBAF: MemLdFPR8 global_80
  loc_ADFBB2: CVarR8
  loc_ADFBB6: HardType
  loc_ADFBB7: FLdRfVar var_98
  loc_ADFBBA: FLdRfVar var_108
  loc_ADFBBD: LitVarStr var_A8, "CantItre"
  loc_ADFBC2: PopAdLdVar
  loc_ADFBC3: FLdRfVar var_DC
  loc_ADFBC6: FLdRfVar var_88
  loc_ADFBC9: FLdPr Me
  loc_ADFBCC: MemLdRfVar from_stack_1.global_56
  loc_ADFBCF: NewIfNullPr clsrecepcion
  loc_ADFBD2: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_ADFBD7: FLdPr var_88
  loc_ADFBDA:  = Me.Fields
  loc_ADFBDF: FLdPr var_DC
  loc_ADFBE2: from_stack_2 = Me.Item(from_stack_1)
  loc_ADFBE7: FLdPr var_108
  loc_ADFBEA:  = Me.Value
  loc_ADFBEF: FLdRfVar var_98
  loc_ADFBF2: GtVarBool
  loc_ADFBF4: FFreeAd var_88 = "": var_DC = ""
  loc_ADFBFD: FFree1Var var_98 = ""
  loc_ADFC00: BranchF loc_ADFCB9
  loc_ADFC03: LitStr "La cantidad ingresada del insumo es mayor al saldo de la orden de compra. Para el Item: "
  loc_ADFC06: FLdPr Me
  loc_ADFC09: MemLdI2 global_68
  loc_ADFC0C: CStrUI1
  loc_ADFC0E: FStStrNoPop var_F0
  loc_ADFC11: ConcatStr
  loc_ADFC12: FStStrNoPop var_F4
  loc_ADFC15: LitStr " el saldo es: "
  loc_ADFC18: ConcatStr
  loc_ADFC19: CVarStr var_EC
  loc_ADFC1C: FLdRfVar var_98
  loc_ADFC1F: FLdRfVar var_108
  loc_ADFC22: LitVarStr var_A8, "SaldItco"
  loc_ADFC27: PopAdLdVar
  loc_ADFC28: FLdRfVar var_DC
  loc_ADFC2B: FLdRfVar var_88
  loc_ADFC2E: FLdPr Me
  loc_ADFC31: MemLdRfVar from_stack_1.global_56
  loc_ADFC34: NewIfNullPr clsrecepcion
  loc_ADFC37: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_ADFC3C: FLdPr var_88
  loc_ADFC3F:  = Me.Fields
  loc_ADFC44: FLdPr var_DC
  loc_ADFC47: from_stack_2 = Me.Item(from_stack_1)
  loc_ADFC4C: FLdPr var_108
  loc_ADFC4F:  = Me.Value
  loc_ADFC54: FLdRfVar var_98
  loc_ADFC57: ConcatVar var_104
  loc_ADFC5B: LitVarStr var_B8, " .Verifique..."
  loc_ADFC60: ConcatVar var_118
  loc_ADFC64: CStrVarTmp
  loc_ADFC65: FStStrNoPop var_294
  loc_ADFC68: FLdPr Me
  loc_ADFC6B: MemStStrCopy
  loc_ADFC6F: FFreeStr var_F0 = "": var_F4 = ""
  loc_ADFC78: FFreeAd var_88 = "": var_DC = ""
  loc_ADFC81: FFreeVar var_EC = "": var_98 = "": var_104 = ""
  loc_ADFC8C: LitI4 0
  loc_ADFC91: FLdPr Me
  loc_ADFC94: MemLdStr global_92
  loc_ADFC97: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ADFC9C: FLdPr Me
  loc_ADFC9F: VCallAd Control_ID_ItemCompraFlex
  loc_ADFCA2: FStAdFunc var_88
  loc_ADFCA5: FLdPr var_88
  loc_ADFCA8: LateIdCall
  loc_ADFCB0: FFree1Ad var_88
  loc_ADFCB3: LitI2_Byte &HFF
  loc_ADFCB5: IStI2 KeyAscii
  loc_ADFCB8: ExitProcHresult
  loc_ADFCB9: FLdPr Me
  loc_ADFCBC: MemLdRfVar from_stack_1.global_68
  loc_ADFCBF: NextI2 var_288, loc_ADFA5F
  loc_ADFCC4: Call Proc_125_44_9F69D4()
  loc_ADFCC9: ExitProcHresult
  loc_ADFCCA: Ary1LdRf
  loc_ADFCCB: LitI2_Byte &HE8
End Sub

Private Sub ItemCompraFlex_KeyDown(KeyCode As Integer, Shift As Integer) '9E2FE8
  'Data Table: 4BE560
  loc_9E2ED8: FLdPr Me
  loc_9E2EDB: MemLdUI1 global_76
  loc_9E2EDF: CI2UI1
  loc_9E2EE1: LitI2_Byte 0
  loc_9E2EE3: NeI2
  loc_9E2EE4: BranchF loc_9E2FB9
  loc_9E2EE7: FLdPr Me
  loc_9E2EEA: VCallAd Control_ID_ItemCompraFlex
  loc_9E2EED: FStAdFunc var_88
  loc_9E2EF0: FLdPr var_88
  loc_9E2EF3: LateIdLdVar var_98 DispID_10 0
  loc_9E2EFA: CI4Var
  loc_9E2EFC: CVarI4
  loc_9E2F00: PopAdLdVar
  loc_9E2F01: LitVarI4
  loc_9E2F09: PopAdLdVar
  loc_9E2F0A: FLdPr Me
  loc_9E2F0D: VCallAd Control_ID_ItemCompraFlex
  loc_9E2F10: FStAdFunc var_DC
  loc_9E2F13: FLdPr var_DC
  loc_9E2F16: LateIdCallLdVar
  loc_9E2F20: CStrVarTmp
  loc_9E2F21: FStStrNoPop var_F0
  loc_9E2F24: LitStr "No"
  loc_9E2F27: EqStr
  loc_9E2F29: FFree1Str var_F0
  loc_9E2F2C: FFreeAd var_88 = ""
  loc_9E2F33: FFreeVar var_98 = ""
  loc_9E2F3A: BranchF loc_9E2FAC
  loc_9E2F3D: ILdI2 KeyCode
  loc_9E2F40: CI4UI1
  loc_9E2F41: LitI4 &H2E
  loc_9E2F46: EqI4
  loc_9E2F47: BranchF loc_9E2FA9
  loc_9E2F4A: FLdPr Me
  loc_9E2F4D: VCallAd Control_ID_ItemCompraFlex
  loc_9E2F50: FStAdFunc var_88
  loc_9E2F53: FLdPr var_88
  loc_9E2F56: LateIdLdVar var_98 DispID_10 0
  loc_9E2F5D: CI4Var
  loc_9E2F5F: LitI4 0
  loc_9E2F64: NeI4
  loc_9E2F65: FFree1Ad var_88
  loc_9E2F68: FFree1Var var_98 = ""
  loc_9E2F6B: BranchF loc_9E2FA9
  loc_9E2F6E: OnErrorGoto loc_9E2FB9
  loc_9E2F71: FLdPr Me
  loc_9E2F74: VCallAd Control_ID_ItemCompraFlex
  loc_9E2F77: FStAdFunc var_88
  loc_9E2F7A: FLdPr var_88
  loc_9E2F7D: LateIdLdVar var_98 DispID_10 0
  loc_9E2F84: CI4Var
  loc_9E2F86: CVarI4
  loc_9E2F8A: PopAdLdVar
  loc_9E2F8B: FLdPr Me
  loc_9E2F8E: VCallAd Control_ID_ItemCompraFlex
  loc_9E2F91: FStAdFunc var_DC
  loc_9E2F94: FLdPr var_DC
  loc_9E2F97: LateIdCall
  loc_9E2F9F: FFreeAd var_88 = ""
  loc_9E2FA6: FFree1Var var_98 = ""
  loc_9E2FA9: Branch loc_9E2FB9
  loc_9E2FAC: LitI4 0
  loc_9E2FB1: LitStr "El Item está imputado. Verifique..."
  loc_9E2FB4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9E2FB9: FLdRfVar var_F4
  loc_9E2FBC: ImpAdCallI2 Err 'rtcErrObj
  loc_9E2FC1: FStAdFunc var_88
  loc_9E2FC4: FLdPr var_88
  loc_9E2FC7:  = Err.Number
  loc_9E2FCC: ILdRf var_F4
  loc_9E2FCF: LitI4 &H753F
  loc_9E2FD4: EqI4
  loc_9E2FD5: FFree1Ad var_88
  loc_9E2FD8: BranchF loc_9E2FE0
  loc_9E2FDB: Call Proc_125_43_A2E850()
  loc_9E2FE0: Call Proc_125_44_9F69D4()
  loc_9E2FE5: ExitProcHresult
  loc_9E2FE6: CVarI2 var_1701
End Sub

Private Sub ItemCompraFlex_KeyPress(KeyAscii As Integer) 'A40B38
  'Data Table: 4BE560
  loc_A408F4: FLdPr Me
  loc_A408F7: MemLdUI1 global_76
  loc_A408FB: CI2UI1
  loc_A408FD: LitI2_Byte 0
  loc_A408FF: NeI2
  loc_A40900: BranchF loc_A40B36
  loc_A40903: FLdPr Me
  loc_A40906: VCallAd Control_ID_ItemCompraFlex
  loc_A40909: FStAdFunc var_88
  loc_A4090C: FLdPr var_88
  loc_A4090F: LateIdLdVar var_98 DispID_10 0
  loc_A40916: CI4Var
  loc_A40918: CVarI4
  loc_A4091C: PopAdLdVar
  loc_A4091D: LitVarI4
  loc_A40925: PopAdLdVar
  loc_A40926: FLdPr Me
  loc_A40929: VCallAd Control_ID_ItemCompraFlex
  loc_A4092C: FStAdFunc var_DC
  loc_A4092F: FLdPr var_DC
  loc_A40932: LateIdCallLdVar
  loc_A4093C: CStrVarTmp
  loc_A4093D: FStStrNoPop var_F0
  loc_A40940: LitStr "No"
  loc_A40943: EqStr
  loc_A40945: FFree1Str var_F0
  loc_A40948: FFreeAd var_88 = ""
  loc_A4094F: FFreeVar var_98 = ""
  loc_A40956: BranchF loc_A40B29
  loc_A40959: ILdI2 KeyAscii
  loc_A4095C: LitI2_Byte 8
  loc_A4095E: EqI2
  loc_A4095F: BranchF loc_A40A4D
  loc_A40962: FLdPr Me
  loc_A40965: VCallAd Control_ID_ItemCompraFlex
  loc_A40968: FStAdFunc var_88
  loc_A4096B: FLdPr var_88
  loc_A4096E: LateIdLdVar var_98 DispID_11 0
  loc_A40975: CI4Var
  loc_A40977: FStR4 var_F4
  loc_A4097A: FFree1Ad var_88
  loc_A4097D: FFree1Var var_98 = ""
  loc_A40980: ILdRf var_F4
  loc_A40983: LitI4 5
  loc_A40988: EqI4
  loc_A40989: BranchF loc_A40A4A
  loc_A4098C: FLdPr Me
  loc_A4098F: VCallAd Control_ID_ItemCompraFlex
  loc_A40992: FStAdFunc var_88
  loc_A40995: FLdPr var_88
  loc_A40998: LateIdLdVar var_98 DispID_0 0
  loc_A4099F: CStrVarTmp
  loc_A409A0: FStStrNoPop var_F0
  loc_A409A3: LitStr vbNullString
  loc_A409A6: NeStr
  loc_A409A8: FLdPr Me
  loc_A409AB: VCallAd Control_ID_ItemCompraFlex
  loc_A409AE: FStAdFunc var_DC
  loc_A409B1: FLdPr var_DC
  loc_A409B4: LateIdLdVar var_EC DispID_0 0
  loc_A409BB: CStrVarTmp
  loc_A409BC: FStStrNoPop var_F8
  loc_A409BF: LitStr " "
  loc_A409C2: NeStr
  loc_A409C4: AndI4
  loc_A409C5: FFreeStr var_F0 = ""
  loc_A409CC: FFreeAd var_88 = ""
  loc_A409D3: FFreeVar var_98 = ""
  loc_A409DA: BranchF loc_A40A4A
  loc_A409DD: FLdPr Me
  loc_A409E0: VCallAd Control_ID_ItemCompraFlex
  loc_A409E3: FStAdFunc var_88
  loc_A409E6: FLdPr var_88
  loc_A409E9: LateIdLdVar var_98 DispID_0 0
  loc_A409F0: PopAd
  loc_A409F2: FLdPr Me
  loc_A409F5: VCallAd Control_ID_ItemCompraFlex
  loc_A409F8: FStAdFunc var_DC
  loc_A409FB: FLdPr var_DC
  loc_A409FE: LateIdLdVar var_EC DispID_0 0
  loc_A40A05: CStrVarTmp
  loc_A40A06: FStStrNoPop var_F0
  loc_A40A09: FnLenStr
  loc_A40A0A: LitI4 1
  loc_A40A0F: SubI4
  loc_A40A10: FLdRfVar var_98
  loc_A40A13: CStrVarTmp
  loc_A40A14: FStStrNoPop var_F8
  loc_A40A17: ImpAdCallI2 Left$(, )
  loc_A40A1C: CVarStr var_108
  loc_A40A1F: PopAdLdVar
  loc_A40A20: FLdPr Me
  loc_A40A23: VCallAd Control_ID_ItemCompraFlex
  loc_A40A26: FStAdFunc var_10C
  loc_A40A29: FLdPr var_10C
  loc_A40A2C: LateIdSt
  loc_A40A31: FFreeStr var_F0 = ""
  loc_A40A38: FFreeAd var_88 = "": var_DC = ""
  loc_A40A41: FFreeVar var_98 = "": var_EC = ""
  loc_A40A4A: Branch loc_A40B26
  loc_A40A4D: FLdPr Me
  loc_A40A50: VCallAd Control_ID_ItemCompraFlex
  loc_A40A53: FStAdFunc var_88
  loc_A40A56: FLdPr var_88
  loc_A40A59: LateIdLdVar var_98 DispID_11 0
  loc_A40A60: CI4Var
  loc_A40A62: FStR4 var_110
  loc_A40A65: FFree1Ad var_88
  loc_A40A68: FFree1Var var_98 = ""
  loc_A40A6B: ILdRf var_110
  loc_A40A6E: LitI4 5
  loc_A40A73: EqI4
  loc_A40A74: BranchF loc_A40B26
  loc_A40A77: ILdI2 KeyAscii
  loc_A40A7A: LitStr "."
  loc_A40A7D: ImpAdCallI2 Asc()
  loc_A40A82: EqI2
  loc_A40A83: BranchF loc_A40A91
  loc_A40A86: LitStr ","
  loc_A40A89: ImpAdCallI2 Asc()
  loc_A40A8E: IStI2 KeyAscii
  loc_A40A91: LitStr "1234567890,"
  loc_A40A94: FStStrCopy var_F0
  loc_A40A97: FLdRfVar var_F0
  loc_A40A9A: ILdRf KeyAscii
  loc_A40A9D: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_A40AA2: IStI2 KeyAscii
  loc_A40AA5: FFree1Str var_F0
  loc_A40AA8: FLdPr Me
  loc_A40AAB: VCallAd Control_ID_ItemCompraFlex
  loc_A40AAE: FStAdFunc var_88
  loc_A40AB1: FLdPr var_88
  loc_A40AB4: LateIdLdVar var_98 DispID_0 0
  loc_A40ABB: CStrVarTmp
  loc_A40ABC: FStStrNoPop var_F0
  loc_A40ABF: FnLenStr
  loc_A40AC0: LitI4 &HC
  loc_A40AC5: LeI4
  loc_A40AC6: FFree1Str var_F0
  loc_A40AC9: FFree1Ad var_88
  loc_A40ACC: FFree1Var var_98 = ""
  loc_A40ACF: BranchF loc_A40B26
  loc_A40AD2: FLdPr Me
  loc_A40AD5: VCallAd Control_ID_ItemCompraFlex
  loc_A40AD8: FStAdFunc var_88
  loc_A40ADB: FLdPr var_88
  loc_A40ADE: LateIdLdVar var_98 DispID_0 0
  loc_A40AE5: CStrVarTmp
  loc_A40AE6: CVarStr var_108
  loc_A40AE9: ILdI2 KeyAscii
  loc_A40AEC: CI4UI1
  loc_A40AED: FLdRfVar var_EC
  loc_A40AF0: ImpAdCallFPR4  = Chr()
  loc_A40AF5: FLdRfVar var_EC
  loc_A40AF8: AddVar var_120
  loc_A40AFC: CStrVarTmp
  loc_A40AFD: CVarStr var_130
  loc_A40B00: PopAdLdVar
  loc_A40B01: FLdPr Me
  loc_A40B04: VCallAd Control_ID_ItemCompraFlex
  loc_A40B07: FStAdFunc var_DC
  loc_A40B0A: FLdPr var_DC
  loc_A40B0D: LateIdSt
  loc_A40B12: FFreeAd var_88 = ""
  loc_A40B19: FFreeVar var_98 = "": var_108 = "": var_EC = "": var_120 = ""
  loc_A40B26: Branch loc_A40B36
  loc_A40B29: LitI4 0
  loc_A40B2E: LitStr "El Item está imputado. Verifique..."
  loc_A40B31: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A40B36: ExitProcHresult
End Sub

Private Sub ItemCompraFlex_LeaveCell() 'AC6384
  'Data Table: 4BE560
  loc_AC5DB4: FLdPr Me
  loc_AC5DB7: VCallAd Control_ID_ItemCompraFlex
  loc_AC5DBA: FStAdFunc var_88
  loc_AC5DBD: FLdPr var_88
  loc_AC5DC0: LateIdLdVar var_98 DispID_10 0
  loc_AC5DC7: CI4Var
  loc_AC5DC9: LitI4 0
  loc_AC5DCE: GtI4
  loc_AC5DCF: FFree1Ad var_88
  loc_AC5DD2: FFree1Var var_98 = ""
  loc_AC5DD5: BranchF loc_AC637B
  loc_AC5DD8: FLdPr Me
  loc_AC5DDB: VCallAd Control_ID_ItemCompraFlex
  loc_AC5DDE: FStAdFunc var_88
  loc_AC5DE1: FLdPr var_88
  loc_AC5DE4: LateIdLdVar var_98 DispID_10 0
  loc_AC5DEB: CI4Var
  loc_AC5DED: CVarI4
  loc_AC5DF1: PopAdLdVar
  loc_AC5DF2: LitVarI4
  loc_AC5DFA: PopAdLdVar
  loc_AC5DFB: FLdPr Me
  loc_AC5DFE: VCallAd Control_ID_ItemCompraFlex
  loc_AC5E01: FStAdFunc var_DC
  loc_AC5E04: FLdPr var_DC
  loc_AC5E07: LateIdCallLdVar
  loc_AC5E11: CStrVarTmp
  loc_AC5E12: FStStrNoPop var_F0
  loc_AC5E15: LitStr vbNullString
  loc_AC5E18: NeStr
  loc_AC5E1A: FFree1Str var_F0
  loc_AC5E1D: FFreeAd var_88 = ""
  loc_AC5E24: FFreeVar var_98 = ""
  loc_AC5E2B: BranchF loc_AC637B
  loc_AC5E2E: FLdPr Me
  loc_AC5E31: VCallAd Control_ID_ItemCompraFlex
  loc_AC5E34: FStAdFunc var_88
  loc_AC5E37: FLdPr var_88
  loc_AC5E3A: LateIdLdVar var_98 DispID_11 0
  loc_AC5E41: CI4Var
  loc_AC5E43: LitI4 5
  loc_AC5E48: EqI4
  loc_AC5E49: FFree1Ad var_88
  loc_AC5E4C: FFree1Var var_98 = ""
  loc_AC5E4F: BranchF loc_AC637B
  loc_AC5E52: FLdPr Me
  loc_AC5E55: VCallAd Control_ID_ItemCompraFlex
  loc_AC5E58: FStAdFunc var_88
  loc_AC5E5B: FLdPr var_88
  loc_AC5E5E: LateIdLdVar var_98 DispID_10 0
  loc_AC5E65: CI4Var
  loc_AC5E67: CVarI4
  loc_AC5E6B: PopAdLdVar
  loc_AC5E6C: LitVarI4
  loc_AC5E74: PopAdLdVar
  loc_AC5E75: FLdPr Me
  loc_AC5E78: VCallAd Control_ID_ItemCompraFlex
  loc_AC5E7B: FStAdFunc var_DC
  loc_AC5E7E: FLdPr var_DC
  loc_AC5E81: LateIdCallLdVar
  loc_AC5E8B: PopAd
  loc_AC5E8D: LitStr "0"
  loc_AC5E90: LitI2_Byte &HFF
  loc_AC5E92: LitI2_Byte 0
  loc_AC5E94: LitI2_Byte 0
  loc_AC5E96: FLdRfVar var_EC
  loc_AC5E99: CStrVarTmp
  loc_AC5E9A: FStStrNoPop var_F0
  loc_AC5E9D: LitStr "decimal"
  loc_AC5EA0: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_AC5EA5: FStStrNoPop var_F4
  loc_AC5EA8: FLdPr Me
  loc_AC5EAB: MemStStrCopy
  loc_AC5EAF: FFreeStr var_F0 = ""
  loc_AC5EB6: FFreeAd var_88 = ""
  loc_AC5EBD: FFreeVar var_98 = ""
  loc_AC5EC4: FLdPr Me
  loc_AC5EC7: MemLdStr global_92
  loc_AC5ECA: LitStr vbNullString
  loc_AC5ECD: NeStr
  loc_AC5ECF: BranchF loc_AC5EFA
  loc_AC5ED2: LitI4 0
  loc_AC5ED7: FLdPr Me
  loc_AC5EDA: MemLdStr global_92
  loc_AC5EDD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AC5EE2: FLdPr Me
  loc_AC5EE5: VCallAd Control_ID_ItemCompraFlex
  loc_AC5EE8: FStAdFunc var_88
  loc_AC5EEB: FLdPr var_88
  loc_AC5EEE: LateIdCall
  loc_AC5EF6: FFree1Ad var_88
  loc_AC5EF9: ExitProcHresult
  loc_AC5EFA: LitI2_Byte 0
  loc_AC5EFC: CR8I2
  loc_AC5EFD: FLdPr Me
  loc_AC5F00: MemStFPR8 global_80
  loc_AC5F03: LitI2_Byte 1
  loc_AC5F05: FLdPr Me
  loc_AC5F08: MemLdRfVar from_stack_1.global_68
  loc_AC5F0B: FLdPr Me
  loc_AC5F0E: VCallAd Control_ID_ItemCompraFlex
  loc_AC5F11: FStAdFunc var_88
  loc_AC5F14: FLdPr var_88
  loc_AC5F17: LateIdLdVar var_98 DispID_4 0
  loc_AC5F1E: CI4Var
  loc_AC5F20: LitI4 1
  loc_AC5F25: SubI4
  loc_AC5F26: CI2I4
  loc_AC5F27: FFree1Ad var_88
  loc_AC5F2A: FFree1Var var_98 = ""
  loc_AC5F2D: ForI2 var_F8
  loc_AC5F33: FLdPr Me
  loc_AC5F36: MemLdI2 global_68
  loc_AC5F39: CI4UI1
  loc_AC5F3A: CVarI4
  loc_AC5F3E: PopAdLdVar
  loc_AC5F3F: LitVarI4
  loc_AC5F47: PopAdLdVar
  loc_AC5F48: FLdPr Me
  loc_AC5F4B: VCallAd Control_ID_ItemCompraFlex
  loc_AC5F4E: FStAdFunc var_88
  loc_AC5F51: FLdPr var_88
  loc_AC5F54: LateIdCallLdVar
  loc_AC5F5E: CStrVarTmp
  loc_AC5F5F: FStStrNoPop var_F0
  loc_AC5F62: FLdPr Me
  loc_AC5F65: VCallAd Control_ID_ItemCompraFlex
  loc_AC5F68: FStAdFunc var_DC
  loc_AC5F6B: FLdPr var_DC
  loc_AC5F6E: LateIdLdVar var_EC DispID_10 0
  loc_AC5F75: CI4Var
  loc_AC5F77: CVarI4
  loc_AC5F7B: PopAdLdVar
  loc_AC5F7C: LitVarI4
  loc_AC5F84: PopAdLdVar
  loc_AC5F85: FLdPr Me
  loc_AC5F88: VCallAd Control_ID_ItemCompraFlex
  loc_AC5F8B: FStAdFunc var_13C
  loc_AC5F8E: FLdPr var_13C
  loc_AC5F91: LateIdCallLdVar
  loc_AC5F9B: CStrVarTmp
  loc_AC5F9C: FStStrNoPop var_F4
  loc_AC5F9F: EqStr
  loc_AC5FA1: FFreeStr var_F0 = ""
  loc_AC5FA8: FFreeAd var_88 = "": var_DC = ""
  loc_AC5FB1: FFreeVar var_98 = "": var_EC = ""
  loc_AC5FBA: BranchF loc_AC6024
  loc_AC5FBD: FLdPr Me
  loc_AC5FC0: MemLdI2 global_68
  loc_AC5FC3: CI4UI1
  loc_AC5FC4: CVarI4
  loc_AC5FC8: PopAdLdVar
  loc_AC5FC9: LitVarI4
  loc_AC5FD1: PopAdLdVar
  loc_AC5FD2: FLdPr Me
  loc_AC5FD5: VCallAd Control_ID_ItemCompraFlex
  loc_AC5FD8: FStAdFunc var_88
  loc_AC5FDB: FLdPr var_88
  loc_AC5FDE: LateIdCallLdVar
  loc_AC5FE8: PopAd
  loc_AC5FEA: LitI4 2
  loc_AC5FEF: FLdPr Me
  loc_AC5FF2: MemLdFPR8 global_80
  loc_AC5FF5: FLdRfVar var_98
  loc_AC5FF8: CStrVarTmp
  loc_AC5FF9: FStStrNoPop var_F0
  loc_AC5FFC: CR8Str
  loc_AC5FFE: AddR8
  loc_AC5FFF: CVarR8
  loc_AC6003: FLdRfVar var_14C
  loc_AC6006: ImpAdCallFPR4  = Round(, )
  loc_AC600B: FLdRfVar var_14C
  loc_AC600E: CR4Var
  loc_AC600F: FLdPr Me
  loc_AC6012: MemStFPR8 global_80
  loc_AC6015: FFree1Str var_F0
  loc_AC6018: FFree1Ad var_88
  loc_AC601B: FFreeVar var_98 = "": var_EC = ""
  loc_AC6024: FLdPr Me
  loc_AC6027: MemLdRfVar from_stack_1.global_68
  loc_AC602A: NextI2 var_F8, loc_AC5F33
  loc_AC602F: FLdPr Me
  loc_AC6032: VCallAd Control_ID_ItemCompraFlex
  loc_AC6035: FStAdFunc var_88
  loc_AC6038: FLdPr var_88
  loc_AC603B: LateIdLdVar var_98 DispID_10 0
  loc_AC6042: CI4Var
  loc_AC6044: CVarI4
  loc_AC6048: PopAdLdVar
  loc_AC6049: LitVarI4
  loc_AC6051: PopAdLdVar
  loc_AC6052: FLdPr Me
  loc_AC6055: VCallAd Control_ID_ItemCompraFlex
  loc_AC6058: FStAdFunc var_DC
  loc_AC605B: FLdPr var_DC
  loc_AC605E: LateIdCallLdVar
  loc_AC6068: PopAd
  loc_AC606A: FLdPr Me
  loc_AC606D: MemLdFPR8 global_80
  loc_AC6070: CVarR8
  loc_AC6074: HardType
  loc_AC6075: FLdRfVar var_15C
  loc_AC6078: FLdRfVar var_EC
  loc_AC607B: CStrVarTmp
  loc_AC607C: CVarStr var_14C
  loc_AC607F: ImpAdCallHresult  = CDec()
  loc_AC6084: FLdRfVar var_15C
  loc_AC6087: GtVarBool
  loc_AC6089: FFreeAd var_88 = ""
  loc_AC6090: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_AC609B: BranchF loc_AC6129
  loc_AC609E: LitI4 0
  loc_AC60A3: LitStr "La Cantidad Ingresada del Insumo es Mayor al Saldo de la Orden de Compra. Reintente..."
  loc_AC60A6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AC60AB: FLdPr Me
  loc_AC60AE: VCallAd Control_ID_ItemCompraFlex
  loc_AC60B1: FStAdFunc var_88
  loc_AC60B4: FLdPr var_88
  loc_AC60B7: LateIdLdVar var_98 DispID_0 0
  loc_AC60BE: PopAd
  loc_AC60C0: LitI4 1
  loc_AC60C5: LitI4 1
  loc_AC60CA: LitVarStr var_A8, "0.000"
  loc_AC60CF: FStVarCopyObj var_14C
  loc_AC60D2: FLdRfVar var_14C
  loc_AC60D5: FLdRfVar var_98
  loc_AC60D8: CStrVarTmp
  loc_AC60D9: CVarStr var_EC
  loc_AC60DC: FLdRfVar var_15C
  loc_AC60DF: ImpAdCallFPR4  = Format(, )
  loc_AC60E4: FLdRfVar var_15C
  loc_AC60E7: CStrVarTmp
  loc_AC60E8: CVarStr var_16C
  loc_AC60EB: PopAdLdVar
  loc_AC60EC: FLdPr Me
  loc_AC60EF: VCallAd Control_ID_ItemCompraFlex
  loc_AC60F2: FStAdFunc var_DC
  loc_AC60F5: FLdPr var_DC
  loc_AC60F8: LateIdSt
  loc_AC60FD: FFreeAd var_88 = ""
  loc_AC6104: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = ""
  loc_AC6111: FLdPr Me
  loc_AC6114: VCallAd Control_ID_ItemCompraFlex
  loc_AC6117: FStAdFunc var_88
  loc_AC611A: FLdPr var_88
  loc_AC611D: LateIdCall
  loc_AC6125: FFree1Ad var_88
  loc_AC6128: ExitProcHresult
  loc_AC6129: FLdPr Me
  loc_AC612C: VCallAd Control_ID_ItemCompraFlex
  loc_AC612F: FStAdFunc var_88
  loc_AC6132: FLdPr var_88
  loc_AC6135: LateIdLdVar var_98 DispID_0 0
  loc_AC613C: PopAd
  loc_AC613E: LitI4 1
  loc_AC6143: LitI4 1
  loc_AC6148: LitVarStr var_A8, "0.000"
  loc_AC614D: FStVarCopyObj var_14C
  loc_AC6150: FLdRfVar var_14C
  loc_AC6153: FLdRfVar var_98
  loc_AC6156: CStrVarTmp
  loc_AC6157: CVarStr var_EC
  loc_AC615A: FLdRfVar var_15C
  loc_AC615D: ImpAdCallFPR4  = Format(, )
  loc_AC6162: FLdRfVar var_15C
  loc_AC6165: CStrVarTmp
  loc_AC6166: CVarStr var_16C
  loc_AC6169: PopAdLdVar
  loc_AC616A: FLdPr Me
  loc_AC616D: VCallAd Control_ID_ItemCompraFlex
  loc_AC6170: FStAdFunc var_DC
  loc_AC6173: FLdPr var_DC
  loc_AC6176: LateIdSt
  loc_AC617B: FFreeAd var_88 = ""
  loc_AC6182: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = ""
  loc_AC618F: FLdPr Me
  loc_AC6192: VCallAd Control_ID_ItemCompraFlex
  loc_AC6195: FStAdFunc var_88
  loc_AC6198: FLdPr var_88
  loc_AC619B: LateIdLdVar var_98 DispID_10 0
  loc_AC61A2: CI4Var
  loc_AC61A4: CVarI4
  loc_AC61A8: PopAdLdVar
  loc_AC61A9: LitVarI4
  loc_AC61B1: PopAdLdVar
  loc_AC61B2: FLdPr Me
  loc_AC61B5: VCallAd Control_ID_ItemCompraFlex
  loc_AC61B8: FStAdFunc var_DC
  loc_AC61BB: FLdPr var_DC
  loc_AC61BE: LateIdCallLdVar
  loc_AC61C8: CStrVarTmp
  loc_AC61C9: CVarStr var_14C
  loc_AC61CC: ImpAdCallI2 IsNumeric()
  loc_AC61D1: FLdPr Me
  loc_AC61D4: VCallAd Control_ID_ItemCompraFlex
  loc_AC61D7: FStAdFunc var_13C
  loc_AC61DA: FLdPr var_13C
  loc_AC61DD: LateIdLdVar var_15C DispID_10 0
  loc_AC61E4: CI4Var
  loc_AC61E6: CVarI4
  loc_AC61EA: PopAdLdVar
  loc_AC61EB: LitVarI4
  loc_AC61F3: PopAdLdVar
  loc_AC61F4: FLdPr Me
  loc_AC61F7: VCallAd Control_ID_ItemCompraFlex
  loc_AC61FA: FStAdFunc var_170
  loc_AC61FD: FLdPr var_170
  loc_AC6200: LateIdCallLdVar
  loc_AC620A: CStrVarTmp
  loc_AC620B: CVarStr var_180
  loc_AC620E: ImpAdCallI2 IsNumeric()
  loc_AC6213: AndI4
  loc_AC6214: FFreeAd var_88 = "": var_DC = "": var_13C = ""
  loc_AC621F: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = "": var_16C = ""
  loc_AC622E: BranchF loc_AC637B
  loc_AC6231: FLdPr Me
  loc_AC6234: VCallAd Control_ID_ItemCompraFlex
  loc_AC6237: FStAdFunc var_88
  loc_AC623A: FLdPr var_88
  loc_AC623D: LateIdLdVar var_98 DispID_10 0
  loc_AC6244: CI4Var
  loc_AC6246: CVarI4
  loc_AC624A: PopAdLdVar
  loc_AC624B: LitVarI4
  loc_AC6253: PopAdLdVar
  loc_AC6254: FLdPr Me
  loc_AC6257: VCallAd Control_ID_ItemCompraFlex
  loc_AC625A: FStAdFunc var_DC
  loc_AC625D: FLdPr var_DC
  loc_AC6260: LateIdCallLdVar
  loc_AC626A: PopAd
  loc_AC626C: LitI4 3
  loc_AC6271: FLdRfVar var_EC
  loc_AC6274: CStrVarTmp
  loc_AC6275: FStStrNoPop var_F0
  loc_AC6278: CR8Str
  loc_AC627A: CVarR8
  loc_AC627E: FLdRfVar var_15C
  loc_AC6281: ImpAdCallFPR4  = Round(, )
  loc_AC6286: FLdPr Me
  loc_AC6289: VCallAd Control_ID_ItemCompraFlex
  loc_AC628C: FStAdFunc var_13C
  loc_AC628F: FLdPr var_13C
  loc_AC6292: LateIdLdVar var_16C DispID_10 0
  loc_AC6299: CI4Var
  loc_AC629B: CVarI4
  loc_AC629F: PopAdLdVar
  loc_AC62A0: LitVarI4
  loc_AC62A8: PopAdLdVar
  loc_AC62A9: FLdPr Me
  loc_AC62AC: VCallAd Control_ID_ItemCompraFlex
  loc_AC62AF: FStAdFunc var_170
  loc_AC62B2: FLdPr var_170
  loc_AC62B5: LateIdCallLdVar
  loc_AC62BF: PopAd
  loc_AC62C1: LitI4 3
  loc_AC62C6: FLdRfVar var_180
  loc_AC62C9: CStrVarTmp
  loc_AC62CA: FStStrNoPop var_F4
  loc_AC62CD: CR8Str
  loc_AC62CF: CVarR8
  loc_AC62D3: FLdRfVar var_1C0
  loc_AC62D6: ImpAdCallFPR4  = Round(, )
  loc_AC62DB: FLdPr Me
  loc_AC62DE: VCallAd Control_ID_ItemCompraFlex
  loc_AC62E1: FStAdFunc var_214
  loc_AC62E4: FLdPr var_214
  loc_AC62E7: LateIdLdVar var_224 DispID_10 0
  loc_AC62EE: CI4Var
  loc_AC62F0: CVarI4
  loc_AC62F4: PopAdLdVar
  loc_AC62F5: LitVarI4
  loc_AC62FD: PopAdLdVar
  loc_AC62FE: LitI4 1
  loc_AC6303: LitI4 1
  loc_AC6308: LitVarStr var_1F0, "###,###,##0.000"
  loc_AC630D: FStVarCopyObj var_200
  loc_AC6310: FLdRfVar var_200
  loc_AC6313: FLdRfVar var_15C
  loc_AC6316: FLdRfVar var_1C0
  loc_AC6319: MulVar var_1D0
  loc_AC631D: FStVar var_1E0
  loc_AC6321: FLdRfVar var_1E0
  loc_AC6324: FLdRfVar var_210
  loc_AC6327: ImpAdCallFPR4  = Format(, )
  loc_AC632C: FLdRfVar var_210
  loc_AC632F: CStrVarTmp
  loc_AC6330: CVarStr var_274
  loc_AC6333: PopAdLdVar
  loc_AC6334: FLdPr Me
  loc_AC6337: VCallAd Control_ID_ItemCompraFlex
  loc_AC633A: FStAdFunc var_288
  loc_AC633D: FLdPr var_288
  loc_AC6340: LateIdCallSt
  loc_AC6348: FFreeStr var_F0 = ""
  loc_AC634F: FFreeAd var_88 = "": var_DC = "": var_13C = "": var_170 = "": var_214 = ""
  loc_AC635E: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_16C = "": var_180 = "": var_1B0 = "": var_15C = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_224 = "": var_210 = ""
  loc_AC637B: Call Proc_125_44_9F69D4()
  loc_AC6380: ExitProcHresult
  loc_AC6381: PopAd
End Sub

Private Sub FiltroCbo_Click() '9B7F34
  'Data Table: 4BE560
  loc_9B7E7C: LitVarStr var_94, vbNullString
  loc_9B7E81: PopAdLdVar
  loc_9B7E82: FLdPr Me
  loc_9B7E85: VCallAd Control_ID_FiltroMsk
  loc_9B7E88: FStAdFunc var_A8
  loc_9B7E8B: FLdPr var_A8
  loc_9B7E8E: LateIdSt
  loc_9B7E93: FFree1Ad var_A8
  loc_9B7E96: FLdRfVar var_AA
  loc_9B7E99: FLdPr Me
  loc_9B7E9C: VCallAd Control_ID_FiltroCbo
  loc_9B7E9F: FStAdFunc var_A8
  loc_9B7EA2: FLdPr var_A8
  loc_9B7EA5:  = Me.ListIndex
  loc_9B7EAA: FLdI2 var_AA
  loc_9B7EAD: FStI2 var_AC
  loc_9B7EB0: FFree1Ad var_A8
  loc_9B7EB3: FLdI2 var_AC
  loc_9B7EB6: LitI2_Byte 0
  loc_9B7EB8: EqI2
  loc_9B7EB9: BranchF loc_9B7EF3
  loc_9B7EBC: LitVarStr var_94, "########"
  loc_9B7EC1: PopAdLdVar
  loc_9B7EC2: FLdPr Me
  loc_9B7EC5: VCallAd Control_ID_FiltroMsk
  loc_9B7EC8: FStAdFunc var_A8
  loc_9B7ECB: FLdPr var_A8
  loc_9B7ECE: LateIdSt
  loc_9B7ED3: FFree1Ad var_A8
  loc_9B7ED6: LitStr "CodiOrco"
  loc_9B7ED9: FStStrCopy var_B0
  loc_9B7EDC: FLdRfVar var_B0
  loc_9B7EDF: FLdPr Me
  loc_9B7EE2: MemLdRfVar from_stack_1.global_52
  loc_9B7EE5: NewIfNullPr clsrecepcion
  loc_9B7EE8: Call clsrecepcion.Sort(from_stack_1v)
  loc_9B7EED: FFree1Str var_B0
  loc_9B7EF0: Branch loc_9B7F30
  loc_9B7EF3: FLdI2 var_AC
  loc_9B7EF6: LitI2_Byte 1
  loc_9B7EF8: EqI2
  loc_9B7EF9: BranchF loc_9B7F30
  loc_9B7EFC: LitVarStr var_94, vbNullString
  loc_9B7F01: PopAdLdVar
  loc_9B7F02: FLdPr Me
  loc_9B7F05: VCallAd Control_ID_FiltroMsk
  loc_9B7F08: FStAdFunc var_A8
  loc_9B7F0B: FLdPr var_A8
  loc_9B7F0E: LateIdSt
  loc_9B7F13: FFree1Ad var_A8
  loc_9B7F16: LitStr "ExpeImpu"
  loc_9B7F19: FStStrCopy var_B0
  loc_9B7F1C: FLdRfVar var_B0
  loc_9B7F1F: FLdPr Me
  loc_9B7F22: MemLdRfVar from_stack_1.global_52
  loc_9B7F25: NewIfNullPr clsrecepcion
  loc_9B7F28: Call clsrecepcion.Sort(from_stack_1v)
  loc_9B7F2D: FFree1Str var_B0
  loc_9B7F30: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BCCC60
  'Data Table: 4BE560
  loc_BCB904: ILdRf Button
  loc_BCB907: FStAd var_88 
  loc_BCB90B: FLdRfVar var_8C
  loc_BCB90E: FLdPr var_88
  loc_BCB911:  = Me.Key
  loc_BCB916: FLdZeroAd var_8C
  loc_BCB919: FStStr var_90
  loc_BCB91C: ILdRf var_90
  loc_BCB91F: LitStr "btnCrear"
  loc_BCB922: EqStr
  loc_BCB924: BranchF loc_BCB92A
  loc_BCB927: Branch loc_BCCC5D
  loc_BCB92A: ILdRf var_90
  loc_BCB92D: LitStr "btnModificar"
  loc_BCB930: EqStr
  loc_BCB932: BranchF loc_BCBC5B
  loc_BCB935: FLdRfVar var_94
  loc_BCB938: FLdPr Me
  loc_BCB93B: MemLdRfVar from_stack_1.global_56
  loc_BCB93E: NewIfNullPr clsrecepcion
  loc_BCB941: from_stack_1 = clsrecepcion.RecordCount
  loc_BCB946: ILdRf var_94
  loc_BCB949: LitI4 0
  loc_BCB94E: GtI4
  loc_BCB94F: BranchF loc_BCBC58
  loc_BCB952: FLdRfVar var_DC
  loc_BCB955: FLdRfVar var_B0
  loc_BCB958: LitVarStr var_AC, "CodiOrco"
  loc_BCB95D: PopAdLdVar
  loc_BCB95E: FLdRfVar var_9C
  loc_BCB961: FLdRfVar var_98
  loc_BCB964: FLdPr Me
  loc_BCB967: MemLdRfVar from_stack_1.global_52
  loc_BCB96A: NewIfNullPr clsrecepcion
  loc_BCB96D: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCB972: FLdPr var_98
  loc_BCB975:  = Me.Fields
  loc_BCB97A: FLdPr var_9C
  loc_BCB97D: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB982: FLdPr var_B0
  loc_BCB985:  = Me.Value
  loc_BCB98A: FLdRfVar var_EC
  loc_BCB98D: FLdRfVar var_CC
  loc_BCB990: LitVarStr var_C8, "CodiRece"
  loc_BCB995: PopAdLdVar
  loc_BCB996: FLdRfVar var_B8
  loc_BCB999: FLdRfVar var_B4
  loc_BCB99C: FLdPr Me
  loc_BCB99F: MemLdRfVar from_stack_1.global_52
  loc_BCB9A2: NewIfNullPr clsrecepcion
  loc_BCB9A5: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCB9AA: FLdPr var_B4
  loc_BCB9AD:  = Me.Fields
  loc_BCB9B2: FLdPr var_B8
  loc_BCB9B5: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB9BA: FLdPr var_CC
  loc_BCB9BD:  = Me.Value
  loc_BCB9C2: FLdRfVar var_8C
  loc_BCB9C5: FLdRfVar var_EC
  loc_BCB9C8: CI2Var
  loc_BCB9C9: FLdRfVar var_DC
  loc_BCB9CC: CI4Var
  loc_BCB9CE: FLdPr Me
  loc_BCB9D1: MemLdRfVar from_stack_1.global_52
  loc_BCB9D4: NewIfNullPr clsrecepcion
  loc_BCB9D7: from_stack_3v = clsrecepcion.ValidaModificar(from_stack_1v, from_stack_2v)
  loc_BCB9DC: ILdRf var_8C
  loc_BCB9DF: FLdPr Me
  loc_BCB9E2: MemStStrCopy
  loc_BCB9E6: FFree1Str var_8C
  loc_BCB9E9: FFreeAd var_98 = "": var_9C = "": var_B4 = "": var_B8 = "": var_B0 = ""
  loc_BCB9F8: FFreeVar var_DC = ""
  loc_BCB9FF: FLdPr Me
  loc_BCBA02: MemLdStr global_92
  loc_BCBA05: LitStr vbNullString
  loc_BCBA08: NeStr
  loc_BCBA0A: BranchF loc_BCBA20
  loc_BCBA0D: LitI4 0
  loc_BCBA12: FLdPr Me
  loc_BCBA15: MemLdStr global_92
  loc_BCBA18: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BCBA1D: Branch loc_BCBC58
  loc_BCBA20: LitI2_Byte 2
  loc_BCBA22: FLdPr Me
  loc_BCBA25: MemStUI1
  loc_BCBA29: ILdRf Me
  loc_BCBA2C: CastAd
  loc_BCBA2F: FStAdFunc var_98
  loc_BCBA32: FLdRfVar var_98
  loc_BCBA35: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BCBA3A: FFree1Ad var_98
  loc_BCBA3D: LitI4 0
  loc_BCBA42: LitI4 0
  loc_BCBA47: FLdRfVar var_F0
  loc_BCBA4A: Redim
  loc_BCBA54: FLdPr Me
  loc_BCBA57: VCallAd Control_ID_dgdABMS
  loc_BCBA5A: CVarAd
  loc_BCBA5E: ParmAry1St
  loc_BCBA64: FLdRfVar var_F0
  loc_BCBA67: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BCBA6C: FLdRfVar var_F0
  loc_BCBA6F: Erase
  loc_BCBA70: ILdRf Me
  loc_BCBA73: CastAd
  loc_BCBA76: FStAdFunc var_98
  loc_BCBA79: FLdRfVar var_98
  loc_BCBA7C: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BCBA81: FFree1Ad var_98
  loc_BCBA84: LitI4 0
  loc_BCBA89: LitI4 0
  loc_BCBA8E: FLdRfVar var_F0
  loc_BCBA91: Redim
  loc_BCBA9B: FLdPr Me
  loc_BCBA9E: VCallAd Control_ID_ItemCompraFlex
  loc_BCBAA1: CVarAd
  loc_BCBAA5: ParmAry1St
  loc_BCBAAB: FLdRfVar var_F0
  loc_BCBAAE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BCBAB3: FLdRfVar var_F0
  loc_BCBAB6: Erase
  loc_BCBAB7: FLdRfVar var_F2
  loc_BCBABA: FLdPr Me
  loc_BCBABD: VCallAd Control_ID_ExpeImpuGDETxt
  loc_BCBAC0: FStAdFunc var_98
  loc_BCBAC3: FLdPr var_98
  loc_BCBAC6:  = Me.Visible
  loc_BCBACB: FLdI2 var_F2
  loc_BCBACE: LitI2_Byte &HFF
  loc_BCBAD0: EqI2
  loc_BCBAD1: FFree1Ad var_98
  loc_BCBAD4: BranchF loc_BCBB0A
  loc_BCBAD7: LitI4 0
  loc_BCBADC: LitI4 0
  loc_BCBAE1: FLdRfVar var_F0
  loc_BCBAE4: Redim
  loc_BCBAEE: FLdPr Me
  loc_BCBAF1: VCallAd Control_ID_ExpeImpuGDETxt
  loc_BCBAF4: CVarAd
  loc_BCBAF8: ParmAry1St
  loc_BCBAFE: FLdRfVar var_F0
  loc_BCBB01: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BCBB06: FLdRfVar var_F0
  loc_BCBB09: Erase
  loc_BCBB0A: FLdRfVar var_DC
  loc_BCBB0D: FLdRfVar var_B0
  loc_BCBB10: LitVarStr var_AC, "CodiOrco"
  loc_BCBB15: PopAdLdVar
  loc_BCBB16: FLdRfVar var_9C
  loc_BCBB19: FLdRfVar var_98
  loc_BCBB1C: FLdPr Me
  loc_BCBB1F: MemLdRfVar from_stack_1.global_52
  loc_BCBB22: NewIfNullPr clsrecepcion
  loc_BCBB25: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCBB2A: FLdPr var_98
  loc_BCBB2D:  = Me.Fields
  loc_BCBB32: FLdPr var_9C
  loc_BCBB35: from_stack_2 = Me.Item(from_stack_1)
  loc_BCBB3A: FLdPr var_B0
  loc_BCBB3D:  = Me.Value
  loc_BCBB42: FLdRfVar var_EC
  loc_BCBB45: FLdRfVar var_CC
  loc_BCBB48: LitVarStr var_C8, "CodiRece"
  loc_BCBB4D: PopAdLdVar
  loc_BCBB4E: FLdRfVar var_B8
  loc_BCBB51: FLdRfVar var_B4
  loc_BCBB54: FLdPr Me
  loc_BCBB57: MemLdRfVar from_stack_1.global_52
  loc_BCBB5A: NewIfNullPr clsrecepcion
  loc_BCBB5D: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCBB62: FLdPr var_B4
  loc_BCBB65:  = Me.Fields
  loc_BCBB6A: FLdPr var_B8
  loc_BCBB6D: from_stack_2 = Me.Item(from_stack_1)
  loc_BCBB72: FLdPr var_CC
  loc_BCBB75:  = Me.Value
  loc_BCBB7A: FLdRfVar var_8C
  loc_BCBB7D: FLdRfVar var_EC
  loc_BCBB80: CI2Var
  loc_BCBB81: FLdRfVar var_DC
  loc_BCBB84: CI4Var
  loc_BCBB86: FLdPr Me
  loc_BCBB89: MemLdRfVar from_stack_1.global_52
  loc_BCBB8C: NewIfNullPr clsrecepcion
  loc_BCBB8F: from_stack_3v = clsrecepcion.ValidaAnular(from_stack_1v, from_stack_2v)
  loc_BCBB94: ILdRf var_8C
  loc_BCBB97: FLdPr Me
  loc_BCBB9A: MemStStrCopy
  loc_BCBB9E: FFree1Str var_8C
  loc_BCBBA1: FFreeAd var_98 = "": var_9C = "": var_B4 = "": var_B8 = "": var_B0 = ""
  loc_BCBBB0: FFreeVar var_DC = ""
  loc_BCBBB7: FLdPr Me
  loc_BCBBBA: MemLdStr global_92
  loc_BCBBBD: LitStr vbNullString
  loc_BCBBC0: NeStr
  loc_BCBBC2: BranchF loc_BCBBD5
  loc_BCBBC5: LitI4 0
  loc_BCBBCA: LitStr "El Encabezado no puede modificarse, pero sí los items NO imputados..."
  loc_BCBBCD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BCBBD2: Branch loc_BCBC58
  loc_BCBBD5: LitI4 0
  loc_BCBBDA: LitI4 5
  loc_BCBBDF: FLdRfVar var_F0
  loc_BCBBE2: Redim
  loc_BCBBEC: FLdPr Me
  loc_BCBBEF: VCallAd Control_ID_FepaReceMsk
  loc_BCBBF2: CVarAd
  loc_BCBBF6: ParmAry1St
  loc_BCBBFC: FLdPr Me
  loc_BCBBFF: VCallAd Control_ID_FefaReceMsk
  loc_BCBC02: CVarAd
  loc_BCBC06: ParmAry1St
  loc_BCBC0C: FLdPr Me
  loc_BCBC0F: VCallAd Control_ID_TifaReceCbo
  loc_BCBC12: CVarAd
  loc_BCBC16: ParmAry1St
  loc_BCBC1C: FLdPr Me
  loc_BCBC1F: VCallAd Control_ID_SufaReceMsk
  loc_BCBC22: CVarAd
  loc_BCBC26: ParmAry1St
  loc_BCBC2C: FLdPr Me
  loc_BCBC2F: VCallAd Control_ID_NufaReceMsk
  loc_BCBC32: CVarAd
  loc_BCBC36: ParmAry1St
  loc_BCBC3C: FLdPr Me
  loc_BCBC3F: VCallAd Control_ID_ExpeImpuTxt
  loc_BCBC42: CVarAd
  loc_BCBC46: ParmAry1St
  loc_BCBC4C: FLdRfVar var_F0
  loc_BCBC4F: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BCBC54: FLdRfVar var_F0
  loc_BCBC57: Erase
  loc_BCBC58: Branch loc_BCCC5D
  loc_BCBC5B: ILdRf var_90
  loc_BCBC5E: LitStr "btnEliminar"
  loc_BCBC61: EqStr
  loc_BCBC63: BranchF loc_BCBE32
  loc_BCBC66: FLdRfVar var_94
  loc_BCBC69: FLdPr Me
  loc_BCBC6C: MemLdRfVar from_stack_1.global_52
  loc_BCBC6F: NewIfNullPr clsrecepcion
  loc_BCBC72: from_stack_1 = clsrecepcion.RecordCount
  loc_BCBC77: ILdRf var_94
  loc_BCBC7A: LitI4 0
  loc_BCBC7F: GtI4
  loc_BCBC80: BranchF loc_BCBE2F
  loc_BCBC83: FLdRfVar var_DC
  loc_BCBC86: FLdRfVar var_B0
  loc_BCBC89: LitVarStr var_AC, "CodiOrco"
  loc_BCBC8E: PopAdLdVar
  loc_BCBC8F: FLdRfVar var_9C
  loc_BCBC92: FLdRfVar var_98
  loc_BCBC95: FLdPr Me
  loc_BCBC98: MemLdRfVar from_stack_1.global_52
  loc_BCBC9B: NewIfNullPr clsrecepcion
  loc_BCBC9E: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCBCA3: FLdPr var_98
  loc_BCBCA6:  = Me.Fields
  loc_BCBCAB: FLdPr var_9C
  loc_BCBCAE: from_stack_2 = Me.Item(from_stack_1)
  loc_BCBCB3: FLdPr var_B0
  loc_BCBCB6:  = Me.Value
  loc_BCBCBB: FLdRfVar var_EC
  loc_BCBCBE: FLdRfVar var_CC
  loc_BCBCC1: LitVarStr var_C8, "CodiRece"
  loc_BCBCC6: PopAdLdVar
  loc_BCBCC7: FLdRfVar var_B8
  loc_BCBCCA: FLdRfVar var_B4
  loc_BCBCCD: FLdPr Me
  loc_BCBCD0: MemLdRfVar from_stack_1.global_52
  loc_BCBCD3: NewIfNullPr clsrecepcion
  loc_BCBCD6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCBCDB: FLdPr var_B4
  loc_BCBCDE:  = Me.Fields
  loc_BCBCE3: FLdPr var_B8
  loc_BCBCE6: from_stack_2 = Me.Item(from_stack_1)
  loc_BCBCEB: FLdPr var_CC
  loc_BCBCEE:  = Me.Value
  loc_BCBCF3: FLdRfVar var_8C
  loc_BCBCF6: FLdRfVar var_EC
  loc_BCBCF9: CI2Var
  loc_BCBCFA: FLdRfVar var_DC
  loc_BCBCFD: CI4Var
  loc_BCBCFF: FLdPr Me
  loc_BCBD02: MemLdRfVar from_stack_1.global_52
  loc_BCBD05: NewIfNullPr clsrecepcion
  loc_BCBD08: from_stack_3v = clsrecepcion.ValidaAnular(from_stack_1v, from_stack_2v)
  loc_BCBD0D: ILdRf var_8C
  loc_BCBD10: FLdPr Me
  loc_BCBD13: MemStStrCopy
  loc_BCBD17: FFree1Str var_8C
  loc_BCBD1A: FFreeAd var_98 = "": var_9C = "": var_B4 = "": var_B8 = "": var_B0 = ""
  loc_BCBD29: FFreeVar var_DC = ""
  loc_BCBD30: FLdPr Me
  loc_BCBD33: MemLdStr global_92
  loc_BCBD36: LitStr vbNullString
  loc_BCBD39: NeStr
  loc_BCBD3B: BranchF loc_BCBD51
  loc_BCBD3E: LitI4 0
  loc_BCBD43: FLdPr Me
  loc_BCBD46: MemLdStr global_92
  loc_BCBD49: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BCBD4E: Branch loc_BCBE2F
  loc_BCBD51: LitI2_Byte 3
  loc_BCBD53: FLdPr Me
  loc_BCBD56: MemStUI1
  loc_BCBD5A: ILdRf Me
  loc_BCBD5D: CastAd
  loc_BCBD60: FStAdFunc var_98
  loc_BCBD63: FLdRfVar var_98
  loc_BCBD66: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BCBD6B: FFree1Ad var_98
  loc_BCBD6E: LitI4 0
  loc_BCBD73: LitI4 1
  loc_BCBD78: FLdRfVar var_F0
  loc_BCBD7B: Redim
  loc_BCBD85: FLdPr Me
  loc_BCBD88: VCallAd Control_ID_dgdABMS
  loc_BCBD8B: CVarAd
  loc_BCBD8F: ParmAry1St
  loc_BCBD95: FLdPr Me
  loc_BCBD98: VCallAd Control_ID_ItemCompraFlex
  loc_BCBD9B: CVarAd
  loc_BCBD9F: ParmAry1St
  loc_BCBDA5: FLdRfVar var_F0
  loc_BCBDA8: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BCBDAD: FLdRfVar var_F0
  loc_BCBDB0: Erase
  loc_BCBDB1: ILdRf Me
  loc_BCBDB4: CastAd
  loc_BCBDB7: FStAdFunc var_98
  loc_BCBDBA: FLdRfVar var_98
  loc_BCBDBD: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BCBDC2: FFree1Ad var_98
  loc_BCBDC5: LitI2_Byte 0
  loc_BCBDC7: PopTmpLdAd2 var_F2
  loc_BCBDCA: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_BCBDCF: CStrDate
  loc_BCBDD1: CVarStr var_DC
  loc_BCBDD4: PopAdLdVar
  loc_BCBDD5: FLdPr Me
  loc_BCBDD8: VCallAd Control_ID_FeanReceMsk
  loc_BCBDDB: FStAdFunc var_98
  loc_BCBDDE: FLdPr var_98
  loc_BCBDE1: LateIdSt
  loc_BCBDE6: FFree1Ad var_98
  loc_BCBDE9: FFree1Var var_DC = ""
  loc_BCBDEC: LitI4 0
  loc_BCBDF1: LitI4 1
  loc_BCBDF6: FLdRfVar var_F0
  loc_BCBDF9: Redim
  loc_BCBE03: FLdPr Me
  loc_BCBE06: VCallAd Control_ID_FeanReceMsk
  loc_BCBE09: CVarAd
  loc_BCBE0D: ParmAry1St
  loc_BCBE13: FLdPr Me
  loc_BCBE16: VCallAd Control_ID_MoanReceTxt
  loc_BCBE19: CVarAd
  loc_BCBE1D: ParmAry1St
  loc_BCBE23: FLdRfVar var_F0
  loc_BCBE26: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BCBE2B: FLdRfVar var_F0
  loc_BCBE2E: Erase
  loc_BCBE2F: Branch loc_BCCC5D
  loc_BCBE32: ILdRf var_90
  loc_BCBE35: LitStr "btnGuardar"
  loc_BCBE38: EqStr
  loc_BCBE3A: BranchF loc_BCC864
  loc_BCBE3D: LitStr vbNullString
  loc_BCBE40: FLdPr Me
  loc_BCBE43: MemStStrCopy
  loc_BCBE47: FLdPr Me
  loc_BCBE4A: MemLdUI1 global_76
  loc_BCBE4E: FStUI1 var_136
  loc_BCBE52: FLdUI1
  loc_BCBE56: LitI2_Byte 2
  loc_BCBE58: EqI2
  loc_BCBE59: BranchF loc_BCC6FC
  loc_BCBE5C: LitI2_Byte 0
  loc_BCBE5E: PopTmpLdAd2 var_F2
  loc_BCBE61: Call FechReceMsk_UnknownEvent_8()
  loc_BCBE66: FLdPr Me
  loc_BCBE69: MemLdStr global_92
  loc_BCBE6C: LitStr vbNullString
  loc_BCBE6F: NeStr
  loc_BCBE71: BranchF loc_BCBE75
  loc_BCBE74: ExitProcHresult
  loc_BCBE75: LitI2_Byte 0
  loc_BCBE77: PopTmpLdAd2 var_F2
  loc_BCBE7A: Call SufaReceMsk_UnknownEvent_8()
  loc_BCBE7F: FLdPr Me
  loc_BCBE82: MemLdStr global_92
  loc_BCBE85: LitStr vbNullString
  loc_BCBE88: NeStr
  loc_BCBE8A: BranchF loc_BCBE8E
  loc_BCBE8D: ExitProcHresult
  loc_BCBE8E: LitI2_Byte 0
  loc_BCBE90: PopTmpLdAd2 var_F2
  loc_BCBE93: Call NufaReceMsk_UnknownEvent_8()
  loc_BCBE98: FLdPr Me
  loc_BCBE9B: MemLdStr global_92
  loc_BCBE9E: LitStr vbNullString
  loc_BCBEA1: NeStr
  loc_BCBEA3: BranchF loc_BCBEA7
  loc_BCBEA6: ExitProcHresult
  loc_BCBEA7: LitI2_Byte 0
  loc_BCBEA9: PopTmpLdAd2 var_F2
  loc_BCBEAC: Call ExpeImpuGDETxt_Validate(from_stack_1v)
  loc_BCBEB1: FLdPr Me
  loc_BCBEB4: MemLdStr global_92
  loc_BCBEB7: LitStr vbNullString
  loc_BCBEBA: NeStr
  loc_BCBEBC: BranchF loc_BCBEC0
  loc_BCBEBF: ExitProcHresult
  loc_BCBEC0: FLdPr Me
  loc_BCBEC3: VCallAd Control_ID_ItemCompraFlex
  loc_BCBEC6: FStAdFunc var_98
  loc_BCBEC9: FLdPr var_98
  loc_BCBECC: LateIdLdVar var_DC DispID_4 0
  loc_BCBED3: CI4Var
  loc_BCBED5: LitI4 1
  loc_BCBEDA: EqI4
  loc_BCBEDB: FFree1Ad var_98
  loc_BCBEDE: FFree1Var var_DC = ""
  loc_BCBEE1: BranchF loc_BCBEF2
  loc_BCBEE4: LitI4 0
  loc_BCBEE9: LitStr "No existe ningún item para hacer la recepción. Verifique..."
  loc_BCBEEC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BCBEF1: ExitProcHresult
  loc_BCBEF2: LitI2_Byte 1
  loc_BCBEF4: FLdPr Me
  loc_BCBEF7: MemLdRfVar from_stack_1.global_68
  loc_BCBEFA: FLdPr Me
  loc_BCBEFD: VCallAd Control_ID_ItemCompraFlex
  loc_BCBF00: FStAdFunc var_98
  loc_BCBF03: FLdPr var_98
  loc_BCBF06: LateIdLdVar var_DC DispID_4 0
  loc_BCBF0D: CI4Var
  loc_BCBF0F: LitI4 1
  loc_BCBF14: SubI4
  loc_BCBF15: CI2I4
  loc_BCBF16: FFree1Ad var_98
  loc_BCBF19: FFree1Var var_DC = ""
  loc_BCBF1C: ForI2 var_13A
  loc_BCBF22: LitVarStr var_C8, "SELECT * FROM itemrecepcion WHERE PeriInfo = "
  loc_BCBF27: FLdRfVar var_DC
  loc_BCBF2A: FLdRfVar var_B0
  loc_BCBF2D: LitVarStr var_AC, "PeriInfo"
  loc_BCBF32: PopAdLdVar
  loc_BCBF33: FLdRfVar var_9C
  loc_BCBF36: FLdRfVar var_98
  loc_BCBF39: FLdPr Me
  loc_BCBF3C: MemLdRfVar from_stack_1.global_52
  loc_BCBF3F: NewIfNullPr clsrecepcion
  loc_BCBF42: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCBF47: FLdPr var_98
  loc_BCBF4A:  = Me.Fields
  loc_BCBF4F: FLdPr var_9C
  loc_BCBF52: from_stack_2 = Me.Item(from_stack_1)
  loc_BCBF57: FLdPr var_B0
  loc_BCBF5A:  = Me.Value
  loc_BCBF5F: FLdRfVar var_DC
  loc_BCBF62: ConcatVar var_EC
  loc_BCBF66: LitVarStr var_14C, " AND CodiOrco = "
  loc_BCBF6B: ConcatVar var_104
  loc_BCBF6F: FLdRfVar var_114
  loc_BCBF72: FLdRfVar var_CC
  loc_BCBF75: LitVarStr var_15C, "CodiOrco"
  loc_BCBF7A: PopAdLdVar
  loc_BCBF7B: FLdRfVar var_B8
  loc_BCBF7E: FLdRfVar var_B4
  loc_BCBF81: FLdPr Me
  loc_BCBF84: MemLdRfVar from_stack_1.global_52
  loc_BCBF87: NewIfNullPr clsrecepcion
  loc_BCBF8A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCBF8F: FLdPr var_B4
  loc_BCBF92:  = Me.Fields
  loc_BCBF97: FLdPr var_B8
  loc_BCBF9A: from_stack_2 = Me.Item(from_stack_1)
  loc_BCBF9F: FLdPr var_CC
  loc_BCBFA2:  = Me.Value
  loc_BCBFA7: FLdRfVar var_114
  loc_BCBFAA: ConcatVar var_124
  loc_BCBFAE: LitVarStr var_16C, " AND CodiRece = "
  loc_BCBFB3: ConcatVar var_134
  loc_BCBFB7: FLdRfVar var_198
  loc_BCBFBA: FLdRfVar var_188
  loc_BCBFBD: LitVarStr var_184, "CodiRece"
  loc_BCBFC2: PopAdLdVar
  loc_BCBFC3: FLdRfVar var_174
  loc_BCBFC6: FLdRfVar var_170
  loc_BCBFC9: FLdPr Me
  loc_BCBFCC: MemLdRfVar from_stack_1.global_52
  loc_BCBFCF: NewIfNullPr clsrecepcion
  loc_BCBFD2: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCBFD7: FLdPr var_170
  loc_BCBFDA:  = Me.Fields
  loc_BCBFDF: FLdPr var_174
  loc_BCBFE2: from_stack_2 = Me.Item(from_stack_1)
  loc_BCBFE7: FLdPr var_188
  loc_BCBFEA:  = Me.Value
  loc_BCBFEF: FLdRfVar var_198
  loc_BCBFF2: ConcatVar var_1A8
  loc_BCBFF6: LitVarStr var_1B8, " AND CodiItco = "
  loc_BCBFFB: ConcatVar var_1C8
  loc_BCBFFF: FLdPr Me
  loc_BCC002: MemLdI2 global_68
  loc_BCC005: CI4UI1
  loc_BCC006: CVarI4
  loc_BCC00A: PopAdLdVar
  loc_BCC00B: LitVarI4
  loc_BCC013: PopAdLdVar
  loc_BCC014: FLdPr Me
  loc_BCC017: VCallAd Control_ID_ItemCompraFlex
  loc_BCC01A: FStAdFunc var_20C
  loc_BCC01D: FLdPr var_20C
  loc_BCC020: LateIdCallLdVar
  loc_BCC02A: CStrVarTmp
  loc_BCC02B: CVarStr var_22C
  loc_BCC02E: ConcatVar var_23C
  loc_BCC032: LitVarStr var_24C, " AND AlteItco = "
  loc_BCC037: ConcatVar var_25C
  loc_BCC03B: FLdPr Me
  loc_BCC03E: MemLdI2 global_68
  loc_BCC041: CI4UI1
  loc_BCC042: CVarI4
  loc_BCC046: PopAdLdVar
  loc_BCC047: LitVarI4
  loc_BCC04F: PopAdLdVar
  loc_BCC050: FLdPr Me
  loc_BCC053: VCallAd Control_ID_ItemCompraFlex
  loc_BCC056: FStAdFunc var_2A0
  loc_BCC059: FLdPr var_2A0
  loc_BCC05C: LateIdCallLdVar
  loc_BCC066: CStrVarTmp
  loc_BCC067: CVarStr var_2C0
  loc_BCC06A: ConcatVar var_2D0
  loc_BCC06E: LitVarStr var_2E0, " ORDER BY PeriInfo, CodiOrco, CodiRece, CodiItco, AlteItco;"
  loc_BCC073: ConcatVar var_2F0
  loc_BCC077: CStrVarVal var_8C
  loc_BCC07B: FLdPr Me
  loc_BCC07E: MemLdRfVar from_stack_1.global_56
  loc_BCC081: NewIfNullPr clsrecepcion
  loc_BCC084: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_BCC089: FFree1Str var_8C
  loc_BCC08C: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_B4 = "": var_B8 = "": var_CC = "": var_170 = "": var_174 = "": var_188 = "": var_20C = ""
  loc_BCC0A5: FFreeVar var_DC = "": var_EC = "": var_104 = "": var_114 = "": var_124 = "": var_134 = "": var_198 = "": var_1A8 = "": var_21C = "": var_1C8 = "": var_22C = "": var_23C = "": var_2B0 = "": var_25C = "": var_2C0 = "": var_2D0 = ""
  loc_BCC0CA: FLdRfVar var_94
  loc_BCC0CD: FLdPr Me
  loc_BCC0D0: MemLdRfVar from_stack_1.global_56
  loc_BCC0D3: NewIfNullPr clsrecepcion
  loc_BCC0D6: from_stack_1 = clsrecepcion.RecordCount
  loc_BCC0DB: ILdRf var_94
  loc_BCC0DE: LitI4 1
  loc_BCC0E3: EqI4
  loc_BCC0E4: BranchF loc_BCC16E
  loc_BCC0E7: FLdRfVar var_EC
  loc_BCC0EA: FLdRfVar var_B4
  loc_BCC0ED: LitVarStr var_16C, "CantItre"
  loc_BCC0F2: PopAdLdVar
  loc_BCC0F3: FLdRfVar var_B0
  loc_BCC0F6: FLdRfVar var_9C
  loc_BCC0F9: FLdPr Me
  loc_BCC0FC: MemLdRfVar from_stack_1.global_56
  loc_BCC0FF: NewIfNullPr clsrecepcion
  loc_BCC102: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC107: FLdPr var_9C
  loc_BCC10A:  = Me.Fields
  loc_BCC10F: FLdPr var_B0
  loc_BCC112: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC117: FLdPr var_B4
  loc_BCC11A:  = Me.Value
  loc_BCC11F: FLdPr Me
  loc_BCC122: MemLdI2 global_68
  loc_BCC125: CI4UI1
  loc_BCC126: CVarI4
  loc_BCC12A: PopAdLdVar
  loc_BCC12B: LitVarI4
  loc_BCC133: PopAdLdVar
  loc_BCC134: FLdPr Me
  loc_BCC137: VCallAd Control_ID_ItemCompraFlex
  loc_BCC13A: FStAdFunc var_98
  loc_BCC13D: FLdPr var_98
  loc_BCC140: LateIdCallLdVar
  loc_BCC14A: CStrVarTmp
  loc_BCC14B: FStStrNoPop var_8C
  loc_BCC14E: CR8Str
  loc_BCC150: FLdRfVar var_EC
  loc_BCC153: FnCDblVar
  loc_BCC155: LtR8
  loc_BCC156: FFree1Str var_8C
  loc_BCC159: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BCC164: FFreeVar var_DC = ""
  loc_BCC16B: BranchF loc_BCC16E
  loc_BCC16E: FLdPr Me
  loc_BCC171: MemLdRfVar from_stack_1.global_68
  loc_BCC174: NextI2 var_13A, loc_BCBF22
  loc_BCC179: FLdRfVar var_8C
  loc_BCC17C: FLdPr Me
  loc_BCC17F: VCallAd Control_ID_ExpeImpuTxt
  loc_BCC182: FStAdFunc var_98
  loc_BCC185: FLdPr var_98
  loc_BCC188:  = Me.Text
  loc_BCC18D: FLdRfVar var_2F4
  loc_BCC190: FLdPr Me
  loc_BCC193: VCallAd Control_ID_ExpeImpuGDETxt
  loc_BCC196: FStAdFunc var_9C
  loc_BCC199: FLdPr var_9C
  loc_BCC19C:  = Me.Text
  loc_BCC1A1: FLdPr Me
  loc_BCC1A4: VCallAd Control_ID_FechReceMsk
  loc_BCC1A7: FStAdFunc var_B0
  loc_BCC1AA: FLdPr var_B0
  loc_BCC1AD: LateIdLdVar var_DC DispID_15 0
  loc_BCC1B4: PopAd
  loc_BCC1B6: FLdPr Me
  loc_BCC1B9: VCallAd Control_ID_FepaReceMsk
  loc_BCC1BC: FStAdFunc var_B4
  loc_BCC1BF: FLdPr var_B4
  loc_BCC1C2: LateIdLdVar var_EC DispID_15 0
  loc_BCC1C9: PopAd
  loc_BCC1CB: FLdPr Me
  loc_BCC1CE: VCallAd Control_ID_FefaReceMsk
  loc_BCC1D1: FStAdFunc var_B8
  loc_BCC1D4: FLdPr var_B8
  loc_BCC1D7: LateIdLdVar var_104 DispID_15 0
  loc_BCC1DE: PopAd
  loc_BCC1E0: FLdRfVar var_2F8
  loc_BCC1E3: FLdPr Me
  loc_BCC1E6: VCallAd Control_ID_TifaReceCbo
  loc_BCC1E9: FStAdFunc var_CC
  loc_BCC1EC: FLdPr var_CC
  loc_BCC1EF:  = Me.Text
  loc_BCC1F4: FLdPr Me
  loc_BCC1F7: VCallAd Control_ID_SufaReceMsk
  loc_BCC1FA: FStAdFunc var_170
  loc_BCC1FD: FLdPr var_170
  loc_BCC200: LateIdLdVar var_114 DispID_22 0
  loc_BCC207: PopAd
  loc_BCC209: FLdPr Me
  loc_BCC20C: VCallAd Control_ID_NufaReceMsk
  loc_BCC20F: FStAdFunc var_174
  loc_BCC212: FLdPr var_174
  loc_BCC215: LateIdLdVar var_124 DispID_22 0
  loc_BCC21C: PopAd
  loc_BCC21E: LitI2_Byte &HFF
  loc_BCC220: FLdRfVar var_124
  loc_BCC223: CStrVarTmp
  loc_BCC224: FStStrNoPop var_300
  loc_BCC227: CI4Str
  loc_BCC228: FLdRfVar var_114
  loc_BCC22B: CStrVarTmp
  loc_BCC22C: FStStrNoPop var_2FC
  loc_BCC22F: CI2Str
  loc_BCC231: ILdRf var_2F8
  loc_BCC234: FLdRfVar var_104
  loc_BCC237: CStrVarTmp
  loc_BCC238: CVarStr var_1A8
  loc_BCC23B: PopAdLdVar
  loc_BCC23C: FLdRfVar var_EC
  loc_BCC23F: CStrVarTmp
  loc_BCC240: CVarStr var_198
  loc_BCC243: PopAdLdVar
  loc_BCC244: FLdRfVar var_DC
  loc_BCC247: CStrVarTmp
  loc_BCC248: CVarStr var_134
  loc_BCC24B: PopAdLdVar
  loc_BCC24C: ILdRf var_2F4
  loc_BCC24F: ILdRf var_8C
  loc_BCC252: FLdPr Me
  loc_BCC255: MemLdRfVar from_stack_1.global_52
  loc_BCC258: NewIfNullPr clsrecepcion
  loc_BCC25B: Call clsrecepcion.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_BCC260: FFreeStr var_8C = "": var_2F4 = "": var_2F8 = "": var_2FC = ""
  loc_BCC26D: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_B4 = "": var_B8 = "": var_CC = "": var_170 = ""
  loc_BCC280: FFreeVar var_DC = "": var_EC = "": var_104 = "": var_114 = "": var_124 = "": var_134 = "": var_198 = ""
  loc_BCC293: LitI2_Byte 1
  loc_BCC295: FLdPr Me
  loc_BCC298: MemLdRfVar from_stack_1.global_68
  loc_BCC29B: FLdPr Me
  loc_BCC29E: VCallAd Control_ID_ItemCompraFlex
  loc_BCC2A1: FStAdFunc var_98
  loc_BCC2A4: FLdPr var_98
  loc_BCC2A7: LateIdLdVar var_DC DispID_4 0
  loc_BCC2AE: CI4Var
  loc_BCC2B0: LitI4 1
  loc_BCC2B5: SubI4
  loc_BCC2B6: CI2I4
  loc_BCC2B7: FFree1Ad var_98
  loc_BCC2BA: FFree1Var var_DC = ""
  loc_BCC2BD: ForI2 var_304
  loc_BCC2C3: LitVarStr var_C8, " SELECT * FROM itemrecepcion WHERE PeriInfo = "
  loc_BCC2C8: FLdRfVar var_DC
  loc_BCC2CB: FLdRfVar var_B0
  loc_BCC2CE: LitVarStr var_AC, "PeriInfo"
  loc_BCC2D3: PopAdLdVar
  loc_BCC2D4: FLdRfVar var_9C
  loc_BCC2D7: FLdRfVar var_98
  loc_BCC2DA: FLdPr Me
  loc_BCC2DD: MemLdRfVar from_stack_1.global_52
  loc_BCC2E0: NewIfNullPr clsrecepcion
  loc_BCC2E3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC2E8: FLdPr var_98
  loc_BCC2EB:  = Me.Fields
  loc_BCC2F0: FLdPr var_9C
  loc_BCC2F3: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC2F8: FLdPr var_B0
  loc_BCC2FB:  = Me.Value
  loc_BCC300: FLdRfVar var_DC
  loc_BCC303: ConcatVar var_EC
  loc_BCC307: LitVarStr var_14C, " AND CodiOrco = "
  loc_BCC30C: ConcatVar var_104
  loc_BCC310: FLdRfVar var_114
  loc_BCC313: FLdRfVar var_CC
  loc_BCC316: LitVarStr var_15C, "CodiOrco"
  loc_BCC31B: PopAdLdVar
  loc_BCC31C: FLdRfVar var_B8
  loc_BCC31F: FLdRfVar var_B4
  loc_BCC322: FLdPr Me
  loc_BCC325: MemLdRfVar from_stack_1.global_52
  loc_BCC328: NewIfNullPr clsrecepcion
  loc_BCC32B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC330: FLdPr var_B4
  loc_BCC333:  = Me.Fields
  loc_BCC338: FLdPr var_B8
  loc_BCC33B: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC340: FLdPr var_CC
  loc_BCC343:  = Me.Value
  loc_BCC348: FLdRfVar var_114
  loc_BCC34B: ConcatVar var_124
  loc_BCC34F: LitVarStr var_16C, " AND CodiRece = "
  loc_BCC354: ConcatVar var_134
  loc_BCC358: FLdRfVar var_198
  loc_BCC35B: FLdRfVar var_188
  loc_BCC35E: LitVarStr var_184, "CodiRece"
  loc_BCC363: PopAdLdVar
  loc_BCC364: FLdRfVar var_174
  loc_BCC367: FLdRfVar var_170
  loc_BCC36A: FLdPr Me
  loc_BCC36D: MemLdRfVar from_stack_1.global_52
  loc_BCC370: NewIfNullPr clsrecepcion
  loc_BCC373: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC378: FLdPr var_170
  loc_BCC37B:  = Me.Fields
  loc_BCC380: FLdPr var_174
  loc_BCC383: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC388: FLdPr var_188
  loc_BCC38B:  = Me.Value
  loc_BCC390: FLdRfVar var_198
  loc_BCC393: ConcatVar var_1A8
  loc_BCC397: LitVarStr var_1B8, " AND CodiItco = "
  loc_BCC39C: ConcatVar var_1C8
  loc_BCC3A0: FLdPr Me
  loc_BCC3A3: MemLdI2 global_68
  loc_BCC3A6: CI4UI1
  loc_BCC3A7: CVarI4
  loc_BCC3AB: PopAdLdVar
  loc_BCC3AC: LitVarI4
  loc_BCC3B4: PopAdLdVar
  loc_BCC3B5: FLdPr Me
  loc_BCC3B8: VCallAd Control_ID_ItemCompraFlex
  loc_BCC3BB: FStAdFunc var_20C
  loc_BCC3BE: FLdPr var_20C
  loc_BCC3C1: LateIdCallLdVar
  loc_BCC3CB: CStrVarTmp
  loc_BCC3CC: CVarStr var_22C
  loc_BCC3CF: ConcatVar var_23C
  loc_BCC3D3: LitVarStr var_24C, " AND AlteItco = "
  loc_BCC3D8: ConcatVar var_25C
  loc_BCC3DC: FLdPr Me
  loc_BCC3DF: MemLdI2 global_68
  loc_BCC3E2: CI4UI1
  loc_BCC3E3: CVarI4
  loc_BCC3E7: PopAdLdVar
  loc_BCC3E8: LitVarI4
  loc_BCC3F0: PopAdLdVar
  loc_BCC3F1: FLdPr Me
  loc_BCC3F4: VCallAd Control_ID_ItemCompraFlex
  loc_BCC3F7: FStAdFunc var_2A0
  loc_BCC3FA: FLdPr var_2A0
  loc_BCC3FD: LateIdCallLdVar
  loc_BCC407: CStrVarTmp
  loc_BCC408: CVarStr var_2C0
  loc_BCC40B: ConcatVar var_2D0
  loc_BCC40F: LitVarStr var_2E0, " ORDER BY PeriInfo, CodiOrco, CodiRece, CodiItco, AlteItco"
  loc_BCC414: ConcatVar var_2F0
  loc_BCC418: CStrVarVal var_8C
  loc_BCC41C: FLdPr Me
  loc_BCC41F: MemLdRfVar from_stack_1.global_56
  loc_BCC422: NewIfNullPr clsrecepcion
  loc_BCC425: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_BCC42A: FFree1Str var_8C
  loc_BCC42D: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_B4 = "": var_B8 = "": var_CC = "": var_170 = "": var_174 = "": var_188 = "": var_20C = ""
  loc_BCC446: FFreeVar var_DC = "": var_EC = "": var_104 = "": var_114 = "": var_124 = "": var_134 = "": var_198 = "": var_1A8 = "": var_21C = "": var_1C8 = "": var_22C = "": var_23C = "": var_2B0 = "": var_25C = "": var_2C0 = "": var_2D0 = ""
  loc_BCC46B: FLdRfVar var_94
  loc_BCC46E: FLdPr Me
  loc_BCC471: MemLdRfVar from_stack_1.global_56
  loc_BCC474: NewIfNullPr clsrecepcion
  loc_BCC477: from_stack_1 = clsrecepcion.RecordCount
  loc_BCC47C: ILdRf var_94
  loc_BCC47F: LitI4 1
  loc_BCC484: EqI4
  loc_BCC485: BranchF loc_BCC6EE
  loc_BCC488: FLdPr Me
  loc_BCC48B: MemLdI2 global_68
  loc_BCC48E: CI4UI1
  loc_BCC48F: CVarI4
  loc_BCC493: PopAdLdVar
  loc_BCC494: LitVarI4
  loc_BCC49C: PopAdLdVar
  loc_BCC49D: FLdPr Me
  loc_BCC4A0: VCallAd Control_ID_ItemCompraFlex
  loc_BCC4A3: FStAdFunc var_B4
  loc_BCC4A6: FLdPr var_B4
  loc_BCC4A9: LateIdCallLdVar
  loc_BCC4B3: PopAd
  loc_BCC4B5: FLdRfVar var_DC
  loc_BCC4B8: FLdRfVar var_B0
  loc_BCC4BB: LitVarStr var_AC, "CantItre"
  loc_BCC4C0: PopAdLdVar
  loc_BCC4C1: FLdRfVar var_9C
  loc_BCC4C4: FLdRfVar var_98
  loc_BCC4C7: FLdPr Me
  loc_BCC4CA: MemLdRfVar from_stack_1.global_56
  loc_BCC4CD: NewIfNullPr clsrecepcion
  loc_BCC4D0: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC4D5: FLdPr var_98
  loc_BCC4D8:  = Me.Fields
  loc_BCC4DD: FLdPr var_9C
  loc_BCC4E0: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC4E5: FLdPr var_B0
  loc_BCC4E8:  = Me.Value
  loc_BCC4ED: FLdRfVar var_DC
  loc_BCC4F0: FnCDblVar
  loc_BCC4F2: FLdRfVar var_EC
  loc_BCC4F5: CStrVarTmp
  loc_BCC4F6: FStStrNoPop var_8C
  loc_BCC4F9: CR8Str
  loc_BCC4FB: NeR8
  loc_BCC4FC: FFree1Str var_8C
  loc_BCC4FF: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BCC50A: FFreeVar var_DC = ""
  loc_BCC511: BranchF loc_BCC6EE
  loc_BCC514: FLdRfVar var_EC
  loc_BCC517: FLdRfVar var_B4
  loc_BCC51A: LitVarStr var_16C, "CantItre"
  loc_BCC51F: PopAdLdVar
  loc_BCC520: FLdRfVar var_B0
  loc_BCC523: FLdRfVar var_9C
  loc_BCC526: FLdPr Me
  loc_BCC529: MemLdRfVar from_stack_1.global_56
  loc_BCC52C: NewIfNullPr clsrecepcion
  loc_BCC52F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC534: FLdPr var_9C
  loc_BCC537:  = Me.Fields
  loc_BCC53C: FLdPr var_B0
  loc_BCC53F: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC544: FLdPr var_B4
  loc_BCC547:  = Me.Value
  loc_BCC54C: FLdPr Me
  loc_BCC54F: MemLdI2 global_68
  loc_BCC552: CI4UI1
  loc_BCC553: CVarI4
  loc_BCC557: PopAdLdVar
  loc_BCC558: LitVarI4
  loc_BCC560: PopAdLdVar
  loc_BCC561: FLdPr Me
  loc_BCC564: VCallAd Control_ID_ItemCompraFlex
  loc_BCC567: FStAdFunc var_98
  loc_BCC56A: FLdPr var_98
  loc_BCC56D: LateIdCallLdVar
  loc_BCC577: CStrVarTmp
  loc_BCC578: FStStrNoPop var_8C
  loc_BCC57B: CR8Str
  loc_BCC57D: FLdRfVar var_EC
  loc_BCC580: FnCDblVar
  loc_BCC582: GtR4
  loc_BCC583: FFree1Str var_8C
  loc_BCC586: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BCC591: FFreeVar var_DC = ""
  loc_BCC598: BranchF loc_BCC667
  loc_BCC59B: FLdPr Me
  loc_BCC59E: MemLdI2 global_68
  loc_BCC5A1: CI4UI1
  loc_BCC5A2: CVarI4
  loc_BCC5A6: PopAdLdVar
  loc_BCC5A7: LitVarI4
  loc_BCC5AF: PopAdLdVar
  loc_BCC5B0: FLdPr Me
  loc_BCC5B3: VCallAd Control_ID_ItemCompraFlex
  loc_BCC5B6: FStAdFunc var_98
  loc_BCC5B9: FLdPr var_98
  loc_BCC5BC: LateIdCallLdVar
  loc_BCC5C6: PopAd
  loc_BCC5C8: FLdPr Me
  loc_BCC5CB: MemLdRfVar from_stack_1.global_108
  loc_BCC5CE: NewIfNullRf
  loc_BCC5D2: FLdRfVar var_DC
  loc_BCC5D5: CStrVarTmp
  loc_BCC5D6: FStStrNoPop var_8C
  loc_BCC5D9: ImpAdLdI2 MemVar_C3D064
  loc_BCC5DC: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_BCC5E1: FFree1Str var_8C
  loc_BCC5E4: FFree1Ad var_98
  loc_BCC5E7: FFree1Var var_DC = ""
  loc_BCC5EA: FLdRfVar var_8C
  loc_BCC5ED: FLdPr Me
  loc_BCC5F0: MemLdRfVar from_stack_1.global_108
  loc_BCC5F3: NewIfNullPr tblpartida
  loc_BCC5F6: from_stack_1v = tblpartida.InvePartGet()
  loc_BCC5FB: ILdRf var_8C
  loc_BCC5FE: LitStr "Si"
  loc_BCC601: EqStr
  loc_BCC603: FFree1Str var_8C
  loc_BCC606: BranchF loc_BCC664
  loc_BCC609: FLdPr Me
  loc_BCC60C: MemLdI2 global_68
  loc_BCC60F: CI4UI1
  loc_BCC610: CVarI4
  loc_BCC614: PopAdLdVar
  loc_BCC615: LitVarI4
  loc_BCC61D: PopAdLdVar
  loc_BCC61E: FLdPr Me
  loc_BCC621: VCallAd Control_ID_ItemCompraFlex
  loc_BCC624: FStAdFunc var_98
  loc_BCC627: FLdPr var_98
  loc_BCC62A: LateIdCallLdVar
  loc_BCC634: PopAd
  loc_BCC636: LitI4 0
  loc_BCC63B: LitStr "El Item: "
  loc_BCC63E: FLdRfVar var_DC
  loc_BCC641: CStrVarTmp
  loc_BCC642: FStStrNoPop var_8C
  loc_BCC645: ConcatStr
  loc_BCC646: FStStrNoPop var_2F4
  loc_BCC649: LitStr " es Inventariable."
  loc_BCC64C: ConcatStr
  loc_BCC64D: FStStrNoPop var_2F8
  loc_BCC650: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BCC655: FFreeStr var_8C = "": var_2F4 = ""
  loc_BCC65E: FFree1Ad var_98
  loc_BCC661: FFree1Var var_DC = ""
  loc_BCC664: Branch loc_BCC6EE
  loc_BCC667: FLdRfVar var_EC
  loc_BCC66A: FLdRfVar var_B4
  loc_BCC66D: LitVarStr var_16C, "CantItre"
  loc_BCC672: PopAdLdVar
  loc_BCC673: FLdRfVar var_B0
  loc_BCC676: FLdRfVar var_9C
  loc_BCC679: FLdPr Me
  loc_BCC67C: MemLdRfVar from_stack_1.global_56
  loc_BCC67F: NewIfNullPr clsrecepcion
  loc_BCC682: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC687: FLdPr var_9C
  loc_BCC68A:  = Me.Fields
  loc_BCC68F: FLdPr var_B0
  loc_BCC692: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC697: FLdPr var_B4
  loc_BCC69A:  = Me.Value
  loc_BCC69F: FLdPr Me
  loc_BCC6A2: MemLdI2 global_68
  loc_BCC6A5: CI4UI1
  loc_BCC6A6: CVarI4
  loc_BCC6AA: PopAdLdVar
  loc_BCC6AB: LitVarI4
  loc_BCC6B3: PopAdLdVar
  loc_BCC6B4: FLdPr Me
  loc_BCC6B7: VCallAd Control_ID_ItemCompraFlex
  loc_BCC6BA: FStAdFunc var_98
  loc_BCC6BD: FLdPr var_98
  loc_BCC6C0: LateIdCallLdVar
  loc_BCC6CA: CStrVarTmp
  loc_BCC6CB: FStStrNoPop var_8C
  loc_BCC6CE: CR8Str
  loc_BCC6D0: FLdRfVar var_EC
  loc_BCC6D3: FnCDblVar
  loc_BCC6D5: LtR8
  loc_BCC6D6: FFree1Str var_8C
  loc_BCC6D9: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BCC6E4: FFreeVar var_DC = ""
  loc_BCC6EB: BranchF loc_BCC6EE
  loc_BCC6EE: FLdPr Me
  loc_BCC6F1: MemLdRfVar from_stack_1.global_68
  loc_BCC6F4: NextI2 var_304, loc_BCC2C3
  loc_BCC6F9: Branch loc_BCC85C
  loc_BCC6FC: FLdUI1
  loc_BCC700: LitI2_Byte 3
  loc_BCC702: EqI2
  loc_BCC703: BranchF loc_BCC85C
  loc_BCC706: LitI2_Byte 0
  loc_BCC708: PopTmpLdAd2 var_F2
  loc_BCC70B: Call FeanReceMsk_UnknownEvent_8()
  loc_BCC710: FLdPr Me
  loc_BCC713: MemLdStr global_92
  loc_BCC716: LitStr vbNullString
  loc_BCC719: NeStr
  loc_BCC71B: BranchF loc_BCC71F
  loc_BCC71E: ExitProcHresult
  loc_BCC71F: LitI2_Byte 0
  loc_BCC721: PopTmpLdAd2 var_F2
  loc_BCC724: Call MoanReceTxt_Validate(from_stack_1v)
  loc_BCC729: FLdPr Me
  loc_BCC72C: MemLdStr global_92
  loc_BCC72F: LitStr vbNullString
  loc_BCC732: NeStr
  loc_BCC734: BranchF loc_BCC738
  loc_BCC737: ExitProcHresult
  loc_BCC738: FLdRfVar var_EC
  loc_BCC73B: FLdRfVar var_B0
  loc_BCC73E: LitVarStr var_AC, "PeriInfo"
  loc_BCC743: PopAdLdVar
  loc_BCC744: FLdRfVar var_9C
  loc_BCC747: FLdRfVar var_98
  loc_BCC74A: FLdPr Me
  loc_BCC74D: MemLdRfVar from_stack_1.global_52
  loc_BCC750: NewIfNullPr clsrecepcion
  loc_BCC753: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC758: FLdPr var_98
  loc_BCC75B:  = Me.Fields
  loc_BCC760: FLdPr var_9C
  loc_BCC763: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC768: FLdPr var_B0
  loc_BCC76B:  = Me.Value
  loc_BCC770: FLdRfVar var_104
  loc_BCC773: FLdRfVar var_CC
  loc_BCC776: LitVarStr var_C8, "CodiOrco"
  loc_BCC77B: PopAdLdVar
  loc_BCC77C: FLdRfVar var_B8
  loc_BCC77F: FLdRfVar var_B4
  loc_BCC782: FLdPr Me
  loc_BCC785: MemLdRfVar from_stack_1.global_52
  loc_BCC788: NewIfNullPr clsrecepcion
  loc_BCC78B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC790: FLdPr var_B4
  loc_BCC793:  = Me.Fields
  loc_BCC798: FLdPr var_B8
  loc_BCC79B: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC7A0: FLdPr var_CC
  loc_BCC7A3:  = Me.Value
  loc_BCC7A8: FLdRfVar var_114
  loc_BCC7AB: FLdRfVar var_188
  loc_BCC7AE: LitVarStr var_14C, "CodiRece"
  loc_BCC7B3: PopAdLdVar
  loc_BCC7B4: FLdRfVar var_174
  loc_BCC7B7: FLdRfVar var_170
  loc_BCC7BA: FLdPr Me
  loc_BCC7BD: MemLdRfVar from_stack_1.global_52
  loc_BCC7C0: NewIfNullPr clsrecepcion
  loc_BCC7C3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC7C8: FLdPr var_170
  loc_BCC7CB:  = Me.Fields
  loc_BCC7D0: FLdPr var_174
  loc_BCC7D3: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC7D8: FLdPr var_188
  loc_BCC7DB:  = Me.Value
  loc_BCC7E0: FLdPr Me
  loc_BCC7E3: VCallAd Control_ID_FeanReceMsk
  loc_BCC7E6: FStAdFunc var_20C
  loc_BCC7E9: FLdPr var_20C
  loc_BCC7EC: LateIdLdVar var_DC DispID_15 0
  loc_BCC7F3: PopAd
  loc_BCC7F5: FLdRfVar var_8C
  loc_BCC7F8: FLdPr Me
  loc_BCC7FB: VCallAd Control_ID_MoanReceTxt
  loc_BCC7FE: FStAdFunc var_2A0
  loc_BCC801: FLdPr var_2A0
  loc_BCC804:  = Me.Text
  loc_BCC809: LitI2_Byte &HFF
  loc_BCC80B: PopTmpLdAd2 var_F2
  loc_BCC80E: ILdRf var_8C
  loc_BCC811: FLdRfVar var_DC
  loc_BCC814: CStrVarTmp
  loc_BCC815: CVarStr var_124
  loc_BCC818: PopAdLdVar
  loc_BCC819: FLdRfVar var_114
  loc_BCC81C: CI2Var
  loc_BCC81D: FLdRfVar var_104
  loc_BCC820: CI2Var
  loc_BCC821: FLdRfVar var_EC
  loc_BCC824: CI2Var
  loc_BCC825: FLdPr Me
  loc_BCC828: MemLdRfVar from_stack_1.global_52
  loc_BCC82B: NewIfNullPr clsrecepcion
  loc_BCC82E: Call clsrecepcion.Anular(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BCC833: FFree1Str var_8C
  loc_BCC836: FFreeAd var_98 = "": var_9C = "": var_B4 = "": var_B8 = "": var_170 = "": var_174 = "": var_20C = "": var_2A0 = "": var_B0 = "": var_CC = ""
  loc_BCC84F: FFreeVar var_DC = "": var_EC = "": var_104 = "": var_114 = ""
  loc_BCC85C: Call cmdCancelar_Click()
  loc_BCC861: Branch loc_BCCC5D
  loc_BCC864: ILdRf var_90
  loc_BCC867: LitStr "btnCancelar"
  loc_BCC86A: EqStr
  loc_BCC86C: BranchF loc_BCC877
  loc_BCC86F: Call cmdCancelar_Click()
  loc_BCC874: Branch loc_BCCC5D
  loc_BCC877: ILdRf var_90
  loc_BCC87A: LitStr "btnPrimero"
  loc_BCC87D: EqStr
  loc_BCC87F: BranchF loc_BCC893
  loc_BCC882: FLdPr Me
  loc_BCC885: MemLdRfVar from_stack_1.global_52
  loc_BCC888: NewIfNullPr clsrecepcion
  loc_BCC88B: Call clsrecepcion.MoveFirst()
  loc_BCC890: Branch loc_BCCC5D
  loc_BCC893: ILdRf var_90
  loc_BCC896: LitStr "btnAnterior"
  loc_BCC899: EqStr
  loc_BCC89B: BranchF loc_BCC8AF
  loc_BCC89E: FLdPr Me
  loc_BCC8A1: MemLdRfVar from_stack_1.global_52
  loc_BCC8A4: NewIfNullPr clsrecepcion
  loc_BCC8A7: Call clsrecepcion.MovePrevious()
  loc_BCC8AC: Branch loc_BCCC5D
  loc_BCC8AF: ILdRf var_90
  loc_BCC8B2: LitStr "btnSiguiente"
  loc_BCC8B5: EqStr
  loc_BCC8B7: BranchF loc_BCC8CB
  loc_BCC8BA: FLdPr Me
  loc_BCC8BD: MemLdRfVar from_stack_1.global_52
  loc_BCC8C0: NewIfNullPr clsrecepcion
  loc_BCC8C3: Call clsrecepcion.MoveNext()
  loc_BCC8C8: Branch loc_BCCC5D
  loc_BCC8CB: ILdRf var_90
  loc_BCC8CE: LitStr "btnUltimo"
  loc_BCC8D1: EqStr
  loc_BCC8D3: BranchF loc_BCC919
  loc_BCC8D6: LitVarI2 var_AC, 0
  loc_BCC8DB: PopAdLdVar
  loc_BCC8DC: FLdPr Me
  loc_BCC8DF: VCallAd Control_ID_dgdABMS
  loc_BCC8E2: FStAdFunc var_98
  loc_BCC8E5: FLdPr var_98
  loc_BCC8E8: LateIdSt
  loc_BCC8ED: FFree1Ad var_98
  loc_BCC8F0: LitVar_TRUE var_AC
  loc_BCC8F3: PopAdLdVar
  loc_BCC8F4: FLdPr Me
  loc_BCC8F7: VCallAd Control_ID_dgdABMS
  loc_BCC8FA: FStAdFunc var_98
  loc_BCC8FD: FLdPr var_98
  loc_BCC900: LateIdSt
  loc_BCC905: FFree1Ad var_98
  loc_BCC908: FLdPr Me
  loc_BCC90B: MemLdRfVar from_stack_1.global_52
  loc_BCC90E: NewIfNullPr clsrecepcion
  loc_BCC911: Call clsrecepcion.MoveLast()
  loc_BCC916: Branch loc_BCCC5D
  loc_BCC919: ILdRf var_90
  loc_BCC91C: LitStr "btnFiltrar"
  loc_BCC91F: EqStr
  loc_BCC921: BranchF loc_BCC927
  loc_BCC924: Branch loc_BCCC5D
  loc_BCC927: ILdRf var_90
  loc_BCC92A: LitStr "btnBuscar"
  loc_BCC92D: EqStr
  loc_BCC92F: BranchF loc_BCC935
  loc_BCC932: Branch loc_BCCC5D
  loc_BCC935: ILdRf var_90
  loc_BCC938: LitStr "btnImprimir"
  loc_BCC93B: EqStr
  loc_BCC93D: BranchF loc_BCCC06
  loc_BCC940: FLdRfVar var_94
  loc_BCC943: FLdPr Me
  loc_BCC946: MemLdRfVar from_stack_1.global_52
  loc_BCC949: NewIfNullPr clsrecepcion
  loc_BCC94C: from_stack_1 = clsrecepcion.RecordCount
  loc_BCC951: ILdRf var_94
  loc_BCC954: LitI4 0
  loc_BCC959: GtI4
  loc_BCC95A: BranchF loc_BCCC03
  loc_BCC95D: LitI2_Byte &HFF
  loc_BCC95F: PopTmpLdAd2 var_306
  loc_BCC962: LitI2_Byte 0
  loc_BCC964: PopTmpLdAd2 var_F2
  loc_BCC967: LitStr "¿Desea Imprimir la Recepción?"
  loc_BCC96A: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BCC96F: CI4UI1
  loc_BCC970: LitI4 6
  loc_BCC975: EqI4
  loc_BCC976: BranchF loc_BCCAC5
  loc_BCC979: ImpAdLdRf MemVar_C3DBEC
  loc_BCC97C: NewIfNullAd
  loc_BCC97F: FStAd var_30C 
  loc_BCC983: FLdRfVar var_DC
  loc_BCC986: FLdRfVar var_B0
  loc_BCC989: LitVarStr var_AC, "CodiOrco"
  loc_BCC98E: PopAdLdVar
  loc_BCC98F: FLdRfVar var_9C
  loc_BCC992: FLdRfVar var_98
  loc_BCC995: FLdPr Me
  loc_BCC998: MemLdRfVar from_stack_1.global_52
  loc_BCC99B: NewIfNullPr clsrecepcion
  loc_BCC99E: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCC9A3: FLdPr var_98
  loc_BCC9A6:  = Me.Fields
  loc_BCC9AB: FLdPr var_9C
  loc_BCC9AE: from_stack_2 = Me.Item(from_stack_1)
  loc_BCC9B3: FLdPr var_B0
  loc_BCC9B6:  = Me.Value
  loc_BCC9BB: FLdRfVar var_DC
  loc_BCC9BE: CStrVarTmp
  loc_BCC9BF: CVarStr var_EC
  loc_BCC9C2: PopAdLdVar
  loc_BCC9C3: FLdPr var_30C
  loc_BCC9C6: VCallAd Control_ID_
  loc_BCC9C9: FStAdFunc var_B4
  loc_BCC9CC: FLdPr var_B4
  loc_BCC9CF: LateIdSt
  loc_BCC9D4: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BCC9DF: FFreeVar var_DC = ""
  loc_BCC9E6: FLdRfVar var_DC
  loc_BCC9E9: FLdRfVar var_B0
  loc_BCC9EC: LitVarStr var_AC, "ExpeImpu"
  loc_BCC9F1: PopAdLdVar
  loc_BCC9F2: FLdRfVar var_9C
  loc_BCC9F5: FLdRfVar var_98
  loc_BCC9F8: FLdPr Me
  loc_BCC9FB: MemLdRfVar from_stack_1.global_52
  loc_BCC9FE: NewIfNullPr clsrecepcion
  loc_BCCA01: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCCA06: FLdPr var_98
  loc_BCCA09:  = Me.Fields
  loc_BCCA0E: FLdPr var_9C
  loc_BCCA11: from_stack_2 = Me.Item(from_stack_1)
  loc_BCCA16: FLdPr var_B0
  loc_BCCA19:  = Me.Value
  loc_BCCA1E: FLdRfVar var_DC
  loc_BCCA21: CStrVarTmp
  loc_BCCA22: FStStrNoPop var_8C
  loc_BCCA25: FLdPr var_30C
  loc_BCCA28: VCallAd Control_ID_Label6
  loc_BCCA2B: FStAdFunc var_B4
  loc_BCCA2E: FLdPr var_B4
  loc_BCCA31: Me.Text = from_stack_1
  loc_BCCA36: FFree1Str var_8C
  loc_BCCA39: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BCCA44: FFree1Var var_DC = ""
  loc_BCCA47: FLdRfVar var_DC
  loc_BCCA4A: FLdRfVar var_B0
  loc_BCCA4D: LitVarStr var_AC, "CucuPers"
  loc_BCCA52: PopAdLdVar
  loc_BCCA53: FLdRfVar var_9C
  loc_BCCA56: FLdRfVar var_98
  loc_BCCA59: FLdPr Me
  loc_BCCA5C: MemLdRfVar from_stack_1.global_52
  loc_BCCA5F: NewIfNullPr clsrecepcion
  loc_BCCA62: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCCA67: FLdPr var_98
  loc_BCCA6A:  = Me.Fields
  loc_BCCA6F: FLdPr var_9C
  loc_BCCA72: from_stack_2 = Me.Item(from_stack_1)
  loc_BCCA77: FLdPr var_B0
  loc_BCCA7A:  = Me.Value
  loc_BCCA7F: FLdRfVar var_DC
  loc_BCCA82: CStrVarTmp
  loc_BCCA83: CVarStr var_EC
  loc_BCCA86: PopAdLdVar
  loc_BCCA87: FLdPr var_30C
  loc_BCCA8A: VCallAd Control_ID_
  loc_BCCA8D: FStAdFunc var_B4
  loc_BCCA90: FLdPr var_B4
  loc_BCCA93: LateIdSt
  loc_BCCA98: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BCCAA3: FFreeVar var_DC = ""
  loc_BCCAAA: LitVar_Missing var_C8
  loc_BCCAAD: PopAdLdVar
  loc_BCCAAE: LitVarI4
  loc_BCCAB6: PopAdLdVar
  loc_BCCAB7: FLdPr var_30C
  loc_BCCABA: Me.Show from_stack_1, from_stack_2
  loc_BCCABF: LitNothing
  loc_BCCAC1: FStAd var_30C 
  loc_BCCAC5: LitI2_Byte &HFF
  loc_BCCAC7: PopTmpLdAd2 var_306
  loc_BCCACA: LitI2_Byte 0
  loc_BCCACC: PopTmpLdAd2 var_F2
  loc_BCCACF: LitStr "¿Desea imprimir la Constancia de Recepción?"
  loc_BCCAD2: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BCCAD7: CI4UI1
  loc_BCCAD8: LitI4 6
  loc_BCCADD: EqI4
  loc_BCCADE: BranchF loc_BCCC03
  loc_BCCAE1: ImpAdLdRf MemVar_C3DC00
  loc_BCCAE4: NewIfNullAd
  loc_BCCAE7: FStAd var_310 
  loc_BCCAEB: FLdRfVar var_DC
  loc_BCCAEE: FLdRfVar var_B0
  loc_BCCAF1: LitVarStr var_AC, "CodiOrco"
  loc_BCCAF6: PopAdLdVar
  loc_BCCAF7: FLdRfVar var_9C
  loc_BCCAFA: FLdRfVar var_98
  loc_BCCAFD: FLdPr Me
  loc_BCCB00: MemLdRfVar from_stack_1.global_52
  loc_BCCB03: NewIfNullPr clsrecepcion
  loc_BCCB06: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCCB0B: FLdPr var_98
  loc_BCCB0E:  = Me.Fields
  loc_BCCB13: FLdPr var_9C
  loc_BCCB16: from_stack_2 = Me.Item(from_stack_1)
  loc_BCCB1B: FLdPr var_B0
  loc_BCCB1E:  = Me.Value
  loc_BCCB23: FLdRfVar var_DC
  loc_BCCB26: CStrVarTmp
  loc_BCCB27: CVarStr var_EC
  loc_BCCB2A: PopAdLdVar
  loc_BCCB2B: FLdPr var_310
  loc_BCCB2E: VCallAd Control_ID_cmdCancelar
  loc_BCCB31: FStAdFunc var_B4
  loc_BCCB34: FLdPr var_B4
  loc_BCCB37: LateIdSt
  loc_BCCB3C: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BCCB47: FFreeVar var_DC = ""
  loc_BCCB4E: FLdRfVar var_DC
  loc_BCCB51: FLdRfVar var_B0
  loc_BCCB54: LitVarStr var_AC, "CodiRece"
  loc_BCCB59: PopAdLdVar
  loc_BCCB5A: FLdRfVar var_9C
  loc_BCCB5D: FLdRfVar var_98
  loc_BCCB60: FLdPr Me
  loc_BCCB63: MemLdRfVar from_stack_1.global_52
  loc_BCCB66: NewIfNullPr clsrecepcion
  loc_BCCB69: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCCB6E: FLdPr var_98
  loc_BCCB71:  = Me.Fields
  loc_BCCB76: FLdPr var_9C
  loc_BCCB79: from_stack_2 = Me.Item(from_stack_1)
  loc_BCCB7E: FLdPr var_B0
  loc_BCCB81:  = Me.Value
  loc_BCCB86: FLdRfVar var_DC
  loc_BCCB89: CStrVarTmp
  loc_BCCB8A: CVarStr var_EC
  loc_BCCB8D: PopAdLdVar
  loc_BCCB8E: FLdPr var_310
  loc_BCCB91: VCallAd Control_ID_Label12
  loc_BCCB94: FStAdFunc var_B4
  loc_BCCB97: FLdPr var_B4
  loc_BCCB9A: LateIdSt
  loc_BCCB9F: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BCCBAA: FFreeVar var_DC = ""
  loc_BCCBB1: FLdPr var_310
  loc_BCCBB4: VCallAd Control_ID_Label12
  loc_BCCBB7: FStAdFunc var_98
  loc_BCCBBA: FLdPr var_98
  loc_BCCBBD: LateIdLdVar var_DC DispID_22 0
  loc_BCCBC4: CStrVarTmp
  loc_BCCBC5: CVarStr var_EC
  loc_BCCBC8: PopAdLdVar
  loc_BCCBC9: FLdPr var_310
  loc_BCCBCC: VCallAd Control_ID_FiltroMsk
  loc_BCCBCF: FStAdFunc var_9C
  loc_BCCBD2: FLdPr var_9C
  loc_BCCBD5: LateIdSt
  loc_BCCBDA: FFreeAd var_98 = ""
  loc_BCCBE1: FFreeVar var_DC = ""
  loc_BCCBE8: LitVar_Missing var_C8
  loc_BCCBEB: PopAdLdVar
  loc_BCCBEC: LitVarI4
  loc_BCCBF4: PopAdLdVar
  loc_BCCBF5: FLdPr var_310
  loc_BCCBF8: Me.Show from_stack_1, from_stack_2
  loc_BCCBFD: LitNothing
  loc_BCCBFF: FStAd var_310 
  loc_BCCC03: Branch loc_BCCC5D
  loc_BCCC06: ILdRf var_90
  loc_BCCC09: LitStr "btnAyuda"
  loc_BCCC0C: EqStr
  loc_BCCC0E: BranchF loc_BCCC3D
  loc_BCCC11: LitVar_Missing var_114
  loc_BCCC14: LitVar_Missing var_104
  loc_BCCC17: LitVar_Missing var_EC
  loc_BCCC1A: LitI4 0
  loc_BCCC1F: LitVarStr var_AC, "Opción no disponible en esta versión."
  loc_BCCC24: FStVarCopyObj var_DC
  loc_BCCC27: FLdRfVar var_DC
  loc_BCCC2A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BCCC2F: FFreeVar var_DC = "": var_EC = "": var_104 = ""
  loc_BCCC3A: Branch loc_BCCC5D
  loc_BCCC3D: ILdRf var_90
  loc_BCCC40: LitStr "btnSalir"
  loc_BCCC43: EqStr
  loc_BCCC45: BranchF loc_BCCC5D
  loc_BCCC48: ILdRf Me
  loc_BCCC4B: FStAdNoPop
  loc_BCCC4F: ImpAdLdRf MemVar_C44F9C
  loc_BCCC52: NewIfNullPr Me
  loc_BCCC55: Me.Global.Unload from_stack_1
  loc_BCCC5A: FFree1Ad var_98
  loc_BCCC5D: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A23A98
  'Data Table: 4BE560
  loc_A238E8: LitI2_Byte 0
  loc_A238EA: CUI1I2
  loc_A238EC: FLdPr Me
  loc_A238EF: MemStUI1
  loc_A238F3: ILdRf Me
  loc_A238F6: CastAd
  loc_A238F9: FStAdFunc var_88
  loc_A238FC: FLdRfVar var_88
  loc_A238FF: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A23904: FFree1Ad var_88
  loc_A23907: LitI4 0
  loc_A2390C: LitI4 0
  loc_A23911: FLdRfVar var_8C
  loc_A23914: Redim
  loc_A2391E: FLdPr Me
  loc_A23921: VCallAd Control_ID_dgdABMS
  loc_A23924: CVarAd
  loc_A23928: ParmAry1St
  loc_A2392E: FLdRfVar var_8C
  loc_A23931: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A23936: FLdRfVar var_8C
  loc_A23939: Erase
  loc_A2393A: FLdRfVar var_A0
  loc_A2393D: FLdPr Me
  loc_A23940: MemLdRfVar from_stack_1.global_52
  loc_A23943: NewIfNullPr clsrecepcion
  loc_A23946: from_stack_1 = clsrecepcion.RecordCount
  loc_A2394B: ILdRf var_A0
  loc_A2394E: LitI4 0
  loc_A23953: EqI4
  loc_A23954: BranchF loc_A239B5
  loc_A23957: ILdRf Me
  loc_A2395A: CastAd
  loc_A2395D: FStAdFunc var_88
  loc_A23960: FLdRfVar var_88
  loc_A23963: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A23968: FFree1Ad var_88
  loc_A2396B: ILdRf Me
  loc_A2396E: CastAd
  loc_A23971: FStAdFunc var_88
  loc_A23974: FLdRfVar var_88
  loc_A23977: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A2397C: FFree1Ad var_88
  loc_A2397F: LitI4 0
  loc_A23984: LitI4 0
  loc_A23989: FLdRfVar var_8C
  loc_A2398C: Redim
  loc_A23996: FLdPr Me
  loc_A23999: VCallAd Control_ID_dgdABMS
  loc_A2399C: CVarAd
  loc_A239A0: ParmAry1St
  loc_A239A6: FLdRfVar var_8C
  loc_A239A9: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A239AE: FLdRfVar var_8C
  loc_A239B1: Erase
  loc_A239B2: Branch loc_A239EF
  loc_A239B5: FLdPr Me
  loc_A239B8: MemLdRfVar from_stack_1.global_52
  loc_A239BB: NewIfNullAd
  loc_A239BE: FStAd var_A4 
  loc_A239C2: FLdRfVar var_A4
  loc_A239C5: CVarRef
  loc_A239CA: ILdRf Me
  loc_A239CD: CastAd
  loc_A239D0: FStAdFunc var_88
  loc_A239D3: FLdRfVar var_88
  loc_A239D6: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A239DB: ILdRf var_A4
  loc_A239DE: CastAd
  loc_A239E1: FLdPr Me
  loc_A239E4: MemStAdFunc
  loc_A239E8: FFreeAd var_88 = ""
  loc_A239EF: ILdRf Me
  loc_A239F2: CastAd
  loc_A239F5: FStAdFunc var_88
  loc_A239F8: FLdRfVar var_88
  loc_A239FB: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A23A00: FFree1Ad var_88
  loc_A23A03: LitI4 0
  loc_A23A08: LitI4 0
  loc_A23A0D: FLdRfVar var_8C
  loc_A23A10: Redim
  loc_A23A1A: FLdPr Me
  loc_A23A1D: VCallAd Control_ID_ItemCompraFlex
  loc_A23A20: CVarAd
  loc_A23A24: ParmAry1St
  loc_A23A2A: FLdRfVar var_8C
  loc_A23A2D: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A23A32: FLdRfVar var_8C
  loc_A23A35: Erase
  loc_A23A36: LitI2_Byte 0
  loc_A23A38: LitI4 0
  loc_A23A3D: LitI4 0
  loc_A23A42: LitI4 0
  loc_A23A47: FLdPr Me
  loc_A23A4A: MemLdRfVar from_stack_1.global_52
  loc_A23A4D: NewIfNullPr clsrecepcion
  loc_A23A50: Call clsrecepcion.Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A23A55: LitI2_Byte 0
  loc_A23A57: LitVarI2 var_9C, 0
  loc_A23A5C: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A23A61: FFree1Var var_9C = ""
  loc_A23A64: FLdPr Me
  loc_A23A67: VCallAd Control_ID_dgdABMS
  loc_A23A6A: FStAdFunc var_A4
  loc_A23A6D: LitI4 0
  loc_A23A72: FStStrCopy var_B8
  loc_A23A75: FLdRfVar var_B8
  loc_A23A78: FLdPr Me
  loc_A23A7B: MemLdStr global_104
  loc_A23A7E: FLdZeroAd var_A4
  loc_A23A81: FStAdFunc var_88
  loc_A23A84: FLdRfVar var_88
  loc_A23A87: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A23A8C: FFree1Str var_B8
  loc_A23A8F: FFreeAd var_88 = ""
  loc_A23A96: ExitProcHresult
End Sub

Private Sub ExpeImpuGDETxt_Validate(Cancel As Boolean) '9CD4E8
  'Data Table: 4BE560
  loc_9CD40C: FLdRfVar var_8A
  loc_9CD40F: FLdPr Me
  loc_9CD412: VCallAd Control_ID_cmdCancelar
  loc_9CD415: FStAdFunc var_88
  loc_9CD418: FLdPr var_88
  loc_9CD41B:  = Me.Value
  loc_9CD420: FLdI2 var_8A
  loc_9CD423: NotI4
  loc_9CD424: FLdRfVar var_92
  loc_9CD427: FLdPr Me
  loc_9CD42A: VCallAd Control_ID_ExpeImpuGDETxt
  loc_9CD42D: FStAdFunc var_90
  loc_9CD430: FLdPr var_90
  loc_9CD433:  = Me.Enabled
  loc_9CD438: FLdI2 var_92
  loc_9CD43B: AndI4
  loc_9CD43C: FLdRfVar var_9C
  loc_9CD43F: FLdPr Me
  loc_9CD442: VCallAd Control_ID_ExpeImpuGDETxt
  loc_9CD445: FStAdFunc var_98
  loc_9CD448: FLdPr var_98
  loc_9CD44B:  = Me.Text
  loc_9CD450: ILdRf var_9C
  loc_9CD453: LitStr vbNullString
  loc_9CD456: NeStr
  loc_9CD458: AndI4
  loc_9CD459: FFree1Str var_9C
  loc_9CD45C: FFreeAd var_88 = "": var_90 = ""
  loc_9CD465: BranchF loc_9CD4E6
  loc_9CD468: FLdRfVar var_9C
  loc_9CD46B: FLdPr Me
  loc_9CD46E: VCallAd Control_ID_ExpeImpuGDETxt
  loc_9CD471: FStAdFunc var_88
  loc_9CD474: FLdPr var_88
  loc_9CD477:  = Me.Text
  loc_9CD47C: LitI2_Byte 0
  loc_9CD47E: PopTmpLdAd2 var_9E
  loc_9CD481: LitI2_Byte 0
  loc_9CD483: PopTmpLdAd2 var_92
  loc_9CD486: LitI2_Byte 0
  loc_9CD488: PopTmpLdAd2 var_8A
  loc_9CD48B: ILdRf var_9C
  loc_9CD48E: LitStr "Expediente GDE"
  loc_9CD491: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CD496: FStStrNoPop var_A4
  loc_9CD499: FLdPr Me
  loc_9CD49C: MemStStrCopy
  loc_9CD4A0: FFreeStr var_9C = ""
  loc_9CD4A7: FFree1Ad var_88
  loc_9CD4AA: FLdPr Me
  loc_9CD4AD: VCallAd Control_ID_ExpeImpuGDETxt
  loc_9CD4B0: FStAdFunc var_A8
  loc_9CD4B3: LitNothing
  loc_9CD4B5: CastAd
  loc_9CD4B8: FStAdFunc var_98
  loc_9CD4BB: FLdRfVar var_98
  loc_9CD4BE: FLdZeroAd var_A8
  loc_9CD4C1: FStAdFuncNoPop
  loc_9CD4C4: CastAd
  loc_9CD4C7: FStAdFunc var_90
  loc_9CD4CA: FLdRfVar var_90
  loc_9CD4CD: FLdPr Me
  loc_9CD4D0: MemLdRfVar from_stack_1.global_92
  loc_9CD4D3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CD4D8: IStI2 Cancel
  loc_9CD4DB: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CD4E6: ExitProcHresult
End Sub

Private Sub FeanReceMsk_UnknownEvent_0 '94C638
  'Data Table: 4BE560
  loc_94C624: FLdPr Me
  loc_94C627: VCallAd Control_ID_FeanReceMsk
  loc_94C62A: CVarAd
  loc_94C62E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C633: FFree1Var var_94 = ""
  loc_94C636: ExitProcHresult
End Sub

Private Sub FeanReceMsk_UnknownEvent_8 '9F1368
  'Data Table: 4BE560
  loc_9F124C: FLdRfVar var_8A
  loc_9F124F: FLdPr Me
  loc_9F1252: VCallAd Control_ID_cmdCancelar
  loc_9F1255: FStAdFunc var_88
  loc_9F1258: FLdPr var_88
  loc_9F125B:  = Me.Value
  loc_9F1260: FLdI2 var_8A
  loc_9F1263: NotI4
  loc_9F1264: FLdPr Me
  loc_9F1267: VCallAd Control_ID_FeanReceMsk
  loc_9F126A: FStAdFunc var_90
  loc_9F126D: FLdPr var_90
  loc_9F1270: LateIdLdVar var_A0 DispID_13 -32767
  loc_9F1277: CBoolVar
  loc_9F1279: AndI4
  loc_9F127A: FFreeAd var_88 = ""
  loc_9F1281: FFree1Var var_A0 = ""
  loc_9F1284: BranchF loc_9F1367
  loc_9F1287: FLdPr Me
  loc_9F128A: VCallAd Control_ID_FeanReceMsk
  loc_9F128D: FStAdFunc var_88
  loc_9F1290: FLdPr var_88
  loc_9F1293: LateIdLdVar var_A0 DispID_15 0
  loc_9F129A: PopAd
  loc_9F129C: FLdRfVar var_CC
  loc_9F129F: FLdRfVar var_B8
  loc_9F12A2: LitVarStr var_B4, "FechRece"
  loc_9F12A7: PopAdLdVar
  loc_9F12A8: FLdRfVar var_A4
  loc_9F12AB: FLdRfVar var_90
  loc_9F12AE: FLdPr Me
  loc_9F12B1: MemLdRfVar from_stack_1.global_52
  loc_9F12B4: NewIfNullPr clsrecepcion
  loc_9F12B7: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_9F12BC: FLdPr var_90
  loc_9F12BF:  = Me.Fields
  loc_9F12C4: FLdPr var_A4
  loc_9F12C7: from_stack_2 = Me.Item(from_stack_1)
  loc_9F12CC: FLdPr var_B8
  loc_9F12CF:  = Me.Value
  loc_9F12D4: FLdPr Me
  loc_9F12D7: VCallAd Control_ID_FeanReceMsk
  loc_9F12DA: FStAdFunc var_DC
  loc_9F12DD: LitI2_Byte &HFF
  loc_9F12DF: PopTmpLdAd2 var_8A
  loc_9F12E2: FLdZeroAd var_DC
  loc_9F12E5: FStAdFunc var_D4
  loc_9F12E8: FLdRfVar var_D4
  loc_9F12EB: FLdRfVar var_CC
  loc_9F12EE: CStrVarTmp
  loc_9F12EF: FStStrNoPop var_D0
  loc_9F12F2: LitI2_Byte 0
  loc_9F12F4: LitI2_Byte 0
  loc_9F12F6: FLdRfVar var_A0
  loc_9F12F9: CStrVarTmp
  loc_9F12FA: FStStrNoPop var_BC
  loc_9F12FD: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9F1302: FStStrNoPop var_D8
  loc_9F1305: FLdPr Me
  loc_9F1308: MemStStrCopy
  loc_9F130C: FFreeStr var_BC = "": var_D0 = ""
  loc_9F1315: FFreeAd var_88 = "": var_90 = "": var_A4 = "": var_B8 = "": var_D4 = ""
  loc_9F1324: FFreeVar var_A0 = ""
  loc_9F132B: FLdPr Me
  loc_9F132E: VCallAd Control_ID_FeanReceMsk
  loc_9F1331: FStAdFunc var_B8
  loc_9F1334: LitNothing
  loc_9F1336: CastAd
  loc_9F1339: FStAdFunc var_A4
  loc_9F133C: FLdRfVar var_A4
  loc_9F133F: FLdZeroAd var_B8
  loc_9F1342: FStAdFuncNoPop
  loc_9F1345: CastAd
  loc_9F1348: FStAdFunc var_90
  loc_9F134B: FLdRfVar var_90
  loc_9F134E: FLdPr Me
  loc_9F1351: MemLdRfVar from_stack_1.global_92
  loc_9F1354: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F1359: IStI2 Cancel
  loc_9F135C: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9F1367: ExitProcHresult
End Sub

Private Sub FeanReceMsk_KeyPress(KeyAscii As Integer) '988CD8
  'Data Table: 4BE560
  loc_988C94: ILdI2 KeyAscii
  loc_988C97: CI4UI1
  loc_988C98: LitI4 &H20
  loc_988C9D: EqI4
  loc_988C9E: BranchF loc_988CD4
  loc_988CA1: LitVar_Missing var_A4
  loc_988CA4: PopAdLdVar
  loc_988CA5: LitVarI4
  loc_988CAD: PopAdLdVar
  loc_988CAE: ImpAdLdRf MemVar_C3D9A8
  loc_988CB1: NewIfNullPr frmCalendario
  loc_988CB4: frmCalendario.Show from_stack_1, from_stack_2
  loc_988CB9: ImpAdLdRf MemVar_C3D038
  loc_988CBC: CDargRef
  loc_988CC0: FLdPr Me
  loc_988CC3: VCallAd Control_ID_FeanReceMsk
  loc_988CC6: FStAdFunc var_A8
  loc_988CC9: FLdPr var_A8
  loc_988CCC: LateIdSt
  loc_988CD1: FFree1Ad var_A8
  loc_988CD4: ExitProcHresult
End Sub

Private Sub FechReceMsk_UnknownEvent_0 '94C5F0
  'Data Table: 4BE560
  loc_94C5DC: FLdPr Me
  loc_94C5DF: VCallAd Control_ID_FechReceMsk
  loc_94C5E2: CVarAd
  loc_94C5E6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C5EB: FFree1Var var_94 = ""
  loc_94C5EE: ExitProcHresult
End Sub

Private Sub FechReceMsk_UnknownEvent_8 '9CA548
  'Data Table: 4BE560
  loc_9CA474: FLdRfVar var_8A
  loc_9CA477: FLdPr Me
  loc_9CA47A: VCallAd Control_ID_cmdCancelar
  loc_9CA47D: FStAdFunc var_88
  loc_9CA480: FLdPr var_88
  loc_9CA483:  = Me.Value
  loc_9CA488: FLdI2 var_8A
  loc_9CA48B: NotI4
  loc_9CA48C: FLdPr Me
  loc_9CA48F: VCallAd Control_ID_FechReceMsk
  loc_9CA492: FStAdFunc var_90
  loc_9CA495: FLdPr var_90
  loc_9CA498: LateIdLdVar var_A0 DispID_13 -32767
  loc_9CA49F: CBoolVar
  loc_9CA4A1: AndI4
  loc_9CA4A2: FFreeAd var_88 = ""
  loc_9CA4A9: FFree1Var var_A0 = ""
  loc_9CA4AC: BranchF loc_9CA547
  loc_9CA4AF: FLdPr Me
  loc_9CA4B2: VCallAd Control_ID_FechReceMsk
  loc_9CA4B5: FStAdFunc var_88
  loc_9CA4B8: FLdPr var_88
  loc_9CA4BB: LateIdLdVar var_A0 DispID_15 0
  loc_9CA4C2: PopAd
  loc_9CA4C4: FLdPr Me
  loc_9CA4C7: VCallAd Control_ID_FechReceMsk
  loc_9CA4CA: FStAdFunc var_AC
  loc_9CA4CD: LitI2_Byte &HFF
  loc_9CA4CF: PopTmpLdAd2 var_8A
  loc_9CA4D2: FLdZeroAd var_AC
  loc_9CA4D5: FStAdFunc var_90
  loc_9CA4D8: FLdRfVar var_90
  loc_9CA4DB: LitStr "01/01/2018"
  loc_9CA4DE: LitI2_Byte 0
  loc_9CA4E0: LitI2_Byte &HFF
  loc_9CA4E2: FLdRfVar var_A0
  loc_9CA4E5: CStrVarTmp
  loc_9CA4E6: FStStrNoPop var_A4
  loc_9CA4E9: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CA4EE: FStStrNoPop var_A8
  loc_9CA4F1: FLdPr Me
  loc_9CA4F4: MemStStrCopy
  loc_9CA4F8: FFreeStr var_A4 = ""
  loc_9CA4FF: FFreeAd var_88 = "": var_90 = ""
  loc_9CA508: FFree1Var var_A0 = ""
  loc_9CA50B: FLdPr Me
  loc_9CA50E: VCallAd Control_ID_FechReceMsk
  loc_9CA511: FStAdFunc var_B0
  loc_9CA514: LitNothing
  loc_9CA516: CastAd
  loc_9CA519: FStAdFunc var_AC
  loc_9CA51C: FLdRfVar var_AC
  loc_9CA51F: FLdZeroAd var_B0
  loc_9CA522: FStAdFuncNoPop
  loc_9CA525: CastAd
  loc_9CA528: FStAdFunc var_90
  loc_9CA52B: FLdRfVar var_90
  loc_9CA52E: FLdPr Me
  loc_9CA531: MemLdRfVar from_stack_1.global_92
  loc_9CA534: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CA539: IStI2 KeyAscii
  loc_9CA53C: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9CA547: ExitProcHresult
End Sub

Private Sub FechReceMsk_KeyPress(KeyAscii As Integer) '988D50
  'Data Table: 4BE560
  loc_988D0C: ILdI2 KeyAscii
  loc_988D0F: CI4UI1
  loc_988D10: LitI4 &H20
  loc_988D15: EqI4
  loc_988D16: BranchF loc_988D4C
  loc_988D19: LitVar_Missing var_A4
  loc_988D1C: PopAdLdVar
  loc_988D1D: LitVarI4
  loc_988D25: PopAdLdVar
  loc_988D26: ImpAdLdRf MemVar_C3D9A8
  loc_988D29: NewIfNullPr frmCalendario
  loc_988D2C: frmCalendario.Show from_stack_1, from_stack_2
  loc_988D31: ImpAdLdRf MemVar_C3D038
  loc_988D34: CDargRef
  loc_988D38: FLdPr Me
  loc_988D3B: VCallAd Control_ID_FechReceMsk
  loc_988D3E: FStAdFunc var_A8
  loc_988D41: FLdPr var_A8
  loc_988D44: LateIdSt
  loc_988D49: FFree1Ad var_A8
  loc_988D4C: ExitProcHresult
  loc_988D4D: AddCy
End Sub

Private Sub FefaReceMsk_UnknownEvent_0 '94C5A8
  'Data Table: 4BE560
  loc_94C594: FLdPr Me
  loc_94C597: VCallAd Control_ID_FefaReceMsk
  loc_94C59A: CVarAd
  loc_94C59E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C5A3: FFree1Var var_94 = ""
  loc_94C5A6: ExitProcHresult
End Sub

Private Sub FefaReceMsk_UnknownEvent_8 '9C9E88
  'Data Table: 4BE560
  loc_9C9DB4: FLdRfVar var_8A
  loc_9C9DB7: FLdPr Me
  loc_9C9DBA: VCallAd Control_ID_cmdCancelar
  loc_9C9DBD: FStAdFunc var_88
  loc_9C9DC0: FLdPr var_88
  loc_9C9DC3:  = Me.Value
  loc_9C9DC8: FLdI2 var_8A
  loc_9C9DCB: NotI4
  loc_9C9DCC: FLdPr Me
  loc_9C9DCF: VCallAd Control_ID_FefaReceMsk
  loc_9C9DD2: FStAdFunc var_90
  loc_9C9DD5: FLdPr var_90
  loc_9C9DD8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C9DDF: CBoolVar
  loc_9C9DE1: AndI4
  loc_9C9DE2: FFreeAd var_88 = ""
  loc_9C9DE9: FFree1Var var_A0 = ""
  loc_9C9DEC: BranchF loc_9C9E87
  loc_9C9DEF: FLdPr Me
  loc_9C9DF2: VCallAd Control_ID_FefaReceMsk
  loc_9C9DF5: FStAdFunc var_88
  loc_9C9DF8: FLdPr var_88
  loc_9C9DFB: LateIdLdVar var_A0 DispID_15 0
  loc_9C9E02: PopAd
  loc_9C9E04: FLdPr Me
  loc_9C9E07: VCallAd Control_ID_FefaReceMsk
  loc_9C9E0A: FStAdFunc var_AC
  loc_9C9E0D: LitI2_Byte &HFF
  loc_9C9E0F: PopTmpLdAd2 var_8A
  loc_9C9E12: FLdZeroAd var_AC
  loc_9C9E15: FStAdFunc var_90
  loc_9C9E18: FLdRfVar var_90
  loc_9C9E1B: LitStr vbNullString
  loc_9C9E1E: LitI2_Byte 0
  loc_9C9E20: LitI2_Byte 0
  loc_9C9E22: FLdRfVar var_A0
  loc_9C9E25: CStrVarTmp
  loc_9C9E26: FStStrNoPop var_A4
  loc_9C9E29: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C9E2E: FStStrNoPop var_A8
  loc_9C9E31: FLdPr Me
  loc_9C9E34: MemStStrCopy
  loc_9C9E38: FFreeStr var_A4 = ""
  loc_9C9E3F: FFreeAd var_88 = "": var_90 = ""
  loc_9C9E48: FFree1Var var_A0 = ""
  loc_9C9E4B: FLdPr Me
  loc_9C9E4E: VCallAd Control_ID_FefaReceMsk
  loc_9C9E51: FStAdFunc var_B0
  loc_9C9E54: LitNothing
  loc_9C9E56: CastAd
  loc_9C9E59: FStAdFunc var_AC
  loc_9C9E5C: FLdRfVar var_AC
  loc_9C9E5F: FLdZeroAd var_B0
  loc_9C9E62: FStAdFuncNoPop
  loc_9C9E65: CastAd
  loc_9C9E68: FStAdFunc var_90
  loc_9C9E6B: FLdRfVar var_90
  loc_9C9E6E: FLdPr Me
  loc_9C9E71: MemLdRfVar from_stack_1.global_92
  loc_9C9E74: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C9E79: IStI2 KeyAscii
  loc_9C9E7C: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9C9E87: ExitProcHresult
End Sub

Private Sub FefaReceMsk_KeyPress(KeyAscii As Integer) '988FA8
  'Data Table: 4BE560
  loc_988F64: ILdI2 KeyAscii
  loc_988F67: CI4UI1
  loc_988F68: LitI4 &H20
  loc_988F6D: EqI4
  loc_988F6E: BranchF loc_988FA4
  loc_988F71: LitVar_Missing var_A4
  loc_988F74: PopAdLdVar
  loc_988F75: LitVarI4
  loc_988F7D: PopAdLdVar
  loc_988F7E: ImpAdLdRf MemVar_C3D9A8
  loc_988F81: NewIfNullPr frmCalendario
  loc_988F84: frmCalendario.Show from_stack_1, from_stack_2
  loc_988F89: ImpAdLdRf MemVar_C3D038
  loc_988F8C: CDargRef
  loc_988F90: FLdPr Me
  loc_988F93: VCallAd Control_ID_FefaReceMsk
  loc_988F96: FStAdFunc var_A8
  loc_988F99: FLdPr var_A8
  loc_988F9C: LateIdSt
  loc_988FA1: FFree1Ad var_A8
  loc_988FA4: ExitProcHresult
End Sub

Private Function Proc_125_43_A2E850() 'A2E850
  'Data Table: 4BE560
  loc_A2E650: FLdPr Me
  loc_A2E653: VCallAd Control_ID_ItemCompraFlex
  loc_A2E656: FStAdFunc var_88
  loc_A2E659: FLdPr var_88
  loc_A2E65C: LateIdCall
  loc_A2E664: LitVarI4
  loc_A2E66C: PopAdLdVar
  loc_A2E66D: FLdPr var_88
  loc_A2E670: LateIdSt
  loc_A2E675: LitVarI4
  loc_A2E67D: PopAdLdVar
  loc_A2E67E: LitVarI4
  loc_A2E686: PopAdLdVar
  loc_A2E687: LitVarStr var_D8, "Item"
  loc_A2E68C: PopAdLdVar
  loc_A2E68D: FLdPr var_88
  loc_A2E690: LateIdCallSt
  loc_A2E698: LitVarI4
  loc_A2E6A0: PopAdLdVar
  loc_A2E6A1: LitVarI4
  loc_A2E6A9: PopAdLdVar
  loc_A2E6AA: LitVarStr var_D8, "Alt."
  loc_A2E6AF: PopAdLdVar
  loc_A2E6B0: FLdPr var_88
  loc_A2E6B3: LateIdCallSt
  loc_A2E6BB: LitVarI4
  loc_A2E6C3: PopAdLdVar
  loc_A2E6C4: LitVarI4
  loc_A2E6CC: PopAdLdVar
  loc_A2E6CD: LitVarStr var_D8, "Codigo"
  loc_A2E6D2: PopAdLdVar
  loc_A2E6D3: FLdPr var_88
  loc_A2E6D6: LateIdCallSt
  loc_A2E6DE: LitVarI4
  loc_A2E6E6: PopAdLdVar
  loc_A2E6E7: LitVarI4
  loc_A2E6EF: PopAdLdVar
  loc_A2E6F0: LitVarStr var_D8, "Detalle del Insumo"
  loc_A2E6F5: PopAdLdVar
  loc_A2E6F6: FLdPr var_88
  loc_A2E6F9: LateIdCallSt
  loc_A2E701: LitVarI4
  loc_A2E709: PopAdLdVar
  loc_A2E70A: LitVarI4
  loc_A2E712: PopAdLdVar
  loc_A2E713: LitVarStr var_D8, "Detalle AMPLIADO del Insumo"
  loc_A2E718: PopAdLdVar
  loc_A2E719: FLdPr var_88
  loc_A2E71C: LateIdCallSt
  loc_A2E724: LitVarI4
  loc_A2E72C: PopAdLdVar
  loc_A2E72D: LitVarI4
  loc_A2E735: PopAdLdVar
  loc_A2E736: LitVarStr var_D8, "Cantidad"
  loc_A2E73B: PopAdLdVar
  loc_A2E73C: FLdPr var_88
  loc_A2E73F: LateIdCallSt
  loc_A2E747: LitVarI4
  loc_A2E74F: PopAdLdVar
  loc_A2E750: LitVarI4
  loc_A2E758: PopAdLdVar
  loc_A2E759: LitVarStr var_D8, "Pr. Unitario"
  loc_A2E75E: PopAdLdVar
  loc_A2E75F: FLdPr var_88
  loc_A2E762: LateIdCallSt
  loc_A2E76A: LitVarI4
  loc_A2E772: PopAdLdVar
  loc_A2E773: LitVarI4
  loc_A2E77B: PopAdLdVar
  loc_A2E77C: LitVarStr var_D8, "Total"
  loc_A2E781: PopAdLdVar
  loc_A2E782: FLdPr var_88
  loc_A2E785: LateIdCallSt
  loc_A2E78D: LitVarI4
  loc_A2E795: PopAdLdVar
  loc_A2E796: LitVarI4
  loc_A2E79E: PopAdLdVar
  loc_A2E79F: LitVarStr var_D8, "Partida"
  loc_A2E7A4: PopAdLdVar
  loc_A2E7A5: FLdPr var_88
  loc_A2E7A8: LateIdCallSt
  loc_A2E7B0: LitVarI4
  loc_A2E7B8: PopAdLdVar
  loc_A2E7B9: LitVarI4
  loc_A2E7C1: PopAdLdVar
  loc_A2E7C2: LitVarStr var_D8, "Organigrama"
  loc_A2E7C7: PopAdLdVar
  loc_A2E7C8: FLdPr var_88
  loc_A2E7CB: LateIdCallSt
  loc_A2E7D3: LitVarI4
  loc_A2E7DB: PopAdLdVar
  loc_A2E7DC: LitVarI4
  loc_A2E7E4: PopAdLdVar
  loc_A2E7E5: LitVarStr var_D8, "Un.Gasto"
  loc_A2E7EA: PopAdLdVar
  loc_A2E7EB: FLdPr var_88
  loc_A2E7EE: LateIdCallSt
  loc_A2E7F6: LitVarI4
  loc_A2E7FE: PopAdLdVar
  loc_A2E7FF: LitVarI4
  loc_A2E807: PopAdLdVar
  loc_A2E808: LitVarStr var_D8, "Fin. y Fun."
  loc_A2E80D: PopAdLdVar
  loc_A2E80E: FLdPr var_88
  loc_A2E811: LateIdCallSt
  loc_A2E819: LitVarI4
  loc_A2E821: PopAdLdVar
  loc_A2E822: LitVarI4
  loc_A2E82A: PopAdLdVar
  loc_A2E82B: LitVarStr var_D8, "Imput."
  loc_A2E830: PopAdLdVar
  loc_A2E831: FLdPr var_88
  loc_A2E834: LateIdCallSt
  loc_A2E83C: FLdPr var_88
  loc_A2E83F: LateIdCall
  loc_A2E847: LitNothing
  loc_A2E849: FStAd var_88 
  loc_A2E84D: ExitProcHresult
End Function

Private Function Proc_125_44_9F69D4() '9F69D4
  'Data Table: 4BE560
  loc_9F6898: LitI2_Byte 0
  loc_9F689A: CR8I2
  loc_9F689B: FLdPr Me
  loc_9F689E: MemStFPR8 global_96
  loc_9F68A1: LitI2_Byte 1
  loc_9F68A3: FLdPr Me
  loc_9F68A6: MemLdRfVar from_stack_1.global_68
  loc_9F68A9: FLdPr Me
  loc_9F68AC: VCallAd Control_ID_ItemCompraFlex
  loc_9F68AF: FStAdFunc var_88
  loc_9F68B2: FLdPr var_88
  loc_9F68B5: LateIdLdVar var_98 DispID_4 0
  loc_9F68BC: CI4Var
  loc_9F68BE: LitI4 1
  loc_9F68C3: SubI4
  loc_9F68C4: CI2I4
  loc_9F68C5: FFree1Ad var_88
  loc_9F68C8: FFree1Var var_98 = ""
  loc_9F68CB: ForI2 var_9C
  loc_9F68D1: FLdPr Me
  loc_9F68D4: MemLdI2 global_68
  loc_9F68D7: CI4UI1
  loc_9F68D8: CVarI4
  loc_9F68DC: PopAdLdVar
  loc_9F68DD: LitVarI4
  loc_9F68E5: PopAdLdVar
  loc_9F68E6: FLdPr Me
  loc_9F68E9: VCallAd Control_ID_ItemCompraFlex
  loc_9F68EC: FStAdFunc var_88
  loc_9F68EF: FLdPr var_88
  loc_9F68F2: LateIdCallLdVar
  loc_9F68FC: CStrVarTmp
  loc_9F68FD: CVarStr var_EC
  loc_9F6900: ImpAdCallI2 IsNumeric()
  loc_9F6905: FFree1Ad var_88
  loc_9F6908: FFreeVar var_98 = ""
  loc_9F690F: BranchF loc_9F6979
  loc_9F6912: FLdPr Me
  loc_9F6915: MemLdI2 global_68
  loc_9F6918: CI4UI1
  loc_9F6919: CVarI4
  loc_9F691D: PopAdLdVar
  loc_9F691E: LitVarI4
  loc_9F6926: PopAdLdVar
  loc_9F6927: FLdPr Me
  loc_9F692A: VCallAd Control_ID_ItemCompraFlex
  loc_9F692D: FStAdFunc var_88
  loc_9F6930: FLdPr var_88
  loc_9F6933: LateIdCallLdVar
  loc_9F693D: PopAd
  loc_9F693F: LitI4 3
  loc_9F6944: FLdPr Me
  loc_9F6947: MemLdFPR8 global_96
  loc_9F694A: FLdRfVar var_98
  loc_9F694D: CStrVarTmp
  loc_9F694E: FStStrNoPop var_F0
  loc_9F6951: CR8Str
  loc_9F6953: AddR8
  loc_9F6954: CVarR8
  loc_9F6958: FLdRfVar var_110
  loc_9F695B: ImpAdCallFPR4  = Round(, )
  loc_9F6960: FLdRfVar var_110
  loc_9F6963: CR4Var
  loc_9F6964: FLdPr Me
  loc_9F6967: MemStFPR8 global_96
  loc_9F696A: FFree1Str var_F0
  loc_9F696D: FFree1Ad var_88
  loc_9F6970: FFreeVar var_98 = "": var_EC = ""
  loc_9F6979: FLdPr Me
  loc_9F697C: MemLdRfVar from_stack_1.global_68
  loc_9F697F: NextI2 var_9C, loc_9F68D1
  loc_9F6984: LitI4 1
  loc_9F6989: LitI4 1
  loc_9F698E: LitVarStr var_BC, "0.000"
  loc_9F6993: FStVarCopyObj var_98
  loc_9F6996: FLdRfVar var_98
  loc_9F6999: FLdPr Me
  loc_9F699C: MemLdRfVar from_stack_1.global_96
  loc_9F699F: CVarRef
  loc_9F69A4: FLdRfVar var_EC
  loc_9F69A7: ImpAdCallFPR4  = Format(, )
  loc_9F69AC: FLdRfVar var_EC
  loc_9F69AF: CStrVarVal var_F0
  loc_9F69B3: FLdPr Me
  loc_9F69B6: VCallAd Control_ID_TotaReceTxt
  loc_9F69B9: FStAdFunc var_88
  loc_9F69BC: FLdPr var_88
  loc_9F69BF: Me.Text = from_stack_1
  loc_9F69C4: FFree1Str var_F0
  loc_9F69C7: FFree1Ad var_88
  loc_9F69CA: FFreeVar var_98 = ""
  loc_9F69D1: ExitProcHresult
End Function
