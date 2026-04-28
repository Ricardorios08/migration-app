VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgOrdenesdePagoReservadas
  Caption = "Órdenes de Pago Reservadas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 375
  ClientWidth = 14430
  ClientHeight = 5190
  StartUpPosition = 2 'CenterScreen
  Begin VB.CommandButton cmdCancelar
    Caption = "Cancelar"
    Left = 5520
    Top = 4440
    Width = 2895
    Height = 495
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
  End
  Begin VB.CommandButton cmdAceptar
    Caption = "Aceptar"
    Left = 2040
    Top = 4440
    Width = 2895
    Height = 495
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 240
    Top = 240
    Width = 14055
    Height = 3975
    TabIndex = 0
    OleObjectBlob = "dlgOrdenesdePagoReservadas.frx":0000
  End
End

Attribute VB_Name = "dlgOrdenesdePagoReservadas"

Public OrdenPagoCLS As New Class
Public boAceptar As Boolean


Private Sub cmdAceptar_Click() '96CA00
  'Data Table: 40F0A4
  loc_96C9E0: LitI2_Byte &HFF
  loc_96C9E2: FLdPr Me
  loc_96C9E5: MemStI2 boAceptar
  loc_96C9E8: ILdRf Me
  loc_96C9EB: FStAdNoPop
  loc_96C9EF: ImpAdLdRf MemVar_C44F9C
  loc_96C9F2: NewIfNullPr Me
  loc_96C9F5: Me.Global.Unload from_stack_1
  loc_96C9FA: FFree1Ad var_88
  loc_96C9FD: ExitProcHresult
End Sub

