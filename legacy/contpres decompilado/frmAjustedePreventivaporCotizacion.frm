VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmAjustedePreventivaporCotizacion
  Caption = "Ajuste de Preventiva por Cotización"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmAjustedePreventivaporCotizacion.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 14835
  ClientHeight = 9135
  Begin VB.Frame Frame
    Caption = " Ajuste de Preventiva por Cotización "
    Left = 120
    Top = 1680
    Width = 14295
    Height = 9015
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
    Begin VB.Frame Frame1
      Caption = "Datos de Imputación del Item "
      Left = 120
      Top = 5880
      Width = 14055
      Height = 3255
      TabIndex = 8
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.Label DetaFifuLbl
        Left = 3840
        Top = 1320
        Width = 8400
        Height = 360
        TabIndex = 14
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
        Left = 1440
        Top = 840
        Width = 8400
        Height = 360
        TabIndex = 12
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
      Begin VB.Label DetaPartLbl
        Left = 960
        Top = 360
        Width = 8400
        Height = 360
        TabIndex = 10
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
      Begin VB.Label Label4
        Caption = "Finalidad-Función-Programa de Gestión:"
        Left = 120
        Top = 1320
        Width = 3630
        Height = 240
        TabIndex = 13
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
        Caption = "Organigrama:"
        Left = 120
        Top = 840
        Width = 1230
        Height = 240
        TabIndex = 11
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
      Begin VB.Label Label1
        Caption = "Partida:"
        Left = 120
        Top = 360
        Width = 690
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
      Begin VB.Label Label5
        Caption = "Detalle:"
        Left = 120
        Top = 1800
        Width = 690
        Height = 240
        TabIndex = 15
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
      Begin VB.Label DetaItnoLbl
        Left = 840
        Top = 1800
        Width = 11400
        Height = 360
        TabIndex = 16
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
      Begin VB.Label Label8
        Caption = "Características:"
        Left = 120
        Top = 2280
        Width = 1380
        Height = 240
        TabIndex = 17
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
      Begin VB.Label CaraItnoLbl
        Left = 1560
        Top = 2280
        Width = 10680
        Height = 840
        TabIndex = 18
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
    Begin MSFlexGridLib.MSFlexGrid ItemCotizacionFlex
      Left = 120
      Top = 3240
      Width = 14055
      Height = 2535
      TabIndex = 7
      OleObjectBlob = "frmAjustedePreventivaporCotizacion.frx":08CA
    End
    Begin MSDataGridLib.DataGrid dgdABMS
      Left = 120
      Top = 1320
      Width = 14055
      Height = 1695
      TabIndex = 6
      OleObjectBlob = "frmAjustedePreventivaporCotizacion.frx":09B6
    End
    Begin MSMask.MaskEdBox FechImpuMsk
      Left = 960
      Top = 720
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "frmAjustedePreventivaporCotizacion.frx":0E4C
      DataField = "FechNope"
    End
    Begin VB.Label Label6
      Caption = "Fecha:"
      Left = 120
      Top = 720
      Width = 735
      Height = 315
      TabIndex = 4
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
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 0
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
      TabIndex = 1
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
      TabIndex = 2
      OleObjectBlob = "frmAjustedePreventivaporCotizacion.frx":0EFC
    End
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmAjustedePreventivaporCotizacion.frx":0F84
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14835
    Height = 660
    TabIndex = 19
    OleObjectBlob = "frmAjustedePreventivaporCotizacion.frx":8B02
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 20
      TabStop = 0   'False
      Picture = "frmAjustedePreventivaporCotizacion.frx":905E
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmAjustedePreventivaporCotizacion"


