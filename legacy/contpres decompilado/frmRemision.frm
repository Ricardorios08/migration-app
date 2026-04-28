VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmRemision
  Caption = "Remisión o Anulación de Ordenes de Pago"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmRemision.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 14010
  ClientHeight = 9135
  Begin VB.Frame FrameRemision
    Caption = " Remisión o Anulación de Órdenes de Pago "
    Left = 120
    Top = 1680
    Width = 14535
    Height = 7095
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
    Begin VB.TextBox DetaOrpaTxt
      Left = 1200
      Top = 960
      Width = 13095
      Height = 855
      TabIndex = 7
      MultiLine = -1  'True
      MaxLength = 500
      DataField = "DetaOrpa"
    End
    Begin MSDataGridLib.DataGrid dgdCheque
      Left = 120
      Top = 4440
      Width = 14295
      Height = 2415
      TabIndex = 9
      OleObjectBlob = "frmRemision.frx":08CA
    End
    Begin MSDataGridLib.DataGrid dgdABMS
      Left = 120
      Top = 2040
      Width = 14295
      Height = 2295
      TabIndex = 8
      OleObjectBlob = "frmRemision.frx":0E26
    End
    Begin MSMask.MaskEdBox FechaMsk
      Left = 6000
      Top = 480
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "frmRemision.frx":13E6
    End
    Begin VB.Label Label1
      Caption = "Fecha de Remisión o Anulación de la Orden de Pago:"
      Left = 240
      Top = 510
      Width = 5655
      Height = 300
      TabIndex = 4
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
      Caption = "Detalle:"
      Left = 240
      Top = 960
      Width = 855
      Height = 375
      TabIndex = 6
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
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "frmRemision.frx":1496
    End
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
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmRemision.frx":151E
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14010
    Height = 660
    TabIndex = 10
    OleObjectBlob = "frmRemision.frx":909C
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 11
      TabStop = 0   'False
      Picture = "frmRemision.frx":95F8
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmRemision"


