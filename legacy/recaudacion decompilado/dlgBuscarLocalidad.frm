VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarLocalidad
  Caption = "Buscar Localidad por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarLocalidad.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 7896
  ClientHeight = 5424
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 720
    Width = 6015
    Height = 360
    TabIndex = 1
    Tag = "0"
    MaxLength = 40
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
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 240
    Width = 1575
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 6
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1680
    Top = 4680
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "3"
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
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 120
    Top = 4680
    Width = 1335
    Height = 495
    TabIndex = 3
    Tag = "2"
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
    Left = 120
    Top = 1320
    Width = 7575
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarLocalidad.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 840
    Top = 720
    Width = 810
    Height = 300
    TabIndex = 6
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
    Caption = "Codigo:"
    Left = 840
    Top = 240
    Width = 810
    Height = 300
    TabIndex = 5
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

Attribute VB_Name = "dlgBuscarLocalidad"

Public LocalidadCLS As New Class


Private Sub Campo1Txt_Change() 'A682E4
  'Data Table: 4234B0
  loc_A68284: LitStr vbNullString
  loc_A68287: FLdPr Me
  loc_A6828A: VCallAd Control_ID_Campo2Txt
  loc_A6828D: FStAdFunc var_88
  loc_A68290: FLdPr var_88
  loc_A68293: Me.Text = from_stack_1
  loc_A68298: FFree1Ad var_88
  loc_A6829B: LitStr "SELECT CodiLoca, DetaLoca, CodiPost FROM infogov.localidad "
  loc_A6829E: LitStr " WHERE infogov.localidad.CodiLoca like '"
  loc_A682A1: ConcatStr
  loc_A682A2: FStStrNoPop var_90
  loc_A682A5: FLdRfVar var_8C
  loc_A682A8: FLdPr Me
  loc_A682AB: VCallAd Control_ID_Campo1Txt
  loc_A682AE: FStAdFunc var_88
  loc_A682B1: FLdPr var_88
  loc_A682B4:  = Me.Text
  loc_A682B9: ILdRf var_8C
  loc_A682BC: ConcatStr
  loc_A682BD: FStStrNoPop var_94
  loc_A682C0: LitStr Chr(37) & "' ORDER BY infogov.localidad.CodiLoca"
  loc_A682C3: ConcatStr
  loc_A682C4: FStStrNoPop var_98
  loc_A682C7: FLdPr Me
  loc_A682CA: MemLdRfVar from_stack_1.LocalidadCLS
  loc_A682CD: NewIfNullPr clslocalidad
  loc_A682D0: Call clslocalidad.RedefineRS(from_stack_1v)
  loc_A682D5: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_A682E0: FFree1Ad var_88
  loc_A682E3: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DB6C8
  'Data Table: 4234B0
  loc_9DB6B0: LitStr "0123456789"
  loc_9DB6B3: FStStrCopy var_88
  loc_9DB6B6: FLdRfVar var_88
  loc_9DB6B9: ILdRf KeyAscii
  loc_9DB6BC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DB6C1: IStI2 KeyAscii
  loc_9DB6C4: FFree1Str var_88
  loc_9DB6C7: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9DC684
  'Data Table: 4234B0
  loc_9DC66C: FLdPr Me
  loc_9DC66F: VCallAd Control_ID_dgdABMS
  loc_9DC672: FStAdFunc var_88
  loc_9DC675: FLdRfVar var_88
  loc_9DC678: ImpAdCallFPR4 Proc_58_0_9FD654()
  loc_9DC67D: FFree1Ad var_88
  loc_9DC680: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D7C98
  'Data Table: 4234B0
  loc_9D7C80: FLdPr Me
  loc_9D7C83: VCallAd Control_ID_dgdABMS
  loc_9D7C86: FStAdFunc var_88
  loc_9D7C89: FLdRfVar var_88
  loc_9D7C8C: ImpAdCallFPR4 Proc_58_1_9EAB78()
  loc_9D7C91: FFree1Ad var_88
  loc_9D7C94: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9D60B0
  'Data Table: 4234B0
  loc_9D6098: ILdRf Me
  loc_9D609B: FStAdNoPop
  loc_9D609F: ImpAdLdRf MemVar_D9C5D8
  loc_9D60A2: NewIfNullPr Global
  loc_9D60A5: Global.Unload from_stack_1
  loc_9D60AA: FFree1Ad var_88
  loc_9D60AD: ExitProcHresult
  loc_9D60AE: LitVar_TRUE arg_3800
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EB0F8
  'Data Table: 4234B0
  loc_9EB0D4: ILdI2 KeyCode
  loc_9EB0D7: CI4UI1
  loc_9EB0D8: LitI4 &HD
  loc_9EB0DD: EqI4
  loc_9EB0DE: BranchF loc_9EB0F6
  loc_9EB0E1: ILdRf Me
  loc_9EB0E4: FStAdNoPop
  loc_9EB0E8: ImpAdLdRf MemVar_D9C5D8
  loc_9EB0EB: NewIfNullPr Global
  loc_9EB0EE: Global.Unload from_stack_1
  loc_9EB0F3: FFree1Ad var_88
  loc_9EB0F6: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8E818
  'Data Table: 4234B0
  loc_A8E784: FLdRfVar var_94
  loc_A8E787: LitVarStr var_A4, vbNullString
  loc_A8E78C: HardType
  loc_A8E78D: EqVarBool
  loc_A8E78F: BranchF loc_A8E7A0
  loc_A8E792: LitStr "SELECT CodiLoca, DetaLoca, CodiPost FROM infogov.localidad "
  loc_A8E795: LitStr " ORDER BY infogov.localidad.DetaLoca"
  loc_A8E798: ConcatStr
  loc_A8E799: CVarStr var_B4
  loc_A8E79C: FStVar var_94
  loc_A8E7A0: FLdRfVar var_94
  loc_A8E7A3: CStrVarVal var_B8
  loc_A8E7A7: FLdPr Me
  loc_A8E7AA: MemLdRfVar from_stack_1.LocalidadCLS
  loc_A8E7AD: NewIfNullPr clslocalidad
  loc_A8E7B0: Call clslocalidad.RedefineRS(from_stack_1v)
  loc_A8E7B5: FFree1Str var_B8
  loc_A8E7B8: LitI4 0
  loc_A8E7BD: LitI4 1
  loc_A8E7C2: FLdRfVar var_BC
  loc_A8E7C5: Redim
  loc_A8E7CF: FLdPr Me
  loc_A8E7D2: MemLdRfVar from_stack_1.LocalidadCLS
  loc_A8E7D5: NewIfNullAd
  loc_A8E7D8: FStAd var_C0 
  loc_A8E7DC: FLdRfVar var_C0
  loc_A8E7DF: CVarRef
  loc_A8E7E4: ParmAry1St
  loc_A8E7EA: FLdPr Me
  loc_A8E7ED: VCallAd Control_ID_dgdABMS
  loc_A8E7F0: CVarAd
  loc_A8E7F4: ParmAry1St
  loc_A8E7FA: FLdRfVar var_BC
  loc_A8E7FD: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8E802: ILdRf var_C0
  loc_A8E805: CastAd
  loc_A8E808: FLdPr Me
  loc_A8E80B: MemStAdFunc
  loc_A8E80F: FLdRfVar var_BC
  loc_A8E812: Erase
  loc_A8E813: FFree1Ad var_C0
  loc_A8E816: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B25B4
  'Data Table: 4234B0
  loc_9B25A8: LitVarStr var_A4, vbNullString
  loc_9B25AD: FStVarCopy
  loc_9B25B1: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D8074
  'Data Table: 4234B0
  loc_9D805C: FLdPr Me
  loc_9D805F: VCallAd Control_ID_Campo2Txt
  loc_9D8062: FStAdFunc var_88
  loc_9D8065: FLdPr var_88
  loc_9D8068: Me.SetFocus
  loc_9D806D: FFree1Ad var_88
  loc_9D8070: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11F70
  'Data Table: 4234B0
  loc_A11F34: ILdI2 KeyAscii
  loc_A11F37: LitI2_Byte &HD
  loc_A11F39: EqI2
  loc_A11F3A: BranchF loc_A11F4B
  loc_A11F3D: LitVar_TRUE var_A4
  loc_A11F40: LitStr "{Tab}"
  loc_A11F43: ImpAdCallFPR4 SendKeys , 
  loc_A11F48: FFree1Var var_A4 = ""
  loc_A11F4B: ILdI2 KeyAscii
  loc_A11F4E: LitI2_Byte &H1B
  loc_A11F50: EqI2
  loc_A11F51: BranchF loc_A11F6E
  loc_A11F54: ILdRf Me
  loc_A11F57: FStAdNoPop
  loc_A11F5B: ImpAdLdRf MemVar_D9C5D8
  loc_A11F5E: NewIfNullPr Global
  loc_A11F61: Global.Unload from_stack_1
  loc_A11F66: FFree1Ad var_A8
  loc_A11F69: LitI2_Byte 0
  loc_A11F6B: IStI2 KeyAscii
  loc_A11F6E: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D7CE4
  'Data Table: 4234B0
  loc_9D7CCC: ILdRf Me
  loc_9D7CCF: FStAdNoPop
  loc_9D7CD3: ImpAdLdRf MemVar_D9C5D8
  loc_9D7CD6: NewIfNullPr Global
  loc_9D7CD9: Global.Unload from_stack_1
  loc_9D7CDE: FFree1Ad var_88
  loc_9D7CE1: ExitProcHresult
  loc_9D7CE2: AddI2