Private Sub dgdABMS_UnknownEvent_0 '956E1C
  'Data Table: 47EEC0
  loc_956E04: FLdPr Me
  loc_956E07: VCallAd Control_ID_dgdABMS
  loc_956E0A: FStAdFunc var_88
  loc_956E0D: FLdRfVar var_88
  loc_956E10: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_956E15: FFree1Ad var_88
  loc_956E18: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '956E68
  'Data Table: 47EEC0
  loc_956E50: FLdPr Me
  loc_956E53: VCallAd Control_ID_dgdABMS
  loc_956E56: FStAdFunc var_88
  loc_956E59: FLdRfVar var_88
  loc_956E5C: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_956E61: FFree1Ad var_88
  loc_956E64: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99B0E8
  'Data Table: 47EEC0
  loc_99B08C: FLdRfVar var_B4
  loc_99B08F: FLdRfVar var_B0
  loc_99B092: FLdI2 ColIndex
  loc_99B095: CVarI2 var_A8
  loc_99B098: PopAdLdVar
  loc_99B099: FLdPr Me
  loc_99B09C: VCallAd Control_ID_dgdABMS
  loc_99B09F: FStAdFunc var_88
  loc_99B0A2: FLdPr var_88
  loc_99B0A5: LateIdLdVar var_98 DispID_105 0
  loc_99B0AC: CastAdVar Me
  loc_99B0B0: FStAdFunc var_AC
  loc_99B0B3: FLdPr var_AC
  loc_99B0B6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99B0BB: FLdPr var_B0
  loc_99B0BE:  = Me.DataField
  loc_99B0C3: FLdZeroAd var_B4
  loc_99B0C6: PopTmpLdAdStr
  loc_99B0CA: FLdPr Me
  loc_99B0CD: MemLdRfVar from_stack_1.global_52
  loc_99B0D0: NewIfNullPr clsnotapedido
  loc_99B0D3: Call clsnotapedido.Sort(from_stack_1v)
  loc_99B0D8: FFree1Str var_B8
  loc_99B0DB: FFreeAd var_88 = "": var_AC = ""
  loc_99B0E4: FFree1Var var_98 = ""
  loc_99B0E7: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'B42E4C
  'Data Table: 47EEC0
  loc_B4258C: Call Proc_102_24_A2E3E8()
  loc_B42591: FLdPr Me
  loc_B42594: MemLdUI1 global_68
  loc_B42598: CI2UI1
  loc_B4259A: LitI2_Byte 0
  loc_B4259C: EqI2
  loc_B4259D: FLdRfVar var_88
  loc_B425A0: FLdPr Me
  loc_B425A3: MemLdRfVar from_stack_1.global_52
  loc_B425A6: NewIfNullPr clsnotapedido
  loc_B425A9: from_stack_1 = clsnotapedido.RecordCount
  loc_B425AE: ILdRf var_88
  loc_B425B1: LitI4 0
  loc_B425B6: GtI4
  loc_B425B7: AndI4
  loc_B425B8: BranchF loc_B42E48
  loc_B425BB: FLdRfVar var_8A
  loc_B425BE: FLdPr Me
  loc_B425C1: MemLdRfVar from_stack_1.global_52
  loc_B425C4: NewIfNullPr clsnotapedido
  loc_B425C7: from_stack_1 = clsnotapedido.BOF
  loc_B425CC: FLdI2 var_8A
  loc_B425CF: BranchF loc_B425E0
  loc_B425D2: FLdPr Me
  loc_B425D5: MemLdRfVar from_stack_1.global_52
  loc_B425D8: NewIfNullPr clsnotapedido
  loc_B425DB: Call clsnotapedido.MoveFirst()
  loc_B425E0: FLdRfVar var_8A
  loc_B425E3: FLdPr Me
  loc_B425E6: MemLdRfVar from_stack_1.global_52
  loc_B425E9: NewIfNullPr clsnotapedido
  loc_B425EC: from_stack_1 = clsnotapedido.EOF
  loc_B425F1: FLdI2 var_8A
  loc_B425F4: BranchF loc_B42605
  loc_B425F7: FLdPr Me
  loc_B425FA: MemLdRfVar from_stack_1.global_52
  loc_B425FD: NewIfNullPr clsnotapedido
  loc_B42600: Call clsnotapedido.MoveLast()
  loc_B42605: LitStr "SELECT i.*, i.PeriInfo, i.CodiNope, i.Item"
  loc_B42608: LitStr " , SUM(i.PrevImpu) sumPrevImpu, SUM(i.PrevImpu - i.DefiImpu) SaldoPrev, ImpoCoti"
  loc_B4260B: ConcatStr
  loc_B4260C: FStStrNoPop var_90
  loc_B4260F: LitStr " FROM ("
  loc_B42612: ConcatStr
  loc_B42613: FStStrNoPop var_94
  loc_B42616: LitStr " SELECT itc.PeriInfo, itc.CodiNope, itc.CodiItco, COUNT(0) cuenta, SUM(itc.CantItco*itc.ImunItco) ImpoCoti"
  loc_B42619: ConcatStr
  loc_B4261A: FStStrNoPop var_98
  loc_B4261D: LitStr " FROM itemcotizacion itc"
  loc_B42620: ConcatStr
  loc_B42621: FStStrNoPop var_9C
  loc_B42624: LitStr " INNER JOIN notapedido np ON np.PeriInfo = itc.PeriInfo AND np.CodiNope = itc.CodiNope AND FeanNope IS NULL"
  loc_B42627: ConcatStr
  loc_B42628: FStStrNoPop var_A0
  loc_B4262B: LitStr " LEFT JOIN ordencompra oc ON oc.PeriInfo = itc.PeriInfo AND oc.CodiNope = itc.CodiNope"
  loc_B4262E: ConcatStr
  loc_B4262F: FStStrNoPop var_A4
  loc_B42632: LitStr " Where itc.PeriInfo = "
  loc_B42635: ConcatStr
  loc_B42636: FStStrNoPop var_A8
  loc_B42639: ImpAdLdI2 MemVar_C3D064
  loc_B4263C: CStrUI1
  loc_B4263E: FStStrNoPop var_AC
  loc_B42641: ConcatStr
  loc_B42642: FStStrNoPop var_B0
  loc_B42645: LitStr " AND oc.PeriInfo IS NULL"
  loc_B42648: ConcatStr
  loc_B42649: FStStrNoPop var_B4
  loc_B4264C: LitStr " GROUP BY itc.PeriInfo, itc.CodiNope, itc.CodiItco"
  loc_B4264F: ConcatStr
  loc_B42650: FStStrNoPop var_B8
  loc_B42653: LitStr " Having Cuenta = 1"
  loc_B42656: ConcatStr
  loc_B42657: FStStrNoPop var_BC
  loc_B4265A: LitStr " ) AS tbl"
  loc_B4265D: ConcatStr
  loc_B4265E: FStStrNoPop var_C0
  loc_B42661: LitStr " INNER JOIN imputacion i on i.PeriInfo = tbl.PeriInfo and i.CodiNope = tbl.CodiNope and i.Item = tbl.CodiItco"
  loc_B42664: ConcatStr
  loc_B42665: FStStrNoPop var_C4
  loc_B42668: LitStr " WHERE tbl.PeriInfo = "
  loc_B4266B: ConcatStr
  loc_B4266C: CVarStr var_100
  loc_B4266F: FLdRfVar var_F0
  loc_B42672: FLdRfVar var_E0
  loc_B42675: LitVarStr var_DC, "PeriInfo"
  loc_B4267A: PopAdLdVar
  loc_B4267B: FLdRfVar var_CC
  loc_B4267E: FLdRfVar var_C8
  loc_B42681: FLdPr Me
  loc_B42684: MemLdRfVar from_stack_1.global_52
  loc_B42687: NewIfNullPr clsnotapedido
  loc_B4268A: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B4268F: FLdPr var_C8
  loc_B42692:  = Me.Fields
  loc_B42697: FLdPr var_CC
  loc_B4269A: from_stack_2 = Me.Item(from_stack_1)
  loc_B4269F: FLdPr var_E0
  loc_B426A2:  = Me.Value
  loc_B426A7: FLdRfVar var_F0
  loc_B426AA: ConcatVar var_110
  loc_B426AE: LitVarStr var_120, " AND tbl.CodiNope = "
  loc_B426B3: ConcatVar var_130
  loc_B426B7: FLdRfVar var_15C
  loc_B426BA: FLdRfVar var_14C
  loc_B426BD: LitVarStr var_148, "CodiNope"
  loc_B426C2: PopAdLdVar
  loc_B426C3: FLdRfVar var_138
  loc_B426C6: FLdRfVar var_134
  loc_B426C9: FLdPr Me
  loc_B426CC: MemLdRfVar from_stack_1.global_52
  loc_B426CF: NewIfNullPr clsnotapedido
  loc_B426D2: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B426D7: FLdPr var_134
  loc_B426DA:  = Me.Fields
  loc_B426DF: FLdPr var_138
  loc_B426E2: from_stack_2 = Me.Item(from_stack_1)
  loc_B426E7: FLdPr var_14C
  loc_B426EA:  = Me.Value
  loc_B426EF: FLdRfVar var_15C
  loc_B426F2: ConcatVar var_16C
  loc_B426F6: LitVarStr var_17C, " GROUP BY i.PeriInfo, i.CodiNope, i.Item"
  loc_B426FB: ConcatVar var_18C
  loc_B426FF: LitVarStr var_19C, " HAVING SaldoPrev != ImpoCoti;"
  loc_B42704: ConcatVar var_1AC
  loc_B42708: CStrVarVal var_1B0
  loc_B4270C: FLdPr Me
  loc_B4270F: MemLdRfVar from_stack_1.global_56
  loc_B42712: NewIfNullPr clsbase
  loc_B42715: Call clsbase.RedefineRS(from_stack_1v)
  loc_B4271A: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B4273B: FFreeAd var_C8 = "": var_CC = "": var_E0 = "": var_134 = "": var_138 = ""
  loc_B4274A: FFreeVar var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_15C = "": var_16C = "": var_18C = ""
  loc_B4275D: FLdRfVar var_88
  loc_B42760: FLdPr Me
  loc_B42763: MemLdRfVar from_stack_1.global_56
  loc_B42766: NewIfNullPr clsbase
  loc_B42769: from_stack_1 = clsbase.RecordCount
  loc_B4276E: ILdRf var_88
  loc_B42771: LitI4 0
  loc_B42776: GtI4
  loc_B42777: BranchF loc_B42E43
  loc_B4277A: FLdPr Me
  loc_B4277D: MemLdRfVar from_stack_1.global_56
  loc_B42780: NewIfNullPr clsbase
  loc_B42783: Call clsbase.MoveFirst()
  loc_B42788: FLdRfVar var_F0
  loc_B4278B: FLdRfVar var_E0
  loc_B4278E: LitVarStr var_DC, "ExpeImpu"
  loc_B42793: PopAdLdVar
  loc_B42794: FLdRfVar var_CC
  loc_B42797: FLdRfVar var_C8
  loc_B4279A: FLdPr Me
  loc_B4279D: MemLdRfVar from_stack_1.global_52
  loc_B427A0: NewIfNullPr clsnotapedido
  loc_B427A3: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B427A8: FLdPr var_C8
  loc_B427AB:  = Me.Fields
  loc_B427B0: FLdPr var_CC
  loc_B427B3: from_stack_2 = Me.Item(from_stack_1)
  loc_B427B8: FLdPr var_E0
  loc_B427BB:  = Me.Value
  loc_B427C0: FLdRfVar var_100
  loc_B427C3: FLdRfVar var_14C
  loc_B427C6: LitVarStr var_120, "CodiNope"
  loc_B427CB: PopAdLdVar
  loc_B427CC: FLdRfVar var_138
  loc_B427CF: FLdRfVar var_134
  loc_B427D2: FLdPr Me
  loc_B427D5: MemLdRfVar from_stack_1.global_52
  loc_B427D8: NewIfNullPr clsnotapedido
  loc_B427DB: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B427E0: FLdPr var_134
  loc_B427E3:  = Me.Fields
  loc_B427E8: FLdPr var_138
  loc_B427EB: from_stack_2 = Me.Item(from_stack_1)
  loc_B427F0: FLdPr var_14C
  loc_B427F3:  = Me.Value
  loc_B427F8: FLdRfVar var_110
  loc_B427FB: FLdRfVar var_1BC
  loc_B427FE: LitVarStr var_148, "Item"
  loc_B42803: PopAdLdVar
  loc_B42804: FLdRfVar var_1B8
  loc_B42807: FLdRfVar var_1B4
  loc_B4280A: FLdPr Me
  loc_B4280D: MemLdRfVar from_stack_1.global_56
  loc_B42810: NewIfNullPr clsbase
  loc_B42813: from_stack_1v = clsbase.RsFrmGet()
  loc_B42818: FLdPr var_1B4
  loc_B4281B:  = Me.Fields
  loc_B42820: FLdPr var_1B8
  loc_B42823: from_stack_2 = Me.Item(from_stack_1)
  loc_B42828: FLdPr var_1BC
  loc_B4282B:  = Me.Value
  loc_B42830: FLdRfVar var_94
  loc_B42833: LitStr vbNullString
  loc_B42836: LitStr vbNullString
  loc_B42839: LitI2_Byte 0
  loc_B4283B: LitI2_Byte 0
  loc_B4283D: LitI2_Byte 0
  loc_B4283F: FLdRfVar var_110
  loc_B42842: CI2Var
  loc_B42843: FLdRfVar var_100
  loc_B42846: CI4Var
  loc_B42848: FLdRfVar var_F0
  loc_B4284B: CStrVarTmp
  loc_B4284C: FStStrNoPop var_90
  loc_B4284F: LitI2_Byte 1
  loc_B42851: ImpAdLdI2 MemVar_C3D064
  loc_B42854: FLdPr Me
  loc_B42857: MemLdRfVar from_stack_1.global_64
  loc_B4285A: NewIfNullPr clsimputacion
  loc_B4285D: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_B42862: FLdZeroAd var_94
  loc_B42865: CVarStr var_130
  loc_B42868: PopAdLdVar
  loc_B42869: FLdPr Me
  loc_B4286C: VCallAd Control_ID_FechImpuMsk
  loc_B4286F: FStAdFunc var_1C0
  loc_B42872: FLdPr var_1C0
  loc_B42875: LateIdSt
  loc_B4287A: FFree1Str var_90
  loc_B4287D: FFreeAd var_C8 = "": var_CC = "": var_134 = "": var_138 = "": var_1B4 = "": var_1B8 = "": var_E0 = "": var_14C = "": var_1BC = ""
  loc_B42894: FFreeVar var_F0 = "": var_100 = "": var_110 = ""
  loc_B4289F: FLdRfVar var_8A
  loc_B428A2: FLdPr Me
  loc_B428A5: MemLdRfVar from_stack_1.global_56
  loc_B428A8: NewIfNullPr clsbase
  loc_B428AB: from_stack_1 = clsbase.EOF
  loc_B428B0: FLdI2 var_8A
  loc_B428B3: NotI4
  loc_B428B4: BranchF loc_B42E35
  loc_B428B7: FLdRfVar var_1F8
  loc_B428BA: LitVarStr var_17C, "ImpoCoti"
  loc_B428BF: PopAdLdVar
  loc_B428C0: FLdRfVar var_1F4
  loc_B428C3: FLdRfVar var_1C0
  loc_B428C6: FLdPr Me
  loc_B428C9: MemLdRfVar from_stack_1.global_56
  loc_B428CC: NewIfNullPr clsbase
  loc_B428CF: from_stack_1v = clsbase.RsFrmGet()
  loc_B428D4: FLdPr var_1C0
  loc_B428D7:  = Me.Fields
  loc_B428DC: FLdPr var_1F4
  loc_B428DF: from_stack_2 = Me.Item(from_stack_1)
  loc_B428E4: FLdRfVar var_274
  loc_B428E7: LitVarStr var_270, "sumPrevImpu"
  loc_B428EC: PopAdLdVar
  loc_B428ED: FLdRfVar var_260
  loc_B428F0: FLdRfVar var_25C
  loc_B428F3: FLdPr Me
  loc_B428F6: MemLdRfVar from_stack_1.global_56
  loc_B428F9: NewIfNullPr clsbase
  loc_B428FC: from_stack_1v = clsbase.RsFrmGet()
  loc_B42901: FLdPr var_25C
  loc_B42904:  = Me.Fields
  loc_B42909: FLdPr var_260
  loc_B4290C: from_stack_2 = Me.Item(from_stack_1)
  loc_B42911: FLdRfVar var_33C
  loc_B42914: FLdRfVar var_300
  loc_B42917: LitVarStr var_2FC, "ImpoCoti"
  loc_B4291C: PopAdLdVar
  loc_B4291D: FLdRfVar var_2EC
  loc_B42920: FLdRfVar var_2E8
  loc_B42923: FLdPr Me
  loc_B42926: MemLdRfVar from_stack_1.global_56
  loc_B42929: NewIfNullPr clsbase
  loc_B4292C: from_stack_1v = clsbase.RsFrmGet()
  loc_B42931: FLdPr var_2E8
  loc_B42934:  = Me.Fields
  loc_B42939: FLdPr var_2EC
  loc_B4293C: from_stack_2 = Me.Item(from_stack_1)
  loc_B42941: FLdPr var_300
  loc_B42944:  = Me.Value
  loc_B42949: FLdRfVar var_32C
  loc_B4294C: FLdRfVar var_31C
  loc_B4294F: LitVarStr var_318, "sumPrevImpu"
  loc_B42954: PopAdLdVar
  loc_B42955: FLdRfVar var_308
  loc_B42958: FLdRfVar var_304
  loc_B4295B: FLdPr Me
  loc_B4295E: MemLdRfVar from_stack_1.global_56
  loc_B42961: NewIfNullPr clsbase
  loc_B42964: from_stack_1v = clsbase.RsFrmGet()
  loc_B42969: FLdPr var_304
  loc_B4296C:  = Me.Fields
  loc_B42971: FLdPr var_308
  loc_B42974: from_stack_2 = Me.Item(from_stack_1)
  loc_B42979: FLdPr var_31C
  loc_B4297C:  = Me.Value
  loc_B42981: FLdRfVar var_3D8
  loc_B42984: LitVarStr var_3D4, "sumPrevImpu"
  loc_B42989: PopAdLdVar
  loc_B4298A: FLdRfVar var_3C4
  loc_B4298D: FLdRfVar var_3C0
  loc_B42990: FLdPr Me
  loc_B42993: MemLdRfVar from_stack_1.global_56
  loc_B42996: NewIfNullPr clsbase
  loc_B42999: from_stack_1v = clsbase.RsFrmGet()
  loc_B4299E: FLdPr var_3C0
  loc_B429A1:  = Me.Fields
  loc_B429A6: FLdPr var_3C4
  loc_B429A9: from_stack_2 = Me.Item(from_stack_1)
  loc_B429AE: FLdRfVar var_100
  loc_B429B1: FLdRfVar var_E0
  loc_B429B4: LitVarStr var_DC, "Item"
  loc_B429B9: PopAdLdVar
  loc_B429BA: FLdRfVar var_CC
  loc_B429BD: FLdRfVar var_C8
  loc_B429C0: FLdPr Me
  loc_B429C3: MemLdRfVar from_stack_1.global_56
  loc_B429C6: NewIfNullPr clsbase
  loc_B429C9: from_stack_1v = clsbase.RsFrmGet()
  loc_B429CE: FLdPr var_C8
  loc_B429D1:  = Me.Fields
  loc_B429D6: FLdPr var_CC
  loc_B429D9: from_stack_2 = Me.Item(from_stack_1)
  loc_B429DE: FLdPr var_E0
  loc_B429E1:  = Me.Value
  loc_B429E6: FLdRfVar var_100
  loc_B429E9: LitI4 9
  loc_B429EE: FLdRfVar var_F0
  loc_B429F1: ImpAdCallFPR4  = Chr()
  loc_B429F6: FLdRfVar var_F0
  loc_B429F9: ConcatVar var_110
  loc_B429FD: FLdRfVar var_130
  loc_B42A00: FLdRfVar var_14C
  loc_B42A03: LitVarStr var_120, "CodiInsu"
  loc_B42A08: PopAdLdVar
  loc_B42A09: FLdRfVar var_138
  loc_B42A0C: FLdRfVar var_134
  loc_B42A0F: FLdPr Me
  loc_B42A12: MemLdRfVar from_stack_1.global_56
  loc_B42A15: NewIfNullPr clsbase
  loc_B42A18: from_stack_1v = clsbase.RsFrmGet()
  loc_B42A1D: FLdPr var_134
  loc_B42A20:  = Me.Fields
  loc_B42A25: FLdPr var_138
  loc_B42A28: from_stack_2 = Me.Item(from_stack_1)
  loc_B42A2D: FLdPr var_14C
  loc_B42A30:  = Me.Value
  loc_B42A35: FLdRfVar var_130
  loc_B42A38: ConcatVar var_15C
  loc_B42A3C: LitI4 9
  loc_B42A41: FLdRfVar var_16C
  loc_B42A44: ImpAdCallFPR4  = Chr()
  loc_B42A49: FLdRfVar var_16C
  loc_B42A4C: ConcatVar var_18C
  loc_B42A50: FLdRfVar var_1AC
  loc_B42A53: FLdRfVar var_1BC
  loc_B42A56: LitVarStr var_148, "DetaImpu"
  loc_B42A5B: PopAdLdVar
  loc_B42A5C: FLdRfVar var_1B8
  loc_B42A5F: FLdRfVar var_1B4
  loc_B42A62: FLdPr Me
  loc_B42A65: MemLdRfVar from_stack_1.global_56
  loc_B42A68: NewIfNullPr clsbase
  loc_B42A6B: from_stack_1v = clsbase.RsFrmGet()
  loc_B42A70: FLdPr var_1B4
  loc_B42A73:  = Me.Fields
  loc_B42A78: FLdPr var_1B8
  loc_B42A7B: from_stack_2 = Me.Item(from_stack_1)
  loc_B42A80: FLdPr var_1BC
  loc_B42A83:  = Me.Value
  loc_B42A88: FLdRfVar var_1AC
  loc_B42A8B: ConcatVar var_1D0
  loc_B42A8F: LitI4 9
  loc_B42A94: FLdRfVar var_1E0
  loc_B42A97: ImpAdCallFPR4  = Chr()
  loc_B42A9C: FLdRfVar var_1E0
  loc_B42A9F: ConcatVar var_1F0
  loc_B42AA3: LitI4 1
  loc_B42AA8: LitI4 1
  loc_B42AAD: LitVarStr var_19C, "currency"
  loc_B42AB2: FStVarCopyObj var_218
  loc_B42AB5: FLdRfVar var_218
  loc_B42AB8: FLdZeroAd var_1F8
  loc_B42ABB: CVarAd
  loc_B42ABF: ImpAdCallI2 Format$(, )
  loc_B42AC4: CVarStr var_228
  loc_B42AC7: ConcatVar var_238
  loc_B42ACB: LitI4 9
  loc_B42AD0: FLdRfVar var_248
  loc_B42AD3: ImpAdCallFPR4  = Chr()
  loc_B42AD8: FLdRfVar var_248
  loc_B42ADB: ConcatVar var_258
  loc_B42ADF: LitI4 1
  loc_B42AE4: LitI4 1
  loc_B42AE9: LitVarStr var_294, "currency"
  loc_B42AEE: FStVarCopyObj var_2A4
  loc_B42AF1: FLdRfVar var_2A4
  loc_B42AF4: FLdZeroAd var_274
  loc_B42AF7: CVarAd
  loc_B42AFB: ImpAdCallI2 Format$(, )
  loc_B42B00: CVarStr var_2B4
  loc_B42B03: ConcatVar var_2C4
  loc_B42B07: LitI4 9
  loc_B42B0C: FLdRfVar var_2D4
  loc_B42B0F: ImpAdCallFPR4  = Chr()
  loc_B42B14: FLdRfVar var_2D4
  loc_B42B17: ConcatVar var_2E4
  loc_B42B1B: LitI4 1
  loc_B42B20: LitI4 1
  loc_B42B25: LitVarStr var_36C, "currency"
  loc_B42B2A: FStVarCopyObj var_37C
  loc_B42B2D: FLdRfVar var_37C
  loc_B42B30: FLdRfVar var_33C
  loc_B42B33: FLdRfVar var_32C
  loc_B42B36: SubVar var_34C
  loc_B42B3A: FStVar var_35C
  loc_B42B3E: FLdRfVar var_35C
  loc_B42B41: ImpAdCallI2 Format$(, )
  loc_B42B46: CVarStr var_38C
  loc_B42B49: ConcatVar var_39C
  loc_B42B4D: LitI4 9
  loc_B42B52: FLdRfVar var_3AC
  loc_B42B55: ImpAdCallFPR4  = Chr()
  loc_B42B5A: FLdRfVar var_3AC
  loc_B42B5D: ConcatVar var_3BC
  loc_B42B61: LitI4 1
  loc_B42B66: LitI4 1
  loc_B42B6B: LitVarStr var_3F8, "currency"
  loc_B42B70: FStVarCopyObj var_408
  loc_B42B73: FLdRfVar var_408
  loc_B42B76: FLdZeroAd var_3D8
  loc_B42B79: CVarAd
  loc_B42B7D: ImpAdCallI2 Format$(, )
  loc_B42B82: CVarStr var_418
  loc_B42B85: ConcatVar var_428
  loc_B42B89: LitI4 9
  loc_B42B8E: FLdRfVar var_438
  loc_B42B91: ImpAdCallFPR4  = Chr()
  loc_B42B96: FLdRfVar var_438
  loc_B42B99: ConcatVar var_448
  loc_B42B9D: FLdRfVar var_474
  loc_B42BA0: FLdRfVar var_464
  loc_B42BA3: LitVarStr var_460, "CodiPart"
  loc_B42BA8: PopAdLdVar
  loc_B42BA9: FLdRfVar var_450
  loc_B42BAC: FLdRfVar var_44C
  loc_B42BAF: FLdPr Me
  loc_B42BB2: MemLdRfVar from_stack_1.global_56
  loc_B42BB5: NewIfNullPr clsbase
  loc_B42BB8: from_stack_1v = clsbase.RsFrmGet()
  loc_B42BBD: FLdPr var_44C
  loc_B42BC0:  = Me.Fields
  loc_B42BC5: FLdPr var_450
  loc_B42BC8: from_stack_2 = Me.Item(from_stack_1)
  loc_B42BCD: FLdPr var_464
  loc_B42BD0:  = Me.Value
  loc_B42BD5: FLdRfVar var_474
  loc_B42BD8: ConcatVar var_484
  loc_B42BDC: LitI4 9
  loc_B42BE1: FLdRfVar var_494
  loc_B42BE4: ImpAdCallFPR4  = Chr()
  loc_B42BE9: FLdRfVar var_494
  loc_B42BEC: ConcatVar var_4A4
  loc_B42BF0: FLdRfVar var_4D0
  loc_B42BF3: FLdRfVar var_4C0
  loc_B42BF6: LitVarStr var_4BC, "CodiOrga"
  loc_B42BFB: PopAdLdVar
  loc_B42BFC: FLdRfVar var_4AC
  loc_B42BFF: FLdRfVar var_4A8
  loc_B42C02: FLdPr Me
  loc_B42C05: MemLdRfVar from_stack_1.global_56
  loc_B42C08: NewIfNullPr clsbase
  loc_B42C0B: from_stack_1v = clsbase.RsFrmGet()
  loc_B42C10: FLdPr var_4A8
  loc_B42C13:  = Me.Fields
  loc_B42C18: FLdPr var_4AC
  loc_B42C1B: from_stack_2 = Me.Item(from_stack_1)
  loc_B42C20: FLdPr var_4C0
  loc_B42C23:  = Me.Value
  loc_B42C28: FLdRfVar var_4D0
  loc_B42C2B: ConcatVar var_4E0
  loc_B42C2F: LitI4 9
  loc_B42C34: FLdRfVar var_4F0
  loc_B42C37: ImpAdCallFPR4  = Chr()
  loc_B42C3C: FLdRfVar var_4F0
  loc_B42C3F: ConcatVar var_500
  loc_B42C43: FLdRfVar var_52C
  loc_B42C46: FLdRfVar var_51C
  loc_B42C49: LitVarStr var_518, "CodiUnga"
  loc_B42C4E: PopAdLdVar
  loc_B42C4F: FLdRfVar var_508
  loc_B42C52: FLdRfVar var_504
  loc_B42C55: FLdPr Me
  loc_B42C58: MemLdRfVar from_stack_1.global_56
  loc_B42C5B: NewIfNullPr clsbase
  loc_B42C5E: from_stack_1v = clsbase.RsFrmGet()
  loc_B42C63: FLdPr var_504
  loc_B42C66:  = Me.Fields
  loc_B42C6B: FLdPr var_508
  loc_B42C6E: from_stack_2 = Me.Item(from_stack_1)
  loc_B42C73: FLdPr var_51C
  loc_B42C76:  = Me.Value
  loc_B42C7B: FLdRfVar var_52C
  loc_B42C7E: ConcatVar var_53C
  loc_B42C82: LitI4 9
  loc_B42C87: FLdRfVar var_54C
  loc_B42C8A: ImpAdCallFPR4  = Chr()
  loc_B42C8F: FLdRfVar var_54C
  loc_B42C92: ConcatVar var_55C
  loc_B42C96: FLdRfVar var_588
  loc_B42C99: FLdRfVar var_578
  loc_B42C9C: LitVarStr var_574, "CodiFifu"
  loc_B42CA1: PopAdLdVar
  loc_B42CA2: FLdRfVar var_564
  loc_B42CA5: FLdRfVar var_560
  loc_B42CA8: FLdPr Me
  loc_B42CAB: MemLdRfVar from_stack_1.global_56
  loc_B42CAE: NewIfNullPr clsbase
  loc_B42CB1: from_stack_1v = clsbase.RsFrmGet()
  loc_B42CB6: FLdPr var_560
  loc_B42CB9:  = Me.Fields
  loc_B42CBE: FLdPr var_564
  loc_B42CC1: from_stack_2 = Me.Item(from_stack_1)
  loc_B42CC6: FLdPr var_578
  loc_B42CC9:  = Me.Value
  loc_B42CCE: FLdRfVar var_588
  loc_B42CD1: ConcatVar var_598
  loc_B42CD5: LitI4 9
  loc_B42CDA: FLdRfVar var_5A8
  loc_B42CDD: ImpAdCallFPR4  = Chr()
  loc_B42CE2: FLdRfVar var_5A8
  loc_B42CE5: ConcatVar var_5B8
  loc_B42CE9: FLdRfVar var_5E4
  loc_B42CEC: FLdRfVar var_5D4
  loc_B42CEF: LitVarStr var_5D0, "IdImpu"
  loc_B42CF4: PopAdLdVar
  loc_B42CF5: FLdRfVar var_5C0
  loc_B42CF8: FLdRfVar var_5BC
  loc_B42CFB: FLdPr Me
  loc_B42CFE: MemLdRfVar from_stack_1.global_56
  loc_B42D01: NewIfNullPr clsbase
  loc_B42D04: from_stack_1v = clsbase.RsFrmGet()
  loc_B42D09: FLdPr var_5BC
  loc_B42D0C:  = Me.Fields
  loc_B42D11: FLdPr var_5C0
  loc_B42D14: from_stack_2 = Me.Item(from_stack_1)
  loc_B42D19: FLdPr var_5D4
  loc_B42D1C:  = Me.Value
  loc_B42D21: FLdRfVar var_5E4
  loc_B42D24: ConcatVar var_5F4
  loc_B42D28: LitI4 9
  loc_B42D2D: FLdRfVar var_604
  loc_B42D30: ImpAdCallFPR4  = Chr()
  loc_B42D35: FLdRfVar var_604
  loc_B42D38: ConcatVar var_614
  loc_B42D3C: LitVarStr var_624, "No"
  loc_B42D41: ConcatVar var_634
  loc_B42D45: CStrVarTmp
  loc_B42D46: CVarStr var_644
  loc_B42D49: PopAdLdVar
  loc_B42D4A: FLdPr Me
  loc_B42D4D: VCallAd Control_ID_ItemCotizacionFlex
  loc_B42D50: FStAdFunc var_658
  loc_B42D53: FLdPr var_658
  loc_B42D56: LateIdCall
  loc_B42D5E: FFreeAd var_560 = "": var_564 = "": var_578 = "": var_5BC = "": var_5C0 = "": var_5D4 = "": var_658 = "": var_C8 = "": var_CC = "": var_E0 = "": var_134 = "": var_138 = "": var_14C = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1F4 = "": var_25C = "": var_260 = "": var_2E8 = "": var_2EC = "": var_304 = "": var_308 = "": var_31C = "": var_300 = "": var_3C0 = "": var_3C4 = "": var_44C = "": var_450 = "": var_464 = "": var_4A8 = "": var_4AC = "": var_4C0 = "": var_504 = "": var_508 = ""
  loc_B42DAB: FFreeVar var_3E8 = "": var_408 = "": var_3BC = "": var_418 = "": var_428 = "": var_438 = "": var_448 = "": var_474 = "": var_484 = "": var_494 = "": var_4A4 = "": var_4D0 = "": var_4E0 = "": var_4F0 = "": var_500 = "": var_52C = "": var_53C = "": var_54C = "": var_55C = "": var_588 = "": var_598 = "": var_5A8 = "": var_5B8 = "": var_5E4 = "": var_5F4 = "": var_604 = "": var_614 = "": var_634 = "": var_644 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_15C = "": var_16C = "": var_18C = "": var_1AC = "": var_1D0 = "": var_1E0 = "": var_208 = "": var_218 = "": var_1F0 = "": var_228 = "": var_238 = "": var_248 = "": var_284 = "": var_2A4 = "": var_258 = "": var_2B4 = "": var_2C4 = "": var_2D4 = "": var_33C = "": var_32C = "": var_35C = "": var_37C = "": var_2E4 = "": var_38C = "": var_39C = ""
  loc_B42E24: FLdPr Me
  loc_B42E27: MemLdRfVar from_stack_1.global_56
  loc_B42E2A: NewIfNullPr clsbase
  loc_B42E2D: Call clsbase.MoveSiguiente()
  loc_B42E32: Branch loc_B4289F
  loc_B42E35: FLdPr Me
  loc_B42E38: MemLdRfVar from_stack_1.global_56
  loc_B42E3B: NewIfNullPr clsbase
  loc_B42E3E: Call clsbase.MoveFirst()
  loc_B42E43: Call ItemCotizacionFlex_RowColChange()
  loc_B42E48: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B321B4
  'Data Table: 47EEC0
  loc_B318B4: ILdRf Button
  loc_B318B7: FStAd var_88 
  loc_B318BB: FLdRfVar var_90
  loc_B318BE: FLdPr var_88
  loc_B318C1:  = Me.Key
  loc_B318C6: FLdZeroAd var_90
  loc_B318C9: FStStr var_94
  loc_B318CC: ILdRf var_94
  loc_B318CF: LitStr "btnCrear"
  loc_B318D2: EqStr
  loc_B318D4: BranchF loc_B31A76
  loc_B318D7: FLdRfVar var_98
  loc_B318DA: FLdPr Me
  loc_B318DD: MemLdRfVar from_stack_1.global_52
  loc_B318E0: NewIfNullPr clsnotapedido
  loc_B318E3: from_stack_1 = clsnotapedido.RecordCount
  loc_B318E8: ILdRf var_98
  loc_B318EB: LitI4 0
  loc_B318F0: GtI4
  loc_B318F1: BranchF loc_B31A73
  loc_B318F4: LitI2_Byte 1
  loc_B318F6: FLdPr Me
  loc_B318F9: MemStUI1
  loc_B318FD: ILdRf Me
  loc_B31900: CastAd
  loc_B31903: FStAdFunc var_9C
  loc_B31906: FLdRfVar var_9C
  loc_B31909: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B3190E: FFree1Ad var_9C
  loc_B31911: LitI4 0
  loc_B31916: LitI4 0
  loc_B3191B: FLdRfVar var_A0
  loc_B3191E: Redim
  loc_B31928: FLdPr Me
  loc_B3192B: VCallAd Control_ID_dgdABMS
  loc_B3192E: CVarAd
  loc_B31932: ParmAry1St
  loc_B31938: FLdRfVar var_A0
  loc_B3193B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B31940: FLdRfVar var_A0
  loc_B31943: Erase
  loc_B31944: LitVar_TRUE var_C0
  loc_B31947: PopAdLdVar
  loc_B31948: FLdPr Me
  loc_B3194B: VCallAd Control_ID_ItemCotizacionFlex
  loc_B3194E: FStAdFunc var_9C
  loc_B31951: FLdPr var_9C
  loc_B31954: LateIdSt
  loc_B31959: FFree1Ad var_9C
  loc_B3195C: ILdRf Me
  loc_B3195F: CastAd
  loc_B31962: FStAdFunc var_9C
  loc_B31965: FLdRfVar var_9C
  loc_B31968: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B3196D: FFree1Ad var_9C
  loc_B31970: FLdPr Me
  loc_B31973: VCallAd Control_ID_FechImpuMsk
  loc_B31976: FStAdFunc var_9C
  loc_B31979: FLdPr var_9C
  loc_B3197C: LateIdLdVar var_B0 DispID_11 -32767
  loc_B31983: PopAd
  loc_B31985: FLdPr Me
  loc_B31988: VCallAd Control_ID_FechImpuMsk
  loc_B3198B: FStAdFunc var_D4
  loc_B3198E: FLdPr var_D4
  loc_B31991: LateIdLdVar var_E4 DispID_15 0
  loc_B31998: PopAd
  loc_B3199A: FLdPr Me
  loc_B3199D: VCallAd Control_ID_FechImpuMsk
  loc_B319A0: FStAdFunc var_EC
  loc_B319A3: FLdPr var_EC
  loc_B319A6: LateIdLdVar var_FC DispID_11 -32767
  loc_B319AD: PopAd
  loc_B319AF: FLdPr Me
  loc_B319B2: VCallAd Control_ID_FechImpuMsk
  loc_B319B5: FStAdFunc var_100
  loc_B319B8: FLdPr var_100
  loc_B319BB: LateIdLdVar var_110 DispID_22 0
  loc_B319C2: CStrVarTmp
  loc_B319C3: CVarStr var_130
  loc_B319C6: FLdRfVar var_FC
  loc_B319C9: CStrVarTmp
  loc_B319CA: CVarStr var_120
  loc_B319CD: FLdRfVar var_B0
  loc_B319D0: CStrVarTmp
  loc_B319D1: FStStrNoPop var_90
  loc_B319D4: CDateStr
  loc_B319D6: FLdRfVar var_E4
  loc_B319D9: CStrVarTmp
  loc_B319DA: FStStrNoPop var_E8
  loc_B319DD: CDateStr
  loc_B319DF: GtR4
  loc_B319E0: CVarBoolI2 var_C0
  loc_B319E4: FLdRfVar var_140
  loc_B319E7: ImpAdCallFPR4  = IIf(, , )
  loc_B319EC: FLdRfVar var_140
  loc_B319EF: CStrVarTmp
  loc_B319F0: CVarStr var_150
  loc_B319F3: PopAdLdVar
  loc_B319F4: FLdPr Me
  loc_B319F7: VCallAd Control_ID_FechImpuMsk
  loc_B319FA: FStAdFunc var_154
  loc_B319FD: FLdPr var_154
  loc_B31A00: LateIdSt
  loc_B31A05: FFreeStr var_90 = ""
  loc_B31A0C: FFreeAd var_9C = "": var_D4 = "": var_EC = "": var_100 = ""
  loc_B31A19: FFreeVar var_B0 = "": var_E4 = "": var_FC = "": var_110 = "": var_C0 = "": var_120 = "": var_130 = "": var_140 = ""
  loc_B31A2E: LitI4 0
  loc_B31A33: LitI4 0
  loc_B31A38: FLdRfVar var_A0
  loc_B31A3B: Redim
  loc_B31A45: FLdPr Me
  loc_B31A48: VCallAd Control_ID_FechImpuMsk
  loc_B31A4B: CVarAd
  loc_B31A4F: ParmAry1St
  loc_B31A55: FLdRfVar var_A0
  loc_B31A58: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B31A5D: FLdRfVar var_A0
  loc_B31A60: Erase
  loc_B31A61: FLdPr Me
  loc_B31A64: VCallAd Control_ID_FechImpuMsk
  loc_B31A67: CVarAd
  loc_B31A6B: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_B31A70: FFree1Var var_B0 = ""
  loc_B31A73: Branch loc_B321B1
  loc_B31A76: ILdRf var_94
  loc_B31A79: LitStr "btnModificar"
  loc_B31A7C: EqStr
  loc_B31A7E: BranchF loc_B31A84
  loc_B31A81: Branch loc_B321B1
  loc_B31A84: ILdRf var_94
  loc_B31A87: LitStr "btnEliminar"
  loc_B31A8A: EqStr
  loc_B31A8C: BranchF loc_B31A92
  loc_B31A8F: Branch loc_B321B1
  loc_B31A92: ILdRf var_94
  loc_B31A95: LitStr "btnGuardar"
  loc_B31A98: EqStr
  loc_B31A9A: BranchF loc_B31FEA
  loc_B31A9D: LitStr vbNullString
  loc_B31AA0: FLdPr Me
  loc_B31AA3: MemStStrCopy
  loc_B31AA7: LitI2_Byte 0
  loc_B31AA9: PopTmpLdAd2 var_156
  loc_B31AAC: Call ItemCotizacionFlex_UnknownEvent_8()
  loc_B31AB1: FLdPr Me
  loc_B31AB4: MemLdStr global_72
  loc_B31AB7: LitStr vbNullString
  loc_B31ABA: NeStr
  loc_B31ABC: BranchF loc_B31AC0
  loc_B31ABF: ExitProcHresult
  loc_B31AC0: LitI2_Byte 0
  loc_B31AC2: PopTmpLdAd2 var_156
  loc_B31AC5: Call FechImpuMsk_UnknownEvent_8()
  loc_B31ACA: FLdPr Me
  loc_B31ACD: MemLdStr global_72
  loc_B31AD0: LitStr vbNullString
  loc_B31AD3: NeStr
  loc_B31AD5: BranchF loc_B31AD9
  loc_B31AD8: ExitProcHresult
  loc_B31AD9: FLdPr Me
  loc_B31ADC: MemLdUI1 global_68
  loc_B31AE0: FStUI1 var_158
  loc_B31AE4: FLdUI1
  loc_B31AE8: LitI2_Byte 1
  loc_B31AEA: EqI2
  loc_B31AEB: BranchF loc_B31FD8
  loc_B31AEE: LitI2_Byte 1
  loc_B31AF0: FLdPr Me
  loc_B31AF3: MemLdRfVar from_stack_1.global_76
  loc_B31AF6: FLdPr Me
  loc_B31AF9: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31AFC: FStAdFunc var_9C
  loc_B31AFF: FLdPr var_9C
  loc_B31B02: LateIdLdVar var_B0 DispID_4 0
  loc_B31B09: CI4Var
  loc_B31B0B: LitI4 1
  loc_B31B10: SubI4
  loc_B31B11: CI2I4
  loc_B31B12: FFree1Ad var_9C
  loc_B31B15: FFree1Var var_B0 = ""
  loc_B31B18: ForI2 var_15E
  loc_B31B1E: FLdPr Me
  loc_B31B21: MemLdI2 global_76
  loc_B31B24: CI4UI1
  loc_B31B25: CVarI4
  loc_B31B29: PopAdLdVar
  loc_B31B2A: LitVarI4
  loc_B31B32: PopAdLdVar
  loc_B31B33: FLdPr Me
  loc_B31B36: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31B39: FStAdFunc var_9C
  loc_B31B3C: FLdPr var_9C
  loc_B31B3F: LateIdCallLdVar
  loc_B31B49: CStrVarTmp
  loc_B31B4A: FStStrNoPop var_90
  loc_B31B4D: LitStr "0"
  loc_B31B50: NeStr
  loc_B31B52: FLdPr Me
  loc_B31B55: MemLdI2 global_76
  loc_B31B58: CI4UI1
  loc_B31B59: CVarI4
  loc_B31B5D: PopAdLdVar
  loc_B31B5E: LitVarI4
  loc_B31B66: PopAdLdVar
  loc_B31B67: FLdPr Me
  loc_B31B6A: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31B6D: FStAdFunc var_D4
  loc_B31B70: FLdPr var_D4
  loc_B31B73: LateIdCallLdVar
  loc_B31B7D: CStrVarTmp
  loc_B31B7E: FStStrNoPop var_E8
  loc_B31B81: LitStr "Si"
  loc_B31B84: EqStr
  loc_B31B86: AndI4
  loc_B31B87: FFreeStr var_90 = ""
  loc_B31B8E: FFreeAd var_9C = ""
  loc_B31B95: FFreeVar var_B0 = ""
  loc_B31B9C: BranchF loc_B31EB1
  loc_B31B9F: FLdPr Me
  loc_B31BA2: MemLdI2 global_76
  loc_B31BA5: CI4UI1
  loc_B31BA6: CVarI4
  loc_B31BAA: PopAdLdVar
  loc_B31BAB: LitVarI4
  loc_B31BB3: PopAdLdVar
  loc_B31BB4: FLdPr Me
  loc_B31BB7: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31BBA: FStAdFunc var_9C
  loc_B31BBD: FLdPr var_9C
  loc_B31BC0: LateIdCallLdVar
  loc_B31BCA: PopAd
  loc_B31BCC: FLdPr Me
  loc_B31BCF: MemLdI2 global_76
  loc_B31BD2: CI4UI1
  loc_B31BD3: CVarI4
  loc_B31BD7: PopAdLdVar
  loc_B31BD8: LitVarI4
  loc_B31BE0: PopAdLdVar
  loc_B31BE1: FLdPr Me
  loc_B31BE4: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31BE7: FStAdFunc var_D4
  loc_B31BEA: FLdPr var_D4
  loc_B31BED: LateIdCallLdVar
  loc_B31BF7: PopAd
  loc_B31BF9: FLdPr Me
  loc_B31BFC: MemLdI2 global_76
  loc_B31BFF: CI4UI1
  loc_B31C00: CVarI4
  loc_B31C04: PopAdLdVar
  loc_B31C05: LitVarI4
  loc_B31C0D: PopAdLdVar
  loc_B31C0E: FLdPr Me
  loc_B31C11: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31C14: FStAdFunc var_EC
  loc_B31C17: FLdPr var_EC
  loc_B31C1A: LateIdCallLdVar
  loc_B31C24: PopAd
  loc_B31C26: FLdPr Me
  loc_B31C29: MemLdI2 global_76
  loc_B31C2C: CI4UI1
  loc_B31C2D: CVarI4
  loc_B31C31: PopAdLdVar
  loc_B31C32: LitVarI4
  loc_B31C3A: PopAdLdVar
  loc_B31C3B: FLdPr Me
  loc_B31C3E: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31C41: FStAdFunc var_100
  loc_B31C44: FLdPr var_100
  loc_B31C47: LateIdCallLdVar
  loc_B31C51: PopAd
  loc_B31C53: FLdPr Me
  loc_B31C56: MemLdI2 global_76
  loc_B31C59: CI4UI1
  loc_B31C5A: CVarI4
  loc_B31C5E: PopAdLdVar
  loc_B31C5F: LitVarI4
  loc_B31C67: PopAdLdVar
  loc_B31C68: FLdPr Me
  loc_B31C6B: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31C6E: FStAdFunc var_154
  loc_B31C71: FLdPr var_154
  loc_B31C74: LateIdCallLdVar
  loc_B31C7E: PopAd
  loc_B31C80: FLdPr Me
  loc_B31C83: VCallAd Control_ID_FechImpuMsk
  loc_B31C86: FStAdFunc var_284
  loc_B31C89: FLdPr var_284
  loc_B31C8C: LateIdLdVar var_130 DispID_15 0
  loc_B31C93: PopAd
  loc_B31C95: FLdRfVar var_40C
  loc_B31C98: FLdRfVar var_2A0
  loc_B31C9B: LitVarStr var_29C, "ExpeImpu"
  loc_B31CA0: PopAdLdVar
  loc_B31CA1: FLdRfVar var_28C
  loc_B31CA4: FLdRfVar var_288
  loc_B31CA7: FLdPr Me
  loc_B31CAA: MemLdRfVar from_stack_1.global_52
  loc_B31CAD: NewIfNullPr clsnotapedido
  loc_B31CB0: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B31CB5: FLdPr var_288
  loc_B31CB8:  = Me.Fields
  loc_B31CBD: FLdPr var_28C
  loc_B31CC0: from_stack_2 = Me.Item(from_stack_1)
  loc_B31CC5: FLdPr var_2A0
  loc_B31CC8:  = Me.Value
  loc_B31CCD: FLdPr Me
  loc_B31CD0: MemLdI2 global_76
  loc_B31CD3: CI4UI1
  loc_B31CD4: CVarI4
  loc_B31CD8: PopAdLdVar
  loc_B31CD9: LitVarI4
  loc_B31CE1: PopAdLdVar
  loc_B31CE2: FLdPr Me
  loc_B31CE5: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31CE8: FStAdFunc var_2E4
  loc_B31CEB: FLdPr var_2E4
  loc_B31CEE: LateIdCallLdVar
  loc_B31CF8: PopAd
  loc_B31CFA: FLdPr Me
  loc_B31CFD: MemLdI2 global_76
  loc_B31D00: CI4UI1
  loc_B31D01: CVarI4
  loc_B31D05: PopAdLdVar
  loc_B31D06: LitVarI4
  loc_B31D0E: PopAdLdVar
  loc_B31D0F: FLdPr Me
  loc_B31D12: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31D15: FStAdFunc var_328
  loc_B31D18: FLdPr var_328
  loc_B31D1B: LateIdCallLdVar
  loc_B31D25: PopAd
  loc_B31D27: FLdPr Me
  loc_B31D2A: MemLdI2 global_76
  loc_B31D2D: CI4UI1
  loc_B31D2E: CVarI4
  loc_B31D32: PopAdLdVar
  loc_B31D33: LitVarI4
  loc_B31D3B: PopAdLdVar
  loc_B31D3C: FLdPr Me
  loc_B31D3F: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31D42: FStAdFunc var_36C
  loc_B31D45: FLdPr var_36C
  loc_B31D48: LateIdCallLdVar
  loc_B31D52: PopAd
  loc_B31D54: FLdRfVar var_42C
  loc_B31D57: FLdRfVar var_398
  loc_B31D5A: LitVarStr var_394, "CodiNope"
  loc_B31D5F: PopAdLdVar
  loc_B31D60: FLdRfVar var_384
  loc_B31D63: FLdRfVar var_380
  loc_B31D66: FLdPr Me
  loc_B31D69: MemLdRfVar from_stack_1.global_52
  loc_B31D6C: NewIfNullPr clsnotapedido
  loc_B31D6F: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B31D74: FLdPr var_380
  loc_B31D77:  = Me.Fields
  loc_B31D7C: FLdPr var_384
  loc_B31D7F: from_stack_2 = Me.Item(from_stack_1)
  loc_B31D84: FLdPr var_398
  loc_B31D87:  = Me.Value
  loc_B31D8C: FLdPr Me
  loc_B31D8F: MemLdI2 global_76
  loc_B31D92: CI4UI1
  loc_B31D93: CVarI4
  loc_B31D97: PopAdLdVar
  loc_B31D98: LitVarI4
  loc_B31DA0: PopAdLdVar
  loc_B31DA1: FLdPr Me
  loc_B31DA4: VCallAd Control_ID_ItemCotizacionFlex
  loc_B31DA7: FStAdFunc var_3DC
  loc_B31DAA: FLdPr var_3DC
  loc_B31DAD: LateIdCallLdVar
  loc_B31DB7: PopAd
  loc_B31DB9: FLdRfVar var_98
  loc_B31DBC: LitI2_Byte 0
  loc_B31DBE: LitI2_Byte 0
  loc_B31DC0: LitI2_Byte 0
  loc_B31DC2: LitI4 0
  loc_B31DC7: FLdRfVar var_3EC
  loc_B31DCA: CStrVarTmp
  loc_B31DCB: FStStrNoPop var_430
  loc_B31DCE: CI2Str
  loc_B31DD0: FLdRfVar var_42C
  loc_B31DD3: CI4Var
  loc_B31DD5: FLdRfVar var_37C
  loc_B31DD8: CStrVarTmp
  loc_B31DD9: FStStrNoPop var_41C
  loc_B31DDC: FLdRfVar var_150
  loc_B31DDF: CStrVarTmp
  loc_B31DE0: FStStrNoPop var_418
  loc_B31DE3: CR8Str
  loc_B31DE5: PopFPR8
  loc_B31DE6: FLdRfVar var_140
  loc_B31DE9: CStrVarTmp
  loc_B31DEA: FStStrNoPop var_414
  loc_B31DED: CR8Str
  loc_B31DEF: PopFPR8
  loc_B31DF0: LitI2_Byte 1
  loc_B31DF2: CR8I2
  loc_B31DF3: PopFPR8
  loc_B31DF4: FLdRfVar var_40C
  loc_B31DF7: CStrVarTmp
  loc_B31DF8: FStStrNoPop var_410
  loc_B31DFB: FLdRfVar var_130
  loc_B31DFE: CStrVarTmp
  loc_B31DFF: FStStrNoPop var_3FC
  loc_B31E02: FLdRfVar var_120
  loc_B31E05: CStrVarTmp
  loc_B31E06: FStStrNoPop var_3F8
  loc_B31E09: FLdRfVar var_110
  loc_B31E0C: CStrVarTmp
  loc_B31E0D: FStStrNoPop var_3F4
  loc_B31E10: CI4Str
  loc_B31E11: FLdRfVar var_FC
  loc_B31E14: CStrVarTmp
  loc_B31E15: FStStrNoPop var_3F0
  loc_B31E18: CI2Str
  loc_B31E1A: FLdRfVar var_E4
  loc_B31E1D: CStrVarTmp
  loc_B31E1E: FStStrNoPop var_E8
  loc_B31E21: FLdRfVar var_B0
  loc_B31E24: CStrVarTmp
  loc_B31E25: FStStrNoPop var_90
  loc_B31E28: FLdPr Me
  loc_B31E2B: MemLdRfVar from_stack_1.global_64
  loc_B31E2E: NewIfNullPr clsimputacion
  loc_B31E31: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B31E36: ILdRf var_98
  loc_B31E39: FStR4 var_8C
  loc_B31E3C: FFreeStr var_90 = "": var_E8 = "": var_3F0 = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_410 = "": var_414 = "": var_418 = "": var_41C = ""
  loc_B31E55: FFreeAd var_9C = "": var_D4 = "": var_EC = "": var_100 = "": var_154 = "": var_284 = "": var_288 = "": var_28C = "": var_2E4 = "": var_328 = "": var_36C = "": var_380 = "": var_384 = "": var_3DC = "": var_2A0 = ""
  loc_B31E78: FFreeVar var_B0 = "": var_E4 = "": var_FC = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_37C = "": var_3EC = "": var_40C = ""
  loc_B31E93: ILdRf var_8C
  loc_B31E96: LitI4 0
  loc_B31E9B: EqI4
  loc_B31E9C: BranchF loc_B31EAC
  loc_B31E9F: LitI4 0
  loc_B31EA4: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B31EA7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B31EAC: LitI2_Byte &HFF
  loc_B31EAE: FStI2 var_15A
  loc_B31EB1: FLdPr Me
  loc_B31EB4: MemLdRfVar from_stack_1.global_76
  loc_B31EB7: NextI2 var_15E, loc_B31B1E
  loc_B31EBC: FLdI2 var_15A
  loc_B31EBF: BranchF loc_B31FD5
  loc_B31EC2: FLdRfVar var_B0
  loc_B31EC5: FLdRfVar var_EC
  loc_B31EC8: LitVarStr var_C0, "ExpeImpu"
  loc_B31ECD: PopAdLdVar
  loc_B31ECE: FLdRfVar var_D4
  loc_B31ED1: FLdRfVar var_9C
  loc_B31ED4: FLdPr Me
  loc_B31ED7: MemLdRfVar from_stack_1.global_52
  loc_B31EDA: NewIfNullPr clsnotapedido
  loc_B31EDD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B31EE2: FLdPr var_9C
  loc_B31EE5:  = Me.Fields
  loc_B31EEA: FLdPr var_D4
  loc_B31EED: from_stack_2 = Me.Item(from_stack_1)
  loc_B31EF2: FLdPr var_EC
  loc_B31EF5:  = Me.Value
  loc_B31EFA: LitI2_Byte &HFF
  loc_B31EFC: PopTmpLdAd2 var_432
  loc_B31EFF: LitI2_Byte 0
  loc_B31F01: PopTmpLdAd2 var_156
  loc_B31F04: LitVarStr var_D0, "¿Imprime el Volante de Imputación del Expediente "
  loc_B31F09: FLdRfVar var_B0
  loc_B31F0C: ConcatVar var_E4
  loc_B31F10: LitVarStr var_170, "?"
  loc_B31F15: ConcatVar var_FC
  loc_B31F19: CStrVarVal var_90
  loc_B31F1D: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B31F22: CI4UI1
  loc_B31F23: LitI4 6
  loc_B31F28: EqI4
  loc_B31F29: FFree1Str var_90
  loc_B31F2C: FFreeAd var_9C = "": var_D4 = ""
  loc_B31F35: FFreeVar var_B0 = "": var_E4 = ""
  loc_B31F3E: BranchF loc_B31FD5
  loc_B31F41: ImpAdLdRf MemVar_C3D9BC
  loc_B31F44: NewIfNullAd
  loc_B31F47: FStAdNoPop
  loc_B31F4B: ImpAdLdRf MemVar_C44F9C
  loc_B31F4E: NewIfNullPr Me
  loc_B31F51: Me.Global.Load from_stack_1
  loc_B31F56: FFree1Ad var_9C
  loc_B31F59: FLdRfVar var_B0
  loc_B31F5C: FLdRfVar var_EC
  loc_B31F5F: LitVarStr var_C0, "ExpeImpu"
  loc_B31F64: PopAdLdVar
  loc_B31F65: FLdRfVar var_D4
  loc_B31F68: FLdRfVar var_9C
  loc_B31F6B: FLdPr Me
  loc_B31F6E: MemLdRfVar from_stack_1.global_52
  loc_B31F71: NewIfNullPr clsnotapedido
  loc_B31F74: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B31F79: FLdPr var_9C
  loc_B31F7C:  = Me.Fields
  loc_B31F81: FLdPr var_D4
  loc_B31F84: from_stack_2 = Me.Item(from_stack_1)
  loc_B31F89: FLdPr var_EC
  loc_B31F8C:  = Me.Value
  loc_B31F91: FLdRfVar var_B0
  loc_B31F94: CStrVarTmp
  loc_B31F95: FStStrNoPop var_90
  loc_B31F98: ImpAdLdRf MemVar_C3D9BC
  loc_B31F9B: NewIfNullPr rptVolantedeImputaciones
  loc_B31F9E: VCallAd Control_ID_cboExorImpu
  loc_B31FA1: FStAdFunc var_100
  loc_B31FA4: FLdPr var_100
  loc_B31FA7: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B31FAC: FFree1Str var_90
  loc_B31FAF: FFreeAd var_9C = "": var_D4 = "": var_EC = ""
  loc_B31FBA: FFree1Var var_B0 = ""
  loc_B31FBD: LitVar_Missing var_D0
  loc_B31FC0: PopAdLdVar
  loc_B31FC1: LitVarI4
  loc_B31FC9: PopAdLdVar
  loc_B31FCA: ImpAdLdRf MemVar_C3D9BC
  loc_B31FCD: NewIfNullPr rptVolantedeImputaciones
  loc_B31FD0: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B31FD5: Branch loc_B31FE2
  loc_B31FD8: FLdUI1
  loc_B31FDC: LitI2_Byte 2
  loc_B31FDE: EqI2
  loc_B31FDF: BranchF loc_B31FE2
  loc_B31FE2: Call cmdCancelar_Click()
  loc_B31FE7: Branch loc_B321B1
  loc_B31FEA: ILdRf var_94
  loc_B31FED: LitStr "btnCancelar"
  loc_B31FF0: EqStr
  loc_B31FF2: BranchF loc_B31FFD
  loc_B31FF5: Call cmdCancelar_Click()
  loc_B31FFA: Branch loc_B321B1
  loc_B31FFD: ILdRf var_94
  loc_B32000: LitStr "btnPrimero"
  loc_B32003: EqStr
  loc_B32005: BranchF loc_B32019
  loc_B32008: FLdPr Me
  loc_B3200B: MemLdRfVar from_stack_1.global_52
  loc_B3200E: NewIfNullPr clsnotapedido
  loc_B32011: Call clsnotapedido.MoveFirst()
  loc_B32016: Branch loc_B321B1
  loc_B32019: ILdRf var_94
  loc_B3201C: LitStr "btnAnterior"
  loc_B3201F: EqStr
  loc_B32021: BranchF loc_B32035
  loc_B32024: FLdPr Me
  loc_B32027: MemLdRfVar from_stack_1.global_52
  loc_B3202A: NewIfNullPr clsnotapedido
  loc_B3202D: Call clsnotapedido.MovePrevious()
  loc_B32032: Branch loc_B321B1
  loc_B32035: ILdRf var_94
  loc_B32038: LitStr "btnSiguiente"
  loc_B3203B: EqStr
  loc_B3203D: BranchF loc_B32051
  loc_B32040: FLdPr Me
  loc_B32043: MemLdRfVar from_stack_1.global_52
  loc_B32046: NewIfNullPr clsnotapedido
  loc_B32049: Call clsnotapedido.MoveNext()
  loc_B3204E: Branch loc_B321B1
  loc_B32051: ILdRf var_94
  loc_B32054: LitStr "btnUltimo"
  loc_B32057: EqStr
  loc_B32059: BranchF loc_B3206D
  loc_B3205C: FLdPr Me
  loc_B3205F: MemLdRfVar from_stack_1.global_52
  loc_B32062: NewIfNullPr clsnotapedido
  loc_B32065: Call clsnotapedido.MoveLast()
  loc_B3206A: Branch loc_B321B1
  loc_B3206D: ILdRf var_94
  loc_B32070: LitStr "btnFiltrar"
  loc_B32073: EqStr
  loc_B32075: BranchF loc_B3207B
  loc_B32078: Branch loc_B321B1
  loc_B3207B: ILdRf var_94
  loc_B3207E: LitStr "btnBuscar"
  loc_B32081: EqStr
  loc_B32083: BranchF loc_B32089
  loc_B32086: Branch loc_B321B1
  loc_B32089: ILdRf var_94
  loc_B3208C: LitStr "btnImprimir"
  loc_B3208F: EqStr
  loc_B32091: BranchF loc_B3215A
  loc_B32094: ImpAdLdRf MemVar_C3D9BC
  loc_B32097: NewIfNullAd
  loc_B3209A: CastAd
  loc_B3209D: FStAdFuncNoPop
  loc_B320A0: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B320A5: FFree1Ad var_9C
  loc_B320A8: FLdRfVar var_98
  loc_B320AB: FLdPr Me
  loc_B320AE: MemLdRfVar from_stack_1.global_52
  loc_B320B1: NewIfNullPr clsnotapedido
  loc_B320B4: from_stack_1 = clsnotapedido.RecordCount
  loc_B320B9: FLdRfVar var_EC
  loc_B320BC: LitVarStr var_C0, "ExpeImpu"
  loc_B320C1: PopAdLdVar
  loc_B320C2: FLdRfVar var_D4
  loc_B320C5: FLdRfVar var_9C
  loc_B320C8: FLdPr Me
  loc_B320CB: MemLdRfVar from_stack_1.global_52
  loc_B320CE: NewIfNullPr clsnotapedido
  loc_B320D1: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B320D6: FLdPr var_9C
  loc_B320D9:  = Me.Fields
  loc_B320DE: FLdPr var_D4
  loc_B320E1: from_stack_2 = Me.Item(from_stack_1)
  loc_B320E6: LitVarStr var_170, vbNullString
  loc_B320EB: FStVarCopyObj var_E4
  loc_B320EE: FLdRfVar var_E4
  loc_B320F1: FLdZeroAd var_EC
  loc_B320F4: CVarAd
  loc_B320F8: ILdRf var_98
  loc_B320FB: LitI4 0
  loc_B32100: GtI4
  loc_B32101: CVarBoolI2 var_D0
  loc_B32105: FLdRfVar var_FC
  loc_B32108: ImpAdCallFPR4  = IIf(, , )
  loc_B3210D: FLdRfVar var_FC
  loc_B32110: CStrVarVal var_90
  loc_B32114: ImpAdLdRf MemVar_C3D9BC
  loc_B32117: NewIfNullPr rptVolantedeImputaciones
  loc_B3211A: VCallAd Control_ID_cboExorImpu
  loc_B3211D: FStAdFunc var_100
  loc_B32120: FLdPr var_100
  loc_B32123: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B32128: FFree1Str var_90
  loc_B3212B: FFreeAd var_9C = "": var_D4 = ""
  loc_B32134: FFreeVar var_D0 = "": var_B0 = "": var_E4 = ""
  loc_B3213F: LitVar_Missing var_D0
  loc_B32142: PopAdLdVar
  loc_B32143: LitVarI4
  loc_B3214B: PopAdLdVar
  loc_B3214C: ImpAdLdRf MemVar_C3D9BC
  loc_B3214F: NewIfNullPr rptVolantedeImputaciones
  loc_B32152: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B32157: Branch loc_B321B1
  loc_B3215A: ILdRf var_94
  loc_B3215D: LitStr "btnAyuda"
  loc_B32160: EqStr
  loc_B32162: BranchF loc_B32191
  loc_B32165: LitVar_Missing var_110
  loc_B32168: LitVar_Missing var_FC
  loc_B3216B: LitVar_Missing var_E4
  loc_B3216E: LitI4 0
  loc_B32173: LitVarStr var_C0, "Opcion no disponible en esta version."
  loc_B32178: FStVarCopyObj var_B0
  loc_B3217B: FLdRfVar var_B0
  loc_B3217E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B32183: FFreeVar var_B0 = "": var_E4 = "": var_FC = ""
  loc_B3218E: Branch loc_B321B1
  loc_B32191: ILdRf var_94
  loc_B32194: LitStr "btnSalir"
  loc_B32197: EqStr
  loc_B32199: BranchF loc_B321B1
  loc_B3219C: ILdRf Me
  loc_B3219F: FStAdNoPop
  loc_B321A3: ImpAdLdRf MemVar_C44F9C
  loc_B321A6: NewIfNullPr Me
  loc_B321A9: Me.Global.Unload from_stack_1
  loc_B321AE: FFree1Ad var_9C
  loc_B321B1: ExitProcHresult
  loc_B321B2: FLdPr tlbABMS_ButtonClick801
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '951ED0
  'Data Table: 47EEC0
  loc_951EBC: FLdPr Me
  loc_951EBF: VCallAd Control_ID_FiltroMsk
  loc_951EC2: CVarAd
  loc_951EC6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951ECB: FFree1Var var_94 = ""
  loc_951ECE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A37D50
  'Data Table: 47EEC0
  loc_A37B3C: ILdRf Me
  loc_A37B3F: CastAd
  loc_A37B42: FStAdFunc var_88
  loc_A37B45: FLdRfVar var_88
  loc_A37B48: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A37B4D: FFree1Ad var_88
  loc_A37B50: FLdPr Me
  loc_A37B53: VCallAd Control_ID_FiltroMsk
  loc_A37B56: FStAdFunc var_88
  loc_A37B59: FLdPr var_88
  loc_A37B5C: LateIdLdVar var_98 DispID_22 0
  loc_A37B63: CStrVarTmp
  loc_A37B64: FStStrNoPop var_9C
  loc_A37B67: ImpAdCallI2 Trim$()
  loc_A37B6C: FStStrNoPop var_A0
  loc_A37B6F: LitStr vbNullString
  loc_A37B72: NeStr
  loc_A37B74: FFreeStr var_9C = ""
  loc_A37B7B: FFree1Ad var_88
  loc_A37B7E: FFree1Var var_98 = ""
  loc_A37B81: BranchF loc_A37C2D
  loc_A37B84: FLdRfVar var_A2
  loc_A37B87: FLdPr Me
  loc_A37B8A: VCallAd Control_ID_FiltroCbo
  loc_A37B8D: FStAdFunc var_88
  loc_A37B90: FLdPr var_88
  loc_A37B93:  = Me.ListIndex
  loc_A37B98: FLdI2 var_A2
  loc_A37B9B: LitI2_Byte 0
  loc_A37B9D: EqI2
  loc_A37B9E: FFree1Ad var_88
  loc_A37BA1: BranchF loc_A37C2A
  loc_A37BA4: LitStr "CodiNope = "
  loc_A37BA7: FLdPr Me
  loc_A37BAA: VCallAd Control_ID_FiltroMsk
  loc_A37BAD: FStAdFunc var_88
  loc_A37BB0: FLdPr var_88
  loc_A37BB3: LateIdLdVar var_98 DispID_22 0
  loc_A37BBA: CStrVarTmp
  loc_A37BBB: FStStrNoPop var_9C
  loc_A37BBE: ConcatStr
  loc_A37BBF: PopTmpLdAdStr
  loc_A37BC3: FLdPr Me
  loc_A37BC6: MemLdRfVar from_stack_1.global_52
  loc_A37BC9: NewIfNullPr clsnotapedido
  loc_A37BCC: Call clsnotapedido.Filter(from_stack_1v)
  loc_A37BD1: FFreeStr var_9C = ""
  loc_A37BD8: FFree1Ad var_88
  loc_A37BDB: FFree1Var var_98 = ""
  loc_A37BDE: LitStr "CodiNope"
  loc_A37BE1: FStStrCopy var_9C
  loc_A37BE4: FLdRfVar var_9C
  loc_A37BE7: FLdPr Me
  loc_A37BEA: MemLdRfVar from_stack_1.global_52
  loc_A37BED: NewIfNullPr clsnotapedido
  loc_A37BF0: Call clsnotapedido.Sort(from_stack_1v)
  loc_A37BF5: FFree1Str var_9C
  loc_A37BF8: LitStr "Nota de Pedido sea igual a: "
  loc_A37BFB: FLdPr Me
  loc_A37BFE: VCallAd Control_ID_FiltroMsk
  loc_A37C01: FStAdFunc var_88
  loc_A37C04: FLdPr var_88
  loc_A37C07: LateIdLdVar var_98 DispID_22 0
  loc_A37C0E: CStrVarTmp
  loc_A37C0F: FStStrNoPop var_9C
  loc_A37C12: ConcatStr
  loc_A37C13: FStStrNoPop var_A0
  loc_A37C16: FLdPr Me
  loc_A37C19: MemStStrCopy
  loc_A37C1D: FFreeStr var_9C = ""
  loc_A37C24: FFree1Ad var_88
  loc_A37C27: FFree1Var var_98 = ""
  loc_A37C2A: Branch loc_A37C51
  loc_A37C2D: LitStr vbNullString
  loc_A37C30: FStStrCopy var_9C
  loc_A37C33: FLdRfVar var_9C
  loc_A37C36: FLdPr Me
  loc_A37C39: MemLdRfVar from_stack_1.global_52
  loc_A37C3C: NewIfNullPr clsnotapedido
  loc_A37C3F: Call clsnotapedido.Filter(from_stack_1v)
  loc_A37C44: FFree1Str var_9C
  loc_A37C47: LitStr vbNullString
  loc_A37C4A: FLdPr Me
  loc_A37C4D: MemStStrCopy
  loc_A37C51: FLdRfVar var_A8
  loc_A37C54: FLdPr Me
  loc_A37C57: MemLdRfVar from_stack_1.global_52
  loc_A37C5A: NewIfNullPr clsnotapedido
  loc_A37C5D: from_stack_1 = clsnotapedido.RecordCount
  loc_A37C62: ILdRf var_A8
  loc_A37C65: LitI4 0
  loc_A37C6A: GtI4
  loc_A37C6B: BranchF loc_A37D09
  loc_A37C6E: FLdPr Me
  loc_A37C71: MemLdRfVar from_stack_1.global_52
  loc_A37C74: NewIfNullAd
  loc_A37C77: FStAd var_AC 
  loc_A37C7B: FLdRfVar var_AC
  loc_A37C7E: CVarRef
  loc_A37C83: ILdRf Me
  loc_A37C86: CastAd
  loc_A37C89: FStAdFunc var_88
  loc_A37C8C: FLdRfVar var_88
  loc_A37C8F: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A37C94: ILdRf var_AC
  loc_A37C97: CastAd
  loc_A37C9A: FLdPr Me
  loc_A37C9D: MemStAdFunc
  loc_A37CA1: FFreeAd var_88 = ""
  loc_A37CA8: LitI4 0
  loc_A37CAD: LitI4 1
  loc_A37CB2: FLdRfVar var_C0
  loc_A37CB5: Redim
  loc_A37CBF: FLdPr Me
  loc_A37CC2: MemLdRfVar from_stack_1.global_52
  loc_A37CC5: NewIfNullAd
  loc_A37CC8: FStAd var_88 
  loc_A37CCC: FLdRfVar var_88
  loc_A37CCF: CVarRef
  loc_A37CD4: ParmAry1St
  loc_A37CDA: FLdPr Me
  loc_A37CDD: VCallAd Control_ID_dgdABMS
  loc_A37CE0: CVarAd
  loc_A37CE4: ParmAry1St
  loc_A37CEA: FLdRfVar var_C0
  loc_A37CED: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A37CF2: ILdRf var_88
  loc_A37CF5: CastAd
  loc_A37CF8: FLdPr Me
  loc_A37CFB: MemStAdFunc
  loc_A37CFF: FLdRfVar var_C0
  loc_A37D02: Erase
  loc_A37D03: FFree1Ad var_88
  loc_A37D06: Branch loc_A37D1D
  loc_A37D09: ILdRf Me
  loc_A37D0C: CastAd
  loc_A37D0F: FStAdFunc var_88
  loc_A37D12: FLdRfVar var_88
  loc_A37D15: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A37D1A: FFree1Ad var_88
  loc_A37D1D: FLdPr Me
  loc_A37D20: VCallAd Control_ID_dgdABMS
  loc_A37D23: FStAdFunc var_AC
  loc_A37D26: LitI4 0
  loc_A37D2B: FStStrCopy var_9C
  loc_A37D2E: FLdRfVar var_9C
  loc_A37D31: FLdPr Me
  loc_A37D34: MemLdStr global_80
  loc_A37D37: FLdZeroAd var_AC
  loc_A37D3A: FStAdFunc var_88
  loc_A37D3D: FLdRfVar var_88
  loc_A37D40: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A37D45: FFree1Str var_9C
  loc_A37D48: FFreeAd var_88 = ""
  loc_A37D4F: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '998F24
  'Data Table: 47EEC0
  loc_998EC0: ILdI2 KeyAscii
  loc_998EC3: LitI2_Byte &H27
  loc_998EC5: EqI2
  loc_998EC6: BranchF loc_998ECE
  loc_998EC9: LitI2_Byte 0
  loc_998ECB: IStI2 KeyAscii
  loc_998ECE: FLdRfVar var_88
  loc_998ED1: FLdPr Me
  loc_998ED4: MemLdRfVar from_stack_1.global_52
  loc_998ED7: NewIfNullPr clsnotapedido
  loc_998EDA: from_stack_1 = clsnotapedido.RecordCount
  loc_998EDF: ILdRf var_88
  loc_998EE2: LitI4 0
  loc_998EE7: EqI4
  loc_998EE8: ILdI2 KeyAscii
  loc_998EEB: CI4UI1
  loc_998EEC: LitI4 8
  loc_998EF1: NeI4
  loc_998EF2: AndI4
  loc_998EF3: FLdPr Me
  loc_998EF6: VCallAd Control_ID_FiltroMsk
  loc_998EF9: FStAdFunc var_8C
  loc_998EFC: FLdPr var_8C
  loc_998EFF: LateIdLdVar var_9C DispID_16 0
  loc_998F06: CStrVarTmp
  loc_998F07: FStStrNoPop var_A0
  loc_998F0A: LitStr vbNullString
  loc_998F0D: EqStr
  loc_998F0F: AndI4
  loc_998F10: FFree1Str var_A0
  loc_998F13: FFree1Ad var_8C
  loc_998F16: FFree1Var var_9C = ""
  loc_998F19: BranchF loc_998F21
  loc_998F1C: LitI2_Byte 0
  loc_998F1E: IStI2 KeyAscii
  loc_998F21: ExitProcHresult
  loc_998F22: ILdPr
