.class final Lcom/kingroot/kinguser/aij$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aij;->xP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/aij;->access$000()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/aij;->jK()V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v0, "com.sec.knox.app.container"

    invoke-static {v0}, Lcom/kingroot/kinguser/aij;->fY(Ljava/lang/String;)V

    .line 54
    const-string v0, "com.sec.knox.seandroid"

    invoke-static {v0}, Lcom/kingroot/kinguser/aij;->fY(Ljava/lang/String;)V

    .line 55
    const-string v0, "com.sec.knox.store"

    invoke-static {v0}, Lcom/kingroot/kinguser/aij;->fY(Ljava/lang/String;)V

    .line 56
    const-string v0, "com.sec.knox.containeragent"

    invoke-static {v0}, Lcom/kingroot/kinguser/aij;->fY(Ljava/lang/String;)V

    goto :goto_0
.end method