End Sub

Private Sub CancelButton_Click() '9D5E50
  'Data Table: 4234B0
  loc_9D5E38: ILdRf Me
  loc_9D5E3B: FStAdNoPop
  loc_9D5E3F: ImpAdLdRf MemVar_D9C5D8
  loc_9D5E42: NewIfNullPr Global
  loc_9D5E45: Global.Unload from_stack_1
  loc_9D5E4A: FFree1Ad var_88
  loc_9D5E4D: ExitProcHresult
  loc_9D5E4E: Ary1LdPr
End Sub

Private Sub Campo2Txt_Change() 'A68760
  'Data Table: 4234B0
  loc_A68700: LitStr vbNullString
  loc_A68703: FLdPr Me
  loc_A68706: VCallAd Control_ID_Campo1Txt
  loc_A68709: FStAdFunc var_88
  loc_A6870C: FLdPr var_88
  loc_A6870F: Me.Text = from_stack_1
  loc_A68714: FFree1Ad var_88
  loc_A68717: LitStr "SELECT CodiLoca, DetaLoca, CodiPost FROM infogov.localidad "
  loc_A6871A: LitStr " WHERE infogov.localidad.DetaLoca like '" & Chr(37)
  loc_A6871D: ConcatStr
  loc_A6871E: FStStrNoPop var_90
  loc_A68721: FLdRfVar var_8C
  loc_A68724: FLdPr Me
  loc_A68727: VCallAd Control_ID_Campo2Txt
  loc_A6872A: FStAdFunc var_88
  loc_A6872D: FLdPr var_88
  loc_A68730:  = Me.Text
  loc_A68735: ILdRf var_8C
  loc_A68738: ConcatStr
  loc_A68739: FStStrNoPop var_94
  loc_A6873C: LitStr Chr(37) & "' ORDER BY infogov.localidad.DetaLoca"
  loc_A6873F: ConcatStr
  loc_A68740: FStStrNoPop var_98
  loc_A68743: FLdPr Me
  loc_A68746: MemLdRfVar from_stack_1.LocalidadCLS
  loc_A68749: NewIfNullPr clslocalidad
  loc_A6874C: Call clslocalidad.RedefineRS(from_stack_1v)
  loc_A68751: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_A6875C: FFree1Ad var_88
  loc_A6875F: ExitProcHresult
End Sub

Public Function global_4338864Get() '423A6C
  global_4338864Get = global_4338864
End Function

Public Sub global_4338864Put(Value) '423A86
  global_4338864 = Value
End Sub

Public Sub global_4338864Set(Value) '423AA0
  global_4338864 = Value
End Sub