End Sub

Private Sub cmdCancelar_Click() 'A1D3F0
  'Data Table: 47EEC0
  loc_A1D260: LitI2_Byte 0
  loc_A1D262: CUI1I2
  loc_A1D264: FLdPr Me
  loc_A1D267: MemStUI1
  loc_A1D26B: ILdRf Me
  loc_A1D26E: CastAd
  loc_A1D271: FStAdFunc var_88
  loc_A1D274: FLdRfVar var_88
  loc_A1D277: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A1D27C: FFree1Ad var_88
  loc_A1D27F: LitI4 0
  loc_A1D284: LitI4 0
  loc_A1D289: FLdRfVar var_8C
  loc_A1D28C: Redim
  loc_A1D296: FLdPr Me
  loc_A1D299: VCallAd Control_ID_dgdABMS
  loc_A1D29C: CVarAd
  loc_A1D2A0: ParmAry1St
  loc_A1D2A6: FLdRfVar var_8C
  loc_A1D2A9: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A1D2AE: FLdRfVar var_8C
  loc_A1D2B1: Erase
  loc_A1D2B2: LitI4 0
  loc_A1D2B7: LitI4 0
  loc_A1D2BC: FLdRfVar var_8C
  loc_A1D2BF: Redim
  loc_A1D2C9: FLdPr Me
  loc_A1D2CC: VCallAd Control_ID_ItemCotizacionFlex
  loc_A1D2CF: CVarAd
  loc_A1D2D3: ParmAry1St
  loc_A1D2D9: FLdRfVar var_8C
  loc_A1D2DC: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A1D2E1: FLdRfVar var_8C
  loc_A1D2E4: Erase
  loc_A1D2E5: FLdPr Me
  loc_A1D2E8: MemLdRfVar from_stack_1.global_52
  loc_A1D2EB: NewIfNullAd
  loc_A1D2EE: FStAd var_A0 
  loc_A1D2F2: FLdRfVar var_A0
  loc_A1D2F5: CVarRef
  loc_A1D2FA: ILdRf Me
  loc_A1D2FD: CastAd
  loc_A1D300: FStAdFunc var_88
  loc_A1D303: FLdRfVar var_88
  loc_A1D306: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A1D30B: ILdRf var_A0
  loc_A1D30E: CastAd
  loc_A1D311: FLdPr Me
  loc_A1D314: MemStAdFunc
  loc_A1D318: FFreeAd var_88 = ""
  loc_A1D31F: ILdRf Me
  loc_A1D322: CastAd
  loc_A1D325: FStAdFunc var_88
  loc_A1D328: FLdRfVar var_88
  loc_A1D32B: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A1D330: FFree1Ad var_88
  loc_A1D333: FLdPr Me
  loc_A1D336: MemLdRfVar from_stack_1.global_52
  loc_A1D339: NewIfNullPr clsnotapedido
  loc_A1D33C: Call clsnotapedido.Requery()
  loc_A1D341: FLdPr Me
  loc_A1D344: MemLdStr global_80
  loc_A1D347: LitStr vbNullString
  loc_A1D34A: NeStr
  loc_A1D34C: BranchF loc_A1D3A4
  loc_A1D34F: LitStr "Filtro: "
  loc_A1D352: FLdPr Me
  loc_A1D355: MemLdStr global_80
  loc_A1D358: ConcatStr
  loc_A1D359: FStStrNoPop var_B4
  loc_A1D35C: LitStr " - Registro/s: "
  loc_A1D35F: ConcatStr
  loc_A1D360: FStStrNoPop var_BC
  loc_A1D363: FLdRfVar var_B8
  loc_A1D366: FLdPr Me
  loc_A1D369: MemLdRfVar from_stack_1.global_52
  loc_A1D36C: NewIfNullPr clsnotapedido
  loc_A1D36F: from_stack_1 = clsnotapedido.RecordCount
  loc_A1D374: ILdRf var_B8
  loc_A1D377: CStrI4
  loc_A1D379: FStStrNoPop var_C0
  loc_A1D37C: ConcatStr
  loc_A1D37D: CVarStr var_9C
  loc_A1D380: PopAdLdVar
  loc_A1D381: FLdPr Me
  loc_A1D384: VCallAd Control_ID_dgdABMS
  loc_A1D387: FStAdFunc var_88
  loc_A1D38A: FLdPr var_88
  loc_A1D38D: LateIdSt
  loc_A1D392: FFreeStr var_B4 = "": var_BC = ""
  loc_A1D39B: FFree1Ad var_88
  loc_A1D39E: FFree1Var var_9C = ""
  loc_A1D3A1: Branch loc_A1D3DF
  loc_A1D3A4: LitStr "Registro/s: "
  loc_A1D3A7: FLdRfVar var_B8
  loc_A1D3AA: FLdPr Me
  loc_A1D3AD: MemLdRfVar from_stack_1.global_52
  loc_A1D3B0: NewIfNullPr clsnotapedido
  loc_A1D3B3: from_stack_1 = clsnotapedido.RecordCount
  loc_A1D3B8: ILdRf var_B8
  loc_A1D3BB: CStrI4
  loc_A1D3BD: FStStrNoPop var_B4
  loc_A1D3C0: ConcatStr
  loc_A1D3C1: CVarStr var_9C
  loc_A1D3C4: PopAdLdVar
  loc_A1D3C5: FLdPr Me
  loc_A1D3C8: VCallAd Control_ID_dgdABMS
  loc_A1D3CB: FStAdFunc var_88
  loc_A1D3CE: FLdPr var_88
  loc_A1D3D1: LateIdSt
  loc_A1D3D6: FFree1Str var_B4
  loc_A1D3D9: FFree1Ad var_88
  loc_A1D3DC: FFree1Var var_9C = ""
  loc_A1D3DF: LitI2_Byte 0
  loc_A1D3E1: LitVarI2 var_9C, 0
  loc_A1D3E6: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A1D3EB: FFree1Var var_9C = ""
  loc_A1D3EE: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '99475C
  'Data Table: 47EEC0
  loc_994700: LitVarStr var_94, vbNullString
  loc_994705: PopAdLdVar
  loc_994706: FLdPr Me
  loc_994709: VCallAd Control_ID_FiltroMsk
  loc_99470C: FStAdFunc var_A8
  loc_99470F: FLdPr var_A8
  loc_994712: LateIdSt
  loc_994717: FFree1Ad var_A8
  loc_99471A: FLdRfVar var_AA
  loc_99471D: FLdPr Me
  loc_994720: VCallAd Control_ID_FiltroCbo
  loc_994723: FStAdFunc var_A8
  loc_994726: FLdPr var_A8
  loc_994729:  = Me.ListIndex
  loc_99472E: FLdI2 var_AA
  loc_994731: FStI2 var_AC
  loc_994734: FFree1Ad var_A8
  loc_994737: FLdI2 var_AC
  loc_99473A: LitI2_Byte 0
  loc_99473C: EqI2
  loc_99473D: BranchF loc_99475A
  loc_994740: LitVarStr var_94, "########"
  loc_994745: PopAdLdVar
  loc_994746: FLdPr Me
  loc_994749: VCallAd Control_ID_FiltroMsk
  loc_99474C: FStAdFunc var_A8
  loc_99474F: FLdPr var_A8
  loc_994752: LateIdSt
  loc_994757: FFree1Ad var_A8
  loc_99475A: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_UnknownEvent_0 '93F70C
  'Data Table: 47EEC0
  loc_93F708: ExitProcHresult
  loc_93F709: PopTmpLdAd8 ItemCotizacionFlex_UnknownEvent_025
