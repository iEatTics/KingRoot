.class Lcom/kingroot/kinguser/activitys/ShareLoginActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/activitys/ShareLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$3;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 255
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    const-string v1, "openid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/wd$a;->My:Ljava/lang/String;

    .line 256
    sget-object v0, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    const-string v1, ""

    iput-object v1, v0, Lcom/kingroot/kinguser/wd$a;->Mz:Ljava/lang/String;

    .line 257
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/we;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/wd$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/we;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/wd$a;)V

    .line 274
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 237
    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    check-cast p1, Lorg/json/JSONObject;

    .line 242
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$3;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->finish()V

    .line 247
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$3;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onError(Lcom/kingroot/kinguser/bwf;)V
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/we;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/wd$a;)V

    .line 268
    return-void
.end method
