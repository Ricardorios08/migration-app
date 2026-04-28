VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmAdministraciondeBalances
  Caption = "Administración de Balances"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmAdministraciondeBalances.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15090
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
  Begin VB.Frame Frame1
    Caption = "Asientos provisorios:"
    Left = 120
    Top = 720
    Width = 14415
    Height = 7935
    TabIndex = 0
    Begin MSDataGridLib.DataGrid dgdABMS
      Left = 120
      Top = 480
      Width = 14175
      Height = 7095
      TabIndex = 1
      OleObjectBlob = "frmAdministraciondeBalances.frx":08CA
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 2400
      Top = 0
      Width = 11895
      Height = 495
      Visible = 0   'False
      TabIndex = 4
      OleObjectBlob = "frmAdministraciondeBalances.frx":0CC4
    End
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmAdministraciondeBalances.frx":0D2C
    Left = 14760
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15090
    Height = 660
    TabIndex = 2
    OleObjectBlob = "frmAdministraciondeBalances.frx":88AA
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 3
      TabStop = 0   'False
      Picture = "frmAdministraciondeBalances.frx":8E06
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label Label1
    Caption = "..."
    Left = 12600
    Top = 8880
    Width = 1815
    Height = 255
    TabIndex = 5
  End
End

Attribute VB_Name = "frmAdministraciondeBalances"


