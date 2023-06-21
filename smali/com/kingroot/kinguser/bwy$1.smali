.class final Lcom/kingroot/kinguser/bwy$1;
.super Lcom/kingroot/kinguser/bzc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bwy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/bzc",
        "<",
        "Lcom/kingroot/kinguser/bwy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzc;-><init>()V

    return-void
.end method


# virtual methods
.method protected ajk()Lcom/kingroot/kinguser/bwy;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/kingroot/kinguser/bwy;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bwy;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bwy$1;->ajk()Lcom/kingroot/kinguser/bwy;

    move-result-object v0

    return-object v0
.end method
