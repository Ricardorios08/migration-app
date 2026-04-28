VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmDevengadosporRecepciondeOrdendeCompra
  Caption = "Devengados por Recepción de Factura"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmDevengadosporRecepciondeOrdendeCompra.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 14835
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
  Begin VB.Frame Frame
    Caption = " Devengados por Recepción de Factura"
    Left = 120
    Top = 1680
    Width = 14295
    Height = 7815
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox ExpeImpuTxt
      Left = 6600
      Top = 615
      Width = 2295
      Height = 375
      TabIndex = 11
      MaxLength = 15
      DataField = "ExpeImpu"
    End
    Begin VB.Frame Frame1
      Caption = "Datos de Imputación del Item "
      Left = 120
      Top = 5655
      Width = 13935
      Height = 1935
      TabIndex = 4
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.Label Label2
        Caption = "Partida:"
        Left = 120
        Top = 360
        Width = 690
        Height = 240
        TabIndex = 10
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
      Begin VB.Label Label3
        Caption = ":"
        Left = 120
        Top = 840
        Width = 45
        Height = 240
        TabIndex = 9
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
      Begin VB.Label Label4
        Caption = "Finalidad-Función-Programa de Gestión:"
        Left = 120
        Top = 1320
        Width = 3630
        Height = 240
        TabIndex = 8
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
        Left = 960
        Top = 360
        Width = 12600
        Height = 360
        TabIndex = 7
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
      Begin VB.Label DetaOrgaLbl
        Left = 1680
        Top = 840
        Width = 11880
        Height = 360
        TabIndex = 6
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
      Begin VB.Label DetaFifuLbl
        Left = 3840
        Top = 1320
        Width = 9720
        Height = 360
        TabIndex = 5
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
    Begin MSDataGridLib.DataGrid dgdABMS
      Left = 120
      Top = 1200
      Width = 13935
      Height = 1935
      TabIndex = 12
      OleObjectBlob = "frmDevengadosporRecepciondeOrdendeCompra.frx":08CA
    End
    Begin MSDataGridLib.DataGrid dgdItemRecepcion
      Left = 120
      Top = 3240
      Width = 13935
      Height = 2295
      TabIndex = 13
      OleObjectBlob = "frmDevengadosporRecepciondeOrdendeCompra.frx":0F0E
    End
    Begin MSMask.MaskEdBox FechImpuMsk
      Left = 2640
      Top = 615
      Width = 1335
      Height = 360
      TabIndex = 14
      OleObjectBlob = "frmDevengadosporRecepciondeOrdendeCompra.frx":1660
    End
    Begin VB.Label LabelTotalImporte
      Left = 11880
      Top = 600
      Width = 2055
      Height = 375
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      DataField = "TotaRece"
      DataFormat = 80
    End
    Begin VB.Label LabelTotal
      Caption = "Total Recepción:"
      Left = 9960
      Top = 645
      Width = 1785
      Height = 300
      TabIndex = 17
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Fecha de Imputación:"
      Left = 120
      Top = 660
      Width = 2415
      Height = 315
      TabIndex = 16
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
      Caption = "Exp. de Pago:"
      Left = 5040
      Top = 615
      Width = 1470
      Height = 300
      TabIndex = 15
      AutoSize = -1  'True
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
      OleObjectBlob = "frmDevengadosporRecepciondeOrdendeCompra.frx":1710
    End
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmDevengadosporRecepciondeOrdendeCompra.frx":1798
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14835
    Height = 660
    TabIndex = 19
    OleObjectBlob = "frmDevengadosporRecepciondeOrdendeCompra.frx":9316
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 20
      TabStop = 0   'False
      Picture = "frmDevengadosporRecepciondeOrdendeCompra.frx":9872
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmDevengadosporRecepciondeOrdendeCompra"