Private Sub dgdABMS_UnknownEvent_0 '956C08
  'Data Table: 4186A8
  loc_956BF0: FLdPr Me
  loc_956BF3: VCallAd Control_ID_dgdABMS
  loc_956BF6: FStAdFunc var_88
  loc_956BF9: FLdRfVar var_88
  loc_956BFC: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_956C01: FFree1Ad var_88
  loc_956C04: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '956CEC
  'Data Table: 4186A8
  loc_956CD4: FLdPr Me
  loc_956CD7: VCallAd Control_ID_dgdABMS
  loc_956CDA: FStAdFunc var_88
  loc_956CDD: FLdRfVar var_88
  loc_956CE0: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_956CE5: FFree1Ad var_88
  loc_956CE8: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99B2D4
  'Data Table: 4186A8
  loc_99B278: FLdRfVar var_B4
  loc_99B27B: FLdRfVar var_B0
  loc_99B27E: FLdI2 ColIndex
  loc_99B281: CVarI2 var_A8
  loc_99B284: PopAdLdVar
  loc_99B285: FLdPr Me
  loc_99B288: VCallAd Control_ID_dgdABMS
  loc_99B28B: FStAdFunc var_88
  loc_99B28E: FLdPr var_88
  loc_99B291: LateIdLdVar var_98 DispID_105 0
  loc_99B298: CastAdVar Me
  loc_99B29C: FStAdFunc var_AC
  loc_99B29F: FLdPr var_AC
  loc_99B2A2: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99B2A7: FLdPr var_B0
  loc_99B2AA:  = Me.DataField
  loc_99B2AF: FLdZeroAd var_B4
  loc_99B2B2: PopTmpLdAdStr
  loc_99B2B6: FLdPr Me
  loc_99B2B9: MemLdRfVar from_stack_1.global_52
  loc_99B2BC: NewIfNullPr clsasiento
  loc_99B2BF: Call clsasiento.Sort(from_stack_1v)
  loc_99B2C4: FFree1Str var_B8
  loc_99B2C7: FFreeAd var_88 = "": var_AC = ""
  loc_99B2D0: FFree1Var var_98 = ""
  loc_99B2D3: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'A83F4C
  'Data Table: 4186A8
  loc_A83B44: ILdRf Button
  loc_A83B47: FStAd var_88 
  loc_A83B4B: FLdRfVar var_94
  loc_A83B4E: FLdPr var_88
  loc_A83B51:  = Me.Key
  loc_A83B56: FLdZeroAd var_94
  loc_A83B59: FStStr var_98
  loc_A83B5C: ILdRf var_98
  loc_A83B5F: LitStr "btnCrear"
  loc_A83B62: EqStr
  loc_A83B64: BranchF loc_A83D2C
  loc_A83B67: FLdPr Me
  loc_A83B6A: MemLdRfVar from_stack_1.global_52
  loc_A83B6D: NewIfNullAd
  loc_A83B70: FStAd var_9C 
  loc_A83B74: ImpAdLdI2 MemVar_C3D064
  loc_A83B77: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A83B7C: FStStr var_8C
  loc_A83B7F: FLdRfVar var_A0
  loc_A83B82: FLdPr var_9C
  loc_A83B85: from_stack_1 = clsasiento.RecordCount
  loc_A83B8A: ILdRf var_A0
  loc_A83B8D: LitI4 0
  loc_A83B92: GtI4
  loc_A83B93: BranchF loc_A83D23
  loc_A83B96: FLdRfVar var_94
  loc_A83B99: ILdRf var_8C
  loc_A83B9C: ImpAdLdI2 MemVar_C3D064
  loc_A83B9F: FLdPr Me
  loc_A83BA2: MemLdRfVar from_stack_1.global_52
  loc_A83BA5: NewIfNullPr clsasiento
  loc_A83BA8: from_stack_3v = clsasiento.ControlesMensuales(from_stack_1v, from_stack_2v)
  loc_A83BAD: ILdRf var_94
  loc_A83BB0: FLdPr Me
  loc_A83BB3: MemStStrCopy
  loc_A83BB7: FFree1Str var_94
  loc_A83BBA: FLdPr Me
  loc_A83BBD: MemLdStr global_60
  loc_A83BC0: LitStr vbNullString
  loc_A83BC3: NeStr
  loc_A83BC5: BranchF loc_A83C39
  loc_A83BC8: ImpAdLdI4 MemVar_C3D03C
  loc_A83BCB: LitStr "root"
  loc_A83BCE: EqStr
  loc_A83BD0: BranchF loc_A83C29
  loc_A83BD3: LitStr "Advertencia: "
  loc_A83BD6: FLdPr Me
  loc_A83BD9: MemLdStr global_60
  loc_A83BDC: ConcatStr
  loc_A83BDD: FStStrNoPop var_94
  loc_A83BE0: FLdPr Me
  loc_A83BE3: MemStStrCopy
  loc_A83BE7: FFree1Str var_94
  loc_A83BEA: FLdPr Me
  loc_A83BED: VCallAd Control_ID_Frame1
  loc_A83BF0: FStAdFunc var_B0
  loc_A83BF3: LitNothing
  loc_A83BF5: CastAd
  loc_A83BF8: FStAdFunc var_AC
  loc_A83BFB: FLdRfVar var_AC
  loc_A83BFE: FLdZeroAd var_B0
  loc_A83C01: FStAdFuncNoPop
  loc_A83C04: CastAd
  loc_A83C07: FStAdFunc var_A8
  loc_A83C0A: FLdRfVar var_A8
  loc_A83C0D: FLdPr Me
  loc_A83C10: MemLdRfVar from_stack_1.global_60
  loc_A83C13: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A83C18: FStI2 var_8E
  loc_A83C1B: FFreeAd var_A4 = "": var_A8 = "": var_AC = ""
  loc_A83C26: Branch loc_A83C39
  loc_A83C29: LitI4 0
  loc_A83C2E: FLdPr Me
  loc_A83C31: MemLdStr global_60
  loc_A83C34: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A83C39: FLdPr Me
  loc_A83C3C: MemLdStr global_60
  loc_A83C3F: LitStr vbNullString
  loc_A83C42: EqStr
  loc_A83C44: BranchF loc_A83D23
  loc_A83C47: LitI2_Byte 0
  loc_A83C49: PopTmpLdAd2 var_B4
  loc_A83C4C: LitI2_Byte &HFF
  loc_A83C4E: PopTmpLdAd2 var_B2
  loc_A83C51: LitStr "¿Contabiliza Definitivamente los asientos ?"
  loc_A83C54: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_A83C59: CI4UI1
  loc_A83C5A: LitI4 6
  loc_A83C5F: EqI4
  loc_A83C60: BranchF loc_A83D23
  loc_A83C63: LitI4 &HB
  loc_A83C68: CI2I4
  loc_A83C69: FLdPr Me
  loc_A83C6C: Me.MousePointer = from_stack_1
  loc_A83C71: LitVar_FALSE
  loc_A83C75: PopAdLdVar
  loc_A83C76: FLdPr Me
  loc_A83C79: VCallAd Control_ID_tlbABMS
  loc_A83C7C: FStAdFunc var_A4
  loc_A83C7F: FLdPr var_A4
  loc_A83C82: LateIdSt
  loc_A83C87: FFree1Ad var_A4
  loc_A83C8A: ImpAdLdI2 MemVar_C3D064
  loc_A83C8D: FLdPr var_9C
  loc_A83C90: Call clsasiento.ReordenarAsientos(from_stack_1v)
  loc_A83C95: LitI4 0
  loc_A83C9A: LitStr "Espere ... este proceso demora unos minutos ..."
  loc_A83C9D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A83CA2: LitVar_TRUE var_C4
  loc_A83CA5: PopAdLdVar
  loc_A83CA6: FLdPr Me
  loc_A83CA9: VCallAd Control_ID_ProgressBar
  loc_A83CAC: FStAdFunc var_A4
  loc_A83CAF: FLdPr var_A4
  loc_A83CB2: LateIdSt
  loc_A83CB7: FFree1Ad var_A4
  loc_A83CBA: ILdRf Me
  loc_A83CBD: CastAd
  loc_A83CC0: FStAdFunc var_A4
  loc_A83CC3: FLdRfVar var_A4
  loc_A83CC6: ImpAdLdI2 MemVar_C3D064
  loc_A83CC9: FLdPr var_9C
  loc_A83CCC: Call clsasiento.ReordenarImputaciones(from_stack_1v, from_stack_2v)
  loc_A83CD1: FFree1Ad var_A4
  loc_A83CD4: LitVar_FALSE
  loc_A83CD8: PopAdLdVar
  loc_A83CD9: FLdPr Me
  loc_A83CDC: VCallAd Control_ID_ProgressBar
  loc_A83CDF: FStAdFunc var_A4
  loc_A83CE2: FLdPr var_A4
  loc_A83CE5: LateIdSt
  loc_A83CEA: FFree1Ad var_A4
  loc_A83CED: FLdPr var_9C
  loc_A83CF0: Call clsasiento.IncrementaFedePaco()
  loc_A83CF5: FLdPr var_9C
  loc_A83CF8: Call clsasiento.Requery()
  loc_A83CFD: LitVar_TRUE var_C4
  loc_A83D00: PopAdLdVar
  loc_A83D01: FLdPr Me
  loc_A83D04: VCallAd Control_ID_tlbABMS
  loc_A83D07: FStAdFunc var_A4
  loc_A83D0A: FLdPr var_A4
  loc_A83D0D: LateIdSt
  loc_A83D12: FFree1Ad var_A4
  loc_A83D15: LitI4 0
  loc_A83D1A: CI2I4
  loc_A83D1B: FLdPr Me
  loc_A83D1E: Me.MousePointer = from_stack_1
  loc_A83D23: LitNothing
  loc_A83D25: FStAd var_9C 
  loc_A83D29: Branch loc_A83F4B
  loc_A83D2C: ILdRf var_98
  loc_A83D2F: LitStr "btnModificar"
  loc_A83D32: EqStr
  loc_A83D34: BranchF loc_A83D7A
  loc_A83D37: LitI2_Byte 0
  loc_A83D39: PopTmpLdAd2 var_B4
  loc_A83D3C: LitI2_Byte &HFF
  loc_A83D3E: PopTmpLdAd2 var_B2
  loc_A83D41: LitStr "¿Reordena la numeración de los Asientos Contables?"
  loc_A83D44: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_A83D49: CI4UI1
  loc_A83D4A: LitI4 6
  loc_A83D4F: EqI4
  loc_A83D50: BranchF loc_A83D77
  loc_A83D53: ImpAdLdI2 MemVar_C3D064
  loc_A83D56: FLdPr Me
  loc_A83D59: MemLdRfVar from_stack_1.global_52
  loc_A83D5C: NewIfNullPr clsasiento
  loc_A83D5F: Call clsasiento.ReordenarAsientos(from_stack_1v)
  loc_A83D64: FLdPr Me
  loc_A83D67: MemLdRfVar from_stack_1.global_52
  loc_A83D6A: NewIfNullPr clsasiento
  loc_A83D6D: Call clsasiento.Requery()
  loc_A83D72: Call cmdCancelar_Click()
  loc_A83D77: Branch loc_A83F4B
  loc_A83D7A: ILdRf var_98
  loc_A83D7D: LitStr "btnEliminar"
  loc_A83D80: EqStr
  loc_A83D82: BranchF loc_A83E12
  loc_A83D85: FLdPr Me
  loc_A83D88: MemLdRfVar from_stack_1.global_52
  loc_A83D8B: NewIfNullAd
  loc_A83D8E: FStAd var_D8 
  loc_A83D92: ImpAdLdI2 MemVar_C3D064
  loc_A83D95: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A83D9A: FStStr var_8C
  loc_A83D9D: LitI2_Byte 0
  loc_A83D9F: PopTmpLdAd2 var_B4
  loc_A83DA2: LitI2_Byte &HFF
  loc_A83DA4: PopTmpLdAd2 var_B2
  loc_A83DA7: LitVarStr var_C4, "¿Elimina los Asientos Automáticos a partir de: "
  loc_A83DAC: ILdRf var_8C
  loc_A83DAF: CDateStr
  loc_A83DB1: LitI2_Byte 1
  loc_A83DB3: CR8I2
  loc_A83DB4: AddR8
  loc_A83DB5: CDateR8
  loc_A83DB6: CVarDate var_D4
  loc_A83DBA: ConcatVar var_E8
  loc_A83DBE: LitVarStr var_F8, " y abre los Subdiarios?"
  loc_A83DC3: ConcatVar var_108
  loc_A83DC7: CStrVarVal var_94
  loc_A83DCB: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_A83DD0: CI4UI1
  loc_A83DD1: LitI4 6
  loc_A83DD6: EqI4
  loc_A83DD7: FFree1Str var_94
  loc_A83DDA: FFreeVar var_E8 = ""
  loc_A83DE1: BranchF loc_A83E09
  loc_A83DE4: ILdRf var_8C
  loc_A83DE7: CDateStr
  loc_A83DE9: LitI2_Byte 1
  loc_A83DEB: CR8I2
  loc_A83DEC: AddR8
  loc_A83DED: CDateR8
  loc_A83DEE: CStrDate
  loc_A83DF0: FStStrNoPop var_94
  loc_A83DF3: ImpAdLdI2 MemVar_C3D064
  loc_A83DF6: FLdPr var_D8
  loc_A83DF9: Call clsasiento.AbreCajas(from_stack_1v, from_stack_2v)
  loc_A83DFE: FFree1Str var_94
  loc_A83E01: FLdPr var_D8
  loc_A83E04: Call clsasiento.Requery()
  loc_A83E09: LitNothing
  loc_A83E0B: FStAd var_D8 
  loc_A83E0F: Branch loc_A83F4B
  loc_A83E12: ILdRf var_98
  loc_A83E15: LitStr "btnGuardar"
  loc_A83E18: EqStr
  loc_A83E1A: BranchF loc_A83E47
  loc_A83E1D: FLdPr Me
  loc_A83E20: MemLdUI1 global_56
  loc_A83E24: FStUI1 var_10A
  loc_A83E28: FLdUI1
  loc_A83E2C: LitI2_Byte 1
  loc_A83E2E: EqI2
  loc_A83E2F: BranchF loc_A83E35
  loc_A83E32: Branch loc_A83E3F
  loc_A83E35: FLdUI1
  loc_A83E39: LitI2_Byte 2
  loc_A83E3B: EqI2
  loc_A83E3C: BranchF loc_A83E3F
  loc_A83E3F: Call cmdCancelar_Click()
  loc_A83E44: Branch loc_A83F4B
  loc_A83E47: ILdRf var_98
  loc_A83E4A: LitStr "btnCancelar"
  loc_A83E4D: EqStr
  loc_A83E4F: BranchF loc_A83E5A
  loc_A83E52: Call cmdCancelar_Click()
  loc_A83E57: Branch loc_A83F4B
  loc_A83E5A: ILdRf var_98
  loc_A83E5D: LitStr "btnPrimero"
  loc_A83E60: EqStr
  loc_A83E62: BranchF loc_A83E76
  loc_A83E65: FLdPr Me
  loc_A83E68: MemLdRfVar from_stack_1.global_52
  loc_A83E6B: NewIfNullPr clsasiento
  loc_A83E6E: Call clsasiento.MoveFirst(from_stack_1v)
  loc_A83E73: Branch loc_A83F4B
  loc_A83E76: ILdRf var_98
  loc_A83E79: LitStr "btnAnterior"
  loc_A83E7C: EqStr
  loc_A83E7E: BranchF loc_A83E92
  loc_A83E81: FLdPr Me
  loc_A83E84: MemLdRfVar from_stack_1.global_52
  loc_A83E87: NewIfNullPr clsasiento
  loc_A83E8A: Call clsasiento.MovePrevious()
  loc_A83E8F: Branch loc_A83F4B
  loc_A83E92: ILdRf var_98
  loc_A83E95: LitStr "btnSiguiente"
  loc_A83E98: EqStr
  loc_A83E9A: BranchF loc_A83EAE
  loc_A83E9D: FLdPr Me
  loc_A83EA0: MemLdRfVar from_stack_1.global_52
  loc_A83EA3: NewIfNullPr clsasiento
  loc_A83EA6: Call clsasiento.MoveNext()
  loc_A83EAB: Branch loc_A83F4B
  loc_A83EAE: ILdRf var_98
  loc_A83EB1: LitStr "btnUltimo"
  loc_A83EB4: EqStr
  loc_A83EB6: BranchF loc_A83ECA
  loc_A83EB9: FLdPr Me
  loc_A83EBC: MemLdRfVar from_stack_1.global_52
  loc_A83EBF: NewIfNullPr clsasiento
  loc_A83EC2: Call clsasiento.MoveLast()
  loc_A83EC7: Branch loc_A83F4B
  loc_A83ECA: ILdRf var_98
  loc_A83ECD: LitStr "btnFiltrar"
  loc_A83ED0: EqStr
  loc_A83ED2: BranchF loc_A83ED8
  loc_A83ED5: Branch loc_A83F4B
  loc_A83ED8: ILdRf var_98
  loc_A83EDB: LitStr "btnBuscar"
  loc_A83EDE: EqStr
  loc_A83EE0: BranchF loc_A83EE6
  loc_A83EE3: Branch loc_A83F4B
  loc_A83EE6: ILdRf var_98
  loc_A83EE9: LitStr "btnImprimir"
  loc_A83EEC: EqStr
  loc_A83EEE: BranchF loc_A83EF4
  loc_A83EF1: Branch loc_A83F4B
  loc_A83EF4: ILdRf var_98
  loc_A83EF7: LitStr "btnAyuda"
  loc_A83EFA: EqStr
  loc_A83EFC: BranchF loc_A83F2B
  loc_A83EFF: LitVar_Missing var_13C
  loc_A83F02: LitVar_Missing var_11C
  loc_A83F05: LitVar_Missing var_108
  loc_A83F08: LitI4 0
  loc_A83F0D: LitVarStr var_C4, "Opción no disponible en esta versión."
  loc_A83F12: FStVarCopyObj var_E8
  loc_A83F15: FLdRfVar var_E8
  loc_A83F18: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A83F1D: FFreeVar var_E8 = "": var_108 = "": var_11C = ""
  loc_A83F28: Branch loc_A83F4B
  loc_A83F2B: ILdRf var_98
  loc_A83F2E: LitStr "btnSalir"
  loc_A83F31: EqStr
  loc_A83F33: BranchF loc_A83F4B
  loc_A83F36: ILdRf Me
  loc_A83F39: FStAdNoPop
  loc_A83F3D: ImpAdLdRf MemVar_C44F9C
  loc_A83F40: NewIfNullPr Me
  loc_A83F43: Me.Global.Unload from_stack_1
  loc_A83F48: FFree1Ad var_A4
  loc_A83F4B: ExitProcHresult
