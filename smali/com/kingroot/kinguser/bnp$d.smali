.class Lcom/kingroot/kinguser/bnp$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bnp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic bEN:Lcom/kingroot/kinguser/bnp;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bnp;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 454
    iput-object p1, p0, Lcom/kingroot/kinguser/bnp$d;->bEN:Lcom/kingroot/kinguser/bnp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bnp$d;->a:Ljava/lang/String;

    .line 455
    iput-object p2, p0, Lcom/kingroot/kinguser/bnp$d;->a:Ljava/lang/String;

    .line 456
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 460
    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->timeoutUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mRetryUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$d;->bEN:Lcom/kingroot/kinguser/bnp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bnp;->i(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/bnp$d;->bEN:Lcom/kingroot/kinguser/bnp;

    invoke-static {v1}, Lcom/kingroot/kinguser/bnp;->i(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$d;->bEN:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->f(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bnp$b;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bwf;

    const/16 v2, 0x232a

    const-string v3, "\u8bf7\u6c42\u9875\u9762\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    iget-object v4, p0, Lcom/kingroot/kinguser/bnp$d;->bEN:Lcom/kingroot/kinguser/bnp;

    invoke-static {v4}, Lcom/kingroot/kinguser/bnp;->i(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/kingroot/kinguser/bwf;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bnp$b;->onError(Lcom/kingroot/kinguser/bwf;)V

    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$d;->bEN:Lcom/kingroot/kinguser/bnp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnp;->dismiss()V

    .line 465
    :cond_0
    return-void
.end method
