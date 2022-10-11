//%attributes = {"shared":true}
  //JCL_btn_SetEnable_byListCount
  //20100721 wat new
  //リストボックスの表示件数がゼロならボタンをイネイブル
  //オンロード時はリストボックスの配列からは件数が取得できない
  //クリエイトアレイで作成したIDの配列を与えるとうまく動く

C_POINTER:C301($1;$inListBoxPtr)
$inListBoxPtr:=$1  //選択判定対象となるリストボックスのブーリアン配列
C_POINTER:C301($2;$inButtonPtr)
$inButtonPtr:=$2  //イネイブル対象となるボタンのポインタ
C_LONGINT:C283($displayCnt)

  //リストで表示されている行が一つ以上の場合にイネイブル、
  //表示件数がなければボタンはグレイ
$displayCnt:=JCL_lst_Count ($inListBoxPtr)
If ($displayCnt>=1)
	JCL_btn_SetEnable ($inButtonPtr;True:C214)
Else 
	JCL_btn_SetEnable ($inButtonPtr;False:C215)
End if 
