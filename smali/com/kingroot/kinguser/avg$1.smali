.class public Lcom/kingroot/kinguser/avg$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/avg;->Rs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aTo:Lcom/kingroot/kinguser/avg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avg;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kingroot/kinguser/avg$1;->aTo:Lcom/kingroot/kinguser/avg;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/kingroot/kinguser/net/clcmd/KuCloudCmdExecter$1$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/net/clcmd/KuCloudCmdExecter$1$1;-><init>(Lcom/kingroot/kinguser/avg$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ahl;->a(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V

    .line 144
    return-void
.end method
