.class public abstract Lcom/kingroot/kinguser/cdw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bXJ:Lcom/kingroot/kinguser/cdw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract I(Landroid/content/Context;)V
.end method

.method protected a(Lcom/kingroot/kinguser/cdw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ImplType:",
            "Lcom/kingroot/kinguser/cdw;",
            ">(TImplType;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lcom/kingroot/kinguser/cdw;->bXJ:Lcom/kingroot/kinguser/cdw;

    .line 31
    return-void
.end method

.method public aka()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/cdw;->bXJ:Lcom/kingroot/kinguser/cdw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/cdw;->bXJ:Lcom/kingroot/kinguser/cdw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cdw;->aka()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
