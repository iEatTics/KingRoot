.class final Lcom/kingroot/kinguser/ayg$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->jK()V

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akv;->Gv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->Vb()V

    .line 172
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/ayg;->b(Lcom/kingroot/loader/sdk/IPluginInstallListener;)V

    goto :goto_0
.end method
