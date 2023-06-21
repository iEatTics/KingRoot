.class public Lcom/kingroot/kinguser/avi$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/avi;->j(Lcom/kingroot/kinguser/abc;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aTs:Lcom/kingroot/kinguser/avi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avi;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kingroot/kinguser/avi$1;->aTs:Lcom/kingroot/kinguser/avi;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/kingroot/kinguser/net/clcmd/KuCloudSwitcher$1$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/net/clcmd/KuCloudSwitcher$1$1;-><init>(Lcom/kingroot/kinguser/avi$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ahl;->a(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V

    .line 106
    return-void
.end method
