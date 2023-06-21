.class Lcom/kingroot/kinguser/apf$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/api$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apf;->fX(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field private aHk:Lcom/kingroot/kinguser/apk;

.field final synthetic aHy:Lcom/kingroot/kinguser/apf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apf;I)V
    .locals 1

    .prologue
    .line 393
    iput-object p1, p0, Lcom/kingroot/kinguser/apf$4;->aHy:Lcom/kingroot/kinguser/apf;

    iput p2, p0, Lcom/kingroot/kinguser/apf$4;->Qj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$4;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ape;->KW()Lcom/kingroot/kinguser/apk;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apf$4;->aHk:Lcom/kingroot/kinguser/apk;

    return-void
.end method


# virtual methods
.method public Ll()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$4;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apf;->dismiss()V

    .line 421
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07041e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 422
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$4;->aHy:Lcom/kingroot/kinguser/apf;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf$4;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apf;->setBackgroundColor(I)V

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$4;->aHk:Lcom/kingroot/kinguser/apk;

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$4;->aHk:Lcom/kingroot/kinguser/apk;

    iget v1, p0, Lcom/kingroot/kinguser/apf$4;->Qj:I

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/apk;->onFinish(I)V

    goto :goto_0
.end method