Private Sub tlbABMS_ButtonClick(Button As Button) 'B92504
  'Data Table: 47B87C
  loc_B91704: ILdRf Button
  loc_B91707: FStAd var_88 
  loc_B9170B: FLdRfVar var_A0
  loc_B9170E: FLdPr var_88
  loc_B91711:  = Me.Key
  loc_B91716: FLdZeroAd var_A0
  loc_B91719: FStStr var_A4
  loc_B9171C: ILdRf var_A4
  loc_B9171F: LitStr "btnCrear"
  loc_B91722: EqStr
  loc_B91724: BranchF loc_B91ADE
  loc_B91727: FLdRfVar var_A8
  loc_B9172A: FLdPr Me
  loc_B9172D: MemLdRfVar from_stack_1.global_56
  loc_B91730: NewIfNullPr clsrecepcion
  loc_B91733: from_stack_1 = clsrecepcion.RecordCount
  loc_B91738: ILdRf var_A8
  loc_B9173B: LitI4 0
  loc_B91740: GtI4
  loc_B91741: BranchF loc_B91ADB
  loc_B91744: LitI2_Byte 1
  loc_B91746: FLdPr Me
  loc_B91749: MemStUI1
  loc_B9174D: ILdRf Me
  loc_B91750: CastAd
  loc_B91753: FStAdFunc var_AC
  loc_B91756: FLdRfVar var_AC
  loc_B91759: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B9175E: FFree1Ad var_AC
  loc_B91761: LitI4 0
  loc_B91766: LitI4 0
  loc_B9176B: FLdRfVar var_B0
  loc_B9176E: Redim
  loc_B91778: FLdPr Me
  loc_B9177B: VCallAd Control_ID_dgdABMS
  loc_B9177E: CVarAd
  loc_B91782: ParmAry1St
  loc_B91788: FLdRfVar var_B0
  loc_B9178B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B91790: FLdRfVar var_B0
  loc_B91793: Erase
  loc_B91794: LitI4 0
  loc_B91799: LitI4 0
  loc_B9179E: FLdRfVar var_B0
  loc_B917A1: Redim
  loc_B917AB: FLdPr Me
  loc_B917AE: VCallAd Control_ID_dgdItemRecepcion
  loc_B917B1: CVarAd
  loc_B917B5: ParmAry1St
  loc_B917BB: FLdRfVar var_B0
  loc_B917BE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B917C3: FLdRfVar var_B0
  loc_B917C6: Erase
  loc_B917C7: ILdRf Me
  loc_B917CA: CastAd
  loc_B917CD: FStAdFunc var_AC
  loc_B917D0: FLdRfVar var_AC
  loc_B917D3: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B917D8: FFree1Ad var_AC
  loc_B917DB: ILdRf Me
  loc_B917DE: CastAd
  loc_B917E1: FStAdFunc var_AC
  loc_B917E4: FLdRfVar var_AC
  loc_B917E7: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_B917EC: FFree1Ad var_AC
  loc_B917EF: FLdRfVar var_C0
  loc_B917F2: FLdRfVar var_D8
  loc_B917F5: LitVarStr var_D4, "ExorImpu"
  loc_B917FA: PopAdLdVar
  loc_B917FB: FLdRfVar var_C4
  loc_B917FE: FLdRfVar var_AC
  loc_B91801: FLdPr Me
  loc_B91804: MemLdRfVar from_stack_1.global_56
  loc_B91807: NewIfNullPr clsrecepcion
  loc_B9180A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B9180F: FLdPr var_AC
  loc_B91812:  = Me.Fields
  loc_B91817: FLdPr var_C4
  loc_B9181A: from_stack_2 = Me.Item(from_stack_1)
  loc_B9181F: FLdPr var_D8
  loc_B91822:  = Me.Value
  loc_B91827: FLdRfVar var_13C
  loc_B9182A: FLdRfVar var_F4
  loc_B9182D: LitVarStr var_F0, "CodiNope"
  loc_B91832: PopAdLdVar
  loc_B91833: FLdRfVar var_E0
  loc_B91836: FLdRfVar var_DC
  loc_B91839: FLdPr Me
  loc_B9183C: MemLdRfVar from_stack_1.global_56
  loc_B9183F: NewIfNullPr clsrecepcion
  loc_B91842: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91847: FLdPr var_DC
  loc_B9184A:  = Me.Fields
  loc_B9184F: FLdPr var_E0
  loc_B91852: from_stack_2 = Me.Item(from_stack_1)
  loc_B91857: FLdPr var_F4
  loc_B9185A:  = Me.Value
  loc_B9185F: FLdRfVar var_14C
  loc_B91862: FLdRfVar var_110
  loc_B91865: LitVarStr var_10C, "CodiOrco"
  loc_B9186A: PopAdLdVar
  loc_B9186B: FLdRfVar var_FC
  loc_B9186E: FLdRfVar var_F8
  loc_B91871: FLdPr Me
  loc_B91874: MemLdRfVar from_stack_1.global_56
  loc_B91877: NewIfNullPr clsrecepcion
  loc_B9187A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B9187F: FLdPr var_F8
  loc_B91882:  = Me.Fields
  loc_B91887: FLdPr var_FC
  loc_B9188A: from_stack_2 = Me.Item(from_stack_1)
  loc_B9188F: FLdPr var_110
  loc_B91892:  = Me.Value
  loc_B91897: FLdRfVar var_15C
  loc_B9189A: FLdRfVar var_12C
  loc_B9189D: LitVarStr var_128, "CodiRece"
  loc_B918A2: PopAdLdVar
  loc_B918A3: FLdRfVar var_118
  loc_B918A6: FLdRfVar var_114
  loc_B918A9: FLdPr Me
  loc_B918AC: MemLdRfVar from_stack_1.global_56
  loc_B918AF: NewIfNullPr clsrecepcion
  loc_B918B2: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B918B7: FLdPr var_114
  loc_B918BA:  = Me.Fields
  loc_B918BF: FLdPr var_118
  loc_B918C2: from_stack_2 = Me.Item(from_stack_1)
  loc_B918C7: FLdPr var_12C
  loc_B918CA:  = Me.Value
  loc_B918CF: FLdRfVar var_160
  loc_B918D2: LitStr vbNullString
  loc_B918D5: LitStr vbNullString
  loc_B918D8: FLdRfVar var_15C
  loc_B918DB: CI2Var
  loc_B918DC: FLdRfVar var_14C
  loc_B918DF: CI2Var
  loc_B918E0: LitI2_Byte 0
  loc_B918E2: LitI2_Byte 0
  loc_B918E4: FLdRfVar var_13C
  loc_B918E7: CI4Var
  loc_B918E9: FLdRfVar var_C0
  loc_B918EC: CStrVarTmp
  loc_B918ED: FStStrNoPop var_A0
  loc_B918F0: LitI2_Byte 7
  loc_B918F2: ImpAdLdI2 MemVar_C3D064
  loc_B918F5: FLdPr Me
  loc_B918F8: MemLdRfVar from_stack_1.global_52
  loc_B918FB: NewIfNullPr clsimputacion
  loc_B918FE: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_B91903: FLdZeroAd var_160
  loc_B91906: CVarStr var_170
  loc_B91909: PopAdLdVar
  loc_B9190A: FLdPr Me
  loc_B9190D: VCallAd Control_ID_FechImpuMsk
  loc_B91910: FStAdFunc var_184
  loc_B91913: FLdPr var_184
  loc_B91916: LateIdSt
  loc_B9191B: FFree1Str var_A0
  loc_B9191E: FFreeAd var_AC = "": var_C4 = "": var_DC = "": var_E0 = "": var_F8 = "": var_FC = "": var_114 = "": var_118 = "": var_D8 = "": var_F4 = "": var_110 = "": var_12C = ""
  loc_B9193B: FFreeVar var_C0 = "": var_13C = "": var_14C = "": var_15C = ""
  loc_B91948: FLdPr Me
  loc_B9194B: VCallAd Control_ID_FechImpuMsk
  loc_B9194E: FStAdFunc var_AC
  loc_B91951: FLdPr var_AC
  loc_B91954: LateIdLdVar var_C0 DispID_11 -32767
  loc_B9195B: CStrVarTmp
  loc_B9195C: CVarStr var_13C
  loc_B9195F: PopAdLdVar
  loc_B91960: FLdPr Me
  loc_B91963: VCallAd Control_ID_FechImpuMsk
  loc_B91966: FStAdFunc var_C4
  loc_B91969: FLdPr var_C4
  loc_B9196C: LateIdSt
  loc_B91971: FFreeAd var_AC = ""
  loc_B91978: FFreeVar var_C0 = ""
  loc_B9197F: LitStr "Municipalidad de Guaymallén"
  loc_B91982: LitStr "Municipalidad de Maipú"
  loc_B91985: EqStr
  loc_B91987: BranchF loc_B919AD
  loc_B9198A: ImpAdLdFPR8 MemVar_C3D04C
  loc_B9198D: CStrDate
  loc_B9198F: CVarStr var_C0
  loc_B91992: PopAdLdVar
  loc_B91993: FLdPr Me
  loc_B91996: VCallAd Control_ID_FechImpuMsk
  loc_B91999: FStAdFunc var_AC
  loc_B9199C: FLdPr var_AC
  loc_B9199F: LateIdSt
  loc_B919A4: FFree1Ad var_AC
  loc_B919A7: FFree1Var var_C0 = ""
  loc_B919AA: Branch loc_B919E4
  loc_B919AD: FLdPr Me
  loc_B919B0: VCallAd Control_ID_FechImpuMsk
  loc_B919B3: FStAdFunc var_AC
  loc_B919B6: FLdPr var_AC
  loc_B919B9: LateIdLdVar var_C0 DispID_11 -32767
  loc_B919C0: CStrVarTmp
  loc_B919C1: CVarStr var_13C
  loc_B919C4: PopAdLdVar
  loc_B919C5: FLdPr Me
  loc_B919C8: VCallAd Control_ID_FechImpuMsk
  loc_B919CB: FStAdFunc var_C4
  loc_B919CE: FLdPr var_C4
  loc_B919D1: LateIdSt
  loc_B919D6: FFreeAd var_AC = ""
  loc_B919DD: FFreeVar var_C0 = ""
  loc_B919E4: FLdPr Me
  loc_B919E7: VCallAd Control_ID_FechImpuMsk
  loc_B919EA: FStAdFunc var_AC
  loc_B919ED: FLdPr var_AC
  loc_B919F0: LateIdLdVar var_C0 DispID_11 -32767
  loc_B919F7: CStrVarTmp
  loc_B919F8: CVarStr var_13C
  loc_B919FB: PopAdLdVar
  loc_B919FC: FLdPr Me
  loc_B919FF: VCallAd Control_ID_FechImpuMsk
  loc_B91A02: FStAdFunc var_C4
  loc_B91A05: FLdPr var_C4
  loc_B91A08: LateIdSt
  loc_B91A0D: FFreeAd var_AC = ""
  loc_B91A14: FFreeVar var_C0 = ""
  loc_B91A1B: LitI4 0
  loc_B91A20: LitI4 0
  loc_B91A25: FLdRfVar var_B0
  loc_B91A28: Redim
  loc_B91A32: FLdPr Me
  loc_B91A35: VCallAd Control_ID_FechImpuMsk
  loc_B91A38: CVarAd
  loc_B91A3C: ParmAry1St
  loc_B91A42: FLdRfVar var_B0
  loc_B91A45: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B91A4A: FLdRfVar var_B0
  loc_B91A4D: Erase
  loc_B91A4E: FLdRfVar var_A8
  loc_B91A51: FLdPr Me
  loc_B91A54: MemLdRfVar from_stack_1.global_56
  loc_B91A57: NewIfNullPr clsrecepcion
  loc_B91A5A: from_stack_1 = clsrecepcion.RecordCount
  loc_B91A5F: ILdRf var_A8
  loc_B91A62: LitI4 0
  loc_B91A67: GtI4
  loc_B91A68: BranchF loc_B91ACC
  loc_B91A6B: FLdRfVar var_C0
  loc_B91A6E: FLdRfVar var_D8
  loc_B91A71: LitVarStr var_D4, "ExpeImpu"
  loc_B91A76: PopAdLdVar
  loc_B91A77: FLdRfVar var_C4
  loc_B91A7A: FLdRfVar var_AC
  loc_B91A7D: FLdPr Me
  loc_B91A80: MemLdRfVar from_stack_1.global_56
  loc_B91A83: NewIfNullPr clsrecepcion
  loc_B91A86: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91A8B: FLdPr var_AC
  loc_B91A8E:  = Me.Fields
  loc_B91A93: FLdPr var_C4
  loc_B91A96: from_stack_2 = Me.Item(from_stack_1)
  loc_B91A9B: FLdPr var_D8
  loc_B91A9E:  = Me.Value
  loc_B91AA3: FLdRfVar var_C0
  loc_B91AA6: CStrVarTmp
  loc_B91AA7: FStStrNoPop var_A0
  loc_B91AAA: FLdPr Me
  loc_B91AAD: VCallAd Control_ID_ExpeImpuTxt
  loc_B91AB0: FStAdFunc var_DC
  loc_B91AB3: FLdPr var_DC
  loc_B91AB6: Me.Text = from_stack_1
  loc_B91ABB: FFree1Str var_A0
  loc_B91ABE: FFreeAd var_AC = "": var_C4 = "": var_D8 = ""
  loc_B91AC9: FFree1Var var_C0 = ""
  loc_B91ACC: LitI2_Byte 0
  loc_B91ACE: LitVarI2 var_C0, 0
  loc_B91AD3: Call dgdItemRecepcion_RowColChange(from_stack_1v, from_stack_2v)
  loc_B91AD8: FFree1Var var_C0 = ""
  loc_B91ADB: Branch loc_B92500
  loc_B91ADE: ILdRf var_A4
  loc_B91AE1: LitStr "btnModificar"
  loc_B91AE4: EqStr
  loc_B91AE6: BranchF loc_B91AEC
  loc_B91AE9: Branch loc_B92500
  loc_B91AEC: ILdRf var_A4
  loc_B91AEF: LitStr "btnEliminar"
  loc_B91AF2: EqStr
  loc_B91AF4: BranchF loc_B91AFA
  loc_B91AF7: Branch loc_B92500
  loc_B91AFA: ILdRf var_A4
  loc_B91AFD: LitStr "btnGuardar"
  loc_B91B00: EqStr
  loc_B91B02: BranchF loc_B9234C
  loc_B91B05: LitStr vbNullString
  loc_B91B08: FLdPr Me
  loc_B91B0B: MemStStrCopy
  loc_B91B0F: LitI2_Byte 0
  loc_B91B11: PopTmpLdAd2 var_188
  loc_B91B14: Call FechImpuMsk_UnknownEvent_8()
  loc_B91B19: FLdPr Me
  loc_B91B1C: MemLdStr global_68
  loc_B91B1F: LitStr vbNullString
  loc_B91B22: NeStr
  loc_B91B24: BranchF loc_B91B28
  loc_B91B27: ExitProcHresult
  loc_B91B28: LitI2_Byte 0
  loc_B91B2A: PopTmpLdAd2 var_188
  loc_B91B2D: Call ExpeImpuTxt_Validate(from_stack_1v)
  loc_B91B32: FLdPr Me
  loc_B91B35: MemLdStr global_68
  loc_B91B38: LitStr vbNullString
  loc_B91B3B: NeStr
  loc_B91B3D: BranchF loc_B91B41
  loc_B91B40: ExitProcHresult
  loc_B91B41: FLdPr Me
  loc_B91B44: MemLdUI1 global_64
  loc_B91B48: FStUI1 var_18A
  loc_B91B4C: FLdUI1
  loc_B91B50: LitI2_Byte 1
  loc_B91B52: EqI2
  loc_B91B53: BranchF loc_B9233A
  loc_B91B56: LitStr "SELECT itr.*, itc.DetaItco, itc.IdImpu IdImpuItc, (CantItre * ImpoItre)+AjusItre doImpoImpu"
  loc_B91B59: LitStr " FROM itemrecepcion  itr"
  loc_B91B5C: ConcatStr
  loc_B91B5D: FStStrNoPop var_A0
  loc_B91B60: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = itr.PeriInfo AND itc.CodiOrco = itr.CodiOrco AND itc.CodiItco = itr.CodiItco AND itc.AlteItco = itr.AlteItco"
  loc_B91B63: ConcatStr
  loc_B91B64: FStStrNoPop var_160
  loc_B91B67: LitStr " WHERE itr.PeriInfo = "
  loc_B91B6A: ConcatStr
  loc_B91B6B: CVarStr var_13C
  loc_B91B6E: FLdRfVar var_C0
  loc_B91B71: FLdRfVar var_D8
  loc_B91B74: LitVarStr var_D4, "PeriInfo"
  loc_B91B79: PopAdLdVar
  loc_B91B7A: FLdRfVar var_C4
  loc_B91B7D: FLdRfVar var_AC
  loc_B91B80: FLdPr Me
  loc_B91B83: MemLdRfVar from_stack_1.global_56
  loc_B91B86: NewIfNullPr clsrecepcion
  loc_B91B89: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91B8E: FLdPr var_AC
  loc_B91B91:  = Me.Fields
  loc_B91B96: FLdPr var_C4
  loc_B91B99: from_stack_2 = Me.Item(from_stack_1)
  loc_B91B9E: FLdPr var_D8
  loc_B91BA1:  = Me.Value
  loc_B91BA6: FLdRfVar var_C0
  loc_B91BA9: ConcatVar var_14C
  loc_B91BAD: LitVarStr var_F0, " AND itr.CodiOrco = "
  loc_B91BB2: ConcatVar var_15C
  loc_B91BB6: FLdRfVar var_170
  loc_B91BB9: FLdRfVar var_F4
  loc_B91BBC: LitVarStr var_10C, "CodiOrco"
  loc_B91BC1: PopAdLdVar
  loc_B91BC2: FLdRfVar var_E0
  loc_B91BC5: FLdRfVar var_DC
  loc_B91BC8: FLdPr Me
  loc_B91BCB: MemLdRfVar from_stack_1.global_56
  loc_B91BCE: NewIfNullPr clsrecepcion
  loc_B91BD1: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91BD6: FLdPr var_DC
  loc_B91BD9:  = Me.Fields
  loc_B91BDE: FLdPr var_E0
  loc_B91BE1: from_stack_2 = Me.Item(from_stack_1)
  loc_B91BE6: FLdPr var_F4
  loc_B91BE9:  = Me.Value
  loc_B91BEE: FLdRfVar var_170
  loc_B91BF1: ConcatVar var_19C
  loc_B91BF5: LitVarStr var_128, " AND itr.CodiRece = "
  loc_B91BFA: ConcatVar var_1AC
  loc_B91BFE: FLdRfVar var_1BC
  loc_B91C01: FLdRfVar var_110
  loc_B91C04: LitVarStr var_180, "CodiRece"
  loc_B91C09: PopAdLdVar
  loc_B91C0A: FLdRfVar var_FC
  loc_B91C0D: FLdRfVar var_F8
  loc_B91C10: FLdPr Me
  loc_B91C13: MemLdRfVar from_stack_1.global_56
  loc_B91C16: NewIfNullPr clsrecepcion
  loc_B91C19: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91C1E: FLdPr var_F8
  loc_B91C21:  = Me.Fields
  loc_B91C26: FLdPr var_FC
  loc_B91C29: from_stack_2 = Me.Item(from_stack_1)
  loc_B91C2E: FLdPr var_110
  loc_B91C31:  = Me.Value
  loc_B91C36: FLdRfVar var_1BC
  loc_B91C39: ConcatVar var_1CC
  loc_B91C3D: LitVarStr var_1DC, " AND itr.CodiPart != '' AND itr.CodiOrga <> '' "
  loc_B91C42: ConcatVar var_1EC
  loc_B91C46: LitVarStr var_1FC, " AND itr.CodiFifu != '' AND itr.IdImpu = 0;"
  loc_B91C4B: ConcatVar var_20C
  loc_B91C4F: CStrVarVal var_210
  loc_B91C53: FLdPr Me
  loc_B91C56: MemLdRfVar from_stack_1.global_60
  loc_B91C59: NewIfNullPr clsrecepcion
  loc_B91C5C: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_B91C61: FFreeStr var_A0 = "": var_160 = ""
  loc_B91C6A: FFreeAd var_AC = "": var_C4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B91C7F: FFreeVar var_13C = "": var_C0 = "": var_14C = "": var_15C = "": var_170 = "": var_19C = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1EC = ""
  loc_B91C98: FLdRfVar var_A8
  loc_B91C9B: FLdPr Me
  loc_B91C9E: MemLdRfVar from_stack_1.global_60
  loc_B91CA1: NewIfNullPr clsrecepcion
  loc_B91CA4: from_stack_1 = clsrecepcion.RecordCount
  loc_B91CA9: ILdRf var_A8
  loc_B91CAC: LitI4 0
  loc_B91CB1: GtI4
  loc_B91CB2: BranchF loc_B921DF
  loc_B91CB5: FLdPr Me
  loc_B91CB8: MemLdRfVar from_stack_1.global_60
  loc_B91CBB: NewIfNullPr clsrecepcion
  loc_B91CBE: Call clsrecepcion.MoveFirst()
  loc_B91CC3: FLdRfVar var_188
  loc_B91CC6: FLdPr Me
  loc_B91CC9: MemLdRfVar from_stack_1.global_60
  loc_B91CCC: NewIfNullPr clsrecepcion
  loc_B91CCF: from_stack_1 = clsrecepcion.EOF
  loc_B91CD4: FLdI2 var_188
  loc_B91CD7: NotI4
  loc_B91CD8: BranchF loc_B921DF
  loc_B91CDB: FLdRfVar var_D8
  loc_B91CDE: LitVarStr var_D4, "doImpoImpu"
  loc_B91CE3: PopAdLdVar
  loc_B91CE4: FLdRfVar var_C4
  loc_B91CE7: FLdRfVar var_AC
  loc_B91CEA: FLdPr Me
  loc_B91CED: MemLdRfVar from_stack_1.global_60
  loc_B91CF0: NewIfNullPr clsrecepcion
  loc_B91CF3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91CF8: FLdPr var_AC
  loc_B91CFB:  = Me.Fields
  loc_B91D00: FLdPr var_C4
  loc_B91D03: from_stack_2 = Me.Item(from_stack_1)
  loc_B91D08: LitI4 2
  loc_B91D0D: FLdZeroAd var_D8
  loc_B91D10: CVarAd
  loc_B91D14: FLdRfVar var_13C
  loc_B91D17: ImpAdCallFPR4  = Round(, )
  loc_B91D1C: FLdRfVar var_13C
  loc_B91D1F: CR4Var
  loc_B91D20: FStFPR8 var_94
  loc_B91D23: FFreeAd var_AC = ""
  loc_B91D2A: FFreeVar var_C0 = ""
  loc_B91D31: FLdRfVar var_C0
  loc_B91D34: FLdRfVar var_D8
  loc_B91D37: LitVarStr var_D4, "IdImpuItc"
  loc_B91D3C: PopAdLdVar
  loc_B91D3D: FLdRfVar var_C4
  loc_B91D40: FLdRfVar var_AC
  loc_B91D43: FLdPr Me
  loc_B91D46: MemLdRfVar from_stack_1.global_60
  loc_B91D49: NewIfNullPr clsrecepcion
  loc_B91D4C: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91D51: FLdPr var_AC
  loc_B91D54:  = Me.Fields
  loc_B91D59: FLdPr var_C4
  loc_B91D5C: from_stack_2 = Me.Item(from_stack_1)
  loc_B91D61: FLdPr var_D8
  loc_B91D64:  = Me.Value
  loc_B91D69: FLdRfVar var_218
  loc_B91D6C: FLdRfVar var_C0
  loc_B91D6F: CI4Var
  loc_B91D71: ImpAdLdI2 MemVar_C3D064
  loc_B91D74: FLdPr Me
  loc_B91D77: MemLdRfVar from_stack_1.global_52
  loc_B91D7A: NewIfNullPr clsimputacion
  loc_B91D7D: from_stack_3v = clsimputacion.BuscaSaldDefi(from_stack_1v, from_stack_2v)
  loc_B91D82: FLdFPR8 var_218
  loc_B91D85: FStFPR8 var_9C
  loc_B91D88: FFreeAd var_AC = "": var_C4 = ""
  loc_B91D91: FFree1Var var_C0 = ""
  loc_B91D94: LitI4 2
  loc_B91D99: FLdFPR8 var_94
  loc_B91D9C: FLdFPR8 var_9C
  loc_B91D9F: SubR4
  loc_B91DA0: CVarR8
  loc_B91DA4: FLdRfVar var_13C
  loc_B91DA7: ImpAdCallFPR4  = Round(, )
  loc_B91DAC: FLdRfVar var_13C
  loc_B91DAF: LitVarR8
  loc_B91DBB: HardType
  loc_B91DBC: EqVarBool
  loc_B91DBE: FFreeVar var_C0 = ""
  loc_B91DC5: BranchF loc_B91DCE
  loc_B91DC8: FLdFPR8 var_9C
  loc_B91DCB: FStFPR8 var_94
  loc_B91DCE: FLdFPR8 var_9C
  loc_B91DD1: FLdFPR8 var_94
  loc_B91DD4: NeR8
  loc_B91DD5: BranchF loc_B91FF6
  loc_B91DD8: FLdRfVar var_C0
  loc_B91DDB: FLdRfVar var_D8
  loc_B91DDE: LitVarStr var_D4, "CodiItco"
  loc_B91DE3: PopAdLdVar
  loc_B91DE4: FLdRfVar var_C4
  loc_B91DE7: FLdRfVar var_AC
  loc_B91DEA: FLdPr Me
  loc_B91DED: MemLdRfVar from_stack_1.global_60
  loc_B91DF0: NewIfNullPr clsrecepcion
  loc_B91DF3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91DF8: FLdPr var_AC
  loc_B91DFB:  = Me.Fields
  loc_B91E00: FLdPr var_C4
  loc_B91E03: from_stack_2 = Me.Item(from_stack_1)
  loc_B91E08: FLdPr var_D8
  loc_B91E0B:  = Me.Value
  loc_B91E10: FLdRfVar var_170
  loc_B91E13: FLdRfVar var_F4
  loc_B91E16: LitVarStr var_180, "CodiPart"
  loc_B91E1B: PopAdLdVar
  loc_B91E1C: FLdRfVar var_E0
  loc_B91E1F: FLdRfVar var_DC
  loc_B91E22: FLdPr Me
  loc_B91E25: MemLdRfVar from_stack_1.global_60
  loc_B91E28: NewIfNullPr clsrecepcion
  loc_B91E2B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91E30: FLdPr var_DC
  loc_B91E33:  = Me.Fields
  loc_B91E38: FLdPr var_E0
  loc_B91E3B: from_stack_2 = Me.Item(from_stack_1)
  loc_B91E40: FLdPr var_F4
  loc_B91E43:  = Me.Value
  loc_B91E48: FLdRfVar var_1CC
  loc_B91E4B: FLdRfVar var_110
  loc_B91E4E: LitVarStr var_228, "CodiOrga"
  loc_B91E53: PopAdLdVar
  loc_B91E54: FLdRfVar var_FC
  loc_B91E57: FLdRfVar var_F8
  loc_B91E5A: FLdPr Me
  loc_B91E5D: MemLdRfVar from_stack_1.global_60
  loc_B91E60: NewIfNullPr clsrecepcion
  loc_B91E63: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91E68: FLdPr var_F8
  loc_B91E6B:  = Me.Fields
  loc_B91E70: FLdPr var_FC
  loc_B91E73: from_stack_2 = Me.Item(from_stack_1)
  loc_B91E78: FLdPr var_110
  loc_B91E7B:  = Me.Value
  loc_B91E80: FLdRfVar var_278
  loc_B91E83: FLdRfVar var_12C
  loc_B91E86: LitVarStr var_268, "CodiFifu"
  loc_B91E8B: PopAdLdVar
  loc_B91E8C: FLdRfVar var_118
  loc_B91E8F: FLdRfVar var_114
  loc_B91E92: FLdPr Me
  loc_B91E95: MemLdRfVar from_stack_1.global_60
  loc_B91E98: NewIfNullPr clsrecepcion
  loc_B91E9B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B91EA0: FLdPr var_114
  loc_B91EA3:  = Me.Fields
  loc_B91EA8: FLdPr var_118
  loc_B91EAB: from_stack_2 = Me.Item(from_stack_1)
  loc_B91EB0: FLdPr var_12C
  loc_B91EB3:  = Me.Value
  loc_B91EB8: LitI4 1
  loc_B91EBD: LitI4 1
  loc_B91EC2: LitVarStr var_2E8, "currency"
  loc_B91EC7: FStVarCopyObj var_2F8
  loc_B91ECA: FLdRfVar var_2F8
  loc_B91ECD: FLdRfVar var_94
  loc_B91ED0: CVarRef
  loc_B91ED5: ImpAdCallI2 Format$(, )
  loc_B91EDA: FStStr var_160
  loc_B91EDD: LitI4 1
  loc_B91EE2: LitI4 1
  loc_B91EE7: LitVarStr var_378, "currency"
  loc_B91EEC: FStVarCopyObj var_388
  loc_B91EEF: FLdRfVar var_388
  loc_B91EF2: FLdRfVar var_9C
  loc_B91EF5: CVarRef
  loc_B91EFA: ImpAdCallI2 Format$(, )
  loc_B91EFF: FStStr var_210
  loc_B91F02: LitI4 0
  loc_B91F07: LitVarStr var_F0, "El Importe del Item "
  loc_B91F0C: FLdRfVar var_C0
  loc_B91F0F: ConcatVar var_13C
  loc_B91F13: LitVarStr var_10C, vbCrLf
  loc_B91F18: ConcatVar var_14C
  loc_B91F1C: LitVarStr var_128, " Partida: "
  loc_B91F21: ConcatVar var_15C
  loc_B91F25: FLdRfVar var_170
  loc_B91F28: ConcatVar var_19C
  loc_B91F2C: LitVarStr var_1DC, vbCrLf
  loc_B91F31: ConcatVar var_1AC
  loc_B91F35: LitVarStr var_1FC, " Organigrama: "
  loc_B91F3A: ConcatVar var_1BC
  loc_B91F3E: FLdRfVar var_1CC
  loc_B91F41: ConcatVar var_1EC
  loc_B91F45: LitVarStr var_238, vbCrLf
  loc_B91F4A: ConcatVar var_20C
  loc_B91F4E: LitVarStr var_248, " Finalidad: "
  loc_B91F53: ConcatVar var_258
  loc_B91F57: FLdRfVar var_278
  loc_B91F5A: ConcatVar var_288
  loc_B91F5E: LitVarStr var_298, vbCrLf
  loc_B91F63: ConcatVar var_2A8
  loc_B91F67: LitVarStr var_2B8, " Importe: "
  loc_B91F6C: ConcatVar var_2C8
  loc_B91F70: FLdZeroAd var_160
  loc_B91F73: CVarStr var_308
  loc_B91F76: ConcatVar var_318
  loc_B91F7A: LitVarStr var_328, vbCrLf
  loc_B91F7F: ConcatVar var_338
  loc_B91F83: LitVarStr var_348, "es Distinto del Saldo de la Definitiva: "
  loc_B91F88: ConcatVar var_358
  loc_B91F8C: FLdZeroAd var_210
  loc_B91F8F: CVarStr var_398
  loc_B91F92: ConcatVar var_3A8
  loc_B91F96: CStrVarVal var_A0
  loc_B91F9A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B91F9F: FFreeStr var_A0 = "": var_160 = ""
  loc_B91FA8: FFreeAd var_AC = "": var_C4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = "": var_118 = ""
  loc_B91FC3: FFreeVar var_C0 = "": var_13C = "": var_14C = "": var_15C = "": var_170 = "": var_19C = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1EC = "": var_20C = "": var_258 = "": var_278 = "": var_288 = "": var_2A8 = "": var_2F8 = "": var_2C8 = "": var_308 = "": var_318 = "": var_338 = "": var_388 = "": var_358 = "": var_398 = ""
  loc_B91FF6: FLdFPR8 var_9C
  loc_B91FF9: FLdFPR8 var_94
  loc_B91FFC: LtR8
  loc_B91FFD: BranchF loc_B92163
  loc_B92000: FLdRfVar var_13C
  loc_B92003: FLdRfVar var_D8
  loc_B92006: LitVarStr var_D4, "AjusItre"
  loc_B9200B: PopAdLdVar
  loc_B9200C: FLdRfVar var_C4
  loc_B9200F: FLdRfVar var_AC
  loc_B92012: FLdPr Me
  loc_B92015: MemLdRfVar from_stack_1.global_60
  loc_B92018: NewIfNullPr clsrecepcion
  loc_B9201B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B92020: FLdPr var_AC
  loc_B92023:  = Me.Fields
  loc_B92028: FLdPr var_C4
  loc_B9202B: from_stack_2 = Me.Item(from_stack_1)
  loc_B92030: FLdZeroAd var_D8
  loc_B92033: CVarAd
  loc_B92037: ImpAdCallHresult  = CDec()
  loc_B9203C: FLdRfVar var_13C
  loc_B9203F: LitVarI2 var_F0, 0
  loc_B92044: HardType
  loc_B92045: GtVar var_14C
  loc_B92049: FLdRfVar var_170
  loc_B9204C: FLdRfVar var_F4
  loc_B9204F: LitVarStr var_10C, "AjusItre"
  loc_B92054: PopAdLdVar
  loc_B92055: FLdRfVar var_E0
  loc_B92058: FLdRfVar var_DC
  loc_B9205B: FLdPr Me
  loc_B9205E: MemLdRfVar from_stack_1.global_60
  loc_B92061: NewIfNullPr clsrecepcion
  loc_B92064: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B92069: FLdPr var_DC
  loc_B9206C:  = Me.Fields
  loc_B92071: FLdPr var_E0
  loc_B92074: from_stack_2 = Me.Item(from_stack_1)
  loc_B92079: FLdZeroAd var_F4
  loc_B9207C: CVarAd
  loc_B92080: ImpAdCallHresult  = CDec()
  loc_B92085: FLdRfVar var_170
  loc_B92088: LitVarI2 var_128, 10
  loc_B9208D: HardType
  loc_B9208E: LtVar var_19C
  loc_B92092: AndVar var_1AC
  loc_B92096: CBoolVarNull
  loc_B92098: FFreeAd var_AC = "": var_C4 = "": var_DC = ""
  loc_B920A3: FFreeVar var_C0 = "": var_13C = "": var_15C = ""
  loc_B920AE: BranchF loc_B92153
  loc_B920B1: LitI4 0
  loc_B920B6: LitVarStr var_F0, "Advertencia: Se genera un Ajuste de Preventiva y Definitiva por "
  loc_B920BB: FLdRfVar var_C0
  loc_B920BE: FLdRfVar var_D8
  loc_B920C1: LitVarStr var_D4, "AjusItre"
  loc_B920C6: PopAdLdVar
  loc_B920C7: FLdRfVar var_C4
  loc_B920CA: FLdRfVar var_AC
  loc_B920CD: FLdPr Me
  loc_B920D0: MemLdRfVar from_stack_1.global_60
  loc_B920D3: NewIfNullPr clsrecepcion
  loc_B920D6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B920DB: FLdPr var_AC
  loc_B920DE:  = Me.Fields
  loc_B920E3: FLdPr var_C4
  loc_B920E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B920EB: FLdPr var_D8
  loc_B920EE:  = Me.Value
  loc_B920F3: FLdRfVar var_C0
  loc_B920F6: ConcatVar var_13C
  loc_B920FA: LitVarStr var_10C, ". Verifique ..."
  loc_B920FF: ConcatVar var_14C
  loc_B92103: CStrVarVal var_A0
  loc_B92107: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9210C: FFree1Str var_A0
  loc_B9210F: FFreeAd var_AC = "": var_C4 = ""
  loc_B92118: FFreeVar var_C0 = "": var_13C = ""
  loc_B92121: LitI2_Byte &HFF
  loc_B92123: FStI2 var_186
  loc_B92126: FLdRfVar var_A8
  loc_B92129: FLdR8 var_94
  loc_B9212C: Call Proc_111_20_BF7F04()
  loc_B92131: ILdRf var_A8
  loc_B92134: FStR4 var_8C
  loc_B92137: ILdRf var_8C
  loc_B9213A: LitI4 0
  loc_B9213F: EqI4
  loc_B92140: BranchF loc_B92150
  loc_B92143: LitI4 0
  loc_B92148: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B9214B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B92150: Branch loc_B92160
  loc_B92153: LitI4 0
  loc_B92158: LitStr "Diferencias en el Devengado. Revise las imputaciones del ítem ..."
  loc_B9215B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B92160: Branch loc_B921CE
  loc_B92163: FLdFPR8 var_9C
  loc_B92166: FLdFPR8 var_94
  loc_B92169: GtR4
  loc_B9216A: BranchF loc_B9219F
  loc_B9216D: LitI2_Byte &HFF
  loc_B9216F: FStI2 var_186
  loc_B92172: FLdRfVar var_A8
  loc_B92175: FLdR8 var_94
  loc_B92178: Call Proc_111_20_BF7F04()
  loc_B9217D: ILdRf var_A8
  loc_B92180: FStR4 var_8C
  loc_B92183: ILdRf var_8C
  loc_B92186: LitI4 0
  loc_B9218B: EqI4
  loc_B9218C: BranchF loc_B9219C
  loc_B9218F: LitI4 0
  loc_B92194: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B92197: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9219C: Branch loc_B921CE
  loc_B9219F: LitI2_Byte &HFF
  loc_B921A1: FStI2 var_186
  loc_B921A4: FLdRfVar var_A8
  loc_B921A7: FLdR8 var_94
  loc_B921AA: Call Proc_111_20_BF7F04()
  loc_B921AF: ILdRf var_A8
  loc_B921B2: FStR4 var_8C
  loc_B921B5: ILdRf var_8C
  loc_B921B8: LitI4 0
  loc_B921BD: EqI4
  loc_B921BE: BranchF loc_B921CE
  loc_B921C1: LitI4 0
  loc_B921C6: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B921C9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B921CE: FLdPr Me
  loc_B921D1: MemLdRfVar from_stack_1.global_60
  loc_B921D4: NewIfNullPr clsrecepcion
  loc_B921D7: Call clsrecepcion.MoveSiguiente()
  loc_B921DC: Branch loc_B91CC3
  loc_B921DF: FLdI2 var_186
  loc_B921E2: BranchF loc_B92337
  loc_B921E5: LitI2_Byte &HFF
  loc_B921E7: PopTmpLdAd2 var_3AA
  loc_B921EA: LitI2_Byte 0
  loc_B921EC: PopTmpLdAd2 var_188
  loc_B921EF: LitStr "¿Imprime el Volante de Imputaciones?"
  loc_B921F2: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B921F7: CI4UI1
  loc_B921F8: LitI4 6
  loc_B921FD: EqI4
  loc_B921FE: BranchF loc_B92337
  loc_B92201: LitStr "Municipalidad de Guaymallén"
  loc_B92204: LitStr "Municipalidad de Maipú"
  loc_B92207: EqStr
  loc_B92209: BranchF loc_B922A3
  loc_B9220C: ImpAdLdRf MemVar_C3DA98
  loc_B9220F: NewIfNullAd
  loc_B92212: FStAdNoPop
  loc_B92216: ImpAdLdRf MemVar_C44F9C
  loc_B92219: NewIfNullPr Me
  loc_B9221C: Me.Global.Load from_stack_1
  loc_B92221: FFree1Ad var_AC
  loc_B92224: FLdRfVar var_C0
  loc_B92227: FLdRfVar var_D8
  loc_B9222A: LitVarStr var_D4, "ExpeImpu"
  loc_B9222F: PopAdLdVar
  loc_B92230: FLdRfVar var_C4
  loc_B92233: FLdRfVar var_AC
  loc_B92236: FLdPr Me
  loc_B92239: MemLdRfVar from_stack_1.global_56
  loc_B9223C: NewIfNullPr clsrecepcion
  loc_B9223F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B92244: FLdPr var_AC
  loc_B92247:  = Me.Fields
  loc_B9224C: FLdPr var_C4
  loc_B9224F: from_stack_2 = Me.Item(from_stack_1)
  loc_B92254: FLdPr var_D8
  loc_B92257:  = Me.Value
  loc_B9225C: FLdRfVar var_C0
  loc_B9225F: CStrVarTmp
  loc_B92260: FStStrNoPop var_A0
  loc_B92263: ImpAdLdRf MemVar_C3DA98
  loc_B92266: NewIfNullPr rptVolantedeImputacionesExpdePago
  loc_B92269: VCallAd Control_ID_cboExpeImpu
  loc_B9226C: FStAdFunc var_DC
  loc_B9226F: FLdPr var_DC
  loc_B92272: rptVolantedeImputacionesExpdePago.ComboBox.Text = from_stack_1
  loc_B92277: FFree1Str var_A0
  loc_B9227A: FFreeAd var_AC = "": var_C4 = "": var_D8 = ""
  loc_B92285: FFree1Var var_C0 = ""
  loc_B92288: LitVar_Missing var_F0
  loc_B9228B: PopAdLdVar
  loc_B9228C: LitVarI4
  loc_B92294: PopAdLdVar
  loc_B92295: ImpAdLdRf MemVar_C3DA98
  loc_B92298: NewIfNullPr rptVolantedeImputacionesExpdePago
  loc_B9229B: rptVolantedeImputacionesExpdePago.Show from_stack_1, from_stack_2
  loc_B922A0: Branch loc_B92337
  loc_B922A3: ImpAdLdRf MemVar_C3D9BC
  loc_B922A6: NewIfNullAd
  loc_B922A9: FStAdNoPop
  loc_B922AD: ImpAdLdRf MemVar_C44F9C
  loc_B922B0: NewIfNullPr Me
  loc_B922B3: Me.Global.Load from_stack_1
  loc_B922B8: FFree1Ad var_AC
  loc_B922BB: FLdRfVar var_C0
  loc_B922BE: FLdRfVar var_D8
  loc_B922C1: LitVarStr var_D4, "ExorImpu"
  loc_B922C6: PopAdLdVar
  loc_B922C7: FLdRfVar var_C4
  loc_B922CA: FLdRfVar var_AC
  loc_B922CD: FLdPr Me
  loc_B922D0: MemLdRfVar from_stack_1.global_56
  loc_B922D3: NewIfNullPr clsrecepcion
  loc_B922D6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B922DB: FLdPr var_AC
  loc_B922DE:  = Me.Fields
  loc_B922E3: FLdPr var_C4
  loc_B922E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B922EB: FLdPr var_D8
  loc_B922EE:  = Me.Value
  loc_B922F3: FLdRfVar var_C0
  loc_B922F6: CStrVarTmp
  loc_B922F7: FStStrNoPop var_A0
  loc_B922FA: ImpAdLdRf MemVar_C3D9BC
  loc_B922FD: NewIfNullPr rptVolantedeImputaciones
  loc_B92300: VCallAd Control_ID_cboExorImpu
  loc_B92303: FStAdFunc var_DC
  loc_B92306: FLdPr var_DC
  loc_B92309: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B9230E: FFree1Str var_A0
  loc_B92311: FFreeAd var_AC = "": var_C4 = "": var_D8 = ""
  loc_B9231C: FFree1Var var_C0 = ""
  loc_B9231F: LitVar_Missing var_F0
  loc_B92322: PopAdLdVar
  loc_B92323: LitVarI4
  loc_B9232B: PopAdLdVar
  loc_B9232C: ImpAdLdRf MemVar_C3D9BC
  loc_B9232F: NewIfNullPr rptVolantedeImputaciones
  loc_B92332: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B92337: Branch loc_B92344
  loc_B9233A: FLdUI1
  loc_B9233E: LitI2_Byte 2
  loc_B92340: EqI2
  loc_B92341: BranchF loc_B92344
  loc_B92344: Call cmdCancelar_Click()
  loc_B92349: Branch loc_B92500
  loc_B9234C: ILdRf var_A4
  loc_B9234F: LitStr "btnCancelar"
  loc_B92352: EqStr
  loc_B92354: BranchF loc_B9235F
  loc_B92357: Call cmdCancelar_Click()
  loc_B9235C: Branch loc_B92500
  loc_B9235F: ILdRf var_A4
  loc_B92362: LitStr "btnPrimero"
  loc_B92365: EqStr
  loc_B92367: BranchF loc_B9237B
  loc_B9236A: FLdPr Me
  loc_B9236D: MemLdRfVar from_stack_1.global_56
  loc_B92370: NewIfNullPr clsrecepcion
  loc_B92373: Call clsrecepcion.MoveFirst()
  loc_B92378: Branch loc_B92500
  loc_B9237B: ILdRf var_A4
  loc_B9237E: LitStr "btnAnterior"
  loc_B92381: EqStr
  loc_B92383: BranchF loc_B92397
  loc_B92386: FLdPr Me
  loc_B92389: MemLdRfVar from_stack_1.global_56
  loc_B9238C: NewIfNullPr clsrecepcion
  loc_B9238F: Call clsrecepcion.MovePrevious()
  loc_B92394: Branch loc_B92500
  loc_B92397: ILdRf var_A4
  loc_B9239A: LitStr "btnSiguiente"
  loc_B9239D: EqStr
  loc_B9239F: BranchF loc_B923B3
  loc_B923A2: FLdPr Me
  loc_B923A5: MemLdRfVar from_stack_1.global_56
  loc_B923A8: NewIfNullPr clsrecepcion
  loc_B923AB: Call clsrecepcion.MoveNext()
  loc_B923B0: Branch loc_B92500
  loc_B923B3: ILdRf var_A4
  loc_B923B6: LitStr "btnUltimo"
  loc_B923B9: EqStr
  loc_B923BB: BranchF loc_B923CF
  loc_B923BE: FLdPr Me
  loc_B923C1: MemLdRfVar from_stack_1.global_56
  loc_B923C4: NewIfNullPr clsrecepcion
  loc_B923C7: Call clsrecepcion.MoveLast()
  loc_B923CC: Branch loc_B92500
  loc_B923CF: ILdRf var_A4
  loc_B923D2: LitStr "btnFiltrar"
  loc_B923D5: EqStr
  loc_B923D7: BranchF loc_B923DD
  loc_B923DA: Branch loc_B92500
  loc_B923DD: ILdRf var_A4
  loc_B923E0: LitStr "btnBuscar"
  loc_B923E3: EqStr
  loc_B923E5: BranchF loc_B923EB
  loc_B923E8: Branch loc_B92500
  loc_B923EB: ILdRf var_A4
  loc_B923EE: LitStr "btnImprimir"
  loc_B923F1: EqStr
  loc_B923F3: BranchF loc_B924A9
  loc_B923F6: ImpAdLdRf MemVar_C3D9BC
  loc_B923F9: NewIfNullAd
  loc_B923FC: CastAd
  loc_B923FF: FStAdFuncNoPop
  loc_B92402: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B92407: FFree1Ad var_AC
  loc_B9240A: FLdRfVar var_A8
  loc_B9240D: FLdPr Me
  loc_B92410: MemLdRfVar from_stack_1.global_56
  loc_B92413: NewIfNullPr clsrecepcion
  loc_B92416: from_stack_1 = clsrecepcion.RecordCount
  loc_B9241B: ILdRf var_A8
  loc_B9241E: LitI4 0
  loc_B92423: GtI4
  loc_B92424: BranchF loc_B9248E
  loc_B92427: FLdRfVar var_C0
  loc_B9242A: FLdRfVar var_D8
  loc_B9242D: LitVarStr var_D4, "ExorImpu"
  loc_B92432: PopAdLdVar
  loc_B92433: FLdRfVar var_C4
  loc_B92436: FLdRfVar var_AC
  loc_B92439: FLdPr Me
  loc_B9243C: MemLdRfVar from_stack_1.global_56
  loc_B9243F: NewIfNullPr clsrecepcion
  loc_B92442: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B92447: FLdPr var_AC
  loc_B9244A:  = Me.Fields
  loc_B9244F: FLdPr var_C4
  loc_B92452: from_stack_2 = Me.Item(from_stack_1)
  loc_B92457: FLdPr var_D8
  loc_B9245A:  = Me.Value
  loc_B9245F: FLdRfVar var_C0
  loc_B92462: CStrVarTmp
  loc_B92463: FStStrNoPop var_A0
  loc_B92466: ImpAdLdRf MemVar_C3D9BC
  loc_B92469: NewIfNullPr rptVolantedeImputaciones
  loc_B9246C: VCallAd Control_ID_cboExorImpu
  loc_B9246F: FStAdFunc var_DC
  loc_B92472: FLdPr var_DC
  loc_B92475: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B9247A: FFree1Str var_A0
  loc_B9247D: FFreeAd var_AC = "": var_C4 = "": var_D8 = ""
  loc_B92488: FFree1Var var_C0 = ""
  loc_B9248B: Branch loc_B9248E
  loc_B9248E: LitVar_Missing var_F0
  loc_B92491: PopAdLdVar
  loc_B92492: LitVarI4
  loc_B9249A: PopAdLdVar
  loc_B9249B: ImpAdLdRf MemVar_C3D9BC
  loc_B9249E: NewIfNullPr rptVolantedeImputaciones
  loc_B924A1: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B924A6: Branch loc_B92500
  loc_B924A9: ILdRf var_A4
  loc_B924AC: LitStr "btnAyuda"
  loc_B924AF: EqStr
  loc_B924B1: BranchF loc_B924E0
  loc_B924B4: LitVar_Missing var_15C
  loc_B924B7: LitVar_Missing var_14C
  loc_B924BA: LitVar_Missing var_13C
  loc_B924BD: LitI4 0
  loc_B924C2: LitVarStr var_D4, "Opcion no disponible en esta version."
  loc_B924C7: FStVarCopyObj var_C0
  loc_B924CA: FLdRfVar var_C0
  loc_B924CD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B924D2: FFreeVar var_C0 = "": var_13C = "": var_14C = ""
  loc_B924DD: Branch loc_B92500
  loc_B924E0: ILdRf var_A4
  loc_B924E3: LitStr "btnSalir"
  loc_B924E6: EqStr
  loc_B924E8: BranchF loc_B92500
  loc_B924EB: ILdRf Me
  loc_B924EE: FStAdNoPop
  loc_B924F2: ImpAdLdRf MemVar_C44F9C
  loc_B924F5: NewIfNullPr Me
  loc_B924F8: Me.Global.Unload from_stack_1
  loc_B924FD: FFree1Ad var_AC
  loc_B92500: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_GotFocus() '94F698
  'Data Table: 47B87C
  loc_94F684: FLdPrThis
  loc_94F685: VCallAd Control_ID_ExpeImpuTxt
  loc_94F688: CVarAd
  loc_94F68C: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F691: FFree1Var var_94 = ""
  loc_94F694: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_Validate(Cancel As Boolean) '9BED88
  'Data Table: 47B87C
  loc_9BECCC: FLdRfVar var_8A
  loc_9BECCF: FLdPr Me
  loc_9BECD2: VCallAd Control_ID_cmdCancelar
  loc_9BECD5: FStAdFunc var_88
  loc_9BECD8: FLdPr var_88
  loc_9BECDB:  = Me.Value
  loc_9BECE0: FLdI2 var_8A
  loc_9BECE3: NotI4
  loc_9BECE4: FLdRfVar var_92
  loc_9BECE7: FLdPr Me
  loc_9BECEA: VCallAd Control_ID_ExpeImpuTxt
  loc_9BECED: FStAdFunc var_90
  loc_9BECF0: FLdPr var_90
  loc_9BECF3:  = Me.Enabled
  loc_9BECF8: FLdI2 var_92
  loc_9BECFB: AndI4
  loc_9BECFC: FFreeAd var_88 = ""
  loc_9BED03: BranchF loc_9BED84
  loc_9BED06: FLdRfVar var_98
  loc_9BED09: FLdPr Me
  loc_9BED0C: VCallAd Control_ID_ExpeImpuTxt
  loc_9BED0F: FStAdFunc var_88
  loc_9BED12: FLdPr var_88
  loc_9BED15:  = Me.Text
  loc_9BED1A: LitI2_Byte 0
  loc_9BED1C: PopTmpLdAd2 var_9A
  loc_9BED1F: LitI2_Byte 0
  loc_9BED21: PopTmpLdAd2 var_92
  loc_9BED24: LitI2_Byte 0
  loc_9BED26: PopTmpLdAd2 var_8A
  loc_9BED29: ILdRf var_98
  loc_9BED2C: LitStr "Expediente de Pago"
  loc_9BED2F: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BED34: FStStrNoPop var_A0
  loc_9BED37: FLdPr Me
  loc_9BED3A: MemStStrCopy
  loc_9BED3E: FFreeStr var_98 = ""
  loc_9BED45: FFree1Ad var_88
  loc_9BED48: FLdPr Me
  loc_9BED4B: VCallAd Control_ID_ExpeImpuTxt
  loc_9BED4E: FStAdFunc var_A8
  loc_9BED51: LitNothing
  loc_9BED53: CastAd
  loc_9BED56: FStAdFunc var_A4
  loc_9BED59: FLdRfVar var_A4
  loc_9BED5C: FLdZeroAd var_A8
  loc_9BED5F: FStAdFuncNoPop
  loc_9BED62: CastAd
  loc_9BED65: FStAdFunc var_90
  loc_9BED68: FLdRfVar var_90
  loc_9BED6B: FLdPr Me
  loc_9BED6E: MemLdRfVar from_stack_1.global_68
  loc_9BED71: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BED76: IStI2 Cancel
  loc_9BED79: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BED84: ExitProcHresult
  loc_9BED85: FStFPR8 var_94
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95D6E8
  'Data Table: 47B87C
  loc_95D6D0: FLdPr Me
  loc_95D6D3: VCallAd Control_ID_dgdABMS
  loc_95D6D6: FStAdFunc var_88
  loc_95D6D9: FLdRfVar var_88
  loc_95D6DC: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95D6E1: FFree1Ad var_88
  loc_95D6E4: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95D780
  'Data Table: 47B87C
  loc_95D768: FLdPr Me
  loc_95D76B: VCallAd Control_ID_dgdABMS
  loc_95D76E: FStAdFunc var_88
  loc_95D771: FLdRfVar var_88
  loc_95D774: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95D779: FFree1Ad var_88
  loc_95D77C: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99AD10
  'Data Table: 47B87C
  loc_99ACB4: FLdRfVar var_B4
  loc_99ACB7: FLdRfVar var_B0
  loc_99ACBA: FLdI2 ColIndex
  loc_99ACBD: CVarI2 var_A8
  loc_99ACC0: PopAdLdVar
  loc_99ACC1: FLdPr Me
  loc_99ACC4: VCallAd Control_ID_dgdABMS
  loc_99ACC7: FStAdFunc var_88
  loc_99ACCA: FLdPr var_88
  loc_99ACCD: LateIdLdVar var_98 DispID_105 0
  loc_99ACD4: CastAdVar Me
  loc_99ACD8: FStAdFunc var_AC
  loc_99ACDB: FLdPr var_AC
  loc_99ACDE: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99ACE3: FLdPr var_B0
  loc_99ACE6:  = Me.DataField
  loc_99ACEB: FLdZeroAd var_B4
  loc_99ACEE: PopTmpLdAdStr
  loc_99ACF2: FLdPr Me
  loc_99ACF5: MemLdRfVar from_stack_1.global_56
  loc_99ACF8: NewIfNullPr clsrecepcion
  loc_99ACFB: Call clsrecepcion.Sort(from_stack_1v)
  loc_99AD00: FFree1Str var_B8
  loc_99AD03: FFreeAd var_88 = "": var_AC = ""
  loc_99AD0C: FFree1Var var_98 = ""
  loc_99AD0F: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'A3222C
  'Data Table: 47B87C
  loc_A32068: FLdPr Me
  loc_A3206B: MemLdUI1 global_64
  loc_A3206F: CI2UI1
  loc_A32071: LitI2_Byte 0
  loc_A32073: EqI2
  loc_A32074: FLdRfVar var_88
  loc_A32077: FLdPr Me
  loc_A3207A: MemLdRfVar from_stack_1.global_56
  loc_A3207D: NewIfNullPr clsrecepcion
  loc_A32080: from_stack_1 = clsrecepcion.RecordCount
  loc_A32085: ILdRf var_88
  loc_A32088: LitI4 0
  loc_A3208D: GtI4
  loc_A3208E: AndI4
  loc_A3208F: BranchF loc_A3220B
  loc_A32092: FLdRfVar var_8A
  loc_A32095: FLdPr Me
  loc_A32098: MemLdRfVar from_stack_1.global_56
  loc_A3209B: NewIfNullPr clsrecepcion
  loc_A3209E: from_stack_1 = clsrecepcion.BOF
  loc_A320A3: FLdI2 var_8A
  loc_A320A6: BranchF loc_A320B7
  loc_A320A9: FLdPr Me
  loc_A320AC: MemLdRfVar from_stack_1.global_56
  loc_A320AF: NewIfNullPr clsrecepcion
  loc_A320B2: Call clsrecepcion.MoveFirst()
  loc_A320B7: FLdRfVar var_8A
  loc_A320BA: FLdPr Me
  loc_A320BD: MemLdRfVar from_stack_1.global_56
  loc_A320C0: NewIfNullPr clsrecepcion
  loc_A320C3: from_stack_1 = clsrecepcion.EOF
  loc_A320C8: FLdI2 var_8A
  loc_A320CB: BranchF loc_A320DC
  loc_A320CE: FLdPr Me
  loc_A320D1: MemLdRfVar from_stack_1.global_56
  loc_A320D4: NewIfNullPr clsrecepcion
  loc_A320D7: Call clsrecepcion.MoveLast()
  loc_A320DC: LitStr "SELECT itr.*, itc.DetaItco, itc.IdImpu, itr.CantItre*itr.ImpoItre TotaItre, IF(itr.IdImpu=0,'No','Si') Imputado"
  loc_A320DF: LitStr " FROM itemrecepcion itr"
  loc_A320E2: ConcatStr
  loc_A320E3: FStStrNoPop var_90
  loc_A320E6: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = itr.PeriInfo AND itc.CodiOrco = itr.CodiOrco AND itc.CodiItco = itr.CodiItco AND itc.AlteItco = itr.AlteItco"
  loc_A320E9: ConcatStr
  loc_A320EA: FStStrNoPop var_94
  loc_A320ED: LitStr " WHERE itr.PeriInfo = "
  loc_A320F0: ConcatStr
  loc_A320F1: CVarStr var_D0
  loc_A320F4: FLdRfVar var_C0
  loc_A320F7: FLdRfVar var_B0
  loc_A320FA: LitVarStr var_AC, "PeriInfo"
  loc_A320FF: PopAdLdVar
  loc_A32100: FLdRfVar var_9C
  loc_A32103: FLdRfVar var_98
  loc_A32106: FLdPr Me
  loc_A32109: MemLdRfVar from_stack_1.global_56
  loc_A3210C: NewIfNullPr clsrecepcion
  loc_A3210F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A32114: FLdPr var_98
  loc_A32117:  = Me.Fields
  loc_A3211C: FLdPr var_9C
  loc_A3211F: from_stack_2 = Me.Item(from_stack_1)
  loc_A32124: FLdPr var_B0
  loc_A32127:  = Me.Value
  loc_A3212C: FLdRfVar var_C0
  loc_A3212F: ConcatVar var_E0
  loc_A32133: LitVarStr var_F0, " AND itr.CodiOrco = "
  loc_A32138: ConcatVar var_100
  loc_A3213C: FLdRfVar var_12C
  loc_A3213F: FLdRfVar var_11C
  loc_A32142: LitVarStr var_118, "CodiOrco"
  loc_A32147: PopAdLdVar
  loc_A32148: FLdRfVar var_108
  loc_A3214B: FLdRfVar var_104
  loc_A3214E: FLdPr Me
  loc_A32151: MemLdRfVar from_stack_1.global_56
  loc_A32154: NewIfNullPr clsrecepcion
  loc_A32157: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A3215C: FLdPr var_104
  loc_A3215F:  = Me.Fields
  loc_A32164: FLdPr var_108
  loc_A32167: from_stack_2 = Me.Item(from_stack_1)
  loc_A3216C: FLdPr var_11C
  loc_A3216F:  = Me.Value
  loc_A32174: FLdRfVar var_12C
  loc_A32177: ConcatVar var_13C
  loc_A3217B: LitVarStr var_14C, " AND CodiRece = "
  loc_A32180: ConcatVar var_15C
  loc_A32184: FLdRfVar var_188
  loc_A32187: FLdRfVar var_178
  loc_A3218A: LitVarStr var_174, "CodiRece"
  loc_A3218F: PopAdLdVar
  loc_A32190: FLdRfVar var_164
  loc_A32193: FLdRfVar var_160
  loc_A32196: FLdPr Me
  loc_A32199: MemLdRfVar from_stack_1.global_56
  loc_A3219C: NewIfNullPr clsrecepcion
  loc_A3219F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A321A4: FLdPr var_160
  loc_A321A7:  = Me.Fields
  loc_A321AC: FLdPr var_164
  loc_A321AF: from_stack_2 = Me.Item(from_stack_1)
  loc_A321B4: FLdPr var_178
  loc_A321B7:  = Me.Value
  loc_A321BC: FLdRfVar var_188
  loc_A321BF: ConcatVar var_198
  loc_A321C3: CStrVarVal var_19C
  loc_A321C7: FLdPr Me
  loc_A321CA: MemLdRfVar from_stack_1.global_60
  loc_A321CD: NewIfNullPr clsrecepcion
  loc_A321D0: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_A321D5: FFreeStr var_90 = "": var_94 = ""
  loc_A321DE: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_104 = "": var_108 = "": var_11C = "": var_160 = "": var_164 = ""
  loc_A321F3: FFreeVar var_D0 = "": var_C0 = "": var_E0 = "": var_100 = "": var_12C = "": var_13C = "": var_15C = "": var_188 = ""
  loc_A32208: Branch loc_A3221C
  loc_A3220B: LitStr "SELECT * FROM itemrecepcion WHERE PeriInfo = 0 "
  loc_A3220E: FLdPr Me
  loc_A32211: MemLdRfVar from_stack_1.global_60
  loc_A32214: NewIfNullPr clsrecepcion
  loc_A32217: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_A3221C: LitI2_Byte 0
  loc_A3221E: LitVarI2 var_C0, 0
  loc_A32223: Call dgdItemRecepcion_RowColChange(from_stack_1v, from_stack_2v)
  loc_A32228: FFree1Var var_C0 = ""
  loc_A3222B: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94F5C0
  'Data Table: 47B87C
  loc_94F5AC: FLdPr Me
  loc_94F5AF: VCallAd Control_ID_FiltroMsk
  loc_94F5B2: CVarAd
  loc_94F5B6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F5BB: FFree1Var var_94 = ""
  loc_94F5BE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A7297C
  'Data Table: 47B87C
  loc_A725C0: ILdRf Me
  loc_A725C3: CastAd
  loc_A725C6: FStAdFunc var_88
  loc_A725C9: FLdRfVar var_88
  loc_A725CC: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A725D1: FFree1Ad var_88
  loc_A725D4: FLdPr Me
  loc_A725D7: VCallAd Control_ID_FiltroMsk
  loc_A725DA: FStAdFunc var_88
  loc_A725DD: FLdPr var_88
  loc_A725E0: LateIdLdVar var_98 DispID_22 0
  loc_A725E7: CStrVarTmp
  loc_A725E8: FStStrNoPop var_9C
  loc_A725EB: ImpAdCallI2 Trim$()
  loc_A725F0: FStStrNoPop var_A0
  loc_A725F3: LitStr vbNullString
  loc_A725F6: NeStr
  loc_A725F8: FFreeStr var_9C = ""
  loc_A725FF: FFree1Ad var_88
  loc_A72602: FFree1Var var_98 = ""
  loc_A72605: BranchF loc_A72856
  loc_A72608: FLdRfVar var_A2
  loc_A7260B: FLdPr Me
  loc_A7260E: VCallAd Control_ID_FiltroCbo
  loc_A72611: FStAdFunc var_88
  loc_A72614: FLdPr var_88
  loc_A72617:  = Me.ListIndex
  loc_A7261C: FLdI2 var_A2
  loc_A7261F: LitI2_Byte 0
  loc_A72621: EqI2
  loc_A72622: FFree1Ad var_88
  loc_A72625: BranchF loc_A72697
  loc_A72628: LitStr "CodiOrco = "
  loc_A7262B: FLdPr Me
  loc_A7262E: VCallAd Control_ID_FiltroMsk
  loc_A72631: FStAdFunc var_88
  loc_A72634: FLdPr var_88
  loc_A72637: LateIdLdVar var_98 DispID_22 0
  loc_A7263E: CStrVarTmp
  loc_A7263F: FStStrNoPop var_9C
  loc_A72642: ConcatStr
  loc_A72643: PopTmpLdAdStr
  loc_A72647: FLdPr Me
  loc_A7264A: MemLdRfVar from_stack_1.global_56
  loc_A7264D: NewIfNullPr clsrecepcion
  loc_A72650: Call clsrecepcion.Filter(from_stack_1v)
  loc_A72655: FFreeStr var_9C = ""
  loc_A7265C: FFree1Ad var_88
  loc_A7265F: FFree1Var var_98 = ""
  loc_A72662: LitStr "Orden de Compra sea igual a: "
  loc_A72665: FLdPr Me
  loc_A72668: VCallAd Control_ID_FiltroMsk
  loc_A7266B: FStAdFunc var_88
  loc_A7266E: FLdPr var_88
  loc_A72671: LateIdLdVar var_98 DispID_22 0
  loc_A72678: CStrVarTmp
  loc_A72679: FStStrNoPop var_9C
  loc_A7267C: ConcatStr
  loc_A7267D: FStStrNoPop var_A0
  loc_A72680: FLdPr Me
  loc_A72683: MemStStrCopy
  loc_A72687: FFreeStr var_9C = ""
  loc_A7268E: FFree1Ad var_88
  loc_A72691: FFree1Var var_98 = ""
  loc_A72694: Branch loc_A72853
  loc_A72697: FLdRfVar var_A2
  loc_A7269A: FLdPr Me
  loc_A7269D: VCallAd Control_ID_FiltroCbo
  loc_A726A0: FStAdFunc var_88
  loc_A726A3: FLdPr var_88
  loc_A726A6:  = Me.ListIndex
  loc_A726AB: FLdI2 var_A2
  loc_A726AE: LitI2_Byte 1
  loc_A726B0: EqI2
  loc_A726B1: FFree1Ad var_88
  loc_A726B4: BranchF loc_A72726
  loc_A726B7: LitStr "CucuPers = "
  loc_A726BA: FLdPr Me
  loc_A726BD: VCallAd Control_ID_FiltroMsk
  loc_A726C0: FStAdFunc var_88
  loc_A726C3: FLdPr var_88
  loc_A726C6: LateIdLdVar var_98 DispID_22 0
  loc_A726CD: CStrVarTmp
  loc_A726CE: FStStrNoPop var_9C
  loc_A726D1: ConcatStr
  loc_A726D2: PopTmpLdAdStr
  loc_A726D6: FLdPr Me
  loc_A726D9: MemLdRfVar from_stack_1.global_56
  loc_A726DC: NewIfNullPr clsrecepcion
  loc_A726DF: Call clsrecepcion.Filter(from_stack_1v)
  loc_A726E4: FFreeStr var_9C = ""
  loc_A726EB: FFree1Ad var_88
  loc_A726EE: FFree1Var var_98 = ""
  loc_A726F1: LitStr "CUIT-CUIL del Proveedor sea igual a: "
  loc_A726F4: FLdPr Me
  loc_A726F7: VCallAd Control_ID_FiltroMsk
  loc_A726FA: FStAdFunc var_88
  loc_A726FD: FLdPr var_88
  loc_A72700: LateIdLdVar var_98 DispID_22 0
  loc_A72707: CStrVarTmp
  loc_A72708: FStStrNoPop var_9C
  loc_A7270B: ConcatStr
  loc_A7270C: FStStrNoPop var_A0
  loc_A7270F: FLdPr Me
  loc_A72712: MemStStrCopy
  loc_A72716: FFreeStr var_9C = ""
  loc_A7271D: FFree1Ad var_88
  loc_A72720: FFree1Var var_98 = ""
  loc_A72723: Branch loc_A72853
  loc_A72726: FLdRfVar var_A2
  loc_A72729: FLdPr Me
  loc_A7272C: VCallAd Control_ID_FiltroCbo
  loc_A7272F: FStAdFunc var_88
  loc_A72732: FLdPr var_88
  loc_A72735:  = Me.ListIndex
  loc_A7273A: FLdI2 var_A2
  loc_A7273D: LitI2_Byte 2
  loc_A7273F: EqI2
  loc_A72740: FFree1Ad var_88
  loc_A72743: BranchF loc_A727BE
  loc_A72746: LitStr "DetaProv LIKE '" & Chr(37)
  loc_A72749: FLdPr Me
  loc_A7274C: VCallAd Control_ID_FiltroMsk
  loc_A7274F: FStAdFunc var_88
  loc_A72752: FLdPr var_88
  loc_A72755: LateIdLdVar var_98 DispID_22 0
  loc_A7275C: CStrVarTmp
  loc_A7275D: FStStrNoPop var_9C
  loc_A72760: ConcatStr
  loc_A72761: FStStrNoPop var_A0
  loc_A72764: LitStr Chr(37) & "'"
  loc_A72767: ConcatStr
  loc_A72768: PopTmpLdAdStr
  loc_A7276C: FLdPr Me
  loc_A7276F: MemLdRfVar from_stack_1.global_56
  loc_A72772: NewIfNullPr clsrecepcion
  loc_A72775: Call clsrecepcion.Filter(from_stack_1v)
  loc_A7277A: FFreeStr var_9C = "": var_A0 = ""
  loc_A72783: FFree1Ad var_88
  loc_A72786: FFree1Var var_98 = ""
  loc_A72789: LitStr "nombre del Proveedor contiene: "
  loc_A7278C: FLdPr Me
  loc_A7278F: VCallAd Control_ID_FiltroMsk
  loc_A72792: FStAdFunc var_88
  loc_A72795: FLdPr var_88
  loc_A72798: LateIdLdVar var_98 DispID_22 0
  loc_A7279F: CStrVarTmp
  loc_A727A0: FStStrNoPop var_9C
  loc_A727A3: ConcatStr
  loc_A727A4: FStStrNoPop var_A0
  loc_A727A7: FLdPr Me
  loc_A727AA: MemStStrCopy
  loc_A727AE: FFreeStr var_9C = ""
  loc_A727B5: FFree1Ad var_88
  loc_A727B8: FFree1Var var_98 = ""
  loc_A727BB: Branch loc_A72853
  loc_A727BE: FLdRfVar var_A2
  loc_A727C1: FLdPr Me
  loc_A727C4: VCallAd Control_ID_FiltroCbo
  loc_A727C7: FStAdFunc var_88
  loc_A727CA: FLdPr var_88
  loc_A727CD:  = Me.ListIndex
  loc_A727D2: FLdI2 var_A2
  loc_A727D5: LitI2_Byte 3
  loc_A727D7: EqI2
  loc_A727D8: FFree1Ad var_88
  loc_A727DB: BranchF loc_A72853
  loc_A727DE: LitStr "FantProv LIKE '" & Chr(37)
  loc_A727E1: FLdPr Me
  loc_A727E4: VCallAd Control_ID_FiltroMsk
  loc_A727E7: FStAdFunc var_88
  loc_A727EA: FLdPr var_88
  loc_A727ED: LateIdLdVar var_98 DispID_22 0
  loc_A727F4: CStrVarTmp
  loc_A727F5: FStStrNoPop var_9C
  loc_A727F8: ConcatStr
  loc_A727F9: FStStrNoPop var_A0
  loc_A727FC: LitStr Chr(37) & "'"
  loc_A727FF: ConcatStr
  loc_A72800: PopTmpLdAdStr
  loc_A72804: FLdPr Me
  loc_A72807: MemLdRfVar from_stack_1.global_56
  loc_A7280A: NewIfNullPr clsrecepcion
  loc_A7280D: Call clsrecepcion.Filter(from_stack_1v)
  loc_A72812: FFreeStr var_9C = "": var_A0 = ""
  loc_A7281B: FFree1Ad var_88
  loc_A7281E: FFree1Var var_98 = ""
  loc_A72821: LitStr "fantasía del proveedor contiene: "
  loc_A72824: FLdPr Me
  loc_A72827: VCallAd Control_ID_FiltroMsk
  loc_A7282A: FStAdFunc var_88
  loc_A7282D: FLdPr var_88
  loc_A72830: LateIdLdVar var_98 DispID_22 0
  loc_A72837: CStrVarTmp
  loc_A72838: FStStrNoPop var_9C
  loc_A7283B: ConcatStr
  loc_A7283C: FStStrNoPop var_A0
  loc_A7283F: FLdPr Me
  loc_A72842: MemStStrCopy
  loc_A72846: FFreeStr var_9C = ""
  loc_A7284D: FFree1Ad var_88
  loc_A72850: FFree1Var var_98 = ""
  loc_A72853: Branch loc_A7287A
  loc_A72856: LitStr vbNullString
  loc_A72859: FStStrCopy var_9C
  loc_A7285C: FLdRfVar var_9C
  loc_A7285F: FLdPr Me
  loc_A72862: MemLdRfVar from_stack_1.global_56
  loc_A72865: NewIfNullPr clsrecepcion
  loc_A72868: Call clsrecepcion.Filter(from_stack_1v)
  loc_A7286D: FFree1Str var_9C
  loc_A72870: LitStr vbNullString
  loc_A72873: FLdPr Me
  loc_A72876: MemStStrCopy
  loc_A7287A: FLdRfVar var_AC
  loc_A7287D: FLdPr Me
  loc_A72880: MemLdRfVar from_stack_1.global_56
  loc_A72883: NewIfNullPr clsrecepcion
  loc_A72886: from_stack_1 = clsrecepcion.RecordCount
  loc_A7288B: ILdRf var_AC
  loc_A7288E: LitI4 0
  loc_A72893: GtI4
  loc_A72894: BranchF loc_A72932
  loc_A72897: FLdPr Me
  loc_A7289A: MemLdRfVar from_stack_1.global_56
  loc_A7289D: NewIfNullAd
  loc_A728A0: FStAd var_B0 
  loc_A728A4: FLdRfVar var_B0
  loc_A728A7: CVarRef
  loc_A728AC: ILdRf Me
  loc_A728AF: CastAd
  loc_A728B2: FStAdFunc var_88
  loc_A728B5: FLdRfVar var_88
  loc_A728B8: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A728BD: ILdRf var_B0
  loc_A728C0: CastAd
  loc_A728C3: FLdPr Me
  loc_A728C6: MemStAdFunc
  loc_A728CA: FFreeAd var_88 = ""
  loc_A728D1: LitI4 0
  loc_A728D6: LitI4 1
  loc_A728DB: FLdRfVar var_C4
  loc_A728DE: Redim
  loc_A728E8: FLdPr Me
  loc_A728EB: MemLdRfVar from_stack_1.global_56
  loc_A728EE: NewIfNullAd
  loc_A728F1: FStAd var_88 
  loc_A728F5: FLdRfVar var_88
  loc_A728F8: CVarRef
  loc_A728FD: ParmAry1St
  loc_A72903: FLdPr Me
  loc_A72906: VCallAd Control_ID_dgdABMS
  loc_A72909: CVarAd
  loc_A7290D: ParmAry1St
  loc_A72913: FLdRfVar var_C4
  loc_A72916: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A7291B: ILdRf var_88
  loc_A7291E: CastAd
  loc_A72921: FLdPr Me
  loc_A72924: MemStAdFunc
  loc_A72928: FLdRfVar var_C4
  loc_A7292B: Erase
  loc_A7292C: FFree1Ad var_88
  loc_A7292F: Branch loc_A72946
  loc_A72932: ILdRf Me
  loc_A72935: CastAd
  loc_A72938: FStAdFunc var_88
  loc_A7293B: FLdRfVar var_88
  loc_A7293E: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A72943: FFree1Ad var_88
  loc_A72946: FLdPr Me
  loc_A72949: VCallAd Control_ID_dgdABMS
  loc_A7294C: FStAdFunc var_B0
  loc_A7294F: LitI4 0
  loc_A72954: FStStrCopy var_9C
  loc_A72957: FLdRfVar var_9C
  loc_A7295A: FLdPr Me
  loc_A7295D: MemLdStr global_72
  loc_A72960: FLdZeroAd var_B0
  loc_A72963: FStAdFunc var_88
  loc_A72966: FLdRfVar var_88
  loc_A72969: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A7296E: FFree1Str var_9C
  loc_A72971: FFreeAd var_88 = ""
  loc_A72978: ExitProcHresult
  loc_A7297B: IDvI4
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9982A4
  'Data Table: 47B87C
  loc_998240: ILdI2 KeyAscii
  loc_998243: LitI2_Byte &H27
  loc_998245: EqI2
  loc_998246: BranchF loc_99824E
  loc_998249: LitI2_Byte 0
  loc_99824B: IStI2 KeyAscii
  loc_99824E: FLdRfVar var_88
  loc_998251: FLdPr Me
  loc_998254: MemLdRfVar from_stack_1.global_56
  loc_998257: NewIfNullPr clsrecepcion
  loc_99825A: from_stack_1 = clsrecepcion.RecordCount
  loc_99825F: ILdRf var_88
  loc_998262: LitI4 0
  loc_998267: EqI4
  loc_998268: ILdI2 KeyAscii
  loc_99826B: CI4UI1
  loc_99826C: LitI4 8
  loc_998271: NeI4
  loc_998272: AndI4
  loc_998273: FLdPr Me
  loc_998276: VCallAd Control_ID_FiltroMsk
  loc_998279: FStAdFunc var_8C
  loc_99827C: FLdPr var_8C
  loc_99827F: LateIdLdVar var_9C DispID_16 0
  loc_998286: CStrVarTmp
  loc_998287: FStStrNoPop var_A0
  loc_99828A: LitStr vbNullString
  loc_99828D: EqStr
  loc_99828F: AndI4
  loc_998290: FFree1Str var_A0
  loc_998293: FFree1Ad var_8C
  loc_998296: FFree1Var var_9C = ""
  loc_998299: BranchF loc_9982A1
  loc_99829C: LitI2_Byte 0
  loc_99829E: IStI2 KeyAscii
  loc_9982A1: ExitProcHresult
  loc_9982A2: BranchF loc_998640