Private Sub Form_Load() '9B9C9C
  'Data Table: 40F0A4
  loc_9B9BFC: LitStr "SELECT *"
  loc_9B9BFF: LitStr " FROM ordenpago"
  loc_9B9C02: ConcatStr
  loc_9B9C03: FStStrNoPop var_88
  loc_9B9C06: LitStr " WHERE PeriInfo = "
  loc_9B9C09: ConcatStr
  loc_9B9C0A: FStStrNoPop var_8C
  loc_9B9C0D: ImpAdLdI2 MemVar_C3D064
  loc_9B9C10: CStrUI1
  loc_9B9C12: FStStrNoPop var_90
  loc_9B9C15: ConcatStr
  loc_9B9C16: FStStrNoPop var_94
  loc_9B9C19: LitStr " AND TipoOrpa = 'Reservada' AND FeanOrpa IS NULL;"
  loc_9B9C1C: ConcatStr
  loc_9B9C1D: FStStrNoPop var_98
  loc_9B9C20: FLdPr Me
  loc_9B9C23: MemLdRfVar from_stack_1.OrdenPagoCLS
  loc_9B9C26: NewIfNullPr clsordenpago
  loc_9B9C29: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_9B9C2E: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_9B9C3B: LitI4 0
  loc_9B9C40: LitI4 1
  loc_9B9C45: FLdRfVar var_9C
  loc_9B9C48: Redim
  loc_9B9C52: FLdPr Me
  loc_9B9C55: MemLdRfVar from_stack_1.OrdenPagoCLS
  loc_9B9C58: NewIfNullAd
  loc_9B9C5B: FStAd var_A0 
  loc_9B9C5F: FLdRfVar var_A0
  loc_9B9C62: CVarRef
  loc_9B9C67: ParmAry1St
  loc_9B9C6D: FLdPr Me
  loc_9B9C70: VCallAd Control_ID_dgdABMS
  loc_9B9C73: CVarAd
  loc_9B9C77: ParmAry1St
  loc_9B9C7D: FLdRfVar var_9C
  loc_9B9C80: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9B9C85: ILdRf var_A0
  loc_9B9C88: CastAd
  loc_9B9C8B: FLdPr Me
  loc_9B9C8E: MemStAdFunc
  loc_9B9C92: FLdRfVar var_9C
  loc_9B9C95: Erase
  loc_9B9C96: FFree1Ad var_A0
  loc_9B9C99: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '954EF0
  'Data Table: 40F0A4
  loc_954ED8: ILdRf Me
  loc_954EDB: FStAdNoPop
  loc_954EDF: ImpAdLdRf MemVar_C44F9C
  loc_954EE2: NewIfNullPr Me
  loc_954EE5: Me.Global.Unload from_stack_1
  loc_954EEA: FFree1Ad var_88
  loc_954EED: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '96CAA8
  'Data Table: 40F0A4
  loc_96CA88: LitI2_Byte 0
  loc_96CA8A: FLdPr Me
  loc_96CA8D: MemStI2 boAceptar
  loc_96CA90: ILdRf Me
  loc_96CA93: FStAdNoPop
  loc_96CA97: ImpAdLdRf MemVar_C44F9C
  loc_96CA9A: NewIfNullPr Me
  loc_96CA9D: Me.Global.Unload from_stack_1
  loc_96CAA2: FFree1Ad var_88
  loc_96CAA5: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '954C44
  'Data Table: 40F0A4
  loc_954C2C: FLdPr Me
  loc_954C2F: VCallAd Control_ID_dgdABMS
  loc_954C32: FStAdFunc var_88
  loc_954C35: FLdRfVar var_88
  loc_954C38: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_954C3D: FFree1Ad var_88
  loc_954C40: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '953D6C
  'Data Table: 40F0A4
  loc_953D54: FLdPr Me
  loc_953D57: VCallAd Control_ID_dgdABMS
  loc_953D5A: FStAdFunc var_88
  loc_953D5D: FLdRfVar var_88
  loc_953D60: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_953D65: FFree1Ad var_88
  loc_953D68: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '954A7C
  'Data Table: 40F0A4
  loc_954A64: ILdRf Me
  loc_954A67: FStAdNoPop
  loc_954A6B: ImpAdLdRf MemVar_C44F9C
  loc_954A6E: NewIfNullPr Me
  loc_954A71: Me.Global.Unload from_stack_1
  loc_954A76: FFree1Ad var_88
  loc_954A79: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A9DC
  'Data Table: 40F0A4
  loc_99A980: FLdRfVar var_B4
  loc_99A983: FLdRfVar var_B0
  loc_99A986: FLdI2 ColIndex
  loc_99A989: CVarI2 var_A8
  loc_99A98C: PopAdLdVar
  loc_99A98D: FLdPr Me
  loc_99A990: VCallAd Control_ID_dgdABMS
  loc_99A993: FStAdFunc var_88
  loc_99A996: FLdPr var_88
  loc_99A999: LateIdLdVar var_98 DispID_105 0
  loc_99A9A0: CastAdVar Me
  loc_99A9A4: FStAdFunc var_AC
  loc_99A9A7: FLdPr var_AC
  loc_99A9AA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A9AF: FLdPr var_B0
  loc_99A9B2:  = Me.DataField
  loc_99A9B7: FLdZeroAd var_B4
  loc_99A9BA: PopTmpLdAdStr
  loc_99A9BE: FLdPr Me
  loc_99A9C1: MemLdRfVar from_stack_1.OrdenPagoCLS
  loc_99A9C4: NewIfNullPr clsordenpago
  loc_99A9C7: Call clsordenpago.Sort(from_stack_1v)
  loc_99A9CC: FFree1Str var_B8
  loc_99A9CF: FFreeAd var_88 = "": var_AC = ""
  loc_99A9D8: FFree1Var var_98 = ""
  loc_99A9DB: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '96DC58
  'Data Table: 40F0A4
  loc_96DC34: ILdI2 KeyCode
  loc_96DC37: CI4UI1
  loc_96DC38: LitI4 &HD
  loc_96DC3D: EqI4
  loc_96DC3E: BranchF loc_96DC56
  loc_96DC41: ILdRf Me
  loc_96DC44: FStAdNoPop
  loc_96DC48: ImpAdLdRf MemVar_C44F9C
  loc_96DC4B: NewIfNullPr Me
  loc_96DC4E: Me.Global.Unload from_stack_1
  loc_96DC53: FFree1Ad var_88
  loc_96DC56: ExitProcHresult
End Sub

Public Function global_4255908Get() '40F3E4
  global_4255908Get = global_4255908
End Function

Public Sub global_4255908Put(Value) '40F3FE
  global_4255908 = Value
End Sub

Public Sub global_4255908Set(Value) '40F418
  global_4255908 = Value
End Sub

Public Function boAceptarGet() '40F432
  boAceptarGet = boAceptar
End Function

Public Sub boAceptarPut(Value) '40F441
  boAceptar = Value
End Sub
