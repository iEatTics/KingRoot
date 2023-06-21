package com.tencent.p020mm.opensdk.openapi;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.p020mm.opensdk.channel.MMessageActV2;
import com.tencent.p020mm.opensdk.channel.p021a.C4161a;
import com.tencent.p020mm.opensdk.channel.p021a.C4163b;
import com.tencent.p020mm.opensdk.constants.ConstantsAPI;
import com.tencent.p020mm.opensdk.modelbase.BaseReq;
import com.tencent.p020mm.opensdk.modelbase.BaseResp;
import com.tencent.p020mm.opensdk.modelbiz.AddCardToWXCardPackage;
import com.tencent.p020mm.opensdk.modelbiz.ChooseCardFromWXCardPackage;
import com.tencent.p020mm.opensdk.modelbiz.CreateChatroom;
import com.tencent.p020mm.opensdk.modelbiz.HandleScanResult;
import com.tencent.p020mm.opensdk.modelbiz.JoinChatroom;
import com.tencent.p020mm.opensdk.modelbiz.OpenWebview;
import com.tencent.p020mm.opensdk.modelbiz.SubscribeMessage;
import com.tencent.p020mm.opensdk.modelbiz.SubscribeMiniProgramMsg;
import com.tencent.p020mm.opensdk.modelbiz.WXInvoiceAuthInsert;
import com.tencent.p020mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.p020mm.opensdk.modelbiz.WXNontaxPay;
import com.tencent.p020mm.opensdk.modelbiz.WXOpenBusinessView;
import com.tencent.p020mm.opensdk.modelbiz.WXOpenBusinessWebview;
import com.tencent.p020mm.opensdk.modelbiz.WXPayInsurance;
import com.tencent.p020mm.opensdk.modelmsg.GetMessageFromWX;
import com.tencent.p020mm.opensdk.modelmsg.LaunchFromWX;
import com.tencent.p020mm.opensdk.modelmsg.SendAuth;
import com.tencent.p020mm.opensdk.modelmsg.SendMessageToWX;
import com.tencent.p020mm.opensdk.modelmsg.ShowMessageFromWX;
import com.tencent.p020mm.opensdk.modelmsg.WXMiniProgramObject;
import com.tencent.p020mm.opensdk.modelmsg.WXWebpageObject;
import com.tencent.p020mm.opensdk.modelpay.JumpToOfflinePay;
import com.tencent.p020mm.opensdk.modelpay.PayResp;
import com.tencent.p020mm.opensdk.utils.C4178d;
import com.tencent.p020mm.opensdk.utils.ILog;
import com.tencent.p020mm.opensdk.utils.Log;
import java.net.URLEncoder;
import org.json.JSONObject;
/* renamed from: com.tencent.mm.opensdk.openapi.BaseWXApiImplV10 */
/* loaded from: classes.dex */
class BaseWXApiImplV10 implements IWXAPI {
    protected static final String TAG = "MicroMsg.SDK.WXApiImplV10";
    private static String wxappPayEntryClassname = null;
    protected String appId;
    protected boolean checkSignature;
    protected Context context;
    protected boolean detached = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseWXApiImplV10(Context context, String str, boolean z) {
        this.checkSignature = false;
        Log.m496d(TAG, "<init>, appId = " + str + ", checkSignature = " + z);
        this.context = context;
        this.appId = str;
        this.checkSignature = z;
    }

