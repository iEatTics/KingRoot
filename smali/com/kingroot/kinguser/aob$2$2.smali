.class Lcom/kingroot/kinguser/aob$2$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aob$2;->fF(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEV:Lcom/kingroot/kinguser/aob$2;

.field final synthetic aEW:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aob$2;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/kingroot/kinguser/aob$2$2;->aEV:Lcom/kingroot/kinguser/aob$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/aob$2$2;->aEW:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aob$2$2;->aEW:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/amu;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Z)V

    .line 168
    return-void
.end method