End Sub

Private Sub ItemCotizacionFlex_UnknownEvent_1 '93F740
  'Data Table: 47EEC0
  loc_93F73C: ExitProcHresult
  loc_93F73D: EqCyR8
  loc_93F73E: MulI4
End Sub

Private Sub ItemCotizacionFlex_UnknownEvent_8 'B83D30
  'Data Table: 47EEC0
  loc_B82FD8: FLdRfVar var_8A
  loc_B82FDB: FLdPr Me
  loc_B82FDE: VCallAd Control_ID_cmdCancelar
  loc_B82FE1: FStAdFunc var_88
  loc_B82FE4: FLdPr var_88
  loc_B82FE7:  = Me.Value
  loc_B82FEC: FLdI2 var_8A
  loc_B82FEF: NotI4
  loc_B82FF0: FFree1Ad var_88
  loc_B82FF3: BranchF loc_B83D2E
  loc_B82FF6: LitI2_Byte 1
  loc_B82FF8: FLdRfVar var_96
  loc_B82FFB: FLdPr Me
  loc_B82FFE: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83001: FStAdFunc var_88
  loc_B83004: FLdPr var_88
  loc_B83007: LateIdLdVar var_A8 DispID_4 0
  loc_B8300E: CI4Var
  loc_B83010: LitI4 1
  loc_B83015: SubI4
  loc_B83016: CI2I4
  loc_B83017: FFree1Ad var_88
  loc_B8301A: FFree1Var var_A8 = ""
  loc_B8301D: ForI2 var_AC
  loc_B83023: FLdI2 var_96
  loc_B83026: CI4UI1
  loc_B83027: CVarI4
  loc_B8302B: PopAdLdVar
  loc_B8302C: LitVarI4
  loc_B83034: PopAdLdVar
  loc_B83035: FLdPr Me
  loc_B83038: VCallAd Control_ID_ItemCotizacionFlex
  loc_B8303B: FStAdFunc var_88
  loc_B8303E: FLdPr var_88
  loc_B83041: LateIdCallLdVar
  loc_B8304B: CStrVarTmp
  loc_B8304C: FStStrNoPop var_F0
  loc_B8304F: LitStr "0"
  loc_B83052: NeStr
  loc_B83054: FFree1Str var_F0
  loc_B83057: FFree1Ad var_88
  loc_B8305A: FFree1Var var_A8 = ""
  loc_B8305D: BranchF loc_B83D26
  loc_B83060: FLdI2 var_96
  loc_B83063: CI4UI1
  loc_B83064: CVarI4
  loc_B83068: PopAdLdVar
  loc_B83069: LitVarI4
  loc_B83071: PopAdLdVar
  loc_B83072: FLdPr Me
  loc_B83075: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83078: FStAdFunc var_88
  loc_B8307B: FLdPr var_88
  loc_B8307E: LateIdCallLdVar
  loc_B83088: PopAd
  loc_B8308A: FLdRfVar var_F0
  loc_B8308D: FLdPr Me
  loc_B83090:  = Me.Name
  loc_B83095: FLdPr Me
  loc_B83098: MemLdRfVar from_stack_1.global_88
  loc_B8309B: NewIfNullRf
  loc_B8309F: ILdRf var_F0
  loc_B830A2: LitI2_Byte 0
  loc_B830A4: FLdRfVar var_A8
  loc_B830A7: CStrVarTmp
  loc_B830A8: FStStrNoPop var_F4
  loc_B830AB: ImpAdLdI2 MemVar_C3D064
  loc_B830AE: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B830B3: FStStrNoPop var_F8
  loc_B830B6: FLdPr Me
  loc_B830B9: MemStStrCopy
  loc_B830BD: FFreeStr var_F4 = "": var_F0 = ""
  loc_B830C6: FFree1Ad var_88
  loc_B830C9: FFree1Var var_A8 = ""
  loc_B830CC: FLdPr Me
  loc_B830CF: MemLdStr global_72
  loc_B830D2: LitStr vbNullString
  loc_B830D5: NeStr
  loc_B830D7: BranchF loc_B83144
  loc_B830DA: LitI4 0
  loc_B830DF: LitStr "Item "
  loc_B830E2: FLdI2 var_96
  loc_B830E5: CStrUI1
  loc_B830E7: FStStrNoPop var_F0
  loc_B830EA: ConcatStr
  loc_B830EB: FStStrNoPop var_F4
  loc_B830EE: LitStr ": "
  loc_B830F1: ConcatStr
  loc_B830F2: FStStrNoPop var_F8
  loc_B830F5: FLdPr Me
  loc_B830F8: MemLdStr global_72
  loc_B830FB: ConcatStr
  loc_B830FC: FStStrNoPop var_FC
  loc_B830FF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B83104: FFreeStr var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B8310F: FLdI2 var_96
  loc_B83112: CI4UI1
  loc_B83113: CVarI4
  loc_B83117: PopAdLdVar
  loc_B83118: LitVarI4
  loc_B83120: PopAdLdVar
  loc_B83121: LitVarStr var_10C, "No"
  loc_B83126: PopAdLdVar
  loc_B83127: FLdPr Me
  loc_B8312A: VCallAd Control_ID_ItemCotizacionFlex
  loc_B8312D: FStAdFunc var_88
  loc_B83130: FLdPr var_88
  loc_B83133: LateIdCallSt
  loc_B8313B: FFree1Ad var_88
  loc_B8313E: Branch loc_B83D26
  loc_B83141: Branch loc_B83173
  loc_B83144: FLdI2 var_96
  loc_B83147: CI4UI1
  loc_B83148: CVarI4
  loc_B8314C: PopAdLdVar
  loc_B8314D: LitVarI4
  loc_B83155: PopAdLdVar
  loc_B83156: LitVarStr var_10C, "Si"
  loc_B8315B: PopAdLdVar
  loc_B8315C: FLdPr Me
  loc_B8315F: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83162: FStAdFunc var_88
  loc_B83165: FLdPr var_88
  loc_B83168: LateIdCallSt
  loc_B83170: FFree1Ad var_88
  loc_B83173: FLdI2 var_96
  loc_B83176: CI4UI1
  loc_B83177: CVarI4
  loc_B8317B: PopAdLdVar
  loc_B8317C: LitVarI4
  loc_B83184: PopAdLdVar
  loc_B83185: FLdPr Me
  loc_B83188: VCallAd Control_ID_ItemCotizacionFlex
  loc_B8318B: FStAdFunc var_88
  loc_B8318E: FLdPr var_88
  loc_B83191: LateIdCallLdVar
  loc_B8319B: PopAd
  loc_B8319D: FLdRfVar var_F0
  loc_B831A0: FLdPr Me
  loc_B831A3:  = Me.Name
  loc_B831A8: FLdPr Me
  loc_B831AB: MemLdRfVar from_stack_1.global_92
  loc_B831AE: NewIfNullRf
  loc_B831B2: ILdRf var_F0
  loc_B831B5: FLdRfVar var_A8
  loc_B831B8: CStrVarTmp
  loc_B831B9: FStStrNoPop var_F4
  loc_B831BC: ImpAdLdI2 MemVar_C3D064
  loc_B831BF: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B831C4: FStStrNoPop var_F8
  loc_B831C7: FLdPr Me
  loc_B831CA: MemStStrCopy
  loc_B831CE: FFreeStr var_F4 = "": var_F0 = ""
  loc_B831D7: FFree1Ad var_88
  loc_B831DA: FFree1Var var_A8 = ""
  loc_B831DD: FLdPr Me
  loc_B831E0: MemLdStr global_72
  loc_B831E3: LitStr vbNullString
  loc_B831E6: NeStr
  loc_B831E8: BranchF loc_B83255
  loc_B831EB: LitI4 0
  loc_B831F0: LitStr "Item "
  loc_B831F3: FLdI2 var_96
  loc_B831F6: CStrUI1
  loc_B831F8: FStStrNoPop var_F0
  loc_B831FB: ConcatStr
  loc_B831FC: FStStrNoPop var_F4
  loc_B831FF: LitStr ": "
  loc_B83202: ConcatStr
  loc_B83203: FStStrNoPop var_F8
  loc_B83206: FLdPr Me
  loc_B83209: MemLdStr global_72
  loc_B8320C: ConcatStr
  loc_B8320D: FStStrNoPop var_FC
  loc_B83210: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B83215: FFreeStr var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B83220: FLdI2 var_96
  loc_B83223: CI4UI1
  loc_B83224: CVarI4
  loc_B83228: PopAdLdVar
  loc_B83229: LitVarI4
  loc_B83231: PopAdLdVar
  loc_B83232: LitVarStr var_10C, "No"
  loc_B83237: PopAdLdVar
  loc_B83238: FLdPr Me
  loc_B8323B: VCallAd Control_ID_ItemCotizacionFlex
  loc_B8323E: FStAdFunc var_88
  loc_B83241: FLdPr var_88
  loc_B83244: LateIdCallSt
  loc_B8324C: FFree1Ad var_88
  loc_B8324F: Branch loc_B83D26
  loc_B83252: Branch loc_B83284
  loc_B83255: FLdI2 var_96
  loc_B83258: CI4UI1
  loc_B83259: CVarI4
  loc_B8325D: PopAdLdVar
  loc_B8325E: LitVarI4
  loc_B83266: PopAdLdVar
  loc_B83267: LitVarStr var_10C, "Si"
  loc_B8326C: PopAdLdVar
  loc_B8326D: FLdPr Me
  loc_B83270: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83273: FStAdFunc var_88
  loc_B83276: FLdPr var_88
  loc_B83279: LateIdCallSt
  loc_B83281: FFree1Ad var_88
  loc_B83284: FLdPr Me
  loc_B83287: VCallAd Control_ID_FechImpuMsk
  loc_B8328A: FStAdFunc var_88
  loc_B8328D: FLdPr var_88
  loc_B83290: LateIdLdVar var_A8 DispID_15 0
  loc_B83297: PopAd
  loc_B83299: FLdPr Me
  loc_B8329C: VCallAd Control_ID_FechImpuMsk
  loc_B8329F: FStAdFunc var_120
  loc_B832A2: FLdPr var_120
  loc_B832A5: LateIdLdVar var_130 DispID_11 -32767
  loc_B832AC: PopAd
  loc_B832AE: FLdPr Me
  loc_B832B1: VCallAd Control_ID_FechImpuMsk
  loc_B832B4: FStAdFunc var_138
  loc_B832B7: LitI2_Byte &HFF
  loc_B832B9: PopTmpLdAd2 var_8A
  loc_B832BC: FLdZeroAd var_138
  loc_B832BF: FStAdFunc var_134
  loc_B832C2: FLdRfVar var_134
  loc_B832C5: FLdRfVar var_130
  loc_B832C8: CStrVarTmp
  loc_B832C9: FStStrNoPop var_F4
  loc_B832CC: LitI2_Byte &HFF
  loc_B832CE: LitI2_Byte &HFF
  loc_B832D0: FLdRfVar var_A8
  loc_B832D3: CStrVarTmp
  loc_B832D4: FStStrNoPop var_F0
  loc_B832D7: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_B832DC: FStStrNoPop var_F8
  loc_B832DF: FLdPr Me
  loc_B832E2: MemStStrCopy
  loc_B832E6: FFreeStr var_F0 = "": var_F4 = ""
  loc_B832EF: FFreeAd var_88 = "": var_120 = "": var_134 = ""
  loc_B832FA: FFreeVar var_A8 = ""
  loc_B83301: FLdPr Me
  loc_B83304: MemLdStr global_72
  loc_B83307: LitStr vbNullString
  loc_B8330A: NeStr
  loc_B8330C: BranchF loc_B83382
  loc_B8330F: LitI4 0
  loc_B83314: LitStr "Item "
  loc_B83317: FLdI2 var_96
  loc_B8331A: CStrUI1
  loc_B8331C: FStStrNoPop var_F0
  loc_B8331F: ConcatStr
  loc_B83320: FStStrNoPop var_F4
  loc_B83323: LitStr ": "
  loc_B83326: ConcatStr
  loc_B83327: FStStrNoPop var_F8
  loc_B8332A: FLdPr Me
  loc_B8332D: MemLdStr global_72
  loc_B83330: ConcatStr
  loc_B83331: FStStrNoPop var_FC
  loc_B83334: LitStr "la fecha de la última preventiva para la partida y organigrama..."
  loc_B83337: ConcatStr
  loc_B83338: FStStrNoPop var_13C
  loc_B8333B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B83340: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B8334D: FLdI2 var_96
  loc_B83350: CI4UI1
  loc_B83351: CVarI4
  loc_B83355: PopAdLdVar
  loc_B83356: LitVarI4
  loc_B8335E: PopAdLdVar
  loc_B8335F: LitVarStr var_10C, "No"
  loc_B83364: PopAdLdVar
  loc_B83365: FLdPr Me
  loc_B83368: VCallAd Control_ID_ItemCotizacionFlex
  loc_B8336B: FStAdFunc var_88
  loc_B8336E: FLdPr var_88
  loc_B83371: LateIdCallSt
  loc_B83379: FFree1Ad var_88
  loc_B8337C: Branch loc_B83D26
  loc_B8337F: Branch loc_B833B1
  loc_B83382: FLdI2 var_96
  loc_B83385: CI4UI1
  loc_B83386: CVarI4
  loc_B8338A: PopAdLdVar
  loc_B8338B: LitVarI4
  loc_B83393: PopAdLdVar
  loc_B83394: LitVarStr var_10C, "Si"
  loc_B83399: PopAdLdVar
  loc_B8339A: FLdPr Me
  loc_B8339D: VCallAd Control_ID_ItemCotizacionFlex
  loc_B833A0: FStAdFunc var_88
  loc_B833A3: FLdPr var_88
  loc_B833A6: LateIdCallSt
  loc_B833AE: FFree1Ad var_88
  loc_B833B1: FLdI2 var_96
  loc_B833B4: CI4UI1
  loc_B833B5: CVarI4
  loc_B833B9: PopAdLdVar
  loc_B833BA: LitVarI4
  loc_B833C2: PopAdLdVar
  loc_B833C3: FLdPr Me
  loc_B833C6: VCallAd Control_ID_ItemCotizacionFlex
  loc_B833C9: FStAdFunc var_88
  loc_B833CC: FLdPr var_88
  loc_B833CF: LateIdCallLdVar
  loc_B833D9: PopAd
  loc_B833DB: FLdPr Me
  loc_B833DE: MemLdRfVar from_stack_1.global_100
  loc_B833E1: NewIfNullRf
  loc_B833E5: FLdRfVar var_A8
  loc_B833E8: CStrVarTmp
  loc_B833E9: FStStrNoPop var_F4
  loc_B833EC: ImpAdLdI2 MemVar_C3D064
  loc_B833EF: CStrUI1
  loc_B833F1: FStStrNoPop var_F0
  loc_B833F4: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B833F9: FStStrNoPop var_F8
  loc_B833FC: FLdPr Me
  loc_B833FF: MemStStrCopy
  loc_B83403: FFreeStr var_F0 = "": var_F4 = ""
  loc_B8340C: FFree1Ad var_88
  loc_B8340F: FFree1Var var_A8 = ""
  loc_B83412: FLdPr Me
  loc_B83415: MemLdStr global_72
  loc_B83418: LitStr vbNullString
  loc_B8341B: NeStr
  loc_B8341D: BranchF loc_B8348A
  loc_B83420: LitI4 0
  loc_B83425: LitStr "Item "
  loc_B83428: FLdI2 var_96
  loc_B8342B: CStrUI1
  loc_B8342D: FStStrNoPop var_F0
  loc_B83430: ConcatStr
  loc_B83431: FStStrNoPop var_F4
  loc_B83434: LitStr ": "
  loc_B83437: ConcatStr
  loc_B83438: FStStrNoPop var_F8
  loc_B8343B: FLdPr Me
  loc_B8343E: MemLdStr global_72
  loc_B83441: ConcatStr
  loc_B83442: FStStrNoPop var_FC
  loc_B83445: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B8344A: FFreeStr var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B83455: FLdI2 var_96
  loc_B83458: CI4UI1
  loc_B83459: CVarI4
  loc_B8345D: PopAdLdVar
  loc_B8345E: LitVarI4
  loc_B83466: PopAdLdVar
  loc_B83467: LitVarStr var_10C, "No"
  loc_B8346C: PopAdLdVar
  loc_B8346D: FLdPr Me
  loc_B83470: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83473: FStAdFunc var_88
  loc_B83476: FLdPr var_88
  loc_B83479: LateIdCallSt
  loc_B83481: FFree1Ad var_88
  loc_B83484: Branch loc_B83D26
  loc_B83487: Branch loc_B834B9
  loc_B8348A: FLdI2 var_96
  loc_B8348D: CI4UI1
  loc_B8348E: CVarI4
  loc_B83492: PopAdLdVar
  loc_B83493: LitVarI4
  loc_B8349B: PopAdLdVar
  loc_B8349C: LitVarStr var_10C, "Si"
  loc_B834A1: PopAdLdVar
  loc_B834A2: FLdPr Me
  loc_B834A5: VCallAd Control_ID_ItemCotizacionFlex
  loc_B834A8: FStAdFunc var_88
  loc_B834AB: FLdPr var_88
  loc_B834AE: LateIdCallSt
  loc_B834B6: FFree1Ad var_88
  loc_B834B9: FLdI2 var_96
  loc_B834BC: CI4UI1
  loc_B834BD: CVarI4
  loc_B834C1: PopAdLdVar
  loc_B834C2: LitVarI4
  loc_B834CA: PopAdLdVar
  loc_B834CB: FLdPr Me
  loc_B834CE: VCallAd Control_ID_ItemCotizacionFlex
  loc_B834D1: FStAdFunc var_88
  loc_B834D4: FLdPr var_88
  loc_B834D7: LateIdCallLdVar
  loc_B834E1: PopAd
  loc_B834E3: FLdPr Me
  loc_B834E6: MemLdRfVar from_stack_1.global_96
  loc_B834E9: NewIfNullRf
  loc_B834ED: FLdRfVar var_A8
  loc_B834F0: CStrVarTmp
  loc_B834F1: FStStrNoPop var_F0
  loc_B834F4: ImpAdLdI2 MemVar_C3D064
  loc_B834F7: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B834FC: FStStrNoPop var_F4
  loc_B834FF: FLdPr Me
  loc_B83502: MemStStrCopy
  loc_B83506: FFreeStr var_F0 = ""
  loc_B8350D: FFree1Ad var_88
  loc_B83510: FFree1Var var_A8 = ""
  loc_B83513: FLdPr Me
  loc_B83516: MemLdStr global_72
  loc_B83519: LitStr vbNullString
  loc_B8351C: NeStr
  loc_B8351E: BranchF loc_B8358B
  loc_B83521: LitI4 0
  loc_B83526: LitStr "Item "
  loc_B83529: FLdI2 var_96
  loc_B8352C: CStrUI1
  loc_B8352E: FStStrNoPop var_F0
  loc_B83531: ConcatStr
  loc_B83532: FStStrNoPop var_F4
  loc_B83535: LitStr ": "
  loc_B83538: ConcatStr
  loc_B83539: FStStrNoPop var_F8
  loc_B8353C: FLdPr Me
  loc_B8353F: MemLdStr global_72
  loc_B83542: ConcatStr
  loc_B83543: FStStrNoPop var_FC
  loc_B83546: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B8354B: FFreeStr var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B83556: FLdI2 var_96
  loc_B83559: CI4UI1
  loc_B8355A: CVarI4
  loc_B8355E: PopAdLdVar
  loc_B8355F: LitVarI4
  loc_B83567: PopAdLdVar
  loc_B83568: LitVarStr var_10C, "No"
  loc_B8356D: PopAdLdVar
  loc_B8356E: FLdPr Me
  loc_B83571: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83574: FStAdFunc var_88
  loc_B83577: FLdPr var_88
  loc_B8357A: LateIdCallSt
  loc_B83582: FFree1Ad var_88
  loc_B83585: Branch loc_B83D26
  loc_B83588: Branch loc_B835BA
  loc_B8358B: FLdI2 var_96
  loc_B8358E: CI4UI1
  loc_B8358F: CVarI4
  loc_B83593: PopAdLdVar
  loc_B83594: LitVarI4
  loc_B8359C: PopAdLdVar
  loc_B8359D: LitVarStr var_10C, "Si"
  loc_B835A2: PopAdLdVar
  loc_B835A3: FLdPr Me
  loc_B835A6: VCallAd Control_ID_ItemCotizacionFlex
  loc_B835A9: FStAdFunc var_88
  loc_B835AC: FLdPr var_88
  loc_B835AF: LateIdCallSt
  loc_B835B7: FFree1Ad var_88
  loc_B835BA: LitI2_Byte 0
  loc_B835BC: BranchF loc_B836FB
  loc_B835BF: FLdI2 var_96
  loc_B835C2: CI4UI1
  loc_B835C3: CVarI4
  loc_B835C7: PopAdLdVar
  loc_B835C8: LitVarI4
  loc_B835D0: PopAdLdVar
  loc_B835D1: FLdPr Me
  loc_B835D4: VCallAd Control_ID_ItemCotizacionFlex
  loc_B835D7: FStAdFunc var_88
  loc_B835DA: FLdPr var_88
  loc_B835DD: LateIdCallLdVar
  loc_B835E7: PopAd
  loc_B835E9: FLdI2 var_96
  loc_B835EC: CI4UI1
  loc_B835ED: CVarI4
  loc_B835F1: PopAdLdVar
  loc_B835F2: LitVarI4
  loc_B835FA: PopAdLdVar
  loc_B835FB: FLdPr Me
  loc_B835FE: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83601: FStAdFunc var_120
  loc_B83604: FLdPr var_120
  loc_B83607: LateIdCallLdVar
  loc_B83611: PopAd
  loc_B83613: FLdRfVar var_F8
  loc_B83616: FLdRfVar var_130
  loc_B83619: CStrVarTmp
  loc_B8361A: FStStrNoPop var_F4
  loc_B8361D: FLdRfVar var_A8
  loc_B83620: CStrVarTmp
  loc_B83621: FStStrNoPop var_F0
  loc_B83624: CI4Str
  loc_B83625: ImpAdLdI2 MemVar_C3D064
  loc_B83628: FLdPr Me
  loc_B8362B: MemLdRfVar from_stack_1.global_60
  loc_B8362E: NewIfNullPr clsinsupart
  loc_B83631: from_stack_4v = clsinsupart.ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B83636: ILdRf var_F8
  loc_B83639: FLdPr Me
  loc_B8363C: MemStStrCopy
  loc_B83640: FFreeStr var_F0 = "": var_F4 = ""
  loc_B83649: FFreeAd var_88 = ""
  loc_B83650: FFreeVar var_A8 = ""
  loc_B83657: FLdPr Me
  loc_B8365A: MemLdStr global_72
  loc_B8365D: LitStr vbNullString
  loc_B83660: EqStr
  loc_B83662: BranchF loc_B836CC
  loc_B83665: LitI4 0
  loc_B8366A: LitStr "Item "
  loc_B8366D: FLdI2 var_96
  loc_B83670: CStrUI1
  loc_B83672: FStStrNoPop var_F0
  loc_B83675: ConcatStr
  loc_B83676: FStStrNoPop var_F4
  loc_B83679: LitStr ": "
  loc_B8367C: ConcatStr
  loc_B8367D: FStStrNoPop var_F8
  loc_B83680: LitStr "La Partida NO CORRESPONDE al Insumo. Reintente..."
  loc_B83683: ConcatStr
  loc_B83684: FStStrNoPop var_FC
  loc_B83687: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B8368C: FFreeStr var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B83697: FLdI2 var_96
  loc_B8369A: CI4UI1
  loc_B8369B: CVarI4
  loc_B8369F: PopAdLdVar
  loc_B836A0: LitVarI4
  loc_B836A8: PopAdLdVar
  loc_B836A9: LitVarStr var_10C, "No"
  loc_B836AE: PopAdLdVar
  loc_B836AF: FLdPr Me
  loc_B836B2: VCallAd Control_ID_ItemCotizacionFlex
  loc_B836B5: FStAdFunc var_88
  loc_B836B8: FLdPr var_88
  loc_B836BB: LateIdCallSt
  loc_B836C3: FFree1Ad var_88
  loc_B836C6: Branch loc_B83D26
  loc_B836C9: Branch loc_B836FB
  loc_B836CC: FLdI2 var_96
  loc_B836CF: CI4UI1
  loc_B836D0: CVarI4
  loc_B836D4: PopAdLdVar
  loc_B836D5: LitVarI4
  loc_B836DD: PopAdLdVar
  loc_B836DE: LitVarStr var_10C, "Si"
  loc_B836E3: PopAdLdVar
  loc_B836E4: FLdPr Me
  loc_B836E7: VCallAd Control_ID_ItemCotizacionFlex
  loc_B836EA: FStAdFunc var_88
  loc_B836ED: FLdPr var_88
  loc_B836F0: LateIdCallSt
  loc_B836F8: FFree1Ad var_88
  loc_B836FB: FLdPr Me
  loc_B836FE: VCallAd Control_ID_FechImpuMsk
  loc_B83701: FStAdFunc var_88
  loc_B83704: FLdPr var_88
  loc_B83707: LateIdLdVar var_A8 DispID_15 0
  loc_B8370E: PopAd
  loc_B83710: FLdPr Me
  loc_B83713: VCallAd Control_ID_FechImpuMsk
  loc_B83716: FStAdFunc var_120
  loc_B83719: FLdPr var_120
  loc_B8371C: LateIdLdVar var_130 DispID_11 -32767
  loc_B83723: PopAd
  loc_B83725: FLdPr Me
  loc_B83728: VCallAd Control_ID_FechImpuMsk
  loc_B8372B: FStAdFunc var_138
  loc_B8372E: LitI2_Byte &HFF
  loc_B83730: PopTmpLdAd2 var_8A
  loc_B83733: FLdZeroAd var_138
  loc_B83736: FStAdFunc var_134
  loc_B83739: FLdRfVar var_134
  loc_B8373C: FLdRfVar var_130
  loc_B8373F: CStrVarTmp
  loc_B83740: FStStrNoPop var_F4
  loc_B83743: LitI2_Byte &HFF
  loc_B83745: LitI2_Byte &HFF
  loc_B83747: FLdRfVar var_A8
  loc_B8374A: CStrVarTmp
  loc_B8374B: FStStrNoPop var_F0
  loc_B8374E: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_B83753: FStStrNoPop var_F8
  loc_B83756: FLdPr Me
  loc_B83759: MemStStrCopy
  loc_B8375D: FFreeStr var_F0 = "": var_F4 = ""
  loc_B83766: FFreeAd var_88 = "": var_120 = "": var_134 = ""
  loc_B83771: FFreeVar var_A8 = ""
  loc_B83778: FLdPr Me
  loc_B8377B: MemLdStr global_72
  loc_B8377E: LitStr vbNullString
  loc_B83781: NeStr
  loc_B83783: BranchF loc_B837F0
  loc_B83786: LitI4 0
  loc_B8378B: LitStr "Item "
  loc_B8378E: FLdI2 var_96
  loc_B83791: CStrUI1
  loc_B83793: FStStrNoPop var_F0
  loc_B83796: ConcatStr
  loc_B83797: FStStrNoPop var_F4
  loc_B8379A: LitStr ": "
  loc_B8379D: ConcatStr
  loc_B8379E: FStStrNoPop var_F8
  loc_B837A1: FLdPr Me
  loc_B837A4: MemLdStr global_72
  loc_B837A7: ConcatStr
  loc_B837A8: FStStrNoPop var_FC
  loc_B837AB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B837B0: FFreeStr var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B837BB: FLdI2 var_96
  loc_B837BE: CI4UI1
  loc_B837BF: CVarI4
  loc_B837C3: PopAdLdVar
  loc_B837C4: LitVarI4
  loc_B837CC: PopAdLdVar
  loc_B837CD: LitVarStr var_10C, "No"
  loc_B837D2: PopAdLdVar
  loc_B837D3: FLdPr Me
  loc_B837D6: VCallAd Control_ID_ItemCotizacionFlex
  loc_B837D9: FStAdFunc var_88
  loc_B837DC: FLdPr var_88
  loc_B837DF: LateIdCallSt
  loc_B837E7: FFree1Ad var_88
  loc_B837EA: Branch loc_B83D26
  loc_B837ED: Branch loc_B8381F
  loc_B837F0: FLdI2 var_96
  loc_B837F3: CI4UI1
  loc_B837F4: CVarI4
  loc_B837F8: PopAdLdVar
  loc_B837F9: LitVarI4
  loc_B83801: PopAdLdVar
  loc_B83802: LitVarStr var_10C, "Si"
  loc_B83807: PopAdLdVar
  loc_B83808: FLdPr Me
  loc_B8380B: VCallAd Control_ID_ItemCotizacionFlex
  loc_B8380E: FStAdFunc var_88
  loc_B83811: FLdPr var_88
  loc_B83814: LateIdCallSt
  loc_B8381C: FFree1Ad var_88
  loc_B8381F: FLdPr Me
  loc_B83822: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83825: FStAdFunc var_88
  loc_B83828: FLdPr var_88
  loc_B8382B: LateIdLdVar var_A8 DispID_10 0
  loc_B83832: CI4Var
  loc_B83834: CVarI4
  loc_B83838: PopAdLdVar
  loc_B83839: LitVarI4
  loc_B83841: PopAdLdVar
  loc_B83842: FLdPr Me
  loc_B83845: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83848: FStAdFunc var_120
  loc_B8384B: FLdPr var_120
  loc_B8384E: LateIdCallLdVar
  loc_B83858: CStrVarTmp
  loc_B83859: FStStrNoPop var_F0
  loc_B8385C: CR8Str
  loc_B8385E: LitI2_Byte 0
  loc_B83860: CR8I2
  loc_B83861: GtR4
  loc_B83862: FFree1Str var_F0
  loc_B83865: FFreeAd var_88 = ""
  loc_B8386C: FFreeVar var_A8 = ""
  loc_B83873: BranchF loc_B839FA
  loc_B83876: FLdPr Me
  loc_B83879: VCallAd Control_ID_ItemCotizacionFlex
  loc_B8387C: FStAdFunc var_88
  loc_B8387F: FLdPr var_88
  loc_B83882: LateIdLdVar var_A8 DispID_10 0
  loc_B83889: CI4Var
  loc_B8388B: CVarI4
  loc_B8388F: PopAdLdVar
  loc_B83890: LitVarI4
  loc_B83898: PopAdLdVar
  loc_B83899: FLdPr Me
  loc_B8389C: VCallAd Control_ID_ItemCotizacionFlex
  loc_B8389F: FStAdFunc var_120
  loc_B838A2: FLdPr var_120
  loc_B838A5: LateIdCallLdVar
  loc_B838AF: PopAd
  loc_B838B1: FLdRfVar var_F4
  loc_B838B4: FLdPr Me
  loc_B838B7: MemLdUI1 global_68
  loc_B838BB: FLdPr Me
  loc_B838BE: MemLdRfVar from_stack_1.global_88
  loc_B838C1: NewIfNullRf
  loc_B838C5: FLdRfVar var_130
  loc_B838C8: CStrVarTmp
  loc_B838C9: FStStrNoPop var_F0
  loc_B838CC: FLdPr Me
  loc_B838CF: MemLdRfVar from_stack_1.global_64
  loc_B838D2: NewIfNullPr clsimputacion
  loc_B838D5: from_stack_4v = clsimputacion.ValidaImunImpuPreventiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B838DA: ILdRf var_F4
  loc_B838DD: FLdPr Me
  loc_B838E0: MemStStrCopy
  loc_B838E4: FFreeStr var_F0 = ""
  loc_B838EB: FFreeAd var_88 = ""
  loc_B838F2: FFreeVar var_A8 = ""
  loc_B838F9: FLdPr Me
  loc_B838FC: MemLdStr global_72
  loc_B838FF: LitStr vbNullString
  loc_B83902: NeStr
  loc_B83904: BranchF loc_B839CB
  loc_B83907: LitI4 0
  loc_B8390C: LitStr "Item "
  loc_B8390F: FLdI2 var_96
  loc_B83912: CStrUI1
  loc_B83914: FStStrNoPop var_F0
  loc_B83917: ConcatStr
  loc_B83918: FStStrNoPop var_F4
  loc_B8391B: LitStr ": "
  loc_B8391E: ConcatStr
  loc_B8391F: FStStrNoPop var_F8
  loc_B83922: FLdPr Me
  loc_B83925: MemLdStr global_72
  loc_B83928: ConcatStr
  loc_B83929: FStStrNoPop var_FC
  loc_B8392C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B83931: FFreeStr var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B8393C: LitI4 &HB
  loc_B83941: FLdPr Me
  loc_B83944: MemLdStr global_72
  loc_B83947: ImpAdCallI2 Left$(, )
  loc_B8394C: FStStrNoPop var_F0
  loc_B8394F: LitStr "Advertencia"
  loc_B83952: EqStr
  loc_B83954: FFree1Str var_F0
  loc_B83957: BranchF loc_B83996
  loc_B8395A: FLdI2 var_96
  loc_B8395D: CI4UI1
  loc_B8395E: CVarI4
  loc_B83962: PopAdLdVar
  loc_B83963: LitVarI4
  loc_B8396B: PopAdLdVar
  loc_B8396C: LitVarStr var_10C, "Si"
  loc_B83971: PopAdLdVar
  loc_B83972: FLdPr Me
  loc_B83975: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83978: FStAdFunc var_88
  loc_B8397B: FLdPr var_88
  loc_B8397E: LateIdCallSt
  loc_B83986: FFree1Ad var_88
  loc_B83989: LitStr vbNullString
  loc_B8398C: FLdPr Me
  loc_B8398F: MemStStrCopy
  loc_B83993: Branch loc_B839C5
  loc_B83996: FLdI2 var_96
  loc_B83999: CI4UI1
  loc_B8399A: CVarI4
  loc_B8399E: PopAdLdVar
  loc_B8399F: LitVarI4
  loc_B839A7: PopAdLdVar
  loc_B839A8: LitVarStr var_10C, "No"
  loc_B839AD: PopAdLdVar
  loc_B839AE: FLdPr Me
  loc_B839B1: VCallAd Control_ID_ItemCotizacionFlex
  loc_B839B4: FStAdFunc var_88
  loc_B839B7: FLdPr var_88
  loc_B839BA: LateIdCallSt
  loc_B839C2: FFree1Ad var_88
  loc_B839C5: Branch loc_B83D26
  loc_B839C8: Branch loc_B839FA
  loc_B839CB: FLdI2 var_96
  loc_B839CE: CI4UI1
  loc_B839CF: CVarI4
  loc_B839D3: PopAdLdVar
  loc_B839D4: LitVarI4
  loc_B839DC: PopAdLdVar
  loc_B839DD: LitVarStr var_10C, "Si"
  loc_B839E2: PopAdLdVar
  loc_B839E3: FLdPr Me
  loc_B839E6: VCallAd Control_ID_ItemCotizacionFlex
  loc_B839E9: FStAdFunc var_88
  loc_B839EC: FLdPr var_88
  loc_B839EF: LateIdCallSt
  loc_B839F7: FFree1Ad var_88
  loc_B839FA: LitI2_Byte 0
  loc_B839FC: CR8I2
  loc_B839FD: FStFPR8 var_94
  loc_B83A00: LitI2_Byte 1
  loc_B83A02: FLdRfVar var_98
  loc_B83A05: FLdPr Me
  loc_B83A08: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83A0B: FStAdFunc var_88
  loc_B83A0E: FLdPr var_88
  loc_B83A11: LateIdLdVar var_A8 DispID_4 0
  loc_B83A18: CI4Var
  loc_B83A1A: LitI4 1
  loc_B83A1F: SubI4
  loc_B83A20: CI2I4
  loc_B83A21: FFree1Ad var_88
  loc_B83A24: FFree1Var var_A8 = ""
  loc_B83A27: ForI2 var_160
  loc_B83A2D: FLdI2 var_98
  loc_B83A30: CI4UI1
  loc_B83A31: CVarI4
  loc_B83A35: PopAdLdVar
  loc_B83A36: LitVarI4
  loc_B83A3E: PopAdLdVar
  loc_B83A3F: FLdPr Me
  loc_B83A42: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83A45: FStAdFunc var_138
  loc_B83A48: FLdPr var_138
  loc_B83A4B: LateIdCallLdVar
  loc_B83A55: PopAd
  loc_B83A57: FLdI2 var_96
  loc_B83A5A: CI4UI1
  loc_B83A5B: CVarI4
  loc_B83A5F: PopAdLdVar
  loc_B83A60: LitVarI4
  loc_B83A68: PopAdLdVar
  loc_B83A69: FLdPr Me
  loc_B83A6C: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83A6F: FStAdFunc var_244
  loc_B83A72: FLdPr var_244
  loc_B83A75: LateIdCallLdVar
  loc_B83A7F: PopAd
  loc_B83A81: FLdI2 var_98
  loc_B83A84: CI4UI1
  loc_B83A85: CVarI4
  loc_B83A89: PopAdLdVar
  loc_B83A8A: LitVarI4
  loc_B83A92: PopAdLdVar
  loc_B83A93: FLdPr Me
  loc_B83A96: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83A99: FStAdFunc var_88
  loc_B83A9C: FLdPr var_88
  loc_B83A9F: LateIdCallLdVar
  loc_B83AA9: CStrVarTmp
  loc_B83AAA: FStStrNoPop var_F0
  loc_B83AAD: LitStr "0"
  loc_B83AB0: NeStr
  loc_B83AB2: FLdI2 var_98
  loc_B83AB5: CI4UI1
  loc_B83AB6: CVarI4
  loc_B83ABA: PopAdLdVar
  loc_B83ABB: LitVarI4
  loc_B83AC3: PopAdLdVar
  loc_B83AC4: FLdPr Me
  loc_B83AC7: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83ACA: FStAdFunc var_120
  loc_B83ACD: FLdPr var_120
  loc_B83AD0: LateIdCallLdVar
  loc_B83ADA: CStrVarTmp
  loc_B83ADB: FStStrNoPop var_F4
  loc_B83ADE: FLdI2 var_96
  loc_B83AE1: CI4UI1
  loc_B83AE2: CVarI4
  loc_B83AE6: PopAdLdVar
  loc_B83AE7: LitVarI4
  loc_B83AEF: PopAdLdVar
  loc_B83AF0: FLdPr Me
  loc_B83AF3: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83AF6: FStAdFunc var_134
  loc_B83AF9: FLdPr var_134
  loc_B83AFC: LateIdCallLdVar
  loc_B83B06: CStrVarTmp
  loc_B83B07: FStStrNoPop var_F8
  loc_B83B0A: EqStr
  loc_B83B0C: AndI4
  loc_B83B0D: LitI4 1
  loc_B83B12: FLdRfVar var_200
  loc_B83B15: CStrVarTmp
  loc_B83B16: FStStrNoPop var_FC
  loc_B83B19: ImpAdCallI2 Left$(, )
  loc_B83B1E: FStStrNoPop var_258
  loc_B83B21: LitI4 1
  loc_B83B26: FLdRfVar var_254
  loc_B83B29: CStrVarTmp
  loc_B83B2A: FStStrNoPop var_13C
  loc_B83B2D: ImpAdCallI2 Left$(, )
  loc_B83B32: FStStrNoPop var_25C
  loc_B83B35: EqStr
  loc_B83B37: AndI4
  loc_B83B38: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_13C = "": var_258 = ""
  loc_B83B49: FFreeAd var_88 = "": var_120 = "": var_134 = "": var_138 = ""
  loc_B83B56: FFreeVar var_A8 = "": var_130 = "": var_1B0 = "": var_200 = ""
  loc_B83B63: BranchF loc_B83BA9
  loc_B83B66: FLdI2 var_98
  loc_B83B69: CI4UI1
  loc_B83B6A: CVarI4
  loc_B83B6E: PopAdLdVar
  loc_B83B6F: LitVarI4
  loc_B83B77: PopAdLdVar
  loc_B83B78: FLdPr Me
  loc_B83B7B: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83B7E: FStAdFunc var_88
  loc_B83B81: FLdPr var_88
  loc_B83B84: LateIdCallLdVar
  loc_B83B8E: PopAd
  loc_B83B90: FLdFPR8 var_94
  loc_B83B93: FLdRfVar var_A8
  loc_B83B96: CStrVarTmp
  loc_B83B97: FStStrNoPop var_F0
  loc_B83B9A: CR8Str
  loc_B83B9C: AddR8
  loc_B83B9D: FStFPR8 var_94
  loc_B83BA0: FFree1Str var_F0
  loc_B83BA3: FFree1Ad var_88
  loc_B83BA6: FFree1Var var_A8 = ""
  loc_B83BA9: FLdRfVar var_98
  loc_B83BAC: NextI2 var_160, loc_B83A2D
  loc_B83BB1: FLdFPR8 var_94
  loc_B83BB4: LitI2_Byte 0
  loc_B83BB6: CR8I2
  loc_B83BB7: GtR4
  loc_B83BB8: BranchF loc_B83D26
  loc_B83BBB: FLdPr Me
  loc_B83BBE: VCallAd Control_ID_FechImpuMsk
  loc_B83BC1: FStAdFunc var_88
  loc_B83BC4: FLdPr var_88
  loc_B83BC7: LateIdLdVar var_A8 DispID_15 0
  loc_B83BCE: PopAd
  loc_B83BD0: FLdRfVar var_F8
  loc_B83BD3: LitI2_Byte 0
  loc_B83BD5: PopTmpLdAd2 var_8A
  loc_B83BD8: LitStr "0"
  loc_B83BDB: FLdRfVar var_A8
  loc_B83BDE: CStrVarTmp
  loc_B83BDF: FStStrNoPop var_F4
  loc_B83BE2: FLdPr Me
  loc_B83BE5: MemLdRfVar from_stack_1.global_100
  loc_B83BE8: NewIfNullRf
  loc_B83BEC: FLdPr Me
  loc_B83BEF: MemLdRfVar from_stack_1.global_96
  loc_B83BF2: NewIfNullRf
  loc_B83BF6: FLdPr Me
  loc_B83BF9: MemLdRfVar from_stack_1.global_92
  loc_B83BFC: NewIfNullRf
  loc_B83C00: FLdPr Me
  loc_B83C03: MemLdRfVar from_stack_1.global_88
  loc_B83C06: NewIfNullRf
  loc_B83C0A: FLdFPR8 var_94
  loc_B83C0D: CStrR8
  loc_B83C0F: FStStrNoPop var_F0
  loc_B83C12: FLdPr Me
  loc_B83C15: MemLdRfVar from_stack_1.global_64
  loc_B83C18: NewIfNullPr clsimputacion
  loc_B83C1B: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B83C20: ILdRf var_F8
  loc_B83C23: FLdPr Me
  loc_B83C26: MemStStrCopy
  loc_B83C2A: FFreeStr var_F0 = "": var_F4 = ""
  loc_B83C33: FFree1Ad var_88
  loc_B83C36: FFree1Var var_A8 = ""
  loc_B83C39: FLdPr Me
  loc_B83C3C: MemLdStr global_72
  loc_B83C3F: LitStr vbNullString
  loc_B83C42: NeStr
  loc_B83C44: BranchF loc_B83CF7
  loc_B83C47: LitStr "Item "
  loc_B83C4A: FLdI2 var_96
  loc_B83C4D: CStrUI1
  loc_B83C4F: FStStrNoPop var_F0
  loc_B83C52: ConcatStr
  loc_B83C53: FStStrNoPop var_F4
  loc_B83C56: FLdPr Me
  loc_B83C59: MemLdStr global_72
  loc_B83C5C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B83C61: FFreeStr var_F0 = ""
  loc_B83C68: LitI4 &HB
  loc_B83C6D: FLdPr Me
  loc_B83C70: MemLdStr global_72
  loc_B83C73: ImpAdCallI2 Left$(, )
  loc_B83C78: FStStrNoPop var_F0
  loc_B83C7B: LitStr "Advertencia"
  loc_B83C7E: EqStr
  loc_B83C80: FFree1Str var_F0
  loc_B83C83: BranchF loc_B83CC2
  loc_B83C86: FLdI2 var_96
  loc_B83C89: CI4UI1
  loc_B83C8A: CVarI4
  loc_B83C8E: PopAdLdVar
  loc_B83C8F: LitVarI4
  loc_B83C97: PopAdLdVar
  loc_B83C98: LitVarStr var_10C, "Si"
  loc_B83C9D: PopAdLdVar
  loc_B83C9E: FLdPr Me
  loc_B83CA1: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83CA4: FStAdFunc var_88
  loc_B83CA7: FLdPr var_88
  loc_B83CAA: LateIdCallSt
  loc_B83CB2: FFree1Ad var_88
  loc_B83CB5: LitStr vbNullString
  loc_B83CB8: FLdPr Me
  loc_B83CBB: MemStStrCopy
  loc_B83CBF: Branch loc_B83CF1
  loc_B83CC2: FLdI2 var_96
  loc_B83CC5: CI4UI1
  loc_B83CC6: CVarI4
  loc_B83CCA: PopAdLdVar
  loc_B83CCB: LitVarI4
  loc_B83CD3: PopAdLdVar
  loc_B83CD4: LitVarStr var_10C, "No"
  loc_B83CD9: PopAdLdVar
  loc_B83CDA: FLdPr Me
  loc_B83CDD: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83CE0: FStAdFunc var_88
  loc_B83CE3: FLdPr var_88
  loc_B83CE6: LateIdCallSt
  loc_B83CEE: FFree1Ad var_88
  loc_B83CF1: Branch loc_B83D26
  loc_B83CF4: Branch loc_B83D26
  loc_B83CF7: FLdI2 var_96
  loc_B83CFA: CI4UI1
  loc_B83CFB: CVarI4
  loc_B83CFF: PopAdLdVar
  loc_B83D00: LitVarI4
  loc_B83D08: PopAdLdVar
  loc_B83D09: LitVarStr var_10C, "Si"
  loc_B83D0E: PopAdLdVar
  loc_B83D0F: FLdPr Me
  loc_B83D12: VCallAd Control_ID_ItemCotizacionFlex
  loc_B83D15: FStAdFunc var_88
  loc_B83D18: FLdPr var_88
  loc_B83D1B: LateIdCallSt
  loc_B83D23: FFree1Ad var_88
  loc_B83D26: FLdRfVar var_96
  loc_B83D29: NextI2 var_AC, loc_B83023
  loc_B83D2E: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_DblClick() 'ABF354
  'Data Table: 47EEC0
  loc_ABED88: FLdPr Me
  loc_ABED8B: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABED8E: FStAdFunc var_88
  loc_ABED91: FLdPr var_88
  loc_ABED94: LateIdLdVar var_98 DispID_10 0
  loc_ABED9B: CI4Var
  loc_ABED9D: CVarI4
  loc_ABEDA1: PopAdLdVar
  loc_ABEDA2: LitVarI4
  loc_ABEDAA: PopAdLdVar
  loc_ABEDAB: FLdPr Me
  loc_ABEDAE: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABEDB1: FStAdFunc var_DC
  loc_ABEDB4: FLdPr var_DC
  loc_ABEDB7: LateIdCallLdVar
  loc_ABEDC1: CStrVarTmp
  loc_ABEDC2: FStStrNoPop var_F0
  loc_ABEDC5: LitStr "0"
  loc_ABEDC8: EqStr
  loc_ABEDCA: FFree1Str var_F0
  loc_ABEDCD: FFreeAd var_88 = ""
  loc_ABEDD4: FFreeVar var_98 = ""
  loc_ABEDDB: BranchF loc_ABF351
  loc_ABEDDE: FLdPr Me
  loc_ABEDE1: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABEDE4: FStAdFunc var_88
  loc_ABEDE7: FLdPr var_88
  loc_ABEDEA: LateIdLdVar var_98 DispID_11 0
  loc_ABEDF1: CI4Var
  loc_ABEDF3: LitI4 7
  loc_ABEDF8: EqI4
  loc_ABEDF9: FFree1Ad var_88
  loc_ABEDFC: FFree1Var var_98 = ""
  loc_ABEDFF: BranchF loc_ABEF4C
  loc_ABEE02: FLdPr Me
  loc_ABEE05: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABEE08: FStAdFunc var_88
  loc_ABEE0B: FLdPr var_88
  loc_ABEE0E: LateIdLdVar var_98 DispID_10 0
  loc_ABEE15: CI4Var
  loc_ABEE17: CVarI4
  loc_ABEE1B: PopAdLdVar
  loc_ABEE1C: LitVarI4
  loc_ABEE24: PopAdLdVar
  loc_ABEE25: FLdPr Me
  loc_ABEE28: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABEE2B: FStAdFunc var_DC
  loc_ABEE2E: FLdPr var_DC
  loc_ABEE31: LateIdCallLdVar
  loc_ABEE3B: CStrVarTmp
  loc_ABEE3C: FStStrNoPop var_F0
  loc_ABEE3F: CI4Str
  loc_ABEE40: ImpAdLdRf MemVar_C3D724
  loc_ABEE43: NewIfNullPr bscPartida
  loc_ABEE46: Call bscPartida.iCodiInsuPut(from_stack_1v)
  loc_ABEE4B: FFree1Str var_F0
  loc_ABEE4E: FFreeAd var_88 = ""
  loc_ABEE55: FFreeVar var_98 = ""
  loc_ABEE5C: LitNothing
  loc_ABEE5E: CastAd
  loc_ABEE61: FStAdFuncNoPop
  loc_ABEE64: ImpAdLdRf MemVar_C3D724
  loc_ABEE67: NewIfNullPr bscPartida
  loc_ABEE6A: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_ABEE6F: FFree1Ad var_88
  loc_ABEE72: LitVar_Missing var_B8
  loc_ABEE75: PopAdLdVar
  loc_ABEE76: LitVarI4
  loc_ABEE7E: PopAdLdVar
  loc_ABEE7F: ImpAdLdRf MemVar_C3D724
  loc_ABEE82: NewIfNullPr bscPartida
  loc_ABEE85: bscPartida.Show from_stack_1, from_stack_2
  loc_ABEE8A: FLdRfVar var_F4
  loc_ABEE8D: FLdRfVar var_88
  loc_ABEE90: ImpAdLdRf MemVar_C3D724
  loc_ABEE93: NewIfNullPr bscPartida
  loc_ABEE96: from_stack_1v = bscPartida.global_4332396Get()
  loc_ABEE9B: FLdPr var_88
  loc_ABEE9E: from_stack_1 = clsbase.RecordCount
  loc_ABEEA3: ILdRf var_F4
  loc_ABEEA6: LitI4 0
  loc_ABEEAB: GtI4
  loc_ABEEAC: FFree1Ad var_88
  loc_ABEEAF: BranchF loc_ABEF49
  loc_ABEEB2: FLdPr Me
  loc_ABEEB5: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABEEB8: FStAdFunc var_100
  loc_ABEEBB: FLdPr var_100
  loc_ABEEBE: LateIdLdVar var_98 DispID_10 0
  loc_ABEEC5: CI4Var
  loc_ABEEC7: CVarI4
  loc_ABEECB: PopAdLdVar
  loc_ABEECC: LitVarI4
  loc_ABEED4: PopAdLdVar
  loc_ABEED5: FLdRfVar var_EC
  loc_ABEED8: FLdRfVar var_FC
  loc_ABEEDB: LitVarStr var_A8, "CodiPart"
  loc_ABEEE0: PopAdLdVar
  loc_ABEEE1: FLdRfVar var_F8
  loc_ABEEE4: FLdRfVar var_DC
  loc_ABEEE7: FLdRfVar var_88
  loc_ABEEEA: ImpAdLdRf MemVar_C3D724
  loc_ABEEED: NewIfNullPr bscPartida
  loc_ABEEF0: from_stack_1v = bscPartida.global_4332396Get()
  loc_ABEEF5: FLdPr var_88
  loc_ABEEF8: from_stack_1v = clsbase.RsFrmGet()
  loc_ABEEFD: FLdPr var_DC
  loc_ABEF00:  = Me.Fields
  loc_ABEF05: FLdPr var_F8
  loc_ABEF08: from_stack_2 = Me.Item(from_stack_1)
  loc_ABEF0D: FLdPr var_FC
  loc_ABEF10:  = Me.Value
  loc_ABEF15: FLdRfVar var_EC
  loc_ABEF18: CStrVarTmp
  loc_ABEF19: CVarStr var_120
  loc_ABEF1C: PopAdLdVar
  loc_ABEF1D: FLdPr Me
  loc_ABEF20: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABEF23: FStAdFunc var_134
  loc_ABEF26: FLdPr var_134
  loc_ABEF29: LateIdCallSt
  loc_ABEF31: FFreeAd var_88 = "": var_DC = "": var_F8 = "": var_100 = "": var_FC = ""
  loc_ABEF40: FFreeVar var_98 = "": var_EC = ""
  loc_ABEF49: Branch loc_ABF351
  loc_ABEF4C: FLdPr Me
  loc_ABEF4F: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABEF52: FStAdFunc var_88
  loc_ABEF55: FLdPr var_88
  loc_ABEF58: LateIdLdVar var_98 DispID_11 0
  loc_ABEF5F: CI4Var
  loc_ABEF61: LitI4 8
  loc_ABEF66: EqI4
  loc_ABEF67: FFree1Ad var_88
  loc_ABEF6A: FFree1Var var_98 = ""
  loc_ABEF6D: BranchF loc_ABF06D
  loc_ABEF70: LitI2_Byte 0
  loc_ABEF72: ImpAdLdRf MemVar_C3D710
  loc_ABEF75: NewIfNullPr bscOrganigrama
  loc_ABEF78: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_ABEF7D: LitNothing
  loc_ABEF7F: CastAd
  loc_ABEF82: FStAdFuncNoPop
  loc_ABEF85: ImpAdLdRf MemVar_C3D710
  loc_ABEF88: NewIfNullPr bscOrganigrama
  loc_ABEF8B: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_ABEF90: FFree1Ad var_88
  loc_ABEF93: LitVar_Missing var_B8
  loc_ABEF96: PopAdLdVar
  loc_ABEF97: LitVarI4
  loc_ABEF9F: PopAdLdVar
  loc_ABEFA0: ImpAdLdRf MemVar_C3D710
  loc_ABEFA3: NewIfNullPr bscOrganigrama
  loc_ABEFA6: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_ABEFAB: FLdRfVar var_F4
  loc_ABEFAE: FLdRfVar var_88
  loc_ABEFB1: ImpAdLdRf MemVar_C3D710
  loc_ABEFB4: NewIfNullPr bscOrganigrama
  loc_ABEFB7: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_ABEFBC: FLdPr var_88
  loc_ABEFBF: from_stack_1 = clsbase.RecordCount
  loc_ABEFC4: ILdRf var_F4
  loc_ABEFC7: LitI4 0
  loc_ABEFCC: GtI4
  loc_ABEFCD: FFree1Ad var_88
  loc_ABEFD0: BranchF loc_ABF06A
  loc_ABEFD3: FLdPr Me
  loc_ABEFD6: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABEFD9: FStAdFunc var_100
  loc_ABEFDC: FLdPr var_100
  loc_ABEFDF: LateIdLdVar var_98 DispID_10 0
  loc_ABEFE6: CI4Var
  loc_ABEFE8: CVarI4
  loc_ABEFEC: PopAdLdVar
  loc_ABEFED: LitVarI4
  loc_ABEFF5: PopAdLdVar
  loc_ABEFF6: FLdRfVar var_EC
  loc_ABEFF9: FLdRfVar var_FC
  loc_ABEFFC: LitVarStr var_A8, "CodiOrga"
  loc_ABF001: PopAdLdVar
  loc_ABF002: FLdRfVar var_F8
  loc_ABF005: FLdRfVar var_DC
  loc_ABF008: FLdRfVar var_88
  loc_ABF00B: ImpAdLdRf MemVar_C3D710
  loc_ABF00E: NewIfNullPr bscOrganigrama
  loc_ABF011: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_ABF016: FLdPr var_88
  loc_ABF019: from_stack_1v = clsbase.RsFrmGet()
  loc_ABF01E: FLdPr var_DC
  loc_ABF021:  = Me.Fields
  loc_ABF026: FLdPr var_F8
  loc_ABF029: from_stack_2 = Me.Item(from_stack_1)
  loc_ABF02E: FLdPr var_FC
  loc_ABF031:  = Me.Value
  loc_ABF036: FLdRfVar var_EC
  loc_ABF039: CStrVarTmp
  loc_ABF03A: CVarStr var_120
  loc_ABF03D: PopAdLdVar
  loc_ABF03E: FLdPr Me
  loc_ABF041: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABF044: FStAdFunc var_134
  loc_ABF047: FLdPr var_134
  loc_ABF04A: LateIdCallSt
  loc_ABF052: FFreeAd var_88 = "": var_DC = "": var_F8 = "": var_100 = "": var_FC = ""
  loc_ABF061: FFreeVar var_98 = "": var_EC = ""
  loc_ABF06A: Branch loc_ABF351
  loc_ABF06D: FLdPr Me
  loc_ABF070: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABF073: FStAdFunc var_88
  loc_ABF076: FLdPr var_88
  loc_ABF079: LateIdLdVar var_98 DispID_11 0
  loc_ABF080: CI4Var
  loc_ABF082: LitI4 9
  loc_ABF087: EqI4
  loc_ABF088: FFree1Ad var_88
  loc_ABF08B: FFree1Var var_98 = ""
  loc_ABF08E: BranchF loc_ABF18E
  loc_ABF091: LitI2_Byte 0
  loc_ABF093: ImpAdLdRf MemVar_C3D7D8
  loc_ABF096: NewIfNullPr bscUnidadGasto
  loc_ABF099: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_ABF09E: LitNothing
  loc_ABF0A0: CastAd
  loc_ABF0A3: FStAdFuncNoPop
  loc_ABF0A6: ImpAdLdRf MemVar_C3D7D8
  loc_ABF0A9: NewIfNullPr bscUnidadGasto
  loc_ABF0AC: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_ABF0B1: FFree1Ad var_88
  loc_ABF0B4: LitVar_Missing var_B8
  loc_ABF0B7: PopAdLdVar
  loc_ABF0B8: LitVarI4
  loc_ABF0C0: PopAdLdVar
  loc_ABF0C1: ImpAdLdRf MemVar_C3D7D8
  loc_ABF0C4: NewIfNullPr bscUnidadGasto
  loc_ABF0C7: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_ABF0CC: FLdRfVar var_F4
  loc_ABF0CF: FLdRfVar var_88
  loc_ABF0D2: ImpAdLdRf MemVar_C3D7D8
  loc_ABF0D5: NewIfNullPr bscUnidadGasto
  loc_ABF0D8: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_ABF0DD: FLdPr var_88
  loc_ABF0E0: from_stack_1 = clsbase.RecordCount
  loc_ABF0E5: ILdRf var_F4
  loc_ABF0E8: LitI4 0
  loc_ABF0ED: GtI4
  loc_ABF0EE: FFree1Ad var_88
  loc_ABF0F1: BranchF loc_ABF18B
  loc_ABF0F4: FLdPr Me
  loc_ABF0F7: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABF0FA: FStAdFunc var_100
  loc_ABF0FD: FLdPr var_100
  loc_ABF100: LateIdLdVar var_98 DispID_10 0
  loc_ABF107: CI4Var
  loc_ABF109: CVarI4
  loc_ABF10D: PopAdLdVar
  loc_ABF10E: LitVarI4
  loc_ABF116: PopAdLdVar
  loc_ABF117: FLdRfVar var_EC
  loc_ABF11A: FLdRfVar var_FC
  loc_ABF11D: LitVarStr var_A8, "CodiUnga"
  loc_ABF122: PopAdLdVar
  loc_ABF123: FLdRfVar var_F8
  loc_ABF126: FLdRfVar var_DC
  loc_ABF129: FLdRfVar var_88
  loc_ABF12C: ImpAdLdRf MemVar_C3D7D8
  loc_ABF12F: NewIfNullPr bscUnidadGasto
  loc_ABF132: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_ABF137: FLdPr var_88
  loc_ABF13A: from_stack_1v = clsbase.RsFrmGet()
  loc_ABF13F: FLdPr var_DC
  loc_ABF142:  = Me.Fields
  loc_ABF147: FLdPr var_F8
  loc_ABF14A: from_stack_2 = Me.Item(from_stack_1)
  loc_ABF14F: FLdPr var_FC
  loc_ABF152:  = Me.Value
  loc_ABF157: FLdRfVar var_EC
  loc_ABF15A: CStrVarTmp
  loc_ABF15B: CVarStr var_120
  loc_ABF15E: PopAdLdVar
  loc_ABF15F: FLdPr Me
  loc_ABF162: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABF165: FStAdFunc var_134
  loc_ABF168: FLdPr var_134
  loc_ABF16B: LateIdCallSt
  loc_ABF173: FFreeAd var_88 = "": var_DC = "": var_F8 = "": var_100 = "": var_FC = ""
  loc_ABF182: FFreeVar var_98 = "": var_EC = ""
  loc_ABF18B: Branch loc_ABF351
  loc_ABF18E: FLdPr Me
  loc_ABF191: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABF194: FStAdFunc var_88
  loc_ABF197: FLdPr var_88
  loc_ABF19A: LateIdLdVar var_98 DispID_11 0
  loc_ABF1A1: CI4Var
  loc_ABF1A3: LitI4 &HA
  loc_ABF1A8: EqI4
  loc_ABF1A9: FFree1Ad var_88
  loc_ABF1AC: FFree1Var var_98 = ""
  loc_ABF1AF: BranchF loc_ABF351
  loc_ABF1B2: FLdPr Me
  loc_ABF1B5: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABF1B8: FStAdFunc var_88
  loc_ABF1BB: FLdPr var_88
  loc_ABF1BE: LateIdLdVar var_98 DispID_10 0
  loc_ABF1C5: CI4Var
  loc_ABF1C7: CVarI4
  loc_ABF1CB: PopAdLdVar
  loc_ABF1CC: LitVarI4
  loc_ABF1D4: PopAdLdVar
  loc_ABF1D5: FLdPr Me
  loc_ABF1D8: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABF1DB: FStAdFunc var_DC
  loc_ABF1DE: FLdPr var_DC
  loc_ABF1E1: LateIdCallLdVar
  loc_ABF1EB: CStrVarTmp
  loc_ABF1EC: FStStrNoPop var_F0
  loc_ABF1EF: ImpAdLdRf MemVar_C3D6E8
  loc_ABF1F2: NewIfNullPr bscFinalidad
  loc_ABF1F5: Call bscFinalidad.sCodiOrgaPut(from_stack_1v)
  loc_ABF1FA: FFree1Str var_F0
  loc_ABF1FD: FFreeAd var_88 = ""
  loc_ABF204: FFreeVar var_98 = ""
  loc_ABF20B: FLdPr Me
  loc_ABF20E: VCallAd Control_ID_
  loc_ABF211: FStAdFunc var_88
  loc_ABF214: FLdPr var_88
  loc_ABF217: LateIdLdVar var_98 DispID_10 0
  loc_ABF21E: CI4Var
  loc_ABF220: CVarI4
  loc_ABF224: PopAdLdVar
  loc_ABF225: LitVarI4
  loc_ABF22D: PopAdLdVar
  loc_ABF22E: FLdPr Me
  loc_ABF231: VCallAd Control_ID_
  loc_ABF234: FStAdFunc var_DC
  loc_ABF237: FLdPr var_DC
  loc_ABF23A: LateIdCallLdVar
  loc_ABF244: CStrVarTmp
  loc_ABF245: FStStrNoPop var_F0
  loc_ABF248: ImpAdLdRf MemVar_C3D6E8
  loc_ABF24B: NewIfNullPr bscFinalidad
  loc_ABF24E: Call bscFinalidad.sCodiPartPut(from_stack_1v)
  loc_ABF253: FFree1Str var_F0
  loc_ABF256: FFreeAd var_88 = ""
  loc_ABF25D: FFreeVar var_98 = ""
  loc_ABF264: LitNothing
  loc_ABF266: CastAd
  loc_ABF269: FStAdFuncNoPop
  loc_ABF26C: ImpAdLdRf MemVar_C3D6E8
  loc_ABF26F: NewIfNullPr bscFinalidad
  loc_ABF272: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_ABF277: FFree1Ad var_88
  loc_ABF27A: LitVar_Missing var_B8
  loc_ABF27D: PopAdLdVar
  loc_ABF27E: LitVarI4
  loc_ABF286: PopAdLdVar
  loc_ABF287: ImpAdLdRf MemVar_C3D6E8
  loc_ABF28A: NewIfNullPr bscFinalidad
  loc_ABF28D: bscFinalidad.Show from_stack_1, from_stack_2
  loc_ABF292: FLdRfVar var_F4
  loc_ABF295: FLdRfVar var_88
  loc_ABF298: ImpAdLdRf MemVar_C3D6E8
  loc_ABF29B: NewIfNullPr bscFinalidad
  loc_ABF29E: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_ABF2A3: FLdPr var_88
  loc_ABF2A6: from_stack_1 = clsbase.RecordCount
  loc_ABF2AB: ILdRf var_F4
  loc_ABF2AE: LitI4 0
  loc_ABF2B3: GtI4
  loc_ABF2B4: FFree1Ad var_88
  loc_ABF2B7: BranchF loc_ABF351
  loc_ABF2BA: FLdPr Me
  loc_ABF2BD: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABF2C0: FStAdFunc var_100
  loc_ABF2C3: FLdPr var_100
  loc_ABF2C6: LateIdLdVar var_98 DispID_10 0
  loc_ABF2CD: CI4Var
  loc_ABF2CF: CVarI4
  loc_ABF2D3: PopAdLdVar
  loc_ABF2D4: LitVarI4
  loc_ABF2DC: PopAdLdVar
  loc_ABF2DD: FLdRfVar var_EC
  loc_ABF2E0: FLdRfVar var_FC
  loc_ABF2E3: LitVarStr var_A8, "CodiFifu"
  loc_ABF2E8: PopAdLdVar
  loc_ABF2E9: FLdRfVar var_F8
  loc_ABF2EC: FLdRfVar var_DC
  loc_ABF2EF: FLdRfVar var_88
  loc_ABF2F2: ImpAdLdRf MemVar_C3D6E8
  loc_ABF2F5: NewIfNullPr bscFinalidad
  loc_ABF2F8: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_ABF2FD: FLdPr var_88
  loc_ABF300: from_stack_1v = clsbase.RsFrmGet()
  loc_ABF305: FLdPr var_DC
  loc_ABF308:  = Me.Fields
  loc_ABF30D: FLdPr var_F8
  loc_ABF310: from_stack_2 = Me.Item(from_stack_1)
  loc_ABF315: FLdPr var_FC
  loc_ABF318:  = Me.Value
  loc_ABF31D: FLdRfVar var_EC
  loc_ABF320: CStrVarTmp
  loc_ABF321: CVarStr var_120
  loc_ABF324: PopAdLdVar
  loc_ABF325: FLdPr Me
  loc_ABF328: VCallAd Control_ID_ItemCotizacionFlex
  loc_ABF32B: FStAdFunc var_134
  loc_ABF32E: FLdPr var_134
  loc_ABF331: LateIdCallSt
  loc_ABF339: FFreeAd var_88 = "": var_DC = "": var_F8 = "": var_100 = "": var_FC = ""
  loc_ABF348: FFreeVar var_98 = "": var_EC = ""
  loc_ABF351: ExitProcHresult
  loc_ABF352: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_KeyPress(KeyAscii As Integer) 'A922BC
  'Data Table: 47EEC0
  loc_A91E50: FLdPr Me
  loc_A91E53: VCallAd Control_ID_ItemCotizacionFlex
  loc_A91E56: FStAdFunc var_88
  loc_A91E59: FLdPr var_88
  loc_A91E5C: LateIdLdVar var_98 DispID_10 0
  loc_A91E63: CI4Var
  loc_A91E65: CVarI4
  loc_A91E69: PopAdLdVar
  loc_A91E6A: LitVarI4
  loc_A91E72: PopAdLdVar
  loc_A91E73: FLdPr Me
  loc_A91E76: VCallAd Control_ID_ItemCotizacionFlex
  loc_A91E79: FStAdFunc var_DC
  loc_A91E7C: FLdPr var_DC
  loc_A91E7F: LateIdCallLdVar
  loc_A91E89: CStrVarTmp
  loc_A91E8A: FStStrNoPop var_F0
  loc_A91E8D: LitStr "0"
  loc_A91E90: EqStr
  loc_A91E92: FFree1Str var_F0
  loc_A91E95: FFreeAd var_88 = ""
  loc_A91E9C: FFreeVar var_98 = ""
  loc_A91EA3: BranchF loc_A922B8
  loc_A91EA6: ILdI2 KeyAscii
  loc_A91EA9: CI4UI1
  loc_A91EAA: LitI4 &H20
  loc_A91EAF: EqI4
  loc_A91EB0: BranchF loc_A91EBB
  loc_A91EB3: Call ItemCotizacionFlex_DblClick()
  loc_A91EB8: Branch loc_A922B8
  loc_A91EBB: ILdI2 KeyAscii
  loc_A91EBE: CI4UI1
  loc_A91EBF: LitI4 8
  loc_A91EC4: EqI4
  loc_A91EC5: BranchF loc_A92016
  loc_A91EC8: FLdPr Me
  loc_A91ECB: VCallAd Control_ID_ItemCotizacionFlex
  loc_A91ECE: FStAdFunc var_88
  loc_A91ED1: FLdPr var_88
  loc_A91ED4: LateIdLdVar var_98 DispID_11 0
  loc_A91EDB: CI4Var
  loc_A91EDD: LitI4 7
  loc_A91EE2: EqI4
  loc_A91EE3: FLdPr Me
  loc_A91EE6: VCallAd Control_ID_ItemCotizacionFlex
  loc_A91EE9: FStAdFunc var_DC
  loc_A91EEC: FLdPr var_DC
  loc_A91EEF: LateIdLdVar var_EC DispID_11 0
  loc_A91EF6: CI4Var
  loc_A91EF8: LitI4 8
  loc_A91EFD: EqI4
  loc_A91EFE: OrI4
  loc_A91EFF: FLdPr Me
  loc_A91F02: VCallAd Control_ID_ItemCotizacionFlex
  loc_A91F05: FStAdFunc var_F4
  loc_A91F08: FLdPr var_F4
  loc_A91F0B: LateIdLdVar var_104 DispID_11 0
  loc_A91F12: CI4Var
  loc_A91F14: LitI4 9
  loc_A91F19: EqI4
  loc_A91F1A: OrI4
  loc_A91F1B: FLdPr Me
  loc_A91F1E: VCallAd Control_ID_ItemCotizacionFlex
  loc_A91F21: FStAdFunc var_108
  loc_A91F24: FLdPr var_108
  loc_A91F27: LateIdLdVar var_118 DispID_11 0
  loc_A91F2E: CI4Var
  loc_A91F30: LitI4 &HA
  loc_A91F35: EqI4
  loc_A91F36: OrI4
  loc_A91F37: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_A91F42: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_A91F4D: BranchF loc_A92013
  loc_A91F50: FLdPr Me
  loc_A91F53: VCallAd Control_ID_ItemCotizacionFlex
  loc_A91F56: FStAdFunc var_88
  loc_A91F59: FLdPr var_88
  loc_A91F5C: LateIdLdVar var_98 DispID_0 0
  loc_A91F63: PopAd
  loc_A91F65: FLdPr Me
  loc_A91F68: VCallAd Control_ID_ItemCotizacionFlex
  loc_A91F6B: FStAdFunc var_DC
  loc_A91F6E: FLdPr var_DC
  loc_A91F71: LateIdLdVar var_EC DispID_0 0
  loc_A91F78: PopAd
  loc_A91F7A: FLdPr Me
  loc_A91F7D: VCallAd Control_ID_ItemCotizacionFlex
  loc_A91F80: FStAdFunc var_F4
  loc_A91F83: FLdPr var_F4
  loc_A91F86: LateIdLdVar var_104 DispID_0 0
  loc_A91F8D: PopAd
  loc_A91F8F: LitVarI2 var_12C, 0
  loc_A91F94: FLdRfVar var_104
  loc_A91F97: CStrVarTmp
  loc_A91F98: FStStrNoPop var_11C
  loc_A91F9B: FnLenStr
  loc_A91F9C: LitI4 1
  loc_A91FA1: SubI4
  loc_A91FA2: CVarI4
  loc_A91FA6: FLdRfVar var_EC
  loc_A91FA9: CStrVarTmp
  loc_A91FAA: FStStrNoPop var_F0
  loc_A91FAD: FnLenStr
  loc_A91FAE: LitI4 1
  loc_A91FB3: SubI4
  loc_A91FB4: LitI4 0
  loc_A91FB9: GtI4
  loc_A91FBA: CVarBoolI2 var_A8
  loc_A91FBE: FLdRfVar var_13C
  loc_A91FC1: ImpAdCallFPR4  = IIf(, , )
  loc_A91FC6: FLdRfVar var_13C
  loc_A91FC9: CI4Var
  loc_A91FCB: FLdRfVar var_98
  loc_A91FCE: CStrVarTmp
  loc_A91FCF: FStStrNoPop var_140
  loc_A91FD2: ImpAdCallI2 Left$(, )
  loc_A91FD7: CVarStr var_150
  loc_A91FDA: PopAdLdVar
  loc_A91FDB: FLdPr Me
  loc_A91FDE: VCallAd Control_ID_ItemCotizacionFlex
  loc_A91FE1: FStAdFunc var_108
  loc_A91FE4: FLdPr var_108
  loc_A91FE7: LateIdSt
  loc_A91FEC: FFreeStr var_F0 = "": var_11C = ""
  loc_A91FF5: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_A92000: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_A8 = "": var_118 = "": var_12C = "": var_13C = ""
  loc_A92013: Branch loc_A922B8
  loc_A92016: LitStr "1234567890"
  loc_A92019: FStStrCopy var_F0
  loc_A9201C: FLdRfVar var_F0
  loc_A9201F: ILdRf KeyAscii
  loc_A92022: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_A92027: IStI2 KeyAscii
  loc_A9202A: FFree1Str var_F0
  loc_A9202D: FLdPr Me
  loc_A92030: VCallAd Control_ID_ItemCotizacionFlex
  loc_A92033: FStAdFunc var_88
  loc_A92036: FLdPr var_88
  loc_A92039: LateIdLdVar var_98 DispID_11 0
  loc_A92040: CI4Var
  loc_A92042: LitI4 7
  loc_A92047: EqI4
  loc_A92048: FFree1Ad var_88
  loc_A9204B: FFree1Var var_98 = ""
  loc_A9204E: BranchF loc_A920CF
  loc_A92051: FLdPr Me
  loc_A92054: VCallAd Control_ID_ItemCotizacionFlex
  loc_A92057: FStAdFunc var_88
  loc_A9205A: FLdPr var_88
  loc_A9205D: LateIdLdVar var_98 DispID_0 0
  loc_A92064: CStrVarTmp
  loc_A92065: FStStrNoPop var_F0
  loc_A92068: FnLenStr
  loc_A92069: LitI4 7
  loc_A9206E: LeI4
  loc_A9206F: FFree1Str var_F0
  loc_A92072: FFree1Ad var_88
  loc_A92075: FFree1Var var_98 = ""
  loc_A92078: BranchF loc_A920CF
  loc_A9207B: FLdPr Me
  loc_A9207E: VCallAd Control_ID_ItemCotizacionFlex
  loc_A92081: FStAdFunc var_88
  loc_A92084: FLdPr var_88
  loc_A92087: LateIdLdVar var_98 DispID_0 0
  loc_A9208E: CStrVarTmp
  loc_A9208F: CVarStr var_104
  loc_A92092: ILdI2 KeyAscii
  loc_A92095: CI4UI1
  loc_A92096: FLdRfVar var_EC
  loc_A92099: ImpAdCallFPR4  = Chr()
  loc_A9209E: FLdRfVar var_EC
  loc_A920A1: AddVar var_118
  loc_A920A5: CStrVarTmp
  loc_A920A6: CVarStr var_12C
  loc_A920A9: PopAdLdVar
  loc_A920AA: FLdPr Me
  loc_A920AD: VCallAd Control_ID_ItemCotizacionFlex
  loc_A920B0: FStAdFunc var_DC
  loc_A920B3: FLdPr var_DC
  loc_A920B6: LateIdSt
  loc_A920BB: FFreeAd var_88 = ""
  loc_A920C2: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_118 = ""
  loc_A920CF: FLdPr Me
  loc_A920D2: VCallAd Control_ID_ItemCotizacionFlex
  loc_A920D5: FStAdFunc var_88
  loc_A920D8: FLdPr var_88
  loc_A920DB: LateIdLdVar var_98 DispID_11 0
  loc_A920E2: CI4Var
  loc_A920E4: LitI4 8
  loc_A920E9: EqI4
  loc_A920EA: FFree1Ad var_88
  loc_A920ED: FFree1Var var_98 = ""
  loc_A920F0: BranchF loc_A92171
  loc_A920F3: FLdPr Me
  loc_A920F6: VCallAd Control_ID_ItemCotizacionFlex
  loc_A920F9: FStAdFunc var_88
  loc_A920FC: FLdPr var_88
  loc_A920FF: LateIdLdVar var_98 DispID_0 0
  loc_A92106: CStrVarTmp
  loc_A92107: FStStrNoPop var_F0
  loc_A9210A: FnLenStr
  loc_A9210B: LitI4 5
  loc_A92110: LeI4
  loc_A92111: FFree1Str var_F0
  loc_A92114: FFree1Ad var_88
  loc_A92117: FFree1Var var_98 = ""
  loc_A9211A: BranchF loc_A92171
  loc_A9211D: FLdPr Me
  loc_A92120: VCallAd Control_ID_ItemCotizacionFlex
  loc_A92123: FStAdFunc var_88
  loc_A92126: FLdPr var_88
  loc_A92129: LateIdLdVar var_98 DispID_0 0
  loc_A92130: CStrVarTmp
  loc_A92131: CVarStr var_104
  loc_A92134: ILdI2 KeyAscii
  loc_A92137: CI4UI1
  loc_A92138: FLdRfVar var_EC
  loc_A9213B: ImpAdCallFPR4  = Chr()
  loc_A92140: FLdRfVar var_EC
  loc_A92143: AddVar var_118
  loc_A92147: CStrVarTmp
  loc_A92148: CVarStr var_12C
  loc_A9214B: PopAdLdVar
  loc_A9214C: FLdPr Me
  loc_A9214F: VCallAd Control_ID_ItemCotizacionFlex
  loc_A92152: FStAdFunc var_DC
  loc_A92155: FLdPr var_DC
  loc_A92158: LateIdSt
  loc_A9215D: FFreeAd var_88 = ""
  loc_A92164: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_118 = ""
  loc_A92171: FLdPr Me
  loc_A92174: VCallAd Control_ID_ItemCotizacionFlex
  loc_A92177: FStAdFunc var_88
  loc_A9217A: FLdPr var_88
  loc_A9217D: LateIdLdVar var_98 DispID_11 0
  loc_A92184: CI4Var
  loc_A92186: LitI4 9
  loc_A9218B: EqI4
  loc_A9218C: FFree1Ad var_88
  loc_A9218F: FFree1Var var_98 = ""
  loc_A92192: BranchF loc_A92213
  loc_A92195: FLdPr Me
  loc_A92198: VCallAd Control_ID_ItemCotizacionFlex
  loc_A9219B: FStAdFunc var_88
  loc_A9219E: FLdPr var_88
  loc_A921A1: LateIdLdVar var_98 DispID_0 0
  loc_A921A8: CStrVarTmp
  loc_A921A9: FStStrNoPop var_F0
  loc_A921AC: FnLenStr
  loc_A921AD: LitI4 3
  loc_A921B2: LeI4
  loc_A921B3: FFree1Str var_F0
  loc_A921B6: FFree1Ad var_88
  loc_A921B9: FFree1Var var_98 = ""
  loc_A921BC: BranchF loc_A92213
  loc_A921BF: FLdPr Me
  loc_A921C2: VCallAd Control_ID_ItemCotizacionFlex
  loc_A921C5: FStAdFunc var_88
  loc_A921C8: FLdPr var_88
  loc_A921CB: LateIdLdVar var_98 DispID_0 0
  loc_A921D2: CStrVarTmp
  loc_A921D3: CVarStr var_104
  loc_A921D6: ILdI2 KeyAscii
  loc_A921D9: CI4UI1
  loc_A921DA: FLdRfVar var_EC
  loc_A921DD: ImpAdCallFPR4  = Chr()
  loc_A921E2: FLdRfVar var_EC
  loc_A921E5: AddVar var_118
  loc_A921E9: CStrVarTmp
  loc_A921EA: CVarStr var_12C
  loc_A921ED: PopAdLdVar
  loc_A921EE: FLdPr Me
  loc_A921F1: VCallAd Control_ID_ItemCotizacionFlex
  loc_A921F4: FStAdFunc var_DC
  loc_A921F7: FLdPr var_DC
  loc_A921FA: LateIdSt
  loc_A921FF: FFreeAd var_88 = ""
  loc_A92206: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_118 = ""
  loc_A92213: FLdPr Me
  loc_A92216: VCallAd Control_ID_ItemCotizacionFlex
  loc_A92219: FStAdFunc var_88
  loc_A9221C: FLdPr var_88
  loc_A9221F: LateIdLdVar var_98 DispID_11 0
  loc_A92226: CI4Var
  loc_A92228: LitI4 &HA
  loc_A9222D: EqI4
  loc_A9222E: FFree1Ad var_88
  loc_A92231: FFree1Var var_98 = ""
  loc_A92234: BranchF loc_A922B8
  loc_A92237: FLdPr Me
  loc_A9223A: VCallAd Control_ID_ItemCotizacionFlex
  loc_A9223D: FStAdFunc var_88
  loc_A92240: FLdPr var_88
  loc_A92243: LateIdLdVar var_98 DispID_0 0
  loc_A9224A: CStrVarTmp
  loc_A9224B: FStStrNoPop var_F0
  loc_A9224E: FnLenStr
  loc_A9224F: LitI2_Byte 6
  loc_A92251: CI2UI1
  loc_A92253: LitI2_Byte 1
  loc_A92255: SubI2
  loc_A92256: CI4UI1
  loc_A92257: LeI4
  loc_A92258: FFree1Str var_F0
  loc_A9225B: FFree1Ad var_88
  loc_A9225E: FFree1Var var_98 = ""
  loc_A92261: BranchF loc_A922B8
  loc_A92264: FLdPr Me
  loc_A92267: VCallAd Control_ID_ItemCotizacionFlex
  loc_A9226A: FStAdFunc var_88
  loc_A9226D: FLdPr var_88
  loc_A92270: LateIdLdVar var_98 DispID_0 0
  loc_A92277: CStrVarTmp
  loc_A92278: CVarStr var_104
  loc_A9227B: ILdI2 KeyAscii
  loc_A9227E: CI4UI1
  loc_A9227F: FLdRfVar var_EC
  loc_A92282: ImpAdCallFPR4  = Chr()
  loc_A92287: FLdRfVar var_EC
  loc_A9228A: AddVar var_118
  loc_A9228E: CStrVarTmp
  loc_A9228F: CVarStr var_12C
  loc_A92292: PopAdLdVar
  loc_A92293: FLdPr Me
  loc_A92296: VCallAd Control_ID_ItemCotizacionFlex
  loc_A92299: FStAdFunc var_DC
  loc_A9229C: FLdPr var_DC
  loc_A9229F: LateIdSt
  loc_A922A4: FFreeAd var_88 = ""
  loc_A922AB: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_118 = ""
  loc_A922B8: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_RowColChange() 'A59C2C
  'Data Table: 47EEC0
  loc_A59968: FLdRfVar var_88
  loc_A5996B: FLdPr Me
  loc_A5996E: MemLdRfVar from_stack_1.global_56
  loc_A59971: NewIfNullPr clsbase
  loc_A59974: from_stack_1 = clsbase.RecordCount
  loc_A59979: ILdRf var_88
  loc_A5997C: LitI4 0
  loc_A59981: GtI4
  loc_A59982: BranchF loc_A59C2A
  loc_A59985: FLdPr Me
  loc_A59988: VCallAd Control_ID_ItemCotizacionFlex
  loc_A5998B: FStAdFunc var_8C
  loc_A5998E: FLdPr var_8C
  loc_A59991: LateIdLdVar var_9C DispID_10 0
  loc_A59998: CI4Var
  loc_A5999A: CVarI4
  loc_A5999E: PopAdLdVar
  loc_A5999F: LitVarI4
  loc_A599A7: PopAdLdVar
  loc_A599A8: FLdPr Me
  loc_A599AB: VCallAd Control_ID_ItemCotizacionFlex
  loc_A599AE: FStAdFunc var_E0
  loc_A599B1: FLdPr var_E0
  loc_A599B4: LateIdCallLdVar
  loc_A599BE: CStrVarTmp
  loc_A599BF: CVarStr var_100
  loc_A599C2: ImpAdCallI2 IsNull()
  loc_A599C7: FStI2 var_1BE
  loc_A599CA: FLdPr Me
  loc_A599CD: VCallAd Control_ID_ItemCotizacionFlex
  loc_A599D0: FStAdFunc var_104
  loc_A599D3: FLdPr var_104
  loc_A599D6: LateIdLdVar var_114 DispID_10 0
  loc_A599DD: CI4Var
  loc_A599DF: CVarI4
  loc_A599E3: PopAdLdVar
  loc_A599E4: LitVarI4
  loc_A599EC: PopAdLdVar
  loc_A599ED: FLdPr Me
  loc_A599F0: VCallAd Control_ID_ItemCotizacionFlex
  loc_A599F3: FStAdFunc var_158
  loc_A599F6: FLdPr var_158
  loc_A599F9: LateIdCallLdVar
  loc_A59A03: CStrVarTmp
  loc_A59A04: CVarStr var_1A8
  loc_A59A07: LitVarStr var_188, vbNullString
  loc_A59A0C: FStVarCopyObj var_198
  loc_A59A0F: FLdRfVar var_198
  loc_A59A12: FLdI2 var_1BE
  loc_A59A15: CVarBoolI2 var_178
  loc_A59A19: FLdRfVar var_1B8
  loc_A59A1C: ImpAdCallFPR4  = IIf(, , )
  loc_A59A21: FLdPr Me
  loc_A59A24: MemLdRfVar from_stack_1.global_88
  loc_A59A27: NewIfNullRf
  loc_A59A2B: FLdRfVar var_1B8
  loc_A59A2E: CStrVarVal var_1BC
  loc_A59A32: ImpAdLdI2 MemVar_C3D064
  loc_A59A35: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A59A3A: FFree1Str var_1BC
  loc_A59A3D: FFreeAd var_8C = "": var_E0 = "": var_104 = ""
  loc_A59A48: FFreeVar var_9C = "": var_F0 = "": var_100 = "": var_114 = "": var_168 = "": var_178 = "": var_198 = "": var_1A8 = ""
  loc_A59A5D: FLdPr Me
  loc_A59A60: VCallAd Control_ID_ItemCotizacionFlex
  loc_A59A63: FStAdFunc var_8C
  loc_A59A66: FLdPr var_8C
  loc_A59A69: LateIdLdVar var_9C DispID_10 0
  loc_A59A70: CI4Var
  loc_A59A72: CVarI4
  loc_A59A76: PopAdLdVar
  loc_A59A77: LitVarI4
  loc_A59A7F: PopAdLdVar
  loc_A59A80: FLdPr Me
  loc_A59A83: VCallAd Control_ID_ItemCotizacionFlex
  loc_A59A86: FStAdFunc var_E0
  loc_A59A89: FLdPr var_E0
  loc_A59A8C: LateIdCallLdVar
  loc_A59A96: PopAd
  loc_A59A98: FLdPr Me
  loc_A59A9B: MemLdRfVar from_stack_1.global_92
  loc_A59A9E: NewIfNullRf
  loc_A59AA2: FLdRfVar var_F0
  loc_A59AA5: CStrVarTmp
  loc_A59AA6: FStStrNoPop var_1BC
  loc_A59AA9: ImpAdLdI2 MemVar_C3D064
  loc_A59AAC: ImpAdCallFPR4 Proc_259_20_B23018(, , )
  loc_A59AB1: FFree1Str var_1BC
  loc_A59AB4: FFreeAd var_8C = ""
  loc_A59ABB: FFreeVar var_9C = ""
  loc_A59AC2: FLdPr Me
  loc_A59AC5: VCallAd Control_ID_ItemCotizacionFlex
  loc_A59AC8: FStAdFunc var_8C
  loc_A59ACB: FLdPr var_8C
  loc_A59ACE: LateIdLdVar var_9C DispID_10 0
  loc_A59AD5: CI4Var
  loc_A59AD7: CVarI4
  loc_A59ADB: PopAdLdVar
  loc_A59ADC: LitVarI4
  loc_A59AE4: PopAdLdVar
  loc_A59AE5: FLdPr Me
  loc_A59AE8: VCallAd Control_ID_ItemCotizacionFlex
  loc_A59AEB: FStAdFunc var_E0
  loc_A59AEE: FLdPr var_E0
  loc_A59AF1: LateIdCallLdVar
  loc_A59AFB: PopAd
  loc_A59AFD: FLdPr Me
  loc_A59B00: MemLdRfVar from_stack_1.global_96
  loc_A59B03: NewIfNullRf
  loc_A59B07: FLdRfVar var_F0
  loc_A59B0A: CStrVarTmp
  loc_A59B0B: FStStrNoPop var_1BC
  loc_A59B0E: ImpAdLdI2 MemVar_C3D064
  loc_A59B11: ImpAdCallFPR4 Proc_259_12_AE1238(, , )
  loc_A59B16: FFree1Str var_1BC
  loc_A59B19: FFreeAd var_8C = ""
  loc_A59B20: FFreeVar var_9C = ""
  loc_A59B27: LitStr "Partida: "
  loc_A59B2A: FLdRfVar var_1BC
  loc_A59B2D: FLdPr Me
  loc_A59B30: MemLdRfVar from_stack_1.global_88
  loc_A59B33: NewIfNullPr tblpartida
  loc_A59B36: from_stack_1v = tblpartida.DetaPartGet()
  loc_A59B3B: ILdRf var_1BC
  loc_A59B3E: ConcatStr
  loc_A59B3F: FStStrNoPop var_1C4
  loc_A59B42: LitStr " - Organigrama: "
  loc_A59B45: ConcatStr
  loc_A59B46: FStStrNoPop var_1CC
  loc_A59B49: FLdRfVar var_1C8
  loc_A59B4C: FLdPr Me
  loc_A59B4F: MemLdRfVar from_stack_1.global_92
  loc_A59B52: NewIfNullPr tblorganigrama
  loc_A59B55: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_A59B5A: ILdRf var_1C8
  loc_A59B5D: ConcatStr
  loc_A59B5E: FStStrNoPop var_1D0
  loc_A59B61: LitStr " - Finalidad: "
  loc_A59B64: ConcatStr
  loc_A59B65: FStStrNoPop var_1D8
  loc_A59B68: FLdRfVar var_1D4
  loc_A59B6B: FLdPr Me
  loc_A59B6E: MemLdRfVar from_stack_1.global_96
  loc_A59B71: NewIfNullPr tblfinalidad
  loc_A59B74: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_A59B79: ILdRf var_1D4
  loc_A59B7C: ConcatStr
  loc_A59B7D: CVarStr var_9C
  loc_A59B80: PopAdLdVar
  loc_A59B81: FLdPr Me
  loc_A59B84: VCallAd Control_ID_ItemCotizacionFlex
  loc_A59B87: FStAdFunc var_8C
  loc_A59B8A: FLdPr var_8C
  loc_A59B8D: LateIdSt
  loc_A59B92: FFreeStr var_1BC = "": var_1C4 = "": var_1CC = "": var_1C8 = "": var_1D0 = "": var_1D8 = ""
  loc_A59BA3: FFree1Ad var_8C
  loc_A59BA6: FFree1Var var_9C = ""
  loc_A59BA9: FLdRfVar var_1BC
  loc_A59BAC: FLdPr Me
  loc_A59BAF: MemLdRfVar from_stack_1.global_88
  loc_A59BB2: NewIfNullPr tblpartida
  loc_A59BB5: from_stack_1v = tblpartida.DetaPartGet()
  loc_A59BBA: ILdRf var_1BC
  loc_A59BBD: FLdPr Me
  loc_A59BC0: VCallAd Control_ID_DetaPartLbl
  loc_A59BC3: FStAdFunc var_8C
  loc_A59BC6: FLdPr var_8C
  loc_A59BC9: Me.Caption = from_stack_1
  loc_A59BCE: FFree1Str var_1BC
  loc_A59BD1: FFree1Ad var_8C
  loc_A59BD4: FLdRfVar var_1BC
  loc_A59BD7: FLdPr Me
  loc_A59BDA: MemLdRfVar from_stack_1.global_92
  loc_A59BDD: NewIfNullPr tblorganigrama
  loc_A59BE0: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_A59BE5: ILdRf var_1BC
  loc_A59BE8: FLdPr Me
  loc_A59BEB: VCallAd Control_ID_DetaOrgaLbl
  loc_A59BEE: FStAdFunc var_8C
  loc_A59BF1: FLdPr var_8C
  loc_A59BF4: Me.Caption = from_stack_1
  loc_A59BF9: FFree1Str var_1BC
  loc_A59BFC: FFree1Ad var_8C
  loc_A59BFF: FLdRfVar var_1BC
  loc_A59C02: FLdPr Me
  loc_A59C05: MemLdRfVar from_stack_1.global_96
  loc_A59C08: NewIfNullPr tblfinalidad
  loc_A59C0B: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_A59C10: ILdRf var_1BC
  loc_A59C13: FLdPr Me
  loc_A59C16: VCallAd Control_ID_DetaFifuLbl
  loc_A59C19: FStAdFunc var_8C
  loc_A59C1C: FLdPr var_8C
  loc_A59C1F: Me.Caption = from_stack_1
  loc_A59C24: FFree1Str var_1BC
  loc_A59C27: FFree1Ad var_8C
  loc_A59C2A: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_LeaveCell() '9FF0AC
  'Data Table: 47EEC0
  loc_9FEF60: LitStr vbNullString
  loc_9FEF63: FLdPr Me
  loc_9FEF66: MemStStrCopy
  loc_9FEF6A: FLdPr Me
  loc_9FEF6D: VCallAd Control_ID_ItemCotizacionFlex
  loc_9FEF70: FStAdFunc var_88
  loc_9FEF73: FLdPr var_88
  loc_9FEF76: LateIdLdVar var_98 DispID_10 0
  loc_9FEF7D: CI4Var
  loc_9FEF7F: CVarI4
  loc_9FEF83: PopAdLdVar
  loc_9FEF84: LitVarI4
  loc_9FEF8C: PopAdLdVar
  loc_9FEF8D: FLdPr Me
  loc_9FEF90: VCallAd Control_ID_ItemCotizacionFlex
  loc_9FEF93: FStAdFunc var_DC
  loc_9FEF96: FLdPr var_DC
  loc_9FEF99: LateIdCallLdVar
  loc_9FEFA3: CStrVarTmp
  loc_9FEFA4: FStStrNoPop var_F0
  loc_9FEFA7: LitStr vbNullString
  loc_9FEFAA: NeStr
  loc_9FEFAC: FFree1Str var_F0
  loc_9FEFAF: FFreeAd var_88 = ""
  loc_9FEFB6: FFreeVar var_98 = ""
  loc_9FEFBD: BranchF loc_9FF0A8
  loc_9FEFC0: FLdPr Me
  loc_9FEFC3: VCallAd Control_ID_ItemCotizacionFlex
  loc_9FEFC6: FStAdFunc var_88
  loc_9FEFC9: FLdPr var_88
  loc_9FEFCC: LateIdLdVar var_98 DispID_10 0
  loc_9FEFD3: CI4Var
  loc_9FEFD5: CVarI4
  loc_9FEFD9: PopAdLdVar
  loc_9FEFDA: LitVarI4
  loc_9FEFE2: PopAdLdVar
  loc_9FEFE3: FLdPr Me
  loc_9FEFE6: VCallAd Control_ID_ItemCotizacionFlex
  loc_9FEFE9: FStAdFunc var_DC
  loc_9FEFEC: FLdPr var_DC
  loc_9FEFEF: LateIdCallLdVar
  loc_9FEFF9: PopAd
  loc_9FEFFB: FLdRfVar var_F0
  loc_9FEFFE: FLdPr Me
  loc_9FF001:  = Me.Name
  loc_9FF006: FLdPr Me
  loc_9FF009: MemLdRfVar from_stack_1.global_88
  loc_9FF00C: NewIfNullRf
  loc_9FF010: ILdRf var_F0
  loc_9FF013: LitI2_Byte 0
  loc_9FF015: FLdRfVar var_EC
  loc_9FF018: CStrVarTmp
  loc_9FF019: FStStrNoPop var_F4
  loc_9FF01C: ImpAdLdI2 MemVar_C3D064
  loc_9FF01F: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_9FF024: FStStrNoPop var_F8
  loc_9FF027: FLdPr Me
  loc_9FF02A: MemStStrCopy
  loc_9FF02E: FFreeStr var_F4 = "": var_F0 = ""
  loc_9FF037: FFreeAd var_88 = ""
  loc_9FF03E: FFreeVar var_98 = ""
  loc_9FF045: FLdPr Me
  loc_9FF048: MemLdStr global_72
  loc_9FF04B: LitStr vbNullString
  loc_9FF04E: EqStr
  loc_9FF050: BranchF loc_9FF0A8
  loc_9FF053: FLdPr Me
  loc_9FF056: VCallAd Control_ID_ItemCotizacionFlex
  loc_9FF059: FStAdFunc var_88
  loc_9FF05C: FLdPr var_88
  loc_9FF05F: LateIdLdVar var_98 DispID_10 0
  loc_9FF066: CI4Var
  loc_9FF068: CVarI4
  loc_9FF06C: PopAdLdVar
  loc_9FF06D: LitVarI4
  loc_9FF075: PopAdLdVar
  loc_9FF076: FLdPr Me
  loc_9FF079: VCallAd Control_ID_ItemCotizacionFlex
  loc_9FF07C: FStAdFunc var_DC
  loc_9FF07F: FLdPr var_DC
  loc_9FF082: LateIdCallLdVar
  loc_9FF08C: CStrVarTmp
  loc_9FF08D: FStStrNoPop var_F0
  loc_9FF090: FLdPr Me
  loc_9FF093: MemStStrCopy
  loc_9FF097: FFree1Str var_F0
  loc_9FF09A: FFreeAd var_88 = ""
  loc_9FF0A1: FFreeVar var_98 = ""
  loc_9FF0A8: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_0 '951F18
  'Data Table: 47EEC0
  loc_951F04: FLdPr Me
  loc_951F07: VCallAd Control_ID_FechImpuMsk
  loc_951F0A: CVarAd
  loc_951F0E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951F13: FFree1Var var_94 = ""
  loc_951F16: ExitProcHresult
