.class Lcom/kingroot/kinguser/bqp$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bqp;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bIL:Lcom/kingroot/kinguser/bqp;

.field final synthetic bIw:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bqp;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/kingroot/kinguser/bqp$1;->bIL:Lcom/kingroot/kinguser/bqp;

    iput-object p2, p0, Lcom/kingroot/kinguser/bqp$1;->bIw:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bqp$1;->bIL:Lcom/kingroot/kinguser/bqp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bqp;->a(Lcom/kingroot/kinguser/bqp;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf"

    const-string v2, "GET"

    iget-object v3, p0, Lcom/kingroot/kinguser/bqp$1;->bIw:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bqm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/kingroot/kinguser/bqt$a;

    move-result-object v0

    .line 199
    iget-object v0, v0, Lcom/kingroot/kinguser/bqt$a;->a:Ljava/lang/String;

    .line 207
    invoke-static {v0}, Lcom/kingroot/kinguser/bqt;->mU(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/kingroot/kinguser/bqp$1;->bIL:Lcom/kingroot/kinguser/bqp;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bqp;->a(Lcom/kingroot/kinguser/bqp;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bqp$1;->bIL:Lcom/kingroot/kinguser/bqp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bqp;->a(Lcom/kingroot/kinguser/bqp;I)I

    .line 213
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