End Sub

Private Sub cmdCancelar_Click() 'A1D20C
  'Data Table: 47B87C
  loc_A1D07C: LitI2_Byte 0
  loc_A1D07E: CUI1I2
  loc_A1D080: FLdPr Me
  loc_A1D083: MemStUI1
  loc_A1D087: ILdRf Me
  loc_A1D08A: CastAd
  loc_A1D08D: FStAdFunc var_88
  loc_A1D090: FLdRfVar var_88
  loc_A1D093: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A1D098: FFree1Ad var_88
  loc_A1D09B: LitI4 0
  loc_A1D0A0: LitI4 0
  loc_A1D0A5: FLdRfVar var_8C
  loc_A1D0A8: Redim
  loc_A1D0B2: FLdPr Me
  loc_A1D0B5: VCallAd Control_ID_dgdABMS
  loc_A1D0B8: CVarAd
  loc_A1D0BC: ParmAry1St
  loc_A1D0C2: FLdRfVar var_8C
  loc_A1D0C5: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A1D0CA: FLdRfVar var_8C
  loc_A1D0CD: Erase
  loc_A1D0CE: LitI4 0
  loc_A1D0D3: LitI4 0
  loc_A1D0D8: FLdRfVar var_8C
  loc_A1D0DB: Redim
  loc_A1D0E5: FLdPr Me
  loc_A1D0E8: VCallAd Control_ID_dgdItemRecepcion
  loc_A1D0EB: CVarAd
  loc_A1D0EF: ParmAry1St
  loc_A1D0F5: FLdRfVar var_8C
  loc_A1D0F8: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A1D0FD: FLdRfVar var_8C
  loc_A1D100: Erase
  loc_A1D101: FLdPr Me
  loc_A1D104: MemLdRfVar from_stack_1.global_56
  loc_A1D107: NewIfNullAd
  loc_A1D10A: FStAd var_A0 
  loc_A1D10E: FLdRfVar var_A0
  loc_A1D111: CVarRef
  loc_A1D116: ILdRf Me
  loc_A1D119: CastAd
  loc_A1D11C: FStAdFunc var_88
  loc_A1D11F: FLdRfVar var_88
  loc_A1D122: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A1D127: ILdRf var_A0
  loc_A1D12A: CastAd
  loc_A1D12D: FLdPr Me
  loc_A1D130: MemStAdFunc
  loc_A1D134: FFreeAd var_88 = ""
  loc_A1D13B: ILdRf Me
  loc_A1D13E: CastAd
  loc_A1D141: FStAdFunc var_88
  loc_A1D144: FLdRfVar var_88
  loc_A1D147: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A1D14C: FFree1Ad var_88
  loc_A1D14F: FLdPr Me
  loc_A1D152: MemLdRfVar from_stack_1.global_56
  loc_A1D155: NewIfNullPr clsrecepcion
  loc_A1D158: Call clsrecepcion.Requery()
  loc_A1D15D: FLdPr Me
  loc_A1D160: MemLdStr global_72
  loc_A1D163: LitStr vbNullString
  loc_A1D166: NeStr
  loc_A1D168: BranchF loc_A1D1C0
  loc_A1D16B: LitStr "Filtro: "
  loc_A1D16E: FLdPr Me
  loc_A1D171: MemLdStr global_72
  loc_A1D174: ConcatStr
  loc_A1D175: FStStrNoPop var_B4
  loc_A1D178: LitStr " - Registro/s: "
  loc_A1D17B: ConcatStr
  loc_A1D17C: FStStrNoPop var_BC
  loc_A1D17F: FLdRfVar var_B8
  loc_A1D182: FLdPr Me
  loc_A1D185: MemLdRfVar from_stack_1.global_56
  loc_A1D188: NewIfNullPr clsrecepcion
  loc_A1D18B: from_stack_1 = clsrecepcion.RecordCount
  loc_A1D190: ILdRf var_B8
  loc_A1D193: CStrI4
  loc_A1D195: FStStrNoPop var_C0
  loc_A1D198: ConcatStr
  loc_A1D199: CVarStr var_9C
  loc_A1D19C: PopAdLdVar
  loc_A1D19D: FLdPr Me
  loc_A1D1A0: VCallAd Control_ID_dgdABMS
  loc_A1D1A3: FStAdFunc var_88
  loc_A1D1A6: FLdPr var_88
  loc_A1D1A9: LateIdSt
  loc_A1D1AE: FFreeStr var_B4 = "": var_BC = ""
  loc_A1D1B7: FFree1Ad var_88
  loc_A1D1BA: FFree1Var var_9C = ""
  loc_A1D1BD: Branch loc_A1D1FB
  loc_A1D1C0: LitStr "Registro/s: "
  loc_A1D1C3: FLdRfVar var_B8
  loc_A1D1C6: FLdPr Me
  loc_A1D1C9: MemLdRfVar from_stack_1.global_56
  loc_A1D1CC: NewIfNullPr clsrecepcion
  loc_A1D1CF: from_stack_1 = clsrecepcion.RecordCount
  loc_A1D1D4: ILdRf var_B8
  loc_A1D1D7: CStrI4
  loc_A1D1D9: FStStrNoPop var_B4
  loc_A1D1DC: ConcatStr
  loc_A1D1DD: CVarStr var_9C
  loc_A1D1E0: PopAdLdVar
  loc_A1D1E1: FLdPr Me
  loc_A1D1E4: VCallAd Control_ID_dgdABMS
  loc_A1D1E7: FStAdFunc var_88
  loc_A1D1EA: FLdPr var_88
  loc_A1D1ED: LateIdSt
  loc_A1D1F2: FFree1Str var_B4
  loc_A1D1F5: FFree1Ad var_88
  loc_A1D1F8: FFree1Var var_9C = ""
  loc_A1D1FB: LitI2_Byte 0
  loc_A1D1FD: LitVarI2 var_9C, 0
  loc_A1D202: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A1D207: FFree1Var var_9C = ""
  loc_A1D20A: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9EC7A0
  'Data Table: 47B87C
  loc_9EC668: LitVarStr var_94, vbNullString
  loc_9EC66D: PopAdLdVar
  loc_9EC66E: FLdPr Me
  loc_9EC671: VCallAd Control_ID_FiltroMsk
  loc_9EC674: FStAdFunc var_A8
  loc_9EC677: FLdPr var_A8
  loc_9EC67A: LateIdSt
  loc_9EC67F: FFree1Ad var_A8
  loc_9EC682: FLdRfVar var_AA
  loc_9EC685: FLdPr Me
  loc_9EC688: VCallAd Control_ID_FiltroCbo
  loc_9EC68B: FStAdFunc var_A8
  loc_9EC68E: FLdPr var_A8
  loc_9EC691:  = Me.ListIndex
  loc_9EC696: FLdI2 var_AA
  loc_9EC699: FStI2 var_AC
  loc_9EC69C: FFree1Ad var_A8
  loc_9EC69F: FLdI2 var_AC
  loc_9EC6A2: LitI2_Byte 0
  loc_9EC6A4: EqI2
  loc_9EC6A5: BranchF loc_9EC6DF
  loc_9EC6A8: LitVarStr var_94, "########"
  loc_9EC6AD: PopAdLdVar
  loc_9EC6AE: FLdPr Me
  loc_9EC6B1: VCallAd Control_ID_FiltroMsk
  loc_9EC6B4: FStAdFunc var_A8
  loc_9EC6B7: FLdPr var_A8
  loc_9EC6BA: LateIdSt
  loc_9EC6BF: FFree1Ad var_A8
  loc_9EC6C2: LitStr "CodiOrco"
  loc_9EC6C5: FStStrCopy var_B0
  loc_9EC6C8: FLdRfVar var_B0
  loc_9EC6CB: FLdPr Me
  loc_9EC6CE: MemLdRfVar from_stack_1.global_56
  loc_9EC6D1: NewIfNullPr clsrecepcion
  loc_9EC6D4: Call clsrecepcion.Sort(from_stack_1v)
  loc_9EC6D9: FFree1Str var_B0
  loc_9EC6DC: Branch loc_9EC79C
  loc_9EC6DF: FLdI2 var_AC
  loc_9EC6E2: LitI2_Byte 1
  loc_9EC6E4: EqI2
  loc_9EC6E5: BranchF loc_9EC71F
  loc_9EC6E8: LitVarStr var_94, "###########"
  loc_9EC6ED: PopAdLdVar
  loc_9EC6EE: FLdPr Me
  loc_9EC6F1: VCallAd Control_ID_FiltroMsk
  loc_9EC6F4: FStAdFunc var_A8
  loc_9EC6F7: FLdPr var_A8
  loc_9EC6FA: LateIdSt
  loc_9EC6FF: FFree1Ad var_A8
  loc_9EC702: LitStr "CucuPers"
  loc_9EC705: FStStrCopy var_B0
  loc_9EC708: FLdRfVar var_B0
  loc_9EC70B: FLdPr Me
  loc_9EC70E: MemLdRfVar from_stack_1.global_56
  loc_9EC711: NewIfNullPr clsrecepcion
  loc_9EC714: Call clsrecepcion.Sort(from_stack_1v)
  loc_9EC719: FFree1Str var_B0
  loc_9EC71C: Branch loc_9EC79C
  loc_9EC71F: FLdI2 var_AC
  loc_9EC722: LitI2_Byte 2
  loc_9EC724: EqI2
  loc_9EC725: BranchF loc_9EC75F
  loc_9EC728: LitVarStr var_94, vbNullString
  loc_9EC72D: PopAdLdVar
  loc_9EC72E: FLdPr Me
  loc_9EC731: VCallAd Control_ID_FiltroMsk
  loc_9EC734: FStAdFunc var_A8
  loc_9EC737: FLdPr var_A8
  loc_9EC73A: LateIdSt
  loc_9EC73F: FFree1Ad var_A8
  loc_9EC742: LitStr "DetaProv"
  loc_9EC745: FStStrCopy var_B0
  loc_9EC748: FLdRfVar var_B0
  loc_9EC74B: FLdPr Me
  loc_9EC74E: MemLdRfVar from_stack_1.global_56
  loc_9EC751: NewIfNullPr clsrecepcion
  loc_9EC754: Call clsrecepcion.Sort(from_stack_1v)
  loc_9EC759: FFree1Str var_B0
  loc_9EC75C: Branch loc_9EC79C
  loc_9EC75F: FLdI2 var_AC
  loc_9EC762: LitI2_Byte 3
  loc_9EC764: EqI2
  loc_9EC765: BranchF loc_9EC79C
  loc_9EC768: LitVarStr var_94, vbNullString
  loc_9EC76D: PopAdLdVar
  loc_9EC76E: FLdPr Me
  loc_9EC771: VCallAd Control_ID_FiltroMsk
  loc_9EC774: FStAdFunc var_A8
  loc_9EC777: FLdPr var_A8
  loc_9EC77A: LateIdSt
  loc_9EC77F: FFree1Ad var_A8
  loc_9EC782: LitStr "FantProv"
  loc_9EC785: FStStrCopy var_B0
  loc_9EC788: FLdRfVar var_B0
  loc_9EC78B: FLdPr Me
  loc_9EC78E: MemLdRfVar from_stack_1.global_56
  loc_9EC791: NewIfNullPr clsrecepcion
  loc_9EC794: Call clsrecepcion.Sort(from_stack_1v)
  loc_9EC799: FFree1Str var_B0
  loc_9EC79C: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_0 '94F650
  'Data Table: 47B87C
  loc_94F63C: FLdPr Me
  loc_94F63F: VCallAd Control_ID_FechImpuMsk
  loc_94F642: CVarAd
  loc_94F646: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F64B: FFree1Var var_94 = ""
  loc_94F64E: ExitProcHresult