End Sub

Private Function FechImpuMsk_UnknownEvent_8(arg_C) '9DE904
  'Data Table: 47EEC0
  loc_9DE80C: FLdRfVar var_8A
  loc_9DE80F: FLdPr Me
  loc_9DE812: VCallAd Control_ID_cmdCancelar
  loc_9DE815: FStAdFunc var_88
  loc_9DE818: FLdPr var_88
  loc_9DE81B:  = Me.Value
  loc_9DE820: FLdI2 var_8A
  loc_9DE823: NotI4
  loc_9DE824: FLdPr Me
  loc_9DE827: VCallAd Control_ID_FechImpuMsk
  loc_9DE82A: FStAdFunc var_90
  loc_9DE82D: FLdPr var_90
  loc_9DE830: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DE837: CBoolVar
  loc_9DE839: AndI4
  loc_9DE83A: FFreeAd var_88 = ""
  loc_9DE841: FFree1Var var_A0 = ""
  loc_9DE844: BranchF loc_9DE900
  loc_9DE847: FLdPr Me
  loc_9DE84A: VCallAd Control_ID_FechImpuMsk
  loc_9DE84D: FStAdFunc var_88
  loc_9DE850: FLdPr var_88
  loc_9DE853: LateIdLdVar var_A0 DispID_15 0
  loc_9DE85A: PopAd
  loc_9DE85C: FLdPr Me
  loc_9DE85F: VCallAd Control_ID_FechImpuMsk
  loc_9DE862: FStAdFunc var_90
  loc_9DE865: FLdPr var_90
  loc_9DE868: LateIdLdVar var_B0 DispID_11 -32767
  loc_9DE86F: PopAd
  loc_9DE871: FLdPr Me
  loc_9DE874: VCallAd Control_ID_FechImpuMsk
  loc_9DE877: FStAdFunc var_C4
  loc_9DE87A: LitI2_Byte &HFF
  loc_9DE87C: PopTmpLdAd2 var_8A
  loc_9DE87F: FLdZeroAd var_C4
  loc_9DE882: FStAdFunc var_BC
  loc_9DE885: FLdRfVar var_BC
  loc_9DE888: FLdRfVar var_B0
  loc_9DE88B: CStrVarTmp
  loc_9DE88C: FStStrNoPop var_B8
  loc_9DE88F: LitI2_Byte &HFF
  loc_9DE891: LitI2_Byte &HFF
  loc_9DE893: FLdRfVar var_A0
  loc_9DE896: CStrVarTmp
  loc_9DE897: FStStrNoPop var_B4
  loc_9DE89A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DE89F: FStStrNoPop var_C0
  loc_9DE8A2: FLdPr Me
  loc_9DE8A5: MemStStrCopy
  loc_9DE8A9: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DE8B2: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DE8BD: FFreeVar var_A0 = ""
  loc_9DE8C4: FLdPr Me
  loc_9DE8C7: VCallAd Control_ID_FechImpuMsk
  loc_9DE8CA: FStAdFunc var_C4
  loc_9DE8CD: LitNothing
  loc_9DE8CF: CastAd
  loc_9DE8D2: FStAdFunc var_BC
  loc_9DE8D5: FLdRfVar var_BC
  loc_9DE8D8: FLdZeroAd var_C4
  loc_9DE8DB: FStAdFuncNoPop
  loc_9DE8DE: CastAd
  loc_9DE8E1: FStAdFunc var_90
  loc_9DE8E4: FLdRfVar var_90
  loc_9DE8E7: FLdPr Me
  loc_9DE8EA: MemLdRfVar from_stack_1.global_72
  loc_9DE8ED: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DE8F2: IStI2 arg_C
  loc_9DE8F5: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DE900: ExitProcHresult
  loc_9DE901: FLdRfVar var_C8
