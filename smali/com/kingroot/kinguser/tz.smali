.class public abstract Lcom/kingroot/kinguser/tz;
.super Lcom/kingroot/kinguser/ty;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingroot/kinguser/ty;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/tz;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected kr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
