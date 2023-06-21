.class Lcom/kingroot/kinguser/ayl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayl;->a(Landroid/os/Bundle;Z)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcR:Lcom/kingroot/kinguser/ayl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayl;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kingroot/kinguser/ayl$1;->bcR:Lcom/kingroot/kinguser/ayl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 3

    .prologue
    .line 59
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    .line 60
    new-instance v1, Lcom/kingroot/kinguser/ayp;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ayp;-><init>()V

    .line 61
    iput p1, v1, Lcom/kingroot/kinguser/ayp;->bcX:I

    .line 62
    iput p2, v1, Lcom/kingroot/kinguser/ayp;->bcY:I

    .line 63
    iput p3, v1, Lcom/kingroot/kinguser/ayp;->bcZ:I

    .line 64
    iput p4, v1, Lcom/kingroot/kinguser/ayp;->bda:I

    .line 65
    iput-object p5, v1, Lcom/kingroot/kinguser/ayp;->bdb:Lcom/qq/taf/jce/JceStruct;

    .line 66
    iget-object v2, p0, Lcom/kingroot/kinguser/ayl$1;->bcR:Lcom/kingroot/kinguser/ayl;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ayl;->getPluginId()I

    move-result v2

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ayp;->transferToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->talkWithPlugin(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 67
    return-void
.end method
