.class Lcom/kingroot/kinguser/auz$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/auz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTj:Lcom/kingroot/kinguser/auz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auz;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kingroot/kinguser/auz$2;->aTj:Lcom/kingroot/kinguser/auz;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 62
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->CE()Z

    move-result v1

    .line 64
    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v0

    .line 66
    iget-object v2, p0, Lcom/kingroot/kinguser/auz$2;->aTj:Lcom/kingroot/kinguser/auz;

    invoke-static {v2, v1, v0}, Lcom/kingroot/kinguser/auz;->a(Lcom/kingroot/kinguser/auz;ZZ)V

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ais;->yf()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/auz$2;->aTj:Lcom/kingroot/kinguser/auz;

    invoke-static {v0}, Lcom/kingroot/kinguser/auz;->a(Lcom/kingroot/kinguser/auz;)V

    .line 72
    :cond_0
    return-void
.end method