End Sub

Private Sub Form_Load() '9DD078
  'Data Table: 4186A8
  loc_9DCF94: LitStr "Recordatorio..."
  loc_9DCF97: LitStr "Próximamente ésta pantalla pasará al sistema >> INFOGOV 3 <<"
  loc_9DCF9A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9DCF9F: LitI2_Byte 0
  loc_9DCFA1: CR8I2
  loc_9DCFA2: PopFPR4
  loc_9DCFA3: FLdPr Me
  loc_9DCFA6: Me.Left = from_stack_1s
  loc_9DCFAB: LitI2_Byte 0
  loc_9DCFAD: CR8I2
  loc_9DCFAE: PopFPR4
  loc_9DCFAF: FLdPr Me
  loc_9DCFB2: Me.Top = from_stack_1s
  loc_9DCFB7: LitStr "SELECT asiento.*, DetaTias, IF(FijoTias=1,'Autom.','Manual') Tipo"
  loc_9DCFBA: LitStr " FROM asiento"
  loc_9DCFBD: ConcatStr
  loc_9DCFBE: FStStrNoPop var_88
  loc_9DCFC1: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_9DCFC4: ConcatStr
  loc_9DCFC5: FStStrNoPop var_8C
  loc_9DCFC8: LitStr " INNER JOIN tipoasiento ON tipoasiento.CodiTias = asiento.CodiTias"
  loc_9DCFCB: ConcatStr
  loc_9DCFCC: FStStrNoPop var_90
  loc_9DCFCF: LitStr " WHERE asiento.PeriInfo = "
  loc_9DCFD2: ConcatStr
  loc_9DCFD3: FStStrNoPop var_94
  loc_9DCFD6: ImpAdLdI2 MemVar_C3D064
  loc_9DCFD9: CStrUI1
  loc_9DCFDB: FStStrNoPop var_98
  loc_9DCFDE: ConcatStr
  loc_9DCFDF: FStStrNoPop var_9C
  loc_9DCFE2: LitStr " AND IF(FedePaco IS NULL, TRUE, FechAsie > FedePaco)"
  loc_9DCFE5: ConcatStr
  loc_9DCFE6: FStStrNoPop var_A0
  loc_9DCFE9: LitStr " ORDER BY FechAsie, CodiAsie"
  loc_9DCFEC: ConcatStr
  loc_9DCFED: FStStrNoPop var_A4
  loc_9DCFF0: FLdPr Me
  loc_9DCFF3: MemLdRfVar from_stack_1.global_52
  loc_9DCFF6: NewIfNullPr clsasiento
  loc_9DCFF9: Call clsasiento.RedefineRS(from_stack_1v)
  loc_9DCFFE: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9DD011: Call cmdCancelar_Click()
  loc_9DD016: LitI4 0
  loc_9DD01B: LitI4 1
  loc_9DD020: FLdRfVar var_A8
  loc_9DD023: Redim
  loc_9DD02D: FLdPr Me
  loc_9DD030: MemLdRfVar from_stack_1.global_52
  loc_9DD033: NewIfNullAd
  loc_9DD036: FStAd var_AC 
  loc_9DD03A: FLdRfVar var_AC
  loc_9DD03D: CVarRef
  loc_9DD042: ParmAry1St
  loc_9DD048: FLdPr Me
  loc_9DD04B: VCallAd Control_ID_dgdABMS
  loc_9DD04E: CVarAd
  loc_9DD052: ParmAry1St
  loc_9DD058: FLdRfVar var_A8
  loc_9DD05B: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9DD060: ILdRf var_AC
  loc_9DD063: CastAd
  loc_9DD066: FLdPr Me
  loc_9DD069: MemStAdFunc
  loc_9DD06D: FLdRfVar var_A8
  loc_9DD070: Erase
  loc_9DD071: FFree1Ad var_AC
  loc_9DD074: ExitProcHresult
