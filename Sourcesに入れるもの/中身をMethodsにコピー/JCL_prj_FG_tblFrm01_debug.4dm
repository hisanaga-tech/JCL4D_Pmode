//%attributes = {}
  //  //JCL_prj_FG_tblFrm01
  //  //20210330 ike wat
  //  //テーブルフォーム作成

  //C_TEXT($1;$tbl_prefix)
  //$tbl_prefix:=$1
  //C_TEXT($2;$prefix)
  //$prefix:=$2
  //C_TEXT($3;$inputFrmName)
  //$inputFrmName:=$3
  //C_TEXT($4;$tblName)
  //$tblName:=$4
  //C_POINTER($5;$aryFieldNamePtr)
  //$aryFieldNamePtr:=$5
  //C_POINTER($6;$aryFieldTypePtr)
  //$aryFieldTypePtr:=$6
  //C_POINTER($7;$aryFieldLengthPtr)
  //$aryFieldLengthPtr:=$7
  //C_TEXT($8;$color_txt)
  //$color_txt:=$8
  //C_TEXT($folderPath;$filePath)
  //C_TEXT($body)
  //C_TEXT($title_body;$btn_body)
  //C_TEXT($lst_body)

  //  //ファイルの内容を読み込んで　エンコード
  //$folderPath:=JCL_file_MakeFilePath (Get 4D folder(Database folder);"Resources")
  //$folderPath:=JCL_file_MakeFilePath ($folderPath;"JCL4D")
  //$folderPath:=JCL_file_MakeFilePath ($folderPath;"frm_templates")
  //$filePath:=JCL_file_MakeFilePath ($folderPath;"frm01.txt")
  //$body:=Document to text($filePath;"UTF-8";Document with native format)

  //  //フォームのタイトル文字列
  //$title_body:=JCL_prj_FG_frm_title ($folderPath;$prefix;$tblName;$color_txt)
  //$body:=Replace string($body;"[--frm_title]";$title_body)

  //  //フォームの件数文字列
  //$btn_body:=JCL_prj_FG_frm_obj ($folderPath;$prefix;"frm_varNumOfRecs.txt")
  //$body:=Replace string($body;"[--frm_varNumOfRecs]";$btn_body)

  //  //フォームのAddボタン
  //$btn_body:=JCL_prj_FG_frm_obj ($folderPath;$prefix;"frm_btnAdd.txt")
  //$body:=Replace string($body;"[--frm_btnAdd]";$btn_body)
  //  //オブジェクトメソッドを作成
  //JCL_prj_FG_tblObjMethod ($prefix;$inputFrmName;$tblName;"_btnAdd")

  //  //フォームのModボタン
  //$btn_body:=JCL_prj_FG_frm_obj ($folderPath;$prefix;"frm_btnMod.txt")
  //$body:=Replace string($body;"[--frm_btnMod]";$btn_body)
  //  //オブジェクトメソッドを作成
  //JCL_prj_FG_tblObjMethod ($prefix;$inputFrmName;$tblName;"_btnMod")

  //  //フォームのDelボタン
  //$btn_body:=JCL_prj_FG_frm_obj ($folderPath;$prefix;"frm_btnDel.txt")
  //$body:=Replace string($body;"[--frm_btnDel]";$btn_body)
  //  //オブジェクトメソッドを作成
  //JCL_prj_FG_tblObjMethod ($prefix;$inputFrmName;$tblName;"_btnDel")

  //  //フォームのCloseボタン
  //$btn_body:=JCL_prj_FG_frm_obj ($folderPath;$prefix;"frm_btnClose.txt")
  //$body:=Replace string($body;"[--frm_btnClose]";$btn_body)
  //  //オブジェクトメソッドを作成
  //JCL_prj_FG_tblObjMethod ($prefix;$inputFrmName;$tblName;"_btnClose")

  //  //フォームのExportボタン
  //$btn_body:=JCL_prj_FG_frm_obj ($folderPath;$prefix;"frm_btnExport.txt")
  //$body:=Replace string($body;"[--frm_btnExport]";$btn_body)
  //  //オブジェクトメソッドを作成
  //JCL_prj_FG_tblObjMethod ($prefix;$inputFrmName;$tblName;"_btnExport")

  //  //リストボックス用の文字列を作成、リストボックス部を置き換え
  //$lst_body:=JCL_prj_FG_frm_lst ($folderPath;$prefix;$aryFieldNamePtr;$aryFieldTypePtr;$aryFieldLengthPtr)
  //$body:=Replace string($body;"[--frm_lst]";$lst_body)
  //JCL_prj_FG_tblObjMethod ($prefix;$inputFrmName;$tblName;"_lst"+$tbl_prefix)

  //  //名前を変えて保存、
  //C_TEXT($outPath;$outFolderPath;$outFilePath)
  //C_TEXT($frmName)
  //C_LONGINT($tblNr)
  //C_TEXT($tblNrText)
  //  //$frmName:="A00_test1"
  //$folderPath:=JCL_file_MakeFilePath (Get 4D folder(Database folder);"Project")
  //$folderPath:=JCL_file_MakeFilePath ($folderPath;"Sources")
  //$folderPath:=JCL_file_MakeFilePath ($folderPath;"TableForms")
  //$tblNr:=JCL_tbl_GetNumber ($tblName)  //テーブル番号
  //$tblNrText:=String($tblNr)
  //$folderPath:=JCL_file_MakeFilePath ($folderPath;$tblNrText)
  //$outFolderPath:=JCL_file_MakeFilePath ($folderPath;$inputFrmName)
  //$outFilePath:=JCL_file_MakeFilePath ($outFolderPath;"form.4DForm")
  //TEXT TO DOCUMENT($outFilePath;$body)
