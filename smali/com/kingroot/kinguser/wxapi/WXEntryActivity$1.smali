.class Lcom/kingroot/kinguser/wxapi/WXEntryActivity$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->lQ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bue:Ljava/lang/String;

.field final synthetic buf:Lcom/kingroot/kinguser/wxapi/WXEntryActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/wxapi/WXEntryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity$1;->buf:Lcom/kingroot/kinguser/wxapi/WXEntryActivity;

    iput-object p2, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity$1;->bue:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.weixin.qq.com/sns/oauth2/access_token?appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity$1;->buf:Lcom/kingroot/kinguser/wxapi/WXEntryActivity;

    iget-object v1, v1, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->aiK:Lcom/kingroot/kinguser/wd;

    .line 102
    invoke-virtual {v1}, Lcom/kingroot/kinguser/wd;->nm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity$1;->buf:Lcom/kingroot/kinguser/wxapi/WXEntryActivity;

    iget-object v1, v1, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->aiK:Lcom/kingroot/kinguser/wd;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/wd;->nn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity$1;->bue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&grant_type=authorization_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/kingroot/kinguser/wh;->dn(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    const-string v1, "openid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iput-object v1, v0, Lcom/kingroot/kinguser/wd$a;->Mz:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    const-string v1, ""

    iput-object v1, v0, Lcom/kingroot/kinguser/wd$a;->My:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/we;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/wd$a;)V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/we;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/wd$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method
