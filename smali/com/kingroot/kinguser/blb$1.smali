.class Lcom/kingroot/kinguser/blb$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/blb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bzC:Lcom/kingroot/kinguser/blb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/blb;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/kingroot/kinguser/blb$1;->bzC:Lcom/kingroot/kinguser/blb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 234
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/bgu;->abY()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bl(Z)V

    .line 241
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo;->getTodayRequestAppCount()I

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->startPrepareRootMgrList()V

    .line 247
    invoke-static {}, Lcom/kingroot/kinguser/bkz;->aeY()V

    .line 248
    return-void
.end method