End Sub

Private Function FechImpuMsk_UnknownEvent_8(arg_C) '9D3DB4
  'Data Table: 47B87C
  loc_9D3CDC: FLdRfVar var_8A
  loc_9D3CDF: FLdPr Me
  loc_9D3CE2: VCallAd Control_ID_cmdCancelar
  loc_9D3CE5: FStAdFunc var_88
  loc_9D3CE8: FLdPr var_88
  loc_9D3CEB:  = Me.Value
  loc_9D3CF0: FLdI2 var_8A
  loc_9D3CF3: NotI4
  loc_9D3CF4: FFree1Ad var_88
  loc_9D3CF7: BranchF loc_9D3DB3
  loc_9D3CFA: FLdPr Me
  loc_9D3CFD: VCallAd Control_ID_FechImpuMsk
  loc_9D3D00: FStAdFunc var_88
  loc_9D3D03: FLdPr var_88
  loc_9D3D06: LateIdLdVar var_9C DispID_15 0
  loc_9D3D0D: PopAd
  loc_9D3D0F: FLdPr Me
  loc_9D3D12: VCallAd Control_ID_FechImpuMsk
  loc_9D3D15: FStAdFunc var_A0
  loc_9D3D18: FLdPr var_A0
  loc_9D3D1B: LateIdLdVar var_B0 DispID_11 -32767
  loc_9D3D22: PopAd
  loc_9D3D24: FLdPr Me
  loc_9D3D27: VCallAd Control_ID_FechImpuMsk
  loc_9D3D2A: FStAdFunc var_C4
  loc_9D3D2D: LitI2_Byte &HFF
  loc_9D3D2F: PopTmpLdAd2 var_8A
  loc_9D3D32: FLdZeroAd var_C4
  loc_9D3D35: FStAdFunc var_BC
  loc_9D3D38: FLdRfVar var_BC
  loc_9D3D3B: FLdRfVar var_B0
  loc_9D3D3E: CStrVarTmp
  loc_9D3D3F: FStStrNoPop var_B8
  loc_9D3D42: LitI2_Byte &HFF
  loc_9D3D44: LitI2_Byte &HFF
  loc_9D3D46: FLdRfVar var_9C
  loc_9D3D49: CStrVarTmp
  loc_9D3D4A: FStStrNoPop var_B4
  loc_9D3D4D: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9D3D52: FStStrNoPop var_C0
  loc_9D3D55: FLdPr Me
  loc_9D3D58: MemStStrCopy
  loc_9D3D5C: FFreeStr var_B4 = "": var_B8 = ""
  loc_9D3D65: FFreeAd var_88 = "": var_A0 = "": var_BC = ""
  loc_9D3D70: FFreeVar var_9C = ""
  loc_9D3D77: FLdPr Me
  loc_9D3D7A: VCallAd Control_ID_FechImpuMsk
  loc_9D3D7D: FStAdFunc var_C4
  loc_9D3D80: LitNothing
  loc_9D3D82: CastAd
  loc_9D3D85: FStAdFunc var_BC
  loc_9D3D88: FLdRfVar var_BC
  loc_9D3D8B: FLdZeroAd var_C4
  loc_9D3D8E: FStAdFuncNoPop
  loc_9D3D91: CastAd
  loc_9D3D94: FStAdFunc var_A0
  loc_9D3D97: FLdRfVar var_A0
  loc_9D3D9A: FLdPr Me
  loc_9D3D9D: MemLdRfVar from_stack_1.global_68
  loc_9D3DA0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D3DA5: IStI2 arg_C
  loc_9D3DA8: FFreeAd var_88 = "": var_A0 = "": var_BC = ""
  loc_9D3DB3: ExitProcHresult
End Function

Private Sub FechImpuMsk_KeyPress(KeyAscii As Integer) '987DD8
  'Data Table: 47B87C
  loc_987D94: ILdI2 KeyAscii
  loc_987D97: CI4UI1
  loc_987D98: LitI4 &H20
  loc_987D9D: EqI4
  loc_987D9E: BranchF loc_987DD4
  loc_987DA1: LitVar_Missing var_A4
  loc_987DA4: PopAdLdVar
  loc_987DA5: LitVarI4
  loc_987DAD: PopAdLdVar
  loc_987DAE: ImpAdLdRf MemVar_C3D9A8
  loc_987DB1: NewIfNullPr frmCalendario
  loc_987DB4: frmCalendario.Show from_stack_1, from_stack_2
  loc_987DB9: ImpAdLdRf MemVar_C3D038
  loc_987DBC: CDargRef
  loc_987DC0: FLdPr Me
  loc_987DC3: VCallAd Control_ID_FechImpuMsk
  loc_987DC6: FStAdFunc var_A8
  loc_987DC9: FLdPr var_A8
  loc_987DCC: LateIdSt
  loc_987DD1: FFree1Ad var_A8
  loc_987DD4: ExitProcHresult
  loc_987DD5: CRec2Uni MeFF
End Sub

Private Sub dgdItemRecepcion_RowColChange(LastRow As Variant, LastCol As Integer) 'A4458C
  'Data Table: 47B87C
  loc_A44330: FLdRfVar var_88
  loc_A44333: FLdPr Me
  loc_A44336: MemLdRfVar from_stack_1.global_60
  loc_A44339: NewIfNullPr clsrecepcion
  loc_A4433C: from_stack_1 = clsrecepcion.RecordCount
  loc_A44341: ILdRf var_88
  loc_A44344: LitI4 0
  loc_A44349: GtI4
  loc_A4434A: FLdRfVar var_8C
  loc_A4434D: FLdPr Me
  loc_A44350: MemLdRfVar from_stack_1.global_60
  loc_A44353: NewIfNullPr clsrecepcion
  loc_A44356: from_stack_1 = clsrecepcion.AbsolutePosition
  loc_A4435B: ILdRf var_8C
  loc_A4435E: LitI4 -3
  loc_A44363: NeI4
  loc_A44364: AndI4
  loc_A44365: BranchF loc_A4458B
  loc_A44368: FLdRfVar var_B8
  loc_A4436B: FLdRfVar var_A8
  loc_A4436E: LitVarStr var_A4, "CodiPart"
  loc_A44373: PopAdLdVar
  loc_A44374: FLdRfVar var_94
  loc_A44377: FLdRfVar var_90
  loc_A4437A: FLdPr Me
  loc_A4437D: MemLdRfVar from_stack_1.global_60
  loc_A44380: NewIfNullPr clsrecepcion
  loc_A44383: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A44388: FLdPr var_90
  loc_A4438B:  = Me.Fields
  loc_A44390: FLdPr var_94
  loc_A44393: from_stack_2 = Me.Item(from_stack_1)
  loc_A44398: FLdPr var_A8
  loc_A4439B:  = Me.Value
  loc_A443A0: FLdPr Me
  loc_A443A3: MemLdRfVar from_stack_1.global_76
  loc_A443A6: NewIfNullRf
  loc_A443AA: FLdRfVar var_B8
  loc_A443AD: CStrVarTmp
  loc_A443AE: FStStrNoPop var_BC
  loc_A443B1: ImpAdLdI2 MemVar_C3D064
  loc_A443B4: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A443B9: FFree1Str var_BC
  loc_A443BC: FFreeAd var_90 = "": var_94 = ""
  loc_A443C5: FFree1Var var_B8 = ""
  loc_A443C8: FLdRfVar var_B8
  loc_A443CB: FLdRfVar var_A8
  loc_A443CE: LitVarStr var_A4, "CodiOrga"
  loc_A443D3: PopAdLdVar
  loc_A443D4: FLdRfVar var_94
  loc_A443D7: FLdRfVar var_90
  loc_A443DA: FLdPr Me
  loc_A443DD: MemLdRfVar from_stack_1.global_60
  loc_A443E0: NewIfNullPr clsrecepcion
  loc_A443E3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A443E8: FLdPr var_90
  loc_A443EB:  = Me.Fields
  loc_A443F0: FLdPr var_94
  loc_A443F3: from_stack_2 = Me.Item(from_stack_1)
  loc_A443F8: FLdPr var_A8
  loc_A443FB:  = Me.Value
  loc_A44400: FLdPr Me
  loc_A44403: MemLdRfVar from_stack_1.global_80
  loc_A44406: NewIfNullRf
  loc_A4440A: FLdRfVar var_B8
  loc_A4440D: CStrVarTmp
  loc_A4440E: FStStrNoPop var_BC
  loc_A44411: ImpAdLdI2 MemVar_C3D064
  loc_A44414: ImpAdCallFPR4 Proc_259_20_B23018(, , )
  loc_A44419: FFree1Str var_BC
  loc_A4441C: FFreeAd var_90 = "": var_94 = ""
  loc_A44425: FFree1Var var_B8 = ""
  loc_A44428: FLdRfVar var_B8
  loc_A4442B: FLdRfVar var_A8
  loc_A4442E: LitVarStr var_A4, "CodiFifu"
  loc_A44433: PopAdLdVar
  loc_A44434: FLdRfVar var_94
  loc_A44437: FLdRfVar var_90
  loc_A4443A: FLdPr Me
  loc_A4443D: MemLdRfVar from_stack_1.global_60
  loc_A44440: NewIfNullPr clsrecepcion
  loc_A44443: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A44448: FLdPr var_90
  loc_A4444B:  = Me.Fields
  loc_A44450: FLdPr var_94
  loc_A44453: from_stack_2 = Me.Item(from_stack_1)
  loc_A44458: FLdPr var_A8
  loc_A4445B:  = Me.Value
  loc_A44460: FLdPr Me
  loc_A44463: MemLdRfVar from_stack_1.global_84
  loc_A44466: NewIfNullRf
  loc_A4446A: FLdRfVar var_B8
  loc_A4446D: CStrVarTmp
  loc_A4446E: FStStrNoPop var_BC
  loc_A44471: ImpAdLdI2 MemVar_C3D064
  loc_A44474: ImpAdCallFPR4 Proc_259_12_AE1238(, , )
  loc_A44479: FFree1Str var_BC
  loc_A4447C: FFreeAd var_90 = "": var_94 = ""
  loc_A44485: FFree1Var var_B8 = ""
  loc_A44488: LitStr "Partida: "
  loc_A4448B: FLdRfVar var_BC
  loc_A4448E: FLdPr Me
  loc_A44491: MemLdRfVar from_stack_1.global_76
  loc_A44494: NewIfNullPr tblpartida
  loc_A44497: from_stack_1v = tblpartida.DetaPartGet()
  loc_A4449C: ILdRf var_BC
  loc_A4449F: ConcatStr
  loc_A444A0: FStStrNoPop var_C0
  loc_A444A3: LitStr " - Organigrama: "
  loc_A444A6: ConcatStr
  loc_A444A7: FStStrNoPop var_C8
  loc_A444AA: FLdRfVar var_C4
  loc_A444AD: FLdPr Me
  loc_A444B0: MemLdRfVar from_stack_1.global_80
  loc_A444B3: NewIfNullPr tblorganigrama
  loc_A444B6: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_A444BB: ILdRf var_C4
  loc_A444BE: ConcatStr
  loc_A444BF: FStStrNoPop var_CC
  loc_A444C2: LitStr " - Finalidad: "
  loc_A444C5: ConcatStr
  loc_A444C6: FStStrNoPop var_D4
  loc_A444C9: FLdRfVar var_D0
  loc_A444CC: FLdPr Me
  loc_A444CF: MemLdRfVar from_stack_1.global_84
  loc_A444D2: NewIfNullPr tblfinalidad
  loc_A444D5: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_A444DA: ILdRf var_D0
  loc_A444DD: ConcatStr
  loc_A444DE: CVarStr var_B8
  loc_A444E1: PopAdLdVar
  loc_A444E2: FLdPr Me
  loc_A444E5: VCallAd Control_ID_dgdItemRecepcion
  loc_A444E8: FStAdFunc var_90
  loc_A444EB: FLdPr var_90
  loc_A444EE: LateIdSt
  loc_A444F3: FFreeStr var_BC = "": var_C0 = "": var_C8 = "": var_C4 = "": var_CC = "": var_D4 = ""
  loc_A44504: FFree1Ad var_90
  loc_A44507: FFree1Var var_B8 = ""
  loc_A4450A: FLdRfVar var_BC
  loc_A4450D: FLdPr Me
  loc_A44510: MemLdRfVar from_stack_1.global_76
  loc_A44513: NewIfNullPr tblpartida
  loc_A44516: from_stack_1v = tblpartida.DetaPartGet()
  loc_A4451B: ILdRf var_BC
  loc_A4451E: FLdPr Me
  loc_A44521: VCallAd Control_ID_DetaPartLbl
  loc_A44524: FStAdFunc var_90
  loc_A44527: FLdPr var_90
  loc_A4452A: Me.Caption = from_stack_1
  loc_A4452F: FFree1Str var_BC
  loc_A44532: FFree1Ad var_90
  loc_A44535: FLdRfVar var_BC
  loc_A44538: FLdPr Me
  loc_A4453B: MemLdRfVar from_stack_1.global_80
  loc_A4453E: NewIfNullPr tblorganigrama
  loc_A44541: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_A44546: ILdRf var_BC
  loc_A44549: FLdPr Me
  loc_A4454C: VCallAd Control_ID_DetaOrgaLbl
  loc_A4454F: FStAdFunc var_90
  loc_A44552: FLdPr var_90
  loc_A44555: Me.Caption = from_stack_1
  loc_A4455A: FFree1Str var_BC
  loc_A4455D: FFree1Ad var_90
  loc_A44560: FLdRfVar var_BC
  loc_A44563: FLdPr Me
  loc_A44566: MemLdRfVar from_stack_1.global_84
  loc_A44569: NewIfNullPr tblfinalidad
  loc_A4456C: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_A44571: ILdRf var_BC
  loc_A44574: FLdPr Me
  loc_A44577: VCallAd Control_ID_DetaFifuLbl
  loc_A4457A: FStAdFunc var_90
  loc_A4457D: FLdPr var_90
  loc_A44580: Me.Caption = from_stack_1
  loc_A44585: FFree1Str var_BC
  loc_A44588: FFree1Ad var_90
  loc_A4458B: ExitProcHresult
End Sub

Private Sub Form_Load() 'A484BC
  'Data Table: 47B87C
  loc_A4826C: LitStr "U. Ejec."
  loc_A4826F: FLdRfVar var_8C
  loc_A48272: FLdPr Me
  loc_A48275: VCallAd Control_ID_Label3
  loc_A48278: FStAdFunc var_88
  loc_A4827B: FLdPr var_88
  loc_A4827E:  = Me.Caption
  loc_A48283: ILdRf var_8C
  loc_A48286: ConcatStr
  loc_A48287: FStStrNoPop var_90
  loc_A4828A: FLdPr Me
  loc_A4828D: VCallAd Control_ID_Label3
  loc_A48290: FStAdFunc var_94
  loc_A48293: FLdPr var_94
  loc_A48296: Me.Caption = from_stack_1
  loc_A4829B: FFreeStr var_8C = ""
  loc_A482A2: FFreeAd var_88 = ""
  loc_A482A9: ImpAdLdI2 MemVar_C3D064
  loc_A482AC: LitI2 2025
  loc_A482AF: LeI2
  loc_A482B0: BranchF loc_A482D0
  loc_A482B3: LitVarI4
  loc_A482BB: PopAdLdVar
  loc_A482BC: FLdPr Me
  loc_A482BF: VCallAd Control_ID_dgdABMS
  loc_A482C2: FStAdFunc var_88
  loc_A482C5: FLdPr var_88
  loc_A482C8: LateIdSt
  loc_A482CD: FFree1Ad var_88
  loc_A482D0: LitI2_Byte 0
  loc_A482D2: CR8I2
  loc_A482D3: PopFPR4
  loc_A482D4: FLdPr Me
  loc_A482D7: Me.Left = from_stack_1s
  loc_A482DC: LitI2_Byte 0
  loc_A482DE: CR8I2
  loc_A482DF: PopFPR4
  loc_A482E0: FLdPr Me
  loc_A482E3: Me.Top = from_stack_1s
  loc_A482E8: LitStr vbNullString
  loc_A482EB: FLdPr Me
  loc_A482EE: MemStStrCopy
  loc_A482F2: LitStr "SELECT Sum(ir.CantItre * ir.ImpoItre + ir.AjusItre) TotaRece, r.*, oc.ExpeImpu ExorImpu, oc.CodiNope, oc.CodiTico, DetaTico, oc.CucuPers, DetaProv, FantProv"
  loc_A482F5: LitStr " FROM recepcion r"
  loc_A482F8: ConcatStr
  loc_A482F9: FStStrNoPop var_8C
  loc_A482FC: LitStr " INNER JOIN itemrecepcion ir ON ir.PeriInfo = r.PeriInfo AND ir.CodiOrco = r.CodiOrco AND ir.CodiRece = r.CodiRece"
  loc_A482FF: ConcatStr
  loc_A48300: FStStrNoPop var_90
  loc_A48303: LitStr " INNER JOIN ordencompra oc ON oc.PeriInfo = r.PeriInfo AND oc.CodiOrco = r.CodiOrco"
  loc_A48306: ConcatStr
  loc_A48307: FStStrNoPop var_B8
  loc_A4830A: LitStr " INNER JOIN proveedor p ON p.CucuPers = oc.CucuPers"
  loc_A4830D: ConcatStr
  loc_A4830E: FStStrNoPop var_BC
  loc_A48311: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = oc.CodiTico"
  loc_A48314: ConcatStr
  loc_A48315: FStStrNoPop var_C0
  loc_A48318: LitStr " WHERE r.PeriInfo = "
  loc_A4831B: ConcatStr
  loc_A4831C: FStStrNoPop var_C4
  loc_A4831F: ImpAdLdI2 MemVar_C3D064
  loc_A48322: CStrUI1
  loc_A48324: FStStrNoPop var_C8
  loc_A48327: ConcatStr
  loc_A48328: FStStrNoPop var_CC
  loc_A4832B: LitStr " AND r.FeanRece IS NULL"
  loc_A4832E: ConcatStr
  loc_A4832F: FStStrNoPop var_D0
  loc_A48332: LitStr " AND Year(r.FechRece) = r.PeriInfo"
  loc_A48335: ConcatStr
  loc_A48336: FStStrNoPop var_D4
  loc_A48339: LitStr " AND ir.IdImpu = 0"
  loc_A4833C: ConcatStr
  loc_A4833D: FStStrNoPop var_D8
  loc_A48340: LitStr " GROUP BY r.PeriInfo, r.CodiOrco, r.CodiRece;"
  loc_A48343: ConcatStr
  loc_A48344: FStStrNoPop var_DC
  loc_A48347: FLdPr Me
  loc_A4834A: MemLdRfVar from_stack_1.global_56
  loc_A4834D: NewIfNullPr clsrecepcion
  loc_A48350: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_A48355: FFreeStr var_8C = "": var_90 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_A48370: LitVarI2 var_A4, 0
  loc_A48375: PopAdLdVar
  loc_A48376: LitStr "Orden de Compra (número)"
  loc_A48379: FLdPr Me
  loc_A4837C: VCallAd Control_ID_FiltroCbo
  loc_A4837F: FStAdFunc var_88
  loc_A48382: FLdPr var_88
  loc_A48385: Me.AddItem from_stack_1, from_stack_2
  loc_A4838A: FFree1Ad var_88
  loc_A4838D: LitVarI2 var_A4, 1
  loc_A48392: PopAdLdVar
  loc_A48393: LitStr "Proveedor (CUIT-CUIL)"
  loc_A48396: FLdPr Me
  loc_A48399: VCallAd Control_ID_FiltroCbo
  loc_A4839C: FStAdFunc var_88
  loc_A4839F: FLdPr var_88
  loc_A483A2: Me.AddItem from_stack_1, from_stack_2
  loc_A483A7: FFree1Ad var_88
  loc_A483AA: LitVarI2 var_A4, 2
  loc_A483AF: PopAdLdVar
  loc_A483B0: LitStr "Proveedor (nombre)"
  loc_A483B3: FLdPr Me
  loc_A483B6: VCallAd Control_ID_FiltroCbo
  loc_A483B9: FStAdFunc var_88
  loc_A483BC: FLdPr var_88
  loc_A483BF: Me.AddItem from_stack_1, from_stack_2
  loc_A483C4: FFree1Ad var_88
  loc_A483C7: LitVarI2 var_A4, 3
  loc_A483CC: PopAdLdVar
  loc_A483CD: LitStr "Proveedor (fantasía)"
  loc_A483D0: FLdPr Me
  loc_A483D3: VCallAd Control_ID_FiltroCbo
  loc_A483D6: FStAdFunc var_88
  loc_A483D9: FLdPr var_88
  loc_A483DC: Me.AddItem from_stack_1, from_stack_2
  loc_A483E1: FFree1Ad var_88
  loc_A483E4: LitI2_Byte 0
  loc_A483E6: FLdPr Me
  loc_A483E9: VCallAd Control_ID_FiltroCbo
  loc_A483EC: FStAdFunc var_88
  loc_A483EF: FLdPr var_88
  loc_A483F2: Me.ListIndex = from_stack_1
  loc_A483F7: FFree1Ad var_88
  loc_A483FA: Call cmdCancelar_Click()
  loc_A483FF: LitI4 0
  loc_A48404: LitI4 1
  loc_A48409: FLdRfVar var_E0
  loc_A4840C: Redim
  loc_A48416: FLdPr Me
  loc_A48419: MemLdRfVar from_stack_1.global_56
  loc_A4841C: NewIfNullAd
  loc_A4841F: FStAd var_88 
  loc_A48423: FLdRfVar var_88
  loc_A48426: CVarRef
  loc_A4842B: ParmAry1St
  loc_A48431: FLdPr Me
  loc_A48434: VCallAd Control_ID_dgdABMS
  loc_A48437: CVarAd
  loc_A4843B: ParmAry1St
  loc_A48441: FLdRfVar var_E0
  loc_A48444: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A48449: ILdRf var_88
  loc_A4844C: CastAd
  loc_A4844F: FLdPr Me
  loc_A48452: MemStAdFunc
  loc_A48456: FLdRfVar var_E0
  loc_A48459: Erase
  loc_A4845A: FFree1Ad var_88
  loc_A4845D: LitI4 0
  loc_A48462: LitI4 1
  loc_A48467: FLdRfVar var_E0
  loc_A4846A: Redim
  loc_A48474: FLdPr Me
  loc_A48477: MemLdRfVar from_stack_1.global_60
  loc_A4847A: NewIfNullAd
  loc_A4847D: FStAd var_88 
  loc_A48481: FLdRfVar var_88
  loc_A48484: CVarRef
  loc_A48489: ParmAry1St
  loc_A4848F: FLdPr Me
  loc_A48492: VCallAd Control_ID_dgdItemRecepcion
  loc_A48495: CVarAd
  loc_A48499: ParmAry1St
  loc_A4849F: FLdRfVar var_E0
  loc_A484A2: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A484A7: ILdRf var_88
  loc_A484AA: CastAd
  loc_A484AD: FLdPr Me
  loc_A484B0: MemStAdFunc
  loc_A484B4: FLdRfVar var_E0
  loc_A484B7: Erase
  loc_A484B8: FFree1Ad var_88
  loc_A484BB: ExitProcHresult