End Function

Private Sub FechImpuMsk_KeyPress(KeyAscii As Integer) '987CE8
  'Data Table: 47EEC0
  loc_987CA4: ILdI2 KeyAscii
  loc_987CA7: CI4UI1
  loc_987CA8: LitI4 &H20
  loc_987CAD: EqI4
  loc_987CAE: BranchF loc_987CE4
  loc_987CB1: LitVar_Missing var_A4
  loc_987CB4: PopAdLdVar
  loc_987CB5: LitVarI4
  loc_987CBD: PopAdLdVar
  loc_987CBE: ImpAdLdRf MemVar_C3D9A8
  loc_987CC1: NewIfNullPr frmCalendario
  loc_987CC4: frmCalendario.Show from_stack_1, from_stack_2
  loc_987CC9: ImpAdLdRf MemVar_C3D038
  loc_987CCC: CDargRef
  loc_987CD0: FLdPr Me
  loc_987CD3: VCallAd Control_ID_FechImpuMsk
  loc_987CD6: FStAdFunc var_A8
  loc_987CD9: FLdPr var_A8
  loc_987CDC: LateIdSt
  loc_987CE1: FFree1Ad var_A8
  loc_987CE4: ExitProcHresult
End Sub

Private Sub Form_Load() 'A64C5C
  'Data Table: 47EEC0
  loc_A64958: LitI2_Byte 0
  loc_A6495A: CR8I2
  loc_A6495B: PopFPR4
  loc_A6495C: FLdPr Me
  loc_A6495F: Me.Left = from_stack_1s
  loc_A64964: LitI2_Byte 0
  loc_A64966: CR8I2
  loc_A64967: PopFPR4
  loc_A64968: FLdPr Me
  loc_A6496B: Me.Top = from_stack_1s
  loc_A64970: FLdPr Me
  loc_A64973: VCallAd Control_ID_ItemCotizacionFlex
  loc_A64976: FStAdFunc var_88
  loc_A64979: LitVarI4
  loc_A64981: PopAdLdVar
  loc_A64982: LitVarI4
  loc_A6498A: PopAdLdVar
  loc_A6498B: FLdPr var_88
  loc_A6498E: LateIdCallSt
  loc_A64996: LitVarI4
  loc_A6499E: PopAdLdVar
  loc_A6499F: LitVarI4
  loc_A649A7: PopAdLdVar
  loc_A649A8: FLdPr var_88
  loc_A649AB: LateIdCallSt
  loc_A649B3: LitVarI4
  loc_A649BB: PopAdLdVar
  loc_A649BC: LitVarI4
  loc_A649C4: PopAdLdVar
  loc_A649C5: FLdPr var_88
  loc_A649C8: LateIdCallSt
  loc_A649D0: LitVarI4
  loc_A649D8: PopAdLdVar
  loc_A649D9: LitVarI4
  loc_A649E1: PopAdLdVar
  loc_A649E2: FLdPr var_88
  loc_A649E5: LateIdCallSt
  loc_A649ED: LitVarI4
  loc_A649F5: PopAdLdVar
  loc_A649F6: LitVarI4
  loc_A649FE: PopAdLdVar
  loc_A649FF: FLdPr var_88
  loc_A64A02: LateIdCallSt
  loc_A64A0A: LitVarI4
  loc_A64A12: PopAdLdVar
  loc_A64A13: LitVarI4
  loc_A64A1B: PopAdLdVar
  loc_A64A1C: FLdPr var_88
  loc_A64A1F: LateIdCallSt
  loc_A64A27: LitVarI4
  loc_A64A2F: PopAdLdVar
  loc_A64A30: LitVarI4
  loc_A64A38: PopAdLdVar
  loc_A64A39: FLdPr var_88
  loc_A64A3C: LateIdCallSt
  loc_A64A44: LitVarI4
  loc_A64A4C: PopAdLdVar
  loc_A64A4D: LitVarI4
  loc_A64A55: PopAdLdVar
  loc_A64A56: FLdPr var_88
  loc_A64A59: LateIdCallSt
  loc_A64A61: LitVarI4
  loc_A64A69: PopAdLdVar
  loc_A64A6A: LitVarI4
  loc_A64A72: PopAdLdVar
  loc_A64A73: FLdPr var_88
  loc_A64A76: LateIdCallSt
  loc_A64A7E: LitVarI4
  loc_A64A86: PopAdLdVar
  loc_A64A87: LitVarI4
  loc_A64A8F: PopAdLdVar
  loc_A64A90: FLdPr var_88
  loc_A64A93: LateIdCallSt
  loc_A64A9B: LitVarI4
  loc_A64AA3: PopAdLdVar
  loc_A64AA4: LitVarI4
  loc_A64AAC: PopAdLdVar
  loc_A64AAD: FLdPr var_88
  loc_A64AB0: LateIdCallSt
  loc_A64AB8: LitVarI4
  loc_A64AC0: PopAdLdVar
  loc_A64AC1: LitVarI4
  loc_A64AC9: PopAdLdVar
  loc_A64ACA: FLdPr var_88
  loc_A64ACD: LateIdCallSt
  loc_A64AD5: LitVarI4
  loc_A64ADD: PopAdLdVar
  loc_A64ADE: LitVarI4
  loc_A64AE6: PopAdLdVar
  loc_A64AE7: FLdPr var_88
  loc_A64AEA: LateIdCallSt
  loc_A64AF2: LitNothing
  loc_A64AF4: FStAd var_88 
  loc_A64AF8: Call Proc_102_24_A2E3E8()
  loc_A64AFD: LitStr vbNullString
  loc_A64B00: FLdPr Me
  loc_A64B03: MemStStrCopy
  loc_A64B07: LitStr "SELECT i.PeriInfo, i.CodiNope, i.Item"
  loc_A64B0A: LitStr " , SUM(i.PrevImpu) PrevImpu, SUM(i.PrevImpu - i.DefiImpu) SaldoPrev, ImpoCoti"
  loc_A64B0D: ConcatStr
  loc_A64B0E: FStStrNoPop var_CC
  loc_A64B11: LitStr " , np.*, DetaTico, DetaNope"
  loc_A64B14: ConcatStr
  loc_A64B15: FStStrNoPop var_D0
  loc_A64B18: LitStr " FROM ("
  loc_A64B1B: ConcatStr
  loc_A64B1C: FStStrNoPop var_D4
  loc_A64B1F: LitStr " SELECT itc.PeriInfo, itc.CodiNope, itc.CodiItco, COUNT(0) cuenta, SUM(itc.CantItco*itc.ImunItco) ImpoCoti"
  loc_A64B22: ConcatStr
  loc_A64B23: FStStrNoPop var_D8
  loc_A64B26: LitStr " FROM itemcotizacion itc"
  loc_A64B29: ConcatStr
  loc_A64B2A: FStStrNoPop var_DC
  loc_A64B2D: LitStr " INNER JOIN notapedido np ON np.PeriInfo = itc.PeriInfo AND np.CodiNope = itc.CodiNope AND FeanNope IS NULL"
  loc_A64B30: ConcatStr
  loc_A64B31: FStStrNoPop var_E0
  loc_A64B34: LitStr " LEFT JOIN ordencompra oc ON oc.PeriInfo = itc.PeriInfo AND oc.CodiNope = itc.CodiNope"
  loc_A64B37: ConcatStr
  loc_A64B38: FStStrNoPop var_E4
  loc_A64B3B: LitStr " Where itc.PeriInfo = "
  loc_A64B3E: ConcatStr
  loc_A64B3F: FStStrNoPop var_E8
  loc_A64B42: ImpAdLdI2 MemVar_C3D064
  loc_A64B45: CStrUI1
  loc_A64B47: FStStrNoPop var_EC
  loc_A64B4A: ConcatStr
  loc_A64B4B: FStStrNoPop var_F0
  loc_A64B4E: LitStr " AND oc.PeriInfo IS NULL"
  loc_A64B51: ConcatStr
  loc_A64B52: FStStrNoPop var_F4
  loc_A64B55: LitStr " GROUP BY itc.PeriInfo, itc.CodiNope, itc.CodiItco"
  loc_A64B58: ConcatStr
  loc_A64B59: FStStrNoPop var_F8
  loc_A64B5C: LitStr " Having Cuenta = 1"
  loc_A64B5F: ConcatStr
  loc_A64B60: FStStrNoPop var_FC
  loc_A64B63: LitStr " ) AS tbl"
  loc_A64B66: ConcatStr
  loc_A64B67: FStStrNoPop var_100
  loc_A64B6A: LitStr " INNER JOIN imputacion i on i.PeriInfo = tbl.PeriInfo and i.CodiNope = tbl.CodiNope and i.Item = tbl.CodiItco"
  loc_A64B6D: ConcatStr
  loc_A64B6E: FStStrNoPop var_104
  loc_A64B71: LitStr " INNER JOIN notapedido np ON np.PeriInfo = i.PeriInfo AND np.CodiNope = i.CodiNope"
  loc_A64B74: ConcatStr
  loc_A64B75: FStStrNoPop var_108
  loc_A64B78: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = np.CodiTico"
  loc_A64B7B: ConcatStr
  loc_A64B7C: FStStrNoPop var_10C
  loc_A64B7F: LitStr " GROUP BY i.PeriInfo, i.CodiNope /*, i.Item */ "
  loc_A64B82: ConcatStr
  loc_A64B83: FStStrNoPop var_110
  loc_A64B86: LitStr " HAVING SaldoPrev != ImpoCoti;"
  loc_A64B89: ConcatStr
  loc_A64B8A: FStStrNoPop var_114
  loc_A64B8D: FLdPr Me
  loc_A64B90: MemLdRfVar from_stack_1.global_52
  loc_A64B93: NewIfNullPr clsnotapedido
  loc_A64B96: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_A64B9B: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_A64BC4: LitVarI2 var_98, 0
  loc_A64BC9: PopAdLdVar
  loc_A64BCA: LitStr "Nota de Pedido (número)"
  loc_A64BCD: FLdPr Me
  loc_A64BD0: VCallAd Control_ID_FiltroCbo
  loc_A64BD3: FStAdFunc var_118
  loc_A64BD6: FLdPr var_118
  loc_A64BD9: Me.AddItem from_stack_1, from_stack_2
  loc_A64BDE: FFree1Ad var_118
  loc_A64BE1: LitI2_Byte 0
  loc_A64BE3: FLdPr Me
  loc_A64BE6: VCallAd Control_ID_FiltroCbo
  loc_A64BE9: FStAdFunc var_118
  loc_A64BEC: FLdPr var_118
  loc_A64BEF: Me.ListIndex = from_stack_1
  loc_A64BF4: FFree1Ad var_118
  loc_A64BF7: Call cmdCancelar_Click()
  loc_A64BFC: LitI4 0
  loc_A64C01: LitI4 1
  loc_A64C06: FLdRfVar var_11C
  loc_A64C09: Redim
  loc_A64C13: FLdPr Me
  loc_A64C16: MemLdRfVar from_stack_1.global_52
  loc_A64C19: NewIfNullAd
  loc_A64C1C: FStAd var_118 
  loc_A64C20: FLdRfVar var_118
  loc_A64C23: CVarRef
  loc_A64C28: ParmAry1St
  loc_A64C2E: FLdPr Me
  loc_A64C31: VCallAd Control_ID_dgdABMS
  loc_A64C34: CVarAd
  loc_A64C38: ParmAry1St
  loc_A64C3E: FLdRfVar var_11C
  loc_A64C41: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A64C46: ILdRf var_118
  loc_A64C49: CastAd
  loc_A64C4C: FLdPr Me
  loc_A64C4F: MemStAdFunc
  loc_A64C53: FLdRfVar var_11C
  loc_A64C56: Erase
  loc_A64C57: FFree1Ad var_118
  loc_A64C5A: ExitProcHresult