End Sub

Private Sub Form_Activate() '99CB64
  'Data Table: 4186A8
  loc_99CB00: FLdRfVar var_C2
  loc_99CB03: FLdRfVar var_C0
  loc_99CB06: LitVarI2 var_B8, 1
  loc_99CB0B: FLdPr Me
  loc_99CB0E: VCallAd Control_ID_tlbABMS
  loc_99CB11: FStAdFunc var_88
  loc_99CB14: FLdPr var_88
  loc_99CB17: LateIdLdVar var_98 DispID_3 0
  loc_99CB1E: CastAdVar Me
  loc_99CB22: FStAdFunc var_BC
  loc_99CB25: FLdPr var_BC
  loc_99CB28:  = Me.Buttons.ControlDefault
  loc_99CB2D: FLdPr var_C0
  loc_99CB30:  = Me.Enabled
  loc_99CB35: FLdI2 var_C2
  loc_99CB38: FFreeAd var_88 = "": var_BC = ""
  loc_99CB41: FFreeVar var_98 = ""
  loc_99CB48: BranchF loc_99CB63
  loc_99CB4B: LitI4 0
  loc_99CB50: LitI4 0
  loc_99CB55: FLdPr Me
  loc_99CB58: MemLdRfVar from_stack_1.global_52
  loc_99CB5B: NewIfNullPr clsasiento
  loc_99CB5E: Call clsasiento.Encontrar(from_stack_1v, from_stack_2v)
  loc_99CB63: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '956D84
  'Data Table: 4186A8
  loc_956D6C: ILdI2 KeyCode
  loc_956D6F: ILdRf Me
  loc_956D72: CastAd
  loc_956D75: FStAdFunc var_88
  loc_956D78: FLdRfVar var_88
  loc_956D7B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_956D80: FFree1Ad var_88
  loc_956D83: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9B4AEC
  'Data Table: 4186A8
  loc_9B4A48: LitI2_Byte 0
  loc_9B4A4A: CUI1I2
  loc_9B4A4C: FLdPr Me
  loc_9B4A4F: MemStUI1
  loc_9B4A53: ILdRf Me
  loc_9B4A56: CastAd
  loc_9B4A59: FStAdFunc var_88
  loc_9B4A5C: FLdRfVar var_88
  loc_9B4A5F: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9B4A64: FFree1Ad var_88
  loc_9B4A67: LitI4 0
  loc_9B4A6C: LitI4 0
  loc_9B4A71: FLdRfVar var_8C
  loc_9B4A74: Redim
  loc_9B4A7E: FLdPr Me
  loc_9B4A81: VCallAd Control_ID_dgdABMS
  loc_9B4A84: CVarAd
  loc_9B4A88: ParmAry1St
  loc_9B4A8E: FLdRfVar var_8C
  loc_9B4A91: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B4A96: FLdRfVar var_8C
  loc_9B4A99: Erase
  loc_9B4A9A: FLdPr Me
  loc_9B4A9D: MemLdRfVar from_stack_1.global_52
  loc_9B4AA0: NewIfNullAd
  loc_9B4AA3: FStAd var_A0 
  loc_9B4AA7: FLdRfVar var_A0
  loc_9B4AAA: CVarRef
  loc_9B4AAF: ILdRf Me
  loc_9B4AB2: CastAd
  loc_9B4AB5: FStAdFunc var_88
  loc_9B4AB8: FLdRfVar var_88
  loc_9B4ABB: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9B4AC0: ILdRf var_A0
  loc_9B4AC3: CastAd
  loc_9B4AC6: FLdPr Me
  loc_9B4AC9: MemStAdFunc
  loc_9B4ACD: FFreeAd var_88 = ""
  loc_9B4AD4: ILdRf Me
  loc_9B4AD7: CastAd
  loc_9B4ADA: FStAdFunc var_88
  loc_9B4ADD: FLdRfVar var_88
  loc_9B4AE0: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9B4AE5: FFree1Ad var_88
  loc_9B4AE8: ExitProcHresult
  loc_9B4AE9: CCyI2
  loc_9B4AEA: CI4R8
End Sub
