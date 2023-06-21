.class Lcom/kingroot/kinguser/aih$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic arx:Lcom/kingroot/kinguser/aih;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aih;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/aih$2;->arx:Lcom/kingroot/kinguser/aih;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 75
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/kingroot/kinguser/vc;->U(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bf(Z)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bf(Z)V

    goto :goto_0
.end method