End Sub

Private Sub Form_Activate() '99AE5C
  'Data Table: 47EEC0
  loc_99ADFC: FLdRfVar var_C2
  loc_99ADFF: FLdRfVar var_C0
  loc_99AE02: LitVarI2 var_B8, 1
  loc_99AE07: FLdPr Me
  loc_99AE0A: VCallAd Control_ID_tlbABMS
  loc_99AE0D: FStAdFunc var_88
  loc_99AE10: FLdPr var_88
  loc_99AE13: LateIdLdVar var_98 DispID_3 0
  loc_99AE1A: CastAdVar Me
  loc_99AE1E: FStAdFunc var_BC
  loc_99AE21: FLdPr var_BC
  loc_99AE24:  = Me.Buttons.ControlDefault
  loc_99AE29: FLdPr var_C0
  loc_99AE2C:  = Me.Enabled
  loc_99AE31: FLdI2 var_C2
  loc_99AE34: FFreeAd var_88 = "": var_BC = ""
  loc_99AE3D: FFreeVar var_98 = ""
  loc_99AE44: BranchF loc_99AE5A
  loc_99AE47: LitI4 0
  loc_99AE4C: FLdPr Me
  loc_99AE4F: MemLdRfVar from_stack_1.global_52
  loc_99AE52: NewIfNullPr clsnotapedido
  loc_99AE55: Call clsnotapedido.Encontrar(from_stack_1v)
  loc_99AE5A: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '94977C
  'Data Table: 47EEC0
  loc_949768: ILdI2 KeyAscii
  loc_94976B: CI4UI1
  loc_94976C: LitI4 &HD
  loc_949771: EqI4
  loc_949772: BranchF loc_94977A
  loc_949775: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94977A: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95707C
  'Data Table: 47EEC0
  loc_957064: ILdI2 KeyCode
  loc_957067: ILdRf Me
  loc_95706A: CastAd
  loc_95706D: FStAdFunc var_88
  loc_957070: FLdRfVar var_88
  loc_957073: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_957078: FFree1Ad var_88
  loc_95707B: ExitProcHresult
