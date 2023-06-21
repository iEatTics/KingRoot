.class final Lcom/kingroot/kinguser/abq$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/abq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/abq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq$1;->rf()Lcom/kingroot/kinguser/abq;

    move-result-object v0

    return-object v0
.end method

.method protected rf()Lcom/kingroot/kinguser/abq;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/kingroot/kinguser/abq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abq;-><init>()V

    return-object v0
.end method
