.class Lcom/kingroot/kinguser/bin$a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bin$a;->g(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btN:Lcom/kingroot/kinguser/bin$a;

.field final synthetic btS:Ljava/lang/String;

.field final synthetic btT:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$a$6;->btN:Lcom/kingroot/kinguser/bin$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/bin$a$6;->btS:Ljava/lang/String;

    iput p3, p0, Lcom/kingroot/kinguser/bin$a$6;->btT:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 723
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 725
    :try_start_0
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/kingroot/kinguser/bin$a$6;->btS:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v1, "callbackId"

    iget v2, p0, Lcom/kingroot/kinguser/bin$a$6;->btT:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 727
    const-string v1, "err_msg"

    const-string v2, "ok"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v1, "ret"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 732
    sget-object v1, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/wd$a;->My:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/wd$a;->Mz:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 733
    const-string v1, "none"

    move-object v2, v1

    move-object v1, v0

    .line 739
    :goto_0
    const-string v4, "state"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    if-eqz v1, :cond_0

    .line 741
    const-string v2, "openid"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    :cond_0
    if-eqz v0, :cond_1

    .line 744
    const-string v1, "uin"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :cond_1
    :goto_1
    new-instance v0, Lcom/kingroot/kinguser/bin$a$6$1;

    invoke-direct {v0, p0, v3}, Lcom/kingroot/kinguser/bin$a$6$1;-><init>(Lcom/kingroot/kinguser/bin$a$6;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 759
    return-void

    .line 735
    :cond_2
    :try_start_1
    const-string v2, "online"

    .line 736
    sget-object v0, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/wd$a;->My:Ljava/lang/String;

    .line 737
    sget-object v1, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/wd$a;->Mz:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 747
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
