.class final Lcom/kingroot/kinguser/bmd$1;
.super Lcom/kingroot/kinguser/bmq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bmd;->asyncExecute(Landroid/content/Context;ILandroid/os/Bundle;Lcloudsdk/IActionCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bBl:Landroid/content/Context;

.field private synthetic bBm:I

.field private synthetic bBn:Landroid/os/Bundle;

.field private synthetic bBo:Lcloudsdk/IActionCallback;

.field private synthetic bBp:Lcom/kingroot/kinguser/bmd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bmd;Landroid/content/Context;ILandroid/os/Bundle;Lcloudsdk/IActionCallback;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/kingroot/kinguser/bmd$1;->bBp:Lcom/kingroot/kinguser/bmd;

    iput-object p2, p0, Lcom/kingroot/kinguser/bmd$1;->bBl:Landroid/content/Context;

    iput p3, p0, Lcom/kingroot/kinguser/bmd$1;->bBm:I

    iput-object p4, p0, Lcom/kingroot/kinguser/bmd$1;->bBn:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/kingroot/kinguser/bmd$1;->bBo:Lcloudsdk/IActionCallback;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bmq;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd$1;->bBp:Lcom/kingroot/kinguser/bmd;

    iget-object v1, p0, Lcom/kingroot/kinguser/bmd$1;->bBl:Landroid/content/Context;

    iget v2, p0, Lcom/kingroot/kinguser/bmd$1;->bBm:I

    iget-object v3, p0, Lcom/kingroot/kinguser/bmd$1;->bBn:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bmd;->execute(Landroid/content/Context;ILandroid/os/Bundle;)Lcloudsdk/IActionResult;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/kingroot/kinguser/bmd$1;->bBo:Lcloudsdk/IActionCallback;

    iget-object v2, p0, Lcom/kingroot/kinguser/bmd$1;->bBl:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcloudsdk/IActionCallback;->onCallback(Landroid/content/Context;Lcloudsdk/IActionResult;)Z

    .line 224
    return-void
.end method