Private Sub cmdCancelar_Click() 'A1D990
  'Data Table: 43BE34
  loc_A1D80C: OnErrorGoto loc_A1D90C
  loc_A1D80F: LitI2_Byte 0
  loc_A1D811: CUI1I2
  loc_A1D813: FLdPr Me
  loc_A1D816: MemStUI1
  loc_A1D81A: ILdRf Me
  loc_A1D81D: CastAd
  loc_A1D820: FStAdFunc var_88
  loc_A1D823: FLdRfVar var_88
  loc_A1D826: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A1D82B: FFree1Ad var_88
  loc_A1D82E: LitI4 0
  loc_A1D833: LitI4 1
  loc_A1D838: FLdRfVar var_8C
  loc_A1D83B: Redim
  loc_A1D845: FLdPr Me
  loc_A1D848: VCallAd Control_ID_dgdABMS
  loc_A1D84B: CVarAd
  loc_A1D84F: ParmAry1St
  loc_A1D855: FLdPr Me
  loc_A1D858: VCallAd Control_ID_dgdCheque
  loc_A1D85B: CVarAd
  loc_A1D85F: ParmAry1St
  loc_A1D865: FLdRfVar var_8C
  loc_A1D868: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A1D86D: FLdRfVar var_8C
  loc_A1D870: Erase
  loc_A1D871: FLdPr Me
  loc_A1D874: MemLdRfVar from_stack_1.global_52
  loc_A1D877: NewIfNullAd
  loc_A1D87A: FStAd var_B0 
  loc_A1D87E: FLdRfVar var_B0
  loc_A1D881: CVarRef
  loc_A1D886: ILdRf Me
  loc_A1D889: CastAd
  loc_A1D88C: FStAdFunc var_88
  loc_A1D88F: FLdRfVar var_88
  loc_A1D892: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A1D897: ILdRf var_B0
  loc_A1D89A: CastAd
  loc_A1D89D: FLdPr Me
  loc_A1D8A0: MemStAdFunc
  loc_A1D8A4: FFreeAd var_88 = ""
  loc_A1D8AB: ILdRf Me
  loc_A1D8AE: CastAd
  loc_A1D8B1: FStAdFunc var_88
  loc_A1D8B4: FLdRfVar var_88
  loc_A1D8B7: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A1D8BC: FFree1Ad var_88
  loc_A1D8BF: FLdPr Me
  loc_A1D8C2: MemLdRfVar from_stack_1.global_52
  loc_A1D8C5: NewIfNullPr clsordenpago
  loc_A1D8C8: Call clsordenpago.Requery()
  loc_A1D8CD: FLdPr Me
  loc_A1D8D0: VCallAd Control_ID_dgdABMS
  loc_A1D8D3: FStAdFunc var_B0
  loc_A1D8D6: LitStr "Orden/es de Pago pendiente/s de Remisión"
  loc_A1D8D9: FStStrCopy var_C4
  loc_A1D8DC: FLdRfVar var_C4
  loc_A1D8DF: FLdPr Me
  loc_A1D8E2: MemLdStr global_68
  loc_A1D8E5: FLdZeroAd var_B0
  loc_A1D8E8: FStAdFunc var_88
  loc_A1D8EB: FLdRfVar var_88
  loc_A1D8EE: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A1D8F3: FFree1Str var_C4
  loc_A1D8F6: FFreeAd var_88 = ""
  loc_A1D8FD: LitI2_Byte 0
  loc_A1D8FF: LitVarI2 var_9C, 0
  loc_A1D904: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A1D909: FFree1Var var_9C = ""
  loc_A1D90C: FLdRfVar var_C8
  loc_A1D90F: ImpAdCallI2 Err 'rtcErrObj
  loc_A1D914: FStAdFunc var_88
  loc_A1D917: FLdPr var_88
  loc_A1D91A:  = Err.Number
  loc_A1D91F: ILdRf var_C8
  loc_A1D922: LitI4 0
  loc_A1D927: GtI4
  loc_A1D928: FFree1Ad var_88
  loc_A1D92B: BranchF loc_A1D98F
  loc_A1D92E: LitI4 0
  loc_A1D933: LitStr "Error "
  loc_A1D936: FLdRfVar var_C8
  loc_A1D939: ImpAdCallI2 Err 'rtcErrObj
  loc_A1D93E: FStAdFunc var_88
  loc_A1D941: FLdPr var_88
  loc_A1D944:  = Err.Number
  loc_A1D949: ILdRf var_C8
  loc_A1D94C: CStrI4
  loc_A1D94E: FStStrNoPop var_C4
  loc_A1D951: ConcatStr
  loc_A1D952: FStStrNoPop var_CC
  loc_A1D955: LitStr ": "
  loc_A1D958: ConcatStr
  loc_A1D959: FStStrNoPop var_D4
  loc_A1D95C: FLdRfVar var_D0
  loc_A1D95F: ImpAdCallI2 Err 'rtcErrObj
  loc_A1D964: FStAdFunc var_B0
  loc_A1D967: FLdPr var_B0
  loc_A1D96A:  = Err.Description
  loc_A1D96F: ILdRf var_D0
  loc_A1D972: ConcatStr
  loc_A1D973: FStStrNoPop var_D8
  loc_A1D976: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A1D97B: FFreeStr var_C4 = "": var_CC = "": var_D4 = "": var_D0 = ""
  loc_A1D988: FFreeAd var_88 = ""
  loc_A1D98F: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BD2070
  'Data Table: 43BE34
  loc_BD0BB0: ILdRf Button
  loc_BD0BB3: FStAd var_88 
  loc_BD0BB7: FLdRfVar var_9C
  loc_BD0BBA: FLdPr var_88
  loc_BD0BBD:  = Me.Key
  loc_BD0BC2: FLdZeroAd var_9C
  loc_BD0BC5: FStStr var_A0
  loc_BD0BC8: ILdRf var_A0
  loc_BD0BCB: LitStr "btnCrear"
  loc_BD0BCE: EqStr
  loc_BD0BD0: BranchF loc_BD1277
  loc_BD0BD3: LitI2_Byte 1
  loc_BD0BD5: FLdPr Me
  loc_BD0BD8: MemStUI1
  loc_BD0BDC: ILdRf Me
  loc_BD0BDF: CastAd
  loc_BD0BE2: FStAdFunc var_A4
  loc_BD0BE5: FLdRfVar var_A4
  loc_BD0BE8: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BD0BED: FFree1Ad var_A4
  loc_BD0BF0: LitI4 0
  loc_BD0BF5: LitI4 0
  loc_BD0BFA: FLdRfVar var_A8
  loc_BD0BFD: Redim
  loc_BD0C07: FLdPr Me
  loc_BD0C0A: VCallAd Control_ID_dgdABMS
  loc_BD0C0D: CVarAd
  loc_BD0C11: ParmAry1St
  loc_BD0C17: FLdRfVar var_A8
  loc_BD0C1A: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BD0C1F: FLdRfVar var_A8
  loc_BD0C22: Erase
  loc_BD0C23: FLdRfVar var_C0
  loc_BD0C26: FLdPr Me
  loc_BD0C29: VCallAd Control_ID_dgdABMS
  loc_BD0C2C: FStAdFunc var_A4
  loc_BD0C2F: FLdPr var_A4
  loc_BD0C32: LateIdLdVar var_B8 DispID_113 0
  loc_BD0C39: CastAdVar Me
  loc_BD0C3D: FStAdFunc var_BC
  loc_BD0C40: FLdPr var_BC
  loc_BD0C43:  = Me.SelBookmarks.Count
  loc_BD0C48: ILdRf var_C0
  loc_BD0C4B: LitI4 1
  loc_BD0C50: GtI4
  loc_BD0C51: FFreeAd var_A4 = ""
  loc_BD0C58: FFree1Var var_B8 = ""
  loc_BD0C5B: BranchF loc_BD0CD8
  loc_BD0C5E: ImpAdLdFPR8 MemVar_C3D054
  loc_BD0C61: CStrDate
  loc_BD0C63: CVarStr var_B8
  loc_BD0C66: PopAdLdVar
  loc_BD0C67: FLdPr Me
  loc_BD0C6A: VCallAd Control_ID_FechaMsk
  loc_BD0C6D: FStAdFunc var_A4
  loc_BD0C70: FLdPr var_A4
  loc_BD0C73: LateIdSt
  loc_BD0C78: FFree1Ad var_A4
  loc_BD0C7B: FFree1Var var_B8 = ""
  loc_BD0C7E: FLdPr Me
  loc_BD0C81: VCallAd Control_ID_FechaMsk
  loc_BD0C84: FStAdFunc var_A4
  loc_BD0C87: FLdPr var_A4
  loc_BD0C8A: LateIdLdVar var_B8 DispID_11 -32767
  loc_BD0C91: CStrVarTmp
  loc_BD0C92: CVarStr var_E0
  loc_BD0C95: PopAdLdVar
  loc_BD0C96: FLdPr Me
  loc_BD0C99: VCallAd Control_ID_FechaMsk
  loc_BD0C9C: FStAdFunc var_BC
  loc_BD0C9F: FLdPr var_BC
  loc_BD0CA2: LateIdSt
  loc_BD0CA7: FFreeAd var_A4 = ""
  loc_BD0CAE: FFreeVar var_B8 = ""
  loc_BD0CB5: ImpAdLdFPR8 MemVar_C3D04C
  loc_BD0CB8: CStrDate
  loc_BD0CBA: CVarStr var_B8
  loc_BD0CBD: PopAdLdVar
  loc_BD0CBE: FLdPr Me
  loc_BD0CC1: VCallAd Control_ID_FechaMsk
  loc_BD0CC4: FStAdFunc var_A4
  loc_BD0CC7: FLdPr var_A4
  loc_BD0CCA: LateIdSt
  loc_BD0CCF: FFree1Ad var_A4
  loc_BD0CD2: FFree1Var var_B8 = ""
  loc_BD0CD5: Branch loc_BD1274
  loc_BD0CD8: FLdRfVar var_C0
  loc_BD0CDB: FLdPr Me
  loc_BD0CDE: MemLdRfVar from_stack_1.global_52
  loc_BD0CE1: NewIfNullPr clsordenpago
  loc_BD0CE4: from_stack_1 = clsordenpago.RecordCount
  loc_BD0CE9: ILdRf var_C0
  loc_BD0CEC: LitI4 0
  loc_BD0CF1: GtI4
  loc_BD0CF2: BranchF loc_BD1274
  loc_BD0CF5: FLdRfVar var_B8
  loc_BD0CF8: FLdRfVar var_E4
  loc_BD0CFB: LitVarStr var_D0, "NumeOrpa"
  loc_BD0D00: PopAdLdVar
  loc_BD0D01: FLdRfVar var_BC
  loc_BD0D04: FLdRfVar var_A4
  loc_BD0D07: FLdPr Me
  loc_BD0D0A: MemLdRfVar from_stack_1.global_52
  loc_BD0D0D: NewIfNullPr clsordenpago
  loc_BD0D10: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD0D15: FLdPr var_A4
  loc_BD0D18:  = Me.Fields
  loc_BD0D1D: FLdPr var_BC
  loc_BD0D20: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0D25: FLdPr var_E4
  loc_BD0D28:  = Me.Value
  loc_BD0D2D: FLdRfVar var_9C
  loc_BD0D30: FLdRfVar var_B8
  loc_BD0D33: CI4Var
  loc_BD0D35: PopTmpLdAdStr var_C0
  loc_BD0D38: ImpAdLdRf MemVar_C3D064
  loc_BD0D3B: FLdPr Me
  loc_BD0D3E: MemLdRfVar from_stack_1.global_52
  loc_BD0D41: NewIfNullPr clsordenpago
  loc_BD0D44: from_stack_3v = clsordenpago.UltimaFechaRemision(from_stack_1v, from_stack_2v)
  loc_BD0D49: FLdZeroAd var_9C
  loc_BD0D4C: CVarStr var_E0
  loc_BD0D4F: PopAdLdVar
  loc_BD0D50: FLdPr Me
  loc_BD0D53: VCallAd Control_ID_FechaMsk
  loc_BD0D56: FStAdFunc var_F8
  loc_BD0D59: FLdPr var_F8
  loc_BD0D5C: LateIdSt
  loc_BD0D61: FFreeAd var_A4 = "": var_BC = "": var_E4 = ""
  loc_BD0D6C: FFreeVar var_B8 = ""
  loc_BD0D73: FLdPr Me
  loc_BD0D76: VCallAd Control_ID_FechaMsk
  loc_BD0D79: FStAdFunc var_A4
  loc_BD0D7C: FLdPr var_A4
  loc_BD0D7F: LateIdLdVar var_B8 DispID_11 -32767
  loc_BD0D86: CStrVarTmp
  loc_BD0D87: CVarStr var_E0
  loc_BD0D8A: PopAdLdVar
  loc_BD0D8B: FLdPr Me
  loc_BD0D8E: VCallAd Control_ID_FechaMsk
  loc_BD0D91: FStAdFunc var_BC
  loc_BD0D94: FLdPr var_BC
  loc_BD0D97: LateIdSt
  loc_BD0D9C: FFreeAd var_A4 = ""
  loc_BD0DA3: FFreeVar var_B8 = ""
  loc_BD0DAA: FLdRfVar var_B8
  loc_BD0DAD: FLdRfVar var_E4
  loc_BD0DB0: LitVarStr var_D0, "NumeOrpa"
  loc_BD0DB5: PopAdLdVar
  loc_BD0DB6: FLdRfVar var_BC
  loc_BD0DB9: FLdRfVar var_A4
  loc_BD0DBC: FLdPr Me
  loc_BD0DBF: MemLdRfVar from_stack_1.global_52
  loc_BD0DC2: NewIfNullPr clsordenpago
  loc_BD0DC5: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD0DCA: FLdPr var_A4
  loc_BD0DCD:  = Me.Fields
  loc_BD0DD2: FLdPr var_BC
  loc_BD0DD5: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0DDA: FLdPr var_E4
  loc_BD0DDD:  = Me.Value
  loc_BD0DE2: FLdRfVar var_E0
  loc_BD0DE5: FLdRfVar var_100
  loc_BD0DE8: LitVarStr var_F4, "TipoOrpa"
  loc_BD0DED: PopAdLdVar
  loc_BD0DEE: FLdRfVar var_FC
  loc_BD0DF1: FLdRfVar var_F8
  loc_BD0DF4: FLdPr Me
  loc_BD0DF7: MemLdRfVar from_stack_1.global_52
  loc_BD0DFA: NewIfNullPr clsordenpago
  loc_BD0DFD: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD0E02: FLdPr var_F8
  loc_BD0E05:  = Me.Fields
  loc_BD0E0A: FLdPr var_FC
  loc_BD0E0D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0E12: FLdPr var_100
  loc_BD0E15:  = Me.Value
  loc_BD0E1A: FLdRfVar var_102
  loc_BD0E1D: FLdRfVar var_E0
  loc_BD0E20: CStrVarTmp
  loc_BD0E21: FStStrNoPop var_9C
  loc_BD0E24: FLdRfVar var_B8
  loc_BD0E27: CI4Var
  loc_BD0E29: ImpAdLdI2 MemVar_C3D064
  loc_BD0E2C: FLdPr Me
  loc_BD0E2F: MemLdRfVar from_stack_1.global_52
  loc_BD0E32: NewIfNullPr clsordenpago
  loc_BD0E35: from_stack_4v = clsordenpago.FaltanDatosImputacionDebito(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BD0E3A: FLdI2 var_102
  loc_BD0E3D: FFree1Str var_9C
  loc_BD0E40: FFreeAd var_A4 = "": var_BC = "": var_F8 = "": var_FC = "": var_E4 = ""
  loc_BD0E4F: FFreeVar var_B8 = ""
  loc_BD0E56: BranchF loc_BD0ECF
  loc_BD0E59: LitI4 0
  loc_BD0E5E: LitVarStr var_F4, "Faltan datos de Imputación/Débito para la O.P.: "
  loc_BD0E63: FLdRfVar var_B8
  loc_BD0E66: FLdRfVar var_E4
  loc_BD0E69: LitVarStr var_D0, "NumeOrpa"
  loc_BD0E6E: PopAdLdVar
  loc_BD0E6F: FLdRfVar var_BC
  loc_BD0E72: FLdRfVar var_A4
  loc_BD0E75: FLdPr Me
  loc_BD0E78: MemLdRfVar from_stack_1.global_52
  loc_BD0E7B: NewIfNullPr clsordenpago
  loc_BD0E7E: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD0E83: FLdPr var_A4
  loc_BD0E86:  = Me.Fields
  loc_BD0E8B: FLdPr var_BC
  loc_BD0E8E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0E93: FLdPr var_E4
  loc_BD0E96:  = Me.Value
  loc_BD0E9B: FLdRfVar var_B8
  loc_BD0E9E: ConcatVar var_E0
  loc_BD0EA2: LitVarStr var_114, ". Verifique..."
  loc_BD0EA7: ConcatVar var_124
  loc_BD0EAB: CStrVarVal var_9C
  loc_BD0EAF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD0EB4: FFree1Str var_9C
  loc_BD0EB7: FFreeAd var_A4 = "": var_BC = ""
  loc_BD0EC0: FFreeVar var_B8 = "": var_E0 = ""
  loc_BD0EC9: Call cmdCancelar_Click()
  loc_BD0ECE: ExitProcHresult
  loc_BD0ECF: FLdRfVar var_B8
  loc_BD0ED2: FLdRfVar var_E4
  loc_BD0ED5: LitVarStr var_D0, "NumeOrpa"
  loc_BD0EDA: PopAdLdVar
  loc_BD0EDB: FLdRfVar var_BC
  loc_BD0EDE: FLdRfVar var_A4
  loc_BD0EE1: FLdPr Me
  loc_BD0EE4: MemLdRfVar from_stack_1.global_52
  loc_BD0EE7: NewIfNullPr clsordenpago
  loc_BD0EEA: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD0EEF: FLdPr var_A4
  loc_BD0EF2:  = Me.Fields
  loc_BD0EF7: FLdPr var_BC
  loc_BD0EFA: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0EFF: FLdPr var_E4
  loc_BD0F02:  = Me.Value
  loc_BD0F07: FLdRfVar var_102
  loc_BD0F0A: FLdRfVar var_B8
  loc_BD0F0D: CI4Var
  loc_BD0F0F: ImpAdLdI2 MemVar_C3D064
  loc_BD0F12: FLdPr Me
  loc_BD0F15: MemLdRfVar from_stack_1.global_52
  loc_BD0F18: NewIfNullPr clsordenpago
  loc_BD0F1B: from_stack_3v = clsordenpago.FaltanDatosCheque(from_stack_1v, from_stack_2v)
  loc_BD0F20: FLdI2 var_102
  loc_BD0F23: FFreeAd var_A4 = "": var_BC = ""
  loc_BD0F2C: FFree1Var var_B8 = ""
  loc_BD0F2F: BranchF loc_BD0FA8
  loc_BD0F32: LitI4 0
  loc_BD0F37: LitVarStr var_F4, "Faltan Datos de Cheque/s para la Orden de pago: "
  loc_BD0F3C: FLdRfVar var_B8
  loc_BD0F3F: FLdRfVar var_E4
  loc_BD0F42: LitVarStr var_D0, "NumeOrpa"
  loc_BD0F47: PopAdLdVar
  loc_BD0F48: FLdRfVar var_BC
  loc_BD0F4B: FLdRfVar var_A4
  loc_BD0F4E: FLdPr Me
  loc_BD0F51: MemLdRfVar from_stack_1.global_52
  loc_BD0F54: NewIfNullPr clsordenpago
  loc_BD0F57: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD0F5C: FLdPr var_A4
  loc_BD0F5F:  = Me.Fields
  loc_BD0F64: FLdPr var_BC
  loc_BD0F67: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0F6C: FLdPr var_E4
  loc_BD0F6F:  = Me.Value
  loc_BD0F74: FLdRfVar var_B8
  loc_BD0F77: ConcatVar var_E0
  loc_BD0F7B: LitVarStr var_114, ". Verifique..."
  loc_BD0F80: ConcatVar var_124
  loc_BD0F84: CStrVarVal var_9C
  loc_BD0F88: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD0F8D: FFree1Str var_9C
  loc_BD0F90: FFreeAd var_A4 = "": var_BC = ""
  loc_BD0F99: FFreeVar var_B8 = "": var_E0 = ""
  loc_BD0FA2: Call cmdCancelar_Click()
  loc_BD0FA7: ExitProcHresult
  loc_BD0FA8: FLdRfVar var_B8
  loc_BD0FAB: FLdRfVar var_E4
  loc_BD0FAE: LitVarStr var_D0, "NumeOrpa"
  loc_BD0FB3: PopAdLdVar
  loc_BD0FB4: FLdRfVar var_BC
  loc_BD0FB7: FLdRfVar var_A4
  loc_BD0FBA: FLdPr Me
  loc_BD0FBD: MemLdRfVar from_stack_1.global_52
  loc_BD0FC0: NewIfNullPr clsordenpago
  loc_BD0FC3: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD0FC8: FLdPr var_A4
  loc_BD0FCB:  = Me.Fields
  loc_BD0FD0: FLdPr var_BC
  loc_BD0FD3: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0FD8: FLdPr var_E4
  loc_BD0FDB:  = Me.Value
  loc_BD0FE0: FLdRfVar var_102
  loc_BD0FE3: FLdRfVar var_B8
  loc_BD0FE6: CI4Var
  loc_BD0FE8: ImpAdLdI2 MemVar_C3D064
  loc_BD0FEB: FLdPr Me
  loc_BD0FEE: MemLdRfVar from_stack_1.global_52
  loc_BD0FF1: NewIfNullPr clsordenpago
  loc_BD0FF4: from_stack_3v = clsordenpago.FaltanDatosTransferencia(from_stack_1v, from_stack_2v)
  loc_BD0FF9: FLdI2 var_102
  loc_BD0FFC: FFreeAd var_A4 = "": var_BC = ""
  loc_BD1005: FFree1Var var_B8 = ""
  loc_BD1008: BranchF loc_BD1081
  loc_BD100B: LitI4 0
  loc_BD1010: LitVarStr var_F4, "Faltan Datos de Transferencia/s para la Orden de pago: "
  loc_BD1015: FLdRfVar var_B8
  loc_BD1018: FLdRfVar var_E4
  loc_BD101B: LitVarStr var_D0, "NumeOrpa"
  loc_BD1020: PopAdLdVar
  loc_BD1021: FLdRfVar var_BC
  loc_BD1024: FLdRfVar var_A4
  loc_BD1027: FLdPr Me
  loc_BD102A: MemLdRfVar from_stack_1.global_52
  loc_BD102D: NewIfNullPr clsordenpago
  loc_BD1030: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1035: FLdPr var_A4
  loc_BD1038:  = Me.Fields
  loc_BD103D: FLdPr var_BC
  loc_BD1040: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1045: FLdPr var_E4
  loc_BD1048:  = Me.Value
  loc_BD104D: FLdRfVar var_B8
  loc_BD1050: ConcatVar var_E0
  loc_BD1054: LitVarStr var_114, ". Verifique..."
  loc_BD1059: ConcatVar var_124
  loc_BD105D: CStrVarVal var_9C
  loc_BD1061: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD1066: FFree1Str var_9C
  loc_BD1069: FFreeAd var_A4 = "": var_BC = ""
  loc_BD1072: FFreeVar var_B8 = "": var_E0 = ""
  loc_BD107B: Call cmdCancelar_Click()
  loc_BD1080: ExitProcHresult
  loc_BD1081: FLdRfVar var_B8
  loc_BD1084: FLdRfVar var_E4
  loc_BD1087: LitVarStr var_D0, "TipoOrpa"
  loc_BD108C: PopAdLdVar
  loc_BD108D: FLdRfVar var_BC
  loc_BD1090: FLdRfVar var_A4
  loc_BD1093: FLdPr Me
  loc_BD1096: MemLdRfVar from_stack_1.global_52
  loc_BD1099: NewIfNullPr clsordenpago
  loc_BD109C: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD10A1: FLdPr var_A4
  loc_BD10A4:  = Me.Fields
  loc_BD10A9: FLdPr var_BC
  loc_BD10AC: from_stack_2 = Me.Item(from_stack_1)
  loc_BD10B1: FLdPr var_E4
  loc_BD10B4:  = Me.Value
  loc_BD10B9: FLdRfVar var_B8
  loc_BD10BC: LitVarStr var_F4, "Reservada"
  loc_BD10C1: HardType
  loc_BD10C2: EqVarBool
  loc_BD10C4: FFreeAd var_A4 = "": var_BC = ""
  loc_BD10CD: FFree1Var var_B8 = ""
  loc_BD10D0: BranchF loc_BD10E6
  loc_BD10D3: LitI4 0
  loc_BD10D8: LitStr "La Orden de Pago es Reservada. Verifique..."
  loc_BD10DB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD10E0: Call cmdCancelar_Click()
  loc_BD10E5: ExitProcHresult
  loc_BD10E6: FLdRfVar var_C0
  loc_BD10E9: FLdPr Me
  loc_BD10EC: MemLdRfVar from_stack_1.global_52
  loc_BD10EF: NewIfNullPr clsordenpago
  loc_BD10F2: from_stack_1 = clsordenpago.AbsolutePosition
  loc_BD10F7: ILdRf var_C0
  loc_BD10FA: LitI4 1
  loc_BD10FF: EqI4
  loc_BD1100: LitStr "Municipalidad de Guaymallén"
  loc_BD1103: LitStr "Municipalidad de Malargüe"
  loc_BD1106: NeStr
  loc_BD1108: AndI4
  loc_BD1109: BranchF loc_BD11AA
  loc_BD110C: FLdRfVar var_B8
  loc_BD110F: FLdRfVar var_E4
  loc_BD1112: LitVarStr var_D0, "NumeOrpa"
  loc_BD1117: PopAdLdVar
  loc_BD1118: FLdRfVar var_BC
  loc_BD111B: FLdRfVar var_A4
  loc_BD111E: FLdPr Me
  loc_BD1121: MemLdRfVar from_stack_1.global_52
  loc_BD1124: NewIfNullPr clsordenpago
  loc_BD1127: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD112C: FLdPr var_A4
  loc_BD112F:  = Me.Fields
  loc_BD1134: FLdPr var_BC
  loc_BD1137: from_stack_2 = Me.Item(from_stack_1)
  loc_BD113C: FLdPr var_E4
  loc_BD113F:  = Me.Value
  loc_BD1144: LitI2_Byte 0
  loc_BD1146: PopTmpLdAd2 var_166
  loc_BD1149: LitI2_Byte &HFF
  loc_BD114B: PopTmpLdAd2 var_102
  loc_BD114E: LitVarStr var_F4, "¿ Remite la OP "
  loc_BD1153: FLdRfVar var_B8
  loc_BD1156: ConcatVar var_E0
  loc_BD115A: LitVarStr var_114, " ?"
  loc_BD115F: ConcatVar var_124
  loc_BD1163: LitVarStr var_134, vbCrLf
  loc_BD1168: ConcatVar var_144
  loc_BD116C: LitVarStr var_154, "¿ Desea continuar ?"
  loc_BD1171: ConcatVar var_164
  loc_BD1175: CStrVarVal var_9C
  loc_BD1179: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BD117E: CI4UI1
  loc_BD117F: LitI4 6
  loc_BD1184: EqI4
  loc_BD1185: FFree1Str var_9C
  loc_BD1188: FFreeAd var_A4 = "": var_BC = ""
  loc_BD1191: FFreeVar var_B8 = "": var_E0 = "": var_124 = "": var_144 = ""
  loc_BD119E: BranchF loc_BD11A4
  loc_BD11A1: Branch loc_BD11AA
  loc_BD11A4: Call cmdCancelar_Click()
  loc_BD11A9: ExitProcHresult
  loc_BD11AA: LitStr "Municipalidad de Guaymallén"
  loc_BD11AD: FStStrCopy var_16C
  loc_BD11B0: ILdRf var_16C
  loc_BD11B3: LitStr "Municipalidad de Maipú"
  loc_BD11B6: EqStr
  loc_BD11B8: BranchT loc_BD11E7
  loc_BD11BB: ILdRf var_16C
  loc_BD11BE: LitStr "Municipalidad de Tunuyán"
  loc_BD11C1: EqStr
  loc_BD11C3: BranchT loc_BD11E7
  loc_BD11C6: ILdRf var_16C
  loc_BD11C9: LitStr "Municipalidad de General Alvear"
  loc_BD11CC: EqStr
  loc_BD11CE: BranchT loc_BD11E7
  loc_BD11D1: ILdRf var_16C
  loc_BD11D4: LitStr "Municipalidad de Guaymallén"
  loc_BD11D7: EqStr
  loc_BD11D9: BranchT loc_BD11E7
  loc_BD11DC: ILdRf var_16C
  loc_BD11DF: LitStr "Municipalidad de Malargüe"
  loc_BD11E2: EqStr
  loc_BD11E4: BranchF loc_BD120A
  loc_BD11E7: ImpAdLdFPR8 MemVar_C3D04C
  loc_BD11EA: CStrDate
  loc_BD11EC: CVarStr var_B8
  loc_BD11EF: PopAdLdVar
  loc_BD11F0: FLdPr Me
  loc_BD11F3: VCallAd Control_ID_FechaMsk
  loc_BD11F6: FStAdFunc var_A4
  loc_BD11F9: FLdPr var_A4
  loc_BD11FC: LateIdSt
  loc_BD1201: FFree1Ad var_A4
  loc_BD1204: FFree1Var var_B8 = ""
  loc_BD1207: Branch loc_BD1241
  loc_BD120A: FLdPr Me
  loc_BD120D: VCallAd Control_ID_FechaMsk
  loc_BD1210: FStAdFunc var_A4
  loc_BD1213: FLdPr var_A4
  loc_BD1216: LateIdLdVar var_B8 DispID_11 -32767
  loc_BD121D: CStrVarTmp
  loc_BD121E: CVarStr var_E0
  loc_BD1221: PopAdLdVar
  loc_BD1222: FLdPr Me
  loc_BD1225: VCallAd Control_ID_FechaMsk
  loc_BD1228: FStAdFunc var_BC
  loc_BD122B: FLdPr var_BC
  loc_BD122E: LateIdSt
  loc_BD1233: FFreeAd var_A4 = ""
  loc_BD123A: FFreeVar var_B8 = ""
  loc_BD1241: LitI4 0
  loc_BD1246: LitI4 0
  loc_BD124B: FLdRfVar var_A8
  loc_BD124E: Redim
  loc_BD1258: FLdPr Me
  loc_BD125B: VCallAd Control_ID_FechaMsk
  loc_BD125E: CVarAd
  loc_BD1262: ParmAry1St
  loc_BD1268: FLdRfVar var_A8
  loc_BD126B: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BD1270: FLdRfVar var_A8
  loc_BD1273: Erase
  loc_BD1274: Branch loc_BD206F
  loc_BD1277: ILdRf var_A0
  loc_BD127A: LitStr "btnModificar"
  loc_BD127D: EqStr
  loc_BD127F: BranchF loc_BD1339
  loc_BD1282: LitStr "Municipalidad de Guaymallén"
  loc_BD1285: LitStr "Municipalidad de Guaymallén"
  loc_BD1288: EqStr
  loc_BD128A: ImpAdLdI4 MemVar_C3D03C
  loc_BD128D: LitStr "fernando"
  loc_BD1290: EqStr
  loc_BD1292: ImpAdLdI4 MemVar_C3D03C
  loc_BD1295: LitStr "root"
  loc_BD1298: EqStr
  loc_BD129A: OrI4
  loc_BD129B: AndI4
  loc_BD129C: BranchF loc_BD1336
  loc_BD129F: LitI2_Byte 2
  loc_BD12A1: FLdPr Me
  loc_BD12A4: MemStUI1
  loc_BD12A8: ILdRf Me
  loc_BD12AB: CastAd
  loc_BD12AE: FStAdFunc var_A4
  loc_BD12B1: FLdRfVar var_A4
  loc_BD12B4: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BD12B9: FFree1Ad var_A4
  loc_BD12BC: LitI4 0
  loc_BD12C1: LitI4 0
  loc_BD12C6: FLdRfVar var_A8
  loc_BD12C9: Redim
  loc_BD12D3: FLdPr Me
  loc_BD12D6: VCallAd Control_ID_dgdABMS
  loc_BD12D9: CVarAd
  loc_BD12DD: ParmAry1St
  loc_BD12E3: FLdRfVar var_A8
  loc_BD12E6: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BD12EB: FLdRfVar var_A8
  loc_BD12EE: Erase
  loc_BD12EF: ILdRf Me
  loc_BD12F2: CastAd
  loc_BD12F5: FStAdFunc var_A4
  loc_BD12F8: FLdRfVar var_A4
  loc_BD12FB: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BD1300: FFree1Ad var_A4
  loc_BD1303: LitI4 0
  loc_BD1308: LitI4 0
  loc_BD130D: FLdRfVar var_A8
  loc_BD1310: Redim
  loc_BD131A: FLdPr Me
  loc_BD131D: VCallAd Control_ID_DetaOrpaTxt
  loc_BD1320: CVarAd
  loc_BD1324: ParmAry1St
  loc_BD132A: FLdRfVar var_A8
  loc_BD132D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BD1332: FLdRfVar var_A8
  loc_BD1335: Erase
  loc_BD1336: Branch loc_BD206F
  loc_BD1339: ILdRf var_A0
  loc_BD133C: LitStr "btnEliminar"
  loc_BD133F: EqStr
  loc_BD1341: BranchF loc_BD160A
  loc_BD1344: FLdRfVar var_C0
  loc_BD1347: FLdPr Me
  loc_BD134A: MemLdRfVar from_stack_1.global_52
  loc_BD134D: NewIfNullPr clsordenpago
  loc_BD1350: from_stack_1 = clsordenpago.RecordCount
  loc_BD1355: ILdRf var_C0
  loc_BD1358: LitI4 0
  loc_BD135D: GtI4
  loc_BD135E: BranchF loc_BD1607
  loc_BD1361: FLdRfVar var_9C
  loc_BD1364: FLdPr Me
  loc_BD1367: MemLdRfVar from_stack_1.global_52
  loc_BD136A: NewIfNullPr clsordenpago
  loc_BD136D: from_stack_1v = clsordenpago.ValidaEliminar()
  loc_BD1372: ILdRf var_9C
  loc_BD1375: FLdPr Me
  loc_BD1378: MemStStrCopy
  loc_BD137C: FFree1Str var_9C
  loc_BD137F: FLdPr Me
  loc_BD1382: MemLdStr global_64
  loc_BD1385: LitStr vbNullString
  loc_BD1388: NeStr
  loc_BD138A: LitVarI2 var_B8, 12
  loc_BD138F: LitI4 1
  loc_BD1394: FLdPr Me
  loc_BD1397: MemLdStr global_64
  loc_BD139A: ImpAdCallI2 Mid$(, , )
  loc_BD139F: FStStrNoPop var_9C
  loc_BD13A2: LitStr "Advertencia:"
  loc_BD13A5: NeStr
  loc_BD13A7: AndI4
  loc_BD13A8: FFree1Str var_9C
  loc_BD13AB: FFree1Var var_B8 = ""
  loc_BD13AE: BranchF loc_BD13C4
  loc_BD13B1: LitI4 0
  loc_BD13B6: FLdPr Me
  loc_BD13B9: MemLdStr global_64
  loc_BD13BC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD13C1: Branch loc_BD1607
  loc_BD13C4: FLdPr Me
  loc_BD13C7: MemLdStr global_64
  loc_BD13CA: LitStr vbNullString
  loc_BD13CD: NeStr
  loc_BD13CF: LitVarI2 var_B8, 12
  loc_BD13D4: LitI4 1
  loc_BD13D9: FLdPr Me
  loc_BD13DC: MemLdStr global_64
  loc_BD13DF: ImpAdCallI2 Mid$(, , )
  loc_BD13E4: FStStrNoPop var_9C
  loc_BD13E7: LitStr "Advertencia:"
  loc_BD13EA: EqStr
  loc_BD13EC: AndI4
  loc_BD13ED: FLdPr Me
  loc_BD13F0: MemLdStr global_64
  loc_BD13F3: LitStr vbNullString
  loc_BD13F6: EqStr
  loc_BD13F8: OrI4
  loc_BD13F9: FFree1Str var_9C
  loc_BD13FC: FFree1Var var_B8 = ""
  loc_BD13FF: BranchF loc_BD1607
  loc_BD1402: FLdPr Me
  loc_BD1405: MemLdStr global_64
  loc_BD1408: LitStr vbNullString
  loc_BD140B: NeStr
  loc_BD140D: BranchF loc_BD1420
  loc_BD1410: LitI4 0
  loc_BD1415: FLdPr Me
  loc_BD1418: MemLdStr global_64
  loc_BD141B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD1420: FLdRfVar var_B8
  loc_BD1423: FLdRfVar var_E4
  loc_BD1426: LitVarStr var_D0, "NumeOrpa"
  loc_BD142B: PopAdLdVar
  loc_BD142C: FLdRfVar var_BC
  loc_BD142F: FLdRfVar var_A4
  loc_BD1432: FLdPr Me
  loc_BD1435: MemLdRfVar from_stack_1.global_52
  loc_BD1438: NewIfNullPr clsordenpago
  loc_BD143B: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1440: FLdPr var_A4
  loc_BD1443:  = Me.Fields
  loc_BD1448: FLdPr var_BC
  loc_BD144B: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1450: FLdPr var_E4
  loc_BD1453:  = Me.Value
  loc_BD1458: LitI2_Byte 0
  loc_BD145A: PopTmpLdAd2 var_166
  loc_BD145D: LitI2_Byte &HFF
  loc_BD145F: PopTmpLdAd2 var_102
  loc_BD1462: LitVarStr var_F4, "¿Confirma la ANULACIÓN de la Orden de Pago número: "
  loc_BD1467: FLdRfVar var_B8
  loc_BD146A: ConcatVar var_E0
  loc_BD146E: LitVarStr var_114, " ?"
  loc_BD1473: ConcatVar var_124
  loc_BD1477: CStrVarVal var_9C
  loc_BD147B: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BD1480: CI4UI1
  loc_BD1481: LitI4 6
  loc_BD1486: EqI4
  loc_BD1487: FFree1Str var_9C
  loc_BD148A: FFreeAd var_A4 = "": var_BC = ""
  loc_BD1493: FFreeVar var_B8 = "": var_E0 = ""
  loc_BD149C: BranchF loc_BD1607
  loc_BD149F: LitI2_Byte 3
  loc_BD14A1: FLdPr Me
  loc_BD14A4: MemStUI1
  loc_BD14A8: ILdRf Me
  loc_BD14AB: CastAd
  loc_BD14AE: FStAdFunc var_A4
  loc_BD14B1: FLdRfVar var_A4
  loc_BD14B4: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BD14B9: FFree1Ad var_A4
  loc_BD14BC: LitI4 0
  loc_BD14C1: LitI4 1
  loc_BD14C6: FLdRfVar var_A8
  loc_BD14C9: Redim
  loc_BD14D3: FLdPr Me
  loc_BD14D6: VCallAd Control_ID_dgdABMS
  loc_BD14D9: CVarAd
  loc_BD14DD: ParmAry1St
  loc_BD14E3: FLdPr Me
  loc_BD14E6: VCallAd Control_ID_dgdCheque
  loc_BD14E9: CVarAd
  loc_BD14ED: ParmAry1St
  loc_BD14F3: FLdRfVar var_A8
  loc_BD14F6: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BD14FB: FLdRfVar var_A8
  loc_BD14FE: Erase
  loc_BD14FF: FLdRfVar var_B8
  loc_BD1502: FLdRfVar var_E4
  loc_BD1505: LitVarStr var_D0, "NumeOrpa"
  loc_BD150A: PopAdLdVar
  loc_BD150B: FLdRfVar var_BC
  loc_BD150E: FLdRfVar var_A4
  loc_BD1511: FLdPr Me
  loc_BD1514: MemLdRfVar from_stack_1.global_52
  loc_BD1517: NewIfNullPr clsordenpago
  loc_BD151A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD151F: FLdPr var_A4
  loc_BD1522:  = Me.Fields
  loc_BD1527: FLdPr var_BC
  loc_BD152A: from_stack_2 = Me.Item(from_stack_1)
  loc_BD152F: FLdPr var_E4
  loc_BD1532:  = Me.Value
  loc_BD1537: FLdRfVar var_9C
  loc_BD153A: FLdRfVar var_B8
  loc_BD153D: CI4Var
  loc_BD153F: PopTmpLdAdStr var_C0
  loc_BD1542: ImpAdLdRf MemVar_C3D064
  loc_BD1545: FLdPr Me
  loc_BD1548: MemLdRfVar from_stack_1.global_52
  loc_BD154B: NewIfNullPr clsordenpago
  loc_BD154E: from_stack_3v = clsordenpago.UltimaFechaAnulacion(from_stack_1v, from_stack_2v)
  loc_BD1553: FLdZeroAd var_9C
  loc_BD1556: CVarStr var_E0
  loc_BD1559: PopAdLdVar
  loc_BD155A: FLdPr Me
  loc_BD155D: VCallAd Control_ID_FechaMsk
  loc_BD1560: FStAdFunc var_F8
  loc_BD1563: FLdPr var_F8
  loc_BD1566: LateIdSt
  loc_BD156B: FFreeAd var_A4 = "": var_BC = "": var_E4 = ""
  loc_BD1576: FFreeVar var_B8 = ""
  loc_BD157D: FLdPr Me
  loc_BD1580: VCallAd Control_ID_FechaMsk
  loc_BD1583: FStAdFunc var_A4
  loc_BD1586: FLdPr var_A4
  loc_BD1589: LateIdLdVar var_B8 DispID_11 -32767
  loc_BD1590: CStrVarTmp
  loc_BD1591: CVarStr var_E0
  loc_BD1594: PopAdLdVar
  loc_BD1595: FLdPr Me
  loc_BD1598: VCallAd Control_ID_FechaMsk
  loc_BD159B: FStAdFunc var_BC
  loc_BD159E: FLdPr var_BC
  loc_BD15A1: LateIdSt
  loc_BD15A6: FFreeAd var_A4 = ""
  loc_BD15AD: FFreeVar var_B8 = ""
  loc_BD15B4: ImpAdLdFPR8 MemVar_C3D04C
  loc_BD15B7: CStrDate
  loc_BD15B9: CVarStr var_B8
  loc_BD15BC: PopAdLdVar
  loc_BD15BD: FLdPr Me
  loc_BD15C0: VCallAd Control_ID_FechaMsk
  loc_BD15C3: FStAdFunc var_A4
  loc_BD15C6: FLdPr var_A4
  loc_BD15C9: LateIdSt
  loc_BD15CE: FFree1Ad var_A4
  loc_BD15D1: FFree1Var var_B8 = ""
  loc_BD15D4: LitI4 0
  loc_BD15D9: LitI4 0
  loc_BD15DE: FLdRfVar var_A8
  loc_BD15E1: Redim
  loc_BD15EB: FLdPr Me
  loc_BD15EE: VCallAd Control_ID_FechaMsk
  loc_BD15F1: CVarAd
  loc_BD15F5: ParmAry1St
  loc_BD15FB: FLdRfVar var_A8
  loc_BD15FE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BD1603: FLdRfVar var_A8
  loc_BD1606: Erase
  loc_BD1607: Branch loc_BD206F
  loc_BD160A: ILdRf var_A0
  loc_BD160D: LitStr "btnGuardar"
  loc_BD1610: EqStr
  loc_BD1612: BranchF loc_BD1F3F
  loc_BD1615: LitStr vbNullString
  loc_BD1618: FLdPr Me
  loc_BD161B: MemStStrCopy
  loc_BD161F: LitI2_Byte 0
  loc_BD1621: PopTmpLdAd2 var_102
  loc_BD1624: Call FechaMsk_UnknownEvent_8()
  loc_BD1629: FLdPr Me
  loc_BD162C: MemLdStr global_64
  loc_BD162F: LitStr vbNullString
  loc_BD1632: NeStr
  loc_BD1634: BranchF loc_BD1638
  loc_BD1637: ExitProcHresult
  loc_BD1638: LitI2_Byte 0
  loc_BD163A: PopTmpLdAd2 var_102
  loc_BD163D: Call DetaOrpaTxt_Validate(from_stack_1v)
  loc_BD1642: FLdPr Me
  loc_BD1645: MemLdStr global_64
  loc_BD1648: LitStr vbNullString
  loc_BD164B: NeStr
  loc_BD164D: BranchF loc_BD1651
  loc_BD1650: ExitProcHresult
  loc_BD1651: LitStr vbNullString
  loc_BD1654: FStStrCopy var_174
  loc_BD1657: FLdPr Me
  loc_BD165A: MemLdUI1 global_60
  loc_BD165E: FStUI1 var_176
  loc_BD1662: FLdUI1
  loc_BD1666: LitI2_Byte 1
  loc_BD1668: EqI2
  loc_BD1669: BranchF loc_BD1C91
  loc_BD166C: FLdRfVar var_C0
  loc_BD166F: FLdPr Me
  loc_BD1672: VCallAd Control_ID_dgdABMS
  loc_BD1675: FStAdFunc var_A4
  loc_BD1678: FLdPr var_A4
  loc_BD167B: LateIdLdVar var_B8 DispID_113 0
  loc_BD1682: CastAdVar Me
  loc_BD1686: FStAdFunc var_BC
  loc_BD1689: FLdPr var_BC
  loc_BD168C:  = Me.SelBookmarks.Count
  loc_BD1691: ILdRf var_C0
  loc_BD1694: LitI4 1
  loc_BD1699: GtI4
  loc_BD169A: FFreeAd var_A4 = ""
  loc_BD16A1: FFree1Var var_B8 = ""
  loc_BD16A4: BranchF loc_BD1A36
  loc_BD16A7: FLdPr Me
  loc_BD16AA: VCallAd Control_ID_dgdABMS
  loc_BD16AD: FStAdFunc var_A4
  loc_BD16B0: FLdPr var_A4
  loc_BD16B3: LateIdLdVar var_B8 DispID_113 0
  loc_BD16BA: CastAdVar Me
  loc_BD16BE: FStAdFuncNoPop
  loc_BD16C1: FLdRfVar var_98
  loc_BD16C4: FFree1Ad var_A4
  loc_BD16C7: FFree1Var var_B8 = ""
  loc_BD16CA: ForEachCollVar var_180
  loc_BD16D0: FLdVar var_98
  loc_BD16D4: FLdPr Me
  loc_BD16D7: MemLdRfVar from_stack_1.global_52
  loc_BD16DA: NewIfNullPr clsordenpago
  loc_BD16DD: clsordenpago.Bookmark = from_stack_1v
  loc_BD16E2: FLdRfVar var_B8
  loc_BD16E5: FLdRfVar var_E4
  loc_BD16E8: LitVarStr var_D0, "NumeOrpa"
  loc_BD16ED: PopAdLdVar
  loc_BD16EE: FLdRfVar var_BC
  loc_BD16F1: FLdRfVar var_A4
  loc_BD16F4: FLdPr Me
  loc_BD16F7: MemLdRfVar from_stack_1.global_52
  loc_BD16FA: NewIfNullPr clsordenpago
  loc_BD16FD: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1702: FLdPr var_A4
  loc_BD1705:  = Me.Fields
  loc_BD170A: FLdPr var_BC
  loc_BD170D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1712: FLdPr var_E4
  loc_BD1715:  = Me.Value
  loc_BD171A: FLdRfVar var_102
  loc_BD171D: FLdRfVar var_B8
  loc_BD1720: CI4Var
  loc_BD1722: ImpAdLdI2 MemVar_C3D064
  loc_BD1725: FLdPr Me
  loc_BD1728: MemLdRfVar from_stack_1.global_52
  loc_BD172B: NewIfNullPr clsordenpago
  loc_BD172E: from_stack_3v = clsordenpago.FaltanDatosCheque(from_stack_1v, from_stack_2v)
  loc_BD1733: FLdI2 var_102
  loc_BD1736: FFreeAd var_A4 = "": var_BC = ""
  loc_BD173F: FFree1Var var_B8 = ""
  loc_BD1742: BranchF loc_BD17B8
  loc_BD1745: LitI4 0
  loc_BD174A: LitVarStr var_F4, "Faltan Datos de Cheque/s para la Orden de pago: "
  loc_BD174F: FLdRfVar var_B8
  loc_BD1752: FLdRfVar var_E4
  loc_BD1755: LitVarStr var_D0, "NumeOrpa"
  loc_BD175A: PopAdLdVar
  loc_BD175B: FLdRfVar var_BC
  loc_BD175E: FLdRfVar var_A4
  loc_BD1761: FLdPr Me
  loc_BD1764: MemLdRfVar from_stack_1.global_52
  loc_BD1767: NewIfNullPr clsordenpago
  loc_BD176A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD176F: FLdPr var_A4
  loc_BD1772:  = Me.Fields
  loc_BD1777: FLdPr var_BC
  loc_BD177A: from_stack_2 = Me.Item(from_stack_1)
  loc_BD177F: FLdPr var_E4
  loc_BD1782:  = Me.Value
  loc_BD1787: FLdRfVar var_B8
  loc_BD178A: ConcatVar var_E0
  loc_BD178E: LitVarStr var_114, ". Verifique..."
  loc_BD1793: ConcatVar var_124
  loc_BD1797: CStrVarVal var_9C
  loc_BD179B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD17A0: FFree1Str var_9C
  loc_BD17A3: FFreeAd var_A4 = "": var_BC = ""
  loc_BD17AC: FFreeVar var_B8 = "": var_E0 = ""
  loc_BD17B5: Branch loc_BD1A2A
  loc_BD17B8: FLdRfVar var_B8
  loc_BD17BB: FLdRfVar var_E4
  loc_BD17BE: LitVarStr var_D0, "TipoOrpa"
  loc_BD17C3: PopAdLdVar
  loc_BD17C4: FLdRfVar var_BC
  loc_BD17C7: FLdRfVar var_A4
  loc_BD17CA: FLdPr Me
  loc_BD17CD: MemLdRfVar from_stack_1.global_52
  loc_BD17D0: NewIfNullPr clsordenpago
  loc_BD17D3: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD17D8: FLdPr var_A4
  loc_BD17DB:  = Me.Fields
  loc_BD17E0: FLdPr var_BC
  loc_BD17E3: from_stack_2 = Me.Item(from_stack_1)
  loc_BD17E8: FLdPr var_E4
  loc_BD17EB:  = Me.Value
  loc_BD17F0: FLdRfVar var_B8
  loc_BD17F3: LitVarStr var_F4, "Reservada"
  loc_BD17F8: HardType
  loc_BD17F9: EqVarBool
  loc_BD17FB: FFreeAd var_A4 = "": var_BC = ""
  loc_BD1804: FFree1Var var_B8 = ""
  loc_BD1807: BranchF loc_BD181A
  loc_BD180A: LitI4 0
  loc_BD180F: LitStr "La Orden de Pago es Reservada. Verifique..."
  loc_BD1812: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD1817: Branch loc_BD1A2A
  loc_BD181A: LitStr vbNullString
  loc_BD181D: FLdPr Me
  loc_BD1820: MemStStrCopy
  loc_BD1824: LitI2_Byte 0
  loc_BD1826: PopTmpLdAd2 var_102
  loc_BD1829: Call FechaMsk_UnknownEvent_8()
  loc_BD182E: FLdPr Me
  loc_BD1831: MemLdStr global_64
  loc_BD1834: LitStr vbNullString
  loc_BD1837: EqStr
  loc_BD1839: BranchF loc_BD19C5
  loc_BD183C: FLdRfVar var_E0
  loc_BD183F: FLdRfVar var_E4
  loc_BD1842: LitVarStr var_D0, "PeriInfo"
  loc_BD1847: PopAdLdVar
  loc_BD1848: FLdRfVar var_BC
  loc_BD184B: FLdRfVar var_A4
  loc_BD184E: FLdPr Me
  loc_BD1851: MemLdRfVar from_stack_1.global_52
  loc_BD1854: NewIfNullPr clsordenpago
  loc_BD1857: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD185C: FLdPr var_A4
  loc_BD185F:  = Me.Fields
  loc_BD1864: FLdPr var_BC
  loc_BD1867: from_stack_2 = Me.Item(from_stack_1)
  loc_BD186C: FLdPr var_E4
  loc_BD186F:  = Me.Value
  loc_BD1874: FLdRfVar var_124
  loc_BD1877: FLdRfVar var_100
  loc_BD187A: LitVarStr var_F4, "NumeOrpa"
  loc_BD187F: PopAdLdVar
  loc_BD1880: FLdRfVar var_FC
  loc_BD1883: FLdRfVar var_F8
  loc_BD1886: FLdPr Me
  loc_BD1889: MemLdRfVar from_stack_1.global_52
  loc_BD188C: NewIfNullPr clsordenpago
  loc_BD188F: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1894: FLdPr var_F8
  loc_BD1897:  = Me.Fields
  loc_BD189C: FLdPr var_FC
  loc_BD189F: from_stack_2 = Me.Item(from_stack_1)
  loc_BD18A4: FLdPr var_100
  loc_BD18A7:  = Me.Value
  loc_BD18AC: FLdPr Me
  loc_BD18AF: VCallAd Control_ID_FechaMsk
  loc_BD18B2: FStAdFunc var_184
  loc_BD18B5: FLdPr var_184
  loc_BD18B8: LateIdLdVar var_B8 DispID_15 0
  loc_BD18BF: PopAd
  loc_BD18C1: LitI2_Byte 0
  loc_BD18C3: CUI1I2
  loc_BD18C5: FLdRfVar var_B8
  loc_BD18C8: CStrVarTmp
  loc_BD18C9: FStStrNoPop var_9C
  loc_BD18CC: FLdRfVar var_124
  loc_BD18CF: CI4Var
  loc_BD18D1: FLdRfVar var_E0
  loc_BD18D4: CI2Var
  loc_BD18D5: FLdPr Me
  loc_BD18D8: MemLdRfVar from_stack_1.global_52
  loc_BD18DB: NewIfNullPr clsordenpago
  loc_BD18DE: Call clsordenpago.ActualizaFere(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BD18E3: FFree1Str var_9C
  loc_BD18E6: FFreeAd var_A4 = "": var_BC = "": var_F8 = "": var_FC = "": var_184 = "": var_E4 = ""
  loc_BD18F7: FFreeVar var_B8 = "": var_E0 = ""
  loc_BD1900: FLdRfVar var_E4
  loc_BD1903: LitVarStr var_D0, "NumeOrpa"
  loc_BD1908: PopAdLdVar
  loc_BD1909: FLdRfVar var_BC
  loc_BD190C: FLdRfVar var_A4
  loc_BD190F: FLdPr Me
  loc_BD1912: MemLdRfVar from_stack_1.global_52
  loc_BD1915: NewIfNullPr clsordenpago
  loc_BD1918: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD191D: FLdPr var_A4
  loc_BD1920:  = Me.Fields
  loc_BD1925: FLdPr var_BC
  loc_BD1928: from_stack_2 = Me.Item(from_stack_1)
  loc_BD192D: ILdRf var_174
  loc_BD1930: LitStr ","
  loc_BD1933: ConcatStr
  loc_BD1934: CVarStr var_E0
  loc_BD1937: FLdRfVar var_B8
  loc_BD193A: FLdRfVar var_100
  loc_BD193D: LitVarStr var_F4, "NumeOrpa"
  loc_BD1942: PopAdLdVar
  loc_BD1943: FLdRfVar var_FC
  loc_BD1946: FLdRfVar var_F8
  loc_BD1949: FLdPr Me
  loc_BD194C: MemLdRfVar from_stack_1.global_52
  loc_BD194F: NewIfNullPr clsordenpago
  loc_BD1952: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1957: FLdPr var_F8
  loc_BD195A:  = Me.Fields
  loc_BD195F: FLdPr var_FC
  loc_BD1962: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1967: FLdPr var_100
  loc_BD196A:  = Me.Value
  loc_BD196F: FLdRfVar var_B8
  loc_BD1972: ConcatVar var_124
  loc_BD1976: FLdZeroAd var_E4
  loc_BD1979: CVarAd
  loc_BD197D: ILdRf var_174
  loc_BD1980: LitStr vbNullString
  loc_BD1983: EqStr
  loc_BD1985: CVarBoolI2 var_114
  loc_BD1989: FLdRfVar var_164
  loc_BD198C: ImpAdCallFPR4  = IIf(, , )
  loc_BD1991: FLdRfVar var_164
  loc_BD1994: CStrVarTmp
  loc_BD1995: FStStr var_174
  loc_BD1998: FFreeAd var_A4 = "": var_BC = "": var_F8 = "": var_FC = ""
  loc_BD19A5: FFreeVar var_E0 = "": var_B8 = "": var_114 = "": var_144 = "": var_124 = ""
  loc_BD19B4: FLdPr Me
  loc_BD19B7: MemLdRfVar from_stack_1.global_56
  loc_BD19BA: NewIfNullPr clscheque
  loc_BD19BD: Call clscheque.MoveFirst()
  loc_BD19C2: Branch loc_BD1A2A
  loc_BD19C5: LitI4 0
  loc_BD19CA: LitVarStr var_F4, "Revise la fecha de remisión de la Orden de pago: "
  loc_BD19CF: FLdRfVar var_B8
  loc_BD19D2: FLdRfVar var_E4
  loc_BD19D5: LitVarStr var_D0, "NumeOrpa"
  loc_BD19DA: PopAdLdVar
  loc_BD19DB: FLdRfVar var_BC
  loc_BD19DE: FLdRfVar var_A4
  loc_BD19E1: FLdPr Me
  loc_BD19E4: MemLdRfVar from_stack_1.global_52
  loc_BD19E7: NewIfNullPr clsordenpago
  loc_BD19EA: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD19EF: FLdPr var_A4
  loc_BD19F2:  = Me.Fields
  loc_BD19F7: FLdPr var_BC
  loc_BD19FA: from_stack_2 = Me.Item(from_stack_1)
  loc_BD19FF: FLdPr var_E4
  loc_BD1A02:  = Me.Value
  loc_BD1A07: FLdRfVar var_B8
  loc_BD1A0A: ConcatVar var_E0
  loc_BD1A0E: CStrVarVal var_9C
  loc_BD1A12: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD1A17: FFree1Str var_9C
  loc_BD1A1A: FFreeAd var_A4 = "": var_BC = ""
  loc_BD1A23: FFreeVar var_B8 = ""
  loc_BD1A2A: FLdRfVar var_98
  loc_BD1A2D: NextEachCollVar var_180
  loc_BD1A33: Branch loc_BD1C18
  loc_BD1A36: FLdRfVar var_E4
  loc_BD1A39: LitVarStr var_D0, "CodiPart"
  loc_BD1A3E: PopAdLdVar
  loc_BD1A3F: FLdRfVar var_BC
  loc_BD1A42: FLdRfVar var_A4
  loc_BD1A45: FLdPr Me
  loc_BD1A48: MemLdRfVar from_stack_1.global_52
  loc_BD1A4B: NewIfNullPr clsordenpago
  loc_BD1A4E: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1A53: FLdPr var_A4
  loc_BD1A56:  = Me.Fields
  loc_BD1A5B: FLdPr var_BC
  loc_BD1A5E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1A63: LitVar_TRUE var_134
  loc_BD1A66: LitVarI2 var_E0, 2
  loc_BD1A6B: LitI4 1
  loc_BD1A70: FLdZeroAd var_E4
  loc_BD1A73: CVarAd
  loc_BD1A77: FLdRfVar var_124
  loc_BD1A7A: ImpAdCallFPR4  = Mid(, , )
  loc_BD1A7F: FLdRfVar var_124
  loc_BD1A82: LitVarStr var_114, "43"
  loc_BD1A87: HardType
  loc_BD1A88: EqVar var_144
  loc_BD1A8C: AndVar var_164
  loc_BD1A90: FLdRfVar var_19C
  loc_BD1A93: FLdRfVar var_100
  loc_BD1A96: LitVarStr var_154, "TotalCh"
  loc_BD1A9B: PopAdLdVar
  loc_BD1A9C: FLdRfVar var_FC
  loc_BD1A9F: FLdRfVar var_F8
  loc_BD1AA2: FLdPr Me
  loc_BD1AA5: MemLdRfVar from_stack_1.global_52
  loc_BD1AA8: NewIfNullPr clsordenpago
  loc_BD1AAB: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1AB0: FLdPr var_F8
  loc_BD1AB3:  = Me.Fields
  loc_BD1AB8: FLdPr var_FC
  loc_BD1ABB: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1AC0: FLdPr var_100
  loc_BD1AC3:  = Me.Value
  loc_BD1AC8: FLdRfVar var_19C
  loc_BD1ACB: FLdRfVar var_18C
  loc_BD1ACE: ImpAdLdI2 MemVar_C3D064
  loc_BD1AD1: FLdPr Me
  loc_BD1AD4: MemLdRfVar from_stack_1.global_52
  loc_BD1AD7: NewIfNullPr clsordenpago
  loc_BD1ADA: from_stack_2v = clsordenpago.BuscaImporteMinimoCargo(from_stack_1v)
  loc_BD1ADF: FLdFPR8 var_18C
  loc_BD1AE2: CVarR8
  loc_BD1AE6: HardType
  loc_BD1AE7: GeVar var_1BC
  loc_BD1AEB: AndVar var_1CC
  loc_BD1AEF: CBoolVarNull
  loc_BD1AF1: FFreeAd var_A4 = "": var_BC = "": var_F8 = "": var_FC = ""
  loc_BD1AFE: FFreeVar var_B8 = "": var_E0 = "": var_124 = ""
  loc_BD1B09: BranchF loc_BD1B3E
  loc_BD1B0C: LitI2_Byte &HFF
  loc_BD1B0E: PopTmpLdAd2 var_166
  loc_BD1B11: LitI2_Byte &HFF
  loc_BD1B13: PopTmpLdAd2 var_102
  loc_BD1B16: LitStr "¿ Confirma la OP en el módulo de CARGOS ?"
  loc_BD1B19: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BD1B1E: CI4UI1
  loc_BD1B1F: LitI4 6
  loc_BD1B24: EqI4
  loc_BD1B25: BranchF loc_BD1B33
  loc_BD1B28: LitI2_Byte 1
  loc_BD1B2A: CUI1I2
  loc_BD1B2C: FStUI1 var_178
  loc_BD1B30: Branch loc_BD1B3B
  loc_BD1B33: LitI2_Byte 0
  loc_BD1B35: CUI1I2
  loc_BD1B37: FStUI1 var_178
  loc_BD1B3B: Branch loc_BD1B46
  loc_BD1B3E: LitI2_Byte 0
  loc_BD1B40: CUI1I2
  loc_BD1B42: FStUI1 var_178
  loc_BD1B46: FLdRfVar var_E0
  loc_BD1B49: FLdRfVar var_E4
  loc_BD1B4C: LitVarStr var_D0, "PeriInfo"
  loc_BD1B51: PopAdLdVar
  loc_BD1B52: FLdRfVar var_BC
  loc_BD1B55: FLdRfVar var_A4
  loc_BD1B58: FLdPr Me
  loc_BD1B5B: MemLdRfVar from_stack_1.global_52
  loc_BD1B5E: NewIfNullPr clsordenpago
  loc_BD1B61: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1B66: FLdPr var_A4
  loc_BD1B69:  = Me.Fields
  loc_BD1B6E: FLdPr var_BC
  loc_BD1B71: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1B76: FLdPr var_E4
  loc_BD1B79:  = Me.Value
  loc_BD1B7E: FLdRfVar var_124
  loc_BD1B81: FLdRfVar var_100
  loc_BD1B84: LitVarStr var_F4, "NumeOrpa"
  loc_BD1B89: PopAdLdVar
  loc_BD1B8A: FLdRfVar var_FC
  loc_BD1B8D: FLdRfVar var_F8
  loc_BD1B90: FLdPr Me
  loc_BD1B93: MemLdRfVar from_stack_1.global_52
  loc_BD1B96: NewIfNullPr clsordenpago
  loc_BD1B99: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1B9E: FLdPr var_F8
  loc_BD1BA1:  = Me.Fields
  loc_BD1BA6: FLdPr var_FC
  loc_BD1BA9: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1BAE: FLdPr var_100
  loc_BD1BB1:  = Me.Value
  loc_BD1BB6: FLdPr Me
  loc_BD1BB9: VCallAd Control_ID_FechaMsk
  loc_BD1BBC: FStAdFunc var_184
  loc_BD1BBF: FLdPr var_184
  loc_BD1BC2: LateIdLdVar var_B8 DispID_15 0
  loc_BD1BC9: PopAd
  loc_BD1BCB: FLdUI1
  loc_BD1BCF: FLdRfVar var_B8
  loc_BD1BD2: CStrVarTmp
  loc_BD1BD3: FStStrNoPop var_9C
  loc_BD1BD6: FLdRfVar var_124
  loc_BD1BD9: CI4Var
  loc_BD1BDB: FLdRfVar var_E0
  loc_BD1BDE: CI2Var
  loc_BD1BDF: FLdPr Me
  loc_BD1BE2: MemLdRfVar from_stack_1.global_52
  loc_BD1BE5: NewIfNullPr clsordenpago
  loc_BD1BE8: Call clsordenpago.ActualizaFere(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BD1BED: FFree1Str var_9C
  loc_BD1BF0: FFreeAd var_A4 = "": var_BC = "": var_F8 = "": var_FC = "": var_184 = "": var_E4 = ""
  loc_BD1C01: FFreeVar var_B8 = "": var_E0 = ""
  loc_BD1C0A: FLdPr Me
  loc_BD1C0D: MemLdRfVar from_stack_1.global_56
  loc_BD1C10: NewIfNullPr clscheque
  loc_BD1C13: Call clscheque.MoveFirst()
  loc_BD1C18: LitStr "Municipalidad de Guaymallén"
  loc_BD1C1B: LitStr "Municipalidad de Tunuyán"
  loc_BD1C1E: EqStr
  loc_BD1C20: ILdRf var_174
  loc_BD1C23: LitStr vbNullString
  loc_BD1C26: NeStr
  loc_BD1C28: AndI4
  loc_BD1C29: BranchF loc_BD1C8E
  loc_BD1C2C: LitI2_Byte &HFF
  loc_BD1C2E: PopTmpLdAd2 var_166
  loc_BD1C31: LitI2_Byte 0
  loc_BD1C33: PopTmpLdAd2 var_102
  loc_BD1C36: LitStr "¿Imprime la planilla de remisión?"
  loc_BD1C39: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BD1C3E: CI4UI1
  loc_BD1C3F: LitI4 6
  loc_BD1C44: EqI4
  loc_BD1C45: BranchF loc_BD1C8E
  loc_BD1C48: ImpAdLdRf MemVar_C3DE30
  loc_BD1C4B: NewIfNullAd
  loc_BD1C4E: CastAd
  loc_BD1C51: FStAdFuncNoPop
  loc_BD1C54: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BD1C59: FFree1Ad var_A4
  loc_BD1C5C: ILdRf var_174
  loc_BD1C5F: ImpAdLdRf MemVar_C3DE30
  loc_BD1C62: NewIfNullPr rptPlanilladeremisiondeordenesdepago
  loc_BD1C65: VCallAd Control_ID_OpTxt
  loc_BD1C68: FStAdFunc var_A4
  loc_BD1C6B: FLdPr var_A4
  loc_BD1C6E: rptPlanilladeremisiondeordenesdepago.TextBox.Text = from_stack_1
  loc_BD1C73: FFree1Ad var_A4
  loc_BD1C76: LitVar_Missing var_F4
  loc_BD1C79: PopAdLdVar
  loc_BD1C7A: LitVarI4
  loc_BD1C82: PopAdLdVar
  loc_BD1C83: ImpAdLdRf MemVar_C3DE30
  loc_BD1C86: NewIfNullPr rptPlanilladeremisiondeordenesdepago
  loc_BD1C89: rptPlanilladeremisiondeordenesdepago.Show from_stack_1, from_stack_2
  loc_BD1C8E: Branch loc_BD1F37
  loc_BD1C91: FLdUI1
  loc_BD1C95: LitI2_Byte 2
  loc_BD1C97: EqI2
  loc_BD1C98: BranchF loc_BD1D14
  loc_BD1C9B: FLdRfVar var_B8
  loc_BD1C9E: FLdRfVar var_E4
  loc_BD1CA1: LitVarStr var_D0, "NumeOrpa"
  loc_BD1CA6: PopAdLdVar
  loc_BD1CA7: FLdRfVar var_BC
  loc_BD1CAA: FLdRfVar var_A4
  loc_BD1CAD: FLdPr Me
  loc_BD1CB0: MemLdRfVar from_stack_1.global_52
  loc_BD1CB3: NewIfNullPr clsordenpago
  loc_BD1CB6: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1CBB: FLdPr var_A4
  loc_BD1CBE:  = Me.Fields
  loc_BD1CC3: FLdPr var_BC
  loc_BD1CC6: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1CCB: FLdPr var_E4
  loc_BD1CCE:  = Me.Value
  loc_BD1CD3: FLdRfVar var_9C
  loc_BD1CD6: FLdPr Me
  loc_BD1CD9: VCallAd Control_ID_DetaOrpaTxt
  loc_BD1CDC: FStAdFunc var_F8
  loc_BD1CDF: FLdPr var_F8
  loc_BD1CE2:  = Me.Text
  loc_BD1CE7: ILdRf var_9C
  loc_BD1CEA: FLdRfVar var_B8
  loc_BD1CED: CI4Var
  loc_BD1CEF: ImpAdLdI2 MemVar_C3D064
  loc_BD1CF2: FLdPr Me
  loc_BD1CF5: MemLdRfVar from_stack_1.global_52
  loc_BD1CF8: NewIfNullPr clsordenpago
  loc_BD1CFB: Call clsordenpago.ModificarDetaOrpa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BD1D00: FFree1Str var_9C
  loc_BD1D03: FFreeAd var_A4 = "": var_BC = "": var_F8 = ""
  loc_BD1D0E: FFree1Var var_B8 = ""
  loc_BD1D11: Branch loc_BD1F37
  loc_BD1D14: FLdUI1
  loc_BD1D18: LitI2_Byte 3
  loc_BD1D1A: EqI2
  loc_BD1D1B: BranchF loc_BD1F37
  loc_BD1D1E: FLdRfVar var_9C
  loc_BD1D21: FLdPr Me
  loc_BD1D24: MemLdRfVar from_stack_1.global_52
  loc_BD1D27: NewIfNullPr clsordenpago
  loc_BD1D2A: from_stack_1v = clsordenpago.ValidaEliminar()
  loc_BD1D2F: ILdRf var_9C
  loc_BD1D32: FLdPr Me
  loc_BD1D35: MemStStrCopy
  loc_BD1D39: FFree1Str var_9C
  loc_BD1D3C: FLdPr Me
  loc_BD1D3F: MemLdStr global_64
  loc_BD1D42: LitStr vbNullString
  loc_BD1D45: NeStr
  loc_BD1D47: LitVarI2 var_B8, 12
  loc_BD1D4C: LitI4 1
  loc_BD1D51: FLdPr Me
  loc_BD1D54: MemLdStr global_64
  loc_BD1D57: ImpAdCallI2 Mid$(, , )
  loc_BD1D5C: FStStrNoPop var_9C
  loc_BD1D5F: LitStr "Advertencia:"
  loc_BD1D62: NeStr
  loc_BD1D64: AndI4
  loc_BD1D65: FFree1Str var_9C
  loc_BD1D68: FFree1Var var_B8 = ""
  loc_BD1D6B: BranchF loc_BD1D81
  loc_BD1D6E: LitI4 0
  loc_BD1D73: FLdPr Me
  loc_BD1D76: MemLdStr global_64
  loc_BD1D79: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD1D7E: Branch loc_BD1F37
  loc_BD1D81: LitVar_Missing var_1BC
  loc_BD1D84: LitVar_Missing var_19C
  loc_BD1D87: LitVar_Missing var_164
  loc_BD1D8A: LitVar_Missing var_144
  loc_BD1D8D: LitVar_Missing var_124
  loc_BD1D90: LitVarStr var_F4, "ANULAR ORDEN DE PAGO"
  loc_BD1D95: FStVarCopyObj var_E0
  loc_BD1D98: FLdRfVar var_E0
  loc_BD1D9B: LitVarStr var_D0, "Ingrese el motivo de anulación..."
  loc_BD1DA0: FStVarCopyObj var_B8
  loc_BD1DA3: FLdRfVar var_B8
  loc_BD1DA6: ImpAdCallI2 InputBox(, , , , , , )
  loc_BD1DAB: FStStr var_1D0
  loc_BD1DAE: FFreeVar var_B8 = "": var_E0 = "": var_124 = "": var_144 = "": var_164 = "": var_19C = ""
  loc_BD1DBF: LitI2_Byte 0
  loc_BD1DC1: PopTmpLdAd2 var_1E2
  loc_BD1DC4: LitI2_Byte 0
  loc_BD1DC6: PopTmpLdAd2 var_166
  loc_BD1DC9: LitI2_Byte 0
  loc_BD1DCB: PopTmpLdAd2 var_102
  loc_BD1DCE: ILdRf var_1D0
  loc_BD1DD1: LitStr "Anulacion"
  loc_BD1DD4: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_BD1DD9: FStStrNoPop var_9C
  loc_BD1DDC: FLdPr Me
  loc_BD1DDF: MemStStrCopy
  loc_BD1DE3: FFree1Str var_9C
  loc_BD1DE6: FLdPr Me
  loc_BD1DE9: MemLdStr global_64
  loc_BD1DEC: LitStr vbNullString
  loc_BD1DEF: NeStr
  loc_BD1DF1: BranchF loc_BD1E07
  loc_BD1DF4: LitI4 0
  loc_BD1DF9: FLdPr Me
  loc_BD1DFC: MemLdStr global_64
  loc_BD1DFF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD1E04: Branch loc_BD1F37
  loc_BD1E07: FLdRfVar var_E0
  loc_BD1E0A: FLdRfVar var_E4
  loc_BD1E0D: LitVarStr var_D0, "PeriInfo"
  loc_BD1E12: PopAdLdVar
  loc_BD1E13: FLdRfVar var_BC
  loc_BD1E16: FLdRfVar var_A4
  loc_BD1E19: FLdPr Me
  loc_BD1E1C: MemLdRfVar from_stack_1.global_52
  loc_BD1E1F: NewIfNullPr clsordenpago
  loc_BD1E22: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1E27: FLdPr var_A4
  loc_BD1E2A:  = Me.Fields
  loc_BD1E2F: FLdPr var_BC
  loc_BD1E32: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1E37: FLdPr var_E4
  loc_BD1E3A:  = Me.Value
  loc_BD1E3F: FLdRfVar var_124
  loc_BD1E42: FLdRfVar var_100
  loc_BD1E45: LitVarStr var_F4, "NumeOrpa"
  loc_BD1E4A: PopAdLdVar
  loc_BD1E4B: FLdRfVar var_FC
  loc_BD1E4E: FLdRfVar var_F8
  loc_BD1E51: FLdPr Me
  loc_BD1E54: MemLdRfVar from_stack_1.global_52
  loc_BD1E57: NewIfNullPr clsordenpago
  loc_BD1E5A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1E5F: FLdPr var_F8
  loc_BD1E62:  = Me.Fields
  loc_BD1E67: FLdPr var_FC
  loc_BD1E6A: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1E6F: FLdPr var_100
  loc_BD1E72:  = Me.Value
  loc_BD1E77: FLdRfVar var_144
  loc_BD1E7A: FLdRfVar var_1EC
  loc_BD1E7D: LitVarStr var_114, "TipoOrpa"
  loc_BD1E82: PopAdLdVar
  loc_BD1E83: FLdRfVar var_1E8
  loc_BD1E86: FLdRfVar var_184
  loc_BD1E89: FLdPr Me
  loc_BD1E8C: MemLdRfVar from_stack_1.global_52
  loc_BD1E8F: NewIfNullPr clsordenpago
  loc_BD1E92: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD1E97: FLdPr var_184
  loc_BD1E9A:  = Me.Fields
  loc_BD1E9F: FLdPr var_1E8
  loc_BD1EA2: from_stack_2 = Me.Item(from_stack_1)
  loc_BD1EA7: FLdPr var_1EC
  loc_BD1EAA:  = Me.Value
  loc_BD1EAF: FLdPr Me
  loc_BD1EB2: VCallAd Control_ID_FechaMsk
  loc_BD1EB5: FStAdFunc var_1F0
  loc_BD1EB8: FLdPr var_1F0
  loc_BD1EBB: LateIdLdVar var_B8 DispID_15 0
  loc_BD1EC2: PopAd
  loc_BD1EC4: FLdRfVar var_1F8
  loc_BD1EC7: ILdRf var_1D0
  loc_BD1ECA: LitStr vbNullString
  loc_BD1ECD: FLdRfVar var_B8
  loc_BD1ED0: CStrVarTmp
  loc_BD1ED1: FStStrNoPop var_1F4
  loc_BD1ED4: FLdRfVar var_144
  loc_BD1ED7: CStrVarTmp
  loc_BD1ED8: FStStrNoPop var_9C
  loc_BD1EDB: FLdRfVar var_124
  loc_BD1EDE: CI4Var
  loc_BD1EE0: FLdRfVar var_E0
  loc_BD1EE3: CI2Var
  loc_BD1EE4: FLdPr Me
  loc_BD1EE7: MemLdRfVar from_stack_1.global_52
  loc_BD1EEA: NewIfNullPr clsordenpago
  loc_BD1EED: from_stack_7v = clsordenpago.AnularOP(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BD1EF2: ILdRf var_1F8
  loc_BD1EF5: FLdPr Me
  loc_BD1EF8: MemStStrCopy
  loc_BD1EFC: FFreeStr var_9C = "": var_1F4 = ""
  loc_BD1F05: FFreeAd var_A4 = "": var_BC = "": var_F8 = "": var_FC = "": var_184 = "": var_1E8 = "": var_1F0 = "": var_E4 = "": var_100 = ""
  loc_BD1F1C: FFreeVar var_B8 = "": var_E0 = "": var_124 = ""
  loc_BD1F27: LitI4 0
  loc_BD1F2C: FLdPr Me
  loc_BD1F2F: MemLdStr global_64
  loc_BD1F32: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD1F37: Call cmdCancelar_Click()
  loc_BD1F3C: Branch loc_BD206F
  loc_BD1F3F: ILdRf var_A0
  loc_BD1F42: LitStr "btnCancelar"
  loc_BD1F45: EqStr
  loc_BD1F47: BranchF loc_BD1F52
  loc_BD1F4A: Call cmdCancelar_Click()
  loc_BD1F4F: Branch loc_BD206F
  loc_BD1F52: ILdRf var_A0
  loc_BD1F55: LitStr "btnPrimero"
  loc_BD1F58: EqStr
  loc_BD1F5A: BranchF loc_BD1F6E
  loc_BD1F5D: FLdPr Me
  loc_BD1F60: MemLdRfVar from_stack_1.global_52
  loc_BD1F63: NewIfNullPr clsordenpago
  loc_BD1F66: Call clsordenpago.MoveFirst()
  loc_BD1F6B: Branch loc_BD206F
  loc_BD1F6E: ILdRf var_A0
  loc_BD1F71: LitStr "btnAnterior"
  loc_BD1F74: EqStr
  loc_BD1F76: BranchF loc_BD1F8A
  loc_BD1F79: FLdPr Me
  loc_BD1F7C: MemLdRfVar from_stack_1.global_52
  loc_BD1F7F: NewIfNullPr clsordenpago
  loc_BD1F82: Call clsordenpago.MovePrevious()
  loc_BD1F87: Branch loc_BD206F
  loc_BD1F8A: ILdRf var_A0
  loc_BD1F8D: LitStr "btnSiguiente"
  loc_BD1F90: EqStr
  loc_BD1F92: BranchF loc_BD1FA6
  loc_BD1F95: FLdPr Me
  loc_BD1F98: MemLdRfVar from_stack_1.global_52
  loc_BD1F9B: NewIfNullPr clsordenpago
  loc_BD1F9E: Call clsordenpago.MoveNext()
  loc_BD1FA3: Branch loc_BD206F
  loc_BD1FA6: ILdRf var_A0
  loc_BD1FA9: LitStr "btnUltimo"
  loc_BD1FAC: EqStr
  loc_BD1FAE: BranchF loc_BD1FC2
  loc_BD1FB1: FLdPr Me
  loc_BD1FB4: MemLdRfVar from_stack_1.global_52
  loc_BD1FB7: NewIfNullPr clsordenpago
  loc_BD1FBA: Call clsordenpago.MoveLast()
  loc_BD1FBF: Branch loc_BD206F
  loc_BD1FC2: ILdRf var_A0
  loc_BD1FC5: LitStr "btnFiltrar"
  loc_BD1FC8: EqStr
  loc_BD1FCA: BranchF loc_BD1FD0
  loc_BD1FCD: Branch loc_BD206F
  loc_BD1FD0: ILdRf var_A0
  loc_BD1FD3: LitStr "btnBuscar"
  loc_BD1FD6: EqStr
  loc_BD1FD8: BranchF loc_BD1FDE
  loc_BD1FDB: Branch loc_BD206F
  loc_BD1FDE: ILdRf var_A0
  loc_BD1FE1: LitStr "btnImprimir"
  loc_BD1FE4: EqStr
  loc_BD1FE6: BranchF loc_BD2018
  loc_BD1FE9: ImpAdLdRf MemVar_C3DE30
  loc_BD1FEC: NewIfNullAd
  loc_BD1FEF: CastAd
  loc_BD1FF2: FStAdFuncNoPop
  loc_BD1FF5: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BD1FFA: FFree1Ad var_A4
  loc_BD1FFD: LitVar_Missing var_F4
  loc_BD2000: PopAdLdVar
  loc_BD2001: LitVarI4
  loc_BD2009: PopAdLdVar
  loc_BD200A: ImpAdLdRf MemVar_C3DE30
  loc_BD200D: NewIfNullPr rptPlanilladeremisiondeordenesdepago
  loc_BD2010: rptPlanilladeremisiondeordenesdepago.Show from_stack_1, from_stack_2
  loc_BD2015: Branch loc_BD206F
  loc_BD2018: ILdRf var_A0
  loc_BD201B: LitStr "btnAyuda"
  loc_BD201E: EqStr
  loc_BD2020: BranchF loc_BD204F
  loc_BD2023: LitVar_Missing var_144
  loc_BD2026: LitVar_Missing var_124
  loc_BD2029: LitVar_Missing var_E0
  loc_BD202C: LitI4 0
  loc_BD2031: LitVarStr var_D0, "Opcion no disponible en esta version."
  loc_BD2036: FStVarCopyObj var_B8
  loc_BD2039: FLdRfVar var_B8
  loc_BD203C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BD2041: FFreeVar var_B8 = "": var_E0 = "": var_124 = ""
  loc_BD204C: Branch loc_BD206F
  loc_BD204F: ILdRf var_A0
  loc_BD2052: LitStr "btnSalir"
  loc_BD2055: EqStr
  loc_BD2057: BranchF loc_BD206F
  loc_BD205A: ILdRf Me
  loc_BD205D: FStAdNoPop
  loc_BD2061: ImpAdLdRf MemVar_C44F9C
  loc_BD2064: NewIfNullPr Me
  loc_BD2067: Me.Global.Unload from_stack_1
  loc_BD206C: FFree1Ad var_A4
  loc_BD206F: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95F238
  'Data Table: 43BE34
  loc_95F220: FLdPr Me
  loc_95F223: VCallAd Control_ID_dgdABMS
  loc_95F226: FStAdFunc var_88
  loc_95F229: FLdRfVar var_88
  loc_95F22C: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95F231: FFree1Ad var_88
  loc_95F234: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95F108
  'Data Table: 43BE34
  loc_95F0F0: FLdPr Me
  loc_95F0F3: VCallAd Control_ID_dgdABMS
  loc_95F0F6: FStAdFunc var_88
  loc_95F0F9: FLdRfVar var_88
  loc_95F0FC: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95F101: FFree1Ad var_88
  loc_95F104: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99AFA0
  'Data Table: 43BE34
  loc_99AF44: FLdRfVar var_B4
  loc_99AF47: FLdRfVar var_B0
  loc_99AF4A: FLdI2 ColIndex
  loc_99AF4D: CVarI2 var_A8
  loc_99AF50: PopAdLdVar
  loc_99AF51: FLdPr Me
  loc_99AF54: VCallAd Control_ID_dgdABMS
  loc_99AF57: FStAdFunc var_88
  loc_99AF5A: FLdPr var_88
  loc_99AF5D: LateIdLdVar var_98 DispID_105 0
  loc_99AF64: CastAdVar Me
  loc_99AF68: FStAdFunc var_AC
  loc_99AF6B: FLdPr var_AC
  loc_99AF6E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99AF73: FLdPr var_B0
  loc_99AF76:  = Me.DataField
  loc_99AF7B: FLdZeroAd var_B4
  loc_99AF7E: PopTmpLdAdStr
  loc_99AF82: FLdPr Me
  loc_99AF85: MemLdRfVar from_stack_1.global_52
  loc_99AF88: NewIfNullPr clsordenpago
  loc_99AF8B: Call clsordenpago.Sort(from_stack_1v)
  loc_99AF90: FFree1Str var_B8
  loc_99AF93: FFreeAd var_88 = "": var_AC = ""
  loc_99AF9C: FFree1Var var_98 = ""
  loc_99AF9F: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'A3AFF4
  'Data Table: 43BE34
  loc_A3AE14: FLdRfVar var_88
  loc_A3AE17: FLdPr Me
  loc_A3AE1A: MemLdRfVar from_stack_1.global_52
  loc_A3AE1D: NewIfNullPr clsordenpago
  loc_A3AE20: from_stack_1 = clsordenpago.RecordCount
  loc_A3AE25: ILdRf var_88
  loc_A3AE28: LitI4 0
  loc_A3AE2D: GtI4
  loc_A3AE2E: BranchF loc_A3AFB2
  loc_A3AE31: FLdRfVar var_8A
  loc_A3AE34: FLdPr Me
  loc_A3AE37: MemLdRfVar from_stack_1.global_52
  loc_A3AE3A: NewIfNullPr clsordenpago
  loc_A3AE3D: from_stack_1 = clsordenpago.BOF
  loc_A3AE42: FLdI2 var_8A
  loc_A3AE45: BranchF loc_A3AE56
  loc_A3AE48: FLdPr Me
  loc_A3AE4B: MemLdRfVar from_stack_1.global_52
  loc_A3AE4E: NewIfNullPr clsordenpago
  loc_A3AE51: Call clsordenpago.MoveFirst()
  loc_A3AE56: FLdRfVar var_8A
  loc_A3AE59: FLdPr Me
  loc_A3AE5C: MemLdRfVar from_stack_1.global_52
  loc_A3AE5F: NewIfNullPr clsordenpago
  loc_A3AE62: from_stack_1 = clsordenpago.EOF
  loc_A3AE67: FLdI2 var_8A
  loc_A3AE6A: BranchF loc_A3AE7B
  loc_A3AE6D: FLdPr Me
  loc_A3AE70: MemLdRfVar from_stack_1.global_52
  loc_A3AE73: NewIfNullPr clsordenpago
  loc_A3AE76: Call clsordenpago.MoveLast()
  loc_A3AE7B: LitStr "SELECT @total:=@total+if(FeanCheq IS NULL,ImpoCheq,0) Total, cheque.*, DetaProv, DetaBanc, IFNULL(MailPers,'') MailPers, PainProv"
  loc_A3AE7E: LitStr ", CASE AutoCheq"
  loc_A3AE81: ConcatStr
  loc_A3AE82: FStStrNoPop var_90
  loc_A3AE85: LitStr " WHEN 1 THEN 'cheque manual'"
  loc_A3AE88: ConcatStr
  loc_A3AE89: FStStrNoPop var_94
  loc_A3AE8C: LitStr " WHEN 2 THEN 'cheque impreso'"
  loc_A3AE8F: ConcatStr
  loc_A3AE90: FStStrNoPop var_98
  loc_A3AE93: LitStr " WHEN 3 THEN 'transferencia'"
  loc_A3AE96: ConcatStr
  loc_A3AE97: FStStrNoPop var_9C
  loc_A3AE9A: LitStr " WHEN 4 THEN 'eCheq'"
  loc_A3AE9D: ConcatStr
  loc_A3AE9E: FStStrNoPop var_A0
  loc_A3AEA1: LitStr " ELSE 'FALTA completar'"
  loc_A3AEA4: ConcatStr
  loc_A3AEA5: FStStrNoPop var_A4
  loc_A3AEA8: LitStr " END FormaPago"
  loc_A3AEAB: ConcatStr
  loc_A3AEAC: FStStrNoPop var_A8
  loc_A3AEAF: LitStr " FROM cheque"
  loc_A3AEB2: ConcatStr
  loc_A3AEB3: FStStrNoPop var_AC
  loc_A3AEB6: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = cheque.CucuPers"
  loc_A3AEB9: ConcatStr
  loc_A3AEBA: FStStrNoPop var_B0
  loc_A3AEBD: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_A3AEC0: ConcatStr
  loc_A3AEC1: FStStrNoPop var_B4
  loc_A3AEC4: LitStr " INNER JOIN banco on banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_A3AEC7: ConcatStr
  loc_A3AEC8: FStStrNoPop var_B8
  loc_A3AECB: LitStr " WHERE cheque.PeriInfo = "
  loc_A3AECE: ConcatStr
  loc_A3AECF: CVarStr var_F4
  loc_A3AED2: FLdRfVar var_E4
  loc_A3AED5: FLdRfVar var_D4
  loc_A3AED8: LitVarStr var_D0, "PeriInfo"
  loc_A3AEDD: PopAdLdVar
  loc_A3AEDE: FLdRfVar var_C0
  loc_A3AEE1: FLdRfVar var_BC
  loc_A3AEE4: FLdPr Me
  loc_A3AEE7: MemLdRfVar from_stack_1.global_52
  loc_A3AEEA: NewIfNullPr clsordenpago
  loc_A3AEED: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A3AEF2: FLdPr var_BC
  loc_A3AEF5:  = Me.Fields
  loc_A3AEFA: FLdPr var_C0
  loc_A3AEFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AF02: FLdPr var_D4
  loc_A3AF05:  = Me.Value
  loc_A3AF0A: FLdRfVar var_E4
  loc_A3AF0D: ConcatVar var_104
  loc_A3AF11: LitVarStr var_114, " AND NumeOrpa = "
  loc_A3AF16: ConcatVar var_124
  loc_A3AF1A: FLdRfVar var_150
  loc_A3AF1D: FLdRfVar var_140
  loc_A3AF20: LitVarStr var_13C, "NumeOrpa"
  loc_A3AF25: PopAdLdVar
  loc_A3AF26: FLdRfVar var_12C
  loc_A3AF29: FLdRfVar var_128
  loc_A3AF2C: FLdPr Me
  loc_A3AF2F: MemLdRfVar from_stack_1.global_52
  loc_A3AF32: NewIfNullPr clsordenpago
  loc_A3AF35: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A3AF3A: FLdPr var_128
  loc_A3AF3D:  = Me.Fields
  loc_A3AF42: FLdPr var_12C
  loc_A3AF45: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AF4A: FLdPr var_140
  loc_A3AF4D:  = Me.Value
  loc_A3AF52: FLdRfVar var_150
  loc_A3AF55: ConcatVar var_160
  loc_A3AF59: LitVarStr var_170, ";"
  loc_A3AF5E: ConcatVar var_180
  loc_A3AF62: CStrVarVal var_184
  loc_A3AF66: FLdPr Me
  loc_A3AF69: MemLdRfVar from_stack_1.global_56
  loc_A3AF6C: NewIfNullPr clscheque
  loc_A3AF6F: Call clscheque.RedefineRS(from_stack_1v)
  loc_A3AF74: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A3AF8F: FFreeAd var_BC = "": var_C0 = "": var_D4 = "": var_128 = "": var_12C = ""
  loc_A3AF9E: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_150 = "": var_160 = ""
  loc_A3AFAF: Branch loc_A3AFF3
  loc_A3AFB2: LitStr "SELECT cheque.*, DetaProv, DetaBanc, MailPers, PainProv, '' FormaPago"
  loc_A3AFB5: LitStr " FROM cheque"
  loc_A3AFB8: ConcatStr
  loc_A3AFB9: FStStrNoPop var_90
  loc_A3AFBC: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = cheque.CucuPers"
  loc_A3AFBF: ConcatStr
  loc_A3AFC0: FStStrNoPop var_94
  loc_A3AFC3: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_A3AFC6: ConcatStr
  loc_A3AFC7: FStStrNoPop var_98
  loc_A3AFCA: LitStr " INNER JOIN banco on banco.PeriInfo = cheque.PeriInfo and banco.CodiBanc = cheque.CodiBanc"
  loc_A3AFCD: ConcatStr
  loc_A3AFCE: FStStrNoPop var_9C
  loc_A3AFD1: LitStr " WHERE cheque.PeriInfo = 0;"
  loc_A3AFD4: ConcatStr
  loc_A3AFD5: FStStrNoPop var_A0
  loc_A3AFD8: FLdPr Me
  loc_A3AFDB: MemLdRfVar from_stack_1.global_56
  loc_A3AFDE: NewIfNullPr clscheque
  loc_A3AFE1: Call clscheque.RedefineRS(from_stack_1v)
  loc_A3AFE6: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A3AFF3: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9CFF2C
  'Data Table: 43BE34
  loc_9CFE40: LitVarStr var_94, vbNullString
  loc_9CFE45: PopAdLdVar
  loc_9CFE46: FLdPr Me
  loc_9CFE49: VCallAd Control_ID_FiltroMsk
  loc_9CFE4C: FStAdFunc var_A8
  loc_9CFE4F: FLdPr var_A8
  loc_9CFE52: LateIdSt
  loc_9CFE57: FFree1Ad var_A8
  loc_9CFE5A: FLdRfVar var_AA
  loc_9CFE5D: FLdPr Me
  loc_9CFE60: VCallAd Control_ID_FiltroCbo
  loc_9CFE63: FStAdFunc var_A8
  loc_9CFE66: FLdPr var_A8
  loc_9CFE69:  = Me.ListIndex
  loc_9CFE6E: FLdI2 var_AA
  loc_9CFE71: FStI2 var_AC
  loc_9CFE74: FFree1Ad var_A8
  loc_9CFE77: FLdI2 var_AC
  loc_9CFE7A: LitI2_Byte 0
  loc_9CFE7C: EqI2
  loc_9CFE7D: BranchF loc_9CFED1
  loc_9CFE80: LitVarStr var_94, "&"
  loc_9CFE85: PopAdLdVar
  loc_9CFE86: FLdPr Me
  loc_9CFE89: VCallAd Control_ID_FiltroMsk
  loc_9CFE8C: FStAdFunc var_A8
  loc_9CFE8F: FLdPr var_A8
  loc_9CFE92: LateIdSt
  loc_9CFE97: FFree1Ad var_A8
  loc_9CFE9A: LitVarStr var_94, "######"
  loc_9CFE9F: PopAdLdVar
  loc_9CFEA0: FLdPr Me
  loc_9CFEA3: VCallAd Control_ID_FiltroMsk
  loc_9CFEA6: FStAdFunc var_A8
  loc_9CFEA9: FLdPr var_A8
  loc_9CFEAC: LateIdSt
  loc_9CFEB1: FFree1Ad var_A8
  loc_9CFEB4: LitStr "NumeOrpa"
  loc_9CFEB7: FStStrCopy var_B0
  loc_9CFEBA: FLdRfVar var_B0
  loc_9CFEBD: FLdPr Me
  loc_9CFEC0: MemLdRfVar from_stack_1.global_52
  loc_9CFEC3: NewIfNullPr clsordenpago
  loc_9CFEC6: Call clsordenpago.Sort(from_stack_1v)
  loc_9CFECB: FFree1Str var_B0
  loc_9CFECE: Branch loc_9CFF28
  loc_9CFED1: FLdI2 var_AC
  loc_9CFED4: LitI2_Byte 1
  loc_9CFED6: EqI2
  loc_9CFED7: BranchF loc_9CFF28
  loc_9CFEDA: LitVarStr var_94, "&"
  loc_9CFEDF: PopAdLdVar
  loc_9CFEE0: FLdPr Me
  loc_9CFEE3: VCallAd Control_ID_FiltroMsk
  loc_9CFEE6: FStAdFunc var_A8
  loc_9CFEE9: FLdPr var_A8
  loc_9CFEEC: LateIdSt
  loc_9CFEF1: FFree1Ad var_A8
  loc_9CFEF4: LitVarStr var_94, vbNullString
  loc_9CFEF9: PopAdLdVar
  loc_9CFEFA: FLdPr Me
  loc_9CFEFD: VCallAd Control_ID_FiltroMsk
  loc_9CFF00: FStAdFunc var_A8
  loc_9CFF03: FLdPr var_A8
  loc_9CFF06: LateIdSt
  loc_9CFF0B: FFree1Ad var_A8
  loc_9CFF0E: LitStr "ExpeImpu"
  loc_9CFF11: FStStrCopy var_B0
  loc_9CFF14: FLdRfVar var_B0
  loc_9CFF17: FLdPr Me
  loc_9CFF1A: MemLdRfVar from_stack_1.global_52
  loc_9CFF1D: NewIfNullPr clsordenpago
  loc_9CFF20: Call clsordenpago.Sort(from_stack_1v)
  loc_9CFF25: FFree1Str var_B0
  loc_9CFF28: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94B828
  'Data Table: 43BE34
  loc_94B814: FLdPr Me
  loc_94B817: VCallAd Control_ID_FiltroMsk
  loc_94B81A: CVarAd
  loc_94B81E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B823: FFree1Var var_94 = ""
  loc_94B826: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4C080
  'Data Table: 43BE34
  loc_A4BDF0: ILdRf Me
  loc_A4BDF3: CastAd
  loc_A4BDF6: FStAdFunc var_88
  loc_A4BDF9: FLdRfVar var_88
  loc_A4BDFC: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4BE01: FFree1Ad var_88
  loc_A4BE04: FLdPr Me
  loc_A4BE07: VCallAd Control_ID_FiltroMsk
  loc_A4BE0A: FStAdFunc var_88
  loc_A4BE0D: FLdPr var_88
  loc_A4BE10: LateIdLdVar var_98 DispID_22 0
  loc_A4BE17: CStrVarTmp
  loc_A4BE18: FStStrNoPop var_9C
  loc_A4BE1B: ImpAdCallI2 Trim$()
  loc_A4BE20: FStStrNoPop var_A0
  loc_A4BE23: LitStr vbNullString
  loc_A4BE26: NeStr
  loc_A4BE28: FFreeStr var_9C = ""
  loc_A4BE2F: FFree1Ad var_88
  loc_A4BE32: FFree1Var var_98 = ""
  loc_A4BE35: BranchF loc_A4BF5F
  loc_A4BE38: FLdRfVar var_A2
  loc_A4BE3B: FLdPr Me
  loc_A4BE3E: VCallAd Control_ID_FiltroCbo
  loc_A4BE41: FStAdFunc var_88
  loc_A4BE44: FLdPr var_88
  loc_A4BE47:  = Me.ListIndex
  loc_A4BE4C: FLdI2 var_A2
  loc_A4BE4F: LitI2_Byte 0
  loc_A4BE51: EqI2
  loc_A4BE52: FFree1Ad var_88
  loc_A4BE55: BranchF loc_A4BEC7
  loc_A4BE58: LitStr "NumeOrpa = "
  loc_A4BE5B: FLdPr Me
  loc_A4BE5E: VCallAd Control_ID_FiltroMsk
  loc_A4BE61: FStAdFunc var_88
  loc_A4BE64: FLdPr var_88
  loc_A4BE67: LateIdLdVar var_98 DispID_22 0
  loc_A4BE6E: CStrVarTmp
  loc_A4BE6F: FStStrNoPop var_9C
  loc_A4BE72: ConcatStr
  loc_A4BE73: PopTmpLdAdStr
  loc_A4BE77: FLdPr Me
  loc_A4BE7A: MemLdRfVar from_stack_1.global_52
  loc_A4BE7D: NewIfNullPr clsordenpago
  loc_A4BE80: Call clsordenpago.Filter(from_stack_1v)
  loc_A4BE85: FFreeStr var_9C = ""
  loc_A4BE8C: FFree1Ad var_88
  loc_A4BE8F: FFree1Var var_98 = ""
  loc_A4BE92: LitStr "Orden de Pago sea igual a: "
  loc_A4BE95: FLdPr Me
  loc_A4BE98: VCallAd Control_ID_FiltroMsk
  loc_A4BE9B: FStAdFunc var_88
  loc_A4BE9E: FLdPr var_88
  loc_A4BEA1: LateIdLdVar var_98 DispID_22 0
  loc_A4BEA8: CStrVarTmp
  loc_A4BEA9: FStStrNoPop var_9C
  loc_A4BEAC: ConcatStr
  loc_A4BEAD: FStStrNoPop var_A0
  loc_A4BEB0: FLdPr Me
  loc_A4BEB3: MemStStrCopy
  loc_A4BEB7: FFreeStr var_9C = ""
  loc_A4BEBE: FFree1Ad var_88
  loc_A4BEC1: FFree1Var var_98 = ""
  loc_A4BEC4: Branch loc_A4BF5C
  loc_A4BEC7: FLdRfVar var_A2
  loc_A4BECA: FLdPr Me
  loc_A4BECD: VCallAd Control_ID_FiltroCbo
  loc_A4BED0: FStAdFunc var_88
  loc_A4BED3: FLdPr var_88
  loc_A4BED6:  = Me.ListIndex
  loc_A4BEDB: FLdI2 var_A2
  loc_A4BEDE: LitI2_Byte 1
  loc_A4BEE0: EqI2
  loc_A4BEE1: FFree1Ad var_88
  loc_A4BEE4: BranchF loc_A4BF5C
  loc_A4BEE7: LitStr "ExpeImpu LIKE '"
  loc_A4BEEA: FLdPr Me
  loc_A4BEED: VCallAd Control_ID_FiltroMsk
  loc_A4BEF0: FStAdFunc var_88
  loc_A4BEF3: FLdPr var_88
  loc_A4BEF6: LateIdLdVar var_98 DispID_22 0
  loc_A4BEFD: CStrVarTmp
  loc_A4BEFE: FStStrNoPop var_9C
  loc_A4BF01: ConcatStr
  loc_A4BF02: FStStrNoPop var_A0
  loc_A4BF05: LitStr Chr(37) & "'"
  loc_A4BF08: ConcatStr
  loc_A4BF09: PopTmpLdAdStr
  loc_A4BF0D: FLdPr Me
  loc_A4BF10: MemLdRfVar from_stack_1.global_52
  loc_A4BF13: NewIfNullPr clsordenpago
  loc_A4BF16: Call clsordenpago.Filter(from_stack_1v)
  loc_A4BF1B: FFreeStr var_9C = "": var_A0 = ""
  loc_A4BF24: FFree1Ad var_88
  loc_A4BF27: FFree1Var var_98 = ""
  loc_A4BF2A: LitStr "Expediente comience con: "
  loc_A4BF2D: FLdPr Me
  loc_A4BF30: VCallAd Control_ID_FiltroMsk
  loc_A4BF33: FStAdFunc var_88
  loc_A4BF36: FLdPr var_88
  loc_A4BF39: LateIdLdVar var_98 DispID_22 0
  loc_A4BF40: CStrVarTmp
  loc_A4BF41: FStStrNoPop var_9C
  loc_A4BF44: ConcatStr
  loc_A4BF45: FStStrNoPop var_A0
  loc_A4BF48: FLdPr Me
  loc_A4BF4B: MemStStrCopy
  loc_A4BF4F: FFreeStr var_9C = ""
  loc_A4BF56: FFree1Ad var_88
  loc_A4BF59: FFree1Var var_98 = ""
  loc_A4BF5C: Branch loc_A4BF83
  loc_A4BF5F: LitStr vbNullString
  loc_A4BF62: FStStrCopy var_9C
  loc_A4BF65: FLdRfVar var_9C
  loc_A4BF68: FLdPr Me
  loc_A4BF6B: MemLdRfVar from_stack_1.global_52
  loc_A4BF6E: NewIfNullPr clsordenpago
  loc_A4BF71: Call clsordenpago.Filter(from_stack_1v)
  loc_A4BF76: FFree1Str var_9C
  loc_A4BF79: LitStr vbNullString
  loc_A4BF7C: FLdPr Me
  loc_A4BF7F: MemStStrCopy
  loc_A4BF83: FLdRfVar var_AC
  loc_A4BF86: FLdPr Me
  loc_A4BF89: MemLdRfVar from_stack_1.global_52
  loc_A4BF8C: NewIfNullPr clsordenpago
  loc_A4BF8F: from_stack_1 = clsordenpago.RecordCount
  loc_A4BF94: ILdRf var_AC
  loc_A4BF97: LitI4 0
  loc_A4BF9C: GtI4
  loc_A4BF9D: BranchF loc_A4C03B
  loc_A4BFA0: FLdPr Me
  loc_A4BFA3: MemLdRfVar from_stack_1.global_52
  loc_A4BFA6: NewIfNullAd
  loc_A4BFA9: FStAd var_B0 
  loc_A4BFAD: FLdRfVar var_B0
  loc_A4BFB0: CVarRef
  loc_A4BFB5: ILdRf Me
  loc_A4BFB8: CastAd
  loc_A4BFBB: FStAdFunc var_88
  loc_A4BFBE: FLdRfVar var_88
  loc_A4BFC1: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4BFC6: ILdRf var_B0
  loc_A4BFC9: CastAd
  loc_A4BFCC: FLdPr Me
  loc_A4BFCF: MemStAdFunc
  loc_A4BFD3: FFreeAd var_88 = ""
  loc_A4BFDA: LitI4 0
  loc_A4BFDF: LitI4 1
  loc_A4BFE4: FLdRfVar var_C4
  loc_A4BFE7: Redim
  loc_A4BFF1: FLdPr Me
  loc_A4BFF4: MemLdRfVar from_stack_1.global_52
  loc_A4BFF7: NewIfNullAd
  loc_A4BFFA: FStAd var_88 
  loc_A4BFFE: FLdRfVar var_88
  loc_A4C001: CVarRef
  loc_A4C006: ParmAry1St
  loc_A4C00C: FLdPr Me
  loc_A4C00F: VCallAd Control_ID_dgdABMS
  loc_A4C012: CVarAd
  loc_A4C016: ParmAry1St
  loc_A4C01C: FLdRfVar var_C4
  loc_A4C01F: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4C024: ILdRf var_88
  loc_A4C027: CastAd
  loc_A4C02A: FLdPr Me
  loc_A4C02D: MemStAdFunc
  loc_A4C031: FLdRfVar var_C4
  loc_A4C034: Erase
  loc_A4C035: FFree1Ad var_88
  loc_A4C038: Branch loc_A4C04F
  loc_A4C03B: ILdRf Me
  loc_A4C03E: CastAd
  loc_A4C041: FStAdFunc var_88
  loc_A4C044: FLdRfVar var_88
  loc_A4C047: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A4C04C: FFree1Ad var_88
  loc_A4C04F: FLdPr Me
  loc_A4C052: VCallAd Control_ID_dgdABMS
  loc_A4C055: FStAdFunc var_B0
  loc_A4C058: LitStr "Orden/es de Pago pendiente/s de Remisión"
  loc_A4C05B: FStStrCopy var_9C
  loc_A4C05E: FLdRfVar var_9C
  loc_A4C061: FLdPr Me
  loc_A4C064: MemLdStr global_68
  loc_A4C067: FLdZeroAd var_B0
  loc_A4C06A: FStAdFunc var_88
  loc_A4C06D: FLdRfVar var_88
  loc_A4C070: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4C075: FFree1Str var_9C
  loc_A4C078: FFreeAd var_88 = ""
  loc_A4C07F: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '944304
  'Data Table: 43BE34
  loc_9442F4: ILdI2 KeyAscii
  loc_9442F7: LitI2_Byte &H27
  loc_9442F9: EqI2
  loc_9442FA: BranchF loc_944302
  loc_9442FD: LitI2_Byte 0
  loc_9442FF: IStI2 KeyAscii
  loc_944302: ExitProcHresult
End Sub

Private Sub FechaMsk_UnknownEvent_0 '94B900
  'Data Table: 43BE34
  loc_94B8EC: FLdPr Me
  loc_94B8EF: VCallAd Control_ID_FechaMsk
  loc_94B8F2: CVarAd
  loc_94B8F6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B8FB: FFree1Var var_94 = ""
  loc_94B8FE: ExitProcHresult
End Sub

Private Sub FechaMsk_UnknownEvent_8 '9DECE8
  'Data Table: 43BE34
  loc_9DEBF0: FLdRfVar var_8A
  loc_9DEBF3: FLdPr Me
  loc_9DEBF6: VCallAd Control_ID_cmdCancelar
  loc_9DEBF9: FStAdFunc var_88
  loc_9DEBFC: FLdPr var_88
  loc_9DEBFF:  = Me.Value
  loc_9DEC04: FLdI2 var_8A
  loc_9DEC07: NotI4
  loc_9DEC08: FLdPr Me
  loc_9DEC0B: VCallAd Control_ID_FechaMsk
  loc_9DEC0E: FStAdFunc var_90
  loc_9DEC11: FLdPr var_90
  loc_9DEC14: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DEC1B: CBoolVar
  loc_9DEC1D: AndI4
  loc_9DEC1E: FFreeAd var_88 = ""
  loc_9DEC25: FFree1Var var_A0 = ""
  loc_9DEC28: BranchF loc_9DECE4
  loc_9DEC2B: FLdPr Me
  loc_9DEC2E: VCallAd Control_ID_FechaMsk
  loc_9DEC31: FStAdFunc var_88
  loc_9DEC34: FLdPr var_88
  loc_9DEC37: LateIdLdVar var_A0 DispID_15 0
  loc_9DEC3E: PopAd
  loc_9DEC40: FLdPr Me
  loc_9DEC43: VCallAd Control_ID_FechaMsk
  loc_9DEC46: FStAdFunc var_90
  loc_9DEC49: FLdPr var_90
  loc_9DEC4C: LateIdLdVar var_B0 DispID_11 -32767
  loc_9DEC53: PopAd
  loc_9DEC55: FLdPr Me
  loc_9DEC58: VCallAd Control_ID_FechaMsk
  loc_9DEC5B: FStAdFunc var_C4
  loc_9DEC5E: LitI2_Byte &HFF
  loc_9DEC60: PopTmpLdAd2 var_8A
  loc_9DEC63: FLdZeroAd var_C4
  loc_9DEC66: FStAdFunc var_BC
  loc_9DEC69: FLdRfVar var_BC
  loc_9DEC6C: FLdRfVar var_B0
  loc_9DEC6F: CStrVarTmp
  loc_9DEC70: FStStrNoPop var_B8
  loc_9DEC73: LitI2_Byte &HFF
  loc_9DEC75: LitI2_Byte &HFF
  loc_9DEC77: FLdRfVar var_A0
  loc_9DEC7A: CStrVarTmp
  loc_9DEC7B: FStStrNoPop var_B4
  loc_9DEC7E: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DEC83: FStStrNoPop var_C0
  loc_9DEC86: FLdPr Me
  loc_9DEC89: MemStStrCopy
  loc_9DEC8D: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DEC96: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DECA1: FFreeVar var_A0 = ""
  loc_9DECA8: FLdPr Me
  loc_9DECAB: VCallAd Control_ID_FechaMsk
  loc_9DECAE: FStAdFunc var_C4
  loc_9DECB1: LitNothing
  loc_9DECB3: CastAd
  loc_9DECB6: FStAdFunc var_BC
  loc_9DECB9: FLdRfVar var_BC
  loc_9DECBC: FLdZeroAd var_C4
  loc_9DECBF: FStAdFuncNoPop
  loc_9DECC2: CastAd
  loc_9DECC5: FStAdFunc var_90
  loc_9DECC8: FLdRfVar var_90
  loc_9DECCB: FLdPr Me
  loc_9DECCE: MemLdRfVar from_stack_1.global_64
  loc_9DECD1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DECD6: IStI2 KeyAscii
  loc_9DECD9: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DECE4: ExitProcHresult
  loc_9DECE5: MemLdI2 global_152
End Sub

Private Sub FechaMsk_KeyPress(KeyAscii As Integer) '98B258
  'Data Table: 43BE34
  loc_98B214: ILdI2 KeyAscii
  loc_98B217: CI4UI1
  loc_98B218: LitI4 &H20
  loc_98B21D: EqI4
  loc_98B21E: BranchF loc_98B254
  loc_98B221: LitVar_Missing var_A4
  loc_98B224: PopAdLdVar
  loc_98B225: LitVarI4
  loc_98B22D: PopAdLdVar
  loc_98B22E: ImpAdLdRf MemVar_C3D9A8
  loc_98B231: NewIfNullPr frmCalendario
  loc_98B234: frmCalendario.Show from_stack_1, from_stack_2
  loc_98B239: ImpAdLdRf MemVar_C3D038
  loc_98B23C: CDargRef
  loc_98B240: FLdPr Me
  loc_98B243: VCallAd Control_ID_FechaMsk
  loc_98B246: FStAdFunc var_A8
  loc_98B249: FLdPr var_A8
  loc_98B24C: LateIdSt
  loc_98B251: FFree1Ad var_A8
  loc_98B254: ExitProcHresult
  loc_98B255: ConcatStr
  loc_98B256: FStStrNoPop var_43C4
End Sub

Private Sub dgdCheque_UnknownEvent_0 '95E904
  'Data Table: 43BE34
  loc_95E8EC: FLdPr Me
  loc_95E8EF: VCallAd Control_ID_dgdCheque
  loc_95E8F2: FStAdFunc var_88
  loc_95E8F5: FLdRfVar var_88
  loc_95E8F8: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95E8FD: FFree1Ad var_88
  loc_95E900: ExitProcHresult
End Sub

Private Sub dgdCheque_UnknownEvent_1 '95E7D4
  'Data Table: 43BE34
  loc_95E7BC: FLdPr Me
  loc_95E7BF: VCallAd Control_ID_dgdCheque
  loc_95E7C2: FStAdFunc var_88
  loc_95E7C5: FLdRfVar var_88
  loc_95E7C8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95E7CD: FFree1Ad var_88
  loc_95E7D0: ExitProcHresult
  loc_95E7D1: FFreeStr var_FFFFFF44 = ""
End Sub

Private Sub dgdCheque_HeadClick(ColIndex As Integer) '99B230
  'Data Table: 43BE34
  loc_99B1D4: FLdRfVar var_B4
  loc_99B1D7: FLdRfVar var_B0
  loc_99B1DA: FLdI2 ColIndex
  loc_99B1DD: CVarI2 var_A8
  loc_99B1E0: PopAdLdVar
  loc_99B1E1: FLdPr Me
  loc_99B1E4: VCallAd Control_ID_dgdCheque
  loc_99B1E7: FStAdFunc var_88
  loc_99B1EA: FLdPr var_88
  loc_99B1ED: LateIdLdVar var_98 DispID_105 0
  loc_99B1F4: CastAdVar Me
  loc_99B1F8: FStAdFunc var_AC
  loc_99B1FB: FLdPr var_AC
  loc_99B1FE: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99B203: FLdPr var_B0
  loc_99B206:  = Me.DataField
  loc_99B20B: FLdZeroAd var_B4
  loc_99B20E: PopTmpLdAdStr
  loc_99B212: FLdPr Me
  loc_99B215: MemLdRfVar from_stack_1.global_56
  loc_99B218: NewIfNullPr clscheque
  loc_99B21B: Call clscheque.Sort(from_stack_1v)
  loc_99B220: FFree1Str var_B8
  loc_99B223: FFreeAd var_88 = "": var_AC = ""
  loc_99B22C: FFree1Var var_98 = ""
  loc_99B22F: ExitProcHresult
End Sub

Private Sub DetaOrpaTxt_GotFocus() '94BAF8
  'Data Table: 43BE34
  loc_94BAE4: FLdPrThis
  loc_94BAE5: VCallAd Control_ID_DetaOrpaTxt
  loc_94BAE8: CVarAd
  loc_94BAEC: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BAF1: FFree1Var var_94 = ""
  loc_94BAF4: ExitProcHresult
End Sub

Private Sub DetaOrpaTxt_Validate(Cancel As Boolean) '9C1114
  'Data Table: 43BE34
  loc_9C1058: FLdRfVar var_8A
  loc_9C105B: FLdPr Me
  loc_9C105E: VCallAd Control_ID_cmdCancelar
  loc_9C1061: FStAdFunc var_88
  loc_9C1064: FLdPr var_88
  loc_9C1067:  = Me.Value
  loc_9C106C: FLdI2 var_8A
  loc_9C106F: NotI4
  loc_9C1070: FLdRfVar var_92
  loc_9C1073: FLdPr Me
  loc_9C1076: VCallAd Control_ID_DetaOrpaTxt
  loc_9C1079: FStAdFunc var_90
  loc_9C107C: FLdPr var_90
  loc_9C107F:  = Me.Enabled
  loc_9C1084: FLdI2 var_92
  loc_9C1087: AndI4
  loc_9C1088: FFreeAd var_88 = ""
  loc_9C108F: BranchF loc_9C1110
  loc_9C1092: FLdRfVar var_98
  loc_9C1095: FLdPr Me
  loc_9C1098: VCallAd Control_ID_DetaOrpaTxt
  loc_9C109B: FStAdFunc var_88
  loc_9C109E: FLdPr var_88
  loc_9C10A1:  = Me.Text
  loc_9C10A6: LitI2_Byte 0
  loc_9C10A8: PopTmpLdAd2 var_9A
  loc_9C10AB: LitI2_Byte 0
  loc_9C10AD: PopTmpLdAd2 var_92
  loc_9C10B0: LitI2_Byte 0
  loc_9C10B2: PopTmpLdAd2 var_8A
  loc_9C10B5: ILdRf var_98
  loc_9C10B8: LitStr "Detalle O.P."
  loc_9C10BB: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C10C0: FStStrNoPop var_A0
  loc_9C10C3: FLdPr Me
  loc_9C10C6: MemStStrCopy
  loc_9C10CA: FFreeStr var_98 = ""
  loc_9C10D1: FFree1Ad var_88
  loc_9C10D4: FLdPr Me
  loc_9C10D7: VCallAd Control_ID_DetaOrpaTxt
  loc_9C10DA: FStAdFunc var_A8
  loc_9C10DD: LitNothing
  loc_9C10DF: CastAd
  loc_9C10E2: FStAdFunc var_A4
  loc_9C10E5: FLdRfVar var_A4
  loc_9C10E8: FLdZeroAd var_A8
  loc_9C10EB: FStAdFuncNoPop
  loc_9C10EE: CastAd
  loc_9C10F1: FStAdFunc var_90
  loc_9C10F4: FLdRfVar var_90
  loc_9C10F7: FLdPr Me
  loc_9C10FA: MemLdRfVar from_stack_1.global_64
  loc_9C10FD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C1102: IStI2 Cancel
  loc_9C1105: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C1110: ExitProcHresult
  loc_9C1111: Ary1StI4
  loc_9C1112: CRec2Uni var_4400
End Sub

Private Sub Form_Load() 'A2A0B4
  'Data Table: 43BE34
  loc_A29EFC: ImpAdLdI2 MemVar_C3D064
  loc_A29EFF: LitI2 2025
  loc_A29F02: LeI2
  loc_A29F03: BranchF loc_A29F23
  loc_A29F06: LitVarI4
  loc_A29F0E: PopAdLdVar
  loc_A29F0F: FLdPr Me
  loc_A29F12: VCallAd Control_ID_dgdABMS
  loc_A29F15: FStAdFunc var_A8
  loc_A29F18: FLdPr var_A8
  loc_A29F1B: LateIdSt
  loc_A29F20: FFree1Ad var_A8
  loc_A29F23: LitI2_Byte 0
  loc_A29F25: CR8I2
  loc_A29F26: PopFPR4
  loc_A29F27: FLdPr Me
  loc_A29F2A: Me.Left = from_stack_1s
  loc_A29F2F: LitI2_Byte 0
  loc_A29F31: CR8I2
  loc_A29F32: PopFPR4
  loc_A29F33: FLdPr Me
  loc_A29F36: Me.Top = from_stack_1s
  loc_A29F3B: LitStr vbNullString
  loc_A29F3E: FLdPr Me
  loc_A29F41: MemStStrCopy
  loc_A29F45: LitStr "SELECT op.*"
  loc_A29F48: LitStr ", (SELECT IFNULL(GROUP_CONCAT(DISTINCT CodiPart),'') FROM imputacion i USE INDEX (idximpu_02) WHERE i.PeriInfo = op.PeriInfo AND i.ExpeImpu = op.ExpeImpu AND i.NumeLiqu = op.NumeLiqu AND i.MapaImpu != 0) CodiPart"
  loc_A29F4B: ConcatStr
  loc_A29F4C: FStStrNoPop var_AC
  loc_A29F4F: LitStr ", (SELECT IFNULL(SUM(ImpoCheq),0) FROM cheque ch WHERE ch.PeriInfo = op.PeriInfo AND ch.NumeOrpa = op.NumeOrpa AND ch.FeanCheq IS NULL) TotalCh"
  loc_A29F52: ConcatStr
  loc_A29F53: FStStrNoPop var_B0
  loc_A29F56: LitStr " FROM ordenpago op"
  loc_A29F59: ConcatStr
  loc_A29F5A: FStStrNoPop var_B4
  loc_A29F5D: LitStr " WHERE op.PeriInfo = "
  loc_A29F60: ConcatStr
  loc_A29F61: FStStrNoPop var_B8
  loc_A29F64: ImpAdLdI2 MemVar_C3D064
  loc_A29F67: CStrUI1
  loc_A29F69: FStStrNoPop var_BC
  loc_A29F6C: ConcatStr
  loc_A29F6D: FStStrNoPop var_C0
  loc_A29F70: LitStr " AND FeanOrpa IS NULL AND FereOrpa IS NULL"
  loc_A29F73: ConcatStr
  loc_A29F74: FStStrNoPop var_C4
  loc_A29F77: LitStr " ORDER BY op.NumeOrpa;"
  loc_A29F7A: ConcatStr
  loc_A29F7B: FStStrNoPop var_C8
  loc_A29F7E: FLdPr Me
  loc_A29F81: MemLdRfVar from_stack_1.global_52
  loc_A29F84: NewIfNullPr clsordenpago
  loc_A29F87: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_A29F8C: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_A29F9F: LitVarI2 var_94, 0
  loc_A29FA4: PopAdLdVar
  loc_A29FA5: LitStr "Orden de Pago"
  loc_A29FA8: FLdPr Me
  loc_A29FAB: VCallAd Control_ID_FiltroCbo
  loc_A29FAE: FStAdFunc var_A8
  loc_A29FB1: FLdPr var_A8
  loc_A29FB4: Me.AddItem from_stack_1, from_stack_2
  loc_A29FB9: FFree1Ad var_A8
  loc_A29FBC: LitVarI2 var_94, 1
  loc_A29FC1: PopAdLdVar
  loc_A29FC2: LitStr "Expediente"
  loc_A29FC5: FLdPr Me
  loc_A29FC8: VCallAd Control_ID_FiltroCbo
  loc_A29FCB: FStAdFunc var_A8
  loc_A29FCE: FLdPr var_A8
  loc_A29FD1: Me.AddItem from_stack_1, from_stack_2
  loc_A29FD6: FFree1Ad var_A8
  loc_A29FD9: LitI2_Byte 0
  loc_A29FDB: FLdPr Me
  loc_A29FDE: VCallAd Control_ID_FiltroCbo
  loc_A29FE1: FStAdFunc var_A8
  loc_A29FE4: FLdPr var_A8
  loc_A29FE7: Me.ListIndex = from_stack_1
  loc_A29FEC: FFree1Ad var_A8
  loc_A29FEF: Call cmdCancelar_Click()
  loc_A29FF4: LitI4 0
  loc_A29FF9: LitI4 1
  loc_A29FFE: FLdRfVar var_CC
  loc_A2A001: Redim
  loc_A2A00B: FLdPr Me
  loc_A2A00E: MemLdRfVar from_stack_1.global_52
  loc_A2A011: NewIfNullAd
  loc_A2A014: FStAd var_A8 
  loc_A2A018: FLdRfVar var_A8
  loc_A2A01B: CVarRef
  loc_A2A020: ParmAry1St
  loc_A2A026: FLdPr Me
  loc_A2A029: VCallAd Control_ID_dgdABMS
  loc_A2A02C: CVarAd
  loc_A2A030: ParmAry1St
  loc_A2A036: FLdRfVar var_CC
  loc_A2A039: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A2A03E: ILdRf var_A8
  loc_A2A041: CastAd
  loc_A2A044: FLdPr Me
  loc_A2A047: MemStAdFunc
  loc_A2A04B: FLdRfVar var_CC
  loc_A2A04E: Erase
  loc_A2A04F: FFree1Ad var_A8
  loc_A2A052: LitI4 0
  loc_A2A057: LitI4 1
  loc_A2A05C: FLdRfVar var_CC
  loc_A2A05F: Redim
  loc_A2A069: FLdPr Me
  loc_A2A06C: MemLdRfVar from_stack_1.global_56
  loc_A2A06F: NewIfNullAd
  loc_A2A072: FStAd var_A8 
  loc_A2A076: FLdRfVar var_A8
  loc_A2A079: CVarRef
  loc_A2A07E: ParmAry1St
  loc_A2A084: FLdPr Me
  loc_A2A087: VCallAd Control_ID_dgdCheque
  loc_A2A08A: CVarAd
  loc_A2A08E: ParmAry1St
  loc_A2A094: FLdRfVar var_CC
  loc_A2A097: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A2A09C: ILdRf var_A8
  loc_A2A09F: CastAd
  loc_A2A0A2: FLdPr Me
  loc_A2A0A5: MemStAdFunc
  loc_A2A0A9: FLdRfVar var_CC
  loc_A2A0AC: Erase
  loc_A2A0AD: FFree1Ad var_A8
  loc_A2A0B0: ExitProcHresult
  loc_A2A0B1: FLdPr arg_600
End Sub

Private Sub Form_Activate() '99D1F4
  'Data Table: 43BE34
  loc_99D190: FLdRfVar var_C2
  loc_99D193: FLdRfVar var_C0
  loc_99D196: LitVarI2 var_B8, 1
  loc_99D19B: FLdPr Me
  loc_99D19E: VCallAd Control_ID_tlbABMS
  loc_99D1A1: FStAdFunc var_88
  loc_99D1A4: FLdPr var_88
  loc_99D1A7: LateIdLdVar var_98 DispID_3 0
  loc_99D1AE: CastAdVar Me
  loc_99D1B2: FStAdFunc var_BC
  loc_99D1B5: FLdPr var_BC
  loc_99D1B8:  = Me.Buttons.ControlDefault
  loc_99D1BD: FLdPr var_C0
  loc_99D1C0:  = Me.Enabled
  loc_99D1C5: FLdI2 var_C2
  loc_99D1C8: FFreeAd var_88 = "": var_BC = ""
  loc_99D1D1: FFreeVar var_98 = ""
  loc_99D1D8: BranchF loc_99D1F0
  loc_99D1DB: LitI4 0
  loc_99D1E0: LitI2_Byte 0
  loc_99D1E2: FLdPr Me
  loc_99D1E5: MemLdRfVar from_stack_1.global_52
  loc_99D1E8: NewIfNullPr clsordenpago
  loc_99D1EB: Call clsordenpago.Encontrar(from_stack_1v, from_stack_2v)
  loc_99D1F0: ExitProcHresult
  loc_99D1F1: AddR8
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '93FDF4
  'Data Table: 43BE34
  loc_93FDF0: ExitProcHresult
  loc_93FDF1: FLdPr arg_600
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95E0B4
  'Data Table: 43BE34
  loc_95E09C: ILdI2 KeyCode
  loc_95E09F: ILdRf Me
  loc_95E0A2: CastAd
  loc_95E0A5: FStAdFunc var_88
  loc_95E0A8: FLdRfVar var_88
  loc_95E0AB: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_95E0B0: FFree1Ad var_88
  loc_95E0B3: ExitProcHresult
End Sub