End Sub

Private Function Proc_102_24_A2E3E8() 'A2E3E8
  'Data Table: 47EEC0
  loc_A2E1E8: FLdPr Me
  loc_A2E1EB: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2E1EE: FStAdFunc var_88
  loc_A2E1F1: FLdPr var_88
  loc_A2E1F4: LateIdCall
  loc_A2E1FC: LitVarI4
  loc_A2E204: PopAdLdVar
  loc_A2E205: FLdPr var_88
  loc_A2E208: LateIdSt
  loc_A2E20D: LitVarI4
  loc_A2E215: PopAdLdVar
  loc_A2E216: LitVarI4
  loc_A2E21E: PopAdLdVar
  loc_A2E21F: LitVarStr var_D8, "Item"
  loc_A2E224: PopAdLdVar
  loc_A2E225: FLdPr var_88
  loc_A2E228: LateIdCallSt
  loc_A2E230: LitVarI4
  loc_A2E238: PopAdLdVar
  loc_A2E239: LitVarI4
  loc_A2E241: PopAdLdVar
  loc_A2E242: LitVarStr var_D8, "Insumo"
  loc_A2E247: PopAdLdVar
  loc_A2E248: FLdPr var_88
  loc_A2E24B: LateIdCallSt
  loc_A2E253: LitVarI4
  loc_A2E25B: PopAdLdVar
  loc_A2E25C: LitVarI4
  loc_A2E264: PopAdLdVar
  loc_A2E265: LitVarStr var_D8, "Detalle"
  loc_A2E26A: PopAdLdVar
  loc_A2E26B: FLdPr var_88
  loc_A2E26E: LateIdCallSt
  loc_A2E276: LitVarI4
  loc_A2E27E: PopAdLdVar
  loc_A2E27F: LitVarI4
  loc_A2E287: PopAdLdVar
  loc_A2E288: LitVarStr var_D8, "Total Cotiz."
  loc_A2E28D: PopAdLdVar
  loc_A2E28E: FLdPr var_88
  loc_A2E291: LateIdCallSt
  loc_A2E299: LitVarI4
  loc_A2E2A1: PopAdLdVar
  loc_A2E2A2: LitVarI4
  loc_A2E2AA: PopAdLdVar
  loc_A2E2AB: LitVarStr var_D8, "Total N.P."
  loc_A2E2B0: PopAdLdVar
  loc_A2E2B1: FLdPr var_88
  loc_A2E2B4: LateIdCallSt
  loc_A2E2BC: LitVarI4
  loc_A2E2C4: PopAdLdVar
  loc_A2E2C5: LitVarI4
  loc_A2E2CD: PopAdLdVar
  loc_A2E2CE: LitVarStr var_D8, "Diferencia"
  loc_A2E2D3: PopAdLdVar
  loc_A2E2D4: FLdPr var_88
  loc_A2E2D7: LateIdCallSt
  loc_A2E2DF: LitVarI4
  loc_A2E2E7: PopAdLdVar
  loc_A2E2E8: LitVarI4
  loc_A2E2F0: PopAdLdVar
  loc_A2E2F1: LitVarStr var_D8, "Saldo Prev."
  loc_A2E2F6: PopAdLdVar
  loc_A2E2F7: FLdPr var_88
  loc_A2E2FA: LateIdCallSt
  loc_A2E302: LitVarI4
  loc_A2E30A: PopAdLdVar
  loc_A2E30B: LitVarI4
  loc_A2E313: PopAdLdVar
  loc_A2E314: LitVarStr var_D8, "Partida"
  loc_A2E319: PopAdLdVar
  loc_A2E31A: FLdPr var_88
  loc_A2E31D: LateIdCallSt
  loc_A2E325: LitVarI4
  loc_A2E32D: PopAdLdVar
  loc_A2E32E: LitVarI4
  loc_A2E336: PopAdLdVar
  loc_A2E337: LitVarStr var_D8, "Organig."
  loc_A2E33C: PopAdLdVar
  loc_A2E33D: FLdPr var_88
  loc_A2E340: LateIdCallSt
  loc_A2E348: LitVarI4
  loc_A2E350: PopAdLdVar
  loc_A2E351: LitVarI4
  loc_A2E359: PopAdLdVar
  loc_A2E35A: LitVarStr var_D8, "Un.Gasto"
  loc_A2E35F: PopAdLdVar
  loc_A2E360: FLdPr var_88
  loc_A2E363: LateIdCallSt
  loc_A2E36B: LitVarI4
  loc_A2E373: PopAdLdVar
  loc_A2E374: LitVarI4
  loc_A2E37C: PopAdLdVar
  loc_A2E37D: LitVarStr var_D8, "Finalidad"
  loc_A2E382: PopAdLdVar
  loc_A2E383: FLdPr var_88
  loc_A2E386: LateIdCallSt
  loc_A2E38E: LitVarI4
  loc_A2E396: PopAdLdVar
  loc_A2E397: LitVarI4
  loc_A2E39F: PopAdLdVar
  loc_A2E3A0: LitVarStr var_D8, "Imput."
  loc_A2E3A5: PopAdLdVar
  loc_A2E3A6: FLdPr var_88
  loc_A2E3A9: LateIdCallSt
  loc_A2E3B1: LitVarI4
  loc_A2E3B9: PopAdLdVar
  loc_A2E3BA: LitVarI4
  loc_A2E3C2: PopAdLdVar
  loc_A2E3C3: LitVarStr var_D8, "correcto"
  loc_A2E3C8: PopAdLdVar
  loc_A2E3C9: FLdPr var_88
  loc_A2E3CC: LateIdCallSt
  loc_A2E3D4: FLdPr var_88
  loc_A2E3D7: LateIdCall
  loc_A2E3DF: LitNothing
  loc_A2E3E1: FStAd var_88 
  loc_A2E3E5: ExitProcHresult
  loc_A2E3E6: LitI2_Byte
End Function