End Sub

Private Sub Form_Activate() '997BBC
  'Data Table: 47B87C
  loc_997B60: FLdRfVar var_C2
  loc_997B63: FLdRfVar var_C0
  loc_997B66: LitVarI2 var_B8, 1
  loc_997B6B: FLdPr Me
  loc_997B6E: VCallAd Control_ID_tlbABMS
  loc_997B71: FStAdFunc var_88
  loc_997B74: FLdPr var_88
  loc_997B77: LateIdLdVar var_98 DispID_3 0
  loc_997B7E: CastAdVar Me
  loc_997B82: FStAdFunc var_BC
  loc_997B85: FLdPr var_BC
  loc_997B88:  = Me.Buttons.ControlDefault
  loc_997B8D: FLdPr var_C0
  loc_997B90:  = Me.Enabled
  loc_997B95: FLdI2 var_C2
  loc_997B98: FFreeAd var_88 = "": var_BC = ""
  loc_997BA1: FFreeVar var_98 = ""
  loc_997BA8: BranchF loc_997BB9
  loc_997BAB: FLdPr Me
  loc_997BAE: MemLdRfVar from_stack_1.global_56
  loc_997BB1: NewIfNullPr clsrecepcion
  loc_997BB4: Call clsrecepcion.Requery()
  loc_997BB9: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949958
  'Data Table: 47B87C
  loc_949944: ILdI2 KeyAscii
  loc_949947: CI4UI1
  loc_949948: LitI4 &HD
  loc_94994D: EqI4
  loc_94994E: BranchF loc_949956
  loc_949951: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949956: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '956748
  'Data Table: 47B87C
  loc_956730: ILdI2 KeyCode
  loc_956733: ILdRf Me
  loc_956736: CastAd
  loc_956739: FStAdFunc var_88
  loc_95673C: FLdRfVar var_88
  loc_95673F: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_956744: FFree1Ad var_88
  loc_956747: ExitProcHresult
End Sub