    private boolean checkSumConsistent(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length == 0) {
            Log.m495e(TAG, "checkSumConsistent fail, invalid arguments");
            return false;
        } else if (bArr.length != bArr2.length) {
            Log.m495e(TAG, "checkSumConsistent fail, length is different");
            return false;
        } else {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] != bArr2[i]) {
                    return false;
                }
            }
            return true;
        }
    }

    private boolean createChatroom(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/createChatroom"), null, null, new String[]{this.appId, bundle.getString("_wxapi_basereq_transaction", ""), bundle.getString("_wxapi_create_chatroom_group_id", ""), bundle.getString("_wxapi_create_chatroom_chatroom_name", ""), bundle.getString("_wxapi_create_chatroom_chatroom_nickname", ""), bundle.getString("_wxapi_create_chatroom_ext_msg", ""), bundle.getString("_wxapi_basereq_openid", "")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private String getTokenFromWX(Context context) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/genTokenForOpenSdk"), null, null, new String[]{this.appId, "620954112"}, null);
        if (query == null || !query.moveToFirst()) {
            return null;
        }
        String string = query.getString(0);
        Log.m494i(TAG, "getTokenFromWX token is " + string);
        query.close();
        return string;
    }

    private boolean handleWxInternalRespType(String str, IWXAPIEventHandler iWXAPIEventHandler) {
        Log.m494i(TAG, "handleWxInternalRespType, extInfo = " + str);
        try {
            Uri parse = Uri.parse(str);
            String queryParameter = parse.getQueryParameter("wx_internal_resptype");
            Log.m494i(TAG, "handleWxInternalRespType, respType = " + queryParameter);
            if (C4178d.m486b(queryParameter)) {
                Log.m495e(TAG, "handleWxInternalRespType fail, respType is null");
                return false;
            } else if (queryParameter.equals("subscribemessage")) {
                SubscribeMessage.Resp resp = new SubscribeMessage.Resp();
                String queryParameter2 = parse.getQueryParameter("ret");
                if (queryParameter2 != null && queryParameter2.length() > 0) {
                    resp.errCode = C4178d.m485c(queryParameter2);
                }
                resp.openId = parse.getQueryParameter("openid");
                resp.templateID = parse.getQueryParameter("template_id");
                resp.scene = C4178d.m485c(parse.getQueryParameter("scene"));
                resp.action = parse.getQueryParameter("action");
                resp.reserved = parse.getQueryParameter("reserved");
                iWXAPIEventHandler.onResp(resp);
                return true;
            } else if (queryParameter.contains("invoice_auth_insert")) {
                WXInvoiceAuthInsert.Resp resp2 = new WXInvoiceAuthInsert.Resp();
                String queryParameter3 = parse.getQueryParameter("ret");
                if (queryParameter3 != null && queryParameter3.length() > 0) {
                    resp2.errCode = C4178d.m485c(queryParameter3);
                }
                resp2.wxOrderId = parse.getQueryParameter("wx_order_id");
                iWXAPIEventHandler.onResp(resp2);
                return true;
            } else if (queryParameter.contains("payinsurance")) {
                WXPayInsurance.Resp resp3 = new WXPayInsurance.Resp();
                String queryParameter4 = parse.getQueryParameter("ret");
                if (queryParameter4 != null && queryParameter4.length() > 0) {
                    resp3.errCode = C4178d.m485c(queryParameter4);
                }
                resp3.wxOrderId = parse.getQueryParameter("wx_order_id");
                iWXAPIEventHandler.onResp(resp3);
                return true;
            } else if (queryParameter.contains("nontaxpay")) {
                WXNontaxPay.Resp resp4 = new WXNontaxPay.Resp();
                String queryParameter5 = parse.getQueryParameter("ret");
                if (queryParameter5 != null && queryParameter5.length() > 0) {
                    resp4.errCode = C4178d.m485c(queryParameter5);
                }
                resp4.wxOrderId = parse.getQueryParameter("wx_order_id");
                iWXAPIEventHandler.onResp(resp4);
                return true;
            } else if (!"subscribeminiprogrammsg".equals(queryParameter) && !"5".equals(queryParameter)) {
                Log.m495e(TAG, "this open sdk version not support the request type");
                return false;
            } else {
                SubscribeMiniProgramMsg.Resp resp5 = new SubscribeMiniProgramMsg.Resp();
                String queryParameter6 = parse.getQueryParameter("ret");
                if (queryParameter6 != null && queryParameter6.length() > 0) {
                    resp5.errCode = C4178d.m485c(queryParameter6);
                }
                resp5.openId = parse.getQueryParameter("openid");
                resp5.unionId = parse.getQueryParameter("unionid");
                resp5.nickname = parse.getQueryParameter("nickname");
                resp5.errStr = parse.getQueryParameter("errmsg");
                iWXAPIEventHandler.onResp(resp5);
                return true;
            }
        } catch (Exception e) {
            Log.m495e(TAG, "handleWxInternalRespType fail, ex = " + e.getMessage());
            return false;
        }
    }

    private boolean joinChatroom(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/joinChatroom"), null, null, new String[]{this.appId, bundle.getString("_wxapi_basereq_transaction", ""), bundle.getString("_wxapi_join_chatroom_group_id", ""), bundle.getString("_wxapi_join_chatroom_chatroom_nickname", ""), bundle.getString("_wxapi_join_chatroom_ext_msg", ""), bundle.getString("_wxapi_basereq_openid", "")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendAddCardToWX(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/addCardToWX"), null, null, new String[]{this.appId, bundle.getString("_wxapi_add_card_to_wx_card_list"), bundle.getString("_wxapi_basereq_transaction")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendChooseCardFromWX(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/chooseCardFromWX"), null, null, new String[]{bundle.getString("_wxapi_choose_card_from_wx_card_app_id"), bundle.getString("_wxapi_choose_card_from_wx_card_location_id"), bundle.getString("_wxapi_choose_card_from_wx_card_sign_type"), bundle.getString("_wxapi_choose_card_from_wx_card_card_sign"), bundle.getString("_wxapi_choose_card_from_wx_card_time_stamp"), bundle.getString("_wxapi_choose_card_from_wx_card_nonce_str"), bundle.getString("_wxapi_choose_card_from_wx_card_card_id"), bundle.getString("_wxapi_choose_card_from_wx_card_card_type"), bundle.getString("_wxapi_choose_card_from_wx_card_can_multi_select"), bundle.getString("_wxapi_basereq_transaction")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendHandleScanResult(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/handleScanResult"), null, null, new String[]{this.appId, bundle.getString("_wxapi_scan_qrcode_result")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendInvoiceAuthInsert(Context context, BaseReq baseReq) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openTypeWebview"), null, null, new String[]{this.appId, "2", URLEncoder.encode(String.format("url=%s", URLEncoder.encode(((WXInvoiceAuthInsert.Req) baseReq).url)))}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendJumpToBizProfileReq(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile"), null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_biz_profile_req_to_user_name"), bundle.getString("_wxapi_jump_to_biz_profile_req_ext_msg"), new StringBuilder().append(bundle.getInt("_wxapi_jump_to_biz_profile_req_scene")).toString(), new StringBuilder().append(bundle.getInt("_wxapi_jump_to_biz_profile_req_profile_type")).toString()}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendJumpToBizTempSessionReq(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/jumpToBizTempSession"), null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_biz_webview_req_to_user_name"), bundle.getString("_wxapi_jump_to_biz_webview_req_session_from"), new StringBuilder().append(bundle.getInt("_wxapi_jump_to_biz_webview_req_show_type")).toString()}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendJumpToBizWebviewReq(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile"), null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_biz_webview_req_to_user_name"), bundle.getString("_wxapi_jump_to_biz_webview_req_ext_msg"), new StringBuilder().append(bundle.getInt("_wxapi_jump_to_biz_webview_req_scene")).toString()}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendJumpToOfflinePayReq(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/jumpToOfflinePay"), null, null, new String[]{this.appId}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendLaunchWXMiniprogram(Context context, BaseReq baseReq) {
        WXLaunchMiniProgram.Req req = (WXLaunchMiniProgram.Req) baseReq;
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/launchWXMiniprogram"), null, null, new String[]{this.appId, req.userName, req.path, new StringBuilder().append(req.miniprogramType).toString(), req.extData}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendNonTaxPay(Context context, BaseReq baseReq) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openTypeWebview"), null, null, new String[]{this.appId, "3", URLEncoder.encode(String.format("url=%s", URLEncoder.encode(((WXNontaxPay.Req) baseReq).url)))}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendOpenBusiLuckyMoney(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openBusiLuckyMoney"), null, null, new String[]{this.appId, bundle.getString("_wxapi_open_busi_lucky_money_timeStamp"), bundle.getString("_wxapi_open_busi_lucky_money_nonceStr"), bundle.getString("_wxapi_open_busi_lucky_money_signType"), bundle.getString("_wxapi_open_busi_lucky_money_signature"), bundle.getString("_wxapi_open_busi_lucky_money_package")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendOpenBusinessView(Context context, BaseReq baseReq) {
        WXOpenBusinessView.Req req = (WXOpenBusinessView.Req) baseReq;
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openBusinessView"), null, null, new String[]{this.appId, req.businessType, req.query, req.extInfo}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendOpenBusinessWebview(Context context, BaseReq baseReq) {
        WXOpenBusinessWebview.Req req = (WXOpenBusinessWebview.Req) baseReq;
        ContentResolver contentResolver = context.getContentResolver();
        Uri parse = Uri.parse("content://com.tencent.mm.sdk.comm.provider/openBusinessWebview");
        String str = "";
        if (req.queryInfo != null && req.queryInfo.size() > 0) {
            str = new JSONObject(req.queryInfo).toString();
        }
        Cursor query = contentResolver.query(parse, null, null, new String[]{this.appId, new StringBuilder().append(req.businessType).toString(), str}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendOpenRankListReq(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openRankList"), null, null, new String[0], null);
        if (query != null) {
            query.close();
            return true;
        }
        return true;
    }

    private boolean sendOpenWebview(Context context, Bundle bundle) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openWebview"), null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_webview_url"), bundle.getString("_wxapi_basereq_transaction")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendPayInSurance(Context context, BaseReq baseReq) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openTypeWebview"), null, null, new String[]{this.appId, "4", URLEncoder.encode(String.format("url=%s", URLEncoder.encode(((WXPayInsurance.Req) baseReq).url)))}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendPayReq(Context context, Bundle bundle) {
        if (wxappPayEntryClassname == null) {
            wxappPayEntryClassname = new MMSharedPreferences(context).getString("_wxapp_pay_entry_classname_", null);
            Log.m496d(TAG, "pay, set wxappPayEntryClassname = " + wxappPayEntryClassname);
            if (wxappPayEntryClassname == null) {
                try {
                    wxappPayEntryClassname = context.getPackageManager().getApplicationInfo("com.tencent.mm", 128).metaData.getString("com.tencent.mm.BuildInfo.OPEN_SDK_PAY_ENTRY_CLASSNAME", null);
                } catch (Exception e) {
                    Log.m495e(TAG, "get from metaData failed : " + e.getMessage());
                }
            }
            if (wxappPayEntryClassname == null) {
                Log.m495e(TAG, "pay fail, wxappPayEntryClassname is null");
                return false;
            }
        }
        MMessageActV2.Args args = new MMessageActV2.Args();
        args.bundle = bundle;
        args.targetPkgName = "com.tencent.mm";
        args.targetClassName = wxappPayEntryClassname;
        return MMessageActV2.send(context, args);
    }

    private boolean sendSubscribeMessage(Context context, BaseReq baseReq) {
        SubscribeMessage.Req req = (SubscribeMessage.Req) baseReq;
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openTypeWebview"), null, null, new String[]{this.appId, "1", String.valueOf(req.scene), req.templateID, req.reserved}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendSubscribeMiniProgramMsg(Context context, BaseReq baseReq) {
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openTypeWebview"), null, null, new String[]{this.appId, "5", ((SubscribeMiniProgramMsg.Req) baseReq).miniProgramAppId}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public void detach() {
        Log.m496d(TAG, "detach");
        this.detached = true;
        this.context = null;
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public int getWXAppSupportAPI() {
        if (this.detached) {
            throw new IllegalStateException("getWXAppSupportAPI fail, WXMsgImpl has been detached");
        }
        if (!isWXAppInstalled()) {
            Log.m495e(TAG, "open wx app failed, not installed or signature check failed");
            return 0;
        }
        int i = new MMSharedPreferences(this.context).getInt("_build_info_sdk_int_", 0);
        if (i == 0) {
            try {
                return this.context.getPackageManager().getApplicationInfo("com.tencent.mm", 128).metaData.getInt("com.tencent.mm.BuildInfo.OPEN_SDK_VERSION", 0);
            } catch (Exception e) {
                Log.m495e(TAG, "get from metaData failed : " + e.getMessage());
                return i;
            }
        }
        return i;
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public boolean handleIntent(Intent intent, IWXAPIEventHandler iWXAPIEventHandler) {
        try {
            if (!WXApiImplComm.isIntentFromWx(intent, ConstantsAPI.Token.WX_TOKEN_VALUE_MSG)) {
                Log.m494i(TAG, "handleIntent fail, intent not from weixin msg");
                return false;
            } else if (this.detached) {
                throw new IllegalStateException("handleIntent fail, WXMsgImpl has been detached");
            } else {
                String stringExtra = intent.getStringExtra(ConstantsAPI.CONTENT);
                int intExtra = intent.getIntExtra(ConstantsAPI.SDK_VERSION, 0);
                String stringExtra2 = intent.getStringExtra(ConstantsAPI.APP_PACKAGE);
                if (stringExtra2 == null || stringExtra2.length() == 0) {
                    Log.m495e(TAG, "invalid argument");
                    return false;
                } else if (!checkSumConsistent(intent.getByteArrayExtra(ConstantsAPI.CHECK_SUM), C4163b.m509a(stringExtra, intExtra, stringExtra2))) {
                    Log.m495e(TAG, "checksum fail");
                    return false;
                } else {
                    int intExtra2 = intent.getIntExtra("_wxapi_command_type", 0);
                    Log.m494i(TAG, "handleIntent, cmd = " + intExtra2);
                    switch (intExtra2) {
                        case 1:
                            iWXAPIEventHandler.onResp(new SendAuth.Resp(intent.getExtras()));
                            return true;
                        case 2:
                            iWXAPIEventHandler.onResp(new SendMessageToWX.Resp(intent.getExtras()));
                            return true;
                        case 3:
                            iWXAPIEventHandler.onReq(new GetMessageFromWX.Req(intent.getExtras()));
                            return true;
                        case 4:
                            ShowMessageFromWX.Req req = new ShowMessageFromWX.Req(intent.getExtras());
                            String str = req.message.messageExt;
                            if (str != null && str.contains("wx_internal_resptype")) {
                                boolean handleWxInternalRespType = handleWxInternalRespType(str, iWXAPIEventHandler);
                                Log.m494i(TAG, "handleIntent, extInfo contains wx_internal_resptype, ret = " + handleWxInternalRespType);
                                return handleWxInternalRespType;
                            }
                            if (str != null && str.contains("openbusinesswebview")) {
                                try {
                                    Uri parse = Uri.parse(str);
                                    if (parse != null && "openbusinesswebview".equals(parse.getHost())) {
                                        WXOpenBusinessWebview.Resp resp = new WXOpenBusinessWebview.Resp();
                                        String queryParameter = parse.getQueryParameter("ret");
                                        if (queryParameter != null && queryParameter.length() > 0) {
                                            resp.errCode = C4178d.m485c(queryParameter);
                                        }
                                        resp.resultInfo = parse.getQueryParameter("resultInfo");
                                        resp.errStr = parse.getQueryParameter("errmsg");
                                        String queryParameter2 = parse.getQueryParameter("type");
                                        if (queryParameter2 != null && queryParameter2.length() > 0) {
                                            resp.businessType = C4178d.m485c(queryParameter2);
                                        }
                                        iWXAPIEventHandler.onResp(resp);
                                        return true;
                                    }
                                    Log.m496d(TAG, "not openbusinesswebview %" + str);
                                } catch (Exception e) {
                                    Log.m495e(TAG, "parse fail, ex = " + e.getMessage());
                                }
                            }
                            iWXAPIEventHandler.onReq(req);
                            return true;
                        case 5:
                            iWXAPIEventHandler.onResp(new PayResp(intent.getExtras()));
                            return true;
                        case 6:
                            iWXAPIEventHandler.onReq(new LaunchFromWX.Req(intent.getExtras()));
                            return true;
                        case 7:
                        case 8:
                        case 10:
                        case 11:
                        case 13:
                        case 18:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        default:
                            Log.m495e(TAG, "unknown cmd = " + intExtra2);
                            return false;
                        case 9:
                            iWXAPIEventHandler.onResp(new AddCardToWXCardPackage.Resp(intent.getExtras()));
                            return true;
                        case 12:
                            iWXAPIEventHandler.onResp(new OpenWebview.Resp(intent.getExtras()));
                            return true;
                        case 14:
                            iWXAPIEventHandler.onResp(new CreateChatroom.Resp(intent.getExtras()));
                            return true;
                        case 15:
                            iWXAPIEventHandler.onResp(new JoinChatroom.Resp(intent.getExtras()));
                            return true;
                        case 16:
                            iWXAPIEventHandler.onResp(new ChooseCardFromWXCardPackage.Resp(intent.getExtras()));
                            return true;
                        case 17:
                            iWXAPIEventHandler.onResp(new HandleScanResult.Resp(intent.getExtras()));
                            return true;
                        case 19:
                            iWXAPIEventHandler.onResp(new WXLaunchMiniProgram.Resp(intent.getExtras()));
                            return true;
                        case 24:
                            iWXAPIEventHandler.onResp(new JumpToOfflinePay.Resp(intent.getExtras()));
                            return true;
                        case 25:
                            iWXAPIEventHandler.onResp(new WXOpenBusinessWebview.Resp(intent.getExtras()));
                            return true;
                        case 26:
                            iWXAPIEventHandler.onResp(new WXOpenBusinessView.Resp(intent.getExtras()));
                            return true;
                    }
                }
            }
        } catch (Exception e2) {
            Log.m495e(TAG, "handleIntent fail, ex = " + e2.getMessage());
            return false;
        }
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public boolean isWXAppInstalled() {
        if (this.detached) {
            throw new IllegalStateException("isWXAppInstalled fail, WXMsgImpl has been detached");
        }
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo("com.tencent.mm", 64);
            if (packageInfo == null) {
                return false;
            }
            return WXApiImplComm.validateAppSignature(this.context, packageInfo.signatures, this.checkSignature);
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public boolean openWXApp() {
        if (this.detached) {
            throw new IllegalStateException("openWXApp fail, WXMsgImpl has been detached");
        }
        if (!isWXAppInstalled()) {
            Log.m495e(TAG, "open wx app failed, not installed or signature check failed");
            return false;
        }
        try {
            this.context.startActivity(this.context.getPackageManager().getLaunchIntentForPackage("com.tencent.mm"));
            return true;
        } catch (Exception e) {
            Log.m495e(TAG, "startActivity fail, exception = " + e.getMessage());
            return false;
        }
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public boolean registerApp(String str) {
        return registerApp(str, 0L);
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public boolean registerApp(String str, long j) {
        if (this.detached) {
            throw new IllegalStateException("registerApp fail, WXMsgImpl has been detached");
        }
        if (!WXApiImplComm.validateAppSignatureForPackage(this.context, "com.tencent.mm", this.checkSignature)) {
            Log.m495e(TAG, "register app failed for wechat app signature check failed");
            return false;
        }
        Log.m496d(TAG, "registerApp, appId = " + str);
        if (str != null) {
            this.appId = str;
        }
        Log.m496d(TAG, "registerApp, appId = " + str);
        if (str != null) {
            this.appId = str;
        }
        Log.m496d(TAG, "register app " + this.context.getPackageName());
        C4161a.C4162a c4162a = new C4161a.C4162a();
        c4162a.f4839a = "com.tencent.mm";
        c4162a.action = ConstantsAPI.ACTION_HANDLE_APP_REGISTER;
        c4162a.content = "weixin://registerapp?appid=" + this.appId;
        c4162a.f4840b = j;
        return C4161a.m510a(this.context, c4162a);
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public boolean sendReq(BaseReq baseReq) {
        String[] split;
        if (this.detached) {
            throw new IllegalStateException("sendReq fail, WXMsgImpl has been detached");
        }
        if (!WXApiImplComm.validateAppSignatureForPackage(this.context, "com.tencent.mm", this.checkSignature)) {
            Log.m495e(TAG, "sendReq failed for wechat app signature check failed");
            return false;
        } else if (!baseReq.checkArgs()) {
            Log.m495e(TAG, "sendReq checkArgs fail");
            return false;
        } else {
            Log.m494i(TAG, "sendReq, req type = " + baseReq.getType());
            Bundle bundle = new Bundle();
            baseReq.toBundle(bundle);
            if (baseReq.getType() == 5) {
                return sendPayReq(this.context, bundle);
            }
            if (baseReq.getType() == 7) {
                return sendJumpToBizProfileReq(this.context, bundle);
            }
            if (baseReq.getType() == 8) {
                return sendJumpToBizWebviewReq(this.context, bundle);
            }
            if (baseReq.getType() == 10) {
                return sendJumpToBizTempSessionReq(this.context, bundle);
            }
            if (baseReq.getType() == 9) {
                return sendAddCardToWX(this.context, bundle);
            }
            if (baseReq.getType() == 16) {
                return sendChooseCardFromWX(this.context, bundle);
            }
            if (baseReq.getType() == 11) {
                return sendOpenRankListReq(this.context, bundle);
            }
            if (baseReq.getType() == 12) {
                return sendOpenWebview(this.context, bundle);
            }
            if (baseReq.getType() == 25) {
                return sendOpenBusinessWebview(this.context, baseReq);
            }
            if (baseReq.getType() == 13) {
                return sendOpenBusiLuckyMoney(this.context, bundle);
            }
            if (baseReq.getType() == 14) {
                return createChatroom(this.context, bundle);
            }
            if (baseReq.getType() == 15) {
                return joinChatroom(this.context, bundle);
            }
            if (baseReq.getType() == 17) {
                return sendHandleScanResult(this.context, bundle);
            }
            if (baseReq.getType() == 18) {
                return sendSubscribeMessage(this.context, baseReq);
            }
            if (baseReq.getType() == 23) {
                return sendSubscribeMiniProgramMsg(this.context, baseReq);
            }
            if (baseReq.getType() == 19) {
                return sendLaunchWXMiniprogram(this.context, baseReq);
            }
            if (baseReq.getType() == 26) {
                return sendOpenBusinessView(this.context, baseReq);
            }
            if (baseReq.getType() == 20) {
                return sendInvoiceAuthInsert(this.context, baseReq);
            }
            if (baseReq.getType() == 21) {
                return sendNonTaxPay(this.context, baseReq);
            }
            if (baseReq.getType() == 22) {
                return sendPayInSurance(this.context, baseReq);
            }
            if (baseReq.getType() == 24) {
                return sendJumpToOfflinePayReq(this.context, bundle);
            }
            if (baseReq.getType() == 2) {
                int i = bundle.getInt("_wxapi_sendmessagetowx_req_media_type");
                if (C4178d.m487a(i)) {
                    SendMessageToWX.Req req = (SendMessageToWX.Req) baseReq;
                    if (getWXAppSupportAPI() < 620756993) {
                        WXWebpageObject wXWebpageObject = new WXWebpageObject();
                        wXWebpageObject.webpageUrl = bundle.getString("_wxminiprogram_webpageurl");
                        req.message.mediaObject = wXWebpageObject;
                    } else if (i != 46 || getWXAppSupportAPI() >= 620953856) {
                        WXMiniProgramObject wXMiniProgramObject = (WXMiniProgramObject) req.message.mediaObject;
                        wXMiniProgramObject.userName += "@app";
                        String str = wXMiniProgramObject.path;
                        if (!C4178d.m486b(str)) {
                            wXMiniProgramObject.path = str.split("\\?").length > 1 ? split[0] + ".html?" + split[1] : split[0] + ".html";
                        }
                    } else {
                        WXWebpageObject wXWebpageObject2 = new WXWebpageObject();
                        wXWebpageObject2.webpageUrl = bundle.getString("_wxminiprogram_webpageurl");
                        req.message.mediaObject = wXWebpageObject2;
                    }
                    if (req.scene != 3) {
                        req.scene = 0;
                    }
                    baseReq.toBundle(bundle);
                }
            }
            String tokenFromWX = getTokenFromWX(this.context);
            MMessageActV2.Args args = new MMessageActV2.Args();
            args.bundle = bundle;
            args.content = "weixin://sendreq?appid=" + this.appId;
            args.targetPkgName = "com.tencent.mm";
            args.targetClassName = "com.tencent.mm.plugin.base.stub.WXEntryActivity";
            args.token = tokenFromWX;
            return MMessageActV2.send(this.context, args);
        }
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public boolean sendResp(BaseResp baseResp) {
        if (this.detached) {
            throw new IllegalStateException("sendResp fail, WXMsgImpl has been detached");
        }
        if (!WXApiImplComm.validateAppSignatureForPackage(this.context, "com.tencent.mm", this.checkSignature)) {
            Log.m495e(TAG, "sendResp failed for wechat app signature check failed");
            return false;
        } else if (!baseResp.checkArgs()) {
            Log.m495e(TAG, "sendResp checkArgs fail");
            return false;
        } else {
            Bundle bundle = new Bundle();
            baseResp.toBundle(bundle);
            MMessageActV2.Args args = new MMessageActV2.Args();
            args.bundle = bundle;
            args.content = "weixin://sendresp?appid=" + this.appId;
            args.targetPkgName = "com.tencent.mm";
            args.targetClassName = "com.tencent.mm.plugin.base.stub.WXEntryActivity";
            return MMessageActV2.send(this.context, args);
        }
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public void setLogImpl(ILog iLog) {
        Log.setLogImpl(iLog);
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPI
    public void unregisterApp() {
        if (this.detached) {
            throw new IllegalStateException("unregisterApp fail, WXMsgImpl has been detached");
        }
        if (!WXApiImplComm.validateAppSignatureForPackage(this.context, "com.tencent.mm", this.checkSignature)) {
            Log.m495e(TAG, "unregister app failed for wechat app signature check failed");
            return;
        }
        Log.m496d(TAG, "unregisterApp, appId = " + this.appId);
        if (this.appId == null || this.appId.length() == 0) {
            Log.m495e(TAG, "unregisterApp fail, appId is empty");
            return;
        }
        Log.m496d(TAG, "unregister app " + this.context.getPackageName());
        C4161a.C4162a c4162a = new C4161a.C4162a();
        c4162a.f4839a = "com.tencent.mm";
        c4162a.action = ConstantsAPI.ACTION_HANDLE_APP_UNREGISTER;
        c4162a.content = "weixin://unregisterapp?appid=" + this.appId;
        C4161a.m510a(this.context, c4162a);
    }
}
