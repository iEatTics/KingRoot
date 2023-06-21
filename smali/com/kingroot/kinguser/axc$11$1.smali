.class Lcom/kingroot/kinguser/axc$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axc$11;->n(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXA:Lcom/kingroot/kinguser/axc$11;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc$11;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$11$1;->aXA:Lcom/kingroot/kinguser/axc$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$11$1;->aXA:Lcom/kingroot/kinguser/axc$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/axc$11;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703a3

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bil;->d(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$11$1;->aXA:Lcom/kingroot/kinguser/axc$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/axc$11;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bil;->iZ(I)V

    .line 628
    return-void
.end method