Private Function Proc_111_20_BF7F04(arg_C) 'BF7F04
  'Data Table: 47B87C
  loc_BF5F9C: OnErrorGoto loc_BF7EF5
  loc_BF5F9F: FLdRfVar var_C4
  loc_BF5FA2: FLdRfVar var_A4
  loc_BF5FA5: LitVarStr var_A0, "AjusItre"
  loc_BF5FAA: PopAdLdVar
  loc_BF5FAB: FLdRfVar var_90
  loc_BF5FAE: FLdRfVar var_8C
  loc_BF5FB1: FLdPr Me
  loc_BF5FB4: MemLdRfVar from_stack_1.global_60
  loc_BF5FB7: NewIfNullPr clsrecepcion
  loc_BF5FBA: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF5FBF: FLdPr var_8C
  loc_BF5FC2:  = Me.Fields
  loc_BF5FC7: FLdPr var_90
  loc_BF5FCA: from_stack_2 = Me.Item(from_stack_1)
  loc_BF5FCF: FLdZeroAd var_A4
  loc_BF5FD2: CVarAd
  loc_BF5FD6: ImpAdCallHresult  = CDec()
  loc_BF5FDB: FLdRfVar var_C4
  loc_BF5FDE: LitVarI2 var_D4, 0
  loc_BF5FE3: HardType
  loc_BF5FE4: LtVarBool
  loc_BF5FE6: FFreeAd var_8C = ""
  loc_BF5FED: FFreeVar var_B4 = ""
  loc_BF5FF4: BranchF loc_BF6C5B
  loc_BF5FF7: FLdRfVar var_274
  loc_BF5FFA: FLdRfVar var_A4
  loc_BF5FFD: LitVarStr var_A0, "CodiPart"
  loc_BF6002: PopAdLdVar
  loc_BF6003: FLdRfVar var_90
  loc_BF6006: FLdRfVar var_8C
  loc_BF6009: FLdPr Me
  loc_BF600C: MemLdRfVar from_stack_1.global_60
  loc_BF600F: NewIfNullPr clsrecepcion
  loc_BF6012: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6017: FLdPr var_8C
  loc_BF601A:  = Me.Fields
  loc_BF601F: FLdPr var_90
  loc_BF6022: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6027: FLdPr var_A4
  loc_BF602A:  = Me.Value
  loc_BF602F: FLdRfVar var_288
  loc_BF6032: FLdRfVar var_F0
  loc_BF6035: LitVarStr var_D4, "CodiOrga"
  loc_BF603A: PopAdLdVar
  loc_BF603B: FLdRfVar var_EC
  loc_BF603E: FLdRfVar var_E8
  loc_BF6041: FLdPr Me
  loc_BF6044: MemLdRfVar from_stack_1.global_60
  loc_BF6047: NewIfNullPr clsrecepcion
  loc_BF604A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF604F: FLdPr var_E8
  loc_BF6052:  = Me.Fields
  loc_BF6057: FLdPr var_EC
  loc_BF605A: from_stack_2 = Me.Item(from_stack_1)
  loc_BF605F: FLdPr var_F0
  loc_BF6062:  = Me.Value
  loc_BF6067: FLdRfVar var_29C
  loc_BF606A: FLdRfVar var_10C
  loc_BF606D: LitVarStr var_108, "CodiUnga"
  loc_BF6072: PopAdLdVar
  loc_BF6073: FLdRfVar var_F8
  loc_BF6076: FLdRfVar var_F4
  loc_BF6079: FLdPr Me
  loc_BF607C: MemLdRfVar from_stack_1.global_60
  loc_BF607F: NewIfNullPr clsrecepcion
  loc_BF6082: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6087: FLdPr var_F4
  loc_BF608A:  = Me.Fields
  loc_BF608F: FLdPr var_F8
  loc_BF6092: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6097: FLdPr var_10C
  loc_BF609A:  = Me.Value
  loc_BF609F: FLdRfVar var_2AC
  loc_BF60A2: FLdRfVar var_128
  loc_BF60A5: LitVarStr var_124, "CodiInsu"
  loc_BF60AA: PopAdLdVar
  loc_BF60AB: FLdRfVar var_114
  loc_BF60AE: FLdRfVar var_110
  loc_BF60B1: FLdPr Me
  loc_BF60B4: MemLdRfVar from_stack_1.global_60
  loc_BF60B7: NewIfNullPr clsrecepcion
  loc_BF60BA: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF60BF: FLdPr var_110
  loc_BF60C2:  = Me.Fields
  loc_BF60C7: FLdPr var_114
  loc_BF60CA: from_stack_2 = Me.Item(from_stack_1)
  loc_BF60CF: FLdPr var_128
  loc_BF60D2:  = Me.Value
  loc_BF60D7: FLdRfVar var_2BC
  loc_BF60DA: FLdRfVar var_144
  loc_BF60DD: LitVarStr var_140, "CodiFifu"
  loc_BF60E2: PopAdLdVar
  loc_BF60E3: FLdRfVar var_130
  loc_BF60E6: FLdRfVar var_12C
  loc_BF60E9: FLdPr Me
  loc_BF60EC: MemLdRfVar from_stack_1.global_60
  loc_BF60EF: NewIfNullPr clsrecepcion
  loc_BF60F2: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF60F7: FLdPr var_12C
  loc_BF60FA:  = Me.Fields
  loc_BF60FF: FLdPr var_130
  loc_BF6102: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6107: FLdPr var_144
  loc_BF610A:  = Me.Value
  loc_BF610F: FLdPr Me
  loc_BF6112: VCallAd Control_ID_FechImpuMsk
  loc_BF6115: FStAdFunc var_148
  loc_BF6118: FLdPr var_148
  loc_BF611B: LateIdLdVar var_B4 DispID_15 0
  loc_BF6122: PopAd
  loc_BF6124: FLdRfVar var_2D4
  loc_BF6127: FLdRfVar var_164
  loc_BF612A: LitVarStr var_160, "ExorImpu"
  loc_BF612F: PopAdLdVar
  loc_BF6130: FLdRfVar var_150
  loc_BF6133: FLdRfVar var_14C
  loc_BF6136: FLdPr Me
  loc_BF6139: MemLdRfVar from_stack_1.global_56
  loc_BF613C: NewIfNullPr clsrecepcion
  loc_BF613F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6144: FLdPr var_14C
  loc_BF6147:  = Me.Fields
  loc_BF614C: FLdPr var_150
  loc_BF614F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6154: FLdPr var_164
  loc_BF6157:  = Me.Value
  loc_BF615C: FLdRfVar var_C4
  loc_BF615F: FLdRfVar var_180
  loc_BF6162: LitVarStr var_17C, "AjusItre"
  loc_BF6167: PopAdLdVar
  loc_BF6168: FLdRfVar var_16C
  loc_BF616B: FLdRfVar var_168
  loc_BF616E: FLdPr Me
  loc_BF6171: MemLdRfVar from_stack_1.global_60
  loc_BF6174: NewIfNullPr clsrecepcion
  loc_BF6177: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF617C: FLdPr var_168
  loc_BF617F:  = Me.Fields
  loc_BF6184: FLdPr var_16C
  loc_BF6187: from_stack_2 = Me.Item(from_stack_1)
  loc_BF618C: FLdPr var_180
  loc_BF618F:  = Me.Value
  loc_BF6194: FLdRfVar var_1AC
  loc_BF6197: FLdRfVar var_19C
  loc_BF619A: LitVarStr var_198, "AjusItre"
  loc_BF619F: PopAdLdVar
  loc_BF61A0: FLdRfVar var_188
  loc_BF61A3: FLdRfVar var_184
  loc_BF61A6: FLdPr Me
  loc_BF61A9: MemLdRfVar from_stack_1.global_60
  loc_BF61AC: NewIfNullPr clsrecepcion
  loc_BF61AF: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF61B4: FLdPr var_184
  loc_BF61B7:  = Me.Fields
  loc_BF61BC: FLdPr var_188
  loc_BF61BF: from_stack_2 = Me.Item(from_stack_1)
  loc_BF61C4: FLdPr var_19C
  loc_BF61C7:  = Me.Value
  loc_BF61CC: FLdRfVar var_2E8
  loc_BF61CF: FLdRfVar var_1D8
  loc_BF61D2: LitVarStr var_1D4, "DetaItco"
  loc_BF61D7: PopAdLdVar
  loc_BF61D8: FLdRfVar var_1C4
  loc_BF61DB: FLdRfVar var_1C0
  loc_BF61DE: FLdPr Me
  loc_BF61E1: MemLdRfVar from_stack_1.global_60
  loc_BF61E4: NewIfNullPr clsrecepcion
  loc_BF61E7: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF61EC: FLdPr var_1C0
  loc_BF61EF:  = Me.Fields
  loc_BF61F4: FLdPr var_1C4
  loc_BF61F7: from_stack_2 = Me.Item(from_stack_1)
  loc_BF61FC: FLdPr var_1D8
  loc_BF61FF:  = Me.Value
  loc_BF6204: FLdRfVar var_2FC
  loc_BF6207: FLdRfVar var_1F4
  loc_BF620A: LitVarStr var_1F0, "CodiNope"
  loc_BF620F: PopAdLdVar
  loc_BF6210: FLdRfVar var_1E0
  loc_BF6213: FLdRfVar var_1DC
  loc_BF6216: FLdPr Me
  loc_BF6219: MemLdRfVar from_stack_1.global_56
  loc_BF621C: NewIfNullPr clsrecepcion
  loc_BF621F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6224: FLdPr var_1DC
  loc_BF6227:  = Me.Fields
  loc_BF622C: FLdPr var_1E0
  loc_BF622F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6234: FLdPr var_1F4
  loc_BF6237:  = Me.Value
  loc_BF623C: FLdRfVar var_30C
  loc_BF623F: FLdRfVar var_210
  loc_BF6242: LitVarStr var_20C, "CodiOrco"
  loc_BF6247: PopAdLdVar
  loc_BF6248: FLdRfVar var_1FC
  loc_BF624B: FLdRfVar var_1F8
  loc_BF624E: FLdPr Me
  loc_BF6251: MemLdRfVar from_stack_1.global_60
  loc_BF6254: NewIfNullPr clsrecepcion
  loc_BF6257: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF625C: FLdPr var_1F8
  loc_BF625F:  = Me.Fields
  loc_BF6264: FLdPr var_1FC
  loc_BF6267: from_stack_2 = Me.Item(from_stack_1)
  loc_BF626C: FLdPr var_210
  loc_BF626F:  = Me.Value
  loc_BF6274: FLdRfVar var_31C
  loc_BF6277: FLdRfVar var_22C
  loc_BF627A: LitVarStr var_228, "CodiItco"
  loc_BF627F: PopAdLdVar
  loc_BF6280: FLdRfVar var_218
  loc_BF6283: FLdRfVar var_214
  loc_BF6286: FLdPr Me
  loc_BF6289: MemLdRfVar from_stack_1.global_60
  loc_BF628C: NewIfNullPr clsrecepcion
  loc_BF628F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6294: FLdPr var_214
  loc_BF6297:  = Me.Fields
  loc_BF629C: FLdPr var_218
  loc_BF629F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF62A4: FLdPr var_22C
  loc_BF62A7:  = Me.Value
  loc_BF62AC: FLdRfVar var_32C
  loc_BF62AF: FLdRfVar var_248
  loc_BF62B2: LitVarStr var_244, "AlteItco"
  loc_BF62B7: PopAdLdVar
  loc_BF62B8: FLdRfVar var_234
  loc_BF62BB: FLdRfVar var_230
  loc_BF62BE: FLdPr Me
  loc_BF62C1: MemLdRfVar from_stack_1.global_60
  loc_BF62C4: NewIfNullPr clsrecepcion
  loc_BF62C7: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF62CC: FLdPr var_230
  loc_BF62CF:  = Me.Fields
  loc_BF62D4: FLdPr var_234
  loc_BF62D7: from_stack_2 = Me.Item(from_stack_1)
  loc_BF62DC: FLdPr var_248
  loc_BF62DF:  = Me.Value
  loc_BF62E4: FLdRfVar var_33C
  loc_BF62E7: FLdRfVar var_264
  loc_BF62EA: LitVarStr var_260, "CucuPers"
  loc_BF62EF: PopAdLdVar
  loc_BF62F0: FLdRfVar var_250
  loc_BF62F3: FLdRfVar var_24C
  loc_BF62F6: FLdPr Me
  loc_BF62F9: MemLdRfVar from_stack_1.global_56
  loc_BF62FC: NewIfNullPr clsrecepcion
  loc_BF62FF: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6304: FLdPr var_24C
  loc_BF6307:  = Me.Fields
  loc_BF630C: FLdPr var_250
  loc_BF630F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6314: FLdPr var_264
  loc_BF6317:  = Me.Value
  loc_BF631C: FLdRfVar var_344
  loc_BF631F: LitI2_Byte 0
  loc_BF6321: LitI2_Byte 0
  loc_BF6323: LitI2_Byte 0
  loc_BF6325: CI4UI1
  loc_BF6326: FLdRfVar var_33C
  loc_BF6329: CStrVarTmp
  loc_BF632A: FStStrNoPop var_340
  loc_BF632D: FLdRfVar var_32C
  loc_BF6330: CUI1Var
  loc_BF6332: FLdRfVar var_31C
  loc_BF6335: CI2Var
  loc_BF6336: FLdRfVar var_30C
  loc_BF6339: CI4Var
  loc_BF633B: FLdRfVar var_2FC
  loc_BF633E: CI4Var
  loc_BF6340: FLdRfVar var_2E8
  loc_BF6343: CStrVarTmp
  loc_BF6344: FStStrNoPop var_2EC
  loc_BF6347: FLdRfVar var_1AC
  loc_BF634A: FnAbsVar var_1BC
  loc_BF634E: CR4Var
  loc_BF634F: PopFPR8
  loc_BF6350: FLdRfVar var_C4
  loc_BF6353: FnAbsVar var_E4
  loc_BF6357: CR4Var
  loc_BF6358: PopFPR8
  loc_BF6359: LitI2_Byte 1
  loc_BF635B: CR8I2
  loc_BF635C: PopFPR8
  loc_BF635D: FLdRfVar var_2D4
  loc_BF6360: CStrVarTmp
  loc_BF6361: FStStrNoPop var_2D8
  loc_BF6364: FLdRfVar var_B4
  loc_BF6367: CStrVarTmp
  loc_BF6368: FStStrNoPop var_2C4
  loc_BF636B: FLdRfVar var_2BC
  loc_BF636E: CStrVarTmp
  loc_BF636F: FStStrNoPop var_2C0
  loc_BF6372: FLdRfVar var_2AC
  loc_BF6375: CI4Var
  loc_BF6377: FLdRfVar var_29C
  loc_BF637A: CI2Var
  loc_BF637B: FLdRfVar var_288
  loc_BF637E: CStrVarTmp
  loc_BF637F: FStStrNoPop var_28C
  loc_BF6382: FLdRfVar var_274
  loc_BF6385: CStrVarTmp
  loc_BF6386: FStStrNoPop var_278
  loc_BF6389: FLdPr Me
  loc_BF638C: MemLdRfVar from_stack_1.global_52
  loc_BF638F: NewIfNullPr clsimputacion
  loc_BF6392: from_stack_16v = clsimputacion.DesafectarDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BF6397: FFreeStr var_278 = "": var_28C = "": var_2C0 = "": var_2C4 = "": var_2D8 = "": var_2EC = ""
  loc_BF63A8: FFreeAd var_250 = "": var_A4 = "": var_F0 = "": var_10C = "": var_128 = "": var_144 = "": var_164 = "": var_1D8 = "": var_1F4 = "": var_210 = "": var_22C = "": var_248 = "": var_264 = "": var_8C = "": var_90 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_150 = "": var_168 = "": var_16C = "": var_180 = "": var_184 = "": var_188 = "": var_19C = "": var_1C0 = "": var_1C4 = "": var_1DC = "": var_1E0 = "": var_1F8 = "": var_1FC = "": var_214 = "": var_218 = "": var_230 = "": var_234 = ""
  loc_BF6401: FFreeVar var_B4 = "": var_C4 = "": var_1AC = "": var_274 = "": var_288 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2D4 = "": var_2E8 = "": var_2FC = "": var_30C = "": var_31C = "": var_32C = ""
  loc_BF6422: FLdRfVar var_274
  loc_BF6425: FLdRfVar var_A4
  loc_BF6428: LitVarStr var_A0, "CodiPart"
  loc_BF642D: PopAdLdVar
  loc_BF642E: FLdRfVar var_90
  loc_BF6431: FLdRfVar var_8C
  loc_BF6434: FLdPr Me
  loc_BF6437: MemLdRfVar from_stack_1.global_60
  loc_BF643A: NewIfNullPr clsrecepcion
  loc_BF643D: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6442: FLdPr var_8C
  loc_BF6445:  = Me.Fields
  loc_BF644A: FLdPr var_90
  loc_BF644D: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6452: FLdPr var_A4
  loc_BF6455:  = Me.Value
  loc_BF645A: FLdRfVar var_288
  loc_BF645D: FLdRfVar var_F0
  loc_BF6460: LitVarStr var_D4, "CodiOrga"
  loc_BF6465: PopAdLdVar
  loc_BF6466: FLdRfVar var_EC
  loc_BF6469: FLdRfVar var_E8
  loc_BF646C: FLdPr Me
  loc_BF646F: MemLdRfVar from_stack_1.global_60
  loc_BF6472: NewIfNullPr clsrecepcion
  loc_BF6475: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF647A: FLdPr var_E8
  loc_BF647D:  = Me.Fields
  loc_BF6482: FLdPr var_EC
  loc_BF6485: from_stack_2 = Me.Item(from_stack_1)
  loc_BF648A: FLdPr var_F0
  loc_BF648D:  = Me.Value
  loc_BF6492: FLdRfVar var_29C
  loc_BF6495: FLdRfVar var_10C
  loc_BF6498: LitVarStr var_108, "CodiUnga"
  loc_BF649D: PopAdLdVar
  loc_BF649E: FLdRfVar var_F8
  loc_BF64A1: FLdRfVar var_F4
  loc_BF64A4: FLdPr Me
  loc_BF64A7: MemLdRfVar from_stack_1.global_60
  loc_BF64AA: NewIfNullPr clsrecepcion
  loc_BF64AD: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF64B2: FLdPr var_F4
  loc_BF64B5:  = Me.Fields
  loc_BF64BA: FLdPr var_F8
  loc_BF64BD: from_stack_2 = Me.Item(from_stack_1)
  loc_BF64C2: FLdPr var_10C
  loc_BF64C5:  = Me.Value
  loc_BF64CA: FLdRfVar var_2AC
  loc_BF64CD: FLdRfVar var_128
  loc_BF64D0: LitVarStr var_124, "CodiInsu"
  loc_BF64D5: PopAdLdVar
  loc_BF64D6: FLdRfVar var_114
  loc_BF64D9: FLdRfVar var_110
  loc_BF64DC: FLdPr Me
  loc_BF64DF: MemLdRfVar from_stack_1.global_60
  loc_BF64E2: NewIfNullPr clsrecepcion
  loc_BF64E5: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF64EA: FLdPr var_110
  loc_BF64ED:  = Me.Fields
  loc_BF64F2: FLdPr var_114
  loc_BF64F5: from_stack_2 = Me.Item(from_stack_1)
  loc_BF64FA: FLdPr var_128
  loc_BF64FD:  = Me.Value
  loc_BF6502: FLdRfVar var_2BC
  loc_BF6505: FLdRfVar var_144
  loc_BF6508: LitVarStr var_140, "CodiFifu"
  loc_BF650D: PopAdLdVar
  loc_BF650E: FLdRfVar var_130
  loc_BF6511: FLdRfVar var_12C
  loc_BF6514: FLdPr Me
  loc_BF6517: MemLdRfVar from_stack_1.global_60
  loc_BF651A: NewIfNullPr clsrecepcion
  loc_BF651D: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6522: FLdPr var_12C
  loc_BF6525:  = Me.Fields
  loc_BF652A: FLdPr var_130
  loc_BF652D: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6532: FLdPr var_144
  loc_BF6535:  = Me.Value
  loc_BF653A: FLdPr Me
  loc_BF653D: VCallAd Control_ID_FechImpuMsk
  loc_BF6540: FStAdFunc var_148
  loc_BF6543: FLdPr var_148
  loc_BF6546: LateIdLdVar var_B4 DispID_15 0
  loc_BF654D: PopAd
  loc_BF654F: FLdRfVar var_2D4
  loc_BF6552: FLdRfVar var_164
  loc_BF6555: LitVarStr var_160, "ExorImpu"
  loc_BF655A: PopAdLdVar
  loc_BF655B: FLdRfVar var_150
  loc_BF655E: FLdRfVar var_14C
  loc_BF6561: FLdPr Me
  loc_BF6564: MemLdRfVar from_stack_1.global_56
  loc_BF6567: NewIfNullPr clsrecepcion
  loc_BF656A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF656F: FLdPr var_14C
  loc_BF6572:  = Me.Fields
  loc_BF6577: FLdPr var_150
  loc_BF657A: from_stack_2 = Me.Item(from_stack_1)
  loc_BF657F: FLdPr var_164
  loc_BF6582:  = Me.Value
  loc_BF6587: FLdRfVar var_C4
  loc_BF658A: FLdRfVar var_180
  loc_BF658D: LitVarStr var_17C, "AjusItre"
  loc_BF6592: PopAdLdVar
  loc_BF6593: FLdRfVar var_16C
  loc_BF6596: FLdRfVar var_168
  loc_BF6599: FLdPr Me
  loc_BF659C: MemLdRfVar from_stack_1.global_60
  loc_BF659F: NewIfNullPr clsrecepcion
  loc_BF65A2: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF65A7: FLdPr var_168
  loc_BF65AA:  = Me.Fields
  loc_BF65AF: FLdPr var_16C
  loc_BF65B2: from_stack_2 = Me.Item(from_stack_1)
  loc_BF65B7: FLdPr var_180
  loc_BF65BA:  = Me.Value
  loc_BF65BF: FLdRfVar var_1AC
  loc_BF65C2: FLdRfVar var_19C
  loc_BF65C5: LitVarStr var_198, "AjusItre"
  loc_BF65CA: PopAdLdVar
  loc_BF65CB: FLdRfVar var_188
  loc_BF65CE: FLdRfVar var_184
  loc_BF65D1: FLdPr Me
  loc_BF65D4: MemLdRfVar from_stack_1.global_60
  loc_BF65D7: NewIfNullPr clsrecepcion
  loc_BF65DA: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF65DF: FLdPr var_184
  loc_BF65E2:  = Me.Fields
  loc_BF65E7: FLdPr var_188
  loc_BF65EA: from_stack_2 = Me.Item(from_stack_1)
  loc_BF65EF: FLdPr var_19C
  loc_BF65F2:  = Me.Value
  loc_BF65F7: FLdRfVar var_2E8
  loc_BF65FA: FLdRfVar var_1D8
  loc_BF65FD: LitVarStr var_1D4, "DetaItco"
  loc_BF6602: PopAdLdVar
  loc_BF6603: FLdRfVar var_1C4
  loc_BF6606: FLdRfVar var_1C0
  loc_BF6609: FLdPr Me
  loc_BF660C: MemLdRfVar from_stack_1.global_60
  loc_BF660F: NewIfNullPr clsrecepcion
  loc_BF6612: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6617: FLdPr var_1C0
  loc_BF661A:  = Me.Fields
  loc_BF661F: FLdPr var_1C4
  loc_BF6622: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6627: FLdPr var_1D8
  loc_BF662A:  = Me.Value
  loc_BF662F: FLdRfVar var_2FC
  loc_BF6632: FLdRfVar var_1F4
  loc_BF6635: LitVarStr var_1F0, "CodiNope"
  loc_BF663A: PopAdLdVar
  loc_BF663B: FLdRfVar var_1E0
  loc_BF663E: FLdRfVar var_1DC
  loc_BF6641: FLdPr Me
  loc_BF6644: MemLdRfVar from_stack_1.global_56
  loc_BF6647: NewIfNullPr clsrecepcion
  loc_BF664A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF664F: FLdPr var_1DC
  loc_BF6652:  = Me.Fields
  loc_BF6657: FLdPr var_1E0
  loc_BF665A: from_stack_2 = Me.Item(from_stack_1)
  loc_BF665F: FLdPr var_1F4
  loc_BF6662:  = Me.Value
  loc_BF6667: FLdRfVar var_30C
  loc_BF666A: FLdRfVar var_210
  loc_BF666D: LitVarStr var_20C, "CodiItco"
  loc_BF6672: PopAdLdVar
  loc_BF6673: FLdRfVar var_1FC
  loc_BF6676: FLdRfVar var_1F8
  loc_BF6679: FLdPr Me
  loc_BF667C: MemLdRfVar from_stack_1.global_60
  loc_BF667F: NewIfNullPr clsrecepcion
  loc_BF6682: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6687: FLdPr var_1F8
  loc_BF668A:  = Me.Fields
  loc_BF668F: FLdPr var_1FC
  loc_BF6692: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6697: FLdPr var_210
  loc_BF669A:  = Me.Value
  loc_BF669F: FLdRfVar var_344
  loc_BF66A2: LitI2_Byte 0
  loc_BF66A4: LitI2_Byte 0
  loc_BF66A6: LitI4 0
  loc_BF66AB: FLdRfVar var_30C
  loc_BF66AE: CI2Var
  loc_BF66AF: FLdRfVar var_2FC
  loc_BF66B2: CI4Var
  loc_BF66B4: FLdRfVar var_2E8
  loc_BF66B7: CStrVarTmp
  loc_BF66B8: FStStrNoPop var_2EC
  loc_BF66BB: FLdRfVar var_1AC
  loc_BF66BE: FnAbsVar var_1BC
  loc_BF66C2: CR4Var
  loc_BF66C3: PopFPR8
  loc_BF66C4: FLdRfVar var_C4
  loc_BF66C7: FnAbsVar var_E4
  loc_BF66CB: CR4Var
  loc_BF66CC: PopFPR8
  loc_BF66CD: LitI2_Byte 1
  loc_BF66CF: CR8I2
  loc_BF66D0: PopFPR8
  loc_BF66D1: FLdRfVar var_2D4
  loc_BF66D4: CStrVarTmp
  loc_BF66D5: FStStrNoPop var_2D8
  loc_BF66D8: FLdRfVar var_B4
  loc_BF66DB: CStrVarTmp
  loc_BF66DC: FStStrNoPop var_2C4
  loc_BF66DF: FLdRfVar var_2BC
  loc_BF66E2: CStrVarTmp
  loc_BF66E3: FStStrNoPop var_2C0
  loc_BF66E6: FLdRfVar var_2AC
  loc_BF66E9: CI4Var
  loc_BF66EB: FLdRfVar var_29C
  loc_BF66EE: CI2Var
  loc_BF66EF: FLdRfVar var_288
  loc_BF66F2: CStrVarTmp
  loc_BF66F3: FStStrNoPop var_28C
  loc_BF66F6: FLdRfVar var_274
  loc_BF66F9: CStrVarTmp
  loc_BF66FA: FStStrNoPop var_278
  loc_BF66FD: FLdPr Me
  loc_BF6700: MemLdRfVar from_stack_1.global_52
  loc_BF6703: NewIfNullPr clsimputacion
  loc_BF6706: from_stack_16v = clsimputacion.DesafectarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BF670B: FFreeStr var_278 = "": var_28C = "": var_2C0 = "": var_2C4 = "": var_2D8 = ""
  loc_BF671A: FFreeAd var_164 = "": var_1D8 = "": var_1F4 = "": var_210 = "": var_8C = "": var_90 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_150 = "": var_168 = "": var_16C = "": var_180 = "": var_184 = "": var_188 = "": var_19C = "": var_1C0 = "": var_1C4 = "": var_1DC = "": var_1E0 = "": var_1F8 = "": var_1FC = "": var_A4 = "": var_F0 = "": var_10C = "": var_128 = ""
  loc_BF6761: FFreeVar var_B4 = "": var_C4 = "": var_1AC = "": var_274 = "": var_288 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2D4 = "": var_2E8 = "": var_2FC = ""
  loc_BF677C: FLdRfVar var_C4
  loc_BF677F: FLdRfVar var_A4
  loc_BF6782: LitVarStr var_A0, "CodiPart"
  loc_BF6787: PopAdLdVar
  loc_BF6788: FLdRfVar var_90
  loc_BF678B: FLdRfVar var_8C
  loc_BF678E: FLdPr Me
  loc_BF6791: MemLdRfVar from_stack_1.global_60
  loc_BF6794: NewIfNullPr clsrecepcion
  loc_BF6797: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF679C: FLdPr var_8C
  loc_BF679F:  = Me.Fields
  loc_BF67A4: FLdPr var_90
  loc_BF67A7: from_stack_2 = Me.Item(from_stack_1)
  loc_BF67AC: FLdPr var_A4
  loc_BF67AF:  = Me.Value
  loc_BF67B4: FLdRfVar var_E4
  loc_BF67B7: FLdRfVar var_F0
  loc_BF67BA: LitVarStr var_D4, "CodiOrga"
  loc_BF67BF: PopAdLdVar
  loc_BF67C0: FLdRfVar var_EC
  loc_BF67C3: FLdRfVar var_E8
  loc_BF67C6: FLdPr Me
  loc_BF67C9: MemLdRfVar from_stack_1.global_60
  loc_BF67CC: NewIfNullPr clsrecepcion
  loc_BF67CF: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF67D4: FLdPr var_E8
  loc_BF67D7:  = Me.Fields
  loc_BF67DC: FLdPr var_EC
  loc_BF67DF: from_stack_2 = Me.Item(from_stack_1)
  loc_BF67E4: FLdPr var_F0
  loc_BF67E7:  = Me.Value
  loc_BF67EC: FLdRfVar var_1AC
  loc_BF67EF: FLdRfVar var_10C
  loc_BF67F2: LitVarStr var_108, "CodiUnga"
  loc_BF67F7: PopAdLdVar
  loc_BF67F8: FLdRfVar var_F8
  loc_BF67FB: FLdRfVar var_F4
  loc_BF67FE: FLdPr Me
  loc_BF6801: MemLdRfVar from_stack_1.global_60
  loc_BF6804: NewIfNullPr clsrecepcion
  loc_BF6807: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF680C: FLdPr var_F4
  loc_BF680F:  = Me.Fields
  loc_BF6814: FLdPr var_F8
  loc_BF6817: from_stack_2 = Me.Item(from_stack_1)
  loc_BF681C: FLdPr var_10C
  loc_BF681F:  = Me.Value
  loc_BF6824: FLdRfVar var_1BC
  loc_BF6827: FLdRfVar var_128
  loc_BF682A: LitVarStr var_124, "CodiInsu"
  loc_BF682F: PopAdLdVar
  loc_BF6830: FLdRfVar var_114
  loc_BF6833: FLdRfVar var_110
  loc_BF6836: FLdPr Me
  loc_BF6839: MemLdRfVar from_stack_1.global_60
  loc_BF683C: NewIfNullPr clsrecepcion
  loc_BF683F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6844: FLdPr var_110
  loc_BF6847:  = Me.Fields
  loc_BF684C: FLdPr var_114
  loc_BF684F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6854: FLdPr var_128
  loc_BF6857:  = Me.Value
  loc_BF685C: FLdRfVar var_274
  loc_BF685F: FLdRfVar var_144
  loc_BF6862: LitVarStr var_140, "CodiFifu"
  loc_BF6867: PopAdLdVar
  loc_BF6868: FLdRfVar var_130
  loc_BF686B: FLdRfVar var_12C
  loc_BF686E: FLdPr Me
  loc_BF6871: MemLdRfVar from_stack_1.global_60
  loc_BF6874: NewIfNullPr clsrecepcion
  loc_BF6877: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF687C: FLdPr var_12C
  loc_BF687F:  = Me.Fields
  loc_BF6884: FLdPr var_130
  loc_BF6887: from_stack_2 = Me.Item(from_stack_1)
  loc_BF688C: FLdPr var_144
  loc_BF688F:  = Me.Value
  loc_BF6894: FLdPr Me
  loc_BF6897: VCallAd Control_ID_FechImpuMsk
  loc_BF689A: FStAdFunc var_148
  loc_BF689D: FLdPr var_148
  loc_BF68A0: LateIdLdVar var_B4 DispID_15 0
  loc_BF68A7: PopAd
  loc_BF68A9: FLdRfVar var_288
  loc_BF68AC: FLdRfVar var_164
  loc_BF68AF: LitVarStr var_160, "FefaRece"
  loc_BF68B4: PopAdLdVar
  loc_BF68B5: FLdRfVar var_150
  loc_BF68B8: FLdRfVar var_14C
  loc_BF68BB: FLdPr Me
  loc_BF68BE: MemLdRfVar from_stack_1.global_56
  loc_BF68C1: NewIfNullPr clsrecepcion
  loc_BF68C4: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF68C9: FLdPr var_14C
  loc_BF68CC:  = Me.Fields
  loc_BF68D1: FLdPr var_150
  loc_BF68D4: from_stack_2 = Me.Item(from_stack_1)
  loc_BF68D9: FLdPr var_164
  loc_BF68DC:  = Me.Value
  loc_BF68E1: FLdRfVar var_29C
  loc_BF68E4: FLdRfVar var_180
  loc_BF68E7: LitVarStr var_17C, "ExorImpu"
  loc_BF68EC: PopAdLdVar
  loc_BF68ED: FLdRfVar var_16C
  loc_BF68F0: FLdRfVar var_168
  loc_BF68F3: FLdPr Me
  loc_BF68F6: MemLdRfVar from_stack_1.global_56
  loc_BF68F9: NewIfNullPr clsrecepcion
  loc_BF68FC: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6901: FLdPr var_168
  loc_BF6904:  = Me.Fields
  loc_BF6909: FLdPr var_16C
  loc_BF690C: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6911: FLdPr var_180
  loc_BF6914:  = Me.Value
  loc_BF6919: FLdRfVar var_2AC
  loc_BF691C: FLdRfVar var_19C
  loc_BF691F: LitVarStr var_198, "ExpeImpu"
  loc_BF6924: PopAdLdVar
  loc_BF6925: FLdRfVar var_188
  loc_BF6928: FLdRfVar var_184
  loc_BF692B: FLdPr Me
  loc_BF692E: MemLdRfVar from_stack_1.global_56
  loc_BF6931: NewIfNullPr clsrecepcion
  loc_BF6934: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6939: FLdPr var_184
  loc_BF693C:  = Me.Fields
  loc_BF6941: FLdPr var_188
  loc_BF6944: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6949: FLdPr var_19C
  loc_BF694C:  = Me.Value
  loc_BF6951: FLdRfVar var_2BC
  loc_BF6954: FLdRfVar var_1D8
  loc_BF6957: LitVarStr var_1D4, "DetaItco"
  loc_BF695C: PopAdLdVar
  loc_BF695D: FLdRfVar var_1C4
  loc_BF6960: FLdRfVar var_1C0
  loc_BF6963: FLdPr Me
  loc_BF6966: MemLdRfVar from_stack_1.global_60
  loc_BF6969: NewIfNullPr clsrecepcion
  loc_BF696C: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6971: FLdPr var_1C0
  loc_BF6974:  = Me.Fields
  loc_BF6979: FLdPr var_1C4
  loc_BF697C: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6981: FLdPr var_1D8
  loc_BF6984:  = Me.Value
  loc_BF6989: FLdRfVar var_2D4
  loc_BF698C: FLdRfVar var_1F4
  loc_BF698F: LitVarStr var_1F0, "CodiNope"
  loc_BF6994: PopAdLdVar
  loc_BF6995: FLdRfVar var_1E0
  loc_BF6998: FLdRfVar var_1DC
  loc_BF699B: FLdPr Me
  loc_BF699E: MemLdRfVar from_stack_1.global_56
  loc_BF69A1: NewIfNullPr clsrecepcion
  loc_BF69A4: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF69A9: FLdPr var_1DC
  loc_BF69AC:  = Me.Fields
  loc_BF69B1: FLdPr var_1E0
  loc_BF69B4: from_stack_2 = Me.Item(from_stack_1)
  loc_BF69B9: FLdPr var_1F4
  loc_BF69BC:  = Me.Value
  loc_BF69C1: FLdRfVar var_2E8
  loc_BF69C4: FLdRfVar var_210
  loc_BF69C7: LitVarStr var_20C, "CodiOrco"
  loc_BF69CC: PopAdLdVar
  loc_BF69CD: FLdRfVar var_1FC
  loc_BF69D0: FLdRfVar var_1F8
  loc_BF69D3: FLdPr Me
  loc_BF69D6: MemLdRfVar from_stack_1.global_60
  loc_BF69D9: NewIfNullPr clsrecepcion
  loc_BF69DC: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF69E1: FLdPr var_1F8
  loc_BF69E4:  = Me.Fields
  loc_BF69E9: FLdPr var_1FC
  loc_BF69EC: from_stack_2 = Me.Item(from_stack_1)
  loc_BF69F1: FLdPr var_210
  loc_BF69F4:  = Me.Value
  loc_BF69F9: FLdRfVar var_2FC
  loc_BF69FC: FLdRfVar var_22C
  loc_BF69FF: LitVarStr var_228, "CodiRece"
  loc_BF6A04: PopAdLdVar
  loc_BF6A05: FLdRfVar var_218
  loc_BF6A08: FLdRfVar var_214
  loc_BF6A0B: FLdPr Me
  loc_BF6A0E: MemLdRfVar from_stack_1.global_60
  loc_BF6A11: NewIfNullPr clsrecepcion
  loc_BF6A14: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6A19: FLdPr var_214
  loc_BF6A1C:  = Me.Fields
  loc_BF6A21: FLdPr var_218
  loc_BF6A24: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6A29: FLdPr var_22C
  loc_BF6A2C:  = Me.Value
  loc_BF6A31: FLdRfVar var_30C
  loc_BF6A34: FLdRfVar var_248
  loc_BF6A37: LitVarStr var_244, "CodiItco"
  loc_BF6A3C: PopAdLdVar
  loc_BF6A3D: FLdRfVar var_234
  loc_BF6A40: FLdRfVar var_230
  loc_BF6A43: FLdPr Me
  loc_BF6A46: MemLdRfVar from_stack_1.global_60
  loc_BF6A49: NewIfNullPr clsrecepcion
  loc_BF6A4C: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6A51: FLdPr var_230
  loc_BF6A54:  = Me.Fields
  loc_BF6A59: FLdPr var_234
  loc_BF6A5C: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6A61: FLdPr var_248
  loc_BF6A64:  = Me.Value
  loc_BF6A69: FLdRfVar var_31C
  loc_BF6A6C: FLdRfVar var_264
  loc_BF6A6F: LitVarStr var_260, "AlteItco"
  loc_BF6A74: PopAdLdVar
  loc_BF6A75: FLdRfVar var_250
  loc_BF6A78: FLdRfVar var_24C
  loc_BF6A7B: FLdPr Me
  loc_BF6A7E: MemLdRfVar from_stack_1.global_60
  loc_BF6A81: NewIfNullPr clsrecepcion
  loc_BF6A84: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6A89: FLdPr var_24C
  loc_BF6A8C:  = Me.Fields
  loc_BF6A91: FLdPr var_250
  loc_BF6A94: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6A99: FLdPr var_264
  loc_BF6A9C:  = Me.Value
  loc_BF6AA1: FLdRfVar var_32C
  loc_BF6AA4: FLdRfVar var_360
  loc_BF6AA7: LitVarStr var_35C, "CucuPers"
  loc_BF6AAC: PopAdLdVar
  loc_BF6AAD: FLdRfVar var_34C
  loc_BF6AB0: FLdRfVar var_348
  loc_BF6AB3: FLdPr Me
  loc_BF6AB6: MemLdRfVar from_stack_1.global_56
  loc_BF6AB9: NewIfNullPr clsrecepcion
  loc_BF6ABC: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6AC1: FLdPr var_348
  loc_BF6AC4:  = Me.Fields
  loc_BF6AC9: FLdPr var_34C
  loc_BF6ACC: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6AD1: FLdPr var_360
  loc_BF6AD4:  = Me.Value
  loc_BF6AD9: FLdRfVar var_33C
  loc_BF6ADC: FLdRfVar var_37C
  loc_BF6ADF: LitVarStr var_378, "NumeFact"
  loc_BF6AE4: PopAdLdVar
  loc_BF6AE5: FLdRfVar var_368
  loc_BF6AE8: FLdRfVar var_364
  loc_BF6AEB: FLdPr Me
  loc_BF6AEE: MemLdRfVar from_stack_1.global_56
  loc_BF6AF1: NewIfNullPr clsrecepcion
  loc_BF6AF4: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6AF9: FLdPr var_364
  loc_BF6AFC:  = Me.Fields
  loc_BF6B01: FLdPr var_368
  loc_BF6B04: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6B09: FLdPr var_37C
  loc_BF6B0C:  = Me.Value
  loc_BF6B11: FLdRfVar var_344
  loc_BF6B14: LitI2_Byte 0
  loc_BF6B16: LitI2_Byte 0
  loc_BF6B18: LitI2_Byte 0
  loc_BF6B1A: LitStr vbNullString
  loc_BF6B1D: LitI4 0
  loc_BF6B22: FLdRfVar var_33C
  loc_BF6B25: CStrVarTmp
  loc_BF6B26: FStStrNoPop var_398
  loc_BF6B29: FLdRfVar var_32C
  loc_BF6B2C: CStrVarTmp
  loc_BF6B2D: FStStrNoPop var_394
  loc_BF6B30: FLdRfVar var_31C
  loc_BF6B33: CStrVarTmp
  loc_BF6B34: FStStrNoPop var_390
  loc_BF6B37: FLdRfVar var_30C
  loc_BF6B3A: CStrVarTmp
  loc_BF6B3B: FStStrNoPop var_38C
  loc_BF6B3E: FLdRfVar var_2FC
  loc_BF6B41: CI2Var
  loc_BF6B42: FLdRfVar var_2E8
  loc_BF6B45: CStrVarTmp
  loc_BF6B46: FStStrNoPop var_388
  loc_BF6B49: FLdRfVar var_2D4
  loc_BF6B4C: CStrVarTmp
  loc_BF6B4D: FStStrNoPop var_384
  loc_BF6B50: FLdRfVar var_2BC
  loc_BF6B53: CStrVarTmp
  loc_BF6B54: FStStrNoPop var_380
  loc_BF6B57: FLdR8 arg_C
  loc_BF6B5A: FLdR8 arg_C
  loc_BF6B5D: LitI2_Byte 1
  loc_BF6B5F: CR8I2
  loc_BF6B60: PopFPR8
  loc_BF6B61: FLdRfVar var_2AC
  loc_BF6B64: CStrVarTmp
  loc_BF6B65: FStStrNoPop var_340
  loc_BF6B68: FLdRfVar var_29C
  loc_BF6B6B: CStrVarTmp
  loc_BF6B6C: FStStrNoPop var_2EC
  loc_BF6B6F: FLdRfVar var_288
  loc_BF6B72: CStrVarTmp
  loc_BF6B73: FStStrNoPop var_2D8
  loc_BF6B76: FLdRfVar var_B4
  loc_BF6B79: CStrVarTmp
  loc_BF6B7A: FStStrNoPop var_2C4
  loc_BF6B7D: FLdRfVar var_274
  loc_BF6B80: CStrVarTmp
  loc_BF6B81: FStStrNoPop var_2C0
  loc_BF6B84: FLdRfVar var_1BC
  loc_BF6B87: CI4Var
  loc_BF6B89: FLdRfVar var_1AC
  loc_BF6B8C: CI2Var
  loc_BF6B8D: FLdRfVar var_E4
  loc_BF6B90: CStrVarTmp
  loc_BF6B91: FStStrNoPop var_28C
  loc_BF6B94: FLdRfVar var_C4
  loc_BF6B97: CStrVarTmp
  loc_BF6B98: FStStrNoPop var_278
  loc_BF6B9B: FLdPr Me
  loc_BF6B9E: MemLdRfVar from_stack_1.global_52
  loc_BF6BA1: NewIfNullPr clsimputacion
  loc_BF6BA4: from_stack_16v = clsimputacion.AddNewDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BF6BA9: ILdRf var_344
  loc_BF6BAC: FStR4 var_88
  loc_BF6BAF: FFreeStr var_278 = "": var_28C = "": var_2C0 = "": var_2C4 = "": var_2D8 = "": var_2EC = "": var_340 = "": var_380 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = ""
  loc_BF6BCE: FFreeAd var_34C = "": var_364 = "": var_368 = "": var_A4 = "": var_F0 = "": var_10C = "": var_128 = "": var_144 = "": var_164 = "": var_180 = "": var_19C = "": var_1D8 = "": var_1F4 = "": var_210 = "": var_22C = "": var_248 = "": var_264 = "": var_360 = "": var_37C = "": var_8C = "": var_90 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_150 = "": var_168 = "": var_16C = "": var_184 = "": var_188 = "": var_1C0 = "": var_1C4 = "": var_1DC = "": var_1E0 = "": var_1F8 = "": var_1FC = "": var_214 = "": var_218 = "": var_230 = "": var_234 = "": var_24C = "": var_250 = ""
  loc_BF6C33: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_1AC = "": var_1BC = "": var_274 = "": var_288 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2D4 = "": var_2E8 = "": var_2FC = "": var_30C = "": var_31C = "": var_32C = ""
  loc_BF6C58: Branch loc_BF7EEF
  loc_BF6C5B: FLdRfVar var_C4
  loc_BF6C5E: FLdRfVar var_A4
  loc_BF6C61: LitVarStr var_A0, "AjusItre"
  loc_BF6C66: PopAdLdVar
  loc_BF6C67: FLdRfVar var_90
  loc_BF6C6A: FLdRfVar var_8C
  loc_BF6C6D: FLdPr Me
  loc_BF6C70: MemLdRfVar from_stack_1.global_60
  loc_BF6C73: NewIfNullPr clsrecepcion
  loc_BF6C76: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6C7B: FLdPr var_8C
  loc_BF6C7E:  = Me.Fields
  loc_BF6C83: FLdPr var_90
  loc_BF6C86: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6C8B: FLdZeroAd var_A4
  loc_BF6C8E: CVarAd
  loc_BF6C92: ImpAdCallHresult  = CDec()
  loc_BF6C97: FLdRfVar var_C4
  loc_BF6C9A: LitVarI2 var_D4, 0
  loc_BF6C9F: HardType
  loc_BF6CA0: GtVarBool
  loc_BF6CA2: FFreeAd var_8C = ""
  loc_BF6CA9: FFreeVar var_B4 = ""
  loc_BF6CB0: BranchF loc_BF7990
  loc_BF6CB3: FLdRfVar var_C4
  loc_BF6CB6: FLdRfVar var_A4
  loc_BF6CB9: LitVarStr var_A0, "CodiPart"
  loc_BF6CBE: PopAdLdVar
  loc_BF6CBF: FLdRfVar var_90
  loc_BF6CC2: FLdRfVar var_8C
  loc_BF6CC5: FLdPr Me
  loc_BF6CC8: MemLdRfVar from_stack_1.global_60
  loc_BF6CCB: NewIfNullPr clsrecepcion
  loc_BF6CCE: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6CD3: FLdPr var_8C
  loc_BF6CD6:  = Me.Fields
  loc_BF6CDB: FLdPr var_90
  loc_BF6CDE: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6CE3: FLdPr var_A4
  loc_BF6CE6:  = Me.Value
  loc_BF6CEB: FLdRfVar var_E4
  loc_BF6CEE: FLdRfVar var_F0
  loc_BF6CF1: LitVarStr var_D4, "CodiOrga"
  loc_BF6CF6: PopAdLdVar
  loc_BF6CF7: FLdRfVar var_EC
  loc_BF6CFA: FLdRfVar var_E8
  loc_BF6CFD: FLdPr Me
  loc_BF6D00: MemLdRfVar from_stack_1.global_60
  loc_BF6D03: NewIfNullPr clsrecepcion
  loc_BF6D06: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6D0B: FLdPr var_E8
  loc_BF6D0E:  = Me.Fields
  loc_BF6D13: FLdPr var_EC
  loc_BF6D16: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6D1B: FLdPr var_F0
  loc_BF6D1E:  = Me.Value
  loc_BF6D23: FLdRfVar var_1AC
  loc_BF6D26: FLdRfVar var_10C
  loc_BF6D29: LitVarStr var_108, "CodiUnga"
  loc_BF6D2E: PopAdLdVar
  loc_BF6D2F: FLdRfVar var_F8
  loc_BF6D32: FLdRfVar var_F4
  loc_BF6D35: FLdPr Me
  loc_BF6D38: MemLdRfVar from_stack_1.global_60
  loc_BF6D3B: NewIfNullPr clsrecepcion
  loc_BF6D3E: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6D43: FLdPr var_F4
  loc_BF6D46:  = Me.Fields
  loc_BF6D4B: FLdPr var_F8
  loc_BF6D4E: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6D53: FLdPr var_10C
  loc_BF6D56:  = Me.Value
  loc_BF6D5B: FLdRfVar var_1BC
  loc_BF6D5E: FLdRfVar var_128
  loc_BF6D61: LitVarStr var_124, "CodiInsu"
  loc_BF6D66: PopAdLdVar
  loc_BF6D67: FLdRfVar var_114
  loc_BF6D6A: FLdRfVar var_110
  loc_BF6D6D: FLdPr Me
  loc_BF6D70: MemLdRfVar from_stack_1.global_60
  loc_BF6D73: NewIfNullPr clsrecepcion
  loc_BF6D76: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6D7B: FLdPr var_110
  loc_BF6D7E:  = Me.Fields
  loc_BF6D83: FLdPr var_114
  loc_BF6D86: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6D8B: FLdPr var_128
  loc_BF6D8E:  = Me.Value
  loc_BF6D93: FLdRfVar var_274
  loc_BF6D96: FLdRfVar var_144
  loc_BF6D99: LitVarStr var_140, "CodiFifu"
  loc_BF6D9E: PopAdLdVar
  loc_BF6D9F: FLdRfVar var_130
  loc_BF6DA2: FLdRfVar var_12C
  loc_BF6DA5: FLdPr Me
  loc_BF6DA8: MemLdRfVar from_stack_1.global_60
  loc_BF6DAB: NewIfNullPr clsrecepcion
  loc_BF6DAE: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6DB3: FLdPr var_12C
  loc_BF6DB6:  = Me.Fields
  loc_BF6DBB: FLdPr var_130
  loc_BF6DBE: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6DC3: FLdPr var_144
  loc_BF6DC6:  = Me.Value
  loc_BF6DCB: FLdPr Me
  loc_BF6DCE: VCallAd Control_ID_FechImpuMsk
  loc_BF6DD1: FStAdFunc var_148
  loc_BF6DD4: FLdPr var_148
  loc_BF6DD7: LateIdLdVar var_B4 DispID_15 0
  loc_BF6DDE: PopAd
  loc_BF6DE0: FLdRfVar var_288
  loc_BF6DE3: FLdRfVar var_164
  loc_BF6DE6: LitVarStr var_160, "ExorImpu"
  loc_BF6DEB: PopAdLdVar
  loc_BF6DEC: FLdRfVar var_150
  loc_BF6DEF: FLdRfVar var_14C
  loc_BF6DF2: FLdPr Me
  loc_BF6DF5: MemLdRfVar from_stack_1.global_56
  loc_BF6DF8: NewIfNullPr clsrecepcion
  loc_BF6DFB: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6E00: FLdPr var_14C
  loc_BF6E03:  = Me.Fields
  loc_BF6E08: FLdPr var_150
  loc_BF6E0B: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6E10: FLdPr var_164
  loc_BF6E13:  = Me.Value
  loc_BF6E18: FLdRfVar var_29C
  loc_BF6E1B: FLdRfVar var_180
  loc_BF6E1E: LitVarStr var_17C, "AjusItre"
  loc_BF6E23: PopAdLdVar
  loc_BF6E24: FLdRfVar var_16C
  loc_BF6E27: FLdRfVar var_168
  loc_BF6E2A: FLdPr Me
  loc_BF6E2D: MemLdRfVar from_stack_1.global_60
  loc_BF6E30: NewIfNullPr clsrecepcion
  loc_BF6E33: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6E38: FLdPr var_168
  loc_BF6E3B:  = Me.Fields
  loc_BF6E40: FLdPr var_16C
  loc_BF6E43: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6E48: FLdPr var_180
  loc_BF6E4B:  = Me.Value
  loc_BF6E50: FLdRfVar var_2AC
  loc_BF6E53: FLdRfVar var_19C
  loc_BF6E56: LitVarStr var_198, "AjusItre"
  loc_BF6E5B: PopAdLdVar
  loc_BF6E5C: FLdRfVar var_188
  loc_BF6E5F: FLdRfVar var_184
  loc_BF6E62: FLdPr Me
  loc_BF6E65: MemLdRfVar from_stack_1.global_60
  loc_BF6E68: NewIfNullPr clsrecepcion
  loc_BF6E6B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6E70: FLdPr var_184
  loc_BF6E73:  = Me.Fields
  loc_BF6E78: FLdPr var_188
  loc_BF6E7B: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6E80: FLdPr var_19C
  loc_BF6E83:  = Me.Value
  loc_BF6E88: FLdRfVar var_2BC
  loc_BF6E8B: FLdRfVar var_1D8
  loc_BF6E8E: LitVarStr var_1D4, "DetaItco"
  loc_BF6E93: PopAdLdVar
  loc_BF6E94: FLdRfVar var_1C4
  loc_BF6E97: FLdRfVar var_1C0
  loc_BF6E9A: FLdPr Me
  loc_BF6E9D: MemLdRfVar from_stack_1.global_60
  loc_BF6EA0: NewIfNullPr clsrecepcion
  loc_BF6EA3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6EA8: FLdPr var_1C0
  loc_BF6EAB:  = Me.Fields
  loc_BF6EB0: FLdPr var_1C4
  loc_BF6EB3: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6EB8: FLdPr var_1D8
  loc_BF6EBB:  = Me.Value
  loc_BF6EC0: FLdRfVar var_2D4
  loc_BF6EC3: FLdRfVar var_1F4
  loc_BF6EC6: LitVarStr var_1F0, "CodiNope"
  loc_BF6ECB: PopAdLdVar
  loc_BF6ECC: FLdRfVar var_1E0
  loc_BF6ECF: FLdRfVar var_1DC
  loc_BF6ED2: FLdPr Me
  loc_BF6ED5: MemLdRfVar from_stack_1.global_56
  loc_BF6ED8: NewIfNullPr clsrecepcion
  loc_BF6EDB: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6EE0: FLdPr var_1DC
  loc_BF6EE3:  = Me.Fields
  loc_BF6EE8: FLdPr var_1E0
  loc_BF6EEB: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6EF0: FLdPr var_1F4
  loc_BF6EF3:  = Me.Value
  loc_BF6EF8: FLdRfVar var_2E8
  loc_BF6EFB: FLdRfVar var_210
  loc_BF6EFE: LitVarStr var_20C, "CodiItco"
  loc_BF6F03: PopAdLdVar
  loc_BF6F04: FLdRfVar var_1FC
  loc_BF6F07: FLdRfVar var_1F8
  loc_BF6F0A: FLdPr Me
  loc_BF6F0D: MemLdRfVar from_stack_1.global_60
  loc_BF6F10: NewIfNullPr clsrecepcion
  loc_BF6F13: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF6F18: FLdPr var_1F8
  loc_BF6F1B:  = Me.Fields
  loc_BF6F20: FLdPr var_1FC
  loc_BF6F23: from_stack_2 = Me.Item(from_stack_1)
  loc_BF6F28: FLdPr var_210
  loc_BF6F2B:  = Me.Value
  loc_BF6F30: FLdRfVar var_344
  loc_BF6F33: LitI2_Byte 0
  loc_BF6F35: LitI2_Byte 0
  loc_BF6F37: LitI2_Byte 0
  loc_BF6F39: LitI4 0
  loc_BF6F3E: FLdRfVar var_2E8
  loc_BF6F41: CI2Var
  loc_BF6F42: FLdRfVar var_2D4
  loc_BF6F45: CI4Var
  loc_BF6F47: FLdRfVar var_2BC
  loc_BF6F4A: CStrVarTmp
  loc_BF6F4B: FStStrNoPop var_2EC
  loc_BF6F4E: FLdRfVar var_2AC
  loc_BF6F51: CR4Var
  loc_BF6F52: PopFPR8
  loc_BF6F53: FLdRfVar var_29C
  loc_BF6F56: CR4Var
  loc_BF6F57: PopFPR8
  loc_BF6F58: LitI2_Byte 1
  loc_BF6F5A: CR8I2
  loc_BF6F5B: PopFPR8
  loc_BF6F5C: FLdRfVar var_288
  loc_BF6F5F: CStrVarTmp
  loc_BF6F60: FStStrNoPop var_2D8
  loc_BF6F63: FLdRfVar var_B4
  loc_BF6F66: CStrVarTmp
  loc_BF6F67: FStStrNoPop var_2C4
  loc_BF6F6A: FLdRfVar var_274
  loc_BF6F6D: CStrVarTmp
  loc_BF6F6E: FStStrNoPop var_2C0
  loc_BF6F71: FLdRfVar var_1BC
  loc_BF6F74: CI4Var
  loc_BF6F76: FLdRfVar var_1AC
  loc_BF6F79: CI2Var
  loc_BF6F7A: FLdRfVar var_E4
  loc_BF6F7D: CStrVarTmp
  loc_BF6F7E: FStStrNoPop var_28C
  loc_BF6F81: FLdRfVar var_C4
  loc_BF6F84: CStrVarTmp
  loc_BF6F85: FStStrNoPop var_278
  loc_BF6F88: FLdPr Me
  loc_BF6F8B: MemLdRfVar from_stack_1.global_52
  loc_BF6F8E: NewIfNullPr clsimputacion
  loc_BF6F91: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BF6F96: FFreeStr var_278 = "": var_28C = "": var_2C0 = "": var_2C4 = "": var_2D8 = ""
  loc_BF6FA5: FFreeAd var_19C = "": var_1D8 = "": var_1F4 = "": var_210 = "": var_8C = "": var_90 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_150 = "": var_168 = "": var_16C = "": var_184 = "": var_188 = "": var_1C0 = "": var_1C4 = "": var_1DC = "": var_1E0 = "": var_1F8 = "": var_1FC = "": var_A4 = "": var_F0 = "": var_10C = "": var_128 = "": var_144 = "": var_164 = ""
  loc_BF6FEC: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_1AC = "": var_1BC = "": var_274 = "": var_288 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2D4 = ""
  loc_BF7007: FLdRfVar var_C4
  loc_BF700A: FLdRfVar var_A4
  loc_BF700D: LitVarStr var_A0, "CodiPart"
  loc_BF7012: PopAdLdVar
  loc_BF7013: FLdRfVar var_90
  loc_BF7016: FLdRfVar var_8C
  loc_BF7019: FLdPr Me
  loc_BF701C: MemLdRfVar from_stack_1.global_60
  loc_BF701F: NewIfNullPr clsrecepcion
  loc_BF7022: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7027: FLdPr var_8C
  loc_BF702A:  = Me.Fields
  loc_BF702F: FLdPr var_90
  loc_BF7032: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7037: FLdPr var_A4
  loc_BF703A:  = Me.Value
  loc_BF703F: FLdRfVar var_E4
  loc_BF7042: FLdRfVar var_F0
  loc_BF7045: LitVarStr var_D4, "CodiOrga"
  loc_BF704A: PopAdLdVar
  loc_BF704B: FLdRfVar var_EC
  loc_BF704E: FLdRfVar var_E8
  loc_BF7051: FLdPr Me
  loc_BF7054: MemLdRfVar from_stack_1.global_60
  loc_BF7057: NewIfNullPr clsrecepcion
  loc_BF705A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF705F: FLdPr var_E8
  loc_BF7062:  = Me.Fields
  loc_BF7067: FLdPr var_EC
  loc_BF706A: from_stack_2 = Me.Item(from_stack_1)
  loc_BF706F: FLdPr var_F0
  loc_BF7072:  = Me.Value
  loc_BF7077: FLdRfVar var_1AC
  loc_BF707A: FLdRfVar var_10C
  loc_BF707D: LitVarStr var_108, "CodiUnga"
  loc_BF7082: PopAdLdVar
  loc_BF7083: FLdRfVar var_F8
  loc_BF7086: FLdRfVar var_F4
  loc_BF7089: FLdPr Me
  loc_BF708C: MemLdRfVar from_stack_1.global_60
  loc_BF708F: NewIfNullPr clsrecepcion
  loc_BF7092: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7097: FLdPr var_F4
  loc_BF709A:  = Me.Fields
  loc_BF709F: FLdPr var_F8
  loc_BF70A2: from_stack_2 = Me.Item(from_stack_1)
  loc_BF70A7: FLdPr var_10C
  loc_BF70AA:  = Me.Value
  loc_BF70AF: FLdRfVar var_1BC
  loc_BF70B2: FLdRfVar var_128
  loc_BF70B5: LitVarStr var_124, "CodiInsu"
  loc_BF70BA: PopAdLdVar
  loc_BF70BB: FLdRfVar var_114
  loc_BF70BE: FLdRfVar var_110
  loc_BF70C1: FLdPr Me
  loc_BF70C4: MemLdRfVar from_stack_1.global_60
  loc_BF70C7: NewIfNullPr clsrecepcion
  loc_BF70CA: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF70CF: FLdPr var_110
  loc_BF70D2:  = Me.Fields
  loc_BF70D7: FLdPr var_114
  loc_BF70DA: from_stack_2 = Me.Item(from_stack_1)
  loc_BF70DF: FLdPr var_128
  loc_BF70E2:  = Me.Value
  loc_BF70E7: FLdRfVar var_274
  loc_BF70EA: FLdRfVar var_144
  loc_BF70ED: LitVarStr var_140, "CodiFifu"
  loc_BF70F2: PopAdLdVar
  loc_BF70F3: FLdRfVar var_130
  loc_BF70F6: FLdRfVar var_12C
  loc_BF70F9: FLdPr Me
  loc_BF70FC: MemLdRfVar from_stack_1.global_60
  loc_BF70FF: NewIfNullPr clsrecepcion
  loc_BF7102: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7107: FLdPr var_12C
  loc_BF710A:  = Me.Fields
  loc_BF710F: FLdPr var_130
  loc_BF7112: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7117: FLdPr var_144
  loc_BF711A:  = Me.Value
  loc_BF711F: FLdPr Me
  loc_BF7122: VCallAd Control_ID_FechImpuMsk
  loc_BF7125: FStAdFunc var_148
  loc_BF7128: FLdPr var_148
  loc_BF712B: LateIdLdVar var_B4 DispID_15 0
  loc_BF7132: PopAd
  loc_BF7134: FLdRfVar var_288
  loc_BF7137: FLdRfVar var_164
  loc_BF713A: LitVarStr var_160, "ExorImpu"
  loc_BF713F: PopAdLdVar
  loc_BF7140: FLdRfVar var_150
  loc_BF7143: FLdRfVar var_14C
  loc_BF7146: FLdPr Me
  loc_BF7149: MemLdRfVar from_stack_1.global_56
  loc_BF714C: NewIfNullPr clsrecepcion
  loc_BF714F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7154: FLdPr var_14C
  loc_BF7157:  = Me.Fields
  loc_BF715C: FLdPr var_150
  loc_BF715F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7164: FLdPr var_164
  loc_BF7167:  = Me.Value
  loc_BF716C: FLdRfVar var_29C
  loc_BF716F: FLdRfVar var_180
  loc_BF7172: LitVarStr var_17C, "AjusItre"
  loc_BF7177: PopAdLdVar
  loc_BF7178: FLdRfVar var_16C
  loc_BF717B: FLdRfVar var_168
  loc_BF717E: FLdPr Me
  loc_BF7181: MemLdRfVar from_stack_1.global_60
  loc_BF7184: NewIfNullPr clsrecepcion
  loc_BF7187: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF718C: FLdPr var_168
  loc_BF718F:  = Me.Fields
  loc_BF7194: FLdPr var_16C
  loc_BF7197: from_stack_2 = Me.Item(from_stack_1)
  loc_BF719C: FLdPr var_180
  loc_BF719F:  = Me.Value
  loc_BF71A4: FLdRfVar var_2AC
  loc_BF71A7: FLdRfVar var_19C
  loc_BF71AA: LitVarStr var_198, "AjusItre"
  loc_BF71AF: PopAdLdVar
  loc_BF71B0: FLdRfVar var_188
  loc_BF71B3: FLdRfVar var_184
  loc_BF71B6: FLdPr Me
  loc_BF71B9: MemLdRfVar from_stack_1.global_60
  loc_BF71BC: NewIfNullPr clsrecepcion
  loc_BF71BF: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF71C4: FLdPr var_184
  loc_BF71C7:  = Me.Fields
  loc_BF71CC: FLdPr var_188
  loc_BF71CF: from_stack_2 = Me.Item(from_stack_1)
  loc_BF71D4: FLdPr var_19C
  loc_BF71D7:  = Me.Value
  loc_BF71DC: FLdRfVar var_2BC
  loc_BF71DF: FLdRfVar var_1D8
  loc_BF71E2: LitVarStr var_1D4, "DetaItco"
  loc_BF71E7: PopAdLdVar
  loc_BF71E8: FLdRfVar var_1C4
  loc_BF71EB: FLdRfVar var_1C0
  loc_BF71EE: FLdPr Me
  loc_BF71F1: MemLdRfVar from_stack_1.global_60
  loc_BF71F4: NewIfNullPr clsrecepcion
  loc_BF71F7: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF71FC: FLdPr var_1C0
  loc_BF71FF:  = Me.Fields
  loc_BF7204: FLdPr var_1C4
  loc_BF7207: from_stack_2 = Me.Item(from_stack_1)
  loc_BF720C: FLdPr var_1D8
  loc_BF720F:  = Me.Value
  loc_BF7214: FLdRfVar var_2D4
  loc_BF7217: FLdRfVar var_1F4
  loc_BF721A: LitVarStr var_1F0, "CodiNope"
  loc_BF721F: PopAdLdVar
  loc_BF7220: FLdRfVar var_1E0
  loc_BF7223: FLdRfVar var_1DC
  loc_BF7226: FLdPr Me
  loc_BF7229: MemLdRfVar from_stack_1.global_56
  loc_BF722C: NewIfNullPr clsrecepcion
  loc_BF722F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7234: FLdPr var_1DC
  loc_BF7237:  = Me.Fields
  loc_BF723C: FLdPr var_1E0
  loc_BF723F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7244: FLdPr var_1F4
  loc_BF7247:  = Me.Value
  loc_BF724C: FLdRfVar var_2E8
  loc_BF724F: FLdRfVar var_210
  loc_BF7252: LitVarStr var_20C, "CodiOrco"
  loc_BF7257: PopAdLdVar
  loc_BF7258: FLdRfVar var_1FC
  loc_BF725B: FLdRfVar var_1F8
  loc_BF725E: FLdPr Me
  loc_BF7261: MemLdRfVar from_stack_1.global_56
  loc_BF7264: NewIfNullPr clsrecepcion
  loc_BF7267: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF726C: FLdPr var_1F8
  loc_BF726F:  = Me.Fields
  loc_BF7274: FLdPr var_1FC
  loc_BF7277: from_stack_2 = Me.Item(from_stack_1)
  loc_BF727C: FLdPr var_210
  loc_BF727F:  = Me.Value
  loc_BF7284: FLdRfVar var_2FC
  loc_BF7287: FLdRfVar var_22C
  loc_BF728A: LitVarStr var_228, "CodiItco"
  loc_BF728F: PopAdLdVar
  loc_BF7290: FLdRfVar var_218
  loc_BF7293: FLdRfVar var_214
  loc_BF7296: FLdPr Me
  loc_BF7299: MemLdRfVar from_stack_1.global_60
  loc_BF729C: NewIfNullPr clsrecepcion
  loc_BF729F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF72A4: FLdPr var_214
  loc_BF72A7:  = Me.Fields
  loc_BF72AC: FLdPr var_218
  loc_BF72AF: from_stack_2 = Me.Item(from_stack_1)
  loc_BF72B4: FLdPr var_22C
  loc_BF72B7:  = Me.Value
  loc_BF72BC: FLdRfVar var_30C
  loc_BF72BF: FLdRfVar var_248
  loc_BF72C2: LitVarStr var_244, "AlteItco"
  loc_BF72C7: PopAdLdVar
  loc_BF72C8: FLdRfVar var_234
  loc_BF72CB: FLdRfVar var_230
  loc_BF72CE: FLdPr Me
  loc_BF72D1: MemLdRfVar from_stack_1.global_60
  loc_BF72D4: NewIfNullPr clsrecepcion
  loc_BF72D7: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF72DC: FLdPr var_230
  loc_BF72DF:  = Me.Fields
  loc_BF72E4: FLdPr var_234
  loc_BF72E7: from_stack_2 = Me.Item(from_stack_1)
  loc_BF72EC: FLdPr var_248
  loc_BF72EF:  = Me.Value
  loc_BF72F4: FLdRfVar var_31C
  loc_BF72F7: FLdRfVar var_264
  loc_BF72FA: LitVarStr var_260, "CucuPers"
  loc_BF72FF: PopAdLdVar
  loc_BF7300: FLdRfVar var_250
  loc_BF7303: FLdRfVar var_24C
  loc_BF7306: FLdPr Me
  loc_BF7309: MemLdRfVar from_stack_1.global_56
  loc_BF730C: NewIfNullPr clsrecepcion
  loc_BF730F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7314: FLdPr var_24C
  loc_BF7317:  = Me.Fields
  loc_BF731C: FLdPr var_250
  loc_BF731F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7324: FLdPr var_264
  loc_BF7327:  = Me.Value
  loc_BF732C: FLdRfVar var_344
  loc_BF732F: LitI2_Byte 0
  loc_BF7331: LitI2_Byte 0
  loc_BF7333: LitI2_Byte 0
  loc_BF7335: LitI4 0
  loc_BF733A: FLdRfVar var_31C
  loc_BF733D: CStrVarTmp
  loc_BF733E: FStStrNoPop var_340
  loc_BF7341: FLdRfVar var_30C
  loc_BF7344: CUI1Var
  loc_BF7346: FLdRfVar var_2FC
  loc_BF7349: CI2Var
  loc_BF734A: FLdRfVar var_2E8
  loc_BF734D: CI4Var
  loc_BF734F: FLdRfVar var_2D4
  loc_BF7352: CI4Var
  loc_BF7354: FLdRfVar var_2BC
  loc_BF7357: CStrVarTmp
  loc_BF7358: FStStrNoPop var_2EC
  loc_BF735B: FLdRfVar var_2AC
  loc_BF735E: CR4Var
  loc_BF735F: PopFPR8
  loc_BF7360: FLdRfVar var_29C
  loc_BF7363: CR4Var
  loc_BF7364: PopFPR8
  loc_BF7365: LitI2_Byte 1
  loc_BF7367: CR8I2
  loc_BF7368: PopFPR8
  loc_BF7369: FLdRfVar var_288
  loc_BF736C: CStrVarTmp
  loc_BF736D: FStStrNoPop var_2D8
  loc_BF7370: FLdRfVar var_B4
  loc_BF7373: CStrVarTmp
  loc_BF7374: FStStrNoPop var_2C4
  loc_BF7377: FLdRfVar var_274
  loc_BF737A: CStrVarTmp
  loc_BF737B: FStStrNoPop var_2C0
  loc_BF737E: FLdRfVar var_1BC
  loc_BF7381: CI4Var
  loc_BF7383: FLdRfVar var_1AC
  loc_BF7386: CI2Var
  loc_BF7387: FLdRfVar var_E4
  loc_BF738A: CStrVarTmp
  loc_BF738B: FStStrNoPop var_28C
  loc_BF738E: FLdRfVar var_C4
  loc_BF7391: CStrVarTmp
  loc_BF7392: FStStrNoPop var_278
  loc_BF7395: FLdPr Me
  loc_BF7398: MemLdRfVar from_stack_1.global_52
  loc_BF739B: NewIfNullPr clsimputacion
  loc_BF739E: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BF73A3: FFreeStr var_278 = "": var_28C = "": var_2C0 = "": var_2C4 = "": var_2D8 = "": var_2EC = ""
  loc_BF73B4: FFreeAd var_F0 = "": var_10C = "": var_128 = "": var_144 = "": var_164 = "": var_180 = "": var_19C = "": var_1D8 = "": var_1F4 = "": var_210 = "": var_22C = "": var_248 = "": var_264 = "": var_8C = "": var_90 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_150 = "": var_168 = "": var_16C = "": var_184 = "": var_188 = "": var_1C0 = "": var_1C4 = "": var_1DC = "": var_1E0 = "": var_1F8 = "": var_1FC = "": var_214 = "": var_218 = "": var_230 = "": var_234 = "": var_24C = "": var_250 = ""
  loc_BF740D: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_1AC = "": var_1BC = "": var_274 = "": var_288 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2D4 = "": var_2E8 = "": var_2FC = "": var_30C = ""
  loc_BF742E: FLdRfVar var_C4
  loc_BF7431: FLdRfVar var_A4
  loc_BF7434: LitVarStr var_A0, "CodiPart"
  loc_BF7439: PopAdLdVar
  loc_BF743A: FLdRfVar var_90
  loc_BF743D: FLdRfVar var_8C
  loc_BF7440: FLdPr Me
  loc_BF7443: MemLdRfVar from_stack_1.global_60
  loc_BF7446: NewIfNullPr clsrecepcion
  loc_BF7449: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF744E: FLdPr var_8C
  loc_BF7451:  = Me.Fields
  loc_BF7456: FLdPr var_90
  loc_BF7459: from_stack_2 = Me.Item(from_stack_1)
  loc_BF745E: FLdPr var_A4
  loc_BF7461:  = Me.Value
  loc_BF7466: FLdRfVar var_E4
  loc_BF7469: FLdRfVar var_F0
  loc_BF746C: LitVarStr var_D4, "CodiOrga"
  loc_BF7471: PopAdLdVar
  loc_BF7472: FLdRfVar var_EC
  loc_BF7475: FLdRfVar var_E8
  loc_BF7478: FLdPr Me
  loc_BF747B: MemLdRfVar from_stack_1.global_60
  loc_BF747E: NewIfNullPr clsrecepcion
  loc_BF7481: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7486: FLdPr var_E8
  loc_BF7489:  = Me.Fields
  loc_BF748E: FLdPr var_EC
  loc_BF7491: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7496: FLdPr var_F0
  loc_BF7499:  = Me.Value
  loc_BF749E: FLdRfVar var_1AC
  loc_BF74A1: FLdRfVar var_10C
  loc_BF74A4: LitVarStr var_108, "CodiUnga"
  loc_BF74A9: PopAdLdVar
  loc_BF74AA: FLdRfVar var_F8
  loc_BF74AD: FLdRfVar var_F4
  loc_BF74B0: FLdPr Me
  loc_BF74B3: MemLdRfVar from_stack_1.global_60
  loc_BF74B6: NewIfNullPr clsrecepcion
  loc_BF74B9: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF74BE: FLdPr var_F4
  loc_BF74C1:  = Me.Fields
  loc_BF74C6: FLdPr var_F8
  loc_BF74C9: from_stack_2 = Me.Item(from_stack_1)
  loc_BF74CE: FLdPr var_10C
  loc_BF74D1:  = Me.Value
  loc_BF74D6: FLdRfVar var_1BC
  loc_BF74D9: FLdRfVar var_128
  loc_BF74DC: LitVarStr var_124, "CodiInsu"
  loc_BF74E1: PopAdLdVar
  loc_BF74E2: FLdRfVar var_114
  loc_BF74E5: FLdRfVar var_110
  loc_BF74E8: FLdPr Me
  loc_BF74EB: MemLdRfVar from_stack_1.global_60
  loc_BF74EE: NewIfNullPr clsrecepcion
  loc_BF74F1: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF74F6: FLdPr var_110
  loc_BF74F9:  = Me.Fields
  loc_BF74FE: FLdPr var_114
  loc_BF7501: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7506: FLdPr var_128
  loc_BF7509:  = Me.Value
  loc_BF750E: FLdRfVar var_274
  loc_BF7511: FLdRfVar var_144
  loc_BF7514: LitVarStr var_140, "CodiFifu"
  loc_BF7519: PopAdLdVar
  loc_BF751A: FLdRfVar var_130
  loc_BF751D: FLdRfVar var_12C
  loc_BF7520: FLdPr Me
  loc_BF7523: MemLdRfVar from_stack_1.global_60
  loc_BF7526: NewIfNullPr clsrecepcion
  loc_BF7529: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF752E: FLdPr var_12C
  loc_BF7531:  = Me.Fields
  loc_BF7536: FLdPr var_130
  loc_BF7539: from_stack_2 = Me.Item(from_stack_1)
  loc_BF753E: FLdPr var_144
  loc_BF7541:  = Me.Value
  loc_BF7546: FLdPr Me
  loc_BF7549: VCallAd Control_ID_FechImpuMsk
  loc_BF754C: FStAdFunc var_148
  loc_BF754F: FLdPr var_148
  loc_BF7552: LateIdLdVar var_B4 DispID_15 0
  loc_BF7559: PopAd
  loc_BF755B: FLdRfVar var_288
  loc_BF755E: FLdRfVar var_164
  loc_BF7561: LitVarStr var_160, "FefaRece"
  loc_BF7566: PopAdLdVar
  loc_BF7567: FLdRfVar var_150
  loc_BF756A: FLdRfVar var_14C
  loc_BF756D: FLdPr Me
  loc_BF7570: MemLdRfVar from_stack_1.global_56
  loc_BF7573: NewIfNullPr clsrecepcion
  loc_BF7576: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF757B: FLdPr var_14C
  loc_BF757E:  = Me.Fields
  loc_BF7583: FLdPr var_150
  loc_BF7586: from_stack_2 = Me.Item(from_stack_1)
  loc_BF758B: FLdPr var_164
  loc_BF758E:  = Me.Value
  loc_BF7593: FLdRfVar var_29C
  loc_BF7596: FLdRfVar var_180
  loc_BF7599: LitVarStr var_17C, "ExorImpu"
  loc_BF759E: PopAdLdVar
  loc_BF759F: FLdRfVar var_16C
  loc_BF75A2: FLdRfVar var_168
  loc_BF75A5: FLdPr Me
  loc_BF75A8: MemLdRfVar from_stack_1.global_56
  loc_BF75AB: NewIfNullPr clsrecepcion
  loc_BF75AE: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF75B3: FLdPr var_168
  loc_BF75B6:  = Me.Fields
  loc_BF75BB: FLdPr var_16C
  loc_BF75BE: from_stack_2 = Me.Item(from_stack_1)
  loc_BF75C3: FLdPr var_180
  loc_BF75C6:  = Me.Value
  loc_BF75CB: FLdRfVar var_2AC
  loc_BF75CE: FLdRfVar var_19C
  loc_BF75D1: LitVarStr var_198, "ExpeImpu"
  loc_BF75D6: PopAdLdVar
  loc_BF75D7: FLdRfVar var_188
  loc_BF75DA: FLdRfVar var_184
  loc_BF75DD: FLdPr Me
  loc_BF75E0: MemLdRfVar from_stack_1.global_56
  loc_BF75E3: NewIfNullPr clsrecepcion
  loc_BF75E6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF75EB: FLdPr var_184
  loc_BF75EE:  = Me.Fields
  loc_BF75F3: FLdPr var_188
  loc_BF75F6: from_stack_2 = Me.Item(from_stack_1)
  loc_BF75FB: FLdPr var_19C
  loc_BF75FE:  = Me.Value
  loc_BF7603: FLdRfVar var_2BC
  loc_BF7606: FLdRfVar var_1D8
  loc_BF7609: LitVarStr var_1D4, "CantItre"
  loc_BF760E: PopAdLdVar
  loc_BF760F: FLdRfVar var_1C4
  loc_BF7612: FLdRfVar var_1C0
  loc_BF7615: FLdPr Me
  loc_BF7618: MemLdRfVar from_stack_1.global_60
  loc_BF761B: NewIfNullPr clsrecepcion
  loc_BF761E: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7623: FLdPr var_1C0
  loc_BF7626:  = Me.Fields
  loc_BF762B: FLdPr var_1C4
  loc_BF762E: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7633: FLdPr var_1D8
  loc_BF7636:  = Me.Value
  loc_BF763B: FLdRfVar var_2D4
  loc_BF763E: FLdRfVar var_1F4
  loc_BF7641: LitVarStr var_1F0, "ImpoItre"
  loc_BF7646: PopAdLdVar
  loc_BF7647: FLdRfVar var_1E0
  loc_BF764A: FLdRfVar var_1DC
  loc_BF764D: FLdPr Me
  loc_BF7650: MemLdRfVar from_stack_1.global_60
  loc_BF7653: NewIfNullPr clsrecepcion
  loc_BF7656: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF765B: FLdPr var_1DC
  loc_BF765E:  = Me.Fields
  loc_BF7663: FLdPr var_1E0
  loc_BF7666: from_stack_2 = Me.Item(from_stack_1)
  loc_BF766B: FLdPr var_1F4
  loc_BF766E:  = Me.Value
  loc_BF7673: FLdRfVar var_2E8
  loc_BF7676: FLdRfVar var_210
  loc_BF7679: LitVarStr var_20C, "DetaItco"
  loc_BF767E: PopAdLdVar
  loc_BF767F: FLdRfVar var_1FC
  loc_BF7682: FLdRfVar var_1F8
  loc_BF7685: FLdPr Me
  loc_BF7688: MemLdRfVar from_stack_1.global_60
  loc_BF768B: NewIfNullPr clsrecepcion
  loc_BF768E: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7693: FLdPr var_1F8
  loc_BF7696:  = Me.Fields
  loc_BF769B: FLdPr var_1FC
  loc_BF769E: from_stack_2 = Me.Item(from_stack_1)
  loc_BF76A3: FLdPr var_210
  loc_BF76A6:  = Me.Value
  loc_BF76AB: FLdRfVar var_2FC
  loc_BF76AE: FLdRfVar var_22C
  loc_BF76B1: LitVarStr var_228, "CodiNope"
  loc_BF76B6: PopAdLdVar
  loc_BF76B7: FLdRfVar var_218
  loc_BF76BA: FLdRfVar var_214
  loc_BF76BD: FLdPr Me
  loc_BF76C0: MemLdRfVar from_stack_1.global_56
  loc_BF76C3: NewIfNullPr clsrecepcion
  loc_BF76C6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF76CB: FLdPr var_214
  loc_BF76CE:  = Me.Fields
  loc_BF76D3: FLdPr var_218
  loc_BF76D6: from_stack_2 = Me.Item(from_stack_1)
  loc_BF76DB: FLdPr var_22C
  loc_BF76DE:  = Me.Value
  loc_BF76E3: FLdRfVar var_30C
  loc_BF76E6: FLdRfVar var_248
  loc_BF76E9: LitVarStr var_244, "CodiOrco"
  loc_BF76EE: PopAdLdVar
  loc_BF76EF: FLdRfVar var_234
  loc_BF76F2: FLdRfVar var_230
  loc_BF76F5: FLdPr Me
  loc_BF76F8: MemLdRfVar from_stack_1.global_60
  loc_BF76FB: NewIfNullPr clsrecepcion
  loc_BF76FE: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7703: FLdPr var_230
  loc_BF7706:  = Me.Fields
  loc_BF770B: FLdPr var_234
  loc_BF770E: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7713: FLdPr var_248
  loc_BF7716:  = Me.Value
  loc_BF771B: FLdRfVar var_31C
  loc_BF771E: FLdRfVar var_264
  loc_BF7721: LitVarStr var_260, "CodiRece"
  loc_BF7726: PopAdLdVar
  loc_BF7727: FLdRfVar var_250
  loc_BF772A: FLdRfVar var_24C
  loc_BF772D: FLdPr Me
  loc_BF7730: MemLdRfVar from_stack_1.global_60
  loc_BF7733: NewIfNullPr clsrecepcion
  loc_BF7736: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF773B: FLdPr var_24C
  loc_BF773E:  = Me.Fields
  loc_BF7743: FLdPr var_250
  loc_BF7746: from_stack_2 = Me.Item(from_stack_1)
  loc_BF774B: FLdPr var_264
  loc_BF774E:  = Me.Value
  loc_BF7753: FLdRfVar var_32C
  loc_BF7756: FLdRfVar var_360
  loc_BF7759: LitVarStr var_35C, "CodiItco"
  loc_BF775E: PopAdLdVar
  loc_BF775F: FLdRfVar var_34C
  loc_BF7762: FLdRfVar var_348
  loc_BF7765: FLdPr Me
  loc_BF7768: MemLdRfVar from_stack_1.global_60
  loc_BF776B: NewIfNullPr clsrecepcion
  loc_BF776E: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7773: FLdPr var_348
  loc_BF7776:  = Me.Fields
  loc_BF777B: FLdPr var_34C
  loc_BF777E: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7783: FLdPr var_360
  loc_BF7786:  = Me.Value
  loc_BF778B: FLdRfVar var_33C
  loc_BF778E: FLdRfVar var_37C
  loc_BF7791: LitVarStr var_378, "AlteItco"
  loc_BF7796: PopAdLdVar
  loc_BF7797: FLdRfVar var_368
  loc_BF779A: FLdRfVar var_364
  loc_BF779D: FLdPr Me
  loc_BF77A0: MemLdRfVar from_stack_1.global_60
  loc_BF77A3: NewIfNullPr clsrecepcion
  loc_BF77A6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF77AB: FLdPr var_364
  loc_BF77AE:  = Me.Fields
  loc_BF77B3: FLdPr var_368
  loc_BF77B6: from_stack_2 = Me.Item(from_stack_1)
  loc_BF77BB: FLdPr var_37C
  loc_BF77BE:  = Me.Value
  loc_BF77C3: FLdRfVar var_3E0
  loc_BF77C6: FLdRfVar var_3B4
  loc_BF77C9: LitVarStr var_3B0, "CucuPers"
  loc_BF77CE: PopAdLdVar
  loc_BF77CF: FLdRfVar var_3A0
  loc_BF77D2: FLdRfVar var_39C
  loc_BF77D5: FLdPr Me
  loc_BF77D8: MemLdRfVar from_stack_1.global_56
  loc_BF77DB: NewIfNullPr clsrecepcion
  loc_BF77DE: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF77E3: FLdPr var_39C
  loc_BF77E6:  = Me.Fields
  loc_BF77EB: FLdPr var_3A0
  loc_BF77EE: from_stack_2 = Me.Item(from_stack_1)
  loc_BF77F3: FLdPr var_3B4
  loc_BF77F6:  = Me.Value
  loc_BF77FB: FLdRfVar var_3F0
  loc_BF77FE: FLdRfVar var_3D0
  loc_BF7801: LitVarStr var_3CC, "NumeFact"
  loc_BF7806: PopAdLdVar
  loc_BF7807: FLdRfVar var_3BC
  loc_BF780A: FLdRfVar var_3B8
  loc_BF780D: FLdPr Me
  loc_BF7810: MemLdRfVar from_stack_1.global_56
  loc_BF7813: NewIfNullPr clsrecepcion
  loc_BF7816: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF781B: FLdPr var_3B8
  loc_BF781E:  = Me.Fields
  loc_BF7823: FLdPr var_3BC
  loc_BF7826: from_stack_2 = Me.Item(from_stack_1)
  loc_BF782B: FLdPr var_3D0
  loc_BF782E:  = Me.Value
  loc_BF7833: FLdRfVar var_344
  loc_BF7836: LitI2_Byte 0
  loc_BF7838: LitI2_Byte 0
  loc_BF783A: LitI2_Byte 0
  loc_BF783C: LitStr vbNullString
  loc_BF783F: LitI4 0
  loc_BF7844: FLdRfVar var_3F0
  loc_BF7847: CStrVarTmp
  loc_BF7848: FStStrNoPop var_398
  loc_BF784B: FLdRfVar var_3E0
  loc_BF784E: CStrVarTmp
  loc_BF784F: FStStrNoPop var_394
  loc_BF7852: FLdRfVar var_33C
  loc_BF7855: CStrVarTmp
  loc_BF7856: FStStrNoPop var_390
  loc_BF7859: FLdRfVar var_32C
  loc_BF785C: CStrVarTmp
  loc_BF785D: FStStrNoPop var_38C
  loc_BF7860: FLdRfVar var_31C
  loc_BF7863: CI2Var
  loc_BF7864: FLdRfVar var_30C
  loc_BF7867: CStrVarTmp
  loc_BF7868: FStStrNoPop var_388
  loc_BF786B: FLdRfVar var_2FC
  loc_BF786E: CStrVarTmp
  loc_BF786F: FStStrNoPop var_384
  loc_BF7872: FLdRfVar var_2E8
  loc_BF7875: CStrVarTmp
  loc_BF7876: FStStrNoPop var_380
  loc_BF7879: FLdR8 arg_C
  loc_BF787C: FLdRfVar var_2D4
  loc_BF787F: CR4Var
  loc_BF7880: PopFPR8
  loc_BF7881: FLdRfVar var_2BC
  loc_BF7884: CR4Var
  loc_BF7885: PopFPR8
  loc_BF7886: FLdRfVar var_2AC
  loc_BF7889: CStrVarTmp
  loc_BF788A: FStStrNoPop var_340
  loc_BF788D: FLdRfVar var_29C
  loc_BF7890: CStrVarTmp
  loc_BF7891: FStStrNoPop var_2EC
  loc_BF7894: FLdRfVar var_288
  loc_BF7897: CStrVarTmp
  loc_BF7898: FStStrNoPop var_2D8
  loc_BF789B: FLdRfVar var_B4
  loc_BF789E: CStrVarTmp
  loc_BF789F: FStStrNoPop var_2C4
  loc_BF78A2: FLdRfVar var_274
  loc_BF78A5: CStrVarTmp
  loc_BF78A6: FStStrNoPop var_2C0
  loc_BF78A9: FLdRfVar var_1BC
  loc_BF78AC: CI4Var
  loc_BF78AE: FLdRfVar var_1AC
  loc_BF78B1: CI2Var
  loc_BF78B2: FLdRfVar var_E4
  loc_BF78B5: CStrVarTmp
  loc_BF78B6: FStStrNoPop var_28C
  loc_BF78B9: FLdRfVar var_C4
  loc_BF78BC: CStrVarTmp
  loc_BF78BD: FStStrNoPop var_278
  loc_BF78C0: FLdPr Me
  loc_BF78C3: MemLdRfVar from_stack_1.global_52
  loc_BF78C6: NewIfNullPr clsimputacion
  loc_BF78C9: from_stack_16v = clsimputacion.AddNewDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BF78CE: ILdRf var_344
  loc_BF78D1: FStR4 var_88
  loc_BF78D4: FFreeStr var_278 = "": var_28C = "": var_2C0 = "": var_2C4 = "": var_2D8 = "": var_2EC = "": var_340 = "": var_380 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = ""
  loc_BF78F3: FFreeAd var_34C = "": var_364 = "": var_368 = "": var_39C = "": var_3A0 = "": var_3B8 = "": var_3BC = "": var_A4 = "": var_F0 = "": var_10C = "": var_128 = "": var_144 = "": var_164 = "": var_180 = "": var_19C = "": var_1D8 = "": var_1F4 = "": var_210 = "": var_22C = "": var_248 = "": var_264 = "": var_360 = "": var_37C = "": var_3B4 = "": var_3D0 = "": var_8C = "": var_90 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_150 = "": var_168 = "": var_16C = "": var_184 = "": var_188 = "": var_1C0 = "": var_1C4 = "": var_1DC = "": var_1E0 = "": var_1F8 = "": var_1FC = "": var_214 = "": var_218 = "": var_230 = "": var_234 = "": var_24C = "": var_250 = ""
  loc_BF7964: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_1AC = "": var_1BC = "": var_274 = "": var_288 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2D4 = "": var_2E8 = "": var_2FC = "": var_30C = "": var_31C = "": var_32C = "": var_33C = "": var_3E0 = ""
  loc_BF798D: Branch loc_BF7EEF
  loc_BF7990: FLdRfVar var_C4
  loc_BF7993: FLdRfVar var_A4
  loc_BF7996: LitVarStr var_A0, "CodiPart"
  loc_BF799B: PopAdLdVar
  loc_BF799C: FLdRfVar var_90
  loc_BF799F: FLdRfVar var_8C
  loc_BF79A2: FLdPr Me
  loc_BF79A5: MemLdRfVar from_stack_1.global_60
  loc_BF79A8: NewIfNullPr clsrecepcion
  loc_BF79AB: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF79B0: FLdPr var_8C
  loc_BF79B3:  = Me.Fields
  loc_BF79B8: FLdPr var_90
  loc_BF79BB: from_stack_2 = Me.Item(from_stack_1)
  loc_BF79C0: FLdPr var_A4
  loc_BF79C3:  = Me.Value
  loc_BF79C8: FLdRfVar var_E4
  loc_BF79CB: FLdRfVar var_F0
  loc_BF79CE: LitVarStr var_D4, "CodiOrga"
  loc_BF79D3: PopAdLdVar
  loc_BF79D4: FLdRfVar var_EC
  loc_BF79D7: FLdRfVar var_E8
  loc_BF79DA: FLdPr Me
  loc_BF79DD: MemLdRfVar from_stack_1.global_60
  loc_BF79E0: NewIfNullPr clsrecepcion
  loc_BF79E3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF79E8: FLdPr var_E8
  loc_BF79EB:  = Me.Fields
  loc_BF79F0: FLdPr var_EC
  loc_BF79F3: from_stack_2 = Me.Item(from_stack_1)
  loc_BF79F8: FLdPr var_F0
  loc_BF79FB:  = Me.Value
  loc_BF7A00: FLdRfVar var_1AC
  loc_BF7A03: FLdRfVar var_10C
  loc_BF7A06: LitVarStr var_108, "CodiUnga"
  loc_BF7A0B: PopAdLdVar
  loc_BF7A0C: FLdRfVar var_F8
  loc_BF7A0F: FLdRfVar var_F4
  loc_BF7A12: FLdPr Me
  loc_BF7A15: MemLdRfVar from_stack_1.global_60
  loc_BF7A18: NewIfNullPr clsrecepcion
  loc_BF7A1B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7A20: FLdPr var_F4
  loc_BF7A23:  = Me.Fields
  loc_BF7A28: FLdPr var_F8
  loc_BF7A2B: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7A30: FLdPr var_10C
  loc_BF7A33:  = Me.Value
  loc_BF7A38: FLdRfVar var_1BC
  loc_BF7A3B: FLdRfVar var_128
  loc_BF7A3E: LitVarStr var_124, "CodiInsu"
  loc_BF7A43: PopAdLdVar
  loc_BF7A44: FLdRfVar var_114
  loc_BF7A47: FLdRfVar var_110
  loc_BF7A4A: FLdPr Me
  loc_BF7A4D: MemLdRfVar from_stack_1.global_60
  loc_BF7A50: NewIfNullPr clsrecepcion
  loc_BF7A53: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7A58: FLdPr var_110
  loc_BF7A5B:  = Me.Fields
  loc_BF7A60: FLdPr var_114
  loc_BF7A63: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7A68: FLdPr var_128
  loc_BF7A6B:  = Me.Value
  loc_BF7A70: FLdRfVar var_274
  loc_BF7A73: FLdRfVar var_144
  loc_BF7A76: LitVarStr var_140, "CodiFifu"
  loc_BF7A7B: PopAdLdVar
  loc_BF7A7C: FLdRfVar var_130
  loc_BF7A7F: FLdRfVar var_12C
  loc_BF7A82: FLdPr Me
  loc_BF7A85: MemLdRfVar from_stack_1.global_60
  loc_BF7A88: NewIfNullPr clsrecepcion
  loc_BF7A8B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7A90: FLdPr var_12C
  loc_BF7A93:  = Me.Fields
  loc_BF7A98: FLdPr var_130
  loc_BF7A9B: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7AA0: FLdPr var_144
  loc_BF7AA3:  = Me.Value
  loc_BF7AA8: FLdPr Me
  loc_BF7AAB: VCallAd Control_ID_FechImpuMsk
  loc_BF7AAE: FStAdFunc var_148
  loc_BF7AB1: FLdPr var_148
  loc_BF7AB4: LateIdLdVar var_B4 DispID_15 0
  loc_BF7ABB: PopAd
  loc_BF7ABD: FLdRfVar var_288
  loc_BF7AC0: FLdRfVar var_164
  loc_BF7AC3: LitVarStr var_160, "FefaRece"
  loc_BF7AC8: PopAdLdVar
  loc_BF7AC9: FLdRfVar var_150
  loc_BF7ACC: FLdRfVar var_14C
  loc_BF7ACF: FLdPr Me
  loc_BF7AD2: MemLdRfVar from_stack_1.global_56
  loc_BF7AD5: NewIfNullPr clsrecepcion
  loc_BF7AD8: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7ADD: FLdPr var_14C
  loc_BF7AE0:  = Me.Fields
  loc_BF7AE5: FLdPr var_150
  loc_BF7AE8: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7AED: FLdPr var_164
  loc_BF7AF0:  = Me.Value
  loc_BF7AF5: FLdRfVar var_29C
  loc_BF7AF8: FLdRfVar var_180
  loc_BF7AFB: LitVarStr var_17C, "ExorImpu"
  loc_BF7B00: PopAdLdVar
  loc_BF7B01: FLdRfVar var_16C
  loc_BF7B04: FLdRfVar var_168
  loc_BF7B07: FLdPr Me
  loc_BF7B0A: MemLdRfVar from_stack_1.global_56
  loc_BF7B0D: NewIfNullPr clsrecepcion
  loc_BF7B10: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7B15: FLdPr var_168
  loc_BF7B18:  = Me.Fields
  loc_BF7B1D: FLdPr var_16C
  loc_BF7B20: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7B25: FLdPr var_180
  loc_BF7B28:  = Me.Value
  loc_BF7B2D: FLdRfVar var_2AC
  loc_BF7B30: FLdRfVar var_19C
  loc_BF7B33: LitVarStr var_198, "ExpeImpu"
  loc_BF7B38: PopAdLdVar
  loc_BF7B39: FLdRfVar var_188
  loc_BF7B3C: FLdRfVar var_184
  loc_BF7B3F: FLdPr Me
  loc_BF7B42: MemLdRfVar from_stack_1.global_56
  loc_BF7B45: NewIfNullPr clsrecepcion
  loc_BF7B48: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7B4D: FLdPr var_184
  loc_BF7B50:  = Me.Fields
  loc_BF7B55: FLdPr var_188
  loc_BF7B58: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7B5D: FLdPr var_19C
  loc_BF7B60:  = Me.Value
  loc_BF7B65: FLdRfVar var_2BC
  loc_BF7B68: FLdRfVar var_1D8
  loc_BF7B6B: LitVarStr var_1D4, "CantItre"
  loc_BF7B70: PopAdLdVar
  loc_BF7B71: FLdRfVar var_1C4
  loc_BF7B74: FLdRfVar var_1C0
  loc_BF7B77: FLdPr Me
  loc_BF7B7A: MemLdRfVar from_stack_1.global_60
  loc_BF7B7D: NewIfNullPr clsrecepcion
  loc_BF7B80: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7B85: FLdPr var_1C0
  loc_BF7B88:  = Me.Fields
  loc_BF7B8D: FLdPr var_1C4
  loc_BF7B90: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7B95: FLdPr var_1D8
  loc_BF7B98:  = Me.Value
  loc_BF7B9D: FLdRfVar var_2D4
  loc_BF7BA0: FLdRfVar var_1F4
  loc_BF7BA3: LitVarStr var_1F0, "ImpoItre"
  loc_BF7BA8: PopAdLdVar
  loc_BF7BA9: FLdRfVar var_1E0
  loc_BF7BAC: FLdRfVar var_1DC
  loc_BF7BAF: FLdPr Me
  loc_BF7BB2: MemLdRfVar from_stack_1.global_60
  loc_BF7BB5: NewIfNullPr clsrecepcion
  loc_BF7BB8: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7BBD: FLdPr var_1DC
  loc_BF7BC0:  = Me.Fields
  loc_BF7BC5: FLdPr var_1E0
  loc_BF7BC8: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7BCD: FLdPr var_1F4
  loc_BF7BD0:  = Me.Value
  loc_BF7BD5: FLdRfVar var_2E8
  loc_BF7BD8: FLdRfVar var_210
  loc_BF7BDB: LitVarStr var_20C, "DetaItco"
  loc_BF7BE0: PopAdLdVar
  loc_BF7BE1: FLdRfVar var_1FC
  loc_BF7BE4: FLdRfVar var_1F8
  loc_BF7BE7: FLdPr Me
  loc_BF7BEA: MemLdRfVar from_stack_1.global_60
  loc_BF7BED: NewIfNullPr clsrecepcion
  loc_BF7BF0: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7BF5: FLdPr var_1F8
  loc_BF7BF8:  = Me.Fields
  loc_BF7BFD: FLdPr var_1FC
  loc_BF7C00: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7C05: FLdPr var_210
  loc_BF7C08:  = Me.Value
  loc_BF7C0D: FLdRfVar var_2FC
  loc_BF7C10: FLdRfVar var_22C
  loc_BF7C13: LitVarStr var_228, "CodiNope"
  loc_BF7C18: PopAdLdVar
  loc_BF7C19: FLdRfVar var_218
  loc_BF7C1C: FLdRfVar var_214
  loc_BF7C1F: FLdPr Me
  loc_BF7C22: MemLdRfVar from_stack_1.global_56
  loc_BF7C25: NewIfNullPr clsrecepcion
  loc_BF7C28: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7C2D: FLdPr var_214
  loc_BF7C30:  = Me.Fields
  loc_BF7C35: FLdPr var_218
  loc_BF7C38: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7C3D: FLdPr var_22C
  loc_BF7C40:  = Me.Value
  loc_BF7C45: FLdRfVar var_30C
  loc_BF7C48: FLdRfVar var_248
  loc_BF7C4B: LitVarStr var_244, "CodiOrco"
  loc_BF7C50: PopAdLdVar
  loc_BF7C51: FLdRfVar var_234
  loc_BF7C54: FLdRfVar var_230
  loc_BF7C57: FLdPr Me
  loc_BF7C5A: MemLdRfVar from_stack_1.global_60
  loc_BF7C5D: NewIfNullPr clsrecepcion
  loc_BF7C60: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7C65: FLdPr var_230
  loc_BF7C68:  = Me.Fields
  loc_BF7C6D: FLdPr var_234
  loc_BF7C70: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7C75: FLdPr var_248
  loc_BF7C78:  = Me.Value
  loc_BF7C7D: FLdRfVar var_31C
  loc_BF7C80: FLdRfVar var_264
  loc_BF7C83: LitVarStr var_260, "CodiRece"
  loc_BF7C88: PopAdLdVar
  loc_BF7C89: FLdRfVar var_250
  loc_BF7C8C: FLdRfVar var_24C
  loc_BF7C8F: FLdPr Me
  loc_BF7C92: MemLdRfVar from_stack_1.global_60
  loc_BF7C95: NewIfNullPr clsrecepcion
  loc_BF7C98: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7C9D: FLdPr var_24C
  loc_BF7CA0:  = Me.Fields
  loc_BF7CA5: FLdPr var_250
  loc_BF7CA8: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7CAD: FLdPr var_264
  loc_BF7CB0:  = Me.Value
  loc_BF7CB5: FLdRfVar var_32C
  loc_BF7CB8: FLdRfVar var_360
  loc_BF7CBB: LitVarStr var_35C, "CodiItco"
  loc_BF7CC0: PopAdLdVar
  loc_BF7CC1: FLdRfVar var_34C
  loc_BF7CC4: FLdRfVar var_348
  loc_BF7CC7: FLdPr Me
  loc_BF7CCA: MemLdRfVar from_stack_1.global_60
  loc_BF7CCD: NewIfNullPr clsrecepcion
  loc_BF7CD0: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7CD5: FLdPr var_348
  loc_BF7CD8:  = Me.Fields
  loc_BF7CDD: FLdPr var_34C
  loc_BF7CE0: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7CE5: FLdPr var_360
  loc_BF7CE8:  = Me.Value
  loc_BF7CED: FLdRfVar var_33C
  loc_BF7CF0: FLdRfVar var_37C
  loc_BF7CF3: LitVarStr var_378, "AlteItco"
  loc_BF7CF8: PopAdLdVar
  loc_BF7CF9: FLdRfVar var_368
  loc_BF7CFC: FLdRfVar var_364
  loc_BF7CFF: FLdPr Me
  loc_BF7D02: MemLdRfVar from_stack_1.global_60
  loc_BF7D05: NewIfNullPr clsrecepcion
  loc_BF7D08: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7D0D: FLdPr var_364
  loc_BF7D10:  = Me.Fields
  loc_BF7D15: FLdPr var_368
  loc_BF7D18: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7D1D: FLdPr var_37C
  loc_BF7D20:  = Me.Value
  loc_BF7D25: FLdRfVar var_3E0
  loc_BF7D28: FLdRfVar var_3B4
  loc_BF7D2B: LitVarStr var_3B0, "CucuPers"
  loc_BF7D30: PopAdLdVar
  loc_BF7D31: FLdRfVar var_3A0
  loc_BF7D34: FLdRfVar var_39C
  loc_BF7D37: FLdPr Me
  loc_BF7D3A: MemLdRfVar from_stack_1.global_56
  loc_BF7D3D: NewIfNullPr clsrecepcion
  loc_BF7D40: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7D45: FLdPr var_39C
  loc_BF7D48:  = Me.Fields
  loc_BF7D4D: FLdPr var_3A0
  loc_BF7D50: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7D55: FLdPr var_3B4
  loc_BF7D58:  = Me.Value
  loc_BF7D5D: FLdRfVar var_3F0
  loc_BF7D60: FLdRfVar var_3D0
  loc_BF7D63: LitVarStr var_3CC, "NumeFact"
  loc_BF7D68: PopAdLdVar
  loc_BF7D69: FLdRfVar var_3BC
  loc_BF7D6C: FLdRfVar var_3B8
  loc_BF7D6F: FLdPr Me
  loc_BF7D72: MemLdRfVar from_stack_1.global_56
  loc_BF7D75: NewIfNullPr clsrecepcion
  loc_BF7D78: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BF7D7D: FLdPr var_3B8
  loc_BF7D80:  = Me.Fields
  loc_BF7D85: FLdPr var_3BC
  loc_BF7D88: from_stack_2 = Me.Item(from_stack_1)
  loc_BF7D8D: FLdPr var_3D0
  loc_BF7D90:  = Me.Value
  loc_BF7D95: FLdRfVar var_344
  loc_BF7D98: LitI2_Byte 0
  loc_BF7D9A: LitI2_Byte 0
  loc_BF7D9C: LitI2_Byte 0
  loc_BF7D9E: LitStr vbNullString
  loc_BF7DA1: LitI4 0
  loc_BF7DA6: FLdRfVar var_3F0
  loc_BF7DA9: CStrVarTmp
  loc_BF7DAA: FStStrNoPop var_398
  loc_BF7DAD: FLdRfVar var_3E0
  loc_BF7DB0: CStrVarTmp
  loc_BF7DB1: FStStrNoPop var_394
  loc_BF7DB4: FLdRfVar var_33C
  loc_BF7DB7: CStrVarTmp
  loc_BF7DB8: FStStrNoPop var_390
  loc_BF7DBB: FLdRfVar var_32C
  loc_BF7DBE: CStrVarTmp
  loc_BF7DBF: FStStrNoPop var_38C
  loc_BF7DC2: FLdRfVar var_31C
  loc_BF7DC5: CI2Var
  loc_BF7DC6: FLdRfVar var_30C
  loc_BF7DC9: CStrVarTmp
  loc_BF7DCA: FStStrNoPop var_388
  loc_BF7DCD: FLdRfVar var_2FC
  loc_BF7DD0: CStrVarTmp
  loc_BF7DD1: FStStrNoPop var_384
  loc_BF7DD4: FLdRfVar var_2E8
  loc_BF7DD7: CStrVarTmp
  loc_BF7DD8: FStStrNoPop var_380
  loc_BF7DDB: FLdR8 arg_C
  loc_BF7DDE: FLdRfVar var_2D4
  loc_BF7DE1: CR4Var
  loc_BF7DE2: PopFPR8
  loc_BF7DE3: FLdRfVar var_2BC
  loc_BF7DE6: CR4Var
  loc_BF7DE7: PopFPR8
  loc_BF7DE8: FLdRfVar var_2AC
  loc_BF7DEB: CStrVarTmp
  loc_BF7DEC: FStStrNoPop var_340
  loc_BF7DEF: FLdRfVar var_29C
  loc_BF7DF2: CStrVarTmp
  loc_BF7DF3: FStStrNoPop var_2EC
  loc_BF7DF6: FLdRfVar var_288
  loc_BF7DF9: CStrVarTmp
  loc_BF7DFA: FStStrNoPop var_2D8
  loc_BF7DFD: FLdRfVar var_B4
  loc_BF7E00: CStrVarTmp
  loc_BF7E01: FStStrNoPop var_2C4
  loc_BF7E04: FLdRfVar var_274
  loc_BF7E07: CStrVarTmp
  loc_BF7E08: FStStrNoPop var_2C0
  loc_BF7E0B: FLdRfVar var_1BC
  loc_BF7E0E: CI4Var
  loc_BF7E10: FLdRfVar var_1AC
  loc_BF7E13: CI2Var
  loc_BF7E14: FLdRfVar var_E4
  loc_BF7E17: CStrVarTmp
  loc_BF7E18: FStStrNoPop var_28C
  loc_BF7E1B: FLdRfVar var_C4
  loc_BF7E1E: CStrVarTmp
  loc_BF7E1F: FStStrNoPop var_278
  loc_BF7E22: FLdPr Me
  loc_BF7E25: MemLdRfVar from_stack_1.global_52
  loc_BF7E28: NewIfNullPr clsimputacion
  loc_BF7E2B: from_stack_16v = clsimputacion.AddNewDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BF7E30: ILdRf var_344
  loc_BF7E33: FStR4 var_88
  loc_BF7E36: FFreeStr var_278 = "": var_28C = "": var_2C0 = "": var_2C4 = "": var_2D8 = "": var_2EC = "": var_340 = "": var_380 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = ""
  loc_BF7E55: FFreeAd var_34C = "": var_364 = "": var_368 = "": var_39C = "": var_3A0 = "": var_3B8 = "": var_3BC = "": var_A4 = "": var_F0 = "": var_10C = "": var_128 = "": var_144 = "": var_164 = "": var_180 = "": var_19C = "": var_1D8 = "": var_1F4 = "": var_210 = "": var_22C = "": var_248 = "": var_264 = "": var_360 = "": var_37C = "": var_3B4 = "": var_3D0 = "": var_8C = "": var_90 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_150 = "": var_168 = "": var_16C = "": var_184 = "": var_188 = "": var_1C0 = "": var_1C4 = "": var_1DC = "": var_1E0 = "": var_1F8 = "": var_1FC = "": var_214 = "": var_218 = "": var_230 = "": var_234 = "": var_24C = "": var_250 = ""
  loc_BF7EC6: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_1AC = "": var_1BC = "": var_274 = "": var_288 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2D4 = "": var_2E8 = "": var_2FC = "": var_30C = "": var_31C = "": var_32C = "": var_33C = "": var_3E0 = ""
  loc_BF7EEF: ExitProcCbHresult
  loc_BF7EF5: LitI4 0
  loc_BF7EFA: FStR4 var_88
  loc_BF7EFD: ExitProcCbHresult
  loc_BF7F03: PopFPR8
End Function
